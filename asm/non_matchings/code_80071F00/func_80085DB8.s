.section .late_rodata

glabel D_800EF418
.double 799.0

.section .text

glabel func_80085DB8
/* 0869B8 80085DB8 3C018019 */  lui   $at, %hi(D_8018D01C) # $at, 0x8019
/* 0869BC 80085DBC C424D01C */  lwc1  $f4, %lo(D_8018D01C)($at)
/* 0869C0 80085DC0 3C01800F */  lui   $at, %hi(D_800EF418)
/* 0869C4 80085DC4 D428F418 */  ldc1  $f8, %lo(D_800EF418)($at)
/* 0869C8 80085DC8 460021A1 */  cvt.d.s $f6, $f4
/* 0869CC 80085DCC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0869D0 80085DD0 46283282 */  mul.d $f10, $f6, $f8
/* 0869D4 80085DD4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0869D8 80085DD8 3C064495 */  lui   $a2, (0x44952000 >> 16) # lui $a2, 0x4495
/* 0869DC 80085DDC 3C07C5B8 */  lui   $a3, (0xC5B81800 >> 16) # lui $a3, 0xc5b8
/* 0869E0 80085DE0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0869E4 80085DE4 34E71800 */  ori   $a3, (0xC5B81800 & 0xFFFF) # ori $a3, $a3, 0x1800
/* 0869E8 80085DE8 34C62000 */  ori   $a2, (0x44952000 & 0xFFFF) # ori $a2, $a2, 0x2000
/* 0869EC 80085DEC 46205420 */  cvt.s.d $f16, $f10
/* 0869F0 80085DF0 44058000 */  mfc1  $a1, $f16
/* 0869F4 80085DF4 0C022DF5 */  jal   func_8008B7D4
/* 0869F8 80085DF8 00000000 */   nop   
/* 0869FC 80085DFC 3C050600 */  lui   $a1, %hi(D_06005E00) # $a1, 0x600
/* 086A00 80085E00 3C060601 */  lui   $a2, %hi(D_06009000) # $a2, 0x601
/* 086A04 80085E04 240E0040 */  li    $t6, 64
/* 086A08 80085E08 AFAE0010 */  sw    $t6, 0x10($sp)
/* 086A0C 80085E0C 24C69000 */  addiu $a2, %lo(D_06009000) # addiu $a2, $a2, -0x7000
/* 086A10 80085E10 24A55E00 */  addiu $a1, %lo(D_06005E00) # addiu $a1, $a1, 0x5e00
/* 086A14 80085E14 8FA40020 */  lw    $a0, 0x20($sp)
/* 086A18 80085E18 0C01CD11 */  jal   func_80073444
/* 086A1C 80085E1C 24070040 */   li    $a3, 64
/* 086A20 80085E20 0C0216ED */  jal   func_80085BB4
/* 086A24 80085E24 8FA40020 */   lw    $a0, 0x20($sp)
/* 086A28 80085E28 8FBF001C */  lw    $ra, 0x1c($sp)
/* 086A2C 80085E2C 27BD0020 */  addiu $sp, $sp, 0x20
/* 086A30 80085E30 03E00008 */  jr    $ra
/* 086A34 80085E34 00000000 */   nop   
