glabel update_obj_fake_item_box
/* 10A700 802A10F0 27BDFF88 */  addiu $sp, $sp, -0x78
/* 10A704 802A10F4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 10A708 802A10F8 AFB00020 */  sw    $s0, 0x20($sp)
/* 10A70C 802A10FC 444EF800 */  cfc1  $t6, $31
/* 10A710 802A1100 24030001 */  li    $v1, 1
/* 10A714 802A1104 44C3F800 */  ctc1  $v1, $31
/* 10A718 802A1108 C4840024 */  lwc1  $f4, 0x24($a0)
/* 10A71C 802A110C 3C0C800F */  lui   $t4, %hi(gPlayers) # $t4, 0x800f
/* 10A720 802A1110 00808025 */  move  $s0, $a0
/* 10A724 802A1114 460021A4 */  cvt.w.s $f6, $f4
/* 10A728 802A1118 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 10A72C 802A111C 258C6990 */  addiu $t4, %lo(gPlayers) # addiu $t4, $t4, 0x6990
/* 10A730 802A1120 4443F800 */  cfc1  $v1, $31
/* 10A734 802A1124 00000000 */  nop   
/* 10A738 802A1128 30630078 */  andi  $v1, $v1, 0x78
/* 10A73C 802A112C 50600013 */  beql  $v1, $zero, .L802A117C
/* 10A740 802A1130 44033000 */   mfc1  $v1, $f6
/* 10A744 802A1134 44813000 */  mtc1  $at, $f6
/* 10A748 802A1138 24030001 */  li    $v1, 1
/* 10A74C 802A113C 46062181 */  sub.s $f6, $f4, $f6
/* 10A750 802A1140 44C3F800 */  ctc1  $v1, $31
/* 10A754 802A1144 00000000 */  nop   
/* 10A758 802A1148 460031A4 */  cvt.w.s $f6, $f6
/* 10A75C 802A114C 4443F800 */  cfc1  $v1, $31
/* 10A760 802A1150 00000000 */  nop   
/* 10A764 802A1154 30630078 */  andi  $v1, $v1, 0x78
/* 10A768 802A1158 14600005 */  bnez  $v1, .L802A1170
/* 10A76C 802A115C 00000000 */   nop   
/* 10A770 802A1160 44033000 */  mfc1  $v1, $f6
/* 10A774 802A1164 3C018000 */  lui   $at, 0x8000
/* 10A778 802A1168 10000007 */  b     .L802A1188
/* 10A77C 802A116C 00611825 */   or    $v1, $v1, $at
.L802A1170:
/* 10A780 802A1170 10000005 */  b     .L802A1188
/* 10A784 802A1174 2403FFFF */   li    $v1, -1
/* 10A788 802A1178 44033000 */  mfc1  $v1, $f6
.L802A117C:
/* 10A78C 802A117C 00000000 */  nop   
/* 10A790 802A1180 0460FFFB */  bltz  $v1, .L802A1170
/* 10A794 802A1184 00000000 */   nop   
.L802A1188:
/* 10A798 802A1188 86020006 */  lh    $v0, 6($s0)
/* 10A79C 802A118C 44CEF800 */  ctc1  $t6, $31
/* 10A7A0 802A1190 3C0140B0 */  li    $at, 0x40B00000 # 5.500000
/* 10A7A4 802A1194 10400008 */  beqz  $v0, .L802A11B8
/* 10A7A8 802A1198 000358C0 */   sll   $t3, $v1, 3
/* 10A7AC 802A119C 24010001 */  li    $at, 1
/* 10A7B0 802A11A0 10410070 */  beq   $v0, $at, .L802A1364
/* 10A7B4 802A11A4 24010002 */   li    $at, 2
/* 10A7B8 802A11A8 504100A9 */  beql  $v0, $at, .L802A1450
/* 10A7BC 802A11AC 86020004 */   lh    $v0, 4($s0)
/* 10A7C0 802A11B0 100000BB */  b     .L802A14A0
/* 10A7C4 802A11B4 00000000 */   nop   
.L802A11B8:
/* 10A7C8 802A11B8 C6080008 */  lwc1  $f8, 8($s0)
/* 10A7CC 802A11BC 44815000 */  mtc1  $at, $f10
/* 10A7D0 802A11C0 01635823 */  subu  $t3, $t3, $v1
/* 10A7D4 802A11C4 000B5900 */  sll   $t3, $t3, 4
/* 10A7D8 802A11C8 460A4102 */  mul.s $f4, $f8, $f10
/* 10A7DC 802A11CC 860F0010 */  lh    $t7, 0x10($s0)
/* 10A7E0 802A11D0 86190012 */  lh    $t9, 0x12($s0)
/* 10A7E4 802A11D4 86090014 */  lh    $t1, 0x14($s0)
/* 10A7E8 802A11D8 01635823 */  subu  $t3, $t3, $v1
/* 10A7EC 802A11DC 000B5880 */  sll   $t3, $t3, 2
/* 10A7F0 802A11E0 01635823 */  subu  $t3, $t3, $v1
/* 10A7F4 802A11E4 000B58C0 */  sll   $t3, $t3, 3
/* 10A7F8 802A11E8 25F8FF4A */  addiu $t8, $t7, -0xb6
/* 10A7FC 802A11EC 2728016C */  addiu $t0, $t9, 0x16c
/* 10A800 802A11F0 252AFF4A */  addiu $t2, $t1, -0xb6
/* 10A804 802A11F4 E604000C */  swc1  $f4, 0xc($s0)
/* 10A808 802A11F8 A6180010 */  sh    $t8, 0x10($s0)
/* 10A80C 802A11FC A6080012 */  sh    $t0, 0x12($s0)
/* 10A810 802A1200 A60A0014 */  sh    $t2, 0x14($s0)
/* 10A814 802A1204 016C1021 */  addu  $v0, $t3, $t4
/* 10A818 802A1208 C4460014 */  lwc1  $f6, 0x14($v0)
/* 10A81C 802A120C C6080018 */  lwc1  $f8, 0x18($s0)
/* 10A820 802A1210 C44A0018 */  lwc1  $f10, 0x18($v0)
/* 10A824 802A1214 C604001C */  lwc1  $f4, 0x1c($s0)
/* 10A828 802A1218 46083381 */  sub.s $f14, $f6, $f8
/* 10A82C 802A121C C6080020 */  lwc1  $f8, 0x20($s0)
/* 10A830 802A1220 C446001C */  lwc1  $f6, 0x1c($v0)
/* 10A834 802A1224 46045401 */  sub.s $f16, $f10, $f4
/* 10A838 802A1228 460E7282 */  mul.s $f10, $f14, $f14
/* 10A83C 802A122C E7AE0048 */  swc1  $f14, 0x48($sp)
/* 10A840 802A1230 46083481 */  sub.s $f18, $f6, $f8
/* 10A844 802A1234 46108102 */  mul.s $f4, $f16, $f16
/* 10A848 802A1238 E7B00044 */  swc1  $f16, 0x44($sp)
/* 10A84C 802A123C AFA30074 */  sw    $v1, 0x74($sp)
/* 10A850 802A1240 46129202 */  mul.s $f8, $f18, $f18
/* 10A854 802A1244 E7B20040 */  swc1  $f18, 0x40($sp)
/* 10A858 802A1248 AFA2002C */  sw    $v0, 0x2c($sp)
/* 10A85C 802A124C 46045180 */  add.s $f6, $f10, $f4
/* 10A860 802A1250 0C033850 */  jal   sqrtf
/* 10A864 802A1254 46083300 */   add.s $f12, $f6, $f8
/* 10A868 802A1258 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10A86C 802A125C 44816000 */  mtc1  $at, $f12
/* 10A870 802A1260 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 10A874 802A1264 44815000 */  mtc1  $at, $f10
/* 10A878 802A1268 C7AE0048 */  lwc1  $f14, 0x48($sp)
/* 10A87C 802A126C C7B00044 */  lwc1  $f16, 0x44($sp)
/* 10A880 802A1270 460A0083 */  div.s $f2, $f0, $f10
/* 10A884 802A1274 8FA2002C */  lw    $v0, 0x2c($sp)
/* 10A888 802A1278 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 10A88C 802A127C 8E05000C */  lw    $a1, 0xc($s0)
/* 10A890 802A1280 C4440014 */  lwc1  $f4, 0x14($v0)
/* 10A894 802A1284 26040030 */  addiu $a0, $s0, 0x30
/* 10A898 802A1288 46027383 */  div.s $f14, $f14, $f2
/* 10A89C 802A128C 46028403 */  div.s $f16, $f16, $f2
/* 10A8A0 802A1290 460E2181 */  sub.s $f6, $f4, $f14
/* 10A8A4 802A1294 E6060018 */  swc1  $f6, 0x18($s0)
/* 10A8A8 802A1298 C4480018 */  lwc1  $f8, 0x18($v0)
/* 10A8AC 802A129C 8E060018 */  lw    $a2, 0x18($s0)
/* 10A8B0 802A12A0 46029483 */  div.s $f18, $f18, $f2
/* 10A8B4 802A12A4 46104281 */  sub.s $f10, $f8, $f16
/* 10A8B8 802A12A8 460C5101 */  sub.s $f4, $f10, $f12
/* 10A8BC 802A12AC E604001C */  swc1  $f4, 0x1c($s0)
/* 10A8C0 802A12B0 C446001C */  lwc1  $f6, 0x1c($v0)
/* 10A8C4 802A12B4 8E07001C */  lw    $a3, 0x1c($s0)
/* 10A8C8 802A12B8 46123201 */  sub.s $f8, $f6, $f18
/* 10A8CC 802A12BC E6080020 */  swc1  $f8, 0x20($s0)
/* 10A8D0 802A12C0 C60A0020 */  lwc1  $f10, 0x20($s0)
/* 10A8D4 802A12C4 0C0AB772 */  jal   func_802ADDC8
/* 10A8D8 802A12C8 E7AA0010 */   swc1  $f10, 0x10($sp)
/* 10A8DC 802A12CC 0C0AD38C */  jal   func_802B4E30
/* 10A8E0 802A12D0 02002025 */   move  $a0, $s0
/* 10A8E4 802A12D4 8FA2002C */  lw    $v0, 0x2c($sp)
/* 10A8E8 802A12D8 8FAF0074 */  lw    $t7, 0x74($sp)
/* 10A8EC 802A12DC 3C19800F */  lui   $t9, %hi(gControllers) # $t9, 0x800f
/* 10A8F0 802A12E0 944D0000 */  lhu   $t5, ($v0)
/* 10A8F4 802A12E4 27396910 */  addiu $t9, %lo(gControllers) # addiu $t9, $t9, 0x6910
/* 10A8F8 802A12E8 000FC100 */  sll   $t8, $t7, 4
/* 10A8FC 802A12EC 31AE4000 */  andi  $t6, $t5, 0x4000
/* 10A900 802A12F0 11C0006D */  beqz  $t6, .L802A14A8
/* 10A904 802A12F4 03191821 */   addu  $v1, $t8, $t9
/* 10A908 802A12F8 94650008 */  lhu   $a1, 8($v1)
/* 10A90C 802A12FC 02002025 */  move  $a0, $s0
/* 10A910 802A1300 30A82000 */  andi  $t0, $a1, 0x2000
/* 10A914 802A1304 11000068 */  beqz  $t0, .L802A14A8
/* 10A918 802A1308 30A9DFFF */   andi  $t1, $a1, 0xdfff
/* 10A91C 802A130C A4690008 */  sh    $t1, 8($v1)
/* 10A920 802A1310 0C0A8419 */  jal   func_802A1064
/* 10A924 802A1314 AFA2002C */   sw    $v0, 0x2c($sp)
/* 10A928 802A1318 8FA2002C */  lw    $v0, 0x2c($sp)
/* 10A92C 802A131C 3C01FFFB */  lui   $at, (0xFFFBFFFF >> 16) # lui $at, 0xfffb
/* 10A930 802A1320 3421FFFF */  ori   $at, (0xFFFBFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10A934 802A1324 8C4A000C */  lw    $t2, 0xc($v0)
/* 10A938 802A1328 3C0C800E */  lui   $t4, %hi(D_800DC4DC) # $t4, 0x800e
/* 10A93C 802A132C 3C051900 */  lui   $a1, (0x19008012 >> 16) # lui $a1, 0x1900
/* 10A940 802A1330 01415824 */  and   $t3, $t2, $at
/* 10A944 802A1334 AC4B000C */  sw    $t3, 0xc($v0)
/* 10A948 802A1338 8D8CC4DC */  lw    $t4, %lo(D_800DC4DC)($t4)
/* 10A94C 802A133C 24010DD8 */  li    $at, 3544
/* 10A950 802A1340 34A58012 */  ori   $a1, (0x19008012 & 0xFFFF) # ori $a1, $a1, 0x8012
/* 10A954 802A1344 004C2023 */  subu  $a0, $v0, $t4
/* 10A958 802A1348 0081001A */  div   $zero, $a0, $at
/* 10A95C 802A134C 00006812 */  mflo  $t5
/* 10A960 802A1350 31A400FF */  andi  $a0, $t5, 0xff
/* 10A964 802A1354 0C032418 */  jal   func_800C9060
/* 10A968 802A1358 00000000 */   nop   
/* 10A96C 802A135C 10000053 */  b     .L802A14AC
/* 10A970 802A1360 8FBF0024 */   lw    $ra, 0x24($sp)
.L802A1364:
/* 10A974 802A1364 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10A978 802A1368 44816000 */  mtc1  $at, $f12
/* 10A97C 802A136C C6000008 */  lwc1  $f0, 8($s0)
/* 10A980 802A1370 3C01802C */  lui   $at, %hi(D_802B99D0) # $at, 0x802c
/* 10A984 802A1374 460C003C */  c.lt.s $f0, $f12
/* 10A988 802A1378 00000000 */  nop   
/* 10A98C 802A137C 45020007 */  bc1fl .L802A139C
/* 10A990 802A1380 4600603E */   c.le.s $f12, $f0
/* 10A994 802A1384 C42499D0 */  lwc1  $f4, %lo(D_802B99D0)($at)
/* 10A998 802A1388 46040180 */  add.s $f6, $f0, $f4
/* 10A99C 802A138C E6060008 */  swc1  $f6, 8($s0)
/* 10A9A0 802A1390 10000007 */  b     .L802A13B0
/* 10A9A4 802A1394 C6000008 */   lwc1  $f0, 8($s0)
/* 10A9A8 802A1398 4600603E */  c.le.s $f12, $f0
.L802A139C:
/* 10A9AC 802A139C 00000000 */  nop   
/* 10A9B0 802A13A0 45020004 */  bc1fl .L802A13B4
/* 10A9B4 802A13A4 3C0140B0 */   lui   $at, 0x40b0
/* 10A9B8 802A13A8 E60C0008 */  swc1  $f12, 8($s0)
/* 10A9BC 802A13AC C6000008 */  lwc1  $f0, 8($s0)
.L802A13B0:
/* 10A9C0 802A13B0 3C0140B0 */  li    $at, 0x40B00000 # 5.500000
.L802A13B4:
/* 10A9C4 802A13B4 44814000 */  mtc1  $at, $f8
/* 10A9C8 802A13B8 C602001C */  lwc1  $f2, 0x1c($s0)
/* 10A9CC 802A13BC C60C0028 */  lwc1  $f12, 0x28($s0)
/* 10A9D0 802A13C0 46080282 */  mul.s $f10, $f0, $f8
/* 10A9D4 802A13C4 3C01802C */  lui   $at, %hi(D_802B99D4) # $at, 0x802c
/* 10A9D8 802A13C8 4602603E */  c.le.s $f12, $f2
/* 10A9DC 802A13CC 00000000 */  nop   
/* 10A9E0 802A13D0 45000003 */  bc1f  .L802A13E0
/* 10A9E4 802A13D4 E60A000C */   swc1  $f10, 0xc($s0)
/* 10A9E8 802A13D8 10000004 */  b     .L802A13EC
/* 10A9EC 802A13DC E60C001C */   swc1  $f12, 0x1c($s0)
.L802A13E0:
/* 10A9F0 802A13E0 C42499D4 */  lwc1  $f4, %lo(D_802B99D4)($at)
/* 10A9F4 802A13E4 46041180 */  add.s $f6, $f2, $f4
/* 10A9F8 802A13E8 E606001C */  swc1  $f6, 0x1c($s0)
.L802A13EC:
/* 10A9FC 802A13EC 86030002 */  lh    $v1, 2($s0)
/* 10AA00 802A13F0 306F1000 */  andi  $t7, $v1, 0x1000
/* 10AA04 802A13F4 51E0000C */  beql  $t7, $zero, .L802A1428
/* 10AA08 802A13F8 86080010 */   lh    $t0, 0x10($s0)
/* 10AA0C 802A13FC 86020004 */  lh    $v0, 4($s0)
/* 10AA10 802A1400 3078EFFF */  andi  $t8, $v1, 0xefff
/* 10AA14 802A1404 18400003 */  blez  $v0, .L802A1414
/* 10AA18 802A1408 2841012D */   slti  $at, $v0, 0x12d
/* 10AA1C 802A140C 14200004 */  bnez  $at, .L802A1420
/* 10AA20 802A1410 2459FFFF */   addiu $t9, $v0, -1
.L802A1414:
/* 10AA24 802A1414 A6180002 */  sh    $t8, 2($s0)
/* 10AA28 802A1418 10000002 */  b     .L802A1424
/* 10AA2C 802A141C A6000004 */   sh    $zero, 4($s0)
.L802A1420:
/* 10AA30 802A1420 A6190004 */  sh    $t9, 4($s0)
.L802A1424:
/* 10AA34 802A1424 86080010 */  lh    $t0, 0x10($s0)
.L802A1428:
/* 10AA38 802A1428 860A0012 */  lh    $t2, 0x12($s0)
/* 10AA3C 802A142C 860C0014 */  lh    $t4, 0x14($s0)
/* 10AA40 802A1430 2509FF4A */  addiu $t1, $t0, -0xb6
/* 10AA44 802A1434 254B016C */  addiu $t3, $t2, 0x16c
/* 10AA48 802A1438 258DFF4A */  addiu $t5, $t4, -0xb6
/* 10AA4C 802A143C A6090010 */  sh    $t1, 0x10($s0)
/* 10AA50 802A1440 A60B0012 */  sh    $t3, 0x12($s0)
/* 10AA54 802A1444 10000018 */  b     .L802A14A8
/* 10AA58 802A1448 A60D0014 */   sh    $t5, 0x14($s0)
/* 10AA5C 802A144C 86020004 */  lh    $v0, 4($s0)
.L802A1450:
/* 10AA60 802A1450 28410014 */  slti  $at, $v0, 0x14
/* 10AA64 802A1454 10200003 */  beqz  $at, .L802A1464
/* 10AA68 802A1458 00000000 */   nop   
/* 10AA6C 802A145C 04410005 */  bgez  $v0, .L802A1474
/* 10AA70 802A1460 244E0001 */   addiu $t6, $v0, 1
.L802A1464:
/* 10AA74 802A1464 0C0A7A15 */  jal   func_8029E854
/* 10AA78 802A1468 02002025 */   move  $a0, $s0
/* 10AA7C 802A146C 1000000F */  b     .L802A14AC
/* 10AA80 802A1470 8FBF0024 */   lw    $ra, 0x24($sp)
.L802A1474:
/* 10AA84 802A1474 860F0010 */  lh    $t7, 0x10($s0)
/* 10AA88 802A1478 86190012 */  lh    $t9, 0x12($s0)
/* 10AA8C 802A147C 86090014 */  lh    $t1, 0x14($s0)
/* 10AA90 802A1480 25F80444 */  addiu $t8, $t7, 0x444
/* 10AA94 802A1484 2728FD28 */  addiu $t0, $t9, -0x2d8
/* 10AA98 802A1488 252A016C */  addiu $t2, $t1, 0x16c
/* 10AA9C 802A148C A60E0004 */  sh    $t6, 4($s0)
/* 10AAA0 802A1490 A6180010 */  sh    $t8, 0x10($s0)
/* 10AAA4 802A1494 A6080012 */  sh    $t0, 0x12($s0)
/* 10AAA8 802A1498 10000003 */  b     .L802A14A8
/* 10AAAC 802A149C A60A0014 */   sh    $t2, 0x14($s0)
.L802A14A0:
/* 10AAB0 802A14A0 0C0A7A15 */  jal   func_8029E854
/* 10AAB4 802A14A4 02002025 */   move  $a0, $s0
.L802A14A8:
/* 10AAB8 802A14A8 8FBF0024 */  lw    $ra, 0x24($sp)
.L802A14AC:
/* 10AABC 802A14AC 8FB00020 */  lw    $s0, 0x20($sp)
/* 10AAC0 802A14B0 27BD0078 */  addiu $sp, $sp, 0x78
/* 10AAC4 802A14B4 03E00008 */  jr    $ra
/* 10AAC8 802A14B8 00000000 */   nop   