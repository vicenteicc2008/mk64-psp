glabel func_800BD578
/* 0BE178 800BD578 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0BE17C 800BD57C AFBF003C */  sw    $ra, 0x3c($sp)
/* 0BE180 800BD580 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0BE184 800BD584 AFB30024 */  sw    $s3, 0x24($sp)
/* 0BE188 800BD588 00A09825 */  move  $s3, $a1
/* 0BE18C 800BD58C 0080A825 */  move  $s5, $a0
/* 0BE190 800BD590 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0BE194 800BD594 AFB70034 */  sw    $s7, 0x34($sp)
/* 0BE198 800BD598 AFB60030 */  sw    $s6, 0x30($sp)
/* 0BE19C 800BD59C AFB40028 */  sw    $s4, 0x28($sp)
/* 0BE1A0 800BD5A0 AFB20020 */  sw    $s2, 0x20($sp)
/* 0BE1A4 800BD5A4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0BE1A8 800BD5A8 0C02F506 */  jal   func_800BD418
/* 0BE1AC 800BD5AC AFB00018 */   sw    $s0, 0x18($sp)
/* 0BE1B0 800BD5B0 0000A025 */  move  $s4, $zero
/* 0BE1B4 800BD5B4 1A600033 */  blez  $s3, .L800BD684
/* 0BE1B8 800BD5B8 00008025 */   move  $s0, $zero
/* 0BE1BC 800BD5BC 241E0002 */  li    $fp, 2
/* 0BE1C0 800BD5C0 24170001 */  li    $s7, 1
/* 0BE1C4 800BD5C4 24160004 */  li    $s6, 4
/* 0BE1C8 800BD5C8 8FB20044 */  lw    $s2, 0x44($sp)
/* 0BE1CC 800BD5CC 8FB10048 */  lw    $s1, 0x48($sp)
.L800BD5D0:
/* 0BE1D0 800BD5D0 5296002D */  beql  $s4, $s6, .L800BD688
/* 0BE1D4 800BD5D4 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0BE1D8 800BD5D8 12800009 */  beqz  $s4, .L800BD600
/* 0BE1DC 800BD5DC 00000000 */   nop   
/* 0BE1E0 800BD5E0 1297000B */  beq   $s4, $s7, .L800BD610
/* 0BE1E4 800BD5E4 00000000 */   nop   
/* 0BE1E8 800BD5E8 129E000D */  beq   $s4, $fp, .L800BD620
/* 0BE1EC 800BD5EC 24010003 */   li    $at, 3
/* 0BE1F0 800BD5F0 1281000F */  beq   $s4, $at, .L800BD630
/* 0BE1F4 800BD5F4 00000000 */   nop   
/* 0BE1F8 800BD5F8 10000011 */  b     .L800BD640
/* 0BE1FC 800BD5FC 0213082A */   slt   $at, $s0, $s3
.L800BD600:
/* 0BE200 800BD600 3C11803B */  lui   $s1, %hi(D_803B5FC8) # $s1, 0x803b
/* 0BE204 800BD604 26315FC8 */  addiu $s1, %lo(D_803B5FC8) # addiu $s1, $s1, 0x5fc8
/* 0BE208 800BD608 1000000C */  b     .L800BD63C
/* 0BE20C 800BD60C 02A09025 */   move  $s2, $s5
.L800BD610:
/* 0BE210 800BD610 3C11803B */  lui   $s1, %hi(D_803B5FD8) # $s1, 0x803b
/* 0BE214 800BD614 26315FD8 */  addiu $s1, %lo(D_803B5FD8) # addiu $s1, $s1, 0x5fd8
/* 0BE218 800BD618 10000008 */  b     .L800BD63C
/* 0BE21C 800BD61C 26B20010 */   addiu $s2, $s5, 0x10
.L800BD620:
/* 0BE220 800BD620 3C11803B */  lui   $s1, %hi(D_803B5FE8) # $s1, 0x803b
/* 0BE224 800BD624 26315FE8 */  addiu $s1, %lo(D_803B5FE8) # addiu $s1, $s1, 0x5fe8
/* 0BE228 800BD628 10000004 */  b     .L800BD63C
/* 0BE22C 800BD62C 26B20020 */   addiu $s2, $s5, 0x20
.L800BD630:
/* 0BE230 800BD630 3C11803B */  lui   $s1, %hi(D_803B5FF8) # $s1, 0x803b
/* 0BE234 800BD634 26315FF8 */  addiu $s1, %lo(D_803B5FF8) # addiu $s1, $s1, 0x5ff8
/* 0BE238 800BD638 26B20030 */  addiu $s2, $s5, 0x30
.L800BD63C:
/* 0BE23C 800BD63C 0213082A */  slt   $at, $s0, $s3
.L800BD640:
/* 0BE240 800BD640 5020000C */  beql  $at, $zero, .L800BD674
/* 0BE244 800BD644 0213082A */   slt   $at, $s0, $s3
.L800BD648:
/* 0BE248 800BD648 0C02FC11 */  jal   func_800BF044
/* 0BE24C 800BD64C 02202025 */   move  $a0, $s1
/* 0BE250 800BD650 10400007 */  beqz  $v0, .L800BD670
/* 0BE254 800BD654 00402825 */   move  $a1, $v0
/* 0BE258 800BD658 0C02FC01 */  jal   func_800BF004
/* 0BE25C 800BD65C 02402025 */   move  $a0, $s2
/* 0BE260 800BD660 26100001 */  addiu $s0, $s0, 1
/* 0BE264 800BD664 0213082A */  slt   $at, $s0, $s3
/* 0BE268 800BD668 1420FFF7 */  bnez  $at, .L800BD648
/* 0BE26C 800BD66C 00000000 */   nop   
.L800BD670:
/* 0BE270 800BD670 0213082A */  slt   $at, $s0, $s3
.L800BD674:
/* 0BE274 800BD674 1420FFD6 */  bnez  $at, .L800BD5D0
/* 0BE278 800BD678 26940001 */   addiu $s4, $s4, 1
/* 0BE27C 800BD67C AFB20044 */  sw    $s2, 0x44($sp)
/* 0BE280 800BD680 AFB10048 */  sw    $s1, 0x48($sp)
.L800BD684:
/* 0BE284 800BD684 8FBF003C */  lw    $ra, 0x3c($sp)
.L800BD688:
/* 0BE288 800BD688 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BE28C 800BD68C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0BE290 800BD690 8FB20020 */  lw    $s2, 0x20($sp)
/* 0BE294 800BD694 8FB30024 */  lw    $s3, 0x24($sp)
/* 0BE298 800BD698 8FB40028 */  lw    $s4, 0x28($sp)
/* 0BE29C 800BD69C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0BE2A0 800BD6A0 8FB60030 */  lw    $s6, 0x30($sp)
/* 0BE2A4 800BD6A4 8FB70034 */  lw    $s7, 0x34($sp)
/* 0BE2A8 800BD6A8 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0BE2AC 800BD6AC 03E00008 */  jr    $ra
/* 0BE2B0 800BD6B0 27BD0058 */   addiu $sp, $sp, 0x58
