.section .late_rodata

glabel D_800EEEB8
.float 0.15

.section .text

glabel func_8007CE0C
/* 07DA0C 8007CE0C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 07DA10 8007CE10 AFBF0024 */  sw    $ra, 0x24($sp)
/* 07DA14 8007CE14 AFB10020 */  sw    $s1, 0x20($sp)
/* 07DA18 8007CE18 3C050600 */  lui   $a1, %hi(gTLUTBoo) # $a1, 0x600
/* 07DA1C 8007CE1C 3C060F0D */  lui   $a2, %hi(D_0F0D0E50) # $a2, 0xf0d
/* 07DA20 8007CE20 240E0028 */  li    $t6, 40
/* 07DA24 8007CE24 00808825 */  move  $s1, $a0
/* 07DA28 8007CE28 AFB0001C */  sw    $s0, 0x1c($sp)
/* 07DA2C 8007CE2C AFAE0010 */  sw    $t6, 0x10($sp)
/* 07DA30 8007CE30 24C60E50 */  addiu $a2, %lo(D_0F0D0E50) # addiu $a2, $a2, 0xe50
/* 07DA34 8007CE34 24A55C80 */  addiu $a1, %lo(gTLUTBoo) # addiu $a1, $a1, 0x5c80
/* 07DA38 8007CE38 0C01CD11 */  jal   func_80073444
/* 07DA3C 8007CE3C 24070030 */   li    $a3, 48
/* 07DA40 8007CE40 001178C0 */  sll   $t7, $s1, 3
/* 07DA44 8007CE44 01F17823 */  subu  $t7, $t7, $s1
/* 07DA48 8007CE48 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 07DA4C 8007CE4C 44800000 */  mtc1  $zero, $f0
/* 07DA50 8007CE50 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 07DA54 8007CE54 000F7940 */  sll   $t7, $t7, 5
/* 07DA58 8007CE58 01F88021 */  addu  $s0, $t7, $t8
/* 07DA5C 8007CE5C 2419001C */  li    $t9, 28
/* 07DA60 8007CE60 A21900D2 */  sb    $t9, 0xd2($s0)
/* 07DA64 8007CE64 3C01800F */  lui   $at, %hi(D_800EEEB8) # $at, 0x800f
/* 07DA68 8007CE68 E6000004 */  swc1  $f0, 4($s0)
/* 07DA6C 8007CE6C E6000008 */  swc1  $f0, 8($s0)
/* 07DA70 8007CE70 E600000C */  swc1  $f0, 0xc($s0)
/* 07DA74 8007CE74 C424EEB8 */  lwc1  $f4, %lo(D_800EEEB8)($at)
/* 07DA78 8007CE78 02202025 */  move  $a0, $s1
/* 07DA7C 8007CE7C 0C01C922 */  jal   func_80072488
/* 07DA80 8007CE80 E6040000 */   swc1  $f4, ($s0)
/* 07DA84 8007CE84 A60000A0 */  sh    $zero, 0xa0($s0)
/* 07DA88 8007CE88 0C01CE11 */  jal   func_80073844
/* 07DA8C 8007CE8C 02202025 */   move  $a0, $s1
/* 07DA90 8007CE90 0C021BBC */  jal   func_80086EF0
/* 07DA94 8007CE94 02202025 */   move  $a0, $s1
/* 07DA98 8007CE98 34088000 */  li    $t0, 32768
/* 07DA9C 8007CE9C A60800C2 */  sh    $t0, 0xc2($s0)
/* 07DAA0 8007CEA0 3C028019 */  lui   $v0, %hi(D_8018CF1C) # $v0, 0x8019
/* 07DAA4 8007CEA4 8C42CF1C */  lw    $v0, %lo(D_8018CF1C)($v0)
/* 07DAA8 8007CEA8 C6080010 */  lwc1  $f8, 0x10($s0)
/* 07DAAC 8007CEAC C6100018 */  lwc1  $f16, 0x18($s0)
/* 07DAB0 8007CEB0 C4460014 */  lwc1  $f6, 0x14($v0)
/* 07DAB4 8007CEB4 C44A001C */  lwc1  $f10, 0x1c($v0)
/* 07DAB8 8007CEB8 46083301 */  sub.s $f12, $f6, $f8
/* 07DABC 8007CEBC 0C0ADE0C */  jal   atan2s
/* 07DAC0 8007CEC0 46105381 */   sub.s $f14, $f10, $f16
/* 07DAC4 8007CEC4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 07DAC8 8007CEC8 A60200C0 */  sh    $v0, 0xc0($s0)
/* 07DACC 8007CECC 8FB0001C */  lw    $s0, 0x1c($sp)
/* 07DAD0 8007CED0 8FB10020 */  lw    $s1, 0x20($sp)
/* 07DAD4 8007CED4 03E00008 */  jr    $ra
/* 07DAD8 8007CED8 27BD0028 */   addiu $sp, $sp, 0x28
