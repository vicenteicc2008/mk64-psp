glabel func_80071C28
/* 072828 80071C28 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07282C 80071C2C AFBF001C */  sw    $ra, 0x1c($sp)
/* 072830 80071C30 3C048018 */  lui   $a0, %hi(D_80183DA0) # $a0, 0x8018
/* 072834 80071C34 AFB00018 */  sw    $s0, 0x18($sp)
/* 072838 80071C38 0C01C7C0 */  jal   find_unused_obj_index
/* 07283C 80071C3C 24843DA0 */   addiu $a0, %lo(D_80183DA0) # addiu $a0, $a0, 0x3da0
/* 072840 80071C40 3C048018 */  lui   $a0, %hi(D_80183DB8) # $a0, 0x8018
/* 072844 80071C44 0C01C7C0 */  jal   find_unused_obj_index
/* 072848 80071C48 24843DB8 */   addiu $a0, %lo(D_80183DB8) # addiu $a0, $a0, 0x3db8
/* 07284C 80071C4C 3C048018 */  lui   $a0, %hi(D_80183DBC) # $a0, 0x8018
/* 072850 80071C50 0C01C7C0 */  jal   find_unused_obj_index
/* 072854 80071C54 24843DBC */   addiu $a0, %lo(D_80183DBC) # addiu $a0, $a0, 0x3dbc
/* 072858 80071C58 3C048018 */  lui   $a0, %hi(D_80183DC0) # $a0, 0x8018
/* 07285C 80071C5C 0C01C7C0 */  jal   find_unused_obj_index
/* 072860 80071C60 24843DC0 */   addiu $a0, %lo(D_80183DC0) # addiu $a0, $a0, 0x3dc0
/* 072864 80071C64 3C048018 */  lui   $a0, %hi(D_80183DC4) # $a0, 0x8018
/* 072868 80071C68 0C01C7C0 */  jal   find_unused_obj_index
/* 07286C 80071C6C 24843DC4 */   addiu $a0, %lo(D_80183DC4) # addiu $a0, $a0, 0x3dc4
/* 072870 80071C70 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId) # $a0, 0x8018
/* 072874 80071C74 0C01C7C0 */  jal   find_unused_obj_index
/* 072878 80071C78 24843E88 */   addiu $a0, %lo(gItemWindowObjectByPlayerId) # addiu $a0, $a0, 0x3e88
/* 07287C 80071C7C 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId + 4) # $a0, 0x8018
/* 072880 80071C80 0C01C7C0 */  jal   find_unused_obj_index
/* 072884 80071C84 24843E8C */   addiu $a0, %lo(gItemWindowObjectByPlayerId + 4) # addiu $a0, $a0, 0x3e8c
/* 072888 80071C88 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId + 8) # $a0, 0x8018
/* 07288C 80071C8C 0C01C7C0 */  jal   find_unused_obj_index
/* 072890 80071C90 24843E90 */   addiu $a0, %lo(gItemWindowObjectByPlayerId + 8) # addiu $a0, $a0, 0x3e90
/* 072894 80071C94 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId + 12) # $a0, 0x8018
/* 072898 80071C98 0C01C7C0 */  jal   find_unused_obj_index
/* 07289C 80071C9C 24843E94 */   addiu $a0, %lo(gItemWindowObjectByPlayerId + 12) # addiu $a0, $a0, 0x3e94
/* 0728A0 80071CA0 0C01C064 */  jal   func_80070190
/* 0728A4 80071CA4 00000000 */   nop
/* 0728A8 80071CA8 0C01C1E0 */  jal   func_80070780
/* 0728AC 80071CAC 00000000 */   nop
/* 0728B0 80071CB0 3C108019 */  lui   $s0, %hi(D_8018CA70) # $s0, 0x8019
/* 0728B4 80071CB4 2610CA70 */  addiu $s0, %lo(D_8018CA70) # addiu $s0, $s0, -0x3590
/* 0728B8 80071CB8 240E011A */  li    $t6, 282
/* 0728BC 80071CBC 240200B4 */  li    $v0, 180
/* 0728C0 80071CC0 240300C8 */  li    $v1, 200
/* 0728C4 80071CC4 A60E00E6 */  sh    $t6, 0xe6($s0)
/* 0728C8 80071CC8 240F002D */  li    $t7, 45
/* 0728CC 80071CCC 241800D2 */  li    $t8, 210
/* 0728D0 80071CD0 A618016C */  sh    $t8, 0x16c($s0)
/* 0728D4 80071CD4 241900D4 */  li    $t9, 212
/* 0728D8 80071CD8 240E00C0 */  li    $t6, 192
/* 0728DC 80071CDC 2404FFCA */  li    $a0, -54
/* 0728E0 80071CE0 24050036 */  li    $a1, 54
/* 0728E4 80071CE4 24060050 */  li    $a2, 80
/* 0728E8 80071CE8 2407003C */  li    $a3, 60
/* 0728EC 80071CEC 24080025 */  li    $t0, 37
/* 0728F0 80071CF0 24090064 */  li    $t1, 100
/* 0728F4 80071CF4 240A008C */  li    $t2, 140
/* 0728F8 80071CF8 240B0060 */  li    $t3, 96
/* 0728FC 80071CFC 240C00DE */  li    $t4, 222
/* 072900 80071D00 240D0175 */  li    $t5, 373
/* 072904 80071D04 241F00F0 */  li    $ra, 240
/* 072908 80071D08 A60F014C */  sh    $t7, 0x14c($s0)
/* 07290C 80071D0C A6190168 */  sh    $t9, 0x168($s0)
/* 072910 80071D10 A60E0176 */  sh    $t6, 0x176($s0)
/* 072914 80071D14 A60F01D0 */  sh    $t7, 0x1d0($s0)
/* 072918 80071D18 2418011A */  li    $t8, 282
/* 07291C 80071D1C A61801EE */  sh    $t8, 0x1ee($s0)
/* 072920 80071D20 241900D2 */  li    $t9, 210
/* 072924 80071D24 240E00D4 */  li    $t6, 212
/* 072928 80071D28 240F00C0 */  li    $t7, 192
/* 07292C 80071D2C A6040042 */  sh    $a0, 0x42($s0)
/* 072930 80071D30 A6050044 */  sh    $a1, 0x44($s0)
/* 072934 80071D34 A6000046 */  sh    $zero, 0x46($s0)
/* 072938 80071D38 A6000048 */  sh    $zero, 0x48($s0)
/* 07293C 80071D3C A606004A */  sh    $a2, 0x4a($s0)
/* 072940 80071D40 A607004C */  sh    $a3, 0x4c($s0)
/* 072944 80071D44 A6080062 */  sh    $t0, 0x62($s0)
/* 072948 80071D48 A6090064 */  sh    $t1, 0x64($s0)
/* 07294C 80071D4C A6000066 */  sh    $zero, 0x66($s0)
/* 072950 80071D50 A6000068 */  sh    $zero, 0x68($s0)
/* 072954 80071D54 A60A005A */  sh    $t2, 0x5a($s0)
/* 072958 80071D58 A60B0060 */  sh    $t3, 0x60($s0)
/* 07295C 80071D5C A60C006C */  sh    $t4, 0x6c($s0)
/* 072960 80071D60 A603006E */  sh    $v1, 0x6e($s0)
/* 072964 80071D64 A60D00C6 */  sh    $t5, 0xc6($s0)
/* 072968 80071D68 A60500C8 */  sh    $a1, 0xc8($s0)
/* 07296C 80071D6C A60000CA */  sh    $zero, 0xca($s0)
/* 072970 80071D70 A60000CC */  sh    $zero, 0xcc($s0)
/* 072974 80071D74 A61F00CE */  sh    $ra, 0xce($s0)
/* 072978 80071D78 A60700D0 */  sh    $a3, 0xd0($s0)
/* 07297C 80071D7C A60900E8 */  sh    $t1, 0xe8($s0)
/* 072980 80071D80 A60000EA */  sh    $zero, 0xea($s0)
/* 072984 80071D84 A60000EC */  sh    $zero, 0xec($s0)
/* 072988 80071D88 A60200DE */  sh    $v0, 0xde($s0)
/* 07298C 80071D8C A60B00E4 */  sh    $t3, 0xe4($s0)
/* 072990 80071D90 A60300F0 */  sh    $v1, 0xf0($s0)
/* 072994 80071D94 A60300F2 */  sh    $v1, 0xf2($s0)
/* 072998 80071D98 A604014A */  sh    $a0, 0x14a($s0)
/* 07299C 80071D9C A600014E */  sh    $zero, 0x14e($s0)
/* 0729A0 80071DA0 A6000150 */  sh    $zero, 0x150($s0)
/* 0729A4 80071DA4 A6060152 */  sh    $a2, 0x152($s0)
/* 0729A8 80071DA8 A6020154 */  sh    $v0, 0x154($s0)
/* 0729AC 80071DAC A608016A */  sh    $t0, 0x16a($s0)
/* 0729B0 80071DB0 A600016E */  sh    $zero, 0x16e($s0)
/* 0729B4 80071DB4 A6000170 */  sh    $zero, 0x170($s0)
/* 0729B8 80071DB8 A60A0162 */  sh    $t2, 0x162($s0)
/* 0729BC 80071DBC A60C0174 */  sh    $t4, 0x174($s0)
/* 0729C0 80071DC0 A60D01CE */  sh    $t5, 0x1ce($s0)
/* 0729C4 80071DC4 A60001D2 */  sh    $zero, 0x1d2($s0)
/* 0729C8 80071DC8 A60001D4 */  sh    $zero, 0x1d4($s0)
/* 0729CC 80071DCC A61F01D6 */  sh    $ra, 0x1d6($s0)
/* 0729D0 80071DD0 A60201D8 */  sh    $v0, 0x1d8($s0)
/* 0729D4 80071DD4 A61901F0 */  sh    $t9, 0x1f0($s0)
/* 0729D8 80071DD8 A60001F2 */  sh    $zero, 0x1f2($s0)
/* 0729DC 80071DDC A60001F4 */  sh    $zero, 0x1f4($s0)
/* 0729E0 80071DE0 A60201E6 */  sh    $v0, 0x1e6($s0)
/* 0729E4 80071DE4 A60E01EC */  sh    $t6, 0x1ec($s0)
/* 0729E8 80071DE8 A60301F8 */  sh    $v1, 0x1f8($s0)
/* 0729EC 80071DEC A60F01FA */  sh    $t7, 0x1fa($s0)
/* 0729F0 80071DF0 3C18800E */  lui   $t8, %hi(gModeSelection) # $t8, 0x800e
/* 0729F4 80071DF4 8F18C53C */  lw    $t8, %lo(gModeSelection)($t8)
/* 0729F8 80071DF8 24010003 */  li    $at, 3
/* 0729FC 80071DFC 240200B8 */  li    $v0, 184
/* 072A00 80071E00 17010005 */  bne   $t8, $at, .L80071E18
/* 072A04 80071E04 3C048018 */   lui   $a0, %hi(gItemWindowObjectByPlayerId) # $a0, 0x8018
/* 072A08 80071E08 A6030044 */  sh    $v1, 0x44($s0)
/* 072A0C 80071E0C A60300C8 */  sh    $v1, 0xc8($s0)
/* 072A10 80071E10 A602014C */  sh    $v0, 0x14c($s0)
/* 072A14 80071E14 A60201D0 */  sh    $v0, 0x1d0($s0)
.L80071E18:
/* 072A18 80071E18 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 072A1C 80071E1C 44812000 */  mtc1  $at, $f4
/* 072A20 80071E20 3C028016 */  lui   $v0, %hi(gGPCurrentRaceRankByPlayerId) # $v0, 0x8016
/* 072A24 80071E24 244243B8 */  addiu $v0, %lo(gGPCurrentRaceRankByPlayerId) # addiu $v0, $v0, 0x43b8
/* 072A28 80071E28 E6040190 */  swc1  $f4, 0x190($s0)
/* 072A2C 80071E2C C6000190 */  lwc1  $f0, 0x190($s0)
/* 072A30 80071E30 8C590000 */  lw    $t9, ($v0)
/* 072A34 80071E34 8C4E0004 */  lw    $t6, 4($v0)
/* 072A38 80071E38 8C4F0008 */  lw    $t7, 8($v0)
/* 072A3C 80071E3C 8C58000C */  lw    $t8, 0xc($v0)
/* 072A40 80071E40 E600010C */  swc1  $f0, 0x10c($s0)
/* 072A44 80071E44 E6000088 */  swc1  $f0, 0x88($s0)
/* 072A48 80071E48 E6000004 */  swc1  $f0, 4($s0)
/* 072A4C 80071E4C A619006A */  sh    $t9, 0x6a($s0)
/* 072A50 80071E50 A60E00EE */  sh    $t6, 0xee($s0)
/* 072A54 80071E54 A60F0172 */  sh    $t7, 0x172($s0)
/* 072A58 80071E58 A61801F6 */  sh    $t8, 0x1f6($s0)
/* 072A5C 80071E5C 0C01BB9F */  jal   func_8006EE7C
/* 072A60 80071E60 8C843E88 */   lw    $a0, %lo(gItemWindowObjectByPlayerId)($a0)
/* 072A64 80071E64 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId + 4) # $a0, 0x8018
/* 072A68 80071E68 0C01BB9F */  jal   func_8006EE7C
/* 072A6C 80071E6C 8C843E8C */   lw    $a0, %lo(gItemWindowObjectByPlayerId + 4)($a0)
/* 072A70 80071E70 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId + 8) # $a0, 0x8018
/* 072A74 80071E74 0C01BB9F */  jal   func_8006EE7C
/* 072A78 80071E78 8C843E90 */   lw    $a0, %lo(gItemWindowObjectByPlayerId + 8)($a0)
/* 072A7C 80071E7C 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId + 12) # $a0, 0x8018
/* 072A80 80071E80 0C01BB9F */  jal   func_8006EE7C
/* 072A84 80071E84 8C843E94 */   lw    $a0, %lo(gItemWindowObjectByPlayerId + 12)($a0)
/* 072A88 80071E88 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 072A8C 80071E8C 44813000 */  mtc1  $at, $f6
/* 072A90 80071E90 3C198019 */  lui   $t9, %hi(D_8018EDF3) # $t9, 0x8019
/* 072A94 80071E94 3C018019 */  lui   $at, %hi(D_8018D158) # $at, 0x8019
/* 072A98 80071E98 E606018C */  swc1  $f6, 0x18c($s0)
/* 072A9C 80071E9C C600018C */  lwc1  $f0, 0x18c($s0)
/* 072AA0 80071EA0 240E0014 */  li    $t6, 20
/* 072AA4 80071EA4 240F0010 */  li    $t7, 16
/* 072AA8 80071EA8 E6000108 */  swc1  $f0, 0x108($s0)
/* 072AAC 80071EAC E6000084 */  swc1  $f0, 0x84($s0)
/* 072AB0 80071EB0 E6000000 */  swc1  $f0, ($s0)
/* 072AB4 80071EB4 8339EDF3 */  lb    $t9, %lo(D_8018EDF3)($t9)
/* 072AB8 80071EB8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 072ABC 80071EBC 2418001E */  li    $t8, 30
/* 072AC0 80071EC0 AC39D158 */  sw    $t9, %lo(D_8018D158)($at)
/* 072AC4 80071EC4 3C018019 */  lui   $at, %hi(D_8018D3C4) # $at, 0x8019
/* 072AC8 80071EC8 AC2ED3C4 */  sw    $t6, %lo(D_8018D3C4)($at)
/* 072ACC 80071ECC 3C018019 */  lui   $at, %hi(D_8018D3BC) # $at, 0x8019
/* 072AD0 80071ED0 AC2FD3BC */  sw    $t7, %lo(D_8018D3BC)($at)
/* 072AD4 80071ED4 3C018019 */  lui   $at, %hi(D_8018D3C0) # $at, 0x8019
/* 072AD8 80071ED8 AC38D3C0 */  sw    $t8, %lo(D_8018D3C0)($at)
/* 072ADC 80071EDC 3C018016 */  lui   $at, %hi(D_801657A2) # $at, 0x8016
/* 072AE0 80071EE0 24190888 */  li    $t9, 2184
/* 072AE4 80071EE4 8FB00018 */  lw    $s0, 0x18($sp)
/* 072AE8 80071EE8 A43957A2 */  sh    $t9, %lo(D_801657A2)($at)
/* 072AEC 80071EEC 03E00008 */  jr    $ra
/* 072AF0 80071EF0 27BD0020 */   addiu $sp, $sp, 0x20

/* 072AF4 80071EF4 00000000 */  nop
/* 072AF8 80071EF8 00000000 */  nop
