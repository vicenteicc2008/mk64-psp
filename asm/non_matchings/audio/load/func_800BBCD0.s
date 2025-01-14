glabel func_800BBCD0
/* 0BC8D0 800BBCD0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0BC8D4 800BBCD4 AFB50028 */  sw    $s5, 0x28($sp)
/* 0BC8D8 800BBCD8 3C15803B */  lui   $s5, %hi(gAlBankSets) # $s5, 0x803b
/* 0BC8DC 800BBCDC 26B57078 */  addiu $s5, %lo(gAlBankSets) # addiu $s5, $s5, 0x7078
/* 0BC8E0 800BBCE0 8EA20000 */  lw    $v0, ($s5)
/* 0BC8E4 800BBCE4 00047040 */  sll   $t6, $a0, 1
/* 0BC8E8 800BBCE8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0BC8EC 800BBCEC AFB40024 */  sw    $s4, 0x24($sp)
/* 0BC8F0 800BBCF0 AFB30020 */  sw    $s3, 0x20($sp)
/* 0BC8F4 800BBCF4 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0BC8F8 800BBCF8 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BC8FC 800BBCFC AFB00014 */  sw    $s0, 0x14($sp)
/* 0BC900 800BBD00 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0BC904 800BBD04 004E7821 */  addu  $t7, $v0, $t6
/* 0BC908 800BBD08 95F10000 */  lhu   $s1, ($t7)
/* 0BC90C 800BBD0C 3C14803B */  lui   $s4, %hi(gBankLoadStatus) # $s4, 0x803b
/* 0BC910 800BBD10 269403C0 */  addiu $s4, %lo(gBankLoadStatus) # addiu $s4, $s4, 0x3c0
/* 0BC914 800BBD14 0222C021 */  addu  $t8, $s1, $v0
/* 0BC918 800BBD18 93120000 */  lbu   $s2, ($t8)
/* 0BC91C 800BBD1C 26310001 */  addiu $s1, $s1, 1
/* 0BC920 800BBD20 3239FFFF */  andi  $t9, $s1, 0xffff
/* 0BC924 800BBD24 12400020 */  beqz  $s2, .L800BBDA8
/* 0BC928 800BBD28 03208825 */   move  $s1, $t9
/* 0BC92C 800BBD2C 24130001 */  li    $s3, 1
.L800BBD30:
/* 0BC930 800BBD30 8EA80000 */  lw    $t0, ($s5)
/* 0BC934 800BBD34 02602025 */  move  $a0, $s3
/* 0BC938 800BBD38 24050002 */  li    $a1, 2
/* 0BC93C 800BBD3C 02284821 */  addu  $t1, $s1, $t0
/* 0BC940 800BBD40 91300000 */  lbu   $s0, ($t1)
/* 0BC944 800BBD44 26310001 */  addiu $s1, $s1, 1
/* 0BC948 800BBD48 322AFFFF */  andi  $t2, $s1, 0xffff
/* 0BC94C 800BBD4C 02905821 */  addu  $t3, $s4, $s0
/* 0BC950 800BBD50 916C0000 */  lbu   $t4, ($t3)
/* 0BC954 800BBD54 01408825 */  move  $s1, $t2
/* 0BC958 800BBD58 00001825 */  move  $v1, $zero
/* 0BC95C 800BBD5C 298D0002 */  slti  $t5, $t4, 2
/* 0BC960 800BBD60 39AD0001 */  xori  $t5, $t5, 1
/* 0BC964 800BBD64 166D0005 */  bne   $s3, $t5, .L800BBD7C
/* 0BC968 800BBD68 00000000 */   nop   
/* 0BC96C 800BBD6C 0C02E6A4 */  jal   get_bank_or_seq
/* 0BC970 800BBD70 02003025 */   move  $a2, $s0
/* 0BC974 800BBD74 10000001 */  b     .L800BBD7C
/* 0BC978 800BBD78 00401825 */   move  $v1, $v0
.L800BBD7C:
/* 0BC97C 800BBD7C 14600004 */  bnez  $v1, .L800BBD90
/* 0BC980 800BBD80 02002025 */   move  $a0, $s0
/* 0BC984 800BBD84 0C02EDE0 */  jal   func_800BB780
/* 0BC988 800BBD88 24050002 */   li    $a1, 2
/* 0BC98C 800BBD8C 00401825 */  move  $v1, $v0
.L800BBD90:
/* 0BC990 800BBD90 2652FFFF */  addiu $s2, $s2, -1
/* 0BC994 800BBD94 324E00FF */  andi  $t6, $s2, 0xff
/* 0BC998 800BBD98 15C0FFE5 */  bnez  $t6, .L800BBD30
/* 0BC99C 800BBD9C 01C09025 */   move  $s2, $t6
/* 0BC9A0 800BBDA0 AFA30034 */  sw    $v1, 0x34($sp)
/* 0BC9A4 800BBDA4 AFB00030 */  sw    $s0, 0x30($sp)
.L800BBDA8:
/* 0BC9A8 800BBDA8 8FB00030 */  lw    $s0, 0x30($sp)
/* 0BC9AC 800BBDAC 8FAF003C */  lw    $t7, 0x3c($sp)
/* 0BC9B0 800BBDB0 8FA20034 */  lw    $v0, 0x34($sp)
/* 0BC9B4 800BBDB4 A1F00000 */  sb    $s0, ($t7)
/* 0BC9B8 800BBDB8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0BC9BC 800BBDBC 8FB50028 */  lw    $s5, 0x28($sp)
/* 0BC9C0 800BBDC0 8FB40024 */  lw    $s4, 0x24($sp)
/* 0BC9C4 800BBDC4 8FB30020 */  lw    $s3, 0x20($sp)
/* 0BC9C8 800BBDC8 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0BC9CC 800BBDCC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BC9D0 800BBDD0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BC9D4 800BBDD4 03E00008 */  jr    $ra
/* 0BC9D8 800BBDD8 27BD0038 */   addiu $sp, $sp, 0x38
