glabel func_80055CCC
/* 0568CC 80055CCC 0004C8C0 */  sll   $t9, $a0, 3
/* 0568D0 80055CD0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0568D4 80055CD4 0324C823 */  subu  $t9, $t9, $a0
/* 0568D8 80055CD8 3C088016 */  lui   $t0, %hi(D_80165C18) # $t0, 0x8016
/* 0568DC 80055CDC AFB00018 */  sw    $s0, 0x18($sp)
/* 0568E0 80055CE0 00057080 */  sll   $t6, $a1, 2
/* 0568E4 80055CE4 25085C18 */  addiu $t0, %lo(D_80165C18) # addiu $t0, $t0, 0x5c18
/* 0568E8 80055CE8 0019C940 */  sll   $t9, $t9, 5
/* 0568EC 80055CEC 01C57023 */  subu  $t6, $t6, $a1
/* 0568F0 80055CF0 3C0F800E */  lui   $t7, %hi(camera1) # $t7, 0x800e
/* 0568F4 80055CF4 03288021 */  addu  $s0, $t9, $t0
/* 0568F8 80055CF8 8DEFDB40 */  lw    $t7, %lo(camera1)($t7)
/* 0568FC 80055CFC 860900A6 */  lh    $t1, 0xa6($s0)
/* 056900 80055D00 000E70C0 */  sll   $t6, $t6, 3
/* 056904 80055D04 01C57023 */  subu  $t6, $t6, $a1
/* 056908 80055D08 000E70C0 */  sll   $t6, $t6, 3
/* 05690C 80055D0C 01CFC021 */  addu  $t8, $t6, $t7
/* 056910 80055D10 29210002 */  slti  $at, $t1, 2
/* 056914 80055D14 AFBF001C */  sw    $ra, 0x1c($sp)
/* 056918 80055D18 1420004E */  bnez  $at, .L80055E54
/* 05691C 80055D1C AFB80024 */   sw    $t8, 0x24($sp)
/* 056920 80055D20 2406012C */  li    $a2, 300
/* 056924 80055D24 0C022915 */  jal   func_8008A454
/* 056928 80055D28 AFA40030 */   sw    $a0, 0x30($sp)
/* 05692C 80055D2C C6040008 */  lwc1  $f4, 8($s0)
/* 056930 80055D30 C6060044 */  lwc1  $f6, 0x44($s0)
/* 056934 80055D34 3C014034 */  li    $at, 0x40340000 # 2.812500
/* 056938 80055D38 44814800 */  mtc1  $at, $f9
/* 05693C 80055D3C 46062001 */  sub.s $f0, $f4, $f6
/* 056940 80055D40 44804000 */  mtc1  $zero, $f8
/* 056944 80055D44 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 056948 80055D48 44819800 */  mtc1  $at, $f19
/* 05694C 80055D4C 460002A1 */  cvt.d.s $f10, $f0
/* 056950 80055D50 44809000 */  mtc1  $zero, $f18
/* 056954 80055D54 462A4403 */  div.d $f16, $f8, $f10
/* 056958 80055D58 8FA40030 */  lw    $a0, 0x30($sp)
/* 05695C 80055D5C 46328100 */  add.d $f4, $f16, $f18
/* 056960 80055D60 462021A0 */  cvt.s.d $f6, $f4
/* 056964 80055D64 44053000 */  mfc1  $a1, $f6
/* 056968 80055D68 0C0129BB */  jal   func_8004A6EC
/* 05696C 80055D6C 00000000 */   nop   
/* 056970 80055D70 8FA40030 */  lw    $a0, 0x30($sp)
/* 056974 80055D74 0C01C89C */  jal   func_80072270
/* 056978 80055D78 3C050010 */   lui   $a1, 0x10
/* 05697C 80055D7C 10400011 */  beqz  $v0, .L80055DC4
/* 056980 80055D80 26040004 */   addiu $a0, $s0, 4
/* 056984 80055D84 3C070601 */  lui   $a3, %hi(D_0600F960) # $a3, 0x601
/* 056988 80055D88 24E7F960 */  addiu $a3, %lo(D_0600F960) # addiu $a3, $a3, -0x6a0
/* 05698C 80055D8C 260500BE */  addiu $a1, $s0, 0xbe
/* 056990 80055D90 0C010CCA */  jal   func_80043328
/* 056994 80055D94 8E060000 */   lw    $a2, ($s0)
/* 056998 80055D98 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 05699C 80055D9C 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 0569A0 80055DA0 8C830000 */  lw    $v1, ($a0)
/* 0569A4 80055DA4 3C0C0601 */  lui   $t4, %hi(D_0600F650) # $t4, 0x601
/* 0569A8 80055DA8 258CF650 */  addiu $t4, %lo(D_0600F650) # addiu $t4, $t4, -0x9b0
/* 0569AC 80055DAC 246A0008 */  addiu $t2, $v1, 8
/* 0569B0 80055DB0 AC8A0000 */  sw    $t2, ($a0)
/* 0569B4 80055DB4 3C0B0600 */  lui   $t3, 0x600
/* 0569B8 80055DB8 AC6B0000 */  sw    $t3, ($v1)
/* 0569BC 80055DBC 10000025 */  b     .L80055E54
/* 0569C0 80055DC0 AC6C0004 */   sw    $t4, 4($v1)
.L80055DC4:
/* 0569C4 80055DC4 960D00BE */  lhu   $t5, 0xbe($s0)
/* 0569C8 80055DC8 3C058018 */  lui   $a1, %hi(D_80183E80) # $a1, 0x8018
/* 0569CC 80055DCC 24A53E80 */  addiu $a1, %lo(D_80183E80) # addiu $a1, $a1, 0x3e80
/* 0569D0 80055DD0 C60C0004 */  lwc1  $f12, 4($s0)
/* 0569D4 80055DD4 C60E000C */  lwc1  $f14, 0xc($s0)
/* 0569D8 80055DD8 8FA60024 */  lw    $a2, 0x24($sp)
/* 0569DC 80055DDC 0C01062B */  jal   func_800418AC
/* 0569E0 80055DE0 A4AD0000 */   sh    $t5, ($a1)
/* 0569E4 80055DE4 960F00C2 */  lhu   $t7, 0xc2($s0)
/* 0569E8 80055DE8 3C058018 */  lui   $a1, %hi(D_80183E80) # $a1, 0x8018
/* 0569EC 80055DEC 34018000 */  li    $at, 32768
/* 0569F0 80055DF0 00417021 */  addu  $t6, $v0, $at
/* 0569F4 80055DF4 24A53E80 */  addiu $a1, %lo(D_80183E80) # addiu $a1, $a1, 0x3e80
/* 0569F8 80055DF8 3C070601 */  lui   $a3, %hi(D_0600FBE0) # $a3, 0x601
/* 0569FC 80055DFC A4AE0002 */  sh    $t6, 2($a1)
/* 056A00 80055E00 24E7FBE0 */  addiu $a3, %lo(D_0600FBE0) # addiu $a3, $a3, -0x420
/* 056A04 80055E04 26040004 */  addiu $a0, $s0, 4
/* 056A08 80055E08 8E060000 */  lw    $a2, ($s0)
/* 056A0C 80055E0C 0C010CCA */  jal   func_80043328
/* 056A10 80055E10 A4AF0004 */   sh    $t7, 4($a1)
/* 056A14 80055E14 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 056A18 80055E18 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 056A1C 80055E1C 8C830000 */  lw    $v1, ($a0)
/* 056A20 80055E20 3C080601 */  lui   $t0, %hi(D_0600FA20) # $t0, 0x601
/* 056A24 80055E24 2508FA20 */  addiu $t0, %lo(D_0600FA20) # addiu $t0, $t0, -0x5e0
/* 056A28 80055E28 24780008 */  addiu $t8, $v1, 8
/* 056A2C 80055E2C AC980000 */  sw    $t8, ($a0)
/* 056A30 80055E30 3C190600 */  lui   $t9, 0x600
/* 056A34 80055E34 3C09800E */  lui   $t1, %hi(gPlayerCountSelection1) # $t1, 0x800e
/* 056A38 80055E38 AC790000 */  sw    $t9, ($v1)
/* 056A3C 80055E3C AC680004 */  sw    $t0, 4($v1)
/* 056A40 80055E40 8D29C538 */  lw    $t1, %lo(gPlayerCountSelection1)($t1)
/* 056A44 80055E44 24010001 */  li    $at, 1
/* 056A48 80055E48 55210003 */  bnel  $t1, $at, .L80055E58
/* 056A4C 80055E4C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 056A50 80055E50 A60000C0 */  sh    $zero, 0xc0($s0)
.L80055E54:
/* 056A54 80055E54 8FBF001C */  lw    $ra, 0x1c($sp)
.L80055E58:
/* 056A58 80055E58 8FB00018 */  lw    $s0, 0x18($sp)
/* 056A5C 80055E5C 27BD0030 */  addiu $sp, $sp, 0x30
/* 056A60 80055E60 03E00008 */  jr    $ra
/* 056A64 80055E64 00000000 */   nop   