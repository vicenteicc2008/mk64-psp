.section .late_rodata

glabel D_800EE064
.float 0.6

.section .text

glabel func_80050C68
/* 051868 80050C68 27BDFF70 */  addiu $sp, $sp, -0x90
/* 05186C 80050C6C AFB20028 */  sw    $s2, 0x28($sp)
/* 051870 80050C70 AFB00020 */  sw    $s0, 0x20($sp)
/* 051874 80050C74 AFBE0040 */  sw    $fp, 0x40($sp)
/* 051878 80050C78 AFB7003C */  sw    $s7, 0x3c($sp)
/* 05187C 80050C7C AFB60038 */  sw    $s6, 0x38($sp)
/* 051880 80050C80 AFB10024 */  sw    $s1, 0x24($sp)
/* 051884 80050C84 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 051888 80050C88 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 05188C 80050C8C 3C128016 */  lui   $s2, %hi(D_80163DE8) # $s2, 0x8016
/* 051890 80050C90 3C01800F */  lui   $at, %hi(D_800EE064) # $at, 0x800f
/* 051894 80050C94 AFBF0044 */  sw    $ra, 0x44($sp)
/* 051898 80050C98 AFB50034 */  sw    $s5, 0x34($sp)
/* 05189C 80050C9C AFB40030 */  sw    $s4, 0x30($sp)
/* 0518A0 80050CA0 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0518A4 80050CA4 C434E064 */  lwc1  $f20, %lo(D_800EE064)($at)
/* 0518A8 80050CA8 26523DE8 */  addiu $s2, %lo(D_80163DE8) # addiu $s2, $s2, 0x3de8
/* 0518AC 80050CAC 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 0518B0 80050CB0 00008825 */  move  $s1, $zero
/* 0518B4 80050CB4 3C160600 */  lui   $s6, 0x600
/* 0518B8 80050CB8 24170004 */  li    $s7, 4
/* 0518BC 80050CBC 27BE0088 */  addiu $fp, $sp, 0x88
.L80050CC0:
/* 0518C0 80050CC0 96420044 */  lhu   $v0, 0x44($s2)
/* 0518C4 80050CC4 52E2004B */  beql  $s7, $v0, .L80050DF4
/* 0518C8 80050CC8 26310001 */   addiu $s1, $s1, 1
/* 0518CC 80050CCC 10400048 */  beqz  $v0, .L80050DF0
/* 0518D0 80050CD0 3224FFFF */   andi  $a0, $s1, 0xffff
/* 0518D4 80050CD4 3C130D00 */  lui   $s3, %hi(D_0D007DB8) # $s3, 0xd00
/* 0518D8 80050CD8 3C140D02 */  lui   $s4, %hi(gTLUTPortraitBombKartAndQuestionMark) # $s4, 0xd02
/* 0518DC 80050CDC 3C150D00 */  lui   $s5, %hi(D_0D0069E0) # $s5, 0xd00
/* 0518E0 80050CE0 26B569E0 */  addiu $s5, %lo(D_0D0069E0) # addiu $s5, $s5, 0x69e0
/* 0518E4 80050CE4 2694B4D8 */  addiu $s4, %lo(gTLUTPortraitBombKartAndQuestionMark) # addiu $s4, $s4, -0x4b28
/* 0518E8 80050CE8 26737DB8 */  addiu $s3, %lo(D_0D007DB8) # addiu $s3, $s3, 0x7db8
/* 0518EC 80050CEC 03C02825 */  move  $a1, $fp
/* 0518F0 80050CF0 0C0141F6 */  jal   func_800507D8
/* 0518F4 80050CF4 27A60084 */   addiu $a2, $sp, 0x84
/* 0518F8 80050CF8 8E020000 */  lw    $v0, ($s0)
/* 0518FC 80050CFC 3C18FD10 */  lui   $t8, 0xfd10
/* 051900 80050D00 3C0DE800 */  lui   $t5, 0xe800
/* 051904 80050D04 244E0008 */  addiu $t6, $v0, 8
/* 051908 80050D08 AE0E0000 */  sw    $t6, ($s0)
/* 05190C 80050D0C AC530004 */  sw    $s3, 4($v0)
/* 051910 80050D10 AC560000 */  sw    $s6, ($v0)
/* 051914 80050D14 8E020000 */  lw    $v0, ($s0)
/* 051918 80050D18 3C040D02 */  lui   $a0, %hi(gTexturePortraitBombKartAndQuestionMark) # $a0, 0xd02
/* 05191C 80050D1C 2484D6D8 */  addiu $a0, %lo(gTexturePortraitBombKartAndQuestionMark) # addiu $a0, $a0, -0x2928
/* 051920 80050D20 244F0008 */  addiu $t7, $v0, 8
/* 051924 80050D24 AE0F0000 */  sw    $t7, ($s0)
/* 051928 80050D28 AC540004 */  sw    $s4, 4($v0)
/* 05192C 80050D2C AC580000 */  sw    $t8, ($v0)
/* 051930 80050D30 8E020000 */  lw    $v0, ($s0)
/* 051934 80050D34 3C0FF500 */  lui   $t7, (0xF5000100 >> 16) # lui $t7, 0xf500
/* 051938 80050D38 35EF0100 */  ori   $t7, (0xF5000100 & 0xFFFF) # ori $t7, $t7, 0x100
/* 05193C 80050D3C 24590008 */  addiu $t9, $v0, 8
/* 051940 80050D40 AE190000 */  sw    $t9, ($s0)
/* 051944 80050D44 AC400004 */  sw    $zero, 4($v0)
/* 051948 80050D48 AC4D0000 */  sw    $t5, ($v0)
/* 05194C 80050D4C 8E020000 */  lw    $v0, ($s0)
/* 051950 80050D50 3C180700 */  lui   $t8, 0x700
/* 051954 80050D54 3C0DE600 */  lui   $t5, 0xe600
/* 051958 80050D58 244E0008 */  addiu $t6, $v0, 8
/* 05195C 80050D5C AE0E0000 */  sw    $t6, ($s0)
/* 051960 80050D60 AC580004 */  sw    $t8, 4($v0)
/* 051964 80050D64 AC4F0000 */  sw    $t7, ($v0)
/* 051968 80050D68 8E020000 */  lw    $v0, ($s0)
/* 05196C 80050D6C 3C18073F */  lui   $t8, (0x073FC000 >> 16) # lui $t8, 0x73f
/* 051970 80050D70 3718C000 */  ori   $t8, (0x073FC000 & 0xFFFF) # ori $t8, $t8, 0xc000
/* 051974 80050D74 24590008 */  addiu $t9, $v0, 8
/* 051978 80050D78 AE190000 */  sw    $t9, ($s0)
/* 05197C 80050D7C AC400004 */  sw    $zero, 4($v0)
/* 051980 80050D80 AC4D0000 */  sw    $t5, ($v0)
/* 051984 80050D84 8E020000 */  lw    $v0, ($s0)
/* 051988 80050D88 3C0FF000 */  lui   $t7, 0xf000
/* 05198C 80050D8C 3C0DE700 */  lui   $t5, 0xe700
/* 051990 80050D90 244E0008 */  addiu $t6, $v0, 8
/* 051994 80050D94 AE0E0000 */  sw    $t6, ($s0)
/* 051998 80050D98 AC580004 */  sw    $t8, 4($v0)
/* 05199C 80050D9C AC4F0000 */  sw    $t7, ($v0)
/* 0519A0 80050DA0 8E020000 */  lw    $v0, ($s0)
/* 0519A4 80050DA4 24050020 */  li    $a1, 32
/* 0519A8 80050DA8 24060020 */  li    $a2, 32
/* 0519AC 80050DAC 24590008 */  addiu $t9, $v0, 8
/* 0519B0 80050DB0 AE190000 */  sw    $t9, ($s0)
/* 0519B4 80050DB4 AC400004 */  sw    $zero, 4($v0)
/* 0519B8 80050DB8 0C0114A9 */  jal   func_800452A4
/* 0519BC 80050DBC AC4D0000 */   sw    $t5, ($v0)
/* 0519C0 80050DC0 8FA40088 */  lw    $a0, 0x88($sp)
/* 0519C4 80050DC4 8FA50084 */  lw    $a1, 0x84($sp)
/* 0519C8 80050DC8 4407A000 */  mfc1  $a3, $f20
/* 0519CC 80050DCC 00003025 */  move  $a2, $zero
/* 0519D0 80050DD0 24840020 */  addiu $a0, $a0, 0x20
/* 0519D4 80050DD4 0C0108CC */  jal   func_80042330
/* 0519D8 80050DD8 24A50012 */   addiu $a1, $a1, 0x12
/* 0519DC 80050DDC 8E020000 */  lw    $v0, ($s0)
/* 0519E0 80050DE0 244E0008 */  addiu $t6, $v0, 8
/* 0519E4 80050DE4 AE0E0000 */  sw    $t6, ($s0)
/* 0519E8 80050DE8 AC550004 */  sw    $s5, 4($v0)
/* 0519EC 80050DEC AC560000 */  sw    $s6, ($v0)
.L80050DF0:
/* 0519F0 80050DF0 26310001 */  addiu $s1, $s1, 1
.L80050DF4:
/* 0519F4 80050DF4 24010007 */  li    $at, 7
/* 0519F8 80050DF8 1621FFB1 */  bne   $s1, $at, .L80050CC0
/* 0519FC 80050DFC 26520054 */   addiu $s2, $s2, 0x54
/* 051A00 80050E00 8FBF0044 */  lw    $ra, 0x44($sp)
/* 051A04 80050E04 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 051A08 80050E08 8FB00020 */  lw    $s0, 0x20($sp)
/* 051A0C 80050E0C 8FB10024 */  lw    $s1, 0x24($sp)
/* 051A10 80050E10 8FB20028 */  lw    $s2, 0x28($sp)
/* 051A14 80050E14 8FB3002C */  lw    $s3, 0x2c($sp)
/* 051A18 80050E18 8FB40030 */  lw    $s4, 0x30($sp)
/* 051A1C 80050E1C 8FB50034 */  lw    $s5, 0x34($sp)
/* 051A20 80050E20 8FB60038 */  lw    $s6, 0x38($sp)
/* 051A24 80050E24 8FB7003C */  lw    $s7, 0x3c($sp)
/* 051A28 80050E28 8FBE0040 */  lw    $fp, 0x40($sp)
/* 051A2C 80050E2C 03E00008 */  jr    $ra
/* 051A30 80050E30 27BD0090 */   addiu $sp, $sp, 0x90
