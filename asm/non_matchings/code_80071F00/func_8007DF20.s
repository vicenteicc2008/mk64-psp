.section .late_rodata

glabel D_800EEF44
.float 1765.0

glabel D_800EEF48
.float -1765.0

.section .text

glabel func_8007DF20
/* 07EB20 8007DF20 000470C0 */  sll   $t6, $a0, 3
/* 07EB24 8007DF24 01C47023 */  subu  $t6, $t6, $a0
/* 07EB28 8007DF28 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 07EB2C 8007DF2C 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 07EB30 8007DF30 000E7140 */  sll   $t6, $t6, 5
/* 07EB34 8007DF34 01CF1021 */  addu  $v0, $t6, $t7
/* 07EB38 8007DF38 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 07EB3C 8007DF3C 44812000 */  mtc1  $at, $f4
/* 07EB40 8007DF40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07EB44 8007DF44 3C180601 */  lui   $t8, %hi(D_0600A9D8) # $t8, 0x601
/* 07EB48 8007DF48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07EB4C 8007DF4C 2718A9D8 */  addiu $t8, %lo(D_0600A9D8) # addiu $t8, $t8, -0x5628
/* 07EB50 8007DF50 AC580070 */  sw    $t8, 0x70($v0)
/* 07EB54 8007DF54 AC40004C */  sw    $zero, 0x4c($v0)
/* 07EB58 8007DF58 A4400092 */  sh    $zero, 0x92($v0)
/* 07EB5C 8007DF5C AFA2001C */  sw    $v0, 0x1c($sp)
/* 07EB60 8007DF60 AFA40020 */  sw    $a0, 0x20($sp)
/* 07EB64 8007DF64 00002825 */  move  $a1, $zero
/* 07EB68 8007DF68 00003025 */  move  $a2, $zero
/* 07EB6C 8007DF6C 00003825 */  move  $a3, $zero
/* 07EB70 8007DF70 0C022E2F */  jal   func_8008B8BC
/* 07EB74 8007DF74 E4440000 */   swc1  $f4, ($v0)
/* 07EB78 8007DF78 3C19800E */  lui   $t9, %hi(gIsMirrorMode) # $t9, 0x800e
/* 07EB7C 8007DF7C 8F39C604 */  lw    $t9, %lo(gIsMirrorMode)($t9)
/* 07EB80 8007DF80 44800000 */  mtc1  $zero, $f0
/* 07EB84 8007DF84 8FA2001C */  lw    $v0, 0x1c($sp)
/* 07EB88 8007DF88 1320000A */  beqz  $t9, .L8007DFB4
/* 07EB8C 8007DF8C 3C01800F */   lui   $at, %hi(D_800EEF48) # 0x800f
/* 07EB90 8007DF90 3C01800F */  lui   $at, %hi(D_800EEF44) # $at, 0x800f
/* 07EB94 8007DF94 C426EF44 */  lwc1  $f6, %lo(D_800EEF44)($at)
/* 07EB98 8007DF98 3C014343 */  li    $at, 0x43430000 # 195.000000
/* 07EB9C 8007DF9C 44814000 */  mtc1  $at, $f8
/* 07EBA0 8007DFA0 34088000 */  li    $t0, 32768
/* 07EBA4 8007DFA4 A44800B4 */  sh    $t0, 0xb4($v0)
/* 07EBA8 8007DFA8 E4460004 */  swc1  $f6, 4($v0)
/* 07EBAC 8007DFAC 10000006 */  b     .L8007DFC8
/* 07EBB0 8007DFB0 E448000C */   swc1  $f8, 0xc($v0)
.L8007DFB4:
/* 07EBB4 8007DFB4 C42AEF48 */  lwc1  $f10, %lo(D_800EEF48)($at)
/* 07EBB8 8007DFB8 3C01428C */  li    $at, 0x428C0000 # 70.000000
/* 07EBBC 8007DFBC 44818000 */  mtc1  $at, $f16
/* 07EBC0 8007DFC0 E44A0004 */  swc1  $f10, 4($v0)
/* 07EBC4 8007DFC4 E450000C */  swc1  $f16, 0xc($v0)
.L8007DFC8:
/* 07EBC8 8007DFC8 3C014234 */  li    $at, 0x42340000 # 45.000000
/* 07EBCC 8007DFCC 44819000 */  mtc1  $at, $f18
/* 07EBD0 8007DFD0 44050000 */  mfc1  $a1, $f0
/* 07EBD4 8007DFD4 44060000 */  mfc1  $a2, $f0
/* 07EBD8 8007DFD8 44070000 */  mfc1  $a3, $f0
/* 07EBDC 8007DFDC 8FA40020 */  lw    $a0, 0x20($sp)
/* 07EBE0 8007DFE0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 07EBE4 8007DFE4 0C022E3C */  jal   func_8008B8F0
/* 07EBE8 8007DFE8 E4520008 */   swc1  $f18, 8($v0)
/* 07EBEC 8007DFEC 8FA2001C */  lw    $v0, 0x1c($sp)
/* 07EBF0 8007DFF0 8FA40020 */  lw    $a0, 0x20($sp)
/* 07EBF4 8007DFF4 0C01C922 */  jal   func_80072488
/* 07EBF8 8007DFF8 A44000A4 */   sh    $zero, 0xa4($v0)
/* 07EBFC 8007DFFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07EC00 8007E000 27BD0020 */  addiu $sp, $sp, 0x20
/* 07EC04 8007E004 03E00008 */  jr    $ra
/* 07EC08 8007E008 00000000 */   nop   
