.section .late_rodata

glabel D_800EE5C4
.float 0.4

.section .text

glabel func_80061D4C
/* 06294C 80061D4C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 062950 80061D50 3C0F800E */  lui   $t7, %hi(D_800E4870) # $t7, 0x800e
/* 062954 80061D54 AFA60060 */  sw    $a2, 0x60($sp)
/* 062958 80061D58 25EF4870 */  addiu $t7, %lo(D_800E4870) # addiu $t7, $t7, 0x4870
/* 06295C 80061D5C 00803025 */  move  $a2, $a0
/* 062960 80061D60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 062964 80061D64 AFA40058 */  sw    $a0, 0x58($sp)
/* 062968 80061D68 AFA5005C */  sw    $a1, 0x5c($sp)
/* 06296C 80061D6C AFA70064 */  sw    $a3, 0x64($sp)
/* 062970 80061D70 25E80024 */  addiu $t0, $t7, 0x24
/* 062974 80061D74 27AE0020 */  addiu $t6, $sp, 0x20
.L80061D78:
/* 062978 80061D78 8DE10000 */  lw    $at, ($t7)
/* 06297C 80061D7C 25EF000C */  addiu $t7, $t7, 0xc
/* 062980 80061D80 25CE000C */  addiu $t6, $t6, 0xc
/* 062984 80061D84 ADC1FFF4 */  sw    $at, -0xc($t6)
/* 062988 80061D88 8DE1FFF8 */  lw    $at, -8($t7)
/* 06298C 80061D8C ADC1FFF8 */  sw    $at, -8($t6)
/* 062990 80061D90 8DE1FFFC */  lw    $at, -4($t7)
/* 062994 80061D94 15E8FFF8 */  bne   $t7, $t0, .L80061D78
/* 062998 80061D98 ADC1FFFC */   sw    $at, -4($t6)
/* 06299C 80061D9C 8DE10000 */  lw    $at, ($t7)
/* 0629A0 80061DA0 24040003 */  li    $a0, 3
/* 0629A4 80061DA4 ADC10000 */  sw    $at, ($t6)
/* 0629A8 80061DA8 0C0ADF8D */  jal   random_int
/* 0629AC 80061DAC AFA60058 */   sw    $a2, 0x58($sp)
/* 0629B0 80061DB0 44822000 */  mtc1  $v0, $f4
/* 0629B4 80061DB4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0629B8 80061DB8 44810000 */  mtc1  $at, $f0
/* 0629BC 80061DBC 87A5005E */  lh    $a1, 0x5e($sp)
/* 0629C0 80061DC0 8FA60058 */  lw    $a2, 0x58($sp)
/* 0629C4 80061DC4 04410005 */  bgez  $v0, .L80061DDC
/* 0629C8 80061DC8 468021A0 */   cvt.s.w $f6, $f4
/* 0629CC 80061DCC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0629D0 80061DD0 44814000 */  mtc1  $at, $f8
/* 0629D4 80061DD4 00000000 */  nop   
/* 0629D8 80061DD8 46083180 */  add.s $f6, $f6, $f8
.L80061DDC:
/* 0629DC 80061DDC 46060032 */  c.eq.s $f0, $f6
/* 0629E0 80061DE0 000548C0 */  sll   $t1, $a1, 3
/* 0629E4 80061DE4 01254821 */  addu  $t1, $t1, $a1
/* 0629E8 80061DE8 000948C0 */  sll   $t1, $t1, 3
/* 0629EC 80061DEC 4500003D */  bc1f  .L80061EE4
/* 0629F0 80061DF0 00C91821 */   addu  $v1, $a2, $t1
/* 0629F4 80061DF4 240A0001 */  li    $t2, 1
/* 0629F8 80061DF8 A46A0AE4 */  sh    $t2, 0xae4($v1)
/* 0629FC 80061DFC C4CA0014 */  lwc1  $f10, 0x14($a2)
/* 062A00 80061E00 00055880 */  sll   $t3, $a1, 2
/* 062A04 80061E04 03AB6021 */  addu  $t4, $sp, $t3
/* 062A08 80061E08 E46A0AC8 */  swc1  $f10, 0xac8($v1)
/* 062A0C 80061E0C C4D00018 */  lwc1  $f16, 0x18($a2)
/* 062A10 80061E10 24040003 */  li    $a0, 3
/* 062A14 80061E14 46008480 */  add.s $f18, $f16, $f0
/* 062A18 80061E18 E4720ACC */  swc1  $f18, 0xacc($v1)
/* 062A1C 80061E1C C4C4001C */  lwc1  $f4, 0x1c($a2)
/* 062A20 80061E20 E4640AD0 */  swc1  $f4, 0xad0($v1)
/* 062A24 80061E24 84CD002E */  lh    $t5, 0x2e($a2)
/* 062A28 80061E28 C5880020 */  lwc1  $f8, 0x20($t4)
/* 062A2C 80061E2C 000DC823 */  negu  $t9, $t5
/* 062A30 80061E30 44993000 */  mtc1  $t9, $f6
/* 062A34 80061E34 00000000 */  nop   
/* 062A38 80061E38 468032A0 */  cvt.s.w $f10, $f6
/* 062A3C 80061E3C 460A4400 */  add.s $f16, $f8, $f10
/* 062A40 80061E40 4600848D */  trunc.w.s $f18, $f16
/* 062A44 80061E44 44089000 */  mfc1  $t0, $f18
/* 062A48 80061E48 00000000 */  nop   
/* 062A4C 80061E4C A4680AE8 */  sh    $t0, 0xae8($v1)
/* 062A50 80061E50 0C0ADF8D */  jal   random_int
/* 062A54 80061E54 AFA3001C */   sw    $v1, 0x1c($sp)
/* 062A58 80061E58 44822000 */  mtc1  $v0, $f4
/* 062A5C 80061E5C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 062A60 80061E60 04410005 */  bgez  $v0, .L80061E78
/* 062A64 80061E64 468021A0 */   cvt.s.w $f6, $f4
/* 062A68 80061E68 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 062A6C 80061E6C 44814000 */  mtc1  $at, $f8
/* 062A70 80061E70 00000000 */  nop   
/* 062A74 80061E74 46083180 */  add.s $f6, $f6, $f8
.L80061E78:
/* 062A78 80061E78 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 062A7C 80061E7C 44815000 */  mtc1  $at, $f10
/* 062A80 80061E80 24040004 */  li    $a0, 4
/* 062A84 80061E84 460A3400 */  add.s $f16, $f6, $f10
/* 062A88 80061E88 0C0ADF8D */  jal   random_int
/* 062A8C 80061E8C E4700AE0 */   swc1  $f16, 0xae0($v1)
/* 062A90 80061E90 44829000 */  mtc1  $v0, $f18
/* 062A94 80061E94 8FA3001C */  lw    $v1, 0x1c($sp)
/* 062A98 80061E98 04410005 */  bgez  $v0, .L80061EB0
/* 062A9C 80061E9C 46809120 */   cvt.s.w $f4, $f18
/* 062AA0 80061EA0 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 062AA4 80061EA4 44814000 */  mtc1  $at, $f8
/* 062AA8 80061EA8 00000000 */  nop   
/* 062AAC 80061EAC 46082100 */  add.s $f4, $f4, $f8
.L80061EB0:
/* 062AB0 80061EB0 240F0002 */  li    $t7, 2
/* 062AB4 80061EB4 448F3000 */  mtc1  $t7, $f6
/* 062AB8 80061EB8 3C01800F */  lui   $at, %hi(D_800EE5C4) # $at, 0x800f
/* 062ABC 80061EBC 240E0002 */  li    $t6, 2
/* 062AC0 80061EC0 468032A0 */  cvt.s.w $f10, $f6
/* 062AC4 80061EC4 240900FF */  li    $t1, 255
/* 062AC8 80061EC8 460A2401 */  sub.s $f16, $f4, $f10
/* 062ACC 80061ECC E4700ADC */  swc1  $f16, 0xadc($v1)
/* 062AD0 80061ED0 C432E5C4 */  lwc1  $f18, %lo(D_800EE5C4)($at)
/* 062AD4 80061ED4 A46E0ADA */  sh    $t6, 0xada($v1)
/* 062AD8 80061ED8 A4600AE6 */  sh    $zero, 0xae6($v1)
/* 062ADC 80061EDC A4690B06 */  sh    $t1, 0xb06($v1)
/* 062AE0 80061EE0 E4720AD4 */  swc1  $f18, 0xad4($v1)
.L80061EE4:
/* 062AE4 80061EE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 062AE8 80061EE8 27BD0058 */  addiu $sp, $sp, 0x58
/* 062AEC 80061EEC 03E00008 */  jr    $ra
/* 062AF0 80061EF0 00000000 */   nop   
