.section .late_rodata

glabel D_800EF438
.double -2013.0

.section .text

glabel func_80085EF8
/* 086AF8 80085EF8 3C018019 */  lui   $at, %hi(D_8018D01C) # $at, 0x8019
/* 086AFC 80085EFC C424D01C */  lwc1  $f4, %lo(D_8018D01C)($at)
/* 086B00 80085F00 3C01800F */  lui   $at, %hi(D_800EF438)
/* 086B04 80085F04 D428F438 */  ldc1  $f8, %lo(D_800EF438)($at)
/* 086B08 80085F08 460021A1 */  cvt.d.s $f6, $f4
/* 086B0C 80085F0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 086B10 80085F10 46283282 */  mul.d $f10, $f6, $f8
/* 086B14 80085F14 AFBF001C */  sw    $ra, 0x1c($sp)
/* 086B18 80085F18 3C06440A */  lui   $a2, (0x440AC000 >> 16) # lui $a2, 0x440a
/* 086B1C 80085F1C AFA40020 */  sw    $a0, 0x20($sp)
/* 086B20 80085F20 34C6C000 */  ori   $a2, (0x440AC000 & 0xFFFF) # ori $a2, $a2, 0xc000
/* 086B24 80085F24 24070000 */  li    $a3, 0
/* 086B28 80085F28 46205420 */  cvt.s.d $f16, $f10
/* 086B2C 80085F2C 44058000 */  mfc1  $a1, $f16
/* 086B30 80085F30 0C022DF5 */  jal   func_8008B7D4
/* 086B34 80085F34 00000000 */   nop   
/* 086B38 80085F38 3C050600 */  lui   $a1, %hi(D_06006800) # $a1, 0x600
/* 086B3C 80085F3C 3C060601 */  lui   $a2, %hi(D_0600A000) # $a2, 0x601
/* 086B40 80085F40 240E0040 */  li    $t6, 64
/* 086B44 80085F44 AFAE0010 */  sw    $t6, 0x10($sp)
/* 086B48 80085F48 24C6A000 */  addiu $a2, %lo(D_0600A000) # addiu $a2, $a2, -0x6000
/* 086B4C 80085F4C 24A56800 */  addiu $a1, %lo(D_06006800) # addiu $a1, $a1, 0x6800
/* 086B50 80085F50 8FA40020 */  lw    $a0, 0x20($sp)
/* 086B54 80085F54 0C01CD11 */  jal   func_80073444
/* 086B58 80085F58 24070040 */   li    $a3, 64
/* 086B5C 80085F5C 0C0216ED */  jal   func_80085BB4
/* 086B60 80085F60 8FA40020 */   lw    $a0, 0x20($sp)
/* 086B64 80085F64 8FBF001C */  lw    $ra, 0x1c($sp)
/* 086B68 80085F68 27BD0020 */  addiu $sp, $sp, 0x20
/* 086B6C 80085F6C 03E00008 */  jr    $ra
/* 086B70 80085F70 00000000 */   nop   
