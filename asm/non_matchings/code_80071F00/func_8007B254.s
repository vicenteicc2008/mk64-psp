glabel func_8007B254
/* 07BE54 8007B254 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07BE58 8007B258 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07BE5C 8007B25C AFA40020 */  sw    $a0, 0x20($sp)
/* 07BE60 8007B260 0C01C90A */  jal   func_80072428
/* 07BE64 8007B264 AFA50024 */   sw    $a1, 0x24($sp)
/* 07BE68 8007B268 8FA40020 */  lw    $a0, 0x20($sp)
/* 07BE6C 8007B26C 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 07BE70 8007B270 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 07BE74 8007B274 000470C0 */  sll   $t6, $a0, 3
/* 07BE78 8007B278 01C47023 */  subu  $t6, $t6, $a0
/* 07BE7C 8007B27C 000E7140 */  sll   $t6, $t6, 5
/* 07BE80 8007B280 01CF1021 */  addu  $v0, $t6, $t7
/* 07BE84 8007B284 3C190D02 */  lui   $t9, %hi(gTLUTItemWindowNone) # $t9, 0xd02
/* 07BE88 8007B288 3C080D02 */  lui   $t0, %hi(gTextureItemWindowNone) # $t0, 0xd02
/* 07BE8C 8007B28C 24180002 */  li    $t8, 2
/* 07BE90 8007B290 2739DED8 */  addiu $t9, %lo(gTLUTItemWindowNone) # addiu $t9, $t9, -0x2128
/* 07BE94 8007B294 2508FED8 */  addiu $t0, %lo(gTextureItemWindowNone) # addiu $t0, $t0, -0x128
/* 07BE98 8007B298 24090028 */  li    $t1, 40
/* 07BE9C 8007B29C 240A0020 */  li    $t2, 32
/* 07BEA0 8007B2A0 240B0032 */  li    $t3, 50
/* 07BEA4 8007B2A4 240C0001 */  li    $t4, 1
/* 07BEA8 8007B2A8 A45800A6 */  sh    $t8, 0xa6($v0)
/* 07BEAC 8007B2AC A44000A4 */  sh    $zero, 0xa4($v0)
/* 07BEB0 8007B2B0 AC590068 */  sw    $t9, 0x68($v0)
/* 07BEB4 8007B2B4 AC48006C */  sw    $t0, 0x6c($v0)
/* 07BEB8 8007B2B8 A04900D9 */  sb    $t1, 0xd9($v0)
/* 07BEBC 8007B2BC A04A00DA */  sb    $t2, 0xda($v0)
/* 07BEC0 8007B2C0 AC4B004C */  sw    $t3, 0x4c($v0)
/* 07BEC4 8007B2C4 A04C00D6 */  sb    $t4, 0xd6($v0)
/* 07BEC8 8007B2C8 A4400098 */  sh    $zero, 0x98($v0)
/* 07BECC 8007B2CC AFA20018 */  sw    $v0, 0x18($sp)
/* 07BED0 8007B2D0 0C01C8A9 */  jal   func_800722A4
/* 07BED4 8007B2D4 24050004 */   li    $a1, 4
/* 07BED8 8007B2D8 3C0D8016 */  lui   $t5, %hi(D_80165888) # $t5, 0x8016
/* 07BEDC 8007B2DC 81AD5888 */  lb    $t5, %lo(D_80165888)($t5)
/* 07BEE0 8007B2E0 8FA20018 */  lw    $v0, 0x18($sp)
/* 07BEE4 8007B2E4 8FA40020 */  lw    $a0, 0x20($sp)
/* 07BEE8 8007B2E8 11A00010 */  beqz  $t5, .L8007B32C
/* 07BEEC 8007B2EC 24050008 */   li    $a1, 8
/* 07BEF0 8007B2F0 0C01C9B3 */  jal   func_800726CC
/* 07BEF4 8007B2F4 AFA20018 */   sw    $v0, 0x18($sp)
/* 07BEF8 8007B2F8 8FA20018 */  lw    $v0, 0x18($sp)
/* 07BEFC 8007B2FC 240F000E */  li    $t7, 14
/* 07BF00 8007B300 240E0002 */  li    $t6, 2
/* 07BF04 8007B304 A44F00A4 */  sh    $t7, 0xa4($v0)
/* 07BF08 8007B308 804300A5 */  lb    $v1, 0xa5($v0)
/* 07BF0C 8007B30C 3C018019 */  lui   $at, %hi(D_8018CAB8) # $at, 0x8019
/* 07BF10 8007B310 A04E00D6 */  sb    $t6, 0xd6($v0)
/* 07BF14 8007B314 A04300D2 */  sb    $v1, 0xd2($v0)
/* 07BF18 8007B318 A44300A2 */  sh    $v1, 0xa2($v0)
/* 07BF1C 8007B31C A420CAB8 */  sh    $zero, %lo(D_8018CAB8)($at)
/* 07BF20 8007B320 3C018016 */  lui   $at, %hi(D_80165888) # $at, 0x8016
/* 07BF24 8007B324 10000005 */  b     .L8007B33C
/* 07BF28 8007B328 A0205888 */   sb    $zero, %lo(D_80165888)($at)
.L8007B32C:
/* 07BF2C 8007B32C 3C050100 */  lui   $a1, (0x0100FE1C >> 16) # lui $a1, 0x100
/* 07BF30 8007B330 34A5FE1C */  ori   $a1, (0x0100FE1C & 0xFFFF) # ori $a1, $a1, 0xfe1c
/* 07BF34 8007B334 0C0323E0 */  jal   func_800C8F80
/* 07BF38 8007B338 93A40027 */   lbu   $a0, 0x27($sp)
.L8007B33C:
/* 07BF3C 8007B33C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07BF40 8007B340 27BD0020 */  addiu $sp, $sp, 0x20
/* 07BF44 8007B344 03E00008 */  jr    $ra
/* 07BF48 8007B348 00000000 */   nop   
