.section .late_rodata

glabel D_800EF0B8
.double 0.6

glabel D_800EF0C0
.double 0.6

.section .text

glabel func_80080E8C
/* 081A8C 80080E8C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 081A90 80080E90 AFBF001C */  sw    $ra, 0x1c($sp)
/* 081A94 80080E94 AFA50044 */  sw    $a1, 0x44($sp)
/* 081A98 80080E98 AFB10018 */  sw    $s1, 0x18($sp)
/* 081A9C 80080E9C AFB00014 */  sw    $s0, 0x14($sp)
/* 081AA0 80080EA0 AFA40040 */  sw    $a0, 0x40($sp)
/* 081AA4 80080EA4 AFA60048 */  sw    $a2, 0x48($sp)
/* 081AA8 80080EA8 0C01C8E9 */  jal   func_800723A4
/* 081AAC 80080EAC 00C02825 */   move  $a1, $a2
/* 081AB0 80080EB0 8FAE0040 */  lw    $t6, 0x40($sp)
/* 081AB4 80080EB4 240700E0 */  li    $a3, 224
/* 081AB8 80080EB8 8FB90044 */  lw    $t9, 0x44($sp)
/* 081ABC 80080EBC 01C70019 */  multu $t6, $a3
/* 081AC0 80080EC0 8FA40048 */  lw    $a0, 0x48($sp)
/* 081AC4 80080EC4 3C058016 */  lui   $a1, %hi(D_80165C18) # $a1, 0x8016
/* 081AC8 80080EC8 24A55C18 */  addiu $a1, %lo(D_80165C18) # addiu $a1, $a1, 0x5c18
/* 081ACC 80080ECC 24180002 */  li    $t8, 2
/* 081AD0 80080ED0 3C0B800E */  lui   $t3, %hi(D_800E594C) # $t3, 0x800e
/* 081AD4 80080ED4 00044840 */  sll   $t1, $a0, 1
/* 081AD8 80080ED8 00095080 */  sll   $t2, $t1, 2
/* 081ADC 80080EDC 256B594C */  addiu $t3, %lo(D_800E594C) # addiu $t3, $t3, 0x594c
/* 081AE0 80080EE0 014B1821 */  addu  $v1, $t2, $t3
/* 081AE4 80080EE4 00007812 */  mflo  $t7
/* 081AE8 80080EE8 00AF8021 */  addu  $s0, $a1, $t7
/* 081AEC 80080EEC A21800D5 */  sb    $t8, 0xd5($s0)
/* 081AF0 80080EF0 03270019 */  multu $t9, $a3
/* 081AF4 80080EF4 C46C0004 */  lwc1  $f12, 4($v1)
/* 081AF8 80080EF8 C46E0000 */  lwc1  $f14, ($v1)
/* 081AFC 80080EFC AFA30024 */  sw    $v1, 0x24($sp)
/* 081B00 80080F00 01202025 */  move  $a0, $t1
/* 081B04 80080F04 AFA90028 */  sw    $t1, 0x28($sp)
/* 081B08 80080F08 00004012 */  mflo  $t0
/* 081B0C 80080F0C 00A81021 */  addu  $v0, $a1, $t0
/* 081B10 80080F10 945100C0 */  lhu   $s1, 0xc0($v0)
/* 081B14 80080F14 AFA2002C */  sw    $v0, 0x2c($sp)
/* 081B18 80080F18 0C0105B6 */  jal   func_800416D8
/* 081B1C 80080F1C 02203025 */   move  $a2, $s1
/* 081B20 80080F20 8FA30024 */  lw    $v1, 0x24($sp)
/* 081B24 80080F24 E7A00038 */  swc1  $f0, 0x38($sp)
/* 081B28 80080F28 3226FFFF */  andi  $a2, $s1, 0xffff
/* 081B2C 80080F2C C46C0004 */  lwc1  $f12, 4($v1)
/* 081B30 80080F30 0C0105C9 */  jal   func_80041724
/* 081B34 80080F34 C46E0000 */   lwc1  $f14, ($v1)
/* 081B38 80080F38 8FA2002C */  lw    $v0, 0x2c($sp)
/* 081B3C 80080F3C 3C014022 */  li    $at, 0x40220000 # 2.531250
/* 081B40 80080F40 44818800 */  mtc1  $at, $f17
/* 081B44 80080F44 C4440004 */  lwc1  $f4, 4($v0)
/* 081B48 80080F48 44808000 */  mtc1  $zero, $f16
/* 081B4C 80080F4C 8FAC0028 */  lw    $t4, 0x28($sp)
/* 081B50 80080F50 46002180 */  add.s $f6, $f4, $f0
/* 081B54 80080F54 3C0D800E */  lui   $t5, %hi(D_800E597C) # 0x800e
/* 081B58 80080F58 01AC6821 */  addu  $t5, $t5, $t4
/* 081B5C 80080F5C E6060010 */  swc1  $f6, 0x10($s0)
/* 081B60 80080F60 C4480044 */  lwc1  $f8, 0x44($v0)
/* 081B64 80080F64 460042A1 */  cvt.d.s $f10, $f8
/* 081B68 80080F68 C7A80038 */  lwc1  $f8, 0x38($sp)
/* 081B6C 80080F6C 46305481 */  sub.d $f18, $f10, $f16
/* 081B70 80080F70 46209120 */  cvt.s.d $f4, $f18
/* 081B74 80080F74 E6040014 */  swc1  $f4, 0x14($s0)
/* 081B78 80080F78 C446000C */  lwc1  $f6, 0xc($v0)
/* 081B7C 80080F7C 46083280 */  add.s $f10, $f6, $f8
/* 081B80 80080F80 E60A0018 */  swc1  $f10, 0x18($s0)
/* 081B84 80080F84 85AD597C */  lh    $t5, %lo(D_800E597C)($t5) # 0x597c($t5)
/* 081B88 80080F88 944E00C0 */  lhu   $t6, 0xc0($v0)
/* 081B8C 80080F8C 01AE8821 */  addu  $s1, $t5, $t6
/* 081B90 80080F90 322FFFFF */  andi  $t7, $s1, 0xffff
/* 081B94 80080F94 01E08825 */  move  $s1, $t7
/* 081B98 80080F98 0C0AE006 */  jal   sins
/* 081B9C 80080F9C 31E4FFFF */   andi  $a0, $t7, 0xffff
/* 081BA0 80080FA0 3C01800F */  lui   $at, %hi(D_800EF0B8)
/* 081BA4 80080FA4 D432F0B8 */  ldc1  $f18, %lo(D_800EF0B8)($at)
/* 081BA8 80080FA8 46000421 */  cvt.d.s $f16, $f0
/* 081BAC 80080FAC 3224FFFF */  andi  $a0, $s1, 0xffff
/* 081BB0 80080FB0 46328102 */  mul.d $f4, $f16, $f18
/* 081BB4 80080FB4 462021A0 */  cvt.s.d $f6, $f4
/* 081BB8 80080FB8 0C0AE00E */  jal   coss
/* 081BBC 80080FBC E6060038 */   swc1  $f6, 0x38($s0)
/* 081BC0 80080FC0 3C01800F */  lui   $at, %hi(D_800EF0C0)
/* 081BC4 80080FC4 D42AF0C0 */  ldc1  $f10, %lo(D_800EF0C0)($at)
/* 081BC8 80080FC8 46000221 */  cvt.d.s $f8, $f0
/* 081BCC 80080FCC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 081BD0 80080FD0 462A4402 */  mul.d $f16, $f8, $f10
/* 081BD4 80080FD4 8FB10018 */  lw    $s1, 0x18($sp)
/* 081BD8 80080FD8 462084A0 */  cvt.s.d $f18, $f16
/* 081BDC 80080FDC E6120040 */  swc1  $f18, 0x40($s0)
/* 081BE0 80080FE0 8FB00014 */  lw    $s0, 0x14($sp)
/* 081BE4 80080FE4 03E00008 */  jr    $ra
/* 081BE8 80080FE8 27BD0040 */   addiu $sp, $sp, 0x40
