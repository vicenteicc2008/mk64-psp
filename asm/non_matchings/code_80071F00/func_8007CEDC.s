.section .late_rodata

glabel jpt_800EEEBC
.word L8007CF70, L8007CF2C, L8007CF3C, L8007CF50
.word L8007CF64

glabel jpt_800EEED0
.word L8007D05C, L8007CFB8, L8007CFE4
.word L8007D038, L8007D054

.word 0x00000000

.section .text

glabel func_8007CEDC
/* 07DADC 8007CEDC 000470C0 */  sll   $t6, $a0, 3
/* 07DAE0 8007CEE0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 07DAE4 8007CEE4 01C47023 */  subu  $t6, $t6, $a0
/* 07DAE8 8007CEE8 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 07DAEC 8007CEEC AFB00024 */  sw    $s0, 0x24($sp)
/* 07DAF0 8007CEF0 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 07DAF4 8007CEF4 000E7140 */  sll   $t6, $t6, 5
/* 07DAF8 8007CEF8 01CF8021 */  addu  $s0, $t6, $t7
/* 07DAFC 8007CEFC 860200A6 */  lh    $v0, 0xa6($s0)
/* 07DB00 8007CF00 AFB10028 */  sw    $s1, 0x28($sp)
/* 07DB04 8007CF04 00808825 */  move  $s1, $a0
/* 07DB08 8007CF08 2C410005 */  sltiu $at, $v0, 5
/* 07DB0C 8007CF0C 10200018 */  beqz  $at, .L8007CF70
/* 07DB10 8007CF10 AFBF002C */   sw    $ra, 0x2c($sp)
/* 07DB14 8007CF14 0002C080 */  sll   $t8, $v0, 2
/* 07DB18 8007CF18 3C01800F */  lui   $at, %hi(jpt_800EEEBC)
/* 07DB1C 8007CF1C 00380821 */  addu  $at, $at, $t8
/* 07DB20 8007CF20 8C38EEBC */  lw    $t8, %lo(jpt_800EEEBC)($at)
/* 07DB24 8007CF24 03000008 */  jr    $t8
/* 07DB28 8007CF28 00000000 */   nop   
glabel L8007CF2C
/* 07DB2C 8007CF2C 0C01F383 */  jal   func_8007CE0C
/* 07DB30 8007CF30 02202025 */   move  $a0, $s1
/* 07DB34 8007CF34 1000000E */  b     .L8007CF70
/* 07DB38 8007CF38 860200A6 */   lh    $v0, 0xa6($s0)
glabel L8007CF3C
/* 07DB3C 8007CF3C 02202025 */  move  $a0, $s1
/* 07DB40 8007CF40 0C01C9E3 */  jal   func_8007278C
/* 07DB44 8007CF44 2405001E */   li    $a1, 30
/* 07DB48 8007CF48 10000009 */  b     .L8007CF70
/* 07DB4C 8007CF4C 860200A6 */   lh    $v0, 0xa6($s0)
glabel L8007CF50
/* 07DB50 8007CF50 02202025 */  move  $a0, $s1
/* 07DB54 8007CF54 0C01C9E3 */  jal   func_8007278C
/* 07DB58 8007CF58 240503E8 */   li    $a1, 1000
/* 07DB5C 8007CF5C 10000004 */  b     .L8007CF70
/* 07DB60 8007CF60 860200A6 */   lh    $v0, 0xa6($s0)
glabel L8007CF64
/* 07DB64 8007CF64 0C01C90A */  jal   func_80072428
/* 07DB68 8007CF68 02202025 */   move  $a0, $s1
/* 07DB6C 8007CF6C 860200A6 */  lh    $v0, 0xa6($s0)
.L8007CF70:
glabel L8007CF70
/* 07DB70 8007CF70 28410002 */  slti  $at, $v0, 2
/* 07DB74 8007CF74 14200039 */  bnez  $at, .L8007D05C
/* 07DB78 8007CF78 02202025 */   move  $a0, $s1
/* 07DB7C 8007CF7C 920500DC */  lbu   $a1, 0xdc($s0)
/* 07DB80 8007CF80 00003025 */  move  $a2, $zero
/* 07DB84 8007CF84 0C01CA54 */  jal   func_80072950
/* 07DB88 8007CF88 24070004 */   li    $a3, 4
/* 07DB8C 8007CF8C 0C01CD45 */  jal   func_80073514
/* 07DB90 8007CF90 02202025 */   move  $a0, $s1
/* 07DB94 8007CF94 921900DC */  lbu   $t9, 0xdc($s0)
/* 07DB98 8007CF98 2F210005 */  sltiu $at, $t9, 5
/* 07DB9C 8007CF9C 1020002F */  beqz  $at, .L8007D05C
/* 07DBA0 8007CFA0 0019C880 */   sll   $t9, $t9, 2
/* 07DBA4 8007CFA4 3C01800F */  lui   $at, %hi(jpt_800EEED0) # 0x800f
/* 07DBA8 8007CFA8 00390821 */  addu  $at, $at, $t9
/* 07DBAC 8007CFAC 8C39EED0 */  lw    $t9, %lo(jpt_800EEED0)($at) # -0x1130($at)
/* 07DBB0 8007CFB0 03200008 */  jr    $t9
/* 07DBB4 8007CFB4 00000000 */   nop   
glabel L8007CFB8
/* 07DBB8 8007CFB8 24080004 */  li    $t0, 4
/* 07DBBC 8007CFBC AFA80010 */  sw    $t0, 0x10($sp)
/* 07DBC0 8007CFC0 02202025 */  move  $a0, $s1
/* 07DBC4 8007CFC4 260500A0 */  addiu $a1, $s0, 0xa0
/* 07DBC8 8007CFC8 24060028 */  li    $a2, 40
/* 07DBCC 8007CFCC 24070050 */  li    $a3, 80
/* 07DBD0 8007CFD0 AFA00014 */  sw    $zero, 0x14($sp)
/* 07DBD4 8007CFD4 0C01CE66 */  jal   func_80073998
/* 07DBD8 8007CFD8 AFA00018 */   sw    $zero, 0x18($sp)
/* 07DBDC 8007CFDC 10000020 */  b     .L8007D060
/* 07DBE0 8007CFE0 8FBF002C */   lw    $ra, 0x2c($sp)
glabel L8007CFE4
/* 07DBE4 8007CFE4 24090002 */  li    $t1, 2
/* 07DBE8 8007CFE8 240AFFFF */  li    $t2, -1
/* 07DBEC 8007CFEC AFAA0018 */  sw    $t2, 0x18($sp)
/* 07DBF0 8007CFF0 AFA90010 */  sw    $t1, 0x10($sp)
/* 07DBF4 8007CFF4 02202025 */  move  $a0, $s1
/* 07DBF8 8007CFF8 260500A0 */  addiu $a1, $s0, 0xa0
/* 07DBFC 8007CFFC 24060050 */  li    $a2, 80
/* 07DC00 8007D000 240700B4 */  li    $a3, 180
/* 07DC04 8007D004 0C01CF2C */  jal   func_80073CB0
/* 07DC08 8007D008 AFA00014 */   sw    $zero, 0x14($sp)
/* 07DC0C 8007D00C 860B00AE */  lh    $t3, 0xae($s0)
/* 07DC10 8007D010 51600006 */  beql  $t3, $zero, .L8007D02C
/* 07DC14 8007D014 920D00DC */   lbu   $t5, 0xdc($s0)
/* 07DC18 8007D018 860C00A6 */  lh    $t4, 0xa6($s0)
/* 07DC1C 8007D01C 24010003 */  li    $at, 3
/* 07DC20 8007D020 5581000F */  bnel  $t4, $at, .L8007D060
/* 07DC24 8007D024 8FBF002C */   lw    $ra, 0x2c($sp)
/* 07DC28 8007D028 920D00DC */  lbu   $t5, 0xdc($s0)
.L8007D02C:
/* 07DC2C 8007D02C 25AE0001 */  addiu $t6, $t5, 1
/* 07DC30 8007D030 1000000A */  b     .L8007D05C
/* 07DC34 8007D034 A20E00DC */   sb    $t6, 0xdc($s0)
glabel L8007D038
/* 07DC38 8007D038 02202025 */  move  $a0, $s1
/* 07DC3C 8007D03C 260500A0 */  addiu $a1, $s0, 0xa0
/* 07DC40 8007D040 00003025 */  move  $a2, $zero
/* 07DC44 8007D044 0C01CF70 */  jal   func_80073DC0
/* 07DC48 8007D048 24070004 */   li    $a3, 4
/* 07DC4C 8007D04C 10000004 */  b     .L8007D060
/* 07DC50 8007D050 8FBF002C */   lw    $ra, 0x2c($sp)
glabel L8007D054
/* 07DC54 8007D054 0C01CE21 */  jal   func_80073884
/* 07DC58 8007D058 02202025 */   move  $a0, $s1
.L8007D05C:
glabel L8007D05C
/* 07DC5C 8007D05C 8FBF002C */  lw    $ra, 0x2c($sp)
.L8007D060:
/* 07DC60 8007D060 8FB00024 */  lw    $s0, 0x24($sp)
/* 07DC64 8007D064 8FB10028 */  lw    $s1, 0x28($sp)
/* 07DC68 8007D068 03E00008 */  jr    $ra
/* 07DC6C 8007D06C 27BD0030 */   addiu $sp, $sp, 0x30
