glabel func_802B02B4
/* 1198C4 802B02B4 848E0004 */  lh    $t6, 4($a0)
/* 1198C8 802B02B8 3C188016 */  lui   $t8, %hi(D_8015F9B8) # $t8, 0x8016
/* 1198CC 802B02BC 2718F9B8 */  addiu $t8, %lo(D_8015F9B8) # addiu $t8, $t8, -0x648
/* 1198D0 802B02C0 000E78C0 */  sll   $t7, $t6, 3
/* 1198D4 802B02C4 01EE7823 */  subu  $t7, $t7, $t6
/* 1198D8 802B02C8 000F7900 */  sll   $t7, $t7, 4
/* 1198DC 802B02CC 01F81021 */  addu  $v0, $t7, $t8
/* 1198E0 802B02D0 84590004 */  lh    $t9, 4($v0)
/* 1198E4 802B02D4 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1198E8 802B02D8 240C8000 */  li    $t4, -32768
/* 1198EC 802B02DC 2728FFFF */  addiu $t0, $t9, -1
/* 1198F0 802B02E0 A4480004 */  sh    $t0, 4($v0)
/* 1198F4 802B02E4 C4840008 */  lwc1  $f4, 8($a0)
/* 1198F8 802B02E8 240D003C */  li    $t5, 60
/* 1198FC 802B02EC 240E0005 */  li    $t6, 5
/* 119900 802B02F0 4600218D */  trunc.w.s $f6, $f4
/* 119904 802B02F4 44033000 */  mfc1  $v1, $f6
/* 119908 802B02F8 00000000 */  nop   
/* 11990C 802B02FC 00035400 */  sll   $t2, $v1, 0x10
/* 119910 802B0300 000A5C03 */  sra   $t3, $t2, 0x10
/* 119914 802B0304 51600009 */  beql  $t3, $zero, .L802B032C
/* 119918 802B0308 44814000 */   mtc1  $at, $f8
/* 11991C 802B030C 24010001 */  li    $at, 1
/* 119920 802B0310 11610008 */  beq   $t3, $at, .L802B0334
/* 119924 802B0314 24010002 */   li    $at, 2
/* 119928 802B0318 5161000B */  beql  $t3, $at, .L802B0348
/* 11992C 802B031C 3C01BF80 */   lui   $at, 0xbf80
/* 119930 802B0320 1000000D */  b     .L802B0358
/* 119934 802B0324 3C014040 */   li    $at, 0x40400000 # 3.000000
/* 119938 802B0328 44814000 */  mtc1  $at, $f8
.L802B032C:
/* 11993C 802B032C 10000009 */  b     .L802B0354
/* 119940 802B0330 E4480024 */   swc1  $f8, 0x24($v0)
.L802B0334:
/* 119944 802B0334 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 119948 802B0338 44815000 */  mtc1  $at, $f10
/* 11994C 802B033C 10000005 */  b     .L802B0354
/* 119950 802B0340 E44A0028 */   swc1  $f10, 0x28($v0)
/* 119954 802B0344 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
.L802B0348:
/* 119958 802B0348 44818000 */  mtc1  $at, $f16
/* 11995C 802B034C 00000000 */  nop   
/* 119960 802B0350 E450002C */  swc1  $f16, 0x2c($v0)
.L802B0354:
/* 119964 802B0354 3C014040 */  li    $at, 0x40400000 # 3.000000
.L802B0358:
/* 119968 802B0358 44819000 */  mtc1  $at, $f18
/* 11996C 802B035C 24020007 */  li    $v0, 7
/* 119970 802B0360 A48C0002 */  sh    $t4, 2($a0)
/* 119974 802B0364 A4800012 */  sh    $zero, 0x12($a0)
/* 119978 802B0368 A48D0004 */  sh    $t5, 4($a0)
/* 11997C 802B036C 10A20006 */  beq   $a1, $v0, .L802B0388
/* 119980 802B0370 E4920028 */   swc1  $f18, 0x28($a0)
/* 119984 802B0374 24010008 */  li    $at, 8
/* 119988 802B0378 50A10006 */  beql  $a1, $at, .L802B0394
/* 11998C 802B037C A4820006 */   sh    $v0, 6($a0)
/* 119990 802B0380 03E00008 */  jr    $ra
/* 119994 802B0384 00000000 */   nop   

.L802B0388:
/* 119998 802B0388 03E00008 */  jr    $ra
/* 11999C 802B038C A48E0006 */   sh    $t6, 6($a0)

/* 1199A0 802B0390 A4820006 */  sh    $v0, 6($a0)
.L802B0394:
/* 1199A4 802B0394 03E00008 */  jr    $ra
/* 1199A8 802B0398 00000000 */   nop   