glabel func_80071A20
/* 072620 80071A20 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 072624 80071A24 AFBF0014 */  sw    $ra, 0x14($sp)
/* 072628 80071A28 3C048018 */  lui   $a0, %hi(D_80183DA0) # $a0, 0x8018
/* 07262C 80071A2C 0C01C7C0 */  jal   find_unused_obj_index
/* 072630 80071A30 24843DA0 */   addiu $a0, %lo(D_80183DA0) # addiu $a0, $a0, 0x3da0
/* 072634 80071A34 3C048018 */  lui   $a0, %hi(D_80183DB8) # $a0, 0x8018
/* 072638 80071A38 0C01C7C0 */  jal   find_unused_obj_index
/* 07263C 80071A3C 24843DB8 */   addiu $a0, %lo(D_80183DB8) # addiu $a0, $a0, 0x3db8
/* 072640 80071A40 3C048018 */  lui   $a0, %hi(D_80183DBC) # $a0, 0x8018
/* 072644 80071A44 0C01C7C0 */  jal   find_unused_obj_index
/* 072648 80071A48 24843DBC */   addiu $a0, %lo(D_80183DBC) # addiu $a0, $a0, 0x3dbc
/* 07264C 80071A4C 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId) # $a0, 0x8018
/* 072650 80071A50 0C01C7C0 */  jal   find_unused_obj_index
/* 072654 80071A54 24843E88 */   addiu $a0, %lo(gItemWindowObjectByPlayerId) # addiu $a0, $a0, 0x3e88
/* 072658 80071A58 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId + 4) # $a0, 0x8018
/* 07265C 80071A5C 0C01C7C0 */  jal   find_unused_obj_index
/* 072660 80071A60 24843E8C */   addiu $a0, %lo(gItemWindowObjectByPlayerId + 4) # addiu $a0, $a0, 0x3e8c
/* 072664 80071A64 0C01C064 */  jal   func_80070190
/* 072668 80071A68 00000000 */   nop
/* 07266C 80071A6C 0C01C157 */  jal   func_8007055C
/* 072670 80071A70 00000000 */   nop
/* 072674 80071A74 0C01C157 */  jal   func_8007055C
/* 072678 80071A78 00000000 */   nop
/* 07267C 80071A7C 0C01C1E0 */  jal   func_80070780
/* 072680 80071A80 00000000 */   nop
/* 072684 80071A84 3C028019 */  lui   $v0, %hi(D_8018CA70) # $v0, 0x8019
/* 072688 80071A88 2442CA70 */  addiu $v0, %lo(D_8018CA70) # addiu $v0, $v0, -0x3590
/* 07268C 80071A8C 2403FFAD */  li    $v1, -83
/* 072690 80071A90 240400A0 */  li    $a0, 160
/* 072694 80071A94 24050034 */  li    $a1, 52
/* 072698 80071A98 240600EA */  li    $a2, 234
/* 07269C 80071A9C 24070101 */  li    $a3, 257
/* 0726A0 80071AA0 240E0022 */  li    $t6, 34
/* 0726A4 80071AA4 A44E0044 */  sh    $t6, 0x44($v0)
/* 0726A8 80071AA8 240F003C */  li    $t7, 60
/* 0726AC 80071AAC 24180062 */  li    $t8, 98
/* 0726B0 80071AB0 24190010 */  li    $t9, 16
/* 0726B4 80071AB4 2408006A */  li    $t0, 106
/* 0726B8 80071AB8 2409008F */  li    $t1, 143
/* 0726BC 80071ABC 240A00B4 */  li    $t2, 180
/* 0726C0 80071AC0 240B00D2 */  li    $t3, 210
/* 0726C4 80071AC4 240C007F */  li    $t4, 127
/* 0726C8 80071AC8 240D00DA */  li    $t5, 218
/* 0726CC 80071ACC A4430042 */  sh    $v1, 0x42($v0)
/* 0726D0 80071AD0 A4400046 */  sh    $zero, 0x46($v0)
/* 0726D4 80071AD4 A4400048 */  sh    $zero, 0x48($v0)
/* 0726D8 80071AD8 A444004A */  sh    $a0, 0x4a($v0)
/* 0726DC 80071ADC A44F004C */  sh    $t7, 0x4c($v0)
/* 0726E0 80071AE0 A4450062 */  sh    $a1, 0x62($v0)
/* 0726E4 80071AE4 A4580064 */  sh    $t8, 0x64($v0)
/* 0726E8 80071AE8 A4400066 */  sh    $zero, 0x66($v0)
/* 0726EC 80071AEC A4400068 */  sh    $zero, 0x68($v0)
/* 0726F0 80071AF0 A446004E */  sh    $a2, 0x4e($v0)
/* 0726F4 80071AF4 A4590058 */  sh    $t9, 0x58($v0)
/* 0726F8 80071AF8 A447005A */  sh    $a3, 0x5a($v0)
/* 0726FC 80071AFC A4480060 */  sh    $t0, 0x60($v0)
/* 072700 80071B00 A44300C6 */  sh    $v1, 0xc6($v0)
/* 072704 80071B04 A44900C8 */  sh    $t1, 0xc8($v0)
/* 072708 80071B08 A44000CA */  sh    $zero, 0xca($v0)
/* 07270C 80071B0C A44000CC */  sh    $zero, 0xcc($v0)
/* 072710 80071B10 A44400CE */  sh    $a0, 0xce($v0)
/* 072714 80071B14 A44A00D0 */  sh    $t2, 0xd0($v0)
/* 072718 80071B18 A44500E6 */  sh    $a1, 0xe6($v0)
/* 07271C 80071B1C A44B00E8 */  sh    $t3, 0xe8($v0)
/* 072720 80071B20 A44000EA */  sh    $zero, 0xea($v0)
/* 072724 80071B24 A44000EC */  sh    $zero, 0xec($v0)
/* 072728 80071B28 A44600D2 */  sh    $a2, 0xd2($v0)
/* 07272C 80071B2C A44C00DC */  sh    $t4, 0xdc($v0)
/* 072730 80071B30 A44700DE */  sh    $a3, 0xde($v0)
/* 072734 80071B34 A44D00E4 */  sh    $t5, 0xe4($v0)
/* 072738 80071B38 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 07273C 80071B3C 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 072740 80071B40 24010003 */  li    $at, 3
/* 072744 80071B44 3C038016 */  lui   $v1, %hi(gGPCurrentRaceRankByPlayerId) # $v1, 0x8016
/* 072748 80071B48 15C10005 */  bne   $t6, $at, .L80071B60
/* 07274C 80071B4C 246343B8 */   addiu $v1, %lo(gGPCurrentRaceRankByPlayerId) # addiu $v1, $v1, 0x43b8
/* 072750 80071B50 240F005E */  li    $t7, 94
/* 072754 80071B54 241800D0 */  li    $t8, 208
/* 072758 80071B58 A44F0044 */  sh    $t7, 0x44($v0)
/* 07275C 80071B5C A45800C8 */  sh    $t8, 0xc8($v0)
.L80071B60:
/* 072760 80071B60 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 072764 80071B64 44812000 */  mtc1  $at, $f4
/* 072768 80071B68 8C790000 */  lw    $t9, ($v1)
/* 07276C 80071B6C 8C680004 */  lw    $t0, 4($v1)
/* 072770 80071B70 E4440088 */  swc1  $f4, 0x88($v0)
/* 072774 80071B74 C4460088 */  lwc1  $f6, 0x88($v0)
/* 072778 80071B78 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId) # $a0, 0x8018
/* 07277C 80071B7C A459006A */  sh    $t9, 0x6a($v0)
/* 072780 80071B80 A44800EE */  sh    $t0, 0xee($v0)
/* 072784 80071B84 E4460004 */  swc1  $f6, 4($v0)
/* 072788 80071B88 0C01BB9F */  jal   func_8006EE7C
/* 07278C 80071B8C 8C843E88 */   lw    $a0, %lo(gItemWindowObjectByPlayerId)($a0)
/* 072790 80071B90 3C048018 */  lui   $a0, %hi(gItemWindowObjectByPlayerId + 4) # $a0, 0x8018
/* 072794 80071B94 0C01BB9F */  jal   func_8006EE7C
/* 072798 80071B98 8C843E8C */   lw    $a0, %lo(gItemWindowObjectByPlayerId + 4)($a0)
/* 07279C 80071B9C 2409001E */  li    $t1, 30
/* 0727A0 80071BA0 3C018019 */  lui   $at, %hi(D_8018D3C4) # $at, 0x8019
/* 0727A4 80071BA4 AC29D3C4 */  sw    $t1, %lo(D_8018D3C4)($at)
/* 0727A8 80071BA8 3C018019 */  lui   $at, %hi(D_8018D3BC) # $at, 0x8019
/* 0727AC 80071BAC 240A0018 */  li    $t2, 24
/* 0727B0 80071BB0 AC2AD3BC */  sw    $t2, %lo(D_8018D3BC)($at)
/* 0727B4 80071BB4 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 0727B8 80071BB8 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 0727BC 80071BBC 3C018019 */  lui   $at, %hi(D_8018D3C0) # $at, 0x8019
/* 0727C0 80071BC0 240B0028 */  li    $t3, 40
/* 0727C4 80071BC4 AC2BD3C0 */  sw    $t3, %lo(D_8018D3C0)($at)
/* 0727C8 80071BC8 3C018016 */  lui   $at, %hi(D_801657A2) # $at, 0x8016
/* 0727CC 80071BCC 240C0666 */  li    $t4, 1638
/* 0727D0 80071BD0 10400009 */  beqz  $v0, .L80071BF8
/* 0727D4 80071BD4 A42C57A2 */   sh    $t4, %lo(D_801657A2)($at)
/* 0727D8 80071BD8 24030002 */  li    $v1, 2
/* 0727DC 80071BDC 1043000A */  beq   $v0, $v1, .L80071C08
/* 0727E0 80071BE0 3C018019 */   lui   $at, %hi(D_8018D158) # 0x8019
/* 0727E4 80071BE4 24010003 */  li    $at, 3
/* 0727E8 80071BE8 10410009 */  beq   $v0, $at, .L80071C10
/* 0727EC 80071BEC 00000000 */   nop
/* 0727F0 80071BF0 1000000A */  b     .L80071C1C
/* 0727F4 80071BF4 8FBF0014 */   lw    $ra, 0x14($sp)
.L80071BF8:
/* 0727F8 80071BF8 240D0008 */  li    $t5, 8
/* 0727FC 80071BFC 3C018019 */  lui   $at, %hi(D_8018D158) # $at, 0x8019
/* 072800 80071C00 10000005 */  b     .L80071C18
/* 072804 80071C04 AC2DD158 */   sw    $t5, %lo(D_8018D158)($at)
.L80071C08:
/* 072808 80071C08 10000003 */  b     .L80071C18
/* 07280C 80071C0C AC23D158 */   sw    $v1, %lo(D_8018D158)($at)
.L80071C10:
/* 072810 80071C10 3C018019 */  lui   $at, %hi(D_8018D158) # $at, 0x8019
/* 072814 80071C14 AC23D158 */  sw    $v1, %lo(D_8018D158)($at)
.L80071C18:
/* 072818 80071C18 8FBF0014 */  lw    $ra, 0x14($sp)
.L80071C1C:
/* 07281C 80071C1C 27BD0018 */  addiu $sp, $sp, 0x18
/* 072820 80071C20 03E00008 */  jr    $ra
/* 072824 80071C24 00000000 */   nop
