glabel func_80093E60
/* 094A60 80093E60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 094A64 80093E64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 094A68 80093E68 0C0A9EDC */  jal   get_next_available_memory_addr
/* 094A6C 80093E6C 24042800 */   li    $a0, 10240
/* 094A70 80093E70 3C018019 */  lui   $at, %hi(D_8018D9B4) # $at, 0x8019
/* 094A74 80093E74 3C040001 */  lui   $a0, (0x000124F8 >> 16) # lui $a0, 1
/* 094A78 80093E78 AC22D9B4 */  sw    $v0, %lo(D_8018D9B4)($at)
/* 094A7C 80093E7C 0C0A9EDC */  jal   get_next_available_memory_addr
/* 094A80 80093E80 348424F8 */   ori   $a0, (0x000124F8 & 0xFFFF) # ori $a0, $a0, 0x24f8
/* 094A84 80093E84 3C018019 */  lui   $at, %hi(D_8018D9B0) # $at, 0x8019
/* 094A88 80093E88 AC22D9B0 */  sw    $v0, %lo(D_8018D9B0)($at)
/* 094A8C 80093E8C 0C0A9EDC */  jal   get_next_available_memory_addr
/* 094A90 80093E90 24041000 */   li    $a0, 4096
/* 094A94 80093E94 3C018019 */  lui   $at, %hi(D_8018D9B8) # $at, 0x8019
/* 094A98 80093E98 AC22D9B8 */  sw    $v0, %lo(D_8018D9B8)($at)
/* 094A9C 80093E9C 0C0A9EDC */  jal   get_next_available_memory_addr
/* 094AA0 80093EA0 24040004 */   li    $a0, 4
/* 094AA4 80093EA4 3C018019 */  lui   $at, %hi(D_8018D9BC) # $at, 0x8019
/* 094AA8 80093EA8 AC22D9BC */  sw    $v0, %lo(D_8018D9BC)($at)
/* 094AAC 80093EAC 3C028019 */  lui   $v0, %hi(D_8018E7B1) # $v0, 0x8019
/* 094AB0 80093EB0 3C038019 */  lui   $v1, %hi(D_8018E7AC) # $v1, 0x8019
/* 094AB4 80093EB4 2463E7AC */  addiu $v1, %lo(D_8018E7AC) # addiu $v1, $v1, -0x1854
/* 094AB8 80093EB8 2442E7B1 */  addiu $v0, %lo(D_8018E7B1) # addiu $v0, $v0, -0x184f
.L80093EBC:
/* 094ABC 80093EBC 24630001 */  addiu $v1, $v1, 1
/* 094AC0 80093EC0 0062082B */  sltu  $at, $v1, $v0
/* 094AC4 80093EC4 1420FFFD */  bnez  $at, .L80093EBC
/* 094AC8 80093EC8 A060FFFF */   sb    $zero, -1($v1)
/* 094ACC 80093ECC 3C018019 */  lui   $at, %hi(D_8018E838) # $at, 0x8019
/* 094AD0 80093ED0 A020E839 */  sb    $zero, %lo(D_8018E838+0x1)($at)
/* 094AD4 80093ED4 A020E83A */  sb    $zero, %lo(D_8018E838+0x2)($at)
/* 094AD8 80093ED8 A020E83B */  sb    $zero, %lo(D_8018E838+0x3)($at)
/* 094ADC 80093EDC 0C026444 */  jal   func_80099110
/* 094AE0 80093EE0 A020E838 */   sb    $zero, %lo(D_8018E838)($at)
/* 094AE4 80093EE4 0C0268D1 */  jal   func_8009A344
/* 094AE8 80093EE8 00000000 */   nop   
/* 094AEC 80093EEC 0C027988 */  jal   func_8009E620
/* 094AF0 80093EF0 00000000 */   nop   
/* 094AF4 80093EF4 0C024896 */  jal   func_80092258
/* 094AF8 80093EF8 00000000 */   nop   
/* 094AFC 80093EFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 094B00 80093F00 3C018019 */  lui   $at, %hi(D_8018ED91) # $at, 0x8019
/* 094B04 80093F04 A020ED91 */  sb    $zero, %lo(D_8018ED91)($at)
/* 094B08 80093F08 03E00008 */  jr    $ra
/* 094B0C 80093F0C 27BD0018 */   addiu $sp, $sp, 0x18
