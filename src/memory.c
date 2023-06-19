#include <ultra64.h>
#include <PR/ultratypes.h>
#include <macros.h>
#include <types.h>
#include <common_structs.h>
#include <variables.h>
#include <segments.h>
#include "main.h"
#include "memory.h"
#include "math_util.h"

s32 sGfxSeekPosition;
s32 sPackedSeekPosition;

u32 sPoolFreeSpace;
struct MainPoolBlock *sPoolListHeadL;
struct MainPoolBlock *sPoolListHeadR;

struct MainPoolState *gMainPoolState = NULL;

struct UnkStruct_802B8CD4 D_802B8CD4[] = {
    0
};
s32 D_802B8CE4 = 0; // pad

/**
 * @brief Returns the address of the next available memory location and updates the memory pointer
 * to reference the next location of available memory based provided size to allocate.
 * @param size of memory to allocate.
 * @return Address of free memory 
 */
void *get_next_available_memory_addr(u32 size) {
    u32 *freeSpace = (u32 *)gNextFreeMemoryAddress;
    size = ALIGN16(size);
    gNextFreeMemoryAddress += size;
    return freeSpace;
}

/**
 * @brief Stores the physical memory addr for segmented memory in `gSegmentTable` using the segment number as an index.
 *
 * This function takes a segment number and a pointer to a memory address, and stores the address in the `gSegmentTable` array
 * at the specified segment index. The stored address is truncated to a 29-bit value to ensure that it fits within the
 * memory address. This allows converting between segmented memory and physical memory.
 *
 * @param segment A segment number from 0x0 to 0xF to set the base address.
 * @param addr A pointer containing the physical memory address of the data.
 * @return The stored base address, truncated to a 29-bit value.
 */
uintptr_t set_segment_base_addr(s32 segment, void *addr) {
    gSegmentTable[segment] = (uintptr_t) addr & 0x1FFFFFFF;
    return gSegmentTable[segment];
}

/**
 * @brief Returns the physical memory location of a segment.
 * @param permits segment numbers from 0x0 to 0xF.
*/
void *get_segment_base_addr(s32 segment) {
    return (void *) (gSegmentTable[segment] | 0x80000000);
}

/**
 * @brief converts an RSP segment + offset address to a normal memory address
 */
void *segmented_to_virtual(const void *addr) {
    size_t segment = (uintptr_t) addr >> 24;
    size_t offset = (uintptr_t) addr & 0x00FFFFFF;

    return (void *) ((gSegmentTable[segment] + offset) | 0x80000000);
}

void move_segment_table_to_dmem(void) {
    s32 i;

    for (i = 0; i < 16; i++) {
        gSPSegment(gDisplayListHead++, i, gSegmentTable[i]);
    }
}

/**
 * @brief Sets the starting location for allocating memory and calculates pool size.
 * 
 * Default memory size, 701.984 Kilobytes.
*/
void initialize_memory_pool(uintptr_t poolStart, uintptr_t poolEnd) {

    poolStart = ALIGN16(poolStart);
    // Truncate to a 16-byte boundary.
    poolEnd &= ~0xF;

    gFreeMemorySize = (poolEnd - poolStart) - 0x10;
    gNextFreeMemoryAddress = poolStart;
}

/**
 * @brief Allocates memory and adjusts gFreeMemorySize.
*/
void *allocate_memory(u32 size) {
    u32 *freeSpace;

    size = ALIGN16(size);
    gFreeMemorySize -= size;
    freeSpace = (u32 *) gNextFreeMemoryAddress;
    gNextFreeMemoryAddress += size;

    return (void *) freeSpace;
}

UNUSED void func_802A7D54(s32 arg0, s32 arg1) {
    gD_80150158[arg0].unk0 = arg0;
    gD_80150158[arg0].unk8 = arg1;
}

/**
 * @brief Allocate and DMA.
*/
void *load_data(uintptr_t startAddr, uintptr_t endAddr) {
    void *allocated;
    u32 size = endAddr - startAddr;

    allocated = allocate_memory(size);
    if (allocated != 0) {
        dma_copy((u8 *)allocated, (u8 *)startAddr, size);
    }
    return (void *) allocated;
}

UNUSED void main_pool_init(u32 start, u32 end) {
    start = ALIGN16(start);
    end = ALIGN16(end - 15);

    sPoolFreeSpace = (end - start) - 16;

    sPoolListHeadL = (struct MainPoolBlock *) start;
    sPoolListHeadR = (struct MainPoolBlock *) end;
    sPoolListHeadL->prev = NULL;
    sPoolListHeadL->next = NULL;
    sPoolListHeadR->prev = NULL;
    sPoolListHeadR->next = NULL;
}

/**
 * Allocate a block of memory from the pool of given size, and from the
 * specified side of the pool (MEMORY_POOL_LEFT or MEMORY_POOL_RIGHT).
 * If there is not enough space, return NULL.
 */
UNUSED void *main_pool_alloc(u32 size, u32 side) {
    struct MainPoolBlock *newListHead;
    void *addr = NULL;

    size = ALIGN16(size) + 8;
    if (sPoolFreeSpace >= size) {
        sPoolFreeSpace -= size;
        if (side == MEMORY_POOL_LEFT) {
            newListHead = (struct MainPoolBlock *) ((u8 *) sPoolListHeadL + size);
            sPoolListHeadL->next = newListHead;
            newListHead->prev = sPoolListHeadL;
            addr = (u8 *) sPoolListHeadL + 8;
            sPoolListHeadL = newListHead;
        } else {
            newListHead = (struct MainPoolBlock *) ((u8 *) sPoolListHeadR - size);
            sPoolListHeadR->prev = newListHead;
            newListHead->next = sPoolListHeadR;
            sPoolListHeadR = newListHead;
            addr = (u8 *) sPoolListHeadR + 8;
        }
    }
    return addr;
}
/**
 * Free a block of memory that was allocated from the pool. The block must be
 * the most recently allocated block from its end of the pool, otherwise all
 * newer blocks are freed as well.
 * Return the amount of free space left in the pool.
 */
UNUSED u32 main_pool_free(void *addr) {
    struct MainPoolBlock *block = (struct MainPoolBlock *) ((u8 *) addr - 8);
    struct MainPoolBlock *oldListHead = (struct MainPoolBlock *) ((u8 *) addr - 8);

    if (oldListHead < sPoolListHeadL) {
        while (oldListHead->next != NULL) {
            oldListHead = oldListHead->next;
        }
        sPoolListHeadL = block;
        sPoolListHeadL->next = NULL;
        sPoolFreeSpace += (uintptr_t) oldListHead - (uintptr_t) sPoolListHeadL;
    } else {
        while (oldListHead->prev != NULL) {
            oldListHead = oldListHead->prev;
        }
        sPoolListHeadR = block->next;
        sPoolListHeadR->prev = NULL;
        sPoolFreeSpace += (uintptr_t) sPoolListHeadR - (uintptr_t) oldListHead;
    }
    return sPoolFreeSpace;
}
// main_pool_realloc
UNUSED void *main_pool_realloc(void *addr, u32 size) {
    void *newAddr = NULL;
    struct MainPoolBlock *block = (struct MainPoolBlock *) ((u8 *) addr - 8);

    if (block->next == sPoolListHeadL) {
        main_pool_free(addr);
        newAddr = main_pool_alloc(size, MEMORY_POOL_LEFT);
    }
    return newAddr;
}

UNUSED s32 main_pool_available(void) {
    return sPoolFreeSpace - 8;
}

UNUSED u32 main_pool_push_state(void) {
    struct MainPoolState *prevState = gMainPoolState;
    u32 freeSpace = sPoolFreeSpace;
    struct MainPoolBlock *lhead = sPoolListHeadL;
    struct MainPoolBlock *rhead = sPoolListHeadR;

    gMainPoolState = main_pool_alloc(sizeof(*gMainPoolState), MEMORY_POOL_LEFT);
    gMainPoolState->freeSpace = freeSpace;
    gMainPoolState->listHeadL = lhead;
    gMainPoolState->listHeadR = rhead;
    gMainPoolState->prev = prevState;
    return sPoolFreeSpace;
}

/**
 * Restore pool state from a previous call to main_pool_push_state. Return the
 * amount of free space left in the pool.
 */
UNUSED u32 main_pool_pop_state(void) {
    sPoolFreeSpace = gMainPoolState->freeSpace;
    sPoolListHeadL = gMainPoolState->listHeadL;
    sPoolListHeadR = gMainPoolState->listHeadR;
    gMainPoolState = gMainPoolState->prev;
    return sPoolFreeSpace;
}
// similar to sm64 dma_read
UNUSED void *func_802A80B0(u8 *dest, u8 *srcStart, u8 *srcEnd) {
    void *addr;
    u32 size = srcStart - dest;
    addr = main_pool_alloc(size, (u32) srcEnd);
    
    if (addr != 0) {

        osInvalDCache(addr, size);
        osPiStartDma(&gDmaIoMesg, OS_MESG_PRI_NORMAL, OS_READ, (uintptr_t) dest, addr, size,
                     &gDmaMesgQueue);
        osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, OS_MESG_BLOCK);
    }
    return addr;
}

// replaces call to dynamic_dma_read with dma_read.
UNUSED void *load_segment(s32 segment, u8 *srcStart, u8 *srcEnd, u8 *side) {
    void *addr = func_802A80B0(srcStart, srcEnd, side);

    if (addr != NULL) {
        set_segment_base_addr(segment, addr);
    }
    return addr;
}

// Similar to sm64 load_to_fixed_pool_addr?
UNUSED void *func_802A8190(s32 arg0, u8 *arg1) {
    //u32 srcSize = ALIGN16(srcEnd - srcStart);
    //u32 destSize = ALIGN16((u8 *) sPoolListHeadR - destAddr);
    void *addr;
    u32 temp_v0 = D_802B8CD4[arg0].unk4;
    u32 temp_v1 = D_802B8CD4[arg0].unk8;
    u32 temp_v2 = D_802B8CD4[arg0].unk2;
    addr = func_802A80B0((u8 *) temp_v0, (u8 *) temp_v1, arg1);

        //dest = main_pool_alloc(destSize, MEMORY_POOL_RIGHT);
        if (addr != 0) {
            set_segment_base_addr(temp_v2, addr);
        }
    return (void *) addr;
}

UNUSED void func_802A81EC(void) {
    s32 temp_s0;
    s16 *phi_s1;
    s32 phi_s0;

    phi_s1 = (s16 *) &D_802B8CD4;
    phi_s0 = 0;
    do {
        if ((*phi_s1 & 1) != 0) {
            func_802A8190(phi_s0, 0);
        }
        temp_s0 = phi_s0 + 1;
        phi_s1 += 8;
        phi_s0 = temp_s0;
    } while (phi_s0 != 3);
}

UNUSED struct AllocOnlyPool *alloc_only_pool_init(u32 size, u32 side) {
    void *addr;
    struct AllocOnlyPool *subPool = NULL;

    size = ALIGN4(size);
    addr = main_pool_alloc(size + sizeof(struct AllocOnlyPool), side);
    if (addr != NULL) {
        subPool = (struct AllocOnlyPool *) addr;
        subPool->totalSpace = size;
        subPool->usedSpace = (s32) addr + sizeof(struct AllocOnlyPool);
        subPool->startPtr = 0;
        subPool->freePtr = (u8 *) addr + sizeof(struct AllocOnlyPool);
    }
    return subPool;
}

UNUSED u32 func_802A82AC(s32 arg0) {
    u32 temp_v0;
    u32 phi_v1;

    temp_v0 = D_801502A0 - arg0;
    phi_v1 = 0;
    if (temp_v0 >= (u32) gDisplayListHead) {
        D_801502A0 = temp_v0;
        phi_v1 = temp_v0;
    }
    return phi_v1;
}

/**
 * @brief Returns pointer to mio0 compressed Vtx.
 */
u8 *dma_compressed_vtx(u8 *start, u8 *end) {
    u8 *freeSpace;
    u32 size;

    size = ALIGN16(end - start);
    freeSpace = (u8 *) gNextFreeMemoryAddress;
    dma_copy(freeSpace, start, size);
    gNextFreeMemoryAddress += size;
    return freeSpace;
}

// unused mio0 decode func.
UNUSED s32 func_802A8348(s32 arg0, s32 arg1, s32 arg2) {
    u32 offset;
    UNUSED void *pad;
    uintptr_t oldAddr;
    void *newAddr;
    
    offset = ALIGN16(arg1 * arg2);
    oldAddr = gNextFreeMemoryAddress;
    newAddr = (void *) (oldAddr + offset);
    pad = &newAddr;
    osInvalDCache(newAddr, offset);
    osPiStartDma(&gDmaIoMesg, 0, 0, (uintptr_t) &_other_texturesSegmentRomStart[SEGMENT_OFFSET(arg0)], newAddr, offset, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    
    func_80040030((u8 *) newAddr, (u8 *) oldAddr);
    gNextFreeMemoryAddress += offset;
    return oldAddr;
}

UNUSED u8 *func_802A841C(u8* arg0, s32 arg1, s32 arg2) {
    u8 *temp_v0;
    void *temp_a0;
    temp_v0 = (u8 *) gNextFreeMemoryAddress;
    temp_a0 = temp_v0 + arg2;
    arg1 = ALIGN16(arg1);
    arg2 = ALIGN16(arg2);
    
    osInvalDCache(temp_a0, arg1);
    osPiStartDma(&gDmaIoMesg, 0, 0, (uintptr_t) &_other_texturesSegmentRomStart[SEGMENT_OFFSET(arg0)],temp_a0, arg1, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    func_80040030((u8 *) temp_a0, temp_v0);
    gNextFreeMemoryAddress += arg2;
    return temp_v0;
}

u8 *dma_textures(u8 *arg0, u32 arg1, u32 arg2) {
    u8 *temp_v0;
    void *temp_a0;

    temp_v0 = (u8 *) gNextFreeMemoryAddress;
    temp_a0 = temp_v0 + arg2;
    arg1 = ALIGN16(arg1);
    arg2 = ALIGN16(arg2);
    osInvalDCache((void *) temp_a0, arg1);
    osPiStartDma(&gDmaIoMesg, 0, 0, (uintptr_t) &_other_texturesSegmentRomStart[SEGMENT_OFFSET(arg0)], (void *)temp_a0, arg1, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, (int) 1);
    mio0decode((u8 *) temp_a0, temp_v0);
    gNextFreeMemoryAddress += arg2;
    return temp_v0;
}

u32 MIO0_0F(u8 *arg0, u32 arg1, u32 arg2) {
    u32 oldHeapEndPtr;
    void *temp_v0;

    arg1 = ALIGN16(arg1);
    arg2 = ALIGN16(arg2);
    oldHeapEndPtr = gHeapEndPtr;
    temp_v0 = (void *) gNextFreeMemoryAddress;

    osInvalDCache(temp_v0, arg1);
    osPiStartDma(&gDmaIoMesg, 0, 0, (uintptr_t) &_other_texturesSegmentRomStart[SEGMENT_OFFSET(arg0)], temp_v0, arg1, &gDmaMesgQueue);
    osRecvMesg(&gDmaMesgQueue, &gMainReceivedMesg, 1);
    mio0decode((u8 *) temp_v0, (u8 *) oldHeapEndPtr);
    gHeapEndPtr += arg2;
    return oldHeapEndPtr;
}

void func_802A86A8(mk64_Vtx *data, u32 arg1) {
    mk64_Vtx_n *vtx_n = (mk64_Vtx_n *) data;
    Vtx *vtx;
    s32 tmp = ALIGN16(arg1 * 0x10);
    s32 i;
    s8 temp_a0;
    s8 temp_a3;
    s8 flags;

    gHeapEndPtr -= tmp;
    vtx = (Vtx *) gHeapEndPtr;

        for (i = 0; i < arg1; i++) {
            if (gIsMirrorMode) {
                vtx->n.ob[0] = -vtx_n->ob[0];
            } else {
                vtx->n.ob[0] = vtx_n->ob[0];
            }

            vtx->n.ob[1] = (vtx_n->ob[1] * vtxStretchY);
            temp_a0 = vtx_n->n[0];
            temp_a3 = vtx_n->n[1];

            flags = temp_a0 & 3;
            flags |= (temp_a3 * 4) & 0xC;

            vtx->n.ob[2] = vtx_n->ob[2];
            vtx->n.tc[0] = vtx_n->tc[0];
            vtx->n.tc[1] = vtx_n->tc[1];
            vtx->n.n[0] = (temp_a0 & 0xFC);
            vtx->n.n[1] = (temp_a3 & 0xFC);
            vtx->n.n[2] = vtx_n->n[2];
            vtx->n.flag = flags;
            vtx->n.a = 0xFF;
            vtx++;
            vtx_n++;
        }
}

void decompress_vtx(u8 *arg0, u32 vertexCount) {
    s32 size = ALIGN16(vertexCount * 0x18);
    u32 segment = SEGMENT_NUMBER2(arg0);
    u32 offset = SEGMENT_OFFSET(arg0);
    void *freeSpace;
    u8 *vtxCompressed = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    UNUSED s32 pad;

    freeSpace = (void *) gNextFreeMemoryAddress;
    gNextFreeMemoryAddress += size;

    mio0decode(vtxCompressed, (u8 *) freeSpace);
    func_802A86A8((mk64_Vtx *) freeSpace, vertexCount);
    set_segment_base_addr(4, (void *) gHeapEndPtr);
}

UNUSED void func_802A8844(void) {

}

void unpack_lights(Gfx *arg0, UNUSED u8 *arg1, s8 arg2) {
    UNUSED s32 pad;
    s32 a = (arg2 * 0x18) + 0x9000008;
    s32 b = (arg2 * 0x18) + 0x9000000;
    Gfx macro[] = {gsSPNumLights(NUMLIGHTS_1)};

    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;

    sGfxSeekPosition++;
    arg0[sGfxSeekPosition].words.w0 = 0x3860010;

    arg0[sGfxSeekPosition].words.w1 = a;

    sGfxSeekPosition++;
    arg0[sGfxSeekPosition].words.w0 = 0x3880010;
    arg0[sGfxSeekPosition].words.w1 = b;
    sGfxSeekPosition++;
}

void unpack_displaylist(Gfx *arg0, u8 *args, UNUSED s8 opcode) {
    u32 temp_v0 = args[sPackedSeekPosition++];
    uintptr_t temp_t7 = ((args[sPackedSeekPosition++]) << 8 | temp_v0) * 8;
    arg0[sGfxSeekPosition].words.w0 = 0x06000000;
    // Segment seven addr
    arg0[sGfxSeekPosition].words.w1 = 0x07000000 + temp_t7;
    sGfxSeekPosition++;
}

// end displaylist
void unpack_end_displaylist(Gfx *arg0, UNUSED u8 *arg1, UNUSED s8 arg2) {
    arg0[sGfxSeekPosition].words.w0 = G_ENDDL << 24;
    arg0[sGfxSeekPosition].words.w1 = 0;
    sGfxSeekPosition++;
}

void unpack_set_geometry_mode(Gfx *arg0, UNUSED u8 *arg1, UNUSED s8 arg2) {
    Gfx macro[] = {gsSPSetGeometryMode(G_CULL_BACK)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_clear_geometry_mode(Gfx *arg0, UNUSED u8 *arg1, UNUSED s8 arg2) {
    Gfx macro[] = {gsSPClearGeometryMode(G_CULL_BACK)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_cull_displaylist(Gfx *arg0, UNUSED u8 *arg1, UNUSED s8 arg2) {
    Gfx macro[] = {gsSPCullDisplayList(0, 160)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_combine_mode1(Gfx *arg0, UNUSED u8 *arg1, UNUSED u32 arg2) {
    Gfx macro[] = {gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_combine_mode2(Gfx *arg0, UNUSED u8 *arg1, UNUSED u32 arg2) {
    Gfx macro[] = {gsDPSetCombineMode(G_CC_MODULATERGBDECALA, G_CC_MODULATERGBDECALA)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_combine_mode_shade(Gfx *arg0, UNUSED u8 *arg1, UNUSED u32 arg2) {
    Gfx macro[] = {gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_combine_mode4(Gfx *arg0, UNUSED u8 *arg1, UNUSED u32 arg2) {
    Gfx macro[] = {gsDPSetCombineMode(G_CC_MODULATERGBDECALA, G_CC_MODULATERGBDECALA)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_combine_mode5(Gfx *arg0, UNUSED u8 *arg1, UNUSED u32 arg2) {
    Gfx macro[] = {gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_render_mode_opaque(Gfx *arg0, UNUSED u8 *arg1, UNUSED u32 arg2) {
    Gfx macro[] = {gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_render_mode_tex_edge(Gfx *arg0, UNUSED u8 *arg1, UNUSED u32 arg2) {
    Gfx macro[] = {gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_render_mode_translucent(Gfx *arg0, UNUSED u8 *arg1, UNUSED u32 arg2) {
    Gfx macro[] = {gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_render_mode_opaque_decal(Gfx *arg0, UNUSED u8 *arg1, UNUSED u32 arg2) {
    Gfx macro[] = {gsDPSetRenderMode(G_RM_AA_ZB_OPA_DECAL, G_RM_AA_ZB_OPA_DECAL)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_render_mode_translucent_decal(Gfx *arg0, UNUSED u8 *arg1, UNUSED u32 arg2) {
    Gfx macro[] = {gsDPSetRenderMode(G_RM_AA_ZB_XLU_DECAL, G_RM_AA_ZB_XLU_DECAL)};
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_tile_sync(Gfx *gfx, u8 *args, s8 opcode) {
    Gfx tileSync[] = { gsDPTileSync() };
    u32 temp_a0;
    u32 lo;
    u32 hi;

    s32 width;
    s32 height;
    s32 fmt;
    s32 siz;
    s32 line;
    s32 tmem;
    s32 cms;
    s32 masks;
    s32 cmt;
    s32 maskt;
    s32 lrs;
    s32 lrt;
    UNUSED s32 pad[4];

    tmem = 0;
    switch (opcode) {
        case 26:
            width = 32;
            height = 32;
            fmt = 0;
            break;
        case 44:
            width = 32;
            height = 32;
            fmt = 0;
            tmem = 256;
            break;
        case 27:
            width = 64;
            height = 32;
            fmt = 0;
            break;
        case 28:
            width = 32;
            height = 64;
            fmt = 0;
            break;
        case 29:
            width = 32;
            height = 32;
            fmt = 3;
            break;
        case 30:
            width = 64;
            height = 32;
            fmt = 3;
            break;
        case 31:
            width = 32;
            height = 64;
            fmt = 3;
            break;
    }

    // Set arguments

    siz = G_IM_SIZ_16b_BYTES;
    line = ((((width * 2) + 7) >> 3));

    temp_a0 = args[sPackedSeekPosition++];
    cms = temp_a0 & 0xF;
    masks = (temp_a0 & 0xF0) >> 4;

    temp_a0 = args[sPackedSeekPosition++];
    cmt = temp_a0 & 0xF;
    maskt = (temp_a0 & 0xF0) >> 4;

    // Generate gfx

    gfx[sGfxSeekPosition].words.w0 = tileSync->words.w0;
    gfx[sGfxSeekPosition].words.w1 = tileSync->words.w1;
    sGfxSeekPosition++;

    lo = (G_SETTILE << 24) | (fmt << 21) | (siz << 19) | (line << 9) | tmem;
    hi = ((cmt) << 18) | ((maskt) << 14) | ((cms) << 8) | ((masks) << 4);
    
    gfx[sGfxSeekPosition].words.w0 = lo;
    gfx[sGfxSeekPosition].words.w1 = hi;
    sGfxSeekPosition++;

    lrs = (width - 1) << 2;
    lrt = (height - 1) << 2;

    lo = (G_SETTILESIZE << 24);
    hi = (lrs << 12) | lrt;

    gfx[sGfxSeekPosition].words.w0 = lo;
    gfx[sGfxSeekPosition].words.w1 = hi;
    sGfxSeekPosition++;
}

void unpack_tile_load_sync(Gfx *gfx, u8 *args, s8 opcode) {
    UNUSED u32 var;
    Gfx tileSync[] = { gsDPTileSync() };
    Gfx loadSync[] = { gsDPLoadSync() };

    u32 arg;
    u32 lo;
    u32 hi;
    u32 addr;
    u32 width;
    u32 height;
    u32 fmt;
    u32 siz;
    u32 tmem;
    u32 tile;

    switch (opcode) {
        case 32:
            width = 32;
            height = 32;
            fmt = 0;
            break;
        case 33:
            width = 64;
            height = 32;
            fmt = 0;
            break;
        case 34:
            width = 32;
            height = 64;
            fmt = 0;
            break;
        case 35:
            width = 32;
            height = 32;
            fmt = 3;
            break;
        case 36:
            width = 64;
            height = 32;
            fmt = 3;
            break;
        case 37:
            width = 32;
            height = 64;
            fmt = 3;
            break;
    }

    // Set arguments

    // Waa?
    var = args[sPackedSeekPosition];
    // Generates a texture address.
    addr = SEGMENT_ADDR(0x05, args[sPackedSeekPosition++] << 11);
    sPackedSeekPosition++;
    arg = args[sPackedSeekPosition++];
    siz = G_IM_SIZ_16b;
    tmem = (arg & 0xF);
    tile = (arg & 0xF0) >> 4;

    // Generate gfx

    lo = (G_SETTIMG << 24) | (fmt << 21) | (siz << 19);
    gfx[sGfxSeekPosition].words.w0 = lo;
    gfx[sGfxSeekPosition].words.w1 = addr;
    sGfxSeekPosition++;

    gfx[sGfxSeekPosition].words.w0 = tileSync->words.w0;
    gfx[sGfxSeekPosition].words.w1 = tileSync->words.w1;
    sGfxSeekPosition++;

    lo = (G_SETTILE << 24) | (fmt << 21) | (siz << 19) | tmem;
    hi = tile << 24;

    gfx[sGfxSeekPosition].words.w0 = lo;
    gfx[sGfxSeekPosition].words.w1 = hi;
    sGfxSeekPosition++;

    gfx[sGfxSeekPosition].words.w0 = loadSync->words.w0;
    gfx[sGfxSeekPosition].words.w1 = loadSync->words.w1;
    sGfxSeekPosition++;

    lo = G_LOADBLOCK << 24;
    hi = (tile << 24) | (MIN((width * height) - 1, 0x7FF) << 12) | CALC_DXT(width, G_IM_SIZ_16b_BYTES);

    gfx[sGfxSeekPosition].words.w0 = lo;
    gfx[sGfxSeekPosition].words.w1 = hi;
    sGfxSeekPosition++;
}

void unpack_texture_on(Gfx *arg0, UNUSED u8 *args, UNUSED s8 arg2) {
    Gfx macro[] = { gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON) };
    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_texture_off(Gfx *arg0, UNUSED u8 *args, UNUSED s8 arg2) {
    Gfx macro[] = { gsSPTexture(0x1, 0x1, 0, G_TX_RENDERTILE, G_OFF) };

    arg0[sGfxSeekPosition].words.w0 = macro->words.w0;
    arg0[sGfxSeekPosition].words.w1 = macro->words.w1;
    sGfxSeekPosition++;
}

void unpack_vtx1(Gfx *gfx, u8 *args, UNUSED s8 arg2) {
    u32 temp_t7;
    u32 temp_t7_2;

    u32 temp = args[sPackedSeekPosition++];
    u32 temp2 = ((args[sPackedSeekPosition++] << 8) | temp) * 0x10;

    temp = args[sPackedSeekPosition++];
    temp_t7 = temp & 0x3F;
    temp = args[sPackedSeekPosition++];
    temp_t7_2 = temp & 0x3F;

    gfx[sGfxSeekPosition].words.w0 = (G_VTX << 24) | (temp_t7_2 * 2 << 16) | (((temp_t7 << 10) + ((0x10 * temp_t7) - 1)));
    gfx[sGfxSeekPosition].words.w1 = 0x04000000 + temp2;
    sGfxSeekPosition++;
}

void unpack_vtx2(Gfx *gfx, u8 *args, s8 arg2) {
    u32 temp_t9;
    u32 temp_v1;
    u32 temp_v2;

    temp_v1 = args[sPackedSeekPosition++];
    temp_v2 = ((args[sPackedSeekPosition++] << 8) | temp_v1) * 0x10;

    temp_t9 = arg2 - 50;

    gfx[sGfxSeekPosition].words.w0 = (G_VTX << 24) | ((temp_t9 << 10) + (((temp_t9) * 0x10) - 1));
    gfx[sGfxSeekPosition].words.w1 = 0x4000000 + temp_v2;
    sGfxSeekPosition++;
}

void unpack_triangle(Gfx *gfx, u8 *args, UNUSED s8 arg2) {
    u32 temp_v0;
    u32 phi_a0;
    u32 phi_a2;
    u32 phi_a3;

    temp_v0 = args[sPackedSeekPosition++];

    if (gIsMirrorMode) {
        phi_a3 = temp_v0 & 0x1F;
        phi_a2 = (temp_v0 >> 5) & 7;
        temp_v0 = args[sPackedSeekPosition++];
        phi_a2 |= (temp_v0 & 3) * 8;
        phi_a0 = (temp_v0 >> 2) & 0x1F;
    } else {
        phi_a0 = temp_v0 & 0x1F;
        phi_a2 = (temp_v0 >> 5) & 7;
        temp_v0 = args[sPackedSeekPosition++];
        phi_a2 |= (temp_v0 & 3) * 8;
        phi_a3 = (temp_v0 >> 2) & 0x1F;
    }
    gfx[sGfxSeekPosition].words.w0 = (G_TRI1 << 24);
    gfx[sGfxSeekPosition].words.w1 = ((phi_a0 * 2) << 16) | ((phi_a2 * 2) << 8) | (phi_a3 * 2);
    sGfxSeekPosition++;
}

void unpack_quadrangle(Gfx *gfx, u8 *args, UNUSED s8 arg2) {
    u32 temp_v0;
    u32 phi_t0;
    u32 phi_a3;
    u32 phi_a0;
    u32 phi_t2;
    u32 phi_t1;
    u32 phi_a2;

    temp_v0 = args[sPackedSeekPosition++];

    if (gIsMirrorMode) {
        phi_t0 = temp_v0 & 0x1F;
        phi_a3 = (temp_v0 >> 5) & 7;
        temp_v0 = args[sPackedSeekPosition++];
        phi_a3 |= (temp_v0 & 3) * 8;
        phi_a0 = (temp_v0 >> 2) & 0x1F;
    } else {
        phi_a0 = temp_v0 & 0x1F;
        phi_a3 = (temp_v0 >> 5) & 7;
        temp_v0 = args[sPackedSeekPosition++];
        phi_a3 |= (temp_v0 & 3) * 8;
        phi_t0 = (temp_v0 >> 2) & 0x1F;
    }

    temp_v0 = args[sPackedSeekPosition++];

    if (gIsMirrorMode) {
        phi_a2 = temp_v0 & 0x1F;
        phi_t1 = (temp_v0 >> 5) & 7;
        temp_v0 = args[sPackedSeekPosition++];
        phi_t1 |= (temp_v0 & 3) * 8;
        phi_t2 = (temp_v0 >> 2) & 0x1F;
    } else {
        phi_t2 = temp_v0 & 0x1F;
        phi_t1 = (temp_v0 >> 5) & 7;
        temp_v0 = args[sPackedSeekPosition++];
        phi_t1 |= (temp_v0 & 3) * 8;
        phi_a2 = (temp_v0 >> 2) & 0x1F;
    }
    gfx[sGfxSeekPosition].words.w0 =
        (G_TRI2 << 24) | ((phi_a0 * 2) << 16) | ((phi_a3 * 2) << 8) | (phi_t0 * 2);
    gfx[sGfxSeekPosition].words.w1 = ((phi_t2 * 2) << 16) | ((phi_t1 * 2) << 8) | (phi_a2 * 2);
    sGfxSeekPosition++;
}

void unpack_spline_3D(Gfx *gfx, u8 *arg1, UNUSED s8 arg2) {
    u32 temp_v0;
    u32 phi_a0;
    u32 phi_t0;
    u32 phi_a3;
    u32 phi_a2;

    temp_v0 = arg1[sPackedSeekPosition++];

    if (gIsMirrorMode != 0) {
        phi_a0 = temp_v0 & 0x1F;
        phi_a2 = ((temp_v0 >> 5) & 7);
        temp_v0 = arg1[sPackedSeekPosition++];
        phi_a2 |= ((temp_v0 & 3) * 8);
        phi_a3 = (temp_v0 >> 2) & 0x1F;
        phi_t0 = ((temp_v0 >> 7) & 1);
        temp_v0 = arg1[sPackedSeekPosition++];
        phi_t0 |= (temp_v0 & 0xF) * 2;
    } else {
        phi_t0 = temp_v0 & 0x1F;
        phi_a3 = ((temp_v0 >> 5) & 7);
        temp_v0 = arg1[sPackedSeekPosition++];
        phi_a3 |= ((temp_v0 & 3) * 8);
        phi_a2 = (temp_v0 >> 2) & 0x1F;
        phi_a0 = ((temp_v0 >> 7) & 1);
        temp_v0 = arg1[sPackedSeekPosition++];
        phi_a0 |= (temp_v0 & 0xF) * 2;
    }
    gfx[sGfxSeekPosition].words.w0 = (G_LINE3D << 24);
    gfx[sGfxSeekPosition].words.w1 =
        ((phi_a0 * 2) << 24) | ((phi_t0 * 2) << 16) | ((phi_a3 * 2) << 8) | (phi_a2 * 2);
    sGfxSeekPosition++;
}

UNUSED void func_802A9AEC(void) {

}

/**
 * Unpacks course packed displaylists by iterating through each byte of the packed file.
 * Each packed displaylist entry has an opcode and any number of arguments.
 * The opcodes range from 0 to 87 which are used to run the relevant unpack function.
 * The file pointer increments when arguments are used. This way,
 * displaylist_unpack will always read an opcode and not an argument by accident.
 * 
 * @warning opcodes that do not contain a definition in the switch are ignored. If an undefined opcode
 * contained arguments the unpacker might try to unpack those arguments.
 * This issue is prevented so long as the packed file adheres to correct opcodes and unpack code
 * increments the file pointer the correct number of times.
 */
void displaylist_unpack(uintptr_t *data, uintptr_t finalDisplaylistOffset, u32 arg2) {
    uintptr_t segment = SEGMENT_NUMBER2(data);
    uintptr_t offset = SEGMENT_OFFSET(data);
    u8 *packed_dl = VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);

    Gfx *gfx;
    u32 addr;

    u8 opcode;

    finalDisplaylistOffset = ALIGN16(finalDisplaylistOffset) + 8;
    gHeapEndPtr -= finalDisplaylistOffset;
    addr = gHeapEndPtr;
    gfx = (Gfx *) gHeapEndPtr;
    sGfxSeekPosition = 0;
    sPackedSeekPosition = 0;

    while(1) {

        // Seek to the next byte
        opcode = packed_dl[sPackedSeekPosition++];

        // Break when the eof has been reached denoted by opcode 0xFF
        if (opcode == 0xFF) break;
        
        switch (opcode) {
            case 0x0:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x1:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x2:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x3:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x4:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x5:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x6:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x7:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x8:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x9:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0xA:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0xB:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0xC:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0xD:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0xE:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0xF:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x10:
                unpack_lights(gfx, packed_dl, opcode);
                break; 
            case 0x11:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x12:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x13:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x14:
                unpack_lights(gfx, packed_dl, opcode);
                break;
            case 0x15:
                unpack_combine_mode1(gfx, packed_dl, arg2);
                break;
            case 0x16:
                unpack_combine_mode2(gfx, packed_dl, arg2);
                break;
            case 0x17:
                unpack_combine_mode_shade(gfx, packed_dl, arg2);
                break;
            case 0x2E:
                unpack_combine_mode4(gfx, packed_dl, arg2);
                break;
            case 0x53:
                unpack_combine_mode5(gfx, packed_dl, arg2);
                break;
            case 0x18:
                unpack_render_mode_opaque(gfx, packed_dl, arg2);
                break;
            case 0x19:
                unpack_render_mode_tex_edge(gfx, packed_dl, arg2);
                break;
            case 0x2F:
                unpack_render_mode_translucent(gfx, packed_dl, arg2);
                break;
            case 0x54:
                unpack_render_mode_opaque_decal(gfx, packed_dl, arg2);
                break;
            case 0x55:
                unpack_render_mode_translucent_decal(gfx, packed_dl, arg2);
                break;
            case 0x1A:
                unpack_tile_sync(gfx, packed_dl, opcode);
                break;
            case 0x2C:
                unpack_tile_sync(gfx, packed_dl, opcode);
                break;
            case 0x1B:
                unpack_tile_sync(gfx, packed_dl, opcode);
                break;
            case 0x1C:
                unpack_tile_sync(gfx, packed_dl, opcode);
                break;
            case 0x1D:
                unpack_tile_sync(gfx, packed_dl, opcode);
                break;
            case 0x1E:
                unpack_tile_sync(gfx, packed_dl, opcode);
                break;
            case 0x1F:
                unpack_tile_sync(gfx, packed_dl, opcode);
                break;
            case 0x20:
                unpack_tile_load_sync(gfx, packed_dl, opcode);
                break;
            case 0x21:
                unpack_tile_load_sync(gfx, packed_dl, opcode);
                break;
            case 0x22:
                unpack_tile_load_sync(gfx, packed_dl, opcode);
                break;
            case 0x23:
                unpack_tile_load_sync(gfx, packed_dl, opcode);
                break;
            case 0x24:
                unpack_tile_load_sync(gfx, packed_dl, opcode);
                break;
            case 0x25:
                unpack_tile_load_sync(gfx, packed_dl, opcode);
                break;
            case 0x26:
                unpack_texture_on(gfx, packed_dl, opcode);
                break;
            case 0x27:
                unpack_texture_off(gfx, packed_dl, opcode);
                break;
            case 0x28:
                unpack_vtx1(gfx, packed_dl, opcode);
                break;
            case 0x33:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x34:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x35:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x36:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x37:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x38:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x39:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x3A:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x3B:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x3C:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x3D:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x3E:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x3F:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x40:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x41:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x42:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x43:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x44:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x45:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x46:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x47:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x48:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x49:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x4A:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x4B:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x4C:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x4D:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x4E:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x4F:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x50:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x51:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x52:
                unpack_vtx2(gfx, packed_dl, opcode);
                break;
            case 0x29:
                unpack_triangle(gfx, packed_dl, opcode);
                break;
            case 0x58:
                unpack_quadrangle(gfx, packed_dl, opcode);
                break;
            case 0x30:
                unpack_spline_3D(gfx, packed_dl, opcode);
                break;
            case 0x2D:
                unpack_cull_displaylist(gfx, packed_dl, opcode);
                break;
            case 0x2A:
                unpack_end_displaylist(gfx, packed_dl, opcode);
                break;
            case 0x56:
                unpack_set_geometry_mode(gfx, packed_dl, opcode);
                break;
            case 0x57:
                unpack_clear_geometry_mode(gfx, packed_dl, opcode);
                break;
            case 0x2B:
                unpack_displaylist(gfx, packed_dl, opcode);
                break;
            default:
                // Skip unknown values
                break;
        }
    }
    set_segment_base_addr(0x7, (void *) addr);
}

struct UnkStr_802AA7C8 {
    u8 *unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
};

void decompress_textures(u32 *arg0) {
    u32 segment = SEGMENT_NUMBER2(arg0);
    u32 offset = SEGMENT_OFFSET(arg0);
    struct UnkStr_802AA7C8 *phi_s0 =
        (struct UnkStr_802AA7C8 *) VIRTUAL_TO_PHYSICAL2(gSegmentTable[segment] + offset);
    struct UnkStr_802AA7C8 *temp_s0;
    u32 temp_t2;
    u8 *temp_a0;
    u32 phi_v0;
    u32 sp20;

    phi_v0 = 0;
    temp_s0 = phi_s0;
    while (TRUE) {
        temp_a0 = phi_s0->unk0;
        if ((temp_a0) == 0) {
            break;
        }
        phi_v0 += phi_s0->unk8;
        phi_s0++;
    }
    phi_s0 = temp_s0;
    gHeapEndPtr -= phi_v0;
    sp20 = gHeapEndPtr;

    while (TRUE) {
        temp_a0 = phi_s0->unk0;
        if ((temp_a0) == 0) {
            break;
        }
        MIO0_0F(temp_a0, phi_s0->unk4, phi_s0->unk8);
        phi_s0++;
    }
    gHeapEndPtr = sp20;
    temp_t2 = gHeapEndPtr;
    set_segment_base_addr(0x5, (void *) temp_t2);
}

void *decompress_segments(u8 *start, u8 *end) {
    UNUSED u32 pad;
    u32 sp28;
    u32 size = ALIGN16(end - start);
    u8 *heapEnd;
    u32 *freeSpace;

    heapEnd = (u8 *) gHeapEndPtr - size;
    // sp20 = temp_a0;
    dma_copy(heapEnd, start, size);
    sp28 = *(u32 *) (heapEnd + 4);
    sp28 = ALIGN16(sp28);
    freeSpace = (u32 *) gNextFreeMemoryAddress;
    mio0decode(heapEnd, (u8 *)freeSpace);
    gNextFreeMemoryAddress += sp28;
    return (void *)freeSpace;
}

/**
 * @brief Loads & DMAs course data. Vtx, textures, displaylists, etc.
 * @param courseId
*/
u8 *load_course(s32 courseId) {
    UNUSED s32 pad[4];
    u8 *vtxCompressed; // mio0 compressed
    u8 *courseDataRomStart; // mio0 compressed
    u8 *courseDataRomEnd;
    u8 *vertexRomStart; // mio0 compressed
    u8 *vertexRomEnd;
    UNUSED s32 pad2[2];
    u32 *textures;
    u8 *vertexStart; // mio0 compressed
    u8 *packedStart;
    u32 vertexCount;
    uintptr_t finalDisplaylistOffset;
    u32 unknown1;
    s32 prevLoadedAddress_saved;
    u8 *offsetRomStart;
    u8 *offsetRomEnd;

    // Pointers to rom offsets
    //gamestate = gGamestate;
    courseDataRomStart = gCourseTable[courseId].dlRomStart;
    courseDataRomEnd = gCourseTable[courseId].dlRomEnd;
    offsetRomStart = gCourseTable[courseId].offsetRomStart;
    offsetRomEnd = gCourseTable[courseId].offsetRomEnd;
    vertexRomStart = gCourseTable[courseId].vertexRomStart;
    vertexRomEnd = gCourseTable[courseId].vertexRomEnd;
    textures = gCourseTable[courseId].textures;
    vertexStart = gCourseTable[courseId].vertexStart;
    packedStart = gCourseTable[courseId].packedStart;
    vertexCount = gCourseTable[courseId].vertexCount;
    finalDisplaylistOffset = gCourseTable[courseId].finalDisplaylistOffset;
    unknown1 = gCourseTable[courseId].unknown1;

    if ((gGamestate == ENDING_SEQUENCE) || (gGamestate == CREDITS_SEQUENCE)) {
        gHeapEndPtr = SEG_80280000;
    } else {
        gHeapEndPtr = SEG_8028DF00;
    }
    set_segment_base_addr(9, load_data((uintptr_t)offsetRomStart, (uintptr_t) offsetRomEnd));

    if (gGamestate != ENDING_SEQUENCE) {
        set_segment_base_addr(6, decompress_segments(courseDataRomStart, courseDataRomEnd));
    }
    prevLoadedAddress_saved = gNextFreeMemoryAddress;
    vtxCompressed = dma_compressed_vtx(vertexRomStart, vertexRomEnd);

    set_segment_base_addr(0xF, (void *) vtxCompressed);
    decompress_vtx(vertexStart, vertexCount);
    displaylist_unpack((uintptr_t *) packedStart, finalDisplaylistOffset, unknown1);
    decompress_textures(textures);
    gNextFreeMemoryAddress = prevLoadedAddress_saved;
    return vtxCompressed;
}
