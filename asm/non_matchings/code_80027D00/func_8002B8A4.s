glabel func_8002B8A4
/* 02C4A4 8002B8A4 3C02800E */  lui   $v0, %hi(gPlayerOne) # $v0, 0x800e
/* 02C4A8 8002B8A8 8C42C4DC */  lw    $v0, %lo(gPlayerOne)($v0)
/* 02C4AC 8002B8AC 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 02C4B0 8002B8B0 AFB00004 */  sw    $s0, 4($sp)
/* 02C4B4 8002B8B4 14820002 */  bne   $a0, $v0, .L8002B8C0
/* 02C4B8 8002B8B8 00A08025 */   move  $s0, $a1
/* 02C4BC 8002B8BC AFA0000C */  sw    $zero, 0xc($sp)
.L8002B8C0:
/* 02C4C0 8002B8C0 3C05800E */  lui   $a1, %hi(gPlayerTwo) # $a1, 0x800e
/* 02C4C4 8002B8C4 8CA5C4E0 */  lw    $a1, %lo(gPlayerTwo)($a1)
/* 02C4C8 8002B8C8 8FA3000C */  lw    $v1, 0xc($sp)
/* 02C4CC 8002B8CC 3C06800E */  lui   $a2, %hi(gPlayerThree) # $a2, 0x800e
/* 02C4D0 8002B8D0 14850002 */  bne   $a0, $a1, .L8002B8DC
/* 02C4D4 8002B8D4 3C07800E */   lui   $a3, %hi(gPlayerFour) # $a3, 0x800e
/* 02C4D8 8002B8D8 24030001 */  li    $v1, 1
.L8002B8DC:
/* 02C4DC 8002B8DC 8CC6C4E4 */  lw    $a2, %lo(gPlayerThree)($a2)
/* 02C4E0 8002B8E0 3C08800E */  lui   $t0, %hi(gPlayerFive) # $t0, 0x800e
/* 02C4E4 8002B8E4 3C09800E */  lui   $t1, %hi(gPlayerSix) # $t1, 0x800e
/* 02C4E8 8002B8E8 14860002 */  bne   $a0, $a2, .L8002B8F4
/* 02C4EC 8002B8EC 3C0A800E */   lui   $t2, %hi(gPlayerSeven) # $t2, 0x800e
/* 02C4F0 8002B8F0 24030002 */  li    $v1, 2
.L8002B8F4:
/* 02C4F4 8002B8F4 8CE7C4E8 */  lw    $a3, %lo(gPlayerFour)($a3)
/* 02C4F8 8002B8F8 3C0C8016 */  lui   $t4, %hi(D_801653C0) # $t4, 0x8016
/* 02C4FC 8002B8FC 258C53C0 */  addiu $t4, %lo(D_801653C0) # addiu $t4, $t4, 0x53c0
/* 02C500 8002B900 14870002 */  bne   $a0, $a3, .L8002B90C
/* 02C504 8002B904 3C0B800E */   lui   $t3, %hi(gPlayerEight) # $t3, 0x800e
/* 02C508 8002B908 24030003 */  li    $v1, 3
.L8002B90C:
/* 02C50C 8002B90C 8D08C4EC */  lw    $t0, %lo(gPlayerFive)($t0)
/* 02C510 8002B910 14880002 */  bne   $a0, $t0, .L8002B91C
/* 02C514 8002B914 00000000 */   nop
/* 02C518 8002B918 24030004 */  li    $v1, 4
.L8002B91C:
/* 02C51C 8002B91C 8D29C4F0 */  lw    $t1, %lo(gPlayerSix)($t1)
/* 02C520 8002B920 14890002 */  bne   $a0, $t1, .L8002B92C
/* 02C524 8002B924 00000000 */   nop
/* 02C528 8002B928 24030005 */  li    $v1, 5
.L8002B92C:
/* 02C52C 8002B92C 8D4AC4F4 */  lw    $t2, %lo(gPlayerSeven)($t2)
/* 02C530 8002B930 148A0002 */  bne   $a0, $t2, .L8002B93C
/* 02C534 8002B934 00000000 */   nop
/* 02C538 8002B938 24030006 */  li    $v1, 6
.L8002B93C:
/* 02C53C 8002B93C 8D6BC4F8 */  lw    $t3, %lo(gPlayerEight)($t3)
/* 02C540 8002B940 548B0003 */  bnel  $a0, $t3, .L8002B950
/* 02C544 8002B944 00037080 */   sll   $t6, $v1, 2
/* 02C548 8002B948 24030007 */  li    $v1, 7
/* 02C54C 8002B94C 00037080 */  sll   $t6, $v1, 2
.L8002B950:
/* 02C550 8002B950 018E7821 */  addu  $t7, $t4, $t6
/* 02C554 8002B954 16020002 */  bne   $s0, $v0, .L8002B960
/* 02C558 8002B958 ADF00000 */   sw    $s0, ($t7)
/* 02C55C 8002B95C 00001825 */  move  $v1, $zero
.L8002B960:
/* 02C560 8002B960 16050002 */  bne   $s0, $a1, .L8002B96C
/* 02C564 8002B964 00000000 */   nop
/* 02C568 8002B968 24030001 */  li    $v1, 1
.L8002B96C:
/* 02C56C 8002B96C 16060002 */  bne   $s0, $a2, .L8002B978
/* 02C570 8002B970 00000000 */   nop
/* 02C574 8002B974 24030002 */  li    $v1, 2
.L8002B978:
/* 02C578 8002B978 16070002 */  bne   $s0, $a3, .L8002B984
/* 02C57C 8002B97C 00000000 */   nop
/* 02C580 8002B980 24030003 */  li    $v1, 3
.L8002B984:
/* 02C584 8002B984 16080002 */  bne   $s0, $t0, .L8002B990
/* 02C588 8002B988 00000000 */   nop
/* 02C58C 8002B98C 24030004 */  li    $v1, 4
.L8002B990:
/* 02C590 8002B990 16090002 */  bne   $s0, $t1, .L8002B99C
/* 02C594 8002B994 00000000 */   nop
/* 02C598 8002B998 24030005 */  li    $v1, 5
.L8002B99C:
/* 02C59C 8002B99C 160A0002 */  bne   $s0, $t2, .L8002B9A8
/* 02C5A0 8002B9A0 00000000 */   nop
/* 02C5A4 8002B9A4 24030006 */  li    $v1, 6
.L8002B9A8:
/* 02C5A8 8002B9A8 560B0003 */  bnel  $s0, $t3, .L8002B9B8
/* 02C5AC 8002B9AC 0003C080 */   sll   $t8, $v1, 2
/* 02C5B0 8002B9B0 24030007 */  li    $v1, 7
/* 02C5B4 8002B9B4 0003C080 */  sll   $t8, $v1, 2
.L8002B9B8:
/* 02C5B8 8002B9B8 0198C821 */  addu  $t9, $t4, $t8
/* 02C5BC 8002B9BC AF240000 */  sw    $a0, ($t9)
/* 02C5C0 8002B9C0 8FB00004 */  lw    $s0, 4($sp)
/* 02C5C4 8002B9C4 03E00008 */  jr    $ra
/* 02C5C8 8002B9C8 27BD0010 */   addiu $sp, $sp, 0x10
