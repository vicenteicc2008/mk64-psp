.section .late_rodata

glabel D_800EE7C8
.double 0.8

.section .text

glabel func_8006801C
/* 068C1C 8006801C 27BDFF78 */  addiu $sp, $sp, -0x88
/* 068C20 80068020 AFA5008C */  sw    $a1, 0x8c($sp)
/* 068C24 80068024 AFA70094 */  sw    $a3, 0x94($sp)
/* 068C28 80068028 3C0F800E */  lui   $t7, %hi(D_800E48F4) # $t7, 0x800e
/* 068C2C 8006802C AFBF001C */  sw    $ra, 0x1c($sp)
/* 068C30 80068030 AFB00018 */  sw    $s0, 0x18($sp)
/* 068C34 80068034 AFA60090 */  sw    $a2, 0x90($sp)
/* 068C38 80068038 25EF48F4 */  addiu $t7, %lo(D_800E48F4) # addiu $t7, $t7, 0x48f4
/* 068C3C 8006803C 00057600 */  sll   $t6, $a1, 0x18
/* 068C40 80068040 8DE10000 */  lw    $at, ($t7)
/* 068C44 80068044 8DF90004 */  lw    $t9, 4($t7)
/* 068C48 80068048 000E2E03 */  sra   $a1, $t6, 0x18
/* 068C4C 8006804C 27AE0054 */  addiu $t6, $sp, 0x54
/* 068C50 80068050 ADC10000 */  sw    $at, ($t6)
/* 068C54 80068054 ADD90004 */  sw    $t9, 4($t6)
/* 068C58 80068058 8DF9000C */  lw    $t9, 0xc($t7)
/* 068C5C 8006805C 8DE10008 */  lw    $at, 8($t7)
/* 068C60 80068060 0007C600 */  sll   $t8, $a3, 0x18
/* 068C64 80068064 ADD9000C */  sw    $t9, 0xc($t6)
/* 068C68 80068068 ADC10008 */  sw    $at, 8($t6)
/* 068C6C 8006806C 8DE10010 */  lw    $at, 0x10($t7)
/* 068C70 80068070 8DF90014 */  lw    $t9, 0x14($t7)
/* 068C74 80068074 00183E03 */  sra   $a3, $t8, 0x18
/* 068C78 80068078 ADC10010 */  sw    $at, 0x10($t6)
/* 068C7C 8006807C ADD90014 */  sw    $t9, 0x14($t6)
/* 068C80 80068080 8DF9001C */  lw    $t9, 0x1c($t7)
/* 068C84 80068084 8DE10018 */  lw    $at, 0x18($t7)
/* 068C88 80068088 0007C0C0 */  sll   $t8, $a3, 3
/* 068C8C 8006808C 0307C021 */  addu  $t8, $t8, $a3
/* 068C90 80068090 0018C0C0 */  sll   $t8, $t8, 3
/* 068C94 80068094 00981021 */  addu  $v0, $a0, $t8
/* 068C98 80068098 ADD9001C */  sw    $t9, 0x1c($t6)
/* 068C9C 8006809C ADC10018 */  sw    $at, 0x18($t6)
/* 068CA0 800680A0 844E0814 */  lh    $t6, 0x814($v0)
/* 068CA4 800680A4 24010001 */  li    $at, 1
/* 068CA8 800680A8 00808025 */  move  $s0, $a0
/* 068CAC 800680AC 15C10093 */  bne   $t6, $at, .L800682FC
/* 068CB0 800680B0 00057840 */   sll   $t7, $a1, 1
/* 068CB4 800680B4 A7A00074 */  sh    $zero, 0x74($sp)
/* 068CB8 800680B8 008FC821 */  addu  $t9, $a0, $t7
/* 068CBC 800680BC 87380048 */  lh    $t8, 0x48($t9)
/* 068CC0 800680C0 A7A00078 */  sh    $zero, 0x78($sp)
/* 068CC4 800680C4 A7B80076 */  sh    $t8, 0x76($sp)
/* 068CC8 800680C8 848F00C0 */  lh    $t7, 0xc0($a0)
/* 068CCC 800680CC 848E002E */  lh    $t6, 0x2e($a0)
/* 068CD0 800680D0 24184000 */  li    $t8, 16384
/* 068CD4 800680D4 AFA20024 */  sw    $v0, 0x24($sp)
/* 068CD8 800680D8 01CFC821 */  addu  $t9, $t6, $t7
/* 068CDC 800680DC 03192023 */  subu  $a0, $t8, $t9
/* 068CE0 800680E0 308EFFFF */  andi  $t6, $a0, 0xffff
/* 068CE4 800680E4 0C0AE006 */  jal   sins
/* 068CE8 800680E8 01C02025 */   move  $a0, $t6
/* 068CEC 800680EC C7A40098 */  lwc1  $f4, 0x98($sp)
/* 068CF0 800680F0 C6080014 */  lwc1  $f8, 0x14($s0)
/* 068CF4 800680F4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 068CF8 800680F8 46040182 */  mul.s $f6, $f0, $f4
/* 068CFC 800680FC 46083280 */  add.s $f10, $f6, $f8
/* 068D00 80068100 E7AA007C */  swc1  $f10, 0x7c($sp)
/* 068D04 80068104 960F0254 */  lhu   $t7, 0x254($s0)
/* 068D08 80068108 C6120070 */  lwc1  $f18, 0x70($s0)
/* 068D0C 8006810C C6100018 */  lwc1  $f16, 0x18($s0)
/* 068D10 80068110 000FC080 */  sll   $t8, $t7, 2
/* 068D14 80068114 03B8C821 */  addu  $t9, $sp, $t8
/* 068D18 80068118 46128100 */  add.s $f4, $f16, $f18
/* 068D1C 8006811C C7260054 */  lwc1  $f6, 0x54($t9)
/* 068D20 80068120 44815000 */  mtc1  $at, $f10
/* 068D24 80068124 24194000 */  li    $t9, 16384
/* 068D28 80068128 46062201 */  sub.s $f8, $f4, $f6
/* 068D2C 8006812C 460A4401 */  sub.s $f16, $f8, $f10
/* 068D30 80068130 E7B00080 */  swc1  $f16, 0x80($sp)
/* 068D34 80068134 860F00C0 */  lh    $t7, 0xc0($s0)
/* 068D38 80068138 860E002E */  lh    $t6, 0x2e($s0)
/* 068D3C 8006813C 01CFC021 */  addu  $t8, $t6, $t7
/* 068D40 80068140 03382023 */  subu  $a0, $t9, $t8
/* 068D44 80068144 308EFFFF */  andi  $t6, $a0, 0xffff
/* 068D48 80068148 0C0AE00E */  jal   coss
/* 068D4C 8006814C 01C02025 */   move  $a0, $t6
/* 068D50 80068150 C7B20098 */  lwc1  $f18, 0x98($sp)
/* 068D54 80068154 C606001C */  lwc1  $f6, 0x1c($s0)
/* 068D58 80068158 8FA20024 */  lw    $v0, 0x24($sp)
/* 068D5C 8006815C 46120102 */  mul.s $f4, $f0, $f18
/* 068D60 80068160 3C01800F */  lui   $at, %hi(D_800EE7C8)
/* 068D64 80068164 27A4007C */  addiu $a0, $sp, 0x7c
/* 068D68 80068168 27A50074 */  addiu $a1, $sp, 0x74
/* 068D6C 8006816C 46062200 */  add.s $f8, $f4, $f6
/* 068D70 80068170 D426E7C8 */  ldc1  $f6, %lo(D_800EE7C8)($at)
/* 068D74 80068174 E7A80084 */  swc1  $f8, 0x84($sp)
/* 068D78 80068178 C6100224 */  lwc1  $f16, 0x224($s0)
/* 068D7C 8006817C C44A0804 */  lwc1  $f10, 0x804($v0)
/* 068D80 80068180 46105482 */  mul.s $f18, $f10, $f16
/* 068D84 80068184 46009121 */  cvt.d.s $f4, $f18
/* 068D88 80068188 46262202 */  mul.d $f8, $f4, $f6
/* 068D8C 8006818C 462042A0 */  cvt.s.d $f10, $f8
/* 068D90 80068190 44065000 */  mfc1  $a2, $f10
/* 068D94 80068194 0C0194B5 */  jal   func_800652D4
/* 068D98 80068198 00000000 */   nop   
/* 068D9C 8006819C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 068DA0 800681A0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 068DA4 800681A4 8C620000 */  lw    $v0, ($v1)
/* 068DA8 800681A8 3C180D01 */  lui   $t8, %hi(D_0D008DB8) # $t8, 0xd01
/* 068DAC 800681AC 27188DB8 */  addiu $t8, %lo(D_0D008DB8) # addiu $t8, $t8, -0x7248
/* 068DB0 800681B0 244F0008 */  addiu $t7, $v0, 8
/* 068DB4 800681B4 AC6F0000 */  sw    $t7, ($v1)
/* 068DB8 800681B8 3C190600 */  lui   $t9, 0x600
/* 068DBC 800681BC AC590000 */  sw    $t9, ($v0)
/* 068DC0 800681C0 AC580004 */  sw    $t8, 4($v0)
/* 068DC4 800681C4 8C620000 */  lw    $v0, ($v1)
/* 068DC8 800681C8 3C0FFD90 */  lui   $t7, 0xfd90
/* 068DCC 800681CC 240700FF */  li    $a3, 255
/* 068DD0 800681D0 244E0008 */  addiu $t6, $v0, 8
/* 068DD4 800681D4 AC6E0000 */  sw    $t6, ($v1)
/* 068DD8 800681D8 AC4F0000 */  sw    $t7, ($v0)
/* 068DDC 800681DC 8FB90090 */  lw    $t9, 0x90($sp)
/* 068DE0 800681E0 3C0F0700 */  lui   $t7, 0x700
/* 068DE4 800681E4 3C0EF590 */  lui   $t6, 0xf590
/* 068DE8 800681E8 AC590004 */  sw    $t9, 4($v0)
/* 068DEC 800681EC 8C620000 */  lw    $v0, ($v1)
/* 068DF0 800681F0 24580008 */  addiu $t8, $v0, 8
/* 068DF4 800681F4 AC780000 */  sw    $t8, ($v1)
/* 068DF8 800681F8 AC4F0004 */  sw    $t7, 4($v0)
/* 068DFC 800681FC AC4E0000 */  sw    $t6, ($v0)
/* 068E00 80068200 8C620000 */  lw    $v0, ($v1)
/* 068E04 80068204 3C18E600 */  lui   $t8, 0xe600
/* 068E08 80068208 3C0FF300 */  lui   $t7, 0xf300
/* 068E0C 8006820C 24590008 */  addiu $t9, $v0, 8
/* 068E10 80068210 AC790000 */  sw    $t9, ($v1)
/* 068E14 80068214 AC400004 */  sw    $zero, 4($v0)
/* 068E18 80068218 AC580000 */  sw    $t8, ($v0)
/* 068E1C 8006821C 8C620000 */  lw    $v0, ($v1)
/* 068E20 80068220 3C19071F */  lui   $t9, (0x071FF200 >> 16) # lui $t9, 0x71f
/* 068E24 80068224 3739F200 */  ori   $t9, (0x071FF200 & 0xFFFF) # ori $t9, $t9, 0xf200
/* 068E28 80068228 244E0008 */  addiu $t6, $v0, 8
/* 068E2C 8006822C AC6E0000 */  sw    $t6, ($v1)
/* 068E30 80068230 AC590004 */  sw    $t9, 4($v0)
/* 068E34 80068234 AC4F0000 */  sw    $t7, ($v0)
/* 068E38 80068238 8C620000 */  lw    $v0, ($v1)
/* 068E3C 8006823C 3C0EE700 */  lui   $t6, 0xe700
/* 068E40 80068240 3C19F588 */  lui   $t9, (0xF5880800 >> 16) # lui $t9, 0xf588
/* 068E44 80068244 24580008 */  addiu $t8, $v0, 8
/* 068E48 80068248 AC780000 */  sw    $t8, ($v1)
/* 068E4C 8006824C AC400004 */  sw    $zero, 4($v0)
/* 068E50 80068250 AC4E0000 */  sw    $t6, ($v0)
/* 068E54 80068254 8C620000 */  lw    $v0, ($v1)
/* 068E58 80068258 37390800 */  ori   $t9, (0xF5880800 & 0xFFFF) # ori $t9, $t9, 0x800
/* 068E5C 8006825C 3C0EF200 */  lui   $t6, 0xf200
/* 068E60 80068260 244F0008 */  addiu $t7, $v0, 8
/* 068E64 80068264 AC6F0000 */  sw    $t7, ($v1)
/* 068E68 80068268 AC400004 */  sw    $zero, 4($v0)
/* 068E6C 8006826C AC590000 */  sw    $t9, ($v0)
/* 068E70 80068270 8C620000 */  lw    $v0, ($v1)
/* 068E74 80068274 3C0F0007 */  lui   $t7, (0x0007C07C >> 16) # lui $t7, 7
/* 068E78 80068278 35EFC07C */  ori   $t7, (0x0007C07C & 0xFFFF) # ori $t7, $t7, 0xc07c
/* 068E7C 8006827C 24580008 */  addiu $t8, $v0, 8
/* 068E80 80068280 AC780000 */  sw    $t8, ($v1)
/* 068E84 80068284 AC4F0004 */  sw    $t7, 4($v0)
/* 068E88 80068288 AC4E0000 */  sw    $t6, ($v0)
/* 068E8C 8006828C 8FA6009C */  lw    $a2, 0x9c($sp)
/* 068E90 80068290 0006C403 */  sra   $t8, $a2, 0x10
/* 068E94 80068294 330E00FF */  andi  $t6, $t8, 0xff
/* 068E98 80068298 000E7C00 */  sll   $t7, $t6, 0x10
/* 068E9C 8006829C 000F2403 */  sra   $a0, $t7, 0x10
/* 068EA0 800682A0 00067203 */  sra   $t6, $a2, 8
/* 068EA4 800682A4 31CF00FF */  andi  $t7, $t6, 0xff
/* 068EA8 800682A8 000FC400 */  sll   $t8, $t7, 0x10
/* 068EAC 800682AC 00182C03 */  sra   $a1, $t8, 0x10
/* 068EB0 800682B0 30CF00FF */  andi  $t7, $a2, 0xff
/* 068EB4 800682B4 000FC400 */  sll   $t8, $t7, 0x10
/* 068EB8 800682B8 0C012D05 */  jal   func_8004B414
/* 068EBC 800682BC 00183403 */   sra   $a2, $t8, 0x10
/* 068EC0 800682C0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 068EC4 800682C4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 068EC8 800682C8 8C620000 */  lw    $v0, ($v1)
/* 068ECC 800682CC 3C180D01 */  lui   $t8, %hi(D_0D008E20) # $t8, 0xd01
/* 068ED0 800682D0 3C058016 */  lui   $a1, %hi(D_80164AF0) # $a1, 0x8016
/* 068ED4 800682D4 24590008 */  addiu $t9, $v0, 8
/* 068ED8 800682D8 AC790000 */  sw    $t9, ($v1)
/* 068EDC 800682DC 27188E20 */  addiu $t8, %lo(D_0D008E20) # addiu $t8, $t8, -0x71e0
/* 068EE0 800682E0 3C0F0600 */  lui   $t7, 0x600
/* 068EE4 800682E4 24A54AF0 */  addiu $a1, %lo(D_80164AF0) # addiu $a1, $a1, 0x4af0
/* 068EE8 800682E8 AC4F0000 */  sw    $t7, ($v0)
/* 068EEC 800682EC AC580004 */  sw    $t8, 4($v0)
/* 068EF0 800682F0 84AE0000 */  lh    $t6, ($a1)
/* 068EF4 800682F4 25D90001 */  addiu $t9, $t6, 1
/* 068EF8 800682F8 A4B90000 */  sh    $t9, ($a1)
.L800682FC:
/* 068EFC 800682FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 068F00 80068300 8FB00018 */  lw    $s0, 0x18($sp)
/* 068F04 80068304 27BD0088 */  addiu $sp, $sp, 0x88
/* 068F08 80068308 03E00008 */  jr    $ra
/* 068F0C 8006830C 00000000 */   nop   
