glabel func_80086700
/* 087300 80086700 3C0E800E */  lui   $t6, %hi(gCCSelection) # $t6, 0x800e
/* 087304 80086704 8DCEC548 */  lw    $t6, %lo(gCCSelection)($t6)
/* 087308 80086708 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 08730C 8008670C AFB00018 */  sw    $s0, 0x18($sp)
/* 087310 80086710 29C10002 */  slti  $at, $t6, 2
/* 087314 80086714 00808025 */  move  $s0, $a0
/* 087318 80086718 1020002D */  beqz  $at, .L800867D0
/* 08731C 8008671C AFBF001C */   sw    $ra, 0x1c($sp)
/* 087320 80086720 3C028028 */  lui   $v0, %hi(D_802874F5) # $v0, 0x8028
/* 087324 80086724 804274F5 */  lb    $v0, %lo(D_802874F5)($v0)
/* 087328 80086728 0010C8C0 */  sll   $t9, $s0, 3
/* 08732C 8008672C 0330C823 */  subu  $t9, $t9, $s0
/* 087330 80086730 1040000E */  beqz  $v0, .L8008676C
/* 087334 80086734 0019C940 */   sll   $t9, $t9, 5
/* 087338 80086738 24010001 */  li    $at, 1
/* 08733C 8008673C 10410012 */  beq   $v0, $at, .L80086788
/* 087340 80086740 001050C0 */   sll   $t2, $s0, 3
/* 087344 80086744 24010002 */  li    $at, 2
/* 087348 80086748 10410018 */  beq   $v0, $at, .L800867AC
/* 08734C 8008674C 001068C0 */   sll   $t5, $s0, 3
/* 087350 80086750 000478C0 */  sll   $t7, $a0, 3
/* 087354 80086754 01E47823 */  subu  $t7, $t7, $a0
/* 087358 80086758 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 08735C 8008675C 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 087360 80086760 000F7940 */  sll   $t7, $t7, 5
/* 087364 80086764 10000045 */  b     .L8008687C
/* 087368 80086768 01F81021 */   addu  $v0, $t7, $t8
.L8008676C:
/* 08736C 8008676C 3C088016 */  lui   $t0, %hi(D_80165C18) # $t0, 0x8016
/* 087370 80086770 25085C18 */  addiu $t0, %lo(D_80165C18) # addiu $t0, $t0, 0x5c18
/* 087374 80086774 3C090B00 */  lui   $t1, %hi(D_0B0069D8) # $t1, 0xb00
/* 087378 80086778 252969D8 */  addiu $t1, %lo(D_0B0069D8) # addiu $t1, $t1, 0x69d8
/* 08737C 8008677C 03281021 */  addu  $v0, $t9, $t0
/* 087380 80086780 1000003E */  b     .L8008687C
/* 087384 80086784 AC490070 */   sw    $t1, 0x70($v0)
.L80086788:
/* 087388 80086788 01505023 */  subu  $t2, $t2, $s0
/* 08738C 8008678C 3C0B8016 */  lui   $t3, %hi(D_80165C18) # $t3, 0x8016
/* 087390 80086790 256B5C18 */  addiu $t3, %lo(D_80165C18) # addiu $t3, $t3, 0x5c18
/* 087394 80086794 000A5140 */  sll   $t2, $t2, 5
/* 087398 80086798 3C0C0B00 */  lui   $t4, %hi(D_0B006A78) # $t4, 0xb00
/* 08739C 8008679C 258C6A78 */  addiu $t4, %lo(D_0B006A78) # addiu $t4, $t4, 0x6a78
/* 0873A0 800867A0 014B1021 */  addu  $v0, $t2, $t3
/* 0873A4 800867A4 10000035 */  b     .L8008687C
/* 0873A8 800867A8 AC4C0070 */   sw    $t4, 0x70($v0)
.L800867AC:
/* 0873AC 800867AC 01B06823 */  subu  $t5, $t5, $s0
/* 0873B0 800867B0 3C0E8016 */  lui   $t6, %hi(D_80165C18) # $t6, 0x8016
/* 0873B4 800867B4 25CE5C18 */  addiu $t6, %lo(D_80165C18) # addiu $t6, $t6, 0x5c18
/* 0873B8 800867B8 000D6940 */  sll   $t5, $t5, 5
/* 0873BC 800867BC 3C0F0B00 */  lui   $t7, %hi(D_0B006B18) # $t7, 0xb00
/* 0873C0 800867C0 25EF6B18 */  addiu $t7, %lo(D_0B006B18) # addiu $t7, $t7, 0x6b18
/* 0873C4 800867C4 01AE1021 */  addu  $v0, $t5, $t6
/* 0873C8 800867C8 1000002C */  b     .L8008687C
/* 0873CC 800867CC AC4F0070 */   sw    $t7, 0x70($v0)
.L800867D0:
/* 0873D0 800867D0 3C028028 */  lui   $v0, %hi(D_802874F5) # $v0, 0x8028
/* 0873D4 800867D4 804274F5 */  lb    $v0, %lo(D_802874F5)($v0)
/* 0873D8 800867D8 1040000D */  beqz  $v0, .L80086810
/* 0873DC 800867DC 24010001 */   li    $at, 1
/* 0873E0 800867E0 10410015 */  beq   $v0, $at, .L80086838
/* 0873E4 800867E4 001058C0 */   sll   $t3, $s0, 3
/* 0873E8 800867E8 24010002 */  li    $at, 2
/* 0873EC 800867EC 1041001B */  beq   $v0, $at, .L8008685C
/* 0873F0 800867F0 001070C0 */   sll   $t6, $s0, 3
/* 0873F4 800867F4 0010C0C0 */  sll   $t8, $s0, 3
/* 0873F8 800867F8 0310C023 */  subu  $t8, $t8, $s0
/* 0873FC 800867FC 3C198016 */  lui   $t9, %hi(D_80165C18) # $t9, 0x8016
/* 087400 80086800 27395C18 */  addiu $t9, %lo(D_80165C18) # addiu $t9, $t9, 0x5c18
/* 087404 80086804 0018C140 */  sll   $t8, $t8, 5
/* 087408 80086808 1000001C */  b     .L8008687C
/* 08740C 8008680C 03191021 */   addu  $v0, $t8, $t9
.L80086810:
/* 087410 80086810 001040C0 */  sll   $t0, $s0, 3
/* 087414 80086814 01104023 */  subu  $t0, $t0, $s0
/* 087418 80086818 3C098016 */  lui   $t1, %hi(D_80165C18) # $t1, 0x8016
/* 08741C 8008681C 25295C18 */  addiu $t1, %lo(D_80165C18) # addiu $t1, $t1, 0x5c18
/* 087420 80086820 00084140 */  sll   $t0, $t0, 5
/* 087424 80086824 3C0A0B00 */  lui   $t2, %hi(D_0B006A28) # $t2, 0xb00
/* 087428 80086828 254A6A28 */  addiu $t2, %lo(D_0B006A28) # addiu $t2, $t2, 0x6a28
/* 08742C 8008682C 01091021 */  addu  $v0, $t0, $t1
/* 087430 80086830 10000012 */  b     .L8008687C
/* 087434 80086834 AC4A0070 */   sw    $t2, 0x70($v0)
.L80086838:
/* 087438 80086838 01705823 */  subu  $t3, $t3, $s0
/* 08743C 8008683C 3C0C8016 */  lui   $t4, %hi(D_80165C18) # $t4, 0x8016
/* 087440 80086840 258C5C18 */  addiu $t4, %lo(D_80165C18) # addiu $t4, $t4, 0x5c18
/* 087444 80086844 000B5940 */  sll   $t3, $t3, 5
/* 087448 80086848 3C0D0B00 */  lui   $t5, %hi(D_0B006AC8) # $t5, 0xb00
/* 08744C 8008684C 25AD6AC8 */  addiu $t5, %lo(D_0B006AC8) # addiu $t5, $t5, 0x6ac8
/* 087450 80086850 016C1021 */  addu  $v0, $t3, $t4
/* 087454 80086854 10000009 */  b     .L8008687C
/* 087458 80086858 AC4D0070 */   sw    $t5, 0x70($v0)
.L8008685C:
/* 08745C 8008685C 01D07023 */  subu  $t6, $t6, $s0
/* 087460 80086860 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 087464 80086864 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 087468 80086868 000E7140 */  sll   $t6, $t6, 5
/* 08746C 8008686C 3C180B00 */  lui   $t8, %hi(D_0B006B68) # $t8, 0xb00
/* 087470 80086870 27186B68 */  addiu $t8, %lo(D_0B006B68) # addiu $t8, $t8, 0x6b68
/* 087474 80086874 01CF1021 */  addu  $v0, $t6, $t7
/* 087478 80086878 AC580070 */  sw    $t8, 0x70($v0)
.L8008687C:
/* 08747C 8008687C 3C01800F */  lui   $at, %hi(D_800EF470) # $at, 0x800f
/* 087480 80086880 C424F470 */  lwc1  $f4, %lo(D_800EF470)($at)
/* 087484 80086884 3C198018 */  lui   $t9, %hi(D_80183F28) # $t9, 0x8018
/* 087488 80086888 3C098016 */  lui   $t1, %hi(D_80165C18) # $t1, 0x8016
/* 08748C 8008688C E4440000 */  swc1  $f4, ($v0)
/* 087490 80086890 8F393F28 */  lw    $t9, %lo(D_80183F28)($t9)
/* 087494 80086894 25295C18 */  addiu $t1, %lo(D_80165C18) # addiu $t1, $t1, 0x5c18
/* 087498 80086898 3C014030 */  li    $at, 0x40300000 # 2.750000
/* 08749C 8008689C 001940C0 */  sll   $t0, $t9, 3
/* 0874A0 800868A0 01194023 */  subu  $t0, $t0, $t9
/* 0874A4 800868A4 00084140 */  sll   $t0, $t0, 5
/* 0874A8 800868A8 01091821 */  addu  $v1, $t0, $t1
/* 0874AC 800868AC C4660008 */  lwc1  $f6, 8($v1)
/* 0874B0 800868B0 44815800 */  mtc1  $at, $f11
/* 0874B4 800868B4 44805000 */  mtc1  $zero, $f10
/* 0874B8 800868B8 46003221 */  cvt.d.s $f8, $f6
/* 0874BC 800868BC 8C650004 */  lw    $a1, 4($v1)
/* 0874C0 800868C0 462A4400 */  add.d $f16, $f8, $f10
/* 0874C4 800868C4 8C67000C */  lw    $a3, 0xc($v1)
/* 0874C8 800868C8 02002025 */  move  $a0, $s0
/* 0874CC 800868CC AFA20020 */  sw    $v0, 0x20($sp)
/* 0874D0 800868D0 462084A0 */  cvt.s.d $f18, $f16
/* 0874D4 800868D4 44069000 */  mfc1  $a2, $f18
/* 0874D8 800868D8 0C022DF5 */  jal   func_8008B7D4
/* 0874DC 800868DC 00000000 */   nop   
/* 0874E0 800868E0 44800000 */  mtc1  $zero, $f0
/* 0874E4 800868E4 02002025 */  move  $a0, $s0
/* 0874E8 800868E8 44050000 */  mfc1  $a1, $f0
/* 0874EC 800868EC 44060000 */  mfc1  $a2, $f0
/* 0874F0 800868F0 44070000 */  mfc1  $a3, $f0
/* 0874F4 800868F4 0C022E03 */  jal   func_8008B80C
/* 0874F8 800868F8 00000000 */   nop   
/* 0874FC 800868FC 02002025 */  move  $a0, $s0
/* 087500 80086900 00002825 */  move  $a1, $zero
/* 087504 80086904 00003025 */  move  $a2, $zero
/* 087508 80086908 0C022E22 */  jal   func_8008B888
/* 08750C 8008690C 00003825 */   move  $a3, $zero
/* 087510 80086910 8FA20020 */  lw    $v0, 0x20($sp)
/* 087514 80086914 240A0200 */  li    $t2, 512
/* 087518 80086918 02002025 */  move  $a0, $s0
/* 08751C 8008691C 0C01C922 */  jal   func_80072488
/* 087520 80086920 A44A0086 */   sh    $t2, 0x86($v0)
/* 087524 80086924 0C021B9C */  jal   func_80086E70
/* 087528 80086928 02002025 */   move  $a0, $s0
/* 08752C 8008692C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 087530 80086930 8FB00018 */  lw    $s0, 0x18($sp)
/* 087534 80086934 27BD0028 */  addiu $sp, $sp, 0x28
/* 087538 80086938 03E00008 */  jr    $ra
/* 08753C 8008693C 00000000 */   nop   