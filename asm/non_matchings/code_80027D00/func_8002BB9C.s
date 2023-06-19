.section .data

glabel D_800E3C98
# Due to this data being included via a GLOBAL_ASM macro,
# it gets passed through asm_processor instead of, I presume, the MIPS assembler
# asm_process seemingly does not support .hword, only .half
.hword 0x0000, 0x00b6, 0x016c, 0x0222, 0x02d8, 0x038e, 0x0444, 0x04fa
.hword 0x05b0, 0x0666

.section .text

glabel func_8002BB9C
/* 02C79C 8002BB9C 27BDFF78 */  addiu $sp, $sp, -0x88
/* 02C7A0 8002BBA0 3C0F800E */  lui   $t7, %hi(D_800E3C98) # $t7, 0x800e
/* 02C7A4 8002BBA4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 02C7A8 8002BBA8 AFB00020 */  sw    $s0, 0x20($sp)
/* 02C7AC 8002BBAC AFA5008C */  sw    $a1, 0x8c($sp)
/* 02C7B0 8002BBB0 AFA60090 */  sw    $a2, 0x90($sp)
/* 02C7B4 8002BBB4 AFA70094 */  sw    $a3, 0x94($sp)
/* 02C7B8 8002BBB8 25EF3C98 */  addiu $t7, %lo(D_800E3C98) # addiu $t7, $t7, 0x3c98
/* 02C7BC 8002BBBC 8DE10000 */  lw    $at, ($t7)
/* 02C7C0 8002BBC0 27AE0030 */  addiu $t6, $sp, 0x30
/* 02C7C4 8002BBC4 8DE80004 */  lw    $t0, 4($t7)
/* 02C7C8 8002BBC8 ADC10000 */  sw    $at, ($t6)
/* 02C7CC 8002BBCC 8DE10008 */  lw    $at, 8($t7)
/* 02C7D0 8002BBD0 ADC80004 */  sw    $t0, 4($t6)
/* 02C7D4 8002BBD4 8DE8000C */  lw    $t0, 0xc($t7)
/* 02C7D8 8002BBD8 ADC10008 */  sw    $at, 8($t6)
/* 02C7DC 8002BBDC 8DE10010 */  lw    $at, 0x10($t7)
/* 02C7E0 8002BBE0 ADC8000C */  sw    $t0, 0xc($t6)
/* 02C7E4 8002BBE4 00808025 */  move  $s0, $a0
/* 02C7E8 8002BBE8 ADC10010 */  sw    $at, 0x10($t6)
/* 02C7EC 8002BBEC 94820256 */  lhu   $v0, 0x256($a0)
/* 02C7F0 8002BBF0 18400054 */  blez  $v0, .L8002BD44
/* 02C7F4 8002BBF4 28410003 */   slti  $at, $v0, 3
/* 02C7F8 8002BBF8 50200053 */  beql  $at, $zero, .L8002BD48
/* 02C7FC 8002BBFC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02C800 8002BC00 94890046 */  lhu   $t1, 0x46($a0)
/* 02C804 8002BC04 312A0020 */  andi  $t2, $t1, 0x20
/* 02C808 8002BC08 5140004F */  beql  $t2, $zero, .L8002BD48
/* 02C80C 8002BC0C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02C810 8002BC10 44800000 */  mtc1  $zero, $f0
/* 02C814 8002BC14 27A40064 */  addiu $a0, $sp, 0x64
/* 02C818 8002BC18 3C063F80 */  lui   $a2, 0x3f80
/* 02C81C 8002BC1C 44050000 */  mfc1  $a1, $f0
/* 02C820 8002BC20 44070000 */  mfc1  $a3, $f0
/* 02C824 8002BC24 0C0AD950 */  jal   func_802B6540
/* 02C828 8002BC28 AFA00010 */   sw    $zero, 0x10($sp)
/* 02C82C 8002BC2C 8FAB008C */  lw    $t3, 0x8c($sp)
/* 02C830 8002BC30 44803000 */  mtc1  $zero, $f6
/* 02C834 8002BC34 8FAC0090 */  lw    $t4, 0x90($sp)
/* 02C838 8002BC38 C5640000 */  lwc1  $f4, ($t3)
/* 02C83C 8002BC3C E7A6005C */  swc1  $f6, 0x5c($sp)
/* 02C840 8002BC40 27A40058 */  addiu $a0, $sp, 0x58
/* 02C844 8002BC44 E7A40058 */  swc1  $f4, 0x58($sp)
/* 02C848 8002BC48 C5880000 */  lwc1  $f8, ($t4)
/* 02C84C 8002BC4C 27A50064 */  addiu $a1, $sp, 0x64
/* 02C850 8002BC50 0C0AD8EE */  jal   func_802B63B8
/* 02C854 8002BC54 E7A80060 */   swc1  $f8, 0x60($sp)
/* 02C858 8002BC58 C60A0020 */  lwc1  $f10, 0x20($s0)
/* 02C85C 8002BC5C 44808000 */  mtc1  $zero, $f16
/* 02C860 8002BC60 27A4004C */  addiu $a0, $sp, 0x4c
/* 02C864 8002BC64 E7AA004C */  swc1  $f10, 0x4c($sp)
/* 02C868 8002BC68 E7B00050 */  swc1  $f16, 0x50($sp)
/* 02C86C 8002BC6C C6120028 */  lwc1  $f18, 0x28($s0)
/* 02C870 8002BC70 27A50064 */  addiu $a1, $sp, 0x64
/* 02C874 8002BC74 0C0AD8EE */  jal   func_802B63B8
/* 02C878 8002BC78 E7B20054 */   swc1  $f18, 0x54($sp)
/* 02C87C 8002BC7C 27A40058 */  addiu $a0, $sp, 0x58
/* 02C880 8002BC80 0C0AD489 */  jal   func_802B5224
/* 02C884 8002BC84 27A5004C */   addiu $a1, $sp, 0x4c
/* 02C888 8002BC88 8605002E */  lh    $a1, 0x2e($s0)
/* 02C88C 8002BC8C 00024023 */  negu  $t0, $v0
/* 02C890 8002BC90 3C010001 */  lui   $at, 1
/* 02C894 8002BC94 00A06825 */  move  $t5, $a1
/* 02C898 8002BC98 01A82023 */  subu  $a0, $t5, $t0
/* 02C89C 8002BC9C 00812021 */  addu  $a0, $a0, $at
/* 02C8A0 8002BCA0 00044C00 */  sll   $t1, $a0, 0x10
/* 02C8A4 8002BCA4 00095403 */  sra   $t2, $t1, 0x10
/* 02C8A8 8002BCA8 240100B6 */  li    $at, 182
/* 02C8AC 8002BCAC 0141001A */  div   $zero, $t2, $at
/* 02C8B0 8002BCB0 00005812 */  mflo  $t3
/* 02C8B4 8002BCB4 000B6400 */  sll   $t4, $t3, 0x10
/* 02C8B8 8002BCB8 000C6C03 */  sra   $t5, $t4, 0x10
/* 02C8BC 8002BCBC 29A10097 */  slti  $at, $t5, 0x97
/* 02C8C0 8002BCC0 10200003 */  beqz  $at, .L8002BCD0
/* 02C8C4 8002BCC4 29A1FF6A */   slti  $at, $t5, -0x96
/* 02C8C8 8002BCC8 5020001F */  beql  $at, $zero, .L8002BD48
/* 02C8CC 8002BCCC 8FBF0024 */   lw    $ra, 0x24($sp)
.L8002BCD0:
/* 02C8D0 8002BCD0 8E03007C */  lw    $v1, 0x7c($s0)
/* 02C8D4 8002BCD4 24010006 */  li    $at, 6
/* 02C8D8 8002BCD8 0003CC03 */  sra   $t9, $v1, 0x10
/* 02C8DC 8002BCDC 0321001A */  div   $zero, $t9, $at
/* 02C8E0 8002BCE0 00001012 */  mflo  $v0
/* 02C8E4 8002BCE4 0002C400 */  sll   $t8, $v0, 0x10
/* 02C8E8 8002BCE8 00187403 */  sra   $t6, $t8, 0x10
/* 02C8EC 8002BCEC 01C01025 */  move  $v0, $t6
/* 02C8F0 8002BCF0 05C10004 */  bgez  $t6, .L8002BD04
/* 02C8F4 8002BCF4 03201825 */   move  $v1, $t9
/* 02C8F8 8002BCF8 000E7823 */  negu  $t7, $t6
/* 02C8FC 8002BCFC 000F4400 */  sll   $t0, $t7, 0x10
/* 02C900 8002BD00 00081403 */  sra   $v0, $t0, 0x10
.L8002BD04:
/* 02C904 8002BD04 28410008 */  slti  $at, $v0, 8
/* 02C908 8002BD08 14200002 */  bnez  $at, .L8002BD14
/* 02C90C 8002BD0C 00000000 */   nop   
/* 02C910 8002BD10 24020008 */  li    $v0, 8
.L8002BD14:
/* 02C914 8002BD14 04610007 */  bgez  $v1, .L8002BD34
/* 02C918 8002BD18 00026840 */   sll   $t5, $v0, 1
/* 02C91C 8002BD1C 00025040 */  sll   $t2, $v0, 1
/* 02C920 8002BD20 03AA5821 */  addu  $t3, $sp, $t2
/* 02C924 8002BD24 856B0030 */  lh    $t3, 0x30($t3)
/* 02C928 8002BD28 00AB6023 */  subu  $t4, $a1, $t3
/* 02C92C 8002BD2C 10000005 */  b     .L8002BD44
/* 02C930 8002BD30 A60C002E */   sh    $t4, 0x2e($s0)
.L8002BD34:
/* 02C934 8002BD34 03ADC821 */  addu  $t9, $sp, $t5
/* 02C938 8002BD38 87390030 */  lh    $t9, 0x30($t9)
/* 02C93C 8002BD3C 00B9C021 */  addu  $t8, $a1, $t9
/* 02C940 8002BD40 A618002E */  sh    $t8, 0x2e($s0)
.L8002BD44:
/* 02C944 8002BD44 8FBF0024 */  lw    $ra, 0x24($sp)
.L8002BD48:
/* 02C948 8002BD48 8FB00020 */  lw    $s0, 0x20($sp)
/* 02C94C 8002BD4C 27BD0088 */  addiu $sp, $sp, 0x88
/* 02C950 8002BD50 03E00008 */  jr    $ra
/* 02C954 8002BD54 00000000 */   nop   
