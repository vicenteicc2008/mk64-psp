.section .late_rodata

glabel D_800EE840
.float 0.3
.word 0x00000000

glabel D_800EE848
.double 1.8

glabel D_800EE850
.float 1.8
.word 0x00000000

glabel D_800EE858
.double 0.3

glabel D_800EE860
.float 0.3

.section .text

glabel func_8006AFD0
/* 06BBD0 8006AFD0 27BDFE80 */  addiu $sp, $sp, -0x180
/* 06BBD4 8006AFD4 3C19800E */  lui   $t9, %hi(D_800E4934) # $t9, 0x800e
/* 06BBD8 8006AFD8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 06BBDC 8006AFDC AFB00030 */  sw    $s0, 0x30($sp)
/* 06BBE0 8006AFE0 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 06BBE4 8006AFE4 AFA50184 */  sw    $a1, 0x184($sp)
/* 06BBE8 8006AFE8 AFA60188 */  sw    $a2, 0x188($sp)
/* 06BBEC 8006AFEC AFA7018C */  sw    $a3, 0x18c($sp)
/* 06BBF0 8006AFF0 27394934 */  addiu $t9, %lo(D_800E4934) # addiu $t9, $t9, 0x4934
/* 06BBF4 8006AFF4 8F210000 */  lw    $at, ($t9)
/* 06BBF8 8006AFF8 27AA00F0 */  addiu $t2, $sp, 0xf0
/* 06BBFC 8006AFFC 00077E00 */  sll   $t7, $a3, 0x18
/* 06BC00 8006B000 AD410000 */  sw    $at, ($t2)
/* 06BC04 8006B004 8F380004 */  lw    $t8, 4($t9)
/* 06BC08 8006B008 000F3E03 */  sra   $a3, $t7, 0x18
/* 06BC0C 8006B00C 3C0F800E */  lui   $t7, %hi(D_800E4954) # $t7, 0x800e
/* 06BC10 8006B010 AD580004 */  sw    $t8, 4($t2)
/* 06BC14 8006B014 8F210008 */  lw    $at, 8($t9)
/* 06BC18 8006B018 25EF4954 */  addiu $t7, %lo(D_800E4954) # addiu $t7, $t7, 0x4954
/* 06BC1C 8006B01C 27AB00D0 */  addiu $t3, $sp, 0xd0
/* 06BC20 8006B020 AD410008 */  sw    $at, 8($t2)
/* 06BC24 8006B024 8F38000C */  lw    $t8, 0xc($t9)
/* 06BC28 8006B028 00058600 */  sll   $s0, $a1, 0x18
/* 06BC2C 8006B02C 00107603 */  sra   $t6, $s0, 0x18
/* 06BC30 8006B030 AD58000C */  sw    $t8, 0xc($t2)
/* 06BC34 8006B034 8F210010 */  lw    $at, 0x10($t9)
/* 06BC38 8006B038 01C08025 */  move  $s0, $t6
/* 06BC3C 8006B03C AD410010 */  sw    $at, 0x10($t2)
/* 06BC40 8006B040 8F380014 */  lw    $t8, 0x14($t9)
/* 06BC44 8006B044 AD580014 */  sw    $t8, 0x14($t2)
/* 06BC48 8006B048 8F210018 */  lw    $at, 0x18($t9)
/* 06BC4C 8006B04C AD410018 */  sw    $at, 0x18($t2)
/* 06BC50 8006B050 8F38001C */  lw    $t8, 0x1c($t9)
/* 06BC54 8006B054 AD58001C */  sw    $t8, 0x1c($t2)
/* 06BC58 8006B058 8DE10000 */  lw    $at, ($t7)
/* 06BC5C 8006B05C AD610000 */  sw    $at, ($t3)
/* 06BC60 8006B060 8DF80004 */  lw    $t8, 4($t7)
/* 06BC64 8006B064 AD780004 */  sw    $t8, 4($t3)
/* 06BC68 8006B068 8DE10008 */  lw    $at, 8($t7)
/* 06BC6C 8006B06C AD610008 */  sw    $at, 8($t3)
/* 06BC70 8006B070 8DF8000C */  lw    $t8, 0xc($t7)
/* 06BC74 8006B074 AD78000C */  sw    $t8, 0xc($t3)
/* 06BC78 8006B078 8DE10010 */  lw    $at, 0x10($t7)
/* 06BC7C 8006B07C AD610010 */  sw    $at, 0x10($t3)
/* 06BC80 8006B080 8DF80014 */  lw    $t8, 0x14($t7)
/* 06BC84 8006B084 AD780014 */  sw    $t8, 0x14($t3)
/* 06BC88 8006B088 8DE10018 */  lw    $at, 0x18($t7)
/* 06BC8C 8006B08C AD610018 */  sw    $at, 0x18($t3)
/* 06BC90 8006B090 8DF8001C */  lw    $t8, 0x1c($t7)
/* 06BC94 8006B094 AD78001C */  sw    $t8, 0x1c($t3)
/* 06BC98 8006B098 94880254 */  lhu   $t0, 0x254($a0)
/* 06BC9C 8006B09C 0008C880 */  sll   $t9, $t0, 2
/* 06BCA0 8006B0A0 01597021 */  addu  $t6, $t2, $t9
/* 06BCA4 8006B0A4 8DC20000 */  lw    $v0, ($t6)
/* 06BCA8 8006B0A8 03204025 */  move  $t0, $t9
/* 06BCAC 8006B0AC 00027C03 */  sra   $t7, $v0, 0x10
/* 06BCB0 8006B0B0 31F800FF */  andi  $t8, $t7, 0xff
/* 06BCB4 8006B0B4 0002CA03 */  sra   $t9, $v0, 8
/* 06BCB8 8006B0B8 A7B80128 */  sh    $t8, 0x128($sp)
/* 06BCBC 8006B0BC 332E00FF */  andi  $t6, $t9, 0xff
/* 06BCC0 8006B0C0 304F00FF */  andi  $t7, $v0, 0xff
/* 06BCC4 8006B0C4 A7AE0126 */  sh    $t6, 0x126($sp)
/* 06BCC8 8006B0C8 A7AF0124 */  sh    $t7, 0x124($sp)
/* 06BCCC 8006B0CC 0168C021 */  addu  $t8, $t3, $t0
/* 06BCD0 8006B0D0 8F030000 */  lw    $v1, ($t8)
/* 06BCD4 8006B0D4 0003CC03 */  sra   $t9, $v1, 0x10
/* 06BCD8 8006B0D8 332E00FF */  andi  $t6, $t9, 0xff
/* 06BCDC 8006B0DC A7AE0122 */  sh    $t6, 0x122($sp)
/* 06BCE0 8006B0E0 00037A03 */  sra   $t7, $v1, 8
/* 06BCE4 8006B0E4 31F800FF */  andi  $t8, $t7, 0xff
/* 06BCE8 8006B0E8 00077040 */  sll   $t6, $a3, 1
/* 06BCEC 8006B0EC 008E7821 */  addu  $t7, $a0, $t6
/* 06BCF0 8006B0F0 307900FF */  andi  $t9, $v1, 0xff
/* 06BCF4 8006B0F4 A7B80120 */  sh    $t8, 0x120($sp)
/* 06BCF8 8006B0F8 A7B9011E */  sh    $t9, 0x11e($sp)
/* 06BCFC 8006B0FC AFAF0054 */  sw    $t7, 0x54($sp)
/* 06BD00 8006B100 85EE0048 */  lh    $t6, 0x48($t7)
/* 06BD04 8006B104 8498002E */  lh    $t8, 0x2e($a0)
/* 06BD08 8006B108 849900C0 */  lh    $t9, 0xc0($a0)
/* 06BD0C 8006B10C 030E7821 */  addu  $t7, $t8, $t6
/* 06BD10 8006B110 01F94821 */  addu  $t1, $t7, $t9
/* 06BD14 8006B114 3138FFFF */  andi  $t8, $t1, 0xffff
/* 06BD18 8006B118 03004825 */  move  $t1, $t8
/* 06BD1C 8006B11C 05210003 */  bgez  $t1, .L8006B12C
/* 06BD20 8006B120 000971C3 */   sra   $t6, $t1, 7
/* 06BD24 8006B124 2521007F */  addiu $at, $t1, 0x7f
/* 06BD28 8006B128 000171C3 */  sra   $t6, $at, 7
.L8006B12C:
/* 06BD2C 8006B12C 01C0C025 */  move  $t8, $t6
/* 06BD30 8006B130 001875C0 */  sll   $t6, $t8, 0x17
/* 06BD34 8006B134 14F00004 */  bne   $a3, $s0, .L8006B148
/* 06BD38 8006B138 000E4C03 */   sra   $t1, $t6, 0x10
/* 06BD3C 8006B13C 3C01800F */  lui   $at, %hi(D_800EE840) # $at, 0x800f
/* 06BD40 8006B140 10000038 */  b     .L8006B224
/* 06BD44 8006B144 C434E840 */   lwc1  $f20, %lo(D_800EE840)($at)
.L8006B148:
/* 06BD48 8006B148 C4920014 */  lwc1  $f18, 0x14($a0)
/* 06BD4C 8006B14C C490001C */  lwc1  $f16, 0x1c($a0)
/* 06BD50 8006B150 0007C880 */  sll   $t9, $a3, 2
/* 06BD54 8006B154 0327C823 */  subu  $t9, $t9, $a3
/* 06BD58 8006B158 0019C8C0 */  sll   $t9, $t9, 3
/* 06BD5C 8006B15C 0327C823 */  subu  $t9, $t9, $a3
/* 06BD60 8006B160 3C188016 */  lui   $t8, %hi(cameras) # $t8, 0x8016
/* 06BD64 8006B164 0019C8C0 */  sll   $t9, $t9, 3
/* 06BD68 8006B168 271846F0 */  addiu $t8, %lo(cameras) # addiu $t8, $t8, 0x46f0
/* 06BD6C 8006B16C 03381021 */  addu  $v0, $t9, $t8
/* 06BD70 8006B170 C44E0000 */  lwc1  $f14, ($v0)
/* 06BD74 8006B174 C44C0008 */  lwc1  $f12, 8($v0)
/* 06BD78 8006B178 3C0E800E */  lui   $t6, %hi(gActiveScreenMode) # $t6, 0x800e
/* 06BD7C 8006B17C 8DCEC52C */  lw    $t6, %lo(gActiveScreenMode)($t6)
/* 06BD80 8006B180 460E9501 */  sub.s $f20, $f18, $f14
/* 06BD84 8006B184 24010003 */  li    $at, 3
/* 06BD88 8006B188 11C1000B */  beq   $t6, $at, .L8006B1B8
/* 06BD8C 8006B18C 460C8001 */   sub.s $f0, $f16, $f12
/* 06BD90 8006B190 4614A402 */  mul.s $f16, $f20, $f20
/* 06BD94 8006B194 A7A9011C */  sh    $t1, 0x11c($sp)
/* 06BD98 8006B198 46000482 */  mul.s $f18, $f0, $f0
/* 06BD9C 8006B19C 0C033850 */  jal   sqrtf
/* 06BDA0 8006B1A0 46128300 */   add.s $f12, $f16, $f18
/* 06BDA4 8006B1A4 3C014396 */  li    $at, 0x43960000 # 300.000000
/* 06BDA8 8006B1A8 44812000 */  mtc1  $at, $f4
/* 06BDAC 8006B1AC 87A9011C */  lh    $t1, 0x11c($sp)
/* 06BDB0 8006B1B0 1000000A */  b     .L8006B1DC
/* 06BDB4 8006B1B4 46040503 */   div.s $f20, $f0, $f4
.L8006B1B8:
/* 06BDB8 8006B1B8 4614A182 */  mul.s $f6, $f20, $f20
/* 06BDBC 8006B1BC A7A9011C */  sh    $t1, 0x11c($sp)
/* 06BDC0 8006B1C0 46000202 */  mul.s $f8, $f0, $f0
/* 06BDC4 8006B1C4 0C033850 */  jal   sqrtf
/* 06BDC8 8006B1C8 46083300 */   add.s $f12, $f6, $f8
/* 06BDCC 8006B1CC 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 06BDD0 8006B1D0 44815000 */  mtc1  $at, $f10
/* 06BDD4 8006B1D4 87A9011C */  lh    $t1, 0x11c($sp)
/* 06BDD8 8006B1D8 460A0503 */  div.s $f20, $f0, $f10
.L8006B1DC:
/* 06BDDC 8006B1DC 3C01800F */  lui   $at, %hi(D_800EE848)
/* 06BDE0 8006B1E0 D430E848 */  ldc1  $f16, %lo(D_800EE848)($at)
/* 06BDE4 8006B1E4 4600A021 */  cvt.d.s $f0, $f20
/* 06BDE8 8006B1E8 3C01800F */  lui   $at, %hi(D_800EE850) # $at, 0x800f
/* 06BDEC 8006B1EC 4620803E */  c.le.d $f16, $f0
/* 06BDF0 8006B1F0 00000000 */  nop
/* 06BDF4 8006B1F4 45000003 */  bc1f  .L8006B204
/* 06BDF8 8006B1F8 00000000 */   nop
/* 06BDFC 8006B1FC C434E850 */  lwc1  $f20, %lo(D_800EE850)($at)
/* 06BE00 8006B200 4600A021 */  cvt.d.s $f0, $f20
.L8006B204:
/* 06BE04 8006B204 3C01800F */  lui   $at, %hi(D_800EE858)
/* 06BE08 8006B208 D432E858 */  ldc1  $f18, %lo(D_800EE858)($at)
/* 06BE0C 8006B20C 3C01800F */  lui   $at, %hi(D_800EE860) # $at, 0x800f
/* 06BE10 8006B210 4632003E */  c.le.d $f0, $f18
/* 06BE14 8006B214 00000000 */  nop
/* 06BE18 8006B218 45020003 */  bc1fl .L8006B228
/* 06BE1C 8006B21C 87A2018A */   lh    $v0, 0x18a($sp)
/* 06BE20 8006B220 C434E860 */  lwc1  $f20, %lo(D_800EE860)($at)
.L8006B224:
/* 06BE24 8006B224 87A2018A */  lh    $v0, 0x18a($sp)
.L8006B228:
/* 06BE28 8006B228 0010C880 */  sll   $t9, $s0, 2
/* 06BE2C 8006B22C 0330C823 */  subu  $t9, $t9, $s0
/* 06BE30 8006B230 0019C880 */  sll   $t9, $t9, 2
/* 06BE34 8006B234 00027880 */  sll   $t7, $v0, 2
/* 06BE38 8006B238 032FC021 */  addu  $t8, $t9, $t7
/* 06BE3C 8006B23C 3C018019 */  lui   $at, %hi(D_8018D4D0)
/* 06BE40 8006B240 00107080 */  sll   $t6, $s0, 2
/* 06BE44 8006B244 00380821 */  addu  $at, $at, $t8
/* 06BE48 8006B248 01D07023 */  subu  $t6, $t6, $s0
/* 06BE4C 8006B24C C424D4D0 */  lwc1  $f4, %lo(D_8018D4D0)($at)
/* 06BE50 8006B250 01E01025 */  move  $v0, $t7
/* 06BE54 8006B254 000E7080 */  sll   $t6, $t6, 2
/* 06BE58 8006B258 01CF7821 */  addu  $t7, $t6, $t7
/* 06BE5C 8006B25C 3C018019 */  lui   $at, %hi(D_8018D530)
/* 06BE60 8006B260 0010C880 */  sll   $t9, $s0, 2
/* 06BE64 8006B264 002F0821 */  addu  $at, $at, $t7
/* 06BE68 8006B268 0330C823 */  subu  $t9, $t9, $s0
/* 06BE6C 8006B26C C426D530 */  lwc1  $f6, %lo(D_8018D530)($at)
/* 06BE70 8006B270 0019C880 */  sll   $t9, $t9, 2
/* 06BE74 8006B274 0322C021 */  addu  $t8, $t9, $v0
/* 06BE78 8006B278 3C018019 */  lui   $at, %hi(D_8018D590)
/* 06BE7C 8006B27C 00380821 */  addu  $at, $at, $t8
/* 06BE80 8006B280 C428D590 */  lwc1  $f8, %lo(D_8018D590)($at)
/* 06BE84 8006B284 3124FFFF */  andi  $a0, $t1, 0xffff
/* 06BE88 8006B288 AFA40044 */  sw    $a0, 0x44($sp)
/* 06BE8C 8006B28C E7A40134 */  swc1  $f4, 0x134($sp)
/* 06BE90 8006B290 E7A60138 */  swc1  $f6, 0x138($sp)
/* 06BE94 8006B294 0C0AE00E */  jal   coss
/* 06BE98 8006B298 E7A8013C */   swc1  $f8, 0x13c($sp)
/* 06BE9C 8006B29C 87A2018A */  lh    $v0, 0x18a($sp)
/* 06BEA0 8006B2A0 00107880 */  sll   $t7, $s0, 2
/* 06BEA4 8006B2A4 01F07823 */  subu  $t7, $t7, $s0
/* 06BEA8 8006B2A8 000F7840 */  sll   $t7, $t7, 1
/* 06BEAC 8006B2AC 3C188019 */  lui   $t8, %hi(D_8018D890) # $t8, 0x8019
/* 06BEB0 8006B2B0 00027040 */  sll   $t6, $v0, 1
/* 06BEB4 8006B2B4 01EEC821 */  addu  $t9, $t7, $t6
/* 06BEB8 8006B2B8 2718D890 */  addiu $t8, %lo(D_8018D890) # addiu $t8, $t8, -0x2770
/* 06BEBC 8006B2BC 03381821 */  addu  $v1, $t9, $t8
/* 06BEC0 8006B2C0 01C01025 */  move  $v0, $t6
/* 06BEC4 8006B2C4 846E0000 */  lh    $t6, ($v1)
/* 06BEC8 8006B2C8 97A40046 */  lhu   $a0, 0x46($sp)
/* 06BECC 8006B2CC 000E7880 */  sll   $t7, $t6, 2
/* 06BED0 8006B2D0 448F5000 */  mtc1  $t7, $f10
/* 06BED4 8006B2D4 8FAE0054 */  lw    $t6, 0x54($sp)
/* 06BED8 8006B2D8 46805420 */  cvt.s.w $f16, $f10
/* 06BEDC 8006B2DC 46100482 */  mul.s $f18, $f0, $f16
/* 06BEE0 8006B2E0 46009107 */  neg.s $f4, $f18
/* 06BEE4 8006B2E4 4600218D */  trunc.w.s $f6, $f4
/* 06BEE8 8006B2E8 44183000 */  mfc1  $t8, $f6
/* 06BEEC 8006B2EC 00000000 */  nop
/* 06BEF0 8006B2F0 A7B8012C */  sh    $t8, 0x12c($sp)
/* 06BEF4 8006B2F4 85CF0048 */  lh    $t7, 0x48($t6)
/* 06BEF8 8006B2F8 AFA3003C */  sw    $v1, 0x3c($sp)
/* 06BEFC 8006B2FC AFA20040 */  sw    $v0, 0x40($sp)
/* 06BF00 8006B300 0C0AE00E */  jal   coss
/* 06BF04 8006B304 A7AF012E */   sh    $t7, 0x12e($sp)
/* 06BF08 8006B308 E7A00058 */  swc1  $f0, 0x58($sp)
/* 06BF0C 8006B30C 0C0AE006 */  jal   sins
/* 06BF10 8006B310 97A40046 */   lhu   $a0, 0x46($sp)
/* 06BF14 8006B314 8FA20040 */  lw    $v0, 0x40($sp)
/* 06BF18 8006B318 0010C880 */  sll   $t9, $s0, 2
/* 06BF1C 8006B31C 0330C823 */  subu  $t9, $t9, $s0
/* 06BF20 8006B320 0019C840 */  sll   $t9, $t9, 1
/* 06BF24 8006B324 3C0E8019 */  lui   $t6, %hi(D_8018D860)
/* 06BF28 8006B328 0322C021 */  addu  $t8, $t9, $v0
/* 06BF2C 8006B32C 01D87021 */  addu  $t6, $t6, $t8
/* 06BF30 8006B330 85CED860 */  lh    $t6, %lo(D_8018D860)($t6)
/* 06BF34 8006B334 00107880 */  sll   $t7, $s0, 2
/* 06BF38 8006B338 01F07823 */  subu  $t7, $t7, $s0
/* 06BF3C 8006B33C 448E4000 */  mtc1  $t6, $f8
/* 06BF40 8006B340 8FAE003C */  lw    $t6, 0x3c($sp)
/* 06BF44 8006B344 000F7840 */  sll   $t7, $t7, 1
/* 06BF48 8006B348 468042A0 */  cvt.s.w $f10, $f8
/* 06BF4C 8006B34C 01E2C821 */  addu  $t9, $t7, $v0
/* 06BF50 8006B350 C7B00058 */  lwc1  $f16, 0x58($sp)
/* 06BF54 8006B354 85CF0000 */  lh    $t7, ($t6)
/* 06BF58 8006B358 3C188019 */  lui   $t8, %hi(D_8018D7D0)
/* 06BF5C 8006B35C 0319C021 */  addu  $t8, $t8, $t9
/* 06BF60 8006B360 46105482 */  mul.s $f18, $f10, $f16
/* 06BF64 8006B364 000FC8C0 */  sll   $t9, $t7, 3
/* 06BF68 8006B368 44995000 */  mtc1  $t9, $f10
/* 06BF6C 8006B36C 8718D7D0 */  lh    $t8, %lo(D_8018D7D0)($t8)
/* 06BF70 8006B370 27A40140 */  addiu $a0, $sp, 0x140
/* 06BF74 8006B374 27A50134 */  addiu $a1, $sp, 0x134
/* 06BF78 8006B378 46805420 */  cvt.s.w $f16, $f10
/* 06BF7C 8006B37C 44982000 */  mtc1  $t8, $f4
/* 06BF80 8006B380 27A6012C */  addiu $a2, $sp, 0x12c
/* 06BF84 8006B384 468021A0 */  cvt.s.w $f6, $f4
/* 06BF88 8006B388 46100102 */  mul.s $f4, $f0, $f16
/* 06BF8C 8006B38C 46123201 */  sub.s $f8, $f6, $f18
/* 06BF90 8006B390 46044181 */  sub.s $f6, $f8, $f4
/* 06BF94 8006B394 4600348D */  trunc.w.s $f18, $f6
/* 06BF98 8006B398 440E9000 */  mfc1  $t6, $f18
/* 06BF9C 8006B39C 0C008784 */  jal   func_80021E10
/* 06BFA0 8006B3A0 A7AE0130 */   sh    $t6, 0x130($sp)
/* 06BFA4 8006B3A4 27B00140 */  addiu $s0, $sp, 0x140
/* 06BFA8 8006B3A8 4405A000 */  mfc1  $a1, $f20
/* 06BFAC 8006B3AC 0C0087E1 */  jal   func_80021F84
/* 06BFB0 8006B3B0 02002025 */   move  $a0, $s0
/* 06BFB4 8006B3B4 3C198016 */  lui   $t9, %hi(D_80164AF0) # $t9, 0x8016
/* 06BFB8 8006B3B8 87394AF0 */  lh    $t9, %lo(D_80164AF0)($t9)
/* 06BFBC 8006B3BC 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 06BFC0 8006B3C0 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 06BFC4 8006B3C4 0019C180 */  sll   $t8, $t9, 6
/* 06BFC8 8006B3C8 3401FAC0 */  li    $at, 64192
/* 06BFCC 8006B3CC 01F82021 */  addu  $a0, $t7, $t8
/* 06BFD0 8006B3D0 00812021 */  addu  $a0, $a0, $at
/* 06BFD4 8006B3D4 0C008860 */  jal   func_80022180
/* 06BFD8 8006B3D8 02002825 */   move  $a1, $s0
/* 06BFDC 8006B3DC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06BFE0 8006B3E0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06BFE4 8006B3E4 8C620000 */  lw    $v0, ($v1)
/* 06BFE8 8006B3E8 3C190102 */  lui   $t9, (0x01020040 >> 16) # lui $t9, 0x102
/* 06BFEC 8006B3EC 37390040 */  ori   $t9, (0x01020040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 06BFF0 8006B3F0 244E0008 */  addiu $t6, $v0, 8
/* 06BFF4 8006B3F4 AC6E0000 */  sw    $t6, ($v1)
/* 06BFF8 8006B3F8 3C188016 */  lui   $t8, %hi(D_80164AF0) # $t8, 0x8016
/* 06BFFC 8006B3FC AC590000 */  sw    $t9, ($v0)
/* 06C000 8006B400 87184AF0 */  lh    $t8, %lo(D_80164AF0)($t8)
/* 06C004 8006B404 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 06C008 8006B408 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 06C00C 8006B40C 00187180 */  sll   $t6, $t8, 6
/* 06C010 8006B410 3401FAC0 */  li    $at, 64192
/* 06C014 8006B414 01EEC821 */  addu  $t9, $t7, $t6
/* 06C018 8006B418 0321C021 */  addu  $t8, $t9, $at
/* 06C01C 8006B41C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 06C020 8006B420 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 06C024 8006B424 03017824 */  and   $t7, $t8, $at
/* 06C028 8006B428 AC4F0004 */  sw    $t7, 4($v0)
/* 06C02C 8006B42C 8C620000 */  lw    $v0, ($v1)
/* 06C030 8006B430 3C190D01 */  lui   $t9, %hi(D_0D008DB8) # $t9, 0xd01
/* 06C034 8006B434 3C100600 */  lui   $s0, 0x600
/* 06C038 8006B438 244E0008 */  addiu $t6, $v0, 8
/* 06C03C 8006B43C AC6E0000 */  sw    $t6, ($v1)
/* 06C040 8006B440 27398DB8 */  addiu $t9, %lo(D_0D008DB8) # addiu $t9, $t9, -0x7248
/* 06C044 8006B444 AC590004 */  sw    $t9, 4($v0)
/* 06C048 8006B448 AC500000 */  sw    $s0, ($v0)
/* 06C04C 8006B44C 8C620000 */  lw    $v0, ($v1)
/* 06C050 8006B450 3C0E800E */  lui   $t6, %hi(D_800E52D0) # $t6, 0x800e
/* 06C054 8006B454 25CE52D0 */  addiu $t6, %lo(D_800E52D0) # addiu $t6, $t6, 0x52d0
/* 06C058 8006B458 24580008 */  addiu $t8, $v0, 8
/* 06C05C 8006B45C AC780000 */  sw    $t8, ($v1)
/* 06C060 8006B460 3C0FFD10 */  lui   $t7, 0xfd10
/* 06C064 8006B464 AC4F0000 */  sw    $t7, ($v0)
/* 06C068 8006B468 AC4E0004 */  sw    $t6, 4($v0)
/* 06C06C 8006B46C 8C620000 */  lw    $v0, ($v1)
/* 06C070 8006B470 3C18E800 */  lui   $t8, 0xe800
/* 06C074 8006B474 3C0EF500 */  lui   $t6, (0xF5000100 >> 16) # lui $t6, 0xf500
/* 06C078 8006B478 24590008 */  addiu $t9, $v0, 8
/* 06C07C 8006B47C AC790000 */  sw    $t9, ($v1)
/* 06C080 8006B480 AC580000 */  sw    $t8, ($v0)
/* 06C084 8006B484 AC400004 */  sw    $zero, 4($v0)
/* 06C088 8006B488 8C620000 */  lw    $v0, ($v1)
/* 06C08C 8006B48C 3C190700 */  lui   $t9, 0x700
/* 06C090 8006B490 35CE0100 */  ori   $t6, (0xF5000100 & 0xFFFF) # ori $t6, $t6, 0x100
/* 06C094 8006B494 244F0008 */  addiu $t7, $v0, 8
/* 06C098 8006B498 AC6F0000 */  sw    $t7, ($v1)
/* 06C09C 8006B49C AC4E0000 */  sw    $t6, ($v0)
/* 06C0A0 8006B4A0 AC590004 */  sw    $t9, 4($v0)
/* 06C0A4 8006B4A4 8C620000 */  lw    $v0, ($v1)
/* 06C0A8 8006B4A8 3C0FE600 */  lui   $t7, 0xe600
/* 06C0AC 8006B4AC 3C19F000 */  lui   $t9, 0xf000
/* 06C0B0 8006B4B0 24580008 */  addiu $t8, $v0, 8
/* 06C0B4 8006B4B4 AC780000 */  sw    $t8, ($v1)
/* 06C0B8 8006B4B8 AC4F0000 */  sw    $t7, ($v0)
/* 06C0BC 8006B4BC AC400004 */  sw    $zero, 4($v0)
/* 06C0C0 8006B4C0 8C620000 */  lw    $v0, ($v1)
/* 06C0C4 8006B4C4 3C18073F */  lui   $t8, (0x073FC000 >> 16) # lui $t8, 0x73f
/* 06C0C8 8006B4C8 3718C000 */  ori   $t8, (0x073FC000 & 0xFFFF) # ori $t8, $t8, 0xc000
/* 06C0CC 8006B4CC 244E0008 */  addiu $t6, $v0, 8
/* 06C0D0 8006B4D0 AC6E0000 */  sw    $t6, ($v1)
/* 06C0D4 8006B4D4 AC590000 */  sw    $t9, ($v0)
/* 06C0D8 8006B4D8 AC580004 */  sw    $t8, 4($v0)
/* 06C0DC 8006B4DC 8C620000 */  lw    $v0, ($v1)
/* 06C0E0 8006B4E0 3C0EE700 */  lui   $t6, 0xe700
/* 06C0E4 8006B4E4 34198000 */  li    $t9, 32768
/* 06C0E8 8006B4E8 244F0008 */  addiu $t7, $v0, 8
/* 06C0EC 8006B4EC AC6F0000 */  sw    $t7, ($v1)
/* 06C0F0 8006B4F0 AFA200B0 */  sw    $v0, 0xb0($sp)
/* 06C0F4 8006B4F4 AC4E0000 */  sw    $t6, ($v0)
/* 06C0F8 8006B4F8 AC400004 */  sw    $zero, 4($v0)
/* 06C0FC 8006B4FC 8C620000 */  lw    $v0, ($v1)
/* 06C100 8006B500 3C0FBA00 */  lui   $t7, (0xBA000E02 >> 16) # lui $t7, 0xba00
/* 06C104 8006B504 35EF0E02 */  ori   $t7, (0xBA000E02 & 0xFFFF) # ori $t7, $t7, 0xe02
/* 06C108 8006B508 24580008 */  addiu $t8, $v0, 8
/* 06C10C 8006B50C AC780000 */  sw    $t8, ($v1)
/* 06C110 8006B510 AFA200AC */  sw    $v0, 0xac($sp)
/* 06C114 8006B514 AC4F0000 */  sw    $t7, ($v0)
/* 06C118 8006B518 8FB800AC */  lw    $t8, 0xac($sp)
/* 06C11C 8006B51C AF190004 */  sw    $t9, 4($t8)
/* 06C120 8006B520 87AE011E */  lh    $t6, 0x11e($sp)
/* 06C124 8006B524 87AF0120 */  lh    $t7, 0x120($sp)
/* 06C128 8006B528 241900D8 */  li    $t9, 216
/* 06C12C 8006B52C AFB90018 */  sw    $t9, 0x18($sp)
/* 06C130 8006B530 87A70122 */  lh    $a3, 0x122($sp)
/* 06C134 8006B534 87A60124 */  lh    $a2, 0x124($sp)
/* 06C138 8006B538 87A50126 */  lh    $a1, 0x126($sp)
/* 06C13C 8006B53C 87A40128 */  lh    $a0, 0x128($sp)
/* 06C140 8006B540 AFAE0014 */  sw    $t6, 0x14($sp)
/* 06C144 8006B544 0C012D85 */  jal   func_8004B614
/* 06C148 8006B548 AFAF0010 */   sw    $t7, 0x10($sp)
/* 06C14C 8006B54C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06C150 8006B550 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06C154 8006B554 8C620000 */  lw    $v0, ($v1)
/* 06C158 8006B558 3C0FB900 */  lui   $t7, (0xB900031D >> 16) # lui $t7, 0xb900
/* 06C15C 8006B55C 3C0E0050 */  lui   $t6, (0x00505978 >> 16) # lui $t6, 0x50
/* 06C160 8006B560 24580008 */  addiu $t8, $v0, 8
/* 06C164 8006B564 AC780000 */  sw    $t8, ($v1)
/* 06C168 8006B568 35CE5978 */  ori   $t6, (0x00505978 & 0xFFFF) # ori $t6, $t6, 0x5978
/* 06C16C 8006B56C 35EF031D */  ori   $t7, (0xB900031D & 0xFFFF) # ori $t7, $t7, 0x31d
/* 06C170 8006B570 AC4F0000 */  sw    $t7, ($v0)
/* 06C174 8006B574 AC4E0004 */  sw    $t6, 4($v0)
/* 06C178 8006B578 8C620000 */  lw    $v0, ($v1)
/* 06C17C 8006B57C 3C18FD50 */  lui   $t8, 0xfd50
/* 06C180 8006B580 3C0F8019 */  lui   $t7, %hi(D_8018D4BC) # $t7, 0x8019
/* 06C184 8006B584 24590008 */  addiu $t9, $v0, 8
/* 06C188 8006B588 AC790000 */  sw    $t9, ($v1)
/* 06C18C 8006B58C AC580000 */  sw    $t8, ($v0)
/* 06C190 8006B590 8DEFD4BC */  lw    $t7, %lo(D_8018D4BC)($t7)
/* 06C194 8006B594 3C180708 */  lui   $t8, (0x07080200 >> 16) # lui $t8, 0x708
/* 06C198 8006B598 37180200 */  ori   $t8, (0x07080200 & 0xFFFF) # ori $t8, $t8, 0x200
/* 06C19C 8006B59C AC4F0004 */  sw    $t7, 4($v0)
/* 06C1A0 8006B5A0 8C620000 */  lw    $v0, ($v1)
/* 06C1A4 8006B5A4 3C19F550 */  lui   $t9, 0xf550
/* 06C1A8 8006B5A8 3C1F0D01 */  lui   $ra, %hi(D_0D008C78) # $ra, 0xd01
/* 06C1AC 8006B5AC 244E0008 */  addiu $t6, $v0, 8
/* 06C1B0 8006B5B0 AC6E0000 */  sw    $t6, ($v1)
/* 06C1B4 8006B5B4 AC580004 */  sw    $t8, 4($v0)
/* 06C1B8 8006B5B8 AC590000 */  sw    $t9, ($v0)
/* 06C1BC 8006B5BC 8C620000 */  lw    $v0, ($v1)
/* 06C1C0 8006B5C0 3C0EE600 */  lui   $t6, 0xe600
/* 06C1C4 8006B5C4 3C18F300 */  lui   $t8, 0xf300
/* 06C1C8 8006B5C8 244F0008 */  addiu $t7, $v0, 8
/* 06C1CC 8006B5CC AC6F0000 */  sw    $t7, ($v1)
/* 06C1D0 8006B5D0 AC400004 */  sw    $zero, 4($v0)
/* 06C1D4 8006B5D4 AC4E0000 */  sw    $t6, ($v0)
/* 06C1D8 8006B5D8 8C620000 */  lw    $v0, ($v1)
/* 06C1DC 8006B5DC 3C0F073F */  lui   $t7, (0x073FF100 >> 16) # lui $t7, 0x73f
/* 06C1E0 8006B5E0 35EFF100 */  ori   $t7, (0x073FF100 & 0xFFFF) # ori $t7, $t7, 0xf100
/* 06C1E4 8006B5E4 24590008 */  addiu $t9, $v0, 8
/* 06C1E8 8006B5E8 AC790000 */  sw    $t9, ($v1)
/* 06C1EC 8006B5EC AC4F0004 */  sw    $t7, 4($v0)
/* 06C1F0 8006B5F0 AC580000 */  sw    $t8, ($v0)
/* 06C1F4 8006B5F4 8C620000 */  lw    $v0, ($v1)
/* 06C1F8 8006B5F8 3C19E700 */  lui   $t9, 0xe700
/* 06C1FC 8006B5FC 3C0FF548 */  lui   $t7, (0xF5481000 >> 16) # lui $t7, 0xf548
/* 06C200 8006B600 244E0008 */  addiu $t6, $v0, 8
/* 06C204 8006B604 AC6E0000 */  sw    $t6, ($v1)
/* 06C208 8006B608 AC400004 */  sw    $zero, 4($v0)
/* 06C20C 8006B60C AC590000 */  sw    $t9, ($v0)
/* 06C210 8006B610 8C620000 */  lw    $v0, ($v1)
/* 06C214 8006B614 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* 06C218 8006B618 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 06C21C 8006B61C 24580008 */  addiu $t8, $v0, 8
/* 06C220 8006B620 AC780000 */  sw    $t8, ($v1)
/* 06C224 8006B624 35EF1000 */  ori   $t7, (0xF5481000 & 0xFFFF) # ori $t7, $t7, 0x1000
/* 06C228 8006B628 AC4F0000 */  sw    $t7, ($v0)
/* 06C22C 8006B62C AC4E0004 */  sw    $t6, 4($v0)
/* 06C230 8006B630 8C620000 */  lw    $v0, ($v1)
/* 06C234 8006B634 3C0F000F */  lui   $t7, (0x000FC07C >> 16) # lui $t7, 0xf
/* 06C238 8006B638 35EFC07C */  ori   $t7, (0x000FC07C & 0xFFFF) # ori $t7, $t7, 0xc07c
/* 06C23C 8006B63C 24590008 */  addiu $t9, $v0, 8
/* 06C240 8006B640 AC790000 */  sw    $t9, ($v1)
/* 06C244 8006B644 3C18F200 */  lui   $t8, 0xf200
/* 06C248 8006B648 AC580000 */  sw    $t8, ($v0)
/* 06C24C 8006B64C AC4F0004 */  sw    $t7, 4($v0)
/* 06C250 8006B650 8C620000 */  lw    $v0, ($v1)
/* 06C254 8006B654 3C18800E */  lui   $t8, %hi(D_800E5250) # $t8, 0x800e
/* 06C258 8006B658 3C190400 */  lui   $t9, (0x0400103F >> 16) # lui $t9, 0x400
/* 06C25C 8006B65C 244E0008 */  addiu $t6, $v0, 8
/* 06C260 8006B660 AC6E0000 */  sw    $t6, ($v1)
/* 06C264 8006B664 3739103F */  ori   $t9, (0x0400103F & 0xFFFF) # ori $t9, $t9, 0x103f
/* 06C268 8006B668 27185250 */  addiu $t8, %lo(D_800E5250) # addiu $t8, $t8, 0x5250
/* 06C26C 8006B66C AC580004 */  sw    $t8, 4($v0)
/* 06C270 8006B670 AC590000 */  sw    $t9, ($v0)
/* 06C274 8006B674 8C620000 */  lw    $v0, ($v1)
/* 06C278 8006B678 27FF8C78 */  addiu $ra, %lo(D_0D008C78) # addiu $ra, $ra, -0x7388
/* 06C27C 8006B67C 3C19FD50 */  lui   $t9, 0xfd50
/* 06C280 8006B680 244F0008 */  addiu $t7, $v0, 8
/* 06C284 8006B684 AC6F0000 */  sw    $t7, ($v1)
/* 06C288 8006B688 AC5F0004 */  sw    $ra, 4($v0)
/* 06C28C 8006B68C AC500000 */  sw    $s0, ($v0)
/* 06C290 8006B690 8C620000 */  lw    $v0, ($v1)
/* 06C294 8006B694 3C188019 */  lui   $t8, %hi(D_8018D4C0) # $t8, 0x8019
/* 06C298 8006B698 244E0008 */  addiu $t6, $v0, 8
/* 06C29C 8006B69C AC6E0000 */  sw    $t6, ($v1)
/* 06C2A0 8006B6A0 AC590000 */  sw    $t9, ($v0)
/* 06C2A4 8006B6A4 8F18D4C0 */  lw    $t8, %lo(D_8018D4C0)($t8)
/* 06C2A8 8006B6A8 3C19F550 */  lui   $t9, 0xf550
/* 06C2AC 8006B6AC 270FFFC0 */  addiu $t7, $t8, -0x40
/* 06C2B0 8006B6B0 AC4F0004 */  sw    $t7, 4($v0)
/* 06C2B4 8006B6B4 8C620000 */  lw    $v0, ($v1)
/* 06C2B8 8006B6B8 3C180708 */  lui   $t8, (0x07080200 >> 16) # lui $t8, 0x708
/* 06C2BC 8006B6BC 37180200 */  ori   $t8, (0x07080200 & 0xFFFF) # ori $t8, $t8, 0x200
/* 06C2C0 8006B6C0 244E0008 */  addiu $t6, $v0, 8
/* 06C2C4 8006B6C4 AC6E0000 */  sw    $t6, ($v1)
/* 06C2C8 8006B6C8 AC580004 */  sw    $t8, 4($v0)
/* 06C2CC 8006B6CC AC590000 */  sw    $t9, ($v0)
/* 06C2D0 8006B6D0 8C620000 */  lw    $v0, ($v1)
/* 06C2D4 8006B6D4 3C0EE600 */  lui   $t6, 0xe600
/* 06C2D8 8006B6D8 3C18F300 */  lui   $t8, 0xf300
/* 06C2DC 8006B6DC 244F0008 */  addiu $t7, $v0, 8
/* 06C2E0 8006B6E0 AC6F0000 */  sw    $t7, ($v1)
/* 06C2E4 8006B6E4 AC400004 */  sw    $zero, 4($v0)
/* 06C2E8 8006B6E8 AC4E0000 */  sw    $t6, ($v0)
/* 06C2EC 8006B6EC 8C620000 */  lw    $v0, ($v1)
/* 06C2F0 8006B6F0 3C0F073F */  lui   $t7, (0x073FF100 >> 16) # lui $t7, 0x73f
/* 06C2F4 8006B6F4 35EFF100 */  ori   $t7, (0x073FF100 & 0xFFFF) # ori $t7, $t7, 0xf100
/* 06C2F8 8006B6F8 24590008 */  addiu $t9, $v0, 8
/* 06C2FC 8006B6FC AC790000 */  sw    $t9, ($v1)
/* 06C300 8006B700 AC4F0004 */  sw    $t7, 4($v0)
/* 06C304 8006B704 AC580000 */  sw    $t8, ($v0)
/* 06C308 8006B708 8C620000 */  lw    $v0, ($v1)
/* 06C30C 8006B70C 3C19E700 */  lui   $t9, 0xe700
/* 06C310 8006B710 3C0FF548 */  lui   $t7, (0xF5481000 >> 16) # lui $t7, 0xf548
/* 06C314 8006B714 244E0008 */  addiu $t6, $v0, 8
/* 06C318 8006B718 AC6E0000 */  sw    $t6, ($v1)
/* 06C31C 8006B71C AC400004 */  sw    $zero, 4($v0)
/* 06C320 8006B720 AC590000 */  sw    $t9, ($v0)
/* 06C324 8006B724 8C620000 */  lw    $v0, ($v1)
/* 06C328 8006B728 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* 06C32C 8006B72C 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 06C330 8006B730 24580008 */  addiu $t8, $v0, 8
/* 06C334 8006B734 AC780000 */  sw    $t8, ($v1)
/* 06C338 8006B738 35EF1000 */  ori   $t7, (0xF5481000 & 0xFFFF) # ori $t7, $t7, 0x1000
/* 06C33C 8006B73C AC4F0000 */  sw    $t7, ($v0)
/* 06C340 8006B740 AC4E0004 */  sw    $t6, 4($v0)
/* 06C344 8006B744 8C620000 */  lw    $v0, ($v1)
/* 06C348 8006B748 3C0F000F */  lui   $t7, (0x000FC07C >> 16) # lui $t7, 0xf
/* 06C34C 8006B74C 35EFC07C */  ori   $t7, (0x000FC07C & 0xFFFF) # ori $t7, $t7, 0xc07c
/* 06C350 8006B750 24590008 */  addiu $t9, $v0, 8
/* 06C354 8006B754 AC790000 */  sw    $t9, ($v1)
/* 06C358 8006B758 3C18F200 */  lui   $t8, 0xf200
/* 06C35C 8006B75C AC580000 */  sw    $t8, ($v0)
/* 06C360 8006B760 AC4F0004 */  sw    $t7, 4($v0)
/* 06C364 8006B764 8C620000 */  lw    $v0, ($v1)
/* 06C368 8006B768 3C18800E */  lui   $t8, %hi(D_800E5290) # $t8, 0x800e
/* 06C36C 8006B76C 3C190400 */  lui   $t9, (0x0400103F >> 16) # lui $t9, 0x400
/* 06C370 8006B770 244E0008 */  addiu $t6, $v0, 8
/* 06C374 8006B774 AC6E0000 */  sw    $t6, ($v1)
/* 06C378 8006B778 3739103F */  ori   $t9, (0x0400103F & 0xFFFF) # ori $t9, $t9, 0x103f
/* 06C37C 8006B77C 27185290 */  addiu $t8, %lo(D_800E5290) # addiu $t8, $t8, 0x5290
/* 06C380 8006B780 AC580004 */  sw    $t8, 4($v0)
/* 06C384 8006B784 AC590000 */  sw    $t9, ($v0)
/* 06C388 8006B788 8C620000 */  lw    $v0, ($v1)
/* 06C38C 8006B78C 3C180001 */  lui   $t8, (0x00010001 >> 16) # lui $t8, 1
/* 06C390 8006B790 37180001 */  ori   $t8, (0x00010001 & 0xFFFF) # ori $t8, $t8, 1
/* 06C394 8006B794 244F0008 */  addiu $t7, $v0, 8
/* 06C398 8006B798 AC6F0000 */  sw    $t7, ($v1)
/* 06C39C 8006B79C AC5F0004 */  sw    $ra, 4($v0)
/* 06C3A0 8006B7A0 AC500000 */  sw    $s0, ($v0)
/* 06C3A4 8006B7A4 8C620000 */  lw    $v0, ($v1)
/* 06C3A8 8006B7A8 3C19BB00 */  lui   $t9, 0xbb00
/* 06C3AC 8006B7AC 244E0008 */  addiu $t6, $v0, 8
/* 06C3B0 8006B7B0 AC6E0000 */  sw    $t6, ($v1)
/* 06C3B4 8006B7B4 AC580004 */  sw    $t8, 4($v0)
/* 06C3B8 8006B7B8 AC590000 */  sw    $t9, ($v0)
/* 06C3BC 8006B7BC 3C028016 */  lui   $v0, %hi(D_80164AF0) # $v0, 0x8016
/* 06C3C0 8006B7C0 24424AF0 */  addiu $v0, %lo(D_80164AF0) # addiu $v0, $v0, 0x4af0
/* 06C3C4 8006B7C4 844F0000 */  lh    $t7, ($v0)
/* 06C3C8 8006B7C8 8FBF0034 */  lw    $ra, 0x34($sp)
/* 06C3CC 8006B7CC 8FB00030 */  lw    $s0, 0x30($sp)
/* 06C3D0 8006B7D0 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 06C3D4 8006B7D4 25EE0001 */  addiu $t6, $t7, 1
/* 06C3D8 8006B7D8 A44E0000 */  sh    $t6, ($v0)
/* 06C3DC 8006B7DC 03E00008 */  jr    $ra
/* 06C3E0 8006B7E0 27BD0180 */   addiu $sp, $sp, 0x180
