.section .late_rodata

glabel D_800F39A8
.float 0.55

glabel D_800F39AC
.float 0.45

.section .text

glabel func_800CADD0
/* 0CB9D0 800CADD0 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0CB9D4 800CADD4 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0CB9D8 800CADD8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CB9DC 800CADDC AFBE0030 */  sw    $fp, 0x30($sp)
/* 0CB9E0 800CADE0 44856000 */  mtc1  $a1, $f12
/* 0CB9E4 800CADE4 03A0F025 */  move  $fp, $sp
/* 0CB9E8 800CADE8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0CB9EC 800CADEC AFA40038 */  sw    $a0, 0x38($sp)
/* 0CB9F0 800CADF0 15C0002F */  bnez  $t6, .L800CAEB0
/* 0CB9F4 800CADF4 308600FF */   andi  $a2, $a0, 0xff
/* 0CB9F8 800CADF8 3C0F800F */  lui   $t7, %hi(D_800EA0EC) # $t7, 0x800f
/* 0CB9FC 800CADFC 25EFA0EC */  addiu $t7, %lo(D_800EA0EC) # addiu $t7, $t7, -0x5f14
/* 0CBA00 800CAE00 00CF1821 */  addu  $v1, $a2, $t7
/* 0CBA04 800CAE04 90620000 */  lbu   $v0, ($v1)
/* 0CBA08 800CAE08 24010002 */  li    $at, 2
/* 0CBA0C 800CAE0C 0006C880 */  sll   $t9, $a2, 2
/* 0CBA10 800CAE10 10400004 */  beqz  $v0, .L800CAE24
/* 0CBA14 800CAE14 3C08800F */   lui   $t0, %hi(D_800EA110) # $t0, 0x800f
/* 0CBA18 800CAE18 14410025 */  bne   $v0, $at, .L800CAEB0
/* 0CBA1C 800CAE1C 24180001 */   li    $t8, 1
/* 0CBA20 800CAE20 A0780000 */  sb    $t8, ($v1)
.L800CAE24:
/* 0CBA24 800CAE24 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CBA28 800CAE28 44810000 */  mtc1  $at, $f0
/* 0CBA2C 800CAE2C 3C01800F */  lui   $at, %hi(D_800F39A8) # $at, 0x800f
/* 0CBA30 800CAE30 C42439A8 */  lwc1  $f4, %lo(D_800F39A8)($at)
/* 0CBA34 800CAE34 3C01800F */  lui   $at, %hi(D_800F39AC) # $at, 0x800f
/* 0CBA38 800CAE38 C42839AC */  lwc1  $f8, %lo(D_800F39AC)($at)
/* 0CBA3C 800CAE3C 46046182 */  mul.s $f6, $f12, $f4
/* 0CBA40 800CAE40 00064900 */  sll   $t1, $a2, 4
/* 0CBA44 800CAE44 01264823 */  subu  $t1, $t1, $a2
/* 0CBA48 800CAE48 3C0A800F */  lui   $t2, %hi(D_800E9F7C) # $t2, 0x800f
/* 0CBA4C 800CAE4C 254A9F7C */  addiu $t2, %lo(D_800E9F7C) # addiu $t2, $t2, -0x6084
/* 0CBA50 800CAE50 00094880 */  sll   $t1, $t1, 2
/* 0CBA54 800CAE54 2508A110 */  addiu $t0, %lo(D_800EA110) # addiu $t0, $t0, -0x5ef0
/* 0CBA58 800CAE58 46083300 */  add.s $f12, $f6, $f8
/* 0CBA5C 800CAE5C 012A2821 */  addu  $a1, $t1, $t2
/* 0CBA60 800CAE60 3C041900 */  lui   $a0, (0x1900A209 >> 16) # lui $a0, 0x1900
/* 0CBA64 800CAE64 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0CBA68 800CAE68 460C003C */  c.lt.s $f0, $f12
/* 0CBA6C 800CAE6C 03281021 */  addu  $v0, $t9, $t0
/* 0CBA70 800CAE70 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0CBA74 800CAE74 3484A209 */  ori   $a0, (0x1900A209 & 0xFFFF) # ori $a0, $a0, 0xa209
/* 0CBA78 800CAE78 45000002 */  bc1f  .L800CAE84
/* 0CBA7C 800CAE7C 24AB0014 */   addiu $t3, $a1, 0x14
/* 0CBA80 800CAE80 46000306 */  mov.s $f12, $f0
.L800CAE84:
/* 0CBA84 800CAE84 44800000 */  mtc1  $zero, $f0
/* 0CBA88 800CAE88 00000000 */  nop   
/* 0CBA8C 800CAE8C 4600603C */  c.lt.s $f12, $f0
/* 0CBA90 800CAE90 00000000 */  nop   
/* 0CBA94 800CAE94 45020003 */  bc1fl .L800CAEA4
/* 0CBA98 800CAE98 E44C0000 */   swc1  $f12, ($v0)
/* 0CBA9C 800CAE9C 46000306 */  mov.s $f12, $f0
/* 0CBAA0 800CAEA0 E44C0000 */  swc1  $f12, ($v0)
.L800CAEA4:
/* 0CBAA4 800CAEA4 AFA20010 */  sw    $v0, 0x10($sp)
/* 0CBAA8 800CAEA8 0C031052 */  jal   play_sound
/* 0CBAAC 800CAEAC AFAB0014 */   sw    $t3, 0x14($sp)
.L800CAEB0:
/* 0CBAB0 800CAEB0 8FDF0034 */  lw    $ra, 0x34($fp)
/* 0CBAB4 800CAEB4 03C0E825 */  move  $sp, $fp
/* 0CBAB8 800CAEB8 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0CBABC 800CAEBC 03E00008 */  jr    $ra
/* 0CBAC0 800CAEC0 27BD0038 */   addiu $sp, $sp, 0x38
