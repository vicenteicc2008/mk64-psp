glabel func_80091FA4
/* 092BA4 80091FA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 092BA8 80091FA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 092BAC 80091FAC 0C0A9EDC */  jal   get_next_available_memory_addr
/* 092BB0 80091FB0 24042800 */   li    $a0, 10240
/* 092BB4 80091FB4 3C018019 */  lui   $at, %hi(D_8018D9B4) # $at, 0x8019
/* 092BB8 80091FB8 3C040001 */  lui   $a0, (0x000124F8 >> 16) # lui $a0, 1
/* 092BBC 80091FBC AC22D9B4 */  sw    $v0, %lo(D_8018D9B4)($at)
/* 092BC0 80091FC0 0C0A9EDC */  jal   get_next_available_memory_addr
/* 092BC4 80091FC4 348424F8 */   ori   $a0, (0x000124F8 & 0xFFFF) # ori $a0, $a0, 0x24f8
/* 092BC8 80091FC8 3C018019 */  lui   $at, %hi(D_8018D9B0) # $at, 0x8019
/* 092BCC 80091FCC AC22D9B0 */  sw    $v0, %lo(D_8018D9B0)($at)
/* 092BD0 80091FD0 0C0A9EDC */  jal   get_next_available_memory_addr
/* 092BD4 80091FD4 24041000 */   li    $a0, 4096
/* 092BD8 80091FD8 3C018019 */  lui   $at, %hi(D_8018D9B8) # $at, 0x8019
/* 092BDC 80091FDC AC22D9B8 */  sw    $v0, %lo(D_8018D9B8)($at)
/* 092BE0 80091FE0 0C0A9EDC */  jal   get_next_available_memory_addr
/* 092BE4 80091FE4 24040004 */   li    $a0, 4
/* 092BE8 80091FE8 3C018019 */  lui   $at, %hi(D_8018D9BC) # $at, 0x8019
/* 092BEC 80091FEC AC22D9BC */  sw    $v0, %lo(D_8018D9BC)($at)
/* 092BF0 80091FF0 3C028019 */  lui   $v0, %hi(D_8018E7B1) # $v0, 0x8019
/* 092BF4 80091FF4 3C038019 */  lui   $v1, %hi(D_8018E7AC) # $v1, 0x8019
/* 092BF8 80091FF8 2463E7AC */  addiu $v1, %lo(D_8018E7AC) # addiu $v1, $v1, -0x1854
/* 092BFC 80091FFC 2442E7B1 */  addiu $v0, %lo(D_8018E7B1) # addiu $v0, $v0, -0x184f
.L80092000:
/* 092C00 80092000 24630001 */  addiu $v1, $v1, 1
/* 092C04 80092004 0062082B */  sltu  $at, $v1, $v0
/* 092C08 80092008 1420FFFD */  bnez  $at, .L80092000
/* 092C0C 8009200C A060FFFF */   sb    $zero, -1($v1)
/* 092C10 80092010 3C018019 */  lui   $at, %hi(D_8018E838) # $at, 0x8019
/* 092C14 80092014 A020E839 */  sb    $zero, %lo(D_8018E838+0x1)($at)
/* 092C18 80092018 A020E83A */  sb    $zero, %lo(D_8018E838+0x2)($at)
/* 092C1C 8009201C A020E83B */  sb    $zero, %lo(D_8018E838+0x3)($at)
/* 092C20 80092020 0C026444 */  jal   func_80099110
/* 092C24 80092024 A020E838 */   sb    $zero, %lo(D_8018E838)($at)
/* 092C28 80092028 0C0268D1 */  jal   func_8009A344
/* 092C2C 8009202C 00000000 */   nop   
/* 092C30 80092030 0C027988 */  jal   func_8009E620
/* 092C34 80092034 00000000 */   nop   
/* 092C38 80092038 0C024896 */  jal   func_80092258
/* 092C3C 8009203C 00000000 */   nop   
/* 092C40 80092040 24040096 */  li    $a0, 150
/* 092C44 80092044 24050064 */  li    $a1, 100
/* 092C48 80092048 24060024 */  li    $a2, 36
/* 092C4C 8009204C 0C027994 */  jal   add_8018D9E0_entry
/* 092C50 80092050 24070001 */   li    $a3, 1
/* 092C54 80092054 24040097 */  li    $a0, 151
/* 092C58 80092058 24050064 */  li    $a1, 100
/* 092C5C 8009205C 240600DD */  li    $a2, 221
/* 092C60 80092060 0C027994 */  jal   add_8018D9E0_entry
/* 092C64 80092064 24070001 */   li    $a3, 1
/* 092C68 80092068 24040098 */  li    $a0, 152
/* 092C6C 8009206C 00002825 */  move  $a1, $zero
/* 092C70 80092070 00003025 */  move  $a2, $zero
/* 092C74 80092074 0C027994 */  jal   add_8018D9E0_entry
/* 092C78 80092078 00003825 */   move  $a3, $zero
/* 092C7C 8009207C 240400C7 */  li    $a0, 199
/* 092C80 80092080 00002825 */  move  $a1, $zero
/* 092C84 80092084 00003025 */  move  $a2, $zero
/* 092C88 80092088 0C027994 */  jal   add_8018D9E0_entry
/* 092C8C 8009208C 00003825 */   move  $a3, $zero
/* 092C90 80092090 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 092C94 80092094 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 092C98 80092098 24010001 */  li    $at, 1
/* 092C9C 8009209C 240400BE */  li    $a0, 190
/* 092CA0 800920A0 15C10009 */  bne   $t6, $at, .L800920C8
/* 092CA4 800920A4 00002825 */   move  $a1, $zero
/* 092CA8 800920A8 00003025 */  move  $a2, $zero
/* 092CAC 800920AC 0C027994 */  jal   add_8018D9E0_entry
/* 092CB0 800920B0 00003825 */   move  $a3, $zero
/* 092CB4 800920B4 2404010E */  li    $a0, 270
/* 092CB8 800920B8 00002825 */  move  $a1, $zero
/* 092CBC 800920BC 00003025 */  move  $a2, $zero
/* 092CC0 800920C0 0C027994 */  jal   add_8018D9E0_entry
/* 092CC4 800920C4 00003825 */   move  $a3, $zero
.L800920C8:
/* 092CC8 800920C8 3C0F8016 */  lui   $t7, %hi(D_8015F890) # $t7, 0x8016
/* 092CCC 800920CC 95EFF890 */  lhu   $t7, %lo(D_8015F890)($t7)
/* 092CD0 800920D0 3C18800E */  lui   $t8, %hi(gModeSelection) # $t8, 0x800e
/* 092CD4 800920D4 11E00009 */  beqz  $t7, .L800920FC
/* 092CD8 800920D8 00000000 */   nop   
/* 092CDC 800920DC 8F18C53C */  lw    $t8, %lo(gModeSelection)($t8)
/* 092CE0 800920E0 24010001 */  li    $at, 1
/* 092CE4 800920E4 240400BD */  li    $a0, 189
/* 092CE8 800920E8 17010004 */  bne   $t8, $at, .L800920FC
/* 092CEC 800920EC 00002825 */   move  $a1, $zero
/* 092CF0 800920F0 00003025 */  move  $a2, $zero
/* 092CF4 800920F4 0C027994 */  jal   add_8018D9E0_entry
/* 092CF8 800920F8 00003825 */   move  $a3, $zero
.L800920FC:
/* 092CFC 800920FC 3C198015 */  lui   $t9, %hi(gControllerBits) # $t9, 0x8015
/* 092D00 80092100 9339F108 */  lbu   $t9, %lo(gControllerBits)($t9)
/* 092D04 80092104 3C098019 */  lui   $t1, %hi(D_8018EE08) # $t1, 0x8019
/* 092D08 80092108 33280001 */  andi  $t0, $t9, 1
/* 092D0C 8009210C 15000008 */  bnez  $t0, .L80092130
/* 092D10 80092110 00000000 */   nop   
/* 092D14 80092114 8129EE08 */  lb    $t1, %lo(D_8018EE08)($t1)
/* 092D18 80092118 24040004 */  li    $a0, 4
/* 092D1C 8009211C 00002825 */  move  $a1, $zero
/* 092D20 80092120 11200003 */  beqz  $t1, .L80092130
/* 092D24 80092124 00003025 */   move  $a2, $zero
/* 092D28 80092128 0C027994 */  jal   add_8018D9E0_entry
/* 092D2C 8009212C 24070002 */   li    $a3, 2
.L80092130:
/* 092D30 80092130 0C02D7CC */  jal   func_800B5F30
/* 092D34 80092134 00000000 */   nop   
/* 092D38 80092138 8FBF0014 */  lw    $ra, 0x14($sp)
/* 092D3C 8009213C 27BD0018 */  addiu $sp, $sp, 0x18
/* 092D40 80092140 03E00008 */  jr    $ra
/* 092D44 80092144 00000000 */   nop   
