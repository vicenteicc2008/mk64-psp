#include <ultra64.h>
#include <macros.h>
#include <math_util.h>
#include <variables.h>
#include <main.h>
#include "framebuffers.h"
#include <PR/rcp.h>
// Location based from sm64.
// This may need to be moved before framebuffers.c
// If math_util has data that does not line-up with trig_tables.
#include "trig_tables.inc.c"
#pragma intrinsic (sqrtf)


#ifdef NON_MATCHING
// Nearly matches
UNUSED s32 func_802B4F60(s32 arg0, Vec3f arg1, s32 arg2, f32 arg3, f32 arg4)
{
  Mat4 sp30;
  f32 sp2C;
  f32 a;
  Vec3f sp1C;
  vec3f_copy(sp1C, arg1);
  sp2C = sp30[3][3] + (((sp1C[0] * sp30[0][3]) + (sp1C[1] * sp30[1][3])) + (sp30[2][3] * sp1C[2]));
  func_802B6434(sp1C, sp30);
  if (sp2C >= 0.0f)
  {
    return 0;
  }
  return 1;
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B4F60.s")
#endif

UNUSED void func_802B4FF0() {

}

s32 func_802B4FF8(Mat4 arg0, s32 arg1) {
    if (D_80150112 >= 0x80) {
        return 0;
    }
    func_802B75F8(&gGfxPool->mtxPool[D_80150112 + 0x32B], arg0);
    switch (arg1) {                                 /* irregular */
        case 0:
            gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_80150112 + 0x32B]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            D_80150112 += 1;
            break;
        case 1:
            gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_80150112 + 0x32B]), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            D_80150112 += 1;
            break;
        case 3:
            gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_80150112 + 0x32B]), G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            D_80150112 += 1;
            break;
        case 2:
            gSPMatrix(gDisplayListHead++, VIRTUAL_TO_PHYSICAL(&gGfxPool->mtxPool[D_80150112 + 0x32B]), G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            D_80150112 += 1;
            break;
    }
    return 1;
}

f32 func_802B51E8(Vec3f arg0, Vec3f arg1) {
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;

    temp_f2 = arg1[0] - arg0[0];
    temp_f12 = arg1[1] - arg0[1];
    temp_f14 = arg1[2] - arg0[2];
    return (temp_f2 * temp_f2) + (temp_f12 * temp_f12) + temp_f14 + temp_f14;
}
//u32 atan2s(f32, f32);  // might be s32
u32 func_802B5224(Vec3f arg0, Vec3f arg1) {
    f32 temp_v1;
    f32 temp_v2;
    temp_v1 = arg1[0] - arg0[0];
    temp_v2 = arg1[2] - arg0[2];

    return atan2s(temp_v1, temp_v2);
}

u32 func_802B5258(Vec3f arg0, Vec3s arg1) {
    f32 temp_v1;
    f32 temp_v2;
    temp_v1 = arg1[0] - arg0[0];
    temp_v2 = arg1[2] - arg0[2];
    
    return atan2s(temp_v1, temp_v2);
}

void vec3f_set(Vec3f arg0, f32 arg1, f32 arg2, f32 arg3) {
    arg0[0] = arg1;
    arg0[1] = arg2;
    arg0[2] = arg3;
}

void vec3s_set(Vec3s arg0, s16 arg1, s16 arg2, s16 arg3) {
    arg0[0] = arg1;
    arg0[1] = arg2;
    arg0[2] = arg3;
}

// These functions have bogus return values.
// Disable the compiler warning.
#pragma GCC diagnostic push

#ifdef __GNUC__
#if defined(__clang__)
  #pragma GCC diagnostic ignored "-Wreturn-stack-address"
#else
  #pragma GCC diagnostic ignored "-Wreturn-local-addr"
#endif
#endif

void *vec3f_copy(Vec3f dest, Vec3f src) {
    dest[0] = src[0];
    dest[1] = src[1];
    dest[2] = src[2];
    return &dest; //! warning: function returns address of local variable
}

void vec3s_copy(Vec3s dest, Vec3s src) {
    dest[0] = src[0];
    dest[1] = src[1];
    dest[2] = src[2];
}

UNUSED void *sm64_vec3f_set(Vec3f dest, f32 x, f32 y, f32 z) {
    dest[0] = x;
    dest[1] = y;
    dest[2] = z;
    return &dest;
}

void func_802B5350(Mat4 arg0, Mat4 arg1) {
    s32 row;
    s32 column;

    for (row = 0; row < 4; row++) {
        for (column = 0; column < 4; column++) {
            arg1[row][column] = arg0[row][column];
        }
    }
}

// mtxf_copy
void func_802B5398(s32 *dest, s32 *src, s32 arg2) {
   while (arg2-- > 0) {
        *dest++ = *src++;
   }
}

void mtxf_identity(Mat4 mtx) {
    register s32 i;
    register s32 k;

    for (i = 0; i < 4; i++) {
        for (k = 0; k < 4; k++) {
            mtx[i][k] = (i == k) ? 1.0f : 0.0f;
        }
    } 
}

void func_802B5450(Mat4 arg0, Mat4 arg1, Vec3f arg2) {
    arg1[3][0] = arg0[3][0] + arg2[0];
    arg1[3][1] = arg0[3][1] + arg2[1];
    arg1[3][2] = arg0[3][2] + arg2[2];
    arg1[3][3] = arg0[3][3];
    arg1[0][0] = arg0[0][0];
    arg1[0][1] = arg0[0][1];
    arg1[0][2] = arg0[0][2];
    arg1[0][3] = arg0[0][3];
    arg1[1][0] = arg0[1][0];
    arg1[1][1] = arg0[1][1];
    arg1[1][2] = arg0[1][2];
    arg1[1][3] = arg0[1][3];
    arg1[2][0] = arg0[2][0];
    arg1[2][1] = arg0[2][1];
    arg1[2][2] = arg0[2][2];
    arg1[2][3] = arg0[2][3];
}

UNUSED void func_802B54EC(Mat4 arg0, Mat4 arg1, Vec3f arg2) {
    arg1[3][0] = arg0[3][0] + arg2[0];
    arg1[3][1] = arg0[3][1] + arg2[1];
    arg1[3][2] = arg0[3][2] + arg2[2];
}

void mtxf_translate(Mat4 dest, Vec3f b) {
    mtxf_identity(dest);
    dest[3][0] = b[0];
    dest[3][1] = b[1];
    dest[3][2] = b[2];
}

// Note the use of `2` which generates diff asm than just using floats (2.0f).
void func_802B5564(Mat4 arg0, u16 *arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    f32 temp;
    s32 i, j;
    mtxf_identity(arg0);
    arg2 *= 0.017453292222222222;
    temp = cosf(arg2 / 2) / sinf(arg2 / 2);
    arg0[0][0] = temp / arg3;
    arg0[1][1] = temp;
    arg0[2][2] = (arg4 + arg5) / (arg4 - arg5);
    arg0[2][3] = -1.0f;
    arg0[3][2] = (2 * arg4 * arg5) / (arg4 - arg5);
    arg0[3][3] = 0.0f;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            arg0[i][j] *= arg6;
        }
    }

    if (arg1 != 0) {
        if ((arg4 + arg5) <= 2.0) {
            *arg1 = 0xFFFF;
        }
        else {
            *arg1 = 131072.0 / (arg4 + arg5);
            if (*arg1 <= 0) {
                *arg1 = 1;
            }
        }
    }
}

// Appears to only be for the skybox. mtxf_lookat from sm64 with some modifications.
void func_802B5794(Mat4 mtx, Vec3f from, Vec3f to) {
    // register from sm64 but not required for matching.
    register f32 invLength;
    f32 xColY;
    f32 yColY;
    f32 zColY;
    f32 xColZ;
    f32 yColZ;
    f32 zColZ;
    f32 xColX;
    f32 yColX;
    f32 zColX;

    xColY = 0.0f;
    yColY = 1.0f;
    zColY = 0.0f;

    xColZ = to[0] - from[0];
    yColZ = to[1] - from[1];
    zColZ = to[2] - from[2];

    invLength = -1.0 / sqrtf(xColZ * xColZ + yColZ * yColZ + zColZ * zColZ);
    xColZ *= invLength;
    yColZ *= invLength;
    zColZ *= invLength;

    xColX = yColY * zColZ - zColY * yColZ;
    yColX = zColY * xColZ - xColY * zColZ;
    zColX = xColY * yColZ - yColY * xColZ;

    invLength = 1.0 / sqrtf(xColX * xColX + yColX * yColX + zColX * zColX);

    xColX *= invLength;
    yColX *= invLength;
    zColX *= invLength;

    xColY = yColZ * zColX - zColZ * yColX;
    yColY = zColZ * xColX - xColZ * zColX;
    zColY = xColZ * yColX - yColZ * xColX;

    invLength = 1.0 / sqrtf(xColY * xColY + yColY * yColY + zColY * zColY);
    xColY *= invLength;
    yColY *= invLength;
    zColY *= invLength;

    mtx[0][0] = xColX;
    mtx[1][0] = yColX;
    mtx[2][0] = zColX;
    mtx[3][0] = -(from[0] * xColX + from[1] * yColX + from[2] * zColX);

    mtx[0][1] = xColY;
    mtx[1][1] = yColY;
    mtx[2][1] = zColY;
    mtx[3][1] = -(from[0] * xColY + from[1] * yColY + from[2] * zColY);

    mtx[0][2] = xColZ;
    mtx[1][2] = yColZ;
    mtx[2][2] = zColZ;
    mtx[3][2] = -(from[0] * xColZ + from[1] * yColZ + from[2] * zColZ);

    mtx[0][3] = 0.0f;
    mtx[1][3] = 0.0f;
    mtx[2][3] = 0.0f;
    mtx[3][3] = 1.0f;
}

void func_802B59DC(Mat4 arg0, s16 arg1) {
    f32 sp28 = sins(arg1);
    f32 temp_f0 = coss(arg1);

    mtxf_identity(arg0);
    arg0[1][1] = temp_f0;
    arg0[1][2] = sp28;
    arg0[2][1] = -sp28;
    arg0[2][2] = temp_f0;
}

void func_802B5A44(Mat4 arg0, s16 arg1) {
    f32 temp_f0 = sins(arg1);
    f32 sp28 = coss(arg1);

    mtxf_identity(arg0);
    arg0[0][0] = sp28;
    arg0[0][2] = -temp_f0;
    arg0[2][0] = temp_f0;
    arg0[2][2] = sp28;
}

void func_802B5AAC(Mat4 arg0, s16 arg1) {
    f32 temp_f0 = sins(arg1);
    f32 sp28 = coss(arg1);

    mtxf_identity(arg0);
    arg0[0][0] = sp28;
    arg0[0][1] = temp_f0;
    arg0[1][0] = -temp_f0;
    arg0[1][1] = sp28;
}

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_802B5B14(Vec3f arg0, Vec3s arg1) {
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f4;
    f32 temp_f6;

    sp38 = sins((u16) arg1->unk0);
    temp_f20 = coss((u16) arg1->unk0);
    sp30 = sins(arg1->unk2);
    sp2C = coss(arg1->unk2);
    sp28 = sins(arg1->unk4);
    temp_f0 = coss(arg1->unk4);
    temp_f4 = arg0->unk0;
    temp_f12 = sp38 * sp30;
    sp3C = temp_f4;
    sp40 = arg0->unk4;
    temp_f6 = (sp2C * temp_f0) + (temp_f12 * sp28);
    sp48 = temp_f6;
    sp58 = (-sp2C * sp28) + (temp_f12 * temp_f0);
    sp68 = temp_f20 * sp30;
    sp4C = temp_f20 * sp28;
    temp_f18 = sp38 * sp2C;
    sp5C = temp_f20 * temp_f0;
    sp6C = -sp38;
    temp_f10 = (-sp30 * temp_f0) + (temp_f18 * sp28);
    sp50 = temp_f10;
    sp60 = (sp30 * sp28) + (temp_f18 * temp_f0);
    sp70 = temp_f20 * sp2C;
    arg0->unk0 = (temp_f10 * sp40) + ((temp_f4 * temp_f6) + (sp40 * sp4C));
    arg0->unk4 = (f32) ((sp60 * sp40) + ((temp_f4 * sp58) + (sp40 * sp5C)));
    arg0->unk8 = (f32) ((sp70 * sp40) + ((sp3C * sp68) + (sp40 * sp6C)));
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B5B14.s")
#endif

void func_802B5CAC(s16 arg0, s16 arg1, Vec3f arg2) {
    f32 sp2C = sins(arg1);
    f32 sp28 = coss(arg1);
    f32 sp24 = sins(arg0);
    f32 temp_f10 = coss(arg0);

    arg2[0] = sp28 * sp24;
    arg2[1] = sp2C;
    arg2[2] = -(sp28 * temp_f10);
}

void func_802B5D30(s16 arg0, s16 arg1, s32 arg2) {
    func_802B5D64(0x9000000, arg0, arg1, arg2);
}

#ifdef MIPS_TO_C
//generated by m2c commit 0927f17aac197848d4ebdf0c6bbad74b01f0851c
void func_802B5D64(u32 arg0, s16 arg1, s32 arg2, s32 arg3) {
    f32 sp48;
    f32 sp44;
    f32 sp40;
    s8 sp2E;
    s8 sp2D;
    s8 sp2C;
    s32 sp20;
    f32 temp_f10;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 var_v0;
    void *var_s0;

    temp_a0 = arg2 & 0xFFFF;
    var_s0 = gSegmentTable[arg0 >> 0x18] + (arg0 & 0xFFFFFF) + 0x80000000;
    sp20 = temp_a0;
    sp48 = sins((u16) temp_a0);
    sp44 = coss((u16) temp_a0);
    sp20 = (s32) (u16) arg1;
    sp40 = sins((u16) arg1);
    var_v0 = 0;
    temp_a0_2 = arg3 & 3;
    temp_f10 = sp44 * coss((u16) arg1) * -120.0f;
    sp2C = (s8) (s32) (sp44 * sp40 * 120.0f);
    sp2D = (s8) (s32) (120.0f * sp48);
    sp2E = (s8) (s32) temp_f10;
    if (arg3 > 0) {
        if (temp_a0_2 != 0) {
            do {
                var_v0 += 1;
                var_s0 += 0x18;
                var_s0->unk-8 = sp2C;
                var_s0->unk-7 = sp2D;
                var_s0->unk-6 = sp2E;
            } while (temp_a0_2 != var_v0);
            if (var_v0 != arg3) {
                goto loop_4;
            }
        } else {
            do {
loop_4:
                var_v0 += 4;
                var_s0 += 0x60;
                var_s0->unk-50 = sp2C;
                var_s0->unk-4F = sp2D;
                var_s0->unk-4E = sp2E;
                var_s0->unk-38 = sp2C;
                var_s0->unk-37 = sp2D;
                var_s0->unk-36 = sp2E;
                var_s0->unk-20 = sp2C;
                var_s0->unk-1F = sp2D;
                var_s0->unk-1E = sp2E;
                var_s0->unk-8 = sp2C;
                var_s0->unk-7 = sp2D;
                var_s0->unk-6 = sp2E;
            } while (var_v0 != arg3);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B5D64.s")
#endif

void func_802B5F00(Mat4 arg0, f32 arg1) {
    arg0[0][0] *= arg1;
    arg0[1][0] *= arg1;
    arg0[2][0] *= arg1;
    arg0[0][1] *= arg1;
    arg0[1][1] *= arg1;
    arg0[2][1] *= arg1;
    arg0[0][2] *= arg1;
    arg0[1][2] *= arg1;
    arg0[2][2] *= arg1;
}

void func_802B5F74(Mat4 arg0, Vec3f arg1, Vec3s arg2) {
    f32 sine1;
    f32 cosine1;
    f32 sine2;
    f32 cosine2;
    f32 sine3;
    f32 cosine3;

    sine1   = sins(arg2[0]);
    cosine1 = coss(arg2[0]);
    sine2   = sins(arg2[1]);
    cosine2 = coss(arg2[1]);
    sine3   = sins(arg2[2]);
    cosine3 = coss(arg2[2]);
    arg0[0][0] = (cosine2 * cosine3) + ((sine1 * sine2) * sine3);
    arg0[1][0] = (-cosine2 * sine3) + ((sine1 * sine2) * cosine3);
    arg0[2][0] = cosine1 * sine2;
    arg0[3][0] = arg1[0];
    arg0[0][1] = cosine1 * sine3;
    arg0[1][1] = cosine1 * cosine3;
    arg0[2][1] = -sine1;
    arg0[3][1] = arg1[1];
    arg0[0][2] = (-sine2 * cosine3) + ((sine1 * cosine2) * sine3);
    arg0[1][2] = (sine2 * sine3) + ((sine1 * cosine2) * cosine3);
    arg0[2][2] = cosine1 * cosine2;
    arg0[3][2] = arg1[2];
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][3] = 1.0f;
}

UNUSED void func_802B60B4(Mat4 arg0, Vec3s arg1, Vec3s arg2) {
    f32 sine1;
    f32 cosine1;
    f32 sine2;
    f32 cosine2;
    f32 sine3;
    f32 cosine3;

    sine1   = sins(arg2[0]);
    cosine1 = coss(arg2[0]);
    sine2   = sins(arg2[1]);
    cosine2 = coss(arg2[1]);
    sine3   = sins(arg2[2]);
    cosine3 = coss(arg2[2]);
    arg0[0][0] = (cosine2 * cosine3) + ((sine1 * sine2) * sine3);
    arg0[0][1] = (-cosine2 * sine3) + ((sine1 * sine2) * cosine3);
    arg0[0][2] = cosine1 * sine2;
    arg0[0][3] = (f32) arg1[0];
    arg0[1][0] = (f32) (cosine1 * sine3);
    arg0[1][1] = (f32) (cosine1 * cosine3);
    arg0[1][2] = (f32) -sine1;
    arg0[1][3] = (f32) arg1[1];
    arg0[2][0] = (f32) ((-sine2 * cosine3) + ((sine1 * cosine2) * sine3));
    arg0[2][1] = (f32) ((sine2 * sine3) + ((sine1 * cosine2) * cosine3));
    arg0[2][2] = (f32) (cosine1 * cosine2);
    arg0[2][3] = (f32) arg1[2];
    arg0[3][0] = 0.0f;
    arg0[3][1] = 0.0f;
    arg0[3][2] = 0.0f;
    arg0[3][3] = 1.0f;
}

UNUSED void func_802B6214(Mat4 arg0, Vec3s arg1, Vec3s arg2) {
    f32 sine1;
    f32 cosine1;
    f32 sine2;
    f32 cosine2;
    f32 sine3;
    f32 cosine3;

    sine1   = sins(arg2[0]);
    cosine1 = coss(arg2[0]);
    sine2   = sins(arg2[1]);
    cosine2 = coss(arg2[1]);
    sine3   = sins(arg2[2]);
    cosine3 = coss(arg2[2]);
    arg0[0][0] = (cosine2 * cosine3) + ((sine1 * sine2) * sine3);
    arg0[1][0] = (-cosine2 * sine3) + ((sine1 * sine2) * cosine3);
    arg0[2][0] = cosine1 * sine2;
    arg0[3][0] = arg1[0];
    arg0[0][1] = cosine1 * sine3;
    arg0[1][1] = cosine1 * cosine3;
    arg0[2][1] = -sine1;
    arg0[3][1] = arg1[1];
    arg0[0][2] = (-sine2 * cosine3) + ((sine1 * cosine2) * sine3);
    arg0[1][2] = (sine2 * sine3) + ((sine1 * cosine2) * cosine3);
    arg0[2][2] = cosine1 * cosine2;
    arg0[3][2] = arg1[2];
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][3] = 1.0f;
}

UNUSED void func_802B6374(Vec3f arg0) {
    f32 temp_f0;
    temp_f0 = sqrtf((arg0[0] * arg0[0]) + (arg0[1] * arg0[1]) + (arg0[2] * arg0[2]));
    arg0[0] /= temp_f0;
    arg0[1] /= temp_f0;
    arg0[2] /= temp_f0;
}

void func_802B63B8(Vec3f arg0, Mat3 arg1) {
    f32 temp_f12;
    f32 temp_f16;
    f32 temp_f14;

    temp_f12 = (arg1[0][0] * arg0[0]) + (arg1[0][1] * arg0[1]) + (arg1[0][2] * arg0[2]);
    temp_f16 = (arg1[1][0] * arg0[0]) + (arg1[1][1] * arg0[1]) + (arg1[1][2] * arg0[2]);
    temp_f14 = (arg1[2][0] * arg0[0]) + (arg1[2][1] * arg0[1]) + (arg1[2][2] * arg0[2]);

    arg0[0] = temp_f12;
    arg0[1] = temp_f16;
    arg0[2] = temp_f14;
}

void func_802B6434(Vec3f arg0, Mat4 arg1) {

    f32 temp_f2;
    f32 temp_f16;
    f32 temp_f6;

    temp_f2 = ((arg1[0][0] * arg0[0]) + (arg1[0][1] * arg0[1]) + (arg1[0][2] * arg0[2]));
    temp_f16 = ((arg1[1][0] * arg0[0]) + (arg1[1][1] * arg0[1]) + (arg1[1][2] * arg0[2]));
    temp_f6 = (arg1[2][0] * arg0[0]) + (arg1[2][1] * arg0[1]) + (arg1[2][2] * arg0[2]);


    arg0[0] = temp_f2;
    arg0[1] = temp_f16;
    arg0[2] = temp_f6;
}

UNUSED void func_802B64B0(UNUSED s32 arg0, UNUSED s32 arg1, UNUSED s32 arg2, UNUSED s32 arg3) {

}

void func_802B64C4(Vec3f arg0, s16 arg1) {
    f32 sp2C = sins(arg1);
    f32 temp_f0 = coss(arg1);

    f32 temp1 = arg0[0];
    f32 temp2 = arg0[1];
    f32 temp3 = arg0[2];

    arg0[0] = temp_f0 * temp1 - (sp2C * temp3);
    arg0[1] = temp2;
    arg0[2] = sp2C * temp1 + (temp_f0 * temp3);
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_802B6A84(f32, ?, f32 *, s16, f32, ?, f32);   /* extern */
static f64 D_802B9FB8 = 3.141592653589793;
static f64 D_802B9FC0 = 360.0;

void func_802B6540(f32 (*arg0)[4], f32 arg1, f32 arg2, f32 arg3, u16 arg4) {
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp78;
    f32 sp68;
    f32 sp40;
    s32 sp38;
    f32 *var_a3;
    f32 *var_a3_2;
    f32 *var_v1;
    f32 *var_v1_2;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_v0;
    s32 var_v0_2;

    sp38 = (s32) arg4;
    sp40 = sins(arg4);
    temp_f0 = coss(arg4);
    sp8C = temp_f0;
    spAC = temp_f0;
    sp94 = -sp40;
    sp9C = 1.0f;
    spA8 = 0.0f;
    spA0 = 0.0f;
    spA4 = sp40;
    sp98 = 0.0f;
    sp90 = 0.0f;
    if (arg2 == 1.0f) {
        var_a0 = 0;
        var_a3 = &sp68;
        do {
            var_v0 = 0;
            var_v1 = var_a3;
loop_3:
            if ((var_a0 * 4) == var_v0) {
                *var_v1 = 1.0f;
            } else {
                *var_v1 = 0.0f;
            }
            var_v0 += 4;
            var_v1 += 4;
            if (var_v0 != 0xC) {
                goto loop_3;
            }
            var_a0 += 1;
            var_a3 += 0xC;
        } while (var_a0 != 3);
    } else {
        var_a0_2 = 0;
        var_a3_2 = &sp68;
        if (arg2 == -1.0f) {
            do {
                var_v0_2 = 0;
                var_v1_2 = var_a3_2;
loop_12:
                if ((var_a0_2 * 4) == var_v0_2) {
                    *var_v1_2 = 1.0f;
                } else {
                    *var_v1_2 = 0.0f;
                }
                var_v0_2 += 4;
                var_v1_2 += 4;
                if (var_v0_2 != 0xC) {
                    goto loop_12;
                }
                var_a0_2 += 1;
                var_a3_2 += 0xC;
            } while (var_a0_2 != 3);
            sp78 = -1.0f;
        } else {
            temp_f0_2 = sqrtf((arg1 * arg1) + (arg3 * arg3));
            func_802B6A84(arg1, 0, &sp68, (s16) (s32) (f32) -(D_802B9FC0 - ((f64) (func_802B7CE8(arg2) * 180.0f) / D_802B9FB8)), -arg3 / temp_f0_2, 0, arg1 / temp_f0_2);
        }
    }
    arg0[0][0] = (sp80 * sp94) + ((sp8C * sp68) + (sp90 * sp74));
    arg0[0][3] = (sp80 * spA0) + ((sp98 * sp68) + (sp9C * sp74));
    arg0->unk18 = (f32) ((sp80 * spAC) + ((spA4 * sp68) + (spA8 * sp74)));
    arg0[0][1] = (sp84 * sp94) + ((sp8C * sp6C) + (sp90 * sp78));
    arg0->unk10 = (f32) ((sp84 * spA0) + ((sp98 * sp6C) + (sp9C * sp78)));
    arg0->unk1C = (f32) ((sp84 * spAC) + ((spA4 * sp6C) + (spA8 * sp78)));
    arg0[0][2] = (sp88 * sp94) + ((sp8C * sp70) + (sp90 * sp7C));
    arg0->unk14 = (f32) ((sp88 * spA0) + ((sp98 * sp70) + (sp9C * sp7C)));
    arg0->unk20 = (f32) ((sp88 * spAC) + ((spA4 * sp70) + (spA8 * sp7C)));
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B6540.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_802B6A84(f32, f32, f32 (*)[4], s16, f32, ?, f32); /* extern */
static f64 D_802B9FC8 = 3.141592653589793;
static f64 D_802B9FD0 = 360.0;

void func_802B68F8(f32 (*arg0)[4], f32 arg1, f32 arg2, f32 arg3) {
    f32 (*var_a3)[4];
    f32 (*var_a3_2)[4];
    f32 (*var_v1)[4];
    f32 (*var_v1_2)[4];
    f32 temp_f0;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_v0;
    s32 var_v0_2;

    if (arg2 == 1.0f) {
        var_a0 = 0;
        var_a3 = arg0;
        do {
            var_v0 = 0;
            var_v1 = var_a3;
loop_3:
            if ((var_a0 * 4) == var_v0) {
                var_v1[0][0] = 1.0f;
            } else {
                var_v1[0][0] = 0.0f;
            }
            var_v0 += 4;
            var_v1 += 4;
            if (var_v0 != 0xC) {
                goto loop_3;
            }
            var_a0 += 1;
            var_a3 += 0xC;
        } while (var_a0 != 3);
        return;
    }
    var_a0_2 = 0;
    var_a3_2 = arg0;
    if (arg2 == -1.0f) {
        do {
            var_v0_2 = 0;
            var_v1_2 = var_a3_2;
loop_12:
            if ((var_a0_2 * 4) == var_v0_2) {
                var_v1_2[0][0] = 1.0f;
            } else {
                var_v1_2[0][0] = 0.0f;
            }
            var_v0_2 += 4;
            var_v1_2 += 4;
            if (var_v0_2 != 0xC) {
                goto loop_12;
            }
            var_a0_2 += 1;
            var_a3_2 += 0xC;
        } while (var_a0_2 != 3);
        arg0->unk10 = -1.0f;
        return;
    }
    temp_f0 = sqrtf((arg1 * arg1) + (arg3 * arg3));
    func_802B6A84(arg3, arg1, arg0, (s16) (s32) (f32) -(D_802B9FD0 - ((f64) (func_802B7CE8(arg2) * 180.0f) / D_802B9FC8)), -arg3 / temp_f0, 0, arg1 / temp_f0);
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B68F8.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 8267401fa4ef7a38942dcca43353cc1bcc6efabc
void func_802B6A84(Mat4 arg0, s16 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 sp54;
    s32 sp34;                                       /* compiler-managed */
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f6;
    s32 temp_a0;

    temp_a0 = arg1 & 0xFFFF;
    sp34 = temp_a0;
    sp54 = sins((u16) temp_a0);
    temp_f0 = coss((u16) temp_a0);
    temp_f12 = arg2 * arg2;
    temp_f6 = 1.0f - temp_f0;
    arg0[0][0] = ((1.0f - temp_f12) * temp_f0) + temp_f12;
    sp34 = temp_f6;
    temp_f2 = arg3 * arg4 * temp_f6;
    temp_f14 = arg2 * sp54;
    temp_f16 = arg3 * arg3;
    arg0->unk1C = (f32) (temp_f2 - temp_f14);
    arg0->unk14 = (f32) (temp_f14 + temp_f2);
    arg0->unk10 = (f32) (((1.0f - temp_f16) * temp_f0) + temp_f16);
    sp2C = arg3 * sp54;
    temp_f10 = arg4 * arg2 * sp34;
    sp30 = temp_f10;
    arg0->unk18 = (f32) (sp2C + temp_f10);
    temp_f12_2 = arg4 * arg4;
    arg0[0][2] = sp30 - sp2C;
    arg0->unk20 = (f32) (((1.0f - temp_f12_2) * temp_f0) + temp_f12_2);
    temp_f2_2 = arg2 * arg3 * sp34;
    temp_f14_2 = arg4 * sp54;
    arg0[0][3] = temp_f2_2 - temp_f14_2;
    arg0[0][1] = temp_f14_2 + temp_f2_2;
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B6A84.s")
#endif

void func_802B6BC0(Mat4 arg0, s16 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 sine;
    f32 cosine;
    f32 temp_f0;
    f32 temp_f12;

    sine = sins(arg1);
    cosine = coss(arg1);
    temp_f0 = sqrtf((arg2 * arg2) + (arg4 * arg4));
    if (temp_f0 != 0.0f) {
        temp_f12 = 1.0f / temp_f0;
        arg0[0][0] = ((-arg4 * cosine) - ((sine * arg3) * arg2)) * temp_f12;
        arg0[0][3] = ((arg4 * sine) - ((cosine * arg3) * arg2)) * temp_f12;
        arg0[1][2] = -arg2;
        arg0[0][1] = sine * temp_f0;
        arg0[1][0] = cosine * temp_f0;
        arg0[1][3] = -arg3;
        arg0[0][2] = ((cosine * arg2) - ((sine * arg3) * arg4)) * temp_f12;
        arg0[1][1] = ((-sine * arg2) - ((cosine * arg3) * arg4)) * temp_f12;
        arg0[2][0] = -arg4;
        arg0[0][3] = 0.0f;
        arg0[1][2] = 0.0f;
        arg0[2][1] = 0.0f;
    } else {
        arg0[0][1] = 0.0f;
        arg0[1][3] = 0.0f;
        arg0[0][2] = 0.0f;
        arg0[1][1] = 0.0f;
        arg0[0][3] = 0.0f;
        arg0[1][2] = 0.0f;
        arg0[2][1] = 0.0f;
        arg0[0][0] = 1.0f;
        arg0[1][0] = 1.0f;
        arg0[2][0] = 1.0f;
    }
}

void func_802B6D58(Mat4 arg0, Vec3f arg1, Vec3f arg2) {
    f32 sine1;
    f32 cosine1;
    f32 sine2;
    f32 cosine2;
    f32 sine3;
    f32 cosine3;

    sine1 = sins(arg2[0]);
    cosine1 = coss(arg2[0]);
    sine2 = sins(arg2[1]);
    cosine2 = coss(arg2[1]);
    sine3 = sins(arg2[2]);
    cosine3 = coss(arg2[2]);
    arg0[0][0] = (cosine2 * cosine3) + ((sine1 * sine2) * sine3);
    arg0[1][0] = (-cosine2 * sine3) + (sine1 * sine2) * cosine3;
    arg0[2][0] = cosine1 * sine2;
    arg0[3][0] = arg1[0];
    arg0[0][1] = cosine1 * sine3;
    arg0[1][1] = cosine1 * cosine3;
    arg0[2][1] = -sine1;
    arg0[3][1] = arg1[1];
    arg0[0][2] = (-sine2 * cosine3) + ((sine1 * cosine2) * sine3);
    arg0[1][2] = (sine2 * sine3) + ((sine1 * cosine2) * cosine3);
    arg0[2][2] = cosine1 * cosine2;
    arg0[3][2] = arg1[2];
    arg0[0][3] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][3] = 1.0f;
}

void func_802B71CC(Mat4 arg0, Mat4 arg1, Mat4 arg2) {
    Mat4 product;
    product[0][0] = (arg1[0][0] * arg2[0][0]) + (arg1[0][1] * arg2[1][0]) + (arg1[0][2] * arg2[2][0]) + (arg1[0][3] * arg2[3][0]);
    product[0][1] = (arg1[0][0] * arg2[0][1]) + (arg1[0][1] * arg2[1][1]) + (arg1[0][2] * arg2[2][1]) + (arg1[0][3] * arg2[3][1]);
    product[0][2] = (arg1[0][0] * arg2[0][2]) + (arg1[0][1] * arg2[1][2]) + (arg1[0][2] * arg2[2][2]) + (arg1[0][3] * arg2[3][2]);
    product[0][3] = (arg1[0][0] * arg2[0][3]) + (arg1[0][1] * arg2[1][3]) + (arg1[0][2] * arg2[2][3]) + (arg1[0][3] * arg2[3][3]);
    product[1][0] = (arg1[1][0] * arg2[0][0]) + (arg1[1][1] * arg2[1][0]) + (arg1[1][2] * arg2[2][0]) + (arg1[1][3] * arg2[3][0]);
    product[1][1] = (arg1[1][0] * arg2[0][1]) + (arg1[1][1] * arg2[1][1]) + (arg1[1][2] * arg2[2][1]) + (arg1[1][3] * arg2[3][1]);
    product[1][2] = (arg1[1][0] * arg2[0][2]) + (arg1[1][1] * arg2[1][2]) + (arg1[1][2] * arg2[2][2]) + (arg1[1][3] * arg2[3][2]);
    product[1][3] = (arg1[1][0] * arg2[0][3]) + (arg1[1][1] * arg2[1][3]) + (arg1[1][2] * arg2[2][3]) + (arg1[1][3] * arg2[3][3]);
    product[2][0] = (arg1[2][0] * arg2[0][0]) + (arg1[2][1] * arg2[1][0]) + (arg1[2][2] * arg2[2][0]) + (arg1[2][3] * arg2[3][0]);
    product[2][1] = (arg1[2][0] * arg2[0][1]) + (arg1[2][1] * arg2[1][1]) + (arg1[2][2] * arg2[2][1]) + (arg1[2][3] * arg2[3][1]);
    product[2][2] = (arg1[2][0] * arg2[0][2]) + (arg1[2][1] * arg2[1][2]) + (arg1[2][2] * arg2[2][2]) + (arg1[2][3] * arg2[3][2]);
    product[2][3] = (arg1[2][0] * arg2[0][3]) + (arg1[2][1] * arg2[1][3]) + (arg1[2][2] * arg2[2][3]) + (arg1[2][3] * arg2[3][3]);
    product[3][0] = (arg1[3][0] * arg2[0][0]) + (arg1[3][1] * arg2[1][0]) + (arg1[3][2] * arg2[2][0]) + (arg1[3][3] * arg2[3][0]);
    product[3][1] = (arg1[3][0] * arg2[0][1]) + (arg1[3][1] * arg2[1][1]) + (arg1[3][2] * arg2[2][1]) + (arg1[3][3] * arg2[3][1]);
    product[3][2] = (arg1[3][0] * arg2[0][2]) + (arg1[3][1] * arg2[1][2]) + (arg1[3][2] * arg2[2][2]) + (arg1[3][3] * arg2[3][2]);
    product[3][3] = (arg1[3][0] * arg2[0][3]) + (arg1[3][1] * arg2[1][3]) + (arg1[3][2] * arg2[2][3]) + (arg1[3][3] * arg2[3][3]);
    func_802B5398((s32 *)arg0, (s32 *)product, 0x10);
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
void func_802B75F8(Mtx *arg0, Mat4 arg1) {
    s32 sp14;
    Mtx *var_v0;
    f32 (*temp_a2)[4];
    f32 (*var_a2)[4];
    f32 var_f18;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *var_v1;
    s32 var_a3;

    var_v0 = arg0;
    var_v1 = arg0->m[2];
    var_a2 = arg1;
    var_a3 = 4;
    var_f18 = var_a2[0][0] * 65536.0f;
    if (4 != 0x10) {
        do {
            var_a3 += 4;
            var_a2 += 0x10;
            var_v0 += 8;
            var_v1 += 8;
            sp14 = (s32) var_f18;
            var_v0->unk-8 = (s16) sp14.unk0;
            var_v1->unk-8 = (s16) sp14.unk2;
            sp14 = (s32) (var_a2->unk-C * 65536.0f);
            var_v0->unk-6 = (s16) sp14.unk0;
            var_v1->unk-6 = (s16) sp14.unk2;
            sp14 = (s32) (var_a2->unk-8 * 65536.0f);
            var_v0->unk-4 = (s16) sp14.unk0;
            var_v1->unk-4 = (s16) sp14.unk2;
            sp14 = (s32) (var_a2->unk-4 * 65536.0f);
            var_v0->unk-2 = (s16) sp14.unk0;
            var_v1->unk-2 = (s16) sp14.unk2;
            var_f18 = var_a2[0][0] * 65536.0f;
        } while (var_a3 != 0x10);
    }
    temp_a2 = var_a2 + 0x10;
    temp_v0 = &var_v0->m[0][2];
    temp_v1 = var_v1 + 8;
    sp14 = (s32) var_f18;
    temp_v0->unk-8 = (s16) sp14.unk0;
    temp_v1->unk-8 = (s16) sp14.unk2;
    sp14 = (s32) (temp_a2->unk-C * 65536.0f);
    temp_v0->unk-6 = (s16) sp14.unk0;
    temp_v1->unk-6 = (s16) sp14.unk2;
    sp14 = (s32) (temp_a2->unk-8 * 65536.0f);
    temp_v0->unk-4 = (s16) sp14.unk0;
    temp_v1->unk-4 = (s16) sp14.unk2;
    sp14 = (s32) (temp_a2->unk-4 * 65536.0f);
    temp_v0->unk-2 = (s16) sp14.unk0;
    temp_v1->unk-2 = (s16) sp14.unk2;
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B75F8.s")
#endif

/**
 * Comment from sm64 unverified. mk64 verison is modified
 * 
 * Helper function for atan2s. Does a look up of the arctangent of y/x assuming
 * the resulting angle is in range [0, 0x2000] (1/8 of a circle).
 */

u16 atan2_lookup(f32 y, f32 x) {
    u16 ret;

    if (x == 0) {
        ret = gArctanTable[0];
    } else {
        if (1000000.0f < y / x) {
            if (y > 0.0f) {
                ret = 0x4000;
            } else {
                ret = 0xC000;
            }
        } else {
            ret = gArctanTable[(s32)(y / x * 1024 + 0.5f)];
        }
    }
    return ret;
}

/**
 * Compute the angle from (0, 0) to (x, y) as a u16. Given that terrain is in
 * the xz-plane, this is commonly called with (z, x) to get a yaw angle.
 * sm64 but x, y swapped and returns u16.
 */
u16 atan2s(f32 x, f32 y) {
    u16 ret;
    if (x >= 0) {
        if (y >= 0) {
            if (y >= x) {
                ret = atan2_lookup(x, y);
            } else {
                ret = 0x4000 - atan2_lookup(y, x);
            }
        } else {
            y = -y;
            if (y < x) {
                ret = 0x4000 + atan2_lookup(y, x);
            } else {
                ret = 0x8000 - atan2_lookup(x, y);
            }
        }
    } else {
        x = -x;
        if (y < 0) {
            y = -y;
            if (y >= x) {
                ret = 0x8000 + atan2_lookup(x, y);
            } else {
                ret = 0xC000 - atan2_lookup(y, x);
            }
        } else {
            if (y < x) {
                ret = 0xC000 + atan2_lookup(y, x);
            } else {
                ret = -atan2_lookup(x, y);
            }
        }
    }
    return ret;
}

f32 func_802B79B8(f32 arg0, f32 arg1) {
    return atan2s(arg0, arg1);
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
static f32 D_802B9FDC = -0.01600503f;
static f32 D_802B9FE0 = 0.00283406f;
static f32 D_802B9FE4 = -0.07495445f;
static f32 D_802B9FE8 = 0.04258761f;
static f32 D_802B9FEC = -0.14202571f;
static f32 D_802B9FF0 = 0.10636754f;
static f32 D_802B9FF4 = -0.33333066f;
static f32 D_802B9FF8 = 0.19992484f;
static f64 D_802BA000 = 1.5707963267948966;
static f64 D_802BA008 = 1.5707963267948966;
static f32 D_802BA010 = 3.1415927f;

f32 func_802B79F0(f32 arg0, f32 arg1) {
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    f32 var_f16;
    f32 var_f2;
    s32 var_v0;

    var_f16 = arg0 / arg1;
    var_v0 = 0;
    if (fabs((f64) arg1) < fabs((f64) arg0)) {
        var_v0 = 1;
    }
    if (var_v0 != 0) {
        var_f16 = arg1 / arg0;
    }
    temp_f0 = var_f16 * var_f16;
    temp_f2 = temp_f0 * temp_f0;
    temp_f16 = var_f16 + (((((temp_f2 * (D_802B9FDC + (temp_f0 * D_802B9FE0))) + D_802B9FE4 + (temp_f0 * D_802B9FE8)) * (temp_f2 * temp_f2)) + ((D_802B9FEC + (temp_f0 * D_802B9FF0)) * temp_f2) + D_802B9FF4 + (temp_f0 * D_802B9FF8)) * (var_f16 * temp_f0));
    if (var_v0 != 0) {
        if (arg0 < 0.0f) {
            return (f32) (-D_802BA000 - (f64) temp_f16);
        }
        return (f32) (D_802BA008 - (f64) temp_f16);
    }
    if (arg1 >= 0.0f) {
        return temp_f16;
    }
    temp_f14 = D_802BA010;
    var_f2 = temp_f16 + temp_f14;
    if (arg0 < 0.0f) {
        var_f2 = temp_f16 - temp_f14;
    }
    return var_f2;
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B79F0.s")
#endif

UNUSED u16 func_802B7B50(f32 arg0, f32 arg1) {
    return ((func_802B79B8(arg0, arg1) * 32768.0f) / 3.141592653589793);
}

UNUSED void func_802B7C18(f32 arg0) {
    func_802B79B8(arg0, 1.0f);
}

s16 func_802B7C40(f32 arg0) {
    return atan2s(arg0, 1.0f);
}

UNUSED void func_802B7C6C(f32 arg0) {
    func_802B79B8(arg0, sqrtf(1.0 - (arg0 * arg0)));
}

s16 func_802B7CA8(f32 arg0) {
    return atan2s(arg0, sqrtf(1.0 - (arg0 * arg0)));
}

f32 func_802B7CE8(f32 arg0) {
    return func_802B79B8(sqrtf(1.0 - (arg0 * arg0)), arg0);
}

UNUSED s16 func_802B7D28(f32 arg0) {
    return func_802B79B8(sqrtf(1.0 - (f64)(arg0 * arg0)), arg0) * 32768.0f / 3.141592653589793;
}

u16 random_u16(void) {
    u16 temp1, temp2;

    if (gRandomSeed16 == 22026) {
        gRandomSeed16 = 0;
    }

    temp1 = (gRandomSeed16 & 0x00FF) << 8;
    temp1 = temp1 ^ gRandomSeed16;

    gRandomSeed16 = ((temp1 & 0x00FF) << 8) + ((temp1 & 0xFF00) >> 8);

    temp1 = ((temp1 & 0x00FF) << 1) ^ gRandomSeed16;
    temp2 = (temp1 >> 1) ^ 0xFF80;

    if ((temp1 & 1) == 0) {
        if (temp2 == 43605) {
            gRandomSeed16 = 0;
        } else {
            gRandomSeed16 = temp2 ^ 0x1FF4;
        }
    } else {
        gRandomSeed16 = temp2 ^ 0x8180;
    }

    return gRandomSeed16;
}

u16 random_int(u16 arg0) {
    return arg0 * (( (f32) random_u16() )  / 65535.0);
}

s16 func_802B7F34(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    return atan2s(arg2 - arg0, arg3 - arg1);
}

void func_802B7F7C(Vec3f arg0, Vec3f arg1, Vec3s arg2) {
    f32 temp_f14 = arg0[0];
    f32 sp28 = arg0[1];
    f32 temp_f12 = arg0[2];

    f32 temp_f2 = arg1[0];
    f32 sp1C = arg1[1];
    f32 temp_f0 = arg1[2];

    arg2[1] = func_802B7F34(temp_f12, temp_f14, temp_f0, temp_f2);
    arg2[0] = func_802B7F34(sp28, temp_f12, sp1C, temp_f0);
    arg2[2] = func_802B7F34(temp_f14, sp28, temp_f2, sp1C);
}

f32 sins(u16 arg0) {
    return gSineTable[arg0 >> 4];
}

f32 coss(u16 arg0) {
    return gCosineTable[arg0 >> 4];
}

s32 func_802B8058(u16 arg0, u16 arg1, u16 arg2) {
    if (arg1 < arg0) {
        if (arg1 >= arg2) {
            return 0;
        }
        if (arg2 >= arg0) {
            return 0;
        }
    } else {
        if ((arg1 >= arg2) && (arg2 >= arg0)) {
            return 0;
        }
    }
    return 1;
}

#ifdef MIPS_TO_C
//generated by m2c commit 3b40ab93768f52ac241c5ae84ef58ef6bc4cb1de
f32 func_802B80D0(Vec3f arg0, Vec3f arg1, u16 arg2, f32 arg3, f32 arg4, f32 arg5) {
    u16 sp5E;
    s16 sp5A;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f20;
    f32 temp_f2;
    f32 temp_f2_2;
    s16 temp_v0;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_v1;
    s32 temp_v1_2;
    u16 temp_a2;

    temp_f0 = arg1->unk0 - arg0->unk0;
    temp_f0_2 = temp_f0 * temp_f0;
    if (arg5 < temp_f0_2) {
        return -1.0f;
    }
    temp_f2 = arg1->unk8 - arg0->unk8;
    temp_f2_2 = temp_f2 * temp_f2;
    if (arg5 < temp_f2_2) {
        return -1.0f;
    }
    temp_f20 = temp_f0_2 + temp_f2_2;
    if (temp_f20 < arg3) {
        return temp_f20;
    }
    if (arg5 < temp_f20) {
        return -1.0f;
    }
    arg2 = arg2;
    temp_a2 = func_802B5224(arg0, arg1) & 0xFFFF;
    if (arg3 == 0.0f) {
        temp_v1 = ((u32) arg4 * 0xB6) & 0xFFFF;
        if (func_802B8058((arg2 + temp_v1) & 0xFFFF, (arg2 - temp_v1) & 0xFFFF, temp_a2) == 1) {
            return temp_f20;
        }
        return -1.0f;
    }
    temp_v1_2 = ((u32) arg4 * 0xB6) & 0xFFFF;
    temp_t7 = (arg2 - temp_v1_2) & 0xFFFF;
    temp_t6 = (arg2 + temp_v1_2) & 0xFFFF;
    sp24 = temp_t6;
    sp20 = temp_t7;
    sp5E = temp_a2;
    if (func_802B8058((u16) temp_t6, (u16) temp_t7, temp_a2) == 1) {
        return temp_f20;
    }
    temp_v0 = func_802B7CA8(arg3 / temp_f20);
    sp5A = temp_v0;
    sp28 = (s32) sp5E;
    if (func_802B8058(unksp26, unksp22, (sp5E + temp_v0) & 0xFFFF) == 1) {
        return temp_f20;
    }
    if (func_802B8058(unksp26, unksp22, (sp5E - (u16) sp5A) & 0xFFFF) == 1) {
        return temp_f20;
    }
    return -1.0f;
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B80D0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
//This function did not have a glabel in the original assembly, as such it may
//be unused/unnamed
f32 sins(s32);                               /* extern */
f32 coss(s32);                               /* extern */
extern uintptr_t gSegmentTable;

void func_802B8414(u32 arg0, void *arg1, u16 arg2, s32 arg3, s32 arg4) {
    f32 sp48;
    f32 sp44;
    f32 sp40;
    s8 sp3E;
    s8 sp3D;
    s8 sp3C;
    s32 sp20;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *phi_s0;
    s32 phi_v0;
    void *phi_s0_2;
    s32 phi_v0_2;

    temp_a0 = arg3 & 0xFFFF;
    temp_s0 = *(&gSegmentTable + ((arg0 >> 0x18) * 4)) + (arg0 & 0xFFFFFF) + 0x80000000;
    sp20 = temp_a0;
    sins(temp_a0);
    coss(temp_a0);
    sp20 = arg2;
    sins(arg2);
    coss(arg2);
    sp40 = 0.0f;
    sp44 = 0.0f;
    sp48 = 1.0f;
    temp_a1 = arg4 & 3;
    sp3C = ((arg1->unk20 * 1.0f) + ((sp40 * arg1->unk0) + (sp44 * arg1->unk10))) * 127.0f;
    sp3D = ((arg1->unk24 * 1.0f) + ((sp40 * arg1->unk4) + (sp44 * arg1->unk14))) * 127.0f;
    sp3E = ((arg1->unk28 * 1.0f) + ((sp40 * arg1->unk8) + (sp44 * arg1->unk18))) * 127.0f;
    phi_v0 = 0;
    phi_v0_2 = 0;
    if (arg4 > 0) {
        phi_s0 = temp_s0;
        phi_s0_2 = temp_s0;
        if (temp_a1 != 0) {
            do {
                temp_v0 = phi_v0 + 1;
                temp_s0_2 = phi_s0 + 0x18;
                temp_s0_2->unk-8 = sp3C;
                temp_s0_2->unk-7 = sp3D;
                temp_s0_2->unk-6 = sp3E;
                phi_s0 = temp_s0_2;
                phi_v0 = temp_v0;
                phi_s0_2 = temp_s0_2;
                phi_v0_2 = temp_v0;
            } while (temp_a1 != temp_v0);
            if (temp_v0 != arg4) {
                goto loop_4;
            }
        } else {
            do {
loop_4:
                temp_v0_2 = phi_v0_2 + 4;
                temp_s0_3 = phi_s0_2 + 0x60;
                temp_s0_3->unk-50 = sp3C;
                temp_s0_3->unk-4F = sp3D;
                temp_s0_3->unk-4E = sp3E;
                temp_s0_3->unk-38 = sp3C;
                temp_s0_3->unk-37 = sp3D;
                temp_s0_3->unk-36 = sp3E;
                temp_s0_3->unk-20 = sp3C;
                temp_s0_3->unk-1F = sp3D;
                temp_s0_3->unk-1E = sp3E;
                temp_s0_3->unk-8 = sp3C;
                temp_s0_3->unk-7 = sp3D;
                temp_s0_3->unk-6 = sp3E;
                phi_s0_2 = temp_s0_3;
                phi_v0_2 = temp_v0_2;
            } while (temp_v0_2 != arg4);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B8414.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 792017ad9d422c2467bd42686f383a5c41f41c75
UNUSED void func_802B8614(Player *player) {
    f64 sp78;
    f64 sp70;
    f64 sp68;
    f64 sp58;
    f64 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 temp_f12;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f18;
    f64 temp_f20;
    f64 temp_f2;
    f64 temp_f30;
    f64 temp_f4;
    f64 temp_f6;

    temp_f6 = (f64) player->boundingBoxCorners[1].cornerPos[0];
    sp70 = (f64) player->boundingBoxCorners[1].cornerGroundY;
    sp68 = (f64) player->boundingBoxCorners[1].cornerPos[2];
    temp_f30 = (f64) player->boundingBoxCorners[0].cornerPos[0];
    sp58 = (f64) player->boundingBoxCorners[0].cornerGroundY;
    sp50 = (f64) player->boundingBoxCorners[0].cornerPos[2];
    sp48 = (f64) player->boundingBoxCorners[3].cornerPos[0];
    sp40 = (f64) player->boundingBoxCorners[3].cornerGroundY;
    temp_f4 = (f64) player->boundingBoxCorners[3].cornerPos[2];
    temp_f2 = sp58 - sp70;
    sp38 = temp_f4;
    temp_f12 = temp_f4 - sp50;
    temp_f14 = sp50 - sp68;
    temp_f16 = sp40 - sp58;
    temp_f18 = sp48 - temp_f30;
    temp_f20 = temp_f30 - temp_f6;
    if (0.0 == 0.0) {
        player->unk_058 = 0.0f;
        player->unk_060 = 0.0f;
        player->unk_05C = 1.0f;
        return;
    }
    player->unk_058 = (f32) ((f64) (f32) ((temp_f2 * temp_f12) - (temp_f14 * temp_f16)) / 0.0);
    player->unk_05C = (f32) ((f64) (f32) ((temp_f14 * temp_f18) - (temp_f20 * temp_f12)) / 0.0);
    player->unk_060 = (f32) ((f64) (f32) ((temp_f20 * temp_f16) - (temp_f2 * temp_f18)) / 0.0);
}
#else
GLOBAL_ASM("asm/non_matchings/math_util/func_802B8614.s")
#endif
