.section .late_rodata

glabel D_800ED528
.double 0.7

glabel D_800ED530
.double 0.8

glabel D_800ED538
.double 0.1

glabel D_800ED540
.double 0.9

glabel D_800ED548
.double 0.1

glabel D_800ED550
.double 0.1

glabel D_800ED558
.double 0.1

glabel D_800ED560
.double 0.85

glabel D_800ED568
.double 0.02

glabel D_800ED570
.double 0.01

glabel D_800ED578
.double 0.15

.section .text

glabel func_8001CCEC
/* 01D8EC 8001CCEC 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 01D8F0 8001CCF0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 01D8F4 8001CCF4 AFB20028 */  sw    $s2, 0x28($sp)
/* 01D8F8 8001CCF8 AFB10024 */  sw    $s1, 0x24($sp)
/* 01D8FC 8001CCFC AFB00020 */  sw    $s0, 0x20($sp)
/* 01D900 8001CD00 AFA600C8 */  sw    $a2, 0xc8($sp)
/* 01D904 8001CD04 AFA700CC */  sw    $a3, 0xcc($sp)
/* 01D908 8001CD08 84830DB4 */  lh    $v1, 0xdb4($a0)
/* 01D90C 8001CD0C 3C01800F */  lui   $at, %hi(D_800ED528)
/* 01D910 8001CD10 D424D528 */  ldc1  $f4, %lo(D_800ED528)($at)
/* 01D914 8001CD14 24630001 */  addiu $v1, $v1, 1
/* 01D918 8001CD18 00037400 */  sll   $t6, $v1, 0x10
/* 01D91C 8001CD1C 000E1C03 */  sra   $v1, $t6, 0x10
/* 01D920 8001CD20 00630019 */  multu $v1, $v1
/* 01D924 8001CD24 C4820DBC */  lwc1  $f2, 0xdbc($a0)
/* 01D928 8001CD28 00A08825 */  move  $s1, $a1
/* 01D92C 8001CD2C 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 01D930 8001CD30 3C0D8016 */  lui   $t5, %hi(D_80164A38) # $t5, 0x8016
/* 01D934 8001CD34 00808025 */  move  $s0, $a0
/* 01D938 8001CD38 3C0C8016 */  lui   $t4, %hi(D_80164A38) # 0x8016
/* 01D93C 8001CD3C 25AD4A38 */  addiu $t5, %lo(D_80164A38) # addiu $t5, $t5, 0x4a38
/* 01D940 8001CD40 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 01D944 8001CD44 3C0541A0 */  lui   $a1, 0x41a0
/* 01D948 8001CD48 0000C012 */  mflo  $t8
/* 01D94C 8001CD4C 44983000 */  mtc1  $t8, $f6
/* 01D950 8001CD50 00000000 */  nop
/* 01D954 8001CD54 46803221 */  cvt.d.w $f8, $f6
/* 01D958 8001CD58 44833000 */  mtc1  $v1, $f6
/* 01D95C 8001CD5C 46282282 */  mul.d $f10, $f4, $f8
/* 01D960 8001CD60 46803120 */  cvt.s.w $f4, $f6
/* 01D964 8001CD64 46022202 */  mul.s $f8, $f4, $f2
/* 01D968 8001CD68 460041A1 */  cvt.d.s $f6, $f8
/* 01D96C 8001CD6C 462A3101 */  sub.d $f4, $f6, $f10
/* 01D970 8001CD70 46202020 */  cvt.s.d $f0, $f4
/* 01D974 8001CD74 10600014 */  beqz  $v1, .L8001CDC8
/* 01D978 8001CD78 46000486 */   mov.s $f18, $f0
/* 01D97C 8001CD7C 44807000 */  mtc1  $zero, $f14
/* 01D980 8001CD80 3C01800F */  lui   $at, %hi(D_800ED530)
/* 01D984 8001CD84 460E003C */  c.lt.s $f0, $f14
/* 01D988 8001CD88 00000000 */  nop
/* 01D98C 8001CD8C 4502000F */  bc1fl .L8001CDCC
/* 01D990 8001CD90 44807000 */   mtc1  $zero, $f14
/* 01D994 8001CD94 D426D530 */  ldc1  $f6, %lo(D_800ED530)($at)
/* 01D998 8001CD98 46001221 */  cvt.d.s $f8, $f2
/* 01D99C 8001CD9C 3C01800F */  lui   $at, %hi(D_800ED538)
/* 01D9A0 8001CDA0 46264282 */  mul.d $f10, $f8, $f6
/* 01D9A4 8001CDA4 D424D538 */  ldc1  $f4, %lo(D_800ED538)($at)
/* 01D9A8 8001CDA8 00001825 */  move  $v1, $zero
/* 01D9AC 8001CDAC 462050A0 */  cvt.s.d $f2, $f10
/* 01D9B0 8001CDB0 46001221 */  cvt.d.s $f8, $f2
/* 01D9B4 8001CDB4 4624403E */  c.le.d $f8, $f4
/* 01D9B8 8001CDB8 00000000 */  nop
/* 01D9BC 8001CDBC 45020003 */  bc1fl .L8001CDCC
/* 01D9C0 8001CDC0 44807000 */   mtc1  $zero, $f14
/* 01D9C4 8001CDC4 46007086 */  mov.s $f2, $f14
.L8001CDC8:
/* 01D9C8 8001CDC8 44807000 */  mtc1  $zero, $f14
.L8001CDCC:
/* 01D9CC 8001CDCC 00000000 */  nop
/* 01D9D0 8001CDD0 460E903E */  c.le.s $f18, $f14
/* 01D9D4 8001CDD4 00000000 */  nop
/* 01D9D8 8001CDD8 45020003 */  bc1fl .L8001CDE8
/* 01D9DC 8001CDDC A6030DB4 */   sh    $v1, 0xdb4($s0)
/* 01D9E0 8001CDE0 46007486 */  mov.s $f18, $f14
/* 01D9E4 8001CDE4 A6030DB4 */  sh    $v1, 0xdb4($s0)
.L8001CDE8:
/* 01D9E8 8001CDE8 E6020DBC */  swc1  $f2, 0xdbc($s0)
/* 01D9EC 8001CDEC 8622009C */  lh    $v0, 0x9c($s1)
/* 01D9F0 8001CDF0 3C013FF4 */  li    $at, 0x3FF40000 # 1.906250
/* 01D9F4 8001CDF4 44813800 */  mtc1  $at, $f7
/* 01D9F8 8001CDF8 24420001 */  addiu $v0, $v0, 1
/* 01D9FC 8001CDFC 0002CC00 */  sll   $t9, $v0, 0x10
/* 01DA00 8001CE00 00191403 */  sra   $v0, $t9, 0x10
/* 01DA04 8001CE04 00420019 */  multu $v0, $v0
/* 01DA08 8001CE08 44803000 */  mtc1  $zero, $f6
/* 01DA0C 8001CE0C C6200094 */  lwc1  $f0, 0x94($s1)
/* 01DA10 8001CE10 87A300E2 */  lh    $v1, 0xe2($sp)
/* 01DA14 8001CE14 00035840 */  sll   $t3, $v1, 1
/* 01DA18 8001CE18 00039080 */  sll   $s2, $v1, 2
/* 01DA1C 8001CE1C 018B6021 */  addu  $t4, $t4, $t3
/* 01DA20 8001CE20 024D2021 */  addu  $a0, $s2, $t5
/* 01DA24 8001CE24 00005012 */  mflo  $t2
/* 01DA28 8001CE28 448A5000 */  mtc1  $t2, $f10
/* 01DA2C 8001CE2C 00000000 */  nop
/* 01DA30 8001CE30 46805121 */  cvt.d.w $f4, $f10
/* 01DA34 8001CE34 44825000 */  mtc1  $v0, $f10
/* 01DA38 8001CE38 46243202 */  mul.d $f8, $f6, $f4
/* 01DA3C 8001CE3C 468051A0 */  cvt.s.w $f6, $f10
/* 01DA40 8001CE40 46003102 */  mul.s $f4, $f6, $f0
/* 01DA44 8001CE44 460022A1 */  cvt.d.s $f10, $f4
/* 01DA48 8001CE48 46285181 */  sub.d $f6, $f10, $f8
/* 01DA4C 8001CE4C 46203320 */  cvt.s.d $f12, $f6
/* 01DA50 8001CE50 10400012 */  beqz  $v0, .L8001CE9C
/* 01DA54 8001CE54 46006406 */   mov.s $f16, $f12
/* 01DA58 8001CE58 460E603C */  c.lt.s $f12, $f14
/* 01DA5C 8001CE5C 3C01800F */  lui   $at, %hi(D_800ED540)
/* 01DA60 8001CE60 4502000F */  bc1fl .L8001CEA0
/* 01DA64 8001CE64 460E803E */   c.le.s $f16, $f14
/* 01DA68 8001CE68 D42AD540 */  ldc1  $f10, %lo(D_800ED540)($at)
/* 01DA6C 8001CE6C 46000121 */  cvt.d.s $f4, $f0
/* 01DA70 8001CE70 3C01800F */  lui   $at, %hi(D_800ED548)
/* 01DA74 8001CE74 462A2202 */  mul.d $f8, $f4, $f10
/* 01DA78 8001CE78 D426D548 */  ldc1  $f6, %lo(D_800ED548)($at)
/* 01DA7C 8001CE7C 00001025 */  move  $v0, $zero
/* 01DA80 8001CE80 46204020 */  cvt.s.d $f0, $f8
/* 01DA84 8001CE84 46000121 */  cvt.d.s $f4, $f0
/* 01DA88 8001CE88 4626203E */  c.le.d $f4, $f6
/* 01DA8C 8001CE8C 00000000 */  nop
/* 01DA90 8001CE90 45020003 */  bc1fl .L8001CEA0
/* 01DA94 8001CE94 460E803E */   c.le.s $f16, $f14
/* 01DA98 8001CE98 46007006 */  mov.s $f0, $f14
.L8001CE9C:
/* 01DA9C 8001CE9C 460E803E */  c.le.s $f16, $f14
.L8001CEA0:
/* 01DAA0 8001CEA0 00000000 */  nop
/* 01DAA4 8001CEA4 45020003 */  bc1fl .L8001CEB4
/* 01DAA8 8001CEA8 A622009C */   sh    $v0, 0x9c($s1)
/* 01DAAC 8001CEAC 46007406 */  mov.s $f16, $f14
/* 01DAB0 8001CEB0 A622009C */  sh    $v0, 0x9c($s1)
.L8001CEB4:
/* 01DAB4 8001CEB4 E6200094 */  swc1  $f0, 0x94($s1)
/* 01DAB8 8001CEB8 858C4678 */  lh    $t4, 0x4678($t4)
/* 01DABC 8001CEBC 24010002 */  li    $at, 2
/* 01DAC0 8001CEC0 15810022 */  bne   $t4, $at, .L8001CF4C
/* 01DAC4 8001CEC4 00000000 */   nop
/* 01DAC8 8001CEC8 AFA40044 */  sw    $a0, 0x44($sp)
/* 01DACC 8001CECC E7B00050 */  swc1  $f16, 0x50($sp)
/* 01DAD0 8001CED0 0C008973 */  jal   move_f32_towards
/* 01DAD4 8001CED4 E7B2005C */   swc1  $f18, 0x5c($sp)
/* 01DAD8 8001CED8 3C0E8016 */  lui   $t6, %hi(D_80164A48) # $t6, 0x8016
/* 01DADC 8001CEDC 25CE4A48 */  addiu $t6, %lo(D_80164A48) # addiu $t6, $t6, 0x4a48
/* 01DAE0 8001CEE0 024E2021 */  addu  $a0, $s2, $t6
/* 01DAE4 8001CEE4 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 01DAE8 8001CEE8 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 01DAEC 8001CEEC AFA40040 */  sw    $a0, 0x40($sp)
/* 01DAF0 8001CEF0 0C008973 */  jal   move_f32_towards
/* 01DAF4 8001CEF4 3C053FC0 */   lui   $a1, 0x3fc0
/* 01DAF8 8001CEF8 3C0F8016 */  lui   $t7, %hi(D_80164A78) # $t7, 0x8016
/* 01DAFC 8001CEFC 25EF4A78 */  addiu $t7, %lo(D_80164A78) # addiu $t7, $t7, 0x4a78
/* 01DB00 8001CF00 024F1821 */  addu  $v1, $s2, $t7
/* 01DB04 8001CF04 C46A0000 */  lwc1  $f10, ($v1)
/* 01DB08 8001CF08 3C01800F */  lui   $at, %hi(D_800ED550)
/* 01DB0C 8001CF0C D426D550 */  ldc1  $f6, %lo(D_800ED550)($at)
/* 01DB10 8001CF10 46005221 */  cvt.d.s $f8, $f10
/* 01DB14 8001CF14 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01DB18 8001CF18 46264100 */  add.d $f4, $f8, $f6
/* 01DB1C 8001CF1C 44813000 */  mtc1  $at, $f6
/* 01DB20 8001CF20 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01DB24 8001CF24 462022A0 */  cvt.s.d $f10, $f4
/* 01DB28 8001CF28 E46A0000 */  swc1  $f10, ($v1)
/* 01DB2C 8001CF2C C4680000 */  lwc1  $f8, ($v1)
/* 01DB30 8001CF30 4608303E */  c.le.s $f6, $f8
/* 01DB34 8001CF34 00000000 */  nop
/* 01DB38 8001CF38 4502002E */  bc1fl .L8001CFF4
/* 01DB3C 8001CF3C 860C00CA */   lh    $t4, 0xca($s0)
/* 01DB40 8001CF40 44812000 */  mtc1  $at, $f4
/* 01DB44 8001CF44 1000002A */  b     .L8001CFF0
/* 01DB48 8001CF48 E4640000 */   swc1  $f4, ($v1)
.L8001CF4C:
/* 01DB4C 8001CF4C 3C188016 */  lui   $t8, %hi(D_80164A38) # $t8, 0x8016
/* 01DB50 8001CF50 27184A38 */  addiu $t8, %lo(D_80164A38) # addiu $t8, $t8, 0x4a38
/* 01DB54 8001CF54 00039080 */  sll   $s2, $v1, 2
/* 01DB58 8001CF58 02582021 */  addu  $a0, $s2, $t8
/* 01DB5C 8001CF5C 44057000 */  mfc1  $a1, $f14
/* 01DB60 8001CF60 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 01DB64 8001CF64 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 01DB68 8001CF68 AFA40044 */  sw    $a0, 0x44($sp)
/* 01DB6C 8001CF6C E7B00050 */  swc1  $f16, 0x50($sp)
/* 01DB70 8001CF70 0C008973 */  jal   move_f32_towards
/* 01DB74 8001CF74 E7B2005C */   swc1  $f18, 0x5c($sp)
/* 01DB78 8001CF78 3C198016 */  lui   $t9, %hi(D_80164A48) # $t9, 0x8016
/* 01DB7C 8001CF7C 27394A48 */  addiu $t9, %lo(D_80164A48) # addiu $t9, $t9, 0x4a48
/* 01DB80 8001CF80 02592021 */  addu  $a0, $s2, $t9
/* 01DB84 8001CF84 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 01DB88 8001CF88 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 01DB8C 8001CF8C AFA40040 */  sw    $a0, 0x40($sp)
/* 01DB90 8001CF90 0C008973 */  jal   move_f32_towards
/* 01DB94 8001CF94 24050000 */   li    $a1, 0
/* 01DB98 8001CF98 3C098016 */  lui   $t1, %hi(D_80164A78) # $t1, 0x8016
/* 01DB9C 8001CF9C 25294A78 */  addiu $t1, %lo(D_80164A78) # addiu $t1, $t1, 0x4a78
/* 01DBA0 8001CFA0 02491821 */  addu  $v1, $s2, $t1
/* 01DBA4 8001CFA4 C46A0000 */  lwc1  $f10, ($v1)
/* 01DBA8 8001CFA8 3C01800F */  lui   $at, %hi(D_800ED558)
/* 01DBAC 8001CFAC D426D558 */  ldc1  $f6, %lo(D_800ED558)($at)
/* 01DBB0 8001CFB0 46005221 */  cvt.d.s $f8, $f10
/* 01DBB4 8001CFB4 3C0A800E */  lui   $t2, %hi(gActiveScreenMode) # $t2, 0x800e
/* 01DBB8 8001CFB8 46264101 */  sub.d $f4, $f8, $f6
/* 01DBBC 8001CFBC 3C01800E */  lui   $at, %hi(D_800DDB30)
/* 01DBC0 8001CFC0 462022A0 */  cvt.s.d $f10, $f4
/* 01DBC4 8001CFC4 E46A0000 */  swc1  $f10, ($v1)
/* 01DBC8 8001CFC8 8D4AC52C */  lw    $t2, %lo(gActiveScreenMode)($t2)
/* 01DBCC 8001CFCC C4680000 */  lwc1  $f8, ($v1)
/* 01DBD0 8001CFD0 000A5880 */  sll   $t3, $t2, 2
/* 01DBD4 8001CFD4 002B0821 */  addu  $at, $at, $t3
/* 01DBD8 8001CFD8 C420DB30 */  lwc1  $f0, %lo(D_800DDB30)($at)
/* 01DBDC 8001CFDC 4600403E */  c.le.s $f8, $f0
/* 01DBE0 8001CFE0 00000000 */  nop
/* 01DBE4 8001CFE4 45020003 */  bc1fl .L8001CFF4
/* 01DBE8 8001CFE8 860C00CA */   lh    $t4, 0xca($s0)
/* 01DBEC 8001CFEC E4600000 */  swc1  $f0, ($v1)
.L8001CFF0:
/* 01DBF0 8001CFF0 860C00CA */  lh    $t4, 0xca($s0)
.L8001CFF4:
/* 01DBF4 8001CFF4 24010100 */  li    $at, 256
/* 01DBF8 8001CFF8 318D0100 */  andi  $t5, $t4, 0x100
/* 01DBFC 8001CFFC 15A10048 */  bne   $t5, $at, .L8001D120
/* 01DC00 8001D000 3C02800E */   lui   $v0, %hi(gActiveScreenMode) # $v0, 0x800e
/* 01DC04 8001D004 8C42C52C */  lw    $v0, %lo(gActiveScreenMode)($v0)
/* 01DC08 8001D008 24010001 */  li    $at, 1
/* 01DC0C 8001D00C 3C0E8016 */  lui   $t6, %hi(D_80164A90) # $t6, 0x8016
/* 01DC10 8001D010 10410006 */  beq   $v0, $at, .L8001D02C
/* 01DC14 8001D014 25CE4A90 */   addiu $t6, %lo(D_80164A90) # addiu $t6, $t6, 0x4a90
/* 01DC18 8001D018 24010002 */  li    $at, 2
/* 01DC1C 8001D01C 10410003 */  beq   $v0, $at, .L8001D02C
/* 01DC20 8001D020 24010003 */   li    $at, 3
/* 01DC24 8001D024 14410013 */  bne   $v0, $at, .L8001D074
/* 01DC28 8001D028 3C18800E */   lui   $t8, %hi(gCurrentCourseId) # $t8, 0x800e
.L8001D02C:
/* 01DC2C 8001D02C 024E2021 */  addu  $a0, $s2, $t6
/* 01DC30 8001D030 3C063CA3 */  lui   $a2, (0x3CA3D70A >> 16) # lui $a2, 0x3ca3
/* 01DC34 8001D034 34C6D70A */  ori   $a2, (0x3CA3D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 01DC38 8001D038 AFA40038 */  sw    $a0, 0x38($sp)
/* 01DC3C 8001D03C 3C0541A0 */  lui   $a1, 0x41a0
/* 01DC40 8001D040 0C008973 */  jal   move_f32_towards
/* 01DC44 8001D044 AFA3003C */   sw    $v1, 0x3c($sp)
/* 01DC48 8001D048 3C0F8016 */  lui   $t7, %hi(D_80164AA0) # $t7, 0x8016
/* 01DC4C 8001D04C 25EF4AA0 */  addiu $t7, %lo(D_80164AA0) # addiu $t7, $t7, 0x4aa0
/* 01DC50 8001D050 024F2021 */  addu  $a0, $s2, $t7
/* 01DC54 8001D054 3C063CA3 */  lui   $a2, (0x3CA3D70A >> 16) # lui $a2, 0x3ca3
/* 01DC58 8001D058 34C6D70A */  ori   $a2, (0x3CA3D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 01DC5C 8001D05C AFA40034 */  sw    $a0, 0x34($sp)
/* 01DC60 8001D060 0C008973 */  jal   move_f32_towards
/* 01DC64 8001D064 3C054120 */   lui   $a1, 0x4120
/* 01DC68 8001D068 8FA3003C */  lw    $v1, 0x3c($sp)
/* 01DC6C 8001D06C 1000003F */  b     .L8001D16C
/* 01DC70 8001D070 8FA40034 */   lw    $a0, 0x34($sp)
.L8001D074:
/* 01DC74 8001D074 8718C5A0 */  lh    $t8, %lo(gCurrentCourseId)($t8)
/* 01DC78 8001D078 24010004 */  li    $at, 4
/* 01DC7C 8001D07C 3C0A8016 */  lui   $t2, %hi(D_80164A90) # $t2, 0x8016
/* 01DC80 8001D080 17010015 */  bne   $t8, $at, .L8001D0D8
/* 01DC84 8001D084 254A4A90 */   addiu $t2, %lo(D_80164A90) # addiu $t2, $t2, 0x4a90
/* 01DC88 8001D088 3C198016 */  lui   $t9, %hi(D_80164A90) # $t9, 0x8016
/* 01DC8C 8001D08C 27394A90 */  addiu $t9, %lo(D_80164A90) # addiu $t9, $t9, 0x4a90
/* 01DC90 8001D090 02592021 */  addu  $a0, $s2, $t9
/* 01DC94 8001D094 3C063D23 */  lui   $a2, (0x3D23D70A >> 16) # lui $a2, 0x3d23
/* 01DC98 8001D098 34C6D70A */  ori   $a2, (0x3D23D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 01DC9C 8001D09C AFA40038 */  sw    $a0, 0x38($sp)
/* 01DCA0 8001D0A0 3C054248 */  lui   $a1, 0x4248
/* 01DCA4 8001D0A4 0C008973 */  jal   move_f32_towards
/* 01DCA8 8001D0A8 AFA3003C */   sw    $v1, 0x3c($sp)
/* 01DCAC 8001D0AC 3C098016 */  lui   $t1, %hi(D_80164AA0) # $t1, 0x8016
/* 01DCB0 8001D0B0 25294AA0 */  addiu $t1, %lo(D_80164AA0) # addiu $t1, $t1, 0x4aa0
/* 01DCB4 8001D0B4 02492021 */  addu  $a0, $s2, $t1
/* 01DCB8 8001D0B8 3C063D23 */  lui   $a2, (0x3D23D70A >> 16) # lui $a2, 0x3d23
/* 01DCBC 8001D0BC 34C6D70A */  ori   $a2, (0x3D23D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 01DCC0 8001D0C0 AFA40034 */  sw    $a0, 0x34($sp)
/* 01DCC4 8001D0C4 0C008973 */  jal   move_f32_towards
/* 01DCC8 8001D0C8 3C05420C */   lui   $a1, 0x420c
/* 01DCCC 8001D0CC 8FA3003C */  lw    $v1, 0x3c($sp)
/* 01DCD0 8001D0D0 10000026 */  b     .L8001D16C
/* 01DCD4 8001D0D4 8FA40034 */   lw    $a0, 0x34($sp)
.L8001D0D8:
/* 01DCD8 8001D0D8 024A2021 */  addu  $a0, $s2, $t2
/* 01DCDC 8001D0DC 3C063CA3 */  lui   $a2, (0x3CA3D70A >> 16) # lui $a2, 0x3ca3
/* 01DCE0 8001D0E0 34C6D70A */  ori   $a2, (0x3CA3D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 01DCE4 8001D0E4 AFA40038 */  sw    $a0, 0x38($sp)
/* 01DCE8 8001D0E8 3C054220 */  lui   $a1, 0x4220
/* 01DCEC 8001D0EC 0C008973 */  jal   move_f32_towards
/* 01DCF0 8001D0F0 AFA3003C */   sw    $v1, 0x3c($sp)
/* 01DCF4 8001D0F4 3C0B8016 */  lui   $t3, %hi(D_80164AA0) # $t3, 0x8016
/* 01DCF8 8001D0F8 256B4AA0 */  addiu $t3, %lo(D_80164AA0) # addiu $t3, $t3, 0x4aa0
/* 01DCFC 8001D0FC 024B2021 */  addu  $a0, $s2, $t3
/* 01DD00 8001D100 3C063CA3 */  lui   $a2, (0x3CA3D70A >> 16) # lui $a2, 0x3ca3
/* 01DD04 8001D104 34C6D70A */  ori   $a2, (0x3CA3D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 01DD08 8001D108 AFA40034 */  sw    $a0, 0x34($sp)
/* 01DD0C 8001D10C 0C008973 */  jal   move_f32_towards
/* 01DD10 8001D110 3C0541A0 */   lui   $a1, 0x41a0
/* 01DD14 8001D114 8FA3003C */  lw    $v1, 0x3c($sp)
/* 01DD18 8001D118 10000014 */  b     .L8001D16C
/* 01DD1C 8001D11C 8FA40034 */   lw    $a0, 0x34($sp)
.L8001D120:
/* 01DD20 8001D120 3C0C8016 */  lui   $t4, %hi(D_80164A90) # $t4, 0x8016
/* 01DD24 8001D124 258C4A90 */  addiu $t4, %lo(D_80164A90) # addiu $t4, $t4, 0x4a90
/* 01DD28 8001D128 024C2021 */  addu  $a0, $s2, $t4
/* 01DD2C 8001D12C 3C063D23 */  lui   $a2, (0x3D23D70A >> 16) # lui $a2, 0x3d23
/* 01DD30 8001D130 34C6D70A */  ori   $a2, (0x3D23D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 01DD34 8001D134 AFA40038 */  sw    $a0, 0x38($sp)
/* 01DD38 8001D138 24050000 */  li    $a1, 0
/* 01DD3C 8001D13C 0C008973 */  jal   move_f32_towards
/* 01DD40 8001D140 AFA3003C */   sw    $v1, 0x3c($sp)
/* 01DD44 8001D144 3C0E8016 */  lui   $t6, %hi(D_80164AA0) # $t6, 0x8016
/* 01DD48 8001D148 25CE4AA0 */  addiu $t6, %lo(D_80164AA0) # addiu $t6, $t6, 0x4aa0
/* 01DD4C 8001D14C 024E2021 */  addu  $a0, $s2, $t6
/* 01DD50 8001D150 3C063D23 */  lui   $a2, (0x3D23D70A >> 16) # lui $a2, 0x3d23
/* 01DD54 8001D154 34C6D70A */  ori   $a2, (0x3D23D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 01DD58 8001D158 AFA40034 */  sw    $a0, 0x34($sp)
/* 01DD5C 8001D15C 0C008973 */  jal   move_f32_towards
/* 01DD60 8001D160 24050000 */   li    $a1, 0
/* 01DD64 8001D164 8FA3003C */  lw    $v1, 0x3c($sp)
/* 01DD68 8001D168 8FA40034 */  lw    $a0, 0x34($sp)
.L8001D16C:
/* 01DD6C 8001D16C C6260030 */  lwc1  $f6, 0x30($s1)
/* 01DD70 8001D170 3C01800F */  lui   $at, %hi(D_800ED560)
/* 01DD74 8001D174 D420D560 */  ldc1  $f0, %lo(D_800ED560)($at)
/* 01DD78 8001D178 E7A60090 */  swc1  $f6, 0x90($sp)
/* 01DD7C 8001D17C 860F0DD2 */  lh    $t7, 0xdd2($s0)
/* 01DD80 8001D180 C6240034 */  lwc1  $f4, 0x34($s1)
/* 01DD84 8001D184 8FB80040 */  lw    $t8, 0x40($sp)
/* 01DD88 8001D188 448F4000 */  mtc1  $t7, $f8
/* 01DD8C 8001D18C 460022A1 */  cvt.d.s $f10, $f4
/* 01DD90 8001D190 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 01DD94 8001D194 468041A1 */  cvt.d.w $f6, $f8
/* 01DD98 8001D198 8FB90044 */  lw    $t9, 0x44($sp)
/* 01DD9C 8001D19C 8FAA0038 */  lw    $t2, 0x38($sp)
/* 01DDA0 8001D1A0 8FA200C8 */  lw    $v0, 0xc8($sp)
/* 01DDA4 8001D1A4 3C080100 */  lui   $t0, 0x100
/* 01DDA8 8001D1A8 46203102 */  mul.d $f4, $f6, $f0
/* 01DDAC 8001D1AC C7060000 */  lwc1  $f6, ($t8)
/* 01DDB0 8001D1B0 3C063F80 */  lui   $a2, 0x3f80
/* 01DDB4 8001D1B4 46245200 */  add.d $f8, $f10, $f4
/* 01DDB8 8001D1B8 460032A1 */  cvt.d.s $f10, $f6
/* 01DDBC 8001D1BC C4860000 */  lwc1  $f6, ($a0)
/* 01DDC0 8001D1C0 462A4101 */  sub.d $f4, $f8, $f10
/* 01DDC4 8001D1C4 27A4009C */  addiu $a0, $sp, 0x9c
/* 01DDC8 8001D1C8 46003221 */  cvt.d.s $f8, $f6
/* 01DDCC 8001D1CC C7A60050 */  lwc1  $f6, 0x50($sp)
/* 01DDD0 8001D1D0 46244280 */  add.d $f10, $f8, $f4
/* 01DDD4 8001D1D4 44814000 */  mtc1  $at, $f8
/* 01DDD8 8001D1D8 00000000 */  nop
/* 01DDDC 8001D1DC 46083103 */  div.s $f4, $f6, $f8
/* 01DDE0 8001D1E0 46002221 */  cvt.d.s $f8, $f4
/* 01DDE4 8001D1E4 46285100 */  add.d $f4, $f10, $f8
/* 01DDE8 8001D1E8 462022A0 */  cvt.s.d $f10, $f4
/* 01DDEC 8001D1EC C7A4005C */  lwc1  $f4, 0x5c($sp)
/* 01DDF0 8001D1F0 E7AA0094 */  swc1  $f10, 0x94($sp)
/* 01DDF4 8001D1F4 C6280038 */  lwc1  $f8, 0x38($s1)
/* 01DDF8 8001D1F8 46044280 */  add.s $f10, $f8, $f4
/* 01DDFC 8001D1FC C7280000 */  lwc1  $f8, ($t9)
/* 01DE00 8001D200 460A4200 */  add.s $f8, $f8, $f10
/* 01DE04 8001D204 E7A80098 */  swc1  $f8, 0x98($sp)
/* 01DE08 8001D208 C62A003C */  lwc1  $f10, 0x3c($s1)
/* 01DE0C 8001D20C E7AA0084 */  swc1  $f10, 0x84($sp)
/* 01DE10 8001D210 C6280040 */  lwc1  $f8, 0x40($s1)
/* 01DE14 8001D214 86090DD2 */  lh    $t1, 0xdd2($s0)
/* 01DE18 8001D218 460042A1 */  cvt.d.s $f10, $f8
/* 01DE1C 8001D21C 44894000 */  mtc1  $t1, $f8
/* 01DE20 8001D220 00000000 */  nop
/* 01DE24 8001D224 46804221 */  cvt.d.w $f8, $f8
/* 01DE28 8001D228 46204202 */  mul.d $f8, $f8, $f0
/* 01DE2C 8001D22C 44800000 */  mtc1  $zero, $f0
/* 01DE30 8001D230 00000000 */  nop
/* 01DE34 8001D234 44050000 */  mfc1  $a1, $f0
/* 01DE38 8001D238 44070000 */  mfc1  $a3, $f0
/* 01DE3C 8001D23C 46285280 */  add.d $f10, $f10, $f8
/* 01DE40 8001D240 46003221 */  cvt.d.s $f8, $f6
/* 01DE44 8001D244 46285180 */  add.d $f6, $f10, $f8
/* 01DE48 8001D248 462032A0 */  cvt.s.d $f10, $f6
/* 01DE4C 8001D24C E7AA0088 */  swc1  $f10, 0x88($sp)
/* 01DE50 8001D250 C6280044 */  lwc1  $f8, 0x44($s1)
/* 01DE54 8001D254 C54A0000 */  lwc1  $f10, ($t2)
/* 01DE58 8001D258 46044180 */  add.s $f6, $f8, $f4
/* 01DE5C 8001D25C 460A3201 */  sub.s $f8, $f6, $f10
/* 01DE60 8001D260 E7A8008C */  swc1  $f8, 0x8c($sp)
/* 01DE64 8001D264 C624000C */  lwc1  $f4, 0xc($s1)
/* 01DE68 8001D268 E4440000 */  swc1  $f4, ($v0)
/* 01DE6C 8001D26C C6260010 */  lwc1  $f6, 0x10($s1)
/* 01DE70 8001D270 E4460004 */  swc1  $f6, 4($v0)
/* 01DE74 8001D274 C62A0014 */  lwc1  $f10, 0x14($s1)
/* 01DE78 8001D278 E44A0008 */  swc1  $f10, 8($v0)
/* 01DE7C 8001D27C 8E0B00BC */  lw    $t3, 0xbc($s0)
/* 01DE80 8001D280 01686024 */  and   $t4, $t3, $t0
/* 01DE84 8001D284 150C0005 */  bne   $t0, $t4, .L8001D29C
/* 01DE88 8001D288 3C014040 */   li    $at, 0x40400000 # 3.000000
/* 01DE8C 8001D28C 44812000 */  mtc1  $at, $f4
/* 01DE90 8001D290 C7A8008C */  lwc1  $f8, 0x8c($sp)
/* 01DE94 8001D294 46044183 */  div.s $f6, $f8, $f4
/* 01DE98 8001D298 E7A6008C */  swc1  $f6, 0x8c($sp)
.L8001D29C:
/* 01DE9C 8001D29C 87AD00DE */  lh    $t5, 0xde($sp)
/* 01DEA0 8001D2A0 AFA3003C */  sw    $v1, 0x3c($sp)
/* 01DEA4 8001D2A4 0C0AD950 */  jal   func_802B6540
/* 01DEA8 8001D2A8 AFAD0010 */   sw    $t5, 0x10($sp)
/* 01DEAC 8001D2AC 27A40084 */  addiu $a0, $sp, 0x84
/* 01DEB0 8001D2B0 0C0AD8EE */  jal   func_802B63B8
/* 01DEB4 8001D2B4 27A5009C */   addiu $a1, $sp, 0x9c
/* 01DEB8 8001D2B8 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 01DEBC 8001D2BC C6080014 */  lwc1  $f8, 0x14($s0)
/* 01DEC0 8001D2C0 C7A4008C */  lwc1  $f4, 0x8c($sp)
/* 01DEC4 8001D2C4 C606001C */  lwc1  $f6, 0x1c($s0)
/* 01DEC8 8001D2C8 46085300 */  add.s $f12, $f10, $f8
/* 01DECC 8001D2CC C6080018 */  lwc1  $f8, 0x18($s0)
/* 01DED0 8001D2D0 C7AA0088 */  lwc1  $f10, 0x88($sp)
/* 01DED4 8001D2D4 46062380 */  add.s $f14, $f4, $f6
/* 01DED8 8001D2D8 C624000C */  lwc1  $f4, 0xc($s1)
/* 01DEDC 8001D2DC 8FA3003C */  lw    $v1, 0x3c($sp)
/* 01DEE0 8001D2E0 46085400 */  add.s $f16, $f10, $f8
/* 01DEE4 8001D2E4 8FA200C8 */  lw    $v0, 0xc8($sp)
/* 01DEE8 8001D2E8 C46A0000 */  lwc1  $f10, ($v1)
/* 01DEEC 8001D2EC 46046181 */  sub.s $f6, $f12, $f4
/* 01DEF0 8001D2F0 C4440000 */  lwc1  $f4, ($v0)
/* 01DEF4 8001D2F4 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 01DEF8 8001D2F8 27A40090 */  addiu $a0, $sp, 0x90
/* 01DEFC 8001D2FC 460A3202 */  mul.s $f8, $f6, $f10
/* 01DF00 8001D300 27A5009C */  addiu $a1, $sp, 0x9c
/* 01DF04 8001D304 46082180 */  add.s $f6, $f4, $f8
/* 01DF08 8001D308 E4460000 */  swc1  $f6, ($v0)
/* 01DF0C 8001D30C C62A0014 */  lwc1  $f10, 0x14($s1)
/* 01DF10 8001D310 C4680000 */  lwc1  $f8, ($v1)
/* 01DF14 8001D314 460A7101 */  sub.s $f4, $f14, $f10
/* 01DF18 8001D318 C44A0008 */  lwc1  $f10, 8($v0)
/* 01DF1C 8001D31C 46082182 */  mul.s $f6, $f4, $f8
/* 01DF20 8001D320 44814000 */  mtc1  $at, $f8
/* 01DF24 8001D324 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 01DF28 8001D328 46065100 */  add.s $f4, $f10, $f6
/* 01DF2C 8001D32C 44813000 */  mtc1  $at, $f6
/* 01DF30 8001D330 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 01DF34 8001D334 E4440008 */  swc1  $f4, 8($v0)
/* 01DF38 8001D338 C60A0094 */  lwc1  $f10, 0x94($s0)
/* 01DF3C 8001D33C 46065103 */  div.s $f4, $f10, $f6
/* 01DF40 8001D340 44815000 */  mtc1  $at, $f10
/* 01DF44 8001D344 00000000 */  nop
/* 01DF48 8001D348 460A2182 */  mul.s $f6, $f4, $f10
/* 01DF4C 8001D34C 4608303E */  c.le.s $f6, $f8
/* 01DF50 8001D350 00000000 */  nop
/* 01DF54 8001D354 45020013 */  bc1fl .L8001D3A4
/* 01DF58 8001D358 C6280010 */   lwc1  $f8, 0x10($s1)
/* 01DF5C 8001D35C 8E0E00BC */  lw    $t6, 0xbc($s0)
/* 01DF60 8001D360 24010002 */  li    $at, 2
/* 01DF64 8001D364 31CF0002 */  andi  $t7, $t6, 2
/* 01DF68 8001D368 55E1000E */  bnel  $t7, $at, .L8001D3A4
/* 01DF6C 8001D36C C6280010 */   lwc1  $f8, 0x10($s1)
/* 01DF70 8001D370 C6240010 */  lwc1  $f4, 0x10($s1)
/* 01DF74 8001D374 3C01800F */  lui   $at, %hi(D_800ED568)
/* 01DF78 8001D378 D426D568 */  ldc1  $f6, %lo(D_800ED568)($at)
/* 01DF7C 8001D37C 46048281 */  sub.s $f10, $f16, $f4
/* 01DF80 8001D380 46005221 */  cvt.d.s $f8, $f10
/* 01DF84 8001D384 C44A0004 */  lwc1  $f10, 4($v0)
/* 01DF88 8001D388 46264102 */  mul.d $f4, $f8, $f6
/* 01DF8C 8001D38C 46005221 */  cvt.d.s $f8, $f10
/* 01DF90 8001D390 46244180 */  add.d $f6, $f8, $f4
/* 01DF94 8001D394 462032A0 */  cvt.s.d $f10, $f6
/* 01DF98 8001D398 1000000D */  b     .L8001D3D0
/* 01DF9C 8001D39C E44A0004 */   swc1  $f10, 4($v0)
/* 01DFA0 8001D3A0 C6280010 */  lwc1  $f8, 0x10($s1)
.L8001D3A4:
/* 01DFA4 8001D3A4 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 01DFA8 8001D3A8 44815800 */  mtc1  $at, $f11
/* 01DFAC 8001D3AC 46088101 */  sub.s $f4, $f16, $f8
/* 01DFB0 8001D3B0 44805000 */  mtc1  $zero, $f10
/* 01DFB4 8001D3B4 460021A1 */  cvt.d.s $f6, $f4
/* 01DFB8 8001D3B8 C4440004 */  lwc1  $f4, 4($v0)
/* 01DFBC 8001D3BC 462A3202 */  mul.d $f8, $f6, $f10
/* 01DFC0 8001D3C0 460021A1 */  cvt.d.s $f6, $f4
/* 01DFC4 8001D3C4 46283280 */  add.d $f10, $f6, $f8
/* 01DFC8 8001D3C8 46205120 */  cvt.s.d $f4, $f10
/* 01DFCC 8001D3CC E4440004 */  swc1  $f4, 4($v0)
.L8001D3D0:
/* 01DFD0 8001D3D0 0C0AD8EE */  jal   func_802B63B8
/* 01DFD4 8001D3D4 AFA3003C */   sw    $v1, 0x3c($sp)
/* 01DFD8 8001D3D8 8E1800BC */  lw    $t8, 0xbc($s0)
/* 01DFDC 8001D3DC C7B20090 */  lwc1  $f18, 0x90($sp)
/* 01DFE0 8001D3E0 C6100014 */  lwc1  $f16, 0x14($s0)
/* 01DFE4 8001D3E4 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* 01DFE8 8001D3E8 C608001C */  lwc1  $f8, 0x1c($s0)
/* 01DFEC 8001D3EC 46109300 */  add.s $f12, $f18, $f16
/* 01DFF0 8001D3F0 3C020100 */  lui   $v0, 0x100
/* 01DFF4 8001D3F4 0302C824 */  and   $t9, $t8, $v0
/* 01DFF8 8001D3F8 46085380 */  add.s $f14, $f10, $f8
/* 01DFFC 8001D3FC 10590005 */  beq   $v0, $t9, .L8001D414
/* 01E000 8001D400 8FA3003C */   lw    $v1, 0x3c($sp)
/* 01E004 8001D404 C7A60094 */  lwc1  $f6, 0x94($sp)
/* 01E008 8001D408 C6080018 */  lwc1  $f8, 0x18($s0)
/* 01E00C 8001D40C 10000006 */  b     .L8001D428
/* 01E010 8001D410 46083400 */   add.s $f16, $f6, $f8
.L8001D414:
/* 01E014 8001D414 C60A0074 */  lwc1  $f10, 0x74($s0)
/* 01E018 8001D418 C6040070 */  lwc1  $f4, 0x70($s0)
/* 01E01C 8001D41C C7A80094 */  lwc1  $f8, 0x94($sp)
/* 01E020 8001D420 46045180 */  add.s $f6, $f10, $f4
/* 01E024 8001D424 46064400 */  add.s $f16, $f8, $f6
.L8001D428:
/* 01E028 8001D428 C6200000 */  lwc1  $f0, ($s1)
/* 01E02C 8001D42C C46A0000 */  lwc1  $f10, ($v1)
/* 01E030 8001D430 8FA900CC */  lw    $t1, 0xcc($sp)
/* 01E034 8001D434 46006101 */  sub.s $f4, $f12, $f0
/* 01E038 8001D438 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 01E03C 8001D43C 46045202 */  mul.s $f8, $f10, $f4
/* 01E040 8001D440 46004180 */  add.s $f6, $f8, $f0
/* 01E044 8001D444 E5260000 */  swc1  $f6, ($t1)
/* 01E048 8001D448 C6220008 */  lwc1  $f2, 8($s1)
/* 01E04C 8001D44C C46A0000 */  lwc1  $f10, ($v1)
/* 01E050 8001D450 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* 01E054 8001D454 46027101 */  sub.s $f4, $f14, $f2
/* 01E058 8001D458 46045202 */  mul.s $f8, $f10, $f4
/* 01E05C 8001D45C 44815000 */  mtc1  $at, $f10
/* 01E060 8001D460 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 01E064 8001D464 46024180 */  add.s $f6, $f8, $f2
/* 01E068 8001D468 44814000 */  mtc1  $at, $f8
/* 01E06C 8001D46C 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 01E070 8001D470 E5460000 */  swc1  $f6, ($t2)
/* 01E074 8001D474 C6040094 */  lwc1  $f4, 0x94($s0)
/* 01E078 8001D478 46082183 */  div.s $f6, $f4, $f8
/* 01E07C 8001D47C 44812000 */  mtc1  $at, $f4
/* 01E080 8001D480 00000000 */  nop
/* 01E084 8001D484 46043202 */  mul.s $f8, $f6, $f4
/* 01E088 8001D488 460A403E */  c.le.s $f8, $f10
/* 01E08C 8001D48C 00000000 */  nop
/* 01E090 8001D490 45020013 */  bc1fl .L8001D4E0
/* 01E094 8001D494 C6200004 */   lwc1  $f0, 4($s1)
/* 01E098 8001D498 8E0B00BC */  lw    $t3, 0xbc($s0)
/* 01E09C 8001D49C 24010002 */  li    $at, 2
/* 01E0A0 8001D4A0 316C0002 */  andi  $t4, $t3, 2
/* 01E0A4 8001D4A4 5581000E */  bnel  $t4, $at, .L8001D4E0
/* 01E0A8 8001D4A8 C6200004 */   lwc1  $f0, 4($s1)
/* 01E0AC 8001D4AC C6200004 */  lwc1  $f0, 4($s1)
/* 01E0B0 8001D4B0 3C01800F */  lui   $at, %hi(D_800ED570)
/* 01E0B4 8001D4B4 D42AD570 */  ldc1  $f10, %lo(D_800ED570)($at)
/* 01E0B8 8001D4B8 46008181 */  sub.s $f6, $f16, $f0
/* 01E0BC 8001D4BC 8FA200D0 */  lw    $v0, 0xd0($sp)
/* 01E0C0 8001D4C0 46003121 */  cvt.d.s $f4, $f6
/* 01E0C4 8001D4C4 460001A1 */  cvt.d.s $f6, $f0
/* 01E0C8 8001D4C8 462A2202 */  mul.d $f8, $f4, $f10
/* 01E0CC 8001D4CC 46264100 */  add.d $f4, $f8, $f6
/* 01E0D0 8001D4D0 462022A0 */  cvt.s.d $f10, $f4
/* 01E0D4 8001D4D4 1000000C */  b     .L8001D508
/* 01E0D8 8001D4D8 E44A0000 */   swc1  $f10, ($v0)
/* 01E0DC 8001D4DC C6200004 */  lwc1  $f0, 4($s1)
.L8001D4E0:
/* 01E0E0 8001D4E0 3C01800F */  lui   $at, %hi(D_800ED578)
/* 01E0E4 8001D4E4 D424D578 */  ldc1  $f4, %lo(D_800ED578)($at)
/* 01E0E8 8001D4E8 46008201 */  sub.s $f8, $f16, $f0
/* 01E0EC 8001D4EC 8FA200D0 */  lw    $v0, 0xd0($sp)
/* 01E0F0 8001D4F0 460041A1 */  cvt.d.s $f6, $f8
/* 01E0F4 8001D4F4 46000221 */  cvt.d.s $f8, $f0
/* 01E0F8 8001D4F8 46243282 */  mul.d $f10, $f6, $f4
/* 01E0FC 8001D4FC 46285180 */  add.d $f6, $f10, $f8
/* 01E100 8001D500 46203120 */  cvt.s.d $f4, $f6
/* 01E104 8001D504 E4440000 */  swc1  $f4, ($v0)
.L8001D508:
/* 01E108 8001D508 960D00DE */  lhu   $t5, 0xde($s0)
/* 01E10C 8001D50C 31AE0001 */  andi  $t6, $t5, 1
/* 01E110 8001D510 11C00004 */  beqz  $t6, .L8001D524
/* 01E114 8001D514 3C018016 */   lui   $at, %hi(D_801652A0)
/* 01E118 8001D518 00320821 */  addu  $at, $at, $s2
/* 01E11C 8001D51C C42A52A0 */  lwc1  $f10, %lo(D_801652A0)($at)
/* 01E120 8001D520 E44A0000 */  swc1  $f10, ($v0)
.L8001D524:
/* 01E124 8001D524 8FBF002C */  lw    $ra, 0x2c($sp)
/* 01E128 8001D528 8FB00020 */  lw    $s0, 0x20($sp)
/* 01E12C 8001D52C 8FB10024 */  lw    $s1, 0x24($sp)
/* 01E130 8001D530 8FB20028 */  lw    $s2, 0x28($sp)
/* 01E134 8001D534 03E00008 */  jr    $ra
/* 01E138 8001D538 27BD00C0 */   addiu $sp, $sp, 0xc0
