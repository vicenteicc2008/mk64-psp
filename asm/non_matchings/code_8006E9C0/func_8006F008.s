.section .late_rodata

glabel jpt_800EE950
.word L8006F0E4, L8006F174, L8006F1AC, L8006F1E4
.word L8006F248, L8006F2A4, L8006F2FC, L8006F360
.word L8006F3E8, L8006F470, L8006F4D4, L8006F50C
.word L8006F578, L8006F600, L8006F640, L8006F678
.word L8006F6A4, L8006F6D0, L8006F6FC, L8006F734

glabel D_800EE9A0
.float 0.022

glabel D_800EE9A4
.float 0.022

glabel D_800EE9A8
.float 0.0174

glabel D_800EE9AC
.float 0.016

glabel D_800EE9B0
.float 0.018

glabel D_800EE9B4
.float 0.016

glabel D_800EE9B8
.float 0.014

glabel D_800EE9BC
.float 0.014

glabel D_800EE9C0
.float 0.0155

glabel D_800EE9C4
.float 0.0155

glabel D_800EE9C8
.float 0.013

glabel D_800EE9CC
.float 0.015

glabel D_800EE9D0
.float 0.015

glabel D_800EE9D4
.float 0.0103

glabel D_800EE9D8
.float 0.0155

glabel D_800EE9DC
.float 0.0335

glabel D_800EE9E0
.float 0.0445

glabel D_800EE9E4
.float 0.0285

glabel D_800EE9E8
.float 0.0155

glabel D_800EE9EC
.float 0.0257

.section .text

glabel func_8006F008
/* 06FC08 8006F008 3C018016 */  lui   $at, %hi(D_801655C8) # $at, 0x8016
/* 06FC0C 8006F00C AC2055C8 */  sw    $zero, %lo(D_801655C8)($at)
/* 06FC10 8006F010 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 06FC14 8006F014 44812000 */  mtc1  $at, $f4
/* 06FC18 8006F018 3C028019 */  lui   $v0, %hi(D_8018D01C) # $v0, 0x8019
/* 06FC1C 8006F01C 2442D01C */  addiu $v0, %lo(D_8018D01C) # addiu $v0, $v0, -0x2fe4
/* 06FC20 8006F020 3C0E800E */  lui   $t6, %hi(gIsMirrorMode) # $t6, 0x800e
/* 06FC24 8006F024 E4440000 */  swc1  $f4, ($v0)
/* 06FC28 8006F028 8DCEC604 */  lw    $t6, %lo(gIsMirrorMode)($t6)
/* 06FC2C 8006F02C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06FC30 8006F030 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06FC34 8006F034 11C00005 */  beqz  $t6, .L8006F04C
/* 06FC38 8006F038 3C038019 */   lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 06FC3C 8006F03C 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 06FC40 8006F040 44813000 */  mtc1  $at, $f6
/* 06FC44 8006F044 00000000 */  nop   
/* 06FC48 8006F048 E4460000 */  swc1  $f6, ($v0)
.L8006F04C:
/* 06FC4C 8006F04C 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 06FC50 8006F050 2508D2D8 */  addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
/* 06FC54 8006F054 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 06FC58 8006F058 240F0101 */  li    $t7, 257
/* 06FC5C 8006F05C 241800AA */  li    $t8, 170
/* 06FC60 8006F060 240700FF */  li    $a3, 255
/* 06FC64 8006F064 A46F0000 */  sh    $t7, ($v1)
/* 06FC68 8006F068 A5180000 */  sh    $t8, ($t0)
/* 06FC6C 8006F06C 3C018019 */  lui   $at, %hi(D_8018D300) # $at, 0x8019
/* 06FC70 8006F070 A427D300 */  sh    $a3, %lo(D_8018D300)($at)
/* 06FC74 8006F074 3C018019 */  lui   $at, %hi(D_8018D308) # $at, 0x8019
/* 06FC78 8006F078 A427D308 */  sh    $a3, %lo(D_8018D308)($at)
/* 06FC7C 8006F07C 3C018019 */  lui   $at, %hi(D_8018D310) # $at, 0x8019
/* 06FC80 8006F080 3C04800E */  lui   $a0, %hi(gCurrentCourseId) # $a0, 0x800e
/* 06FC84 8006F084 8484C5A0 */  lh    $a0, %lo(gCurrentCourseId)($a0)
/* 06FC88 8006F088 A427D310 */  sh    $a3, %lo(D_8018D310)($at)
/* 06FC8C 8006F08C 3C018019 */  lui   $at, %hi(D_8018D318) # $at, 0x8019
/* 06FC90 8006F090 A427D318 */  sh    $a3, %lo(D_8018D318)($at)
/* 06FC94 8006F094 28810014 */  slti  $at, $a0, 0x14
/* 06FC98 8006F098 5020000B */  beql  $at, $zero, .L8006F0C8
/* 06FC9C 8006F09C 2C810014 */   sltiu $at, $a0, 0x14
/* 06FCA0 8006F0A0 0C01BBBA */  jal   func_8006EEE8
/* 06FCA4 8006F0A4 00000000 */   nop   
/* 06FCA8 8006F0A8 3C038019 */  lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 06FCAC 8006F0AC 3C04800E */  lui   $a0, %hi(gCurrentCourseId) # $a0, 0x800e
/* 06FCB0 8006F0B0 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 06FCB4 8006F0B4 2508D2D8 */  addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
/* 06FCB8 8006F0B8 8484C5A0 */  lh    $a0, %lo(gCurrentCourseId)($a0)
/* 06FCBC 8006F0BC 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 06FCC0 8006F0C0 240700FF */  li    $a3, 255
/* 06FCC4 8006F0C4 2C810014 */  sltiu $at, $a0, 0x14
.L8006F0C8:
/* 06FCC8 8006F0C8 102001A5 */  beqz  $at, .L8006F760
/* 06FCCC 8006F0CC 0004C880 */   sll   $t9, $a0, 2
/* 06FCD0 8006F0D0 3C01800F */  lui   $at, %hi(jpt_800EE950)
/* 06FCD4 8006F0D4 00390821 */  addu  $at, $at, $t9
/* 06FCD8 8006F0D8 8C39E950 */  lw    $t9, %lo(jpt_800EE950)($at)
/* 06FCDC 8006F0DC 03200008 */  jr    $t9
/* 06FCE0 8006F0E0 00000000 */   nop   
glabel L8006F0E4
/* 06FCE4 8006F0E4 3C040F0D */  lui   $a0, %hi(gTextureExhaust5) # $a0, 0xf0d
/* 06FCE8 8006F0E8 248470CC */  addiu $a0, %lo(gTextureExhaust5) # addiu $a0, $a0, 0x70cc
/* 06FCEC 8006F0EC 24050443 */  li    $a1, 1091
/* 06FCF0 8006F0F0 0C0AA13D */  jal   dma_textures
/* 06FCF4 8006F0F4 24061000 */   li    $a2, 4096
/* 06FCF8 8006F0F8 3C018019 */  lui   $at, %hi(D_8018D220) # $at, 0x8019
/* 06FCFC 8006F0FC AC22D220 */  sw    $v0, %lo(D_8018D220)($at)
/* 06FD00 8006F100 3C01800F */  lui   $at, %hi(D_800EE9A0) # $at, 0x800f
/* 06FD04 8006F104 C428E9A0 */  lwc1  $f8, %lo(D_800EE9A0)($at)
/* 06FD08 8006F108 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 06FD0C 8006F10C 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 06FD10 8006F110 E428D2A0 */  swc1  $f8, %lo(D_8018D2A0)($at)
/* 06FD14 8006F114 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 06FD18 8006F118 24090006 */  li    $t1, 6
/* 06FD1C 8006F11C A4890000 */  sh    $t1, ($a0)
/* 06FD20 8006F120 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 06FD24 8006F124 240A001C */  li    $t2, 28
/* 06FD28 8006F128 3C038019 */  lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 06FD2C 8006F12C A42AD2E8 */  sh    $t2, %lo(D_8018D2E8)($at)
/* 06FD30 8006F130 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 06FD34 8006F134 240B0104 */  li    $t3, 260
/* 06FD38 8006F138 A46B0000 */  sh    $t3, ($v1)
/* 06FD3C 8006F13C 3C018019 */  lui   $at, %hi(D_8018D2D8) # $at, 0x8019
/* 06FD40 8006F140 240C00AA */  li    $t4, 170
/* 06FD44 8006F144 A42CD2D8 */  sh    $t4, %lo(D_8018D2D8)($at)
/* 06FD48 8006F148 3C018016 */  lui   $at, %hi(D_80165718) # $at, 0x8016
/* 06FD4C 8006F14C A4205718 */  sh    $zero, %lo(D_80165718)($at)
/* 06FD50 8006F150 3C018016 */  lui   $at, %hi(D_80165720) # $at, 0x8016
/* 06FD54 8006F154 240D0005 */  li    $t5, 5
/* 06FD58 8006F158 A42D5720 */  sh    $t5, %lo(D_80165720)($at)
/* 06FD5C 8006F15C 3C018016 */  lui   $at, %hi(D_80165728) # $at, 0x8016
/* 06FD60 8006F160 240EFF10 */  li    $t6, -240
/* 06FD64 8006F164 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 06FD68 8006F168 A42E5728 */  sh    $t6, %lo(D_80165728)($at)
/* 06FD6C 8006F16C 1000017C */  b     .L8006F760
/* 06FD70 8006F170 2508D2D8 */   addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
glabel L8006F174
/* 06FD74 8006F174 3C01800F */  lui   $at, %hi(D_800EE9A4) # $at, 0x800f
/* 06FD78 8006F178 C42AE9A4 */  lwc1  $f10, %lo(D_800EE9A4)($at)
/* 06FD7C 8006F17C 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 06FD80 8006F180 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 06FD84 8006F184 E42AD2A0 */  swc1  $f10, %lo(D_8018D2A0)($at)
/* 06FD88 8006F188 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 06FD8C 8006F18C 240F0109 */  li    $t7, 265
/* 06FD90 8006F190 24180013 */  li    $t8, 19
/* 06FD94 8006F194 A46F0000 */  sh    $t7, ($v1)
/* 06FD98 8006F198 A4980000 */  sh    $t8, ($a0)
/* 06FD9C 8006F19C 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 06FDA0 8006F1A0 24190025 */  li    $t9, 37
/* 06FDA4 8006F1A4 1000016E */  b     .L8006F760
/* 06FDA8 8006F1A8 A439D2E8 */   sh    $t9, %lo(D_8018D2E8)($at)
glabel L8006F1AC
/* 06FDAC 8006F1AC 24090109 */  li    $t1, 265
/* 06FDB0 8006F1B0 A4690000 */  sh    $t1, ($v1)
/* 06FDB4 8006F1B4 3C01800F */  lui   $at, %hi(D_800EE9A8) # $at, 0x800f
/* 06FDB8 8006F1B8 C430E9A8 */  lwc1  $f16, %lo(D_800EE9A8)($at)
/* 06FDBC 8006F1BC 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 06FDC0 8006F1C0 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 06FDC4 8006F1C4 E430D2A0 */  swc1  $f16, %lo(D_8018D2A0)($at)
/* 06FDC8 8006F1C8 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 06FDCC 8006F1CC 240A000C */  li    $t2, 12
/* 06FDD0 8006F1D0 A48A0000 */  sh    $t2, ($a0)
/* 06FDD4 8006F1D4 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 06FDD8 8006F1D8 240B0030 */  li    $t3, 48
/* 06FDDC 8006F1DC 10000160 */  b     .L8006F760
/* 06FDE0 8006F1E0 A42BD2E8 */   sh    $t3, %lo(D_8018D2E8)($at)
glabel L8006F1E4
/* 06FDE4 8006F1E4 3C040F0D */  lui   $a0, %hi(D_0F0D0E50) # $a0, 0xf0d
/* 06FDE8 8006F1E8 24840E50 */  addiu $a0, %lo(D_0F0D0E50) # addiu $a0, $a0, 0xe50
/* 06FDEC 8006F1EC 24054CC2 */  li    $a1, 19650
/* 06FDF0 8006F1F0 0C0AA13D */  jal   dma_textures
/* 06FDF4 8006F1F4 3406D980 */   li    $a2, 55680
/* 06FDF8 8006F1F8 3C018016 */  lui   $at, %hi(D_80165880) # $at, 0x8016
/* 06FDFC 8006F1FC AC225880 */  sw    $v0, %lo(D_80165880)($at)
/* 06FE00 8006F200 3C01800F */  lui   $at, %hi(D_800EE9AC) # $at, 0x800f
/* 06FE04 8006F204 C432E9AC */  lwc1  $f18, %lo(D_800EE9AC)($at)
/* 06FE08 8006F208 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 06FE0C 8006F20C 3C038019 */  lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 06FE10 8006F210 E432D2A0 */  swc1  $f18, %lo(D_8018D2A0)($at)
/* 06FE14 8006F214 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 06FE18 8006F218 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 06FE1C 8006F21C 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 06FE20 8006F220 240C0106 */  li    $t4, 262
/* 06FE24 8006F224 240D0037 */  li    $t5, 55
/* 06FE28 8006F228 A46C0000 */  sh    $t4, ($v1)
/* 06FE2C 8006F22C A48D0000 */  sh    $t5, ($a0)
/* 06FE30 8006F230 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 06FE34 8006F234 240E0027 */  li    $t6, 39
/* 06FE38 8006F238 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 06FE3C 8006F23C A42ED2E8 */  sh    $t6, %lo(D_8018D2E8)($at)
/* 06FE40 8006F240 10000147 */  b     .L8006F760
/* 06FE44 8006F244 2508D2D8 */   addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
glabel L8006F248
/* 06FE48 8006F248 3C040F0D */  lui   $a0, %hi(gTextureExhaust0) # $a0, 0xf0d
/* 06FE4C 8006F24C 24845B14 */  addiu $a0, %lo(gTextureExhaust0) # addiu $a0, $a0, 0x5b14
/* 06FE50 8006F250 24050479 */  li    $a1, 1145
/* 06FE54 8006F254 0C0AA13D */  jal   dma_textures
/* 06FE58 8006F258 24060C00 */   li    $a2, 3072
/* 06FE5C 8006F25C 3C018019 */  lui   $at, %hi(D_8018D220) # $at, 0x8019
/* 06FE60 8006F260 AC22D220 */  sw    $v0, %lo(D_8018D220)($at)
/* 06FE64 8006F264 3C01800F */  lui   $at, %hi(D_800EE9B0) # $at, 0x800f
/* 06FE68 8006F268 C424E9B0 */  lwc1  $f4, %lo(D_800EE9B0)($at)
/* 06FE6C 8006F26C 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 06FE70 8006F270 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 06FE74 8006F274 E424D2A0 */  swc1  $f4, %lo(D_8018D2A0)($at)
/* 06FE78 8006F278 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 06FE7C 8006F27C 240F003D */  li    $t7, 61
/* 06FE80 8006F280 3C038019 */  lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 06FE84 8006F284 A48F0000 */  sh    $t7, ($a0)
/* 06FE88 8006F288 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 06FE8C 8006F28C 24180026 */  li    $t8, 38
/* 06FE90 8006F290 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 06FE94 8006F294 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 06FE98 8006F298 A438D2E8 */  sh    $t8, %lo(D_8018D2E8)($at)
/* 06FE9C 8006F29C 10000130 */  b     .L8006F760
/* 06FEA0 8006F2A0 2508D2D8 */   addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
glabel L8006F2A4
/* 06FEA4 8006F2A4 24190106 */  li    $t9, 262
/* 06FEA8 8006F2A8 A4790000 */  sh    $t9, ($v1)
/* 06FEAC 8006F2AC 3C01800F */  lui   $at, %hi(D_800EE9B4) # $at, 0x800f
/* 06FEB0 8006F2B0 C426E9B4 */  lwc1  $f6, %lo(D_800EE9B4)($at)
/* 06FEB4 8006F2B4 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 06FEB8 8006F2B8 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 06FEBC 8006F2BC E426D2A0 */  swc1  $f6, %lo(D_8018D2A0)($at)
/* 06FEC0 8006F2C0 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 06FEC4 8006F2C4 24090024 */  li    $t1, 36
/* 06FEC8 8006F2C8 A4890000 */  sh    $t1, ($a0)
/* 06FECC 8006F2CC 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 06FED0 8006F2D0 240A0028 */  li    $t2, 40
/* 06FED4 8006F2D4 A42AD2E8 */  sh    $t2, %lo(D_8018D2E8)($at)
/* 06FED8 8006F2D8 3C018019 */  lui   $at, %hi(D_8018D300) # $at, 0x8019
/* 06FEDC 8006F2DC 240B0048 */  li    $t3, 72
/* 06FEE0 8006F2E0 A42BD300 */  sh    $t3, %lo(D_8018D300)($at)
/* 06FEE4 8006F2E4 3C018019 */  lui   $at, %hi(D_8018D308) # $at, 0x8019
/* 06FEE8 8006F2E8 240C0064 */  li    $t4, 100
/* 06FEEC 8006F2EC A42CD308 */  sh    $t4, %lo(D_8018D308)($at)
/* 06FEF0 8006F2F0 3C018019 */  lui   $at, %hi(D_8018D310) # $at, 0x8019
/* 06FEF4 8006F2F4 1000011A */  b     .L8006F760
/* 06FEF8 8006F2F8 A427D310 */   sh    $a3, %lo(D_8018D310)($at)
glabel L8006F2FC
/* 06FEFC 8006F2FC 3C040F0D */  lui   $a0, %hi(gTextureExhaust3) # $a0, 0xf0d
/* 06FF00 8006F300 2484690C */  addiu $a0, %lo(gTextureExhaust3) # addiu $a0, $a0, 0x690c
/* 06FF04 8006F304 240503C8 */  li    $a1, 968
/* 06FF08 8006F308 0C0AA13D */  jal   dma_textures
/* 06FF0C 8006F30C 24061000 */   li    $a2, 4096
/* 06FF10 8006F310 3C018019 */  lui   $at, %hi(D_8018D220) # $at, 0x8019
/* 06FF14 8006F314 AC22D220 */  sw    $v0, %lo(D_8018D220)($at)
/* 06FF18 8006F318 3C01800F */  lui   $at, %hi(D_800EE9B8) # $at, 0x800f
/* 06FF1C 8006F31C C428E9B8 */  lwc1  $f8, %lo(D_800EE9B8)($at)
/* 06FF20 8006F320 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 06FF24 8006F324 3C038019 */  lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 06FF28 8006F328 E428D2A0 */  swc1  $f8, %lo(D_8018D2A0)($at)
/* 06FF2C 8006F32C 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 06FF30 8006F330 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 06FF34 8006F334 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 06FF38 8006F338 240D010C */  li    $t5, 268
/* 06FF3C 8006F33C 240E0028 */  li    $t6, 40
/* 06FF40 8006F340 A46D0000 */  sh    $t5, ($v1)
/* 06FF44 8006F344 A48E0000 */  sh    $t6, ($a0)
/* 06FF48 8006F348 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 06FF4C 8006F34C 240F0015 */  li    $t7, 21
/* 06FF50 8006F350 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 06FF54 8006F354 A42FD2E8 */  sh    $t7, %lo(D_8018D2E8)($at)
/* 06FF58 8006F358 10000101 */  b     .L8006F760
/* 06FF5C 8006F35C 2508D2D8 */   addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
glabel L8006F360
/* 06FF60 8006F360 3C040F0D */  lui   $a0, %hi(gTextureExhaust4) # $a0, 0xf0d
/* 06FF64 8006F364 24846CD4 */  addiu $a0, %lo(gTextureExhaust4) # addiu $a0, $a0, 0x6cd4
/* 06FF68 8006F368 240503F8 */  li    $a1, 1016
/* 06FF6C 8006F36C 0C0AA13D */  jal   dma_textures
/* 06FF70 8006F370 24061000 */   li    $a2, 4096
/* 06FF74 8006F374 3C018019 */  lui   $at, %hi(D_8018D220) # $at, 0x8019
/* 06FF78 8006F378 AC22D220 */  sw    $v0, %lo(D_8018D220)($at)
/* 06FF7C 8006F37C 3C038019 */  lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 06FF80 8006F380 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 06FF84 8006F384 24180106 */  li    $t8, 262
/* 06FF88 8006F388 A4780000 */  sh    $t8, ($v1)
/* 06FF8C 8006F38C 3C01800F */  lui   $at, %hi(D_800EE9BC) # $at, 0x800f
/* 06FF90 8006F390 C42AE9BC */  lwc1  $f10, %lo(D_800EE9BC)($at)
/* 06FF94 8006F394 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 06FF98 8006F398 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 06FF9C 8006F39C E42AD2A0 */  swc1  $f10, %lo(D_8018D2A0)($at)
/* 06FFA0 8006F3A0 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 06FFA4 8006F3A4 24190025 */  li    $t9, 37
/* 06FFA8 8006F3A8 A4990000 */  sh    $t9, ($a0)
/* 06FFAC 8006F3AC 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 06FFB0 8006F3B0 24090032 */  li    $t1, 50
/* 06FFB4 8006F3B4 A429D2E8 */  sh    $t1, %lo(D_8018D2E8)($at)
/* 06FFB8 8006F3B8 3C018016 */  lui   $at, %hi(D_80165718) # $at, 0x8016
/* 06FFBC 8006F3BC 240AFFC0 */  li    $t2, -64
/* 06FFC0 8006F3C0 A42A5718 */  sh    $t2, %lo(D_80165718)($at)
/* 06FFC4 8006F3C4 3C018016 */  lui   $at, %hi(D_80165720) # $at, 0x8016
/* 06FFC8 8006F3C8 240B0005 */  li    $t3, 5
/* 06FFCC 8006F3CC A42B5720 */  sh    $t3, %lo(D_80165720)($at)
/* 06FFD0 8006F3D0 3C018016 */  lui   $at, %hi(D_80165728) # $at, 0x8016
/* 06FFD4 8006F3D4 240CFEB6 */  li    $t4, -330
/* 06FFD8 8006F3D8 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 06FFDC 8006F3DC A42C5728 */  sh    $t4, %lo(D_80165728)($at)
/* 06FFE0 8006F3E0 100000DF */  b     .L8006F760
/* 06FFE4 8006F3E4 2508D2D8 */   addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
glabel L8006F3E8
/* 06FFE8 8006F3E8 3C040F0D */  lui   $a0, %hi(gTextureExhaust2) # $a0, 0xf0d
/* 06FFEC 8006F3EC 24846418 */  addiu $a0, %lo(gTextureExhaust2) # addiu $a0, $a0, 0x6418
/* 06FFF0 8006F3F0 240504F4 */  li    $a1, 1268
/* 06FFF4 8006F3F4 0C0AA13D */  jal   dma_textures
/* 06FFF8 8006F3F8 24060C00 */   li    $a2, 3072
/* 06FFFC 8006F3FC 3C018019 */  lui   $at, %hi(D_8018D220) # $at, 0x8019
/* 070000 8006F400 AC22D220 */  sw    $v0, %lo(D_8018D220)($at)
/* 070004 8006F404 3C01800F */  lui   $at, %hi(D_800EE9C0) # $at, 0x800f
/* 070008 8006F408 C430E9C0 */  lwc1  $f16, %lo(D_800EE9C0)($at)
/* 07000C 8006F40C 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 070010 8006F410 3C038019 */  lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 070014 8006F414 E430D2A0 */  swc1  $f16, %lo(D_8018D2A0)($at)
/* 070018 8006F418 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 07001C 8006F41C 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 070020 8006F420 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 070024 8006F424 240D010F */  li    $t5, 271
/* 070028 8006F428 240E002D */  li    $t6, 45
/* 07002C 8006F42C A46D0000 */  sh    $t5, ($v1)
/* 070030 8006F430 A48E0000 */  sh    $t6, ($a0)
/* 070034 8006F434 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 070038 8006F438 240F003C */  li    $t7, 60
/* 07003C 8006F43C A42FD2E8 */  sh    $t7, %lo(D_8018D2E8)($at)
/* 070040 8006F440 3C018016 */  lui   $at, %hi(D_80165718) # $at, 0x8016
/* 070044 8006F444 2418FF74 */  li    $t8, -140
/* 070048 8006F448 A4385718 */  sh    $t8, %lo(D_80165718)($at)
/* 07004C 8006F44C 3C018016 */  lui   $at, %hi(D_80165720) # $at, 0x8016
/* 070050 8006F450 2419FFD4 */  li    $t9, -44
/* 070054 8006F454 A4395720 */  sh    $t9, %lo(D_80165720)($at)
/* 070058 8006F458 3C018016 */  lui   $at, %hi(D_80165728) # $at, 0x8016
/* 07005C 8006F45C 2409FF29 */  li    $t1, -215
/* 070060 8006F460 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 070064 8006F464 A4295728 */  sh    $t1, %lo(D_80165728)($at)
/* 070068 8006F468 100000BD */  b     .L8006F760
/* 07006C 8006F46C 2508D2D8 */   addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
glabel L8006F470
/* 070070 8006F470 3C040F0D */  lui   $a0, %hi(gTextureExhaust0) # $a0, 0xf0d
/* 070074 8006F474 24845B14 */  addiu $a0, %lo(gTextureExhaust0) # addiu $a0, $a0, 0x5b14
/* 070078 8006F478 24050479 */  li    $a1, 1145
/* 07007C 8006F47C 0C0AA13D */  jal   dma_textures
/* 070080 8006F480 24060C00 */   li    $a2, 3072
/* 070084 8006F484 3C018019 */  lui   $at, %hi(D_8018D220) # $at, 0x8019
/* 070088 8006F488 AC22D220 */  sw    $v0, %lo(D_8018D220)($at)
/* 07008C 8006F48C 3C01800F */  lui   $at, %hi(D_800EE9C4) # $at, 0x800f
/* 070090 8006F490 C432E9C4 */  lwc1  $f18, %lo(D_800EE9C4)($at)
/* 070094 8006F494 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 070098 8006F498 3C038019 */  lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 07009C 8006F49C E432D2A0 */  swc1  $f18, %lo(D_8018D2A0)($at)
/* 0700A0 8006F4A0 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 0700A4 8006F4A4 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 0700A8 8006F4A8 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 0700AC 8006F4AC 240A010F */  li    $t2, 271
/* 0700B0 8006F4B0 240B0012 */  li    $t3, 18
/* 0700B4 8006F4B4 A46A0000 */  sh    $t2, ($v1)
/* 0700B8 8006F4B8 A48B0000 */  sh    $t3, ($a0)
/* 0700BC 8006F4BC 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 0700C0 8006F4C0 240C0024 */  li    $t4, 36
/* 0700C4 8006F4C4 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 0700C8 8006F4C8 A42CD2E8 */  sh    $t4, %lo(D_8018D2E8)($at)
/* 0700CC 8006F4CC 100000A4 */  b     .L8006F760
/* 0700D0 8006F4D0 2508D2D8 */   addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
glabel L8006F4D4
/* 0700D4 8006F4D4 3C01800F */  lui   $at, %hi(D_800EE9C8) # $at, 0x800f
/* 0700D8 8006F4D8 C424E9C8 */  lwc1  $f4, %lo(D_800EE9C8)($at)
/* 0700DC 8006F4DC 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 0700E0 8006F4E0 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 0700E4 8006F4E4 E424D2A0 */  swc1  $f4, %lo(D_8018D2A0)($at)
/* 0700E8 8006F4E8 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 0700EC 8006F4EC 240D00FC */  li    $t5, 252
/* 0700F0 8006F4F0 240E0039 */  li    $t6, 57
/* 0700F4 8006F4F4 A46D0000 */  sh    $t5, ($v1)
/* 0700F8 8006F4F8 A48E0000 */  sh    $t6, ($a0)
/* 0700FC 8006F4FC 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 070100 8006F500 240F002C */  li    $t7, 44
/* 070104 8006F504 10000096 */  b     .L8006F760
/* 070108 8006F508 A42FD2E8 */   sh    $t7, %lo(D_8018D2E8)($at)
glabel L8006F50C
/* 07010C 8006F50C 24180107 */  li    $t8, 263
/* 070110 8006F510 241900A5 */  li    $t9, 165
/* 070114 8006F514 3C040F0D */  lui   $a0, %hi(gTextureExhaust5) # $a0, 0xf0d
/* 070118 8006F518 A4780000 */  sh    $t8, ($v1)
/* 07011C 8006F51C A5190000 */  sh    $t9, ($t0)
/* 070120 8006F520 248470CC */  addiu $a0, %lo(gTextureExhaust5) # addiu $a0, $a0, 0x70cc
/* 070124 8006F524 24050443 */  li    $a1, 1091
/* 070128 8006F528 0C0AA13D */  jal   dma_textures
/* 07012C 8006F52C 24061000 */   li    $a2, 4096
/* 070130 8006F530 3C018019 */  lui   $at, %hi(D_8018D220) # $at, 0x8019
/* 070134 8006F534 AC22D220 */  sw    $v0, %lo(D_8018D220)($at)
/* 070138 8006F538 3C01800F */  lui   $at, %hi(D_800EE9CC) # $at, 0x800f
/* 07013C 8006F53C C426E9CC */  lwc1  $f6, %lo(D_800EE9CC)($at)
/* 070140 8006F540 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 070144 8006F544 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 070148 8006F548 E426D2A0 */  swc1  $f6, %lo(D_8018D2A0)($at)
/* 07014C 8006F54C 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 070150 8006F550 24090037 */  li    $t1, 55
/* 070154 8006F554 3C038019 */  lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 070158 8006F558 A4890000 */  sh    $t1, ($a0)
/* 07015C 8006F55C 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 070160 8006F560 240A001B */  li    $t2, 27
/* 070164 8006F564 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 070168 8006F568 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 07016C 8006F56C A42AD2E8 */  sh    $t2, %lo(D_8018D2E8)($at)
/* 070170 8006F570 1000007B */  b     .L8006F760
/* 070174 8006F574 2508D2D8 */   addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
glabel L8006F578
/* 070178 8006F578 3C040F0D */  lui   $a0, %hi(gTextureExhaust1) # $a0, 0xf0d
/* 07017C 8006F57C 24845F90 */  addiu $a0, %lo(gTextureExhaust1) # addiu $a0, $a0, 0x5f90
/* 070180 8006F580 24050485 */  li    $a1, 1157
/* 070184 8006F584 0C0AA13D */  jal   dma_textures
/* 070188 8006F588 24060C00 */   li    $a2, 3072
/* 07018C 8006F58C 3C018019 */  lui   $at, %hi(D_8018D220) # $at, 0x8019
/* 070190 8006F590 AC22D220 */  sw    $v0, %lo(D_8018D220)($at)
/* 070194 8006F594 3C01800F */  lui   $at, %hi(D_800EE9D0) # $at, 0x800f
/* 070198 8006F598 C428E9D0 */  lwc1  $f8, %lo(D_800EE9D0)($at)
/* 07019C 8006F59C 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 0701A0 8006F5A0 3C038019 */  lui   $v1, %hi(D_8018D2C0) # $v1, 0x8019
/* 0701A4 8006F5A4 E428D2A0 */  swc1  $f8, %lo(D_8018D2A0)($at)
/* 0701A8 8006F5A8 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 0701AC 8006F5AC 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 0701B0 8006F5B0 2463D2C0 */  addiu $v1, %lo(D_8018D2C0) # addiu $v1, $v1, -0x2d40
/* 0701B4 8006F5B4 240B0106 */  li    $t3, 262
/* 0701B8 8006F5B8 240C0034 */  li    $t4, 52
/* 0701BC 8006F5BC A46B0000 */  sh    $t3, ($v1)
/* 0701C0 8006F5C0 A48C0000 */  sh    $t4, ($a0)
/* 0701C4 8006F5C4 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 0701C8 8006F5C8 240D0021 */  li    $t5, 33
/* 0701CC 8006F5CC A42DD2E8 */  sh    $t5, %lo(D_8018D2E8)($at)
/* 0701D0 8006F5D0 3C018019 */  lui   $at, %hi(D_8018D300) # $at, 0x8019
/* 0701D4 8006F5D4 240E0048 */  li    $t6, 72
/* 0701D8 8006F5D8 A42ED300 */  sh    $t6, %lo(D_8018D300)($at)
/* 0701DC 8006F5DC 3C018019 */  lui   $at, %hi(D_8018D308) # $at, 0x8019
/* 0701E0 8006F5E0 240F0064 */  li    $t7, 100
/* 0701E4 8006F5E4 A42FD308 */  sh    $t7, %lo(D_8018D308)($at)
/* 0701E8 8006F5E8 240700FF */  li    $a3, 255
/* 0701EC 8006F5EC 3C018019 */  lui   $at, %hi(D_8018D310) # $at, 0x8019
/* 0701F0 8006F5F0 3C088019 */  lui   $t0, %hi(D_8018D2D8) # $t0, 0x8019
/* 0701F4 8006F5F4 A427D310 */  sh    $a3, %lo(D_8018D310)($at)
/* 0701F8 8006F5F8 10000059 */  b     .L8006F760
/* 0701FC 8006F5FC 2508D2D8 */   addiu $t0, %lo(D_8018D2D8) # addiu $t0, $t0, -0x2d28
glabel L8006F600
/* 070200 8006F600 3C01800F */  lui   $at, %hi(D_800EE9D4) # $at, 0x800f
/* 070204 8006F604 C42AE9D4 */  lwc1  $f10, %lo(D_800EE9D4)($at)
/* 070208 8006F608 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 07020C 8006F60C 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 070210 8006F610 E42AD2A0 */  swc1  $f10, %lo(D_8018D2A0)($at)
/* 070214 8006F614 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 070218 8006F618 24180105 */  li    $t8, 261
/* 07021C 8006F61C 241900A6 */  li    $t9, 166
/* 070220 8006F620 24090027 */  li    $t1, 39
/* 070224 8006F624 A4780000 */  sh    $t8, ($v1)
/* 070228 8006F628 A5190000 */  sh    $t9, ($t0)
/* 07022C 8006F62C A4890000 */  sh    $t1, ($a0)
/* 070230 8006F630 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 070234 8006F634 240A0037 */  li    $t2, 55
/* 070238 8006F638 10000049 */  b     .L8006F760
/* 07023C 8006F63C A42AD2E8 */   sh    $t2, %lo(D_8018D2E8)($at)
glabel L8006F640
/* 070240 8006F640 3C01800F */  lui   $at, %hi(D_800EE9D8) # $at, 0x800f
/* 070244 8006F644 C430E9D8 */  lwc1  $f16, %lo(D_800EE9D8)($at)
/* 070248 8006F648 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 07024C 8006F64C 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 070250 8006F650 E430D2A0 */  swc1  $f16, %lo(D_8018D2A0)($at)
/* 070254 8006F654 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 070258 8006F658 240B0106 */  li    $t3, 262
/* 07025C 8006F65C 240C0035 */  li    $t4, 53
/* 070260 8006F660 A46B0000 */  sh    $t3, ($v1)
/* 070264 8006F664 A48C0000 */  sh    $t4, ($a0)
/* 070268 8006F668 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 07026C 8006F66C 240D0023 */  li    $t5, 35
/* 070270 8006F670 1000003B */  b     .L8006F760
/* 070274 8006F674 A42DD2E8 */   sh    $t5, %lo(D_8018D2E8)($at)
glabel L8006F678
/* 070278 8006F678 3C01800F */  lui   $at, %hi(D_800EE9DC) # $at, 0x800f
/* 07027C 8006F67C C432E9DC */  lwc1  $f18, %lo(D_800EE9DC)($at)
/* 070280 8006F680 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 070284 8006F684 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 070288 8006F688 E432D2A0 */  swc1  $f18, %lo(D_8018D2A0)($at)
/* 07028C 8006F68C 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 070290 8006F690 24020020 */  li    $v0, 32
/* 070294 8006F694 A4820000 */  sh    $v0, ($a0)
/* 070298 8006F698 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 07029C 8006F69C 10000030 */  b     .L8006F760
/* 0702A0 8006F6A0 A422D2E8 */   sh    $v0, %lo(D_8018D2E8)($at)
glabel L8006F6A4
/* 0702A4 8006F6A4 3C01800F */  lui   $at, %hi(D_800EE9E0) # $at, 0x800f
/* 0702A8 8006F6A8 C424E9E0 */  lwc1  $f4, %lo(D_800EE9E0)($at)
/* 0702AC 8006F6AC 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 0702B0 8006F6B0 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 0702B4 8006F6B4 E424D2A0 */  swc1  $f4, %lo(D_8018D2A0)($at)
/* 0702B8 8006F6B8 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 0702BC 8006F6BC 24020020 */  li    $v0, 32
/* 0702C0 8006F6C0 A4820000 */  sh    $v0, ($a0)
/* 0702C4 8006F6C4 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 0702C8 8006F6C8 10000025 */  b     .L8006F760
/* 0702CC 8006F6CC A422D2E8 */   sh    $v0, %lo(D_8018D2E8)($at)
glabel L8006F6D0
/* 0702D0 8006F6D0 3C01800F */  lui   $at, %hi(D_800EE9E4) # $at, 0x800f
/* 0702D4 8006F6D4 C426E9E4 */  lwc1  $f6, %lo(D_800EE9E4)($at)
/* 0702D8 8006F6D8 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 0702DC 8006F6DC 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 0702E0 8006F6E0 E426D2A0 */  swc1  $f6, %lo(D_8018D2A0)($at)
/* 0702E4 8006F6E4 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 0702E8 8006F6E8 24020020 */  li    $v0, 32
/* 0702EC 8006F6EC A4820000 */  sh    $v0, ($a0)
/* 0702F0 8006F6F0 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 0702F4 8006F6F4 1000001A */  b     .L8006F760
/* 0702F8 8006F6F8 A422D2E8 */   sh    $v0, %lo(D_8018D2E8)($at)
glabel L8006F6FC
/* 0702FC 8006F6FC 3C01800F */  lui   $at, %hi(D_800EE9E8) # $at, 0x800f
/* 070300 8006F700 C428E9E8 */  lwc1  $f8, %lo(D_800EE9E8)($at)
/* 070304 8006F704 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 070308 8006F708 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 07030C 8006F70C E428D2A0 */  swc1  $f8, %lo(D_8018D2A0)($at)
/* 070310 8006F710 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 070314 8006F714 240E00FF */  li    $t6, 255
/* 070318 8006F718 240F001D */  li    $t7, 29
/* 07031C 8006F71C A46E0000 */  sh    $t6, ($v1)
/* 070320 8006F720 A48F0000 */  sh    $t7, ($a0)
/* 070324 8006F724 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 070328 8006F728 2418002F */  li    $t8, 47
/* 07032C 8006F72C 1000000C */  b     .L8006F760
/* 070330 8006F730 A438D2E8 */   sh    $t8, %lo(D_8018D2E8)($at)
glabel L8006F734
/* 070334 8006F734 3C01800F */  lui   $at, %hi(D_800EE9EC) # $at, 0x800f
/* 070338 8006F738 C42AE9EC */  lwc1  $f10, %lo(D_800EE9EC)($at)
/* 07033C 8006F73C 3C018019 */  lui   $at, %hi(D_8018D2A0) # $at, 0x8019
/* 070340 8006F740 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 070344 8006F744 E42AD2A0 */  swc1  $f10, %lo(D_8018D2A0)($at)
/* 070348 8006F748 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 07034C 8006F74C 24020020 */  li    $v0, 32
/* 070350 8006F750 A4820000 */  sh    $v0, ($a0)
/* 070354 8006F754 3C018019 */  lui   $at, %hi(D_8018D2E8) # $at, 0x8019
/* 070358 8006F758 2419001F */  li    $t9, 31
/* 07035C 8006F75C A439D2E8 */  sh    $t9, %lo(D_8018D2E8)($at)
.L8006F760:
/* 070360 8006F760 3C09800E */  lui   $t1, %hi(gIsMirrorMode) # $t1, 0x800e
/* 070364 8006F764 8D29C604 */  lw    $t1, %lo(gIsMirrorMode)($t1)
/* 070368 8006F768 3C048019 */  lui   $a0, %hi(D_8018D2E0) # $a0, 0x8019
/* 07036C 8006F76C 2484D2E0 */  addiu $a0, %lo(D_8018D2E0) # addiu $a0, $a0, -0x2d20
/* 070370 8006F770 11200006 */  beqz  $t1, .L8006F78C
/* 070374 8006F774 3C028019 */   lui   $v0, %hi(D_8018EDF3) # $v0, 0x8019
/* 070378 8006F778 3C0A8019 */  lui   $t2, %hi(D_8018D2B0) # $t2, 0x8019
/* 07037C 8006F77C 854AD2B0 */  lh    $t2, %lo(D_8018D2B0)($t2)
/* 070380 8006F780 848B0000 */  lh    $t3, ($a0)
/* 070384 8006F784 014B6023 */  subu  $t4, $t2, $t3
/* 070388 8006F788 A48C0000 */  sh    $t4, ($a0)
.L8006F78C:
/* 07038C 8006F78C 8042EDF3 */  lb    $v0, %lo(D_8018EDF3)($v0)
/* 070390 8006F790 24010004 */  li    $at, 4
/* 070394 8006F794 14410005 */  bne   $v0, $at, .L8006F7AC
/* 070398 8006F798 240D00A0 */   li    $t5, 160
/* 07039C 8006F79C 240E0078 */  li    $t6, 120
/* 0703A0 8006F7A0 A46D0000 */  sh    $t5, ($v1)
/* 0703A4 8006F7A4 1000001B */  b     .L8006F814
/* 0703A8 8006F7A8 A50E0000 */   sh    $t6, ($t0)
.L8006F7AC:
/* 0703AC 8006F7AC 24010003 */  li    $at, 3
/* 0703B0 8006F7B0 14410005 */  bne   $v0, $at, .L8006F7C8
/* 0703B4 8006F7B4 240F00EB */   li    $t7, 235
/* 0703B8 8006F7B8 241800AF */  li    $t8, 175
/* 0703BC 8006F7BC A46F0000 */  sh    $t7, ($v1)
/* 0703C0 8006F7C0 10000014 */  b     .L8006F814
/* 0703C4 8006F7C4 A5180000 */   sh    $t8, ($t0)
.L8006F7C8:
/* 0703C8 8006F7C8 24010002 */  li    $at, 2
/* 0703CC 8006F7CC 14410011 */  bne   $v0, $at, .L8006F814
/* 0703D0 8006F7D0 3C19800E */   lui   $t9, %hi(gCurrentCourseId) # $t9, 0x800e
/* 0703D4 8006F7D4 8739C5A0 */  lh    $t9, %lo(gCurrentCourseId)($t9)
/* 0703D8 8006F7D8 2401000A */  li    $at, 10
/* 0703DC 8006F7DC 240D0041 */  li    $t5, 65
/* 0703E0 8006F7E0 13210006 */  beq   $t9, $at, .L8006F7FC
/* 0703E4 8006F7E4 240E00B4 */   li    $t6, 180
/* 0703E8 8006F7E8 24090109 */  li    $t1, 265
/* 0703EC 8006F7EC A4690002 */  sh    $t1, 2($v1)
/* 0703F0 8006F7F0 846A0002 */  lh    $t2, 2($v1)
/* 0703F4 8006F7F4 10000005 */  b     .L8006F80C
/* 0703F8 8006F7F8 A46A0000 */   sh    $t2, ($v1)
.L8006F7FC:
/* 0703FC 8006F7FC 240B00FF */  li    $t3, 255
/* 070400 8006F800 A46B0002 */  sh    $t3, 2($v1)
/* 070404 8006F804 846C0002 */  lh    $t4, 2($v1)
/* 070408 8006F808 A46C0000 */  sh    $t4, ($v1)
.L8006F80C:
/* 07040C 8006F80C A50D0000 */  sh    $t5, ($t0)
/* 070410 8006F810 A50E0002 */  sh    $t6, 2($t0)
.L8006F814:
/* 070414 8006F814 8FBF0014 */  lw    $ra, 0x14($sp)
/* 070418 8006F818 27BD0018 */  addiu $sp, $sp, 0x18
/* 07041C 8006F81C 03E00008 */  jr    $ra
/* 070420 8006F820 00000000 */   nop   
