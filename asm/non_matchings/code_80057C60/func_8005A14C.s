.section .late_rodata

glabel D_800EE1E0
.float 0.6

.section .text

glabel func_8005A14C
/* 05AD4C 8005A14C 000470C0 */  sll   $t6, $a0, 3
/* 05AD50 8005A150 01C47023 */  subu  $t6, $t6, $a0
/* 05AD54 8005A154 000E7100 */  sll   $t6, $t6, 4
/* 05AD58 8005A158 0004C880 */  sll   $t9, $a0, 2
/* 05AD5C 8005A15C 3C098016 */  lui   $t1, %hi(gLapCountByPlayerId)
/* 05AD60 8005A160 01C47023 */  subu  $t6, $t6, $a0
/* 05AD64 8005A164 3C0F800E */  lui   $t7, %hi(gPlayerOne) # $t7, 0x800e
/* 05AD68 8005A168 01394821 */  addu  $t1, $t1, $t9
/* 05AD6C 8005A16C 8DEFC4DC */  lw    $t7, %lo(gPlayerOne)($t7)
/* 05AD70 8005A170 8D294390 */  lw    $t1, %lo(gLapCountByPlayerId)($t1)
/* 05AD74 8005A174 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 05AD78 8005A178 000E7080 */  sll   $t6, $t6, 2
/* 05AD7C 8005A17C 01C47023 */  subu  $t6, $t6, $a0
/* 05AD80 8005A180 000E70C0 */  sll   $t6, $t6, 3
/* 05AD84 8005A184 AFBF001C */  sw    $ra, 0x1c($sp)
/* 05AD88 8005A188 AFB00018 */  sw    $s0, 0x18($sp)
/* 05AD8C 8005A18C 01CF4021 */  addu  $t0, $t6, $t7
/* 05AD90 8005A190 AFA90028 */  sw    $t1, 0x28($sp)
/* 05AD94 8005A194 950A0000 */  lhu   $t2, ($t0)
/* 05AD98 8005A198 0004C140 */  sll   $t8, $a0, 5
/* 05AD9C 8005A19C 3C078019 */  lui   $a3, %hi(D_8018CE24)
/* 05ADA0 8005A1A0 00F83821 */  addu  $a3, $a3, $t8
/* 05ADA4 8005A1A4 314B8000 */  andi  $t3, $t2, 0x8000
/* 05ADA8 8005A1A8 11600070 */  beqz  $t3, .L8005A36C
/* 05ADAC 8005A1AC 8CE7CE24 */   lw    $a3, %lo(D_8018CE24)($a3)
/* 05ADB0 8005A1B0 8D0200BC */  lw    $v0, 0xbc($t0)
/* 05ADB4 8005A1B4 3C010002 */  lui   $at, (0x000204C0 >> 16) # lui $at, 2
/* 05ADB8 8005A1B8 342104C0 */  ori   $at, (0x000204C0 & 0xFFFF) # ori $at, $at, 0x4c0
/* 05ADBC 8005A1BC 00416024 */  and   $t4, $v0, $at
/* 05ADC0 8005A1C0 1180000C */  beqz  $t4, .L8005A1F4
/* 05ADC4 8005A1C4 0007C8C0 */   sll   $t9, $a3, 3
/* 05ADC8 8005A1C8 000768C0 */  sll   $t5, $a3, 3
/* 05ADCC 8005A1CC 01A76823 */  subu  $t5, $t5, $a3
/* 05ADD0 8005A1D0 3C0E8016 */  lui   $t6, %hi(D_80165C18) # $t6, 0x8016
/* 05ADD4 8005A1D4 25CE5C18 */  addiu $t6, %lo(D_80165C18) # addiu $t6, $t6, 0x5c18
/* 05ADD8 8005A1D8 000D6940 */  sll   $t5, $t5, 5
/* 05ADDC 8005A1DC 01AE8021 */  addu  $s0, $t5, $t6
/* 05ADE0 8005A1E0 960F00C2 */  lhu   $t7, 0xc2($s0)
/* 05ADE4 8005A1E4 25F81000 */  addiu $t8, $t7, 0x1000
/* 05ADE8 8005A1E8 A61800C2 */  sh    $t8, 0xc2($s0)
/* 05ADEC 8005A1EC 1000000B */  b     .L8005A21C
/* 05ADF0 8005A1F0 8D0200BC */   lw    $v0, 0xbc($t0)
.L8005A1F4:
/* 05ADF4 8005A1F4 0327C823 */  subu  $t9, $t9, $a3
/* 05ADF8 8005A1F8 3C098016 */  lui   $t1, %hi(D_80165C18) # $t1, 0x8016
/* 05ADFC 8005A1FC 25295C18 */  addiu $t1, %lo(D_80165C18) # addiu $t1, $t1, 0x5c18
/* 05AE00 8005A200 0019C940 */  sll   $t9, $t9, 5
/* 05AE04 8005A204 03298021 */  addu  $s0, $t9, $t1
/* 05AE08 8005A208 960300C2 */  lhu   $v1, 0xc2($s0)
/* 05AE0C 8005A20C 10600003 */  beqz  $v1, .L8005A21C
/* 05AE10 8005A210 246A1000 */   addiu $t2, $v1, 0x1000
/* 05AE14 8005A214 A60A00C2 */  sh    $t2, 0xc2($s0)
/* 05AE18 8005A218 8D0200BC */  lw    $v0, 0xbc($t0)
.L8005A21C:
/* 05AE1C 8005A21C 00025840 */  sll   $t3, $v0, 1
/* 05AE20 8005A220 0561000B */  bgez  $t3, .L8005A250
/* 05AE24 8005A224 02002025 */   move  $a0, $s0
/* 05AE28 8005A228 3C053E99 */  lui   $a1, (0x3E99999A >> 16) # lui $a1, 0x3e99
/* 05AE2C 8005A22C 3C063CA3 */  lui   $a2, (0x3CA3D70A >> 16) # lui $a2, 0x3ca3
/* 05AE30 8005A230 34C6D70A */  ori   $a2, (0x3CA3D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 05AE34 8005A234 34A5999A */  ori   $a1, (0x3E99999A & 0xFFFF) # ori $a1, $a1, 0x999a
/* 05AE38 8005A238 02002025 */  move  $a0, $s0
/* 05AE3C 8005A23C AFA7002C */  sw    $a3, 0x2c($sp)
/* 05AE40 8005A240 0C0104EE */  jal   f32_step_towards
/* 05AE44 8005A244 AFA80024 */   sw    $t0, 0x24($sp)
/* 05AE48 8005A248 10000009 */  b     .L8005A270
/* 05AE4C 8005A24C 8FA80024 */   lw    $t0, 0x24($sp)
.L8005A250:
/* 05AE50 8005A250 3C053F19 */  lui   $a1, (0x3F19999A >> 16) # lui $a1, 0x3f19
/* 05AE54 8005A254 3C063CA3 */  lui   $a2, (0x3CA3D70A >> 16) # lui $a2, 0x3ca3
/* 05AE58 8005A258 34C6D70A */  ori   $a2, (0x3CA3D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
/* 05AE5C 8005A25C 34A5999A */  ori   $a1, (0x3F19999A & 0xFFFF) # ori $a1, $a1, 0x999a
/* 05AE60 8005A260 AFA7002C */  sw    $a3, 0x2c($sp)
/* 05AE64 8005A264 0C0104EE */  jal   f32_step_towards
/* 05AE68 8005A268 AFA80024 */   sw    $t0, 0x24($sp)
/* 05AE6C 8005A26C 8FA80024 */  lw    $t0, 0x24($sp)
.L8005A270:
/* 05AE70 8005A270 8D0C00BC */  lw    $t4, 0xbc($t0)
/* 05AE74 8005A274 260400BE */  addiu $a0, $s0, 0xbe
/* 05AE78 8005A278 00002825 */  move  $a1, $zero
/* 05AE7C 8005A27C 000C6940 */  sll   $t5, $t4, 5
/* 05AE80 8005A280 05A10008 */  bgez  $t5, .L8005A2A4
/* 05AE84 8005A284 24060100 */   li    $a2, 256
/* 05AE88 8005A288 260400BE */  addiu $a0, $s0, 0xbe
/* 05AE8C 8005A28C 24050C00 */  li    $a1, 3072
/* 05AE90 8005A290 24060100 */  li    $a2, 256
/* 05AE94 8005A294 0C01040A */  jal   u16_step_up_towards
/* 05AE98 8005A298 AFA80024 */   sw    $t0, 0x24($sp)
/* 05AE9C 8005A29C 10000004 */  b     .L8005A2B0
/* 05AEA0 8005A2A0 8FA80024 */   lw    $t0, 0x24($sp)
.L8005A2A4:
/* 05AEA4 8005A2A4 0C01042F */  jal   u16_step_down_towards
/* 05AEA8 8005A2A8 AFA80024 */   sw    $t0, 0x24($sp)
/* 05AEAC 8005A2AC 8FA80024 */  lw    $t0, 0x24($sp)
.L8005A2B0:
/* 05AEB0 8005A2B0 8D0E00BC */  lw    $t6, 0xbc($t0)
/* 05AEB4 8005A2B4 3C010300 */  lui   $at, 0x300
/* 05AEB8 8005A2B8 2604002C */  addiu $a0, $s0, 0x2c
/* 05AEBC 8005A2BC 01C17824 */  and   $t7, $t6, $at
/* 05AEC0 8005A2C0 11E00009 */  beqz  $t7, .L8005A2E8
/* 05AEC4 8005A2C4 24050000 */   li    $a1, 0
/* 05AEC8 8005A2C8 8FA4002C */  lw    $a0, 0x2c($sp)
/* 05AECC 8005A2CC 3C0540C0 */  lui   $a1, 0x40c0
/* 05AED0 8005A2D0 3C063FC0 */  lui   $a2, 0x3fc0
/* 05AED4 8005A2D4 24070000 */  li    $a3, 0
/* 05AED8 8005A2D8 0C021F49 */  jal   func_80087D24
/* 05AEDC 8005A2DC AFA80024 */   sw    $t0, 0x24($sp)
/* 05AEE0 8005A2E0 10000005 */  b     .L8005A2F8
/* 05AEE4 8005A2E4 8FA80024 */   lw    $t0, 0x24($sp)
.L8005A2E8:
/* 05AEE8 8005A2E8 3C063F80 */  lui   $a2, 0x3f80
/* 05AEEC 8005A2EC 0C0104EE */  jal   f32_step_towards
/* 05AEF0 8005A2F0 AFA80024 */   sw    $t0, 0x24($sp)
/* 05AEF4 8005A2F4 8FA80024 */  lw    $t0, 0x24($sp)
.L8005A2F8:
/* 05AEF8 8005A2F8 95180000 */  lhu   $t8, ($t0)
/* 05AEFC 8005A2FC 240B0050 */  li    $t3, 80
/* 05AF00 8005A300 33190100 */  andi  $t9, $t8, 0x100
/* 05AF04 8005A304 17200006 */  bnez  $t9, .L8005A320
/* 05AF08 8005A308 00000000 */   nop
/* 05AF0C 8005A30C 8D0900BC */  lw    $t1, 0xbc($t0)
/* 05AF10 8005A310 240C00FF */  li    $t4, 255
/* 05AF14 8005A314 00095000 */  sll   $t2, $t1, 0
/* 05AF18 8005A318 05430004 */  bgezl $t2, .L8005A32C
/* 05AF1C 8005A31C A60C00A0 */   sh    $t4, 0xa0($s0)
.L8005A320:
/* 05AF20 8005A320 10000002 */  b     .L8005A32C
/* 05AF24 8005A324 A60B00A0 */   sh    $t3, 0xa0($s0)
/* 05AF28 8005A328 A60C00A0 */  sh    $t4, 0xa0($s0)
.L8005A32C:
/* 05AF2C 8005A32C 8FAD0028 */  lw    $t5, 0x28($sp)
/* 05AF30 8005A330 29A10003 */  slti  $at, $t5, 3
/* 05AF34 8005A334 5420000E */  bnel  $at, $zero, .L8005A370
/* 05AF38 8005A338 8FBF001C */   lw    $ra, 0x1c($sp)
/* 05AF3C 8005A33C 44800000 */  mtc1  $zero, $f0
/* 05AF40 8005A340 A60000C2 */  sh    $zero, 0xc2($s0)
/* 05AF44 8005A344 A60000C0 */  sh    $zero, 0xc0($s0)
/* 05AF48 8005A348 A60000BE */  sh    $zero, 0xbe($s0)
/* 05AF4C 8005A34C 3C01800F */  lui   $at, %hi(D_800EE1E0) # $at, 0x800f
/* 05AF50 8005A350 E6000030 */  swc1  $f0, 0x30($s0)
/* 05AF54 8005A354 E600002C */  swc1  $f0, 0x2c($s0)
/* 05AF58 8005A358 E6000028 */  swc1  $f0, 0x28($s0)
/* 05AF5C 8005A35C C424E1E0 */  lwc1  $f4, %lo(D_800EE1E0)($at)
/* 05AF60 8005A360 240E00FF */  li    $t6, 255
/* 05AF64 8005A364 A60E00A0 */  sh    $t6, 0xa0($s0)
/* 05AF68 8005A368 E6040000 */  swc1  $f4, ($s0)
.L8005A36C:
/* 05AF6C 8005A36C 8FBF001C */  lw    $ra, 0x1c($sp)
.L8005A370:
/* 05AF70 8005A370 8FB00018 */  lw    $s0, 0x18($sp)
/* 05AF74 8005A374 27BD0030 */  addiu $sp, $sp, 0x30
/* 05AF78 8005A378 03E00008 */  jr    $ra
/* 05AF7C 8005A37C 00000000 */   nop
