.section .late_rodata

glabel D_800EF1C0
.float 0.2
.word 0x00000000

glabel D_800EF1C8
.double 0.1

.section .text

glabel func_8008311C
/* 083D1C 8008311C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 083D20 80083120 AFA5002C */  sw    $a1, 0x2c($sp)
/* 083D24 80083124 AFBF0024 */  sw    $ra, 0x24($sp)
/* 083D28 80083128 AFB10020 */  sw    $s1, 0x20($sp)
/* 083D2C 8008312C 3C050601 */  lui   $a1, %hi(gTLUTHedgehog) # $a1, 0x601
/* 083D30 80083130 3C060601 */  lui   $a2, %hi(gTextureHedgehog) # $a2, 0x601
/* 083D34 80083134 240E0040 */  li    $t6, 64
/* 083D38 80083138 00808825 */  move  $s1, $a0
/* 083D3C 8008313C AFB0001C */  sw    $s0, 0x1c($sp)
/* 083D40 80083140 AFAE0010 */  sw    $t6, 0x10($sp)
/* 083D44 80083144 24C64B08 */  addiu $a2, %lo(gTextureHedgehog) # addiu $a2, $a2, 0x4b08
/* 083D48 80083148 24A54908 */  addiu $a1, %lo(gTLUTHedgehog) # addiu $a1, $a1, 0x4908
/* 083D4C 8008314C 0C01CD11 */  jal   func_80073444
/* 083D50 80083150 24070040 */   li    $a3, 64
/* 083D54 80083154 001178C0 */  sll   $t7, $s1, 3
/* 083D58 80083158 01F17823 */  subu  $t7, $t7, $s1
/* 083D5C 8008315C 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 083D60 80083160 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 083D64 80083164 000F7940 */  sll   $t7, $t7, 5
/* 083D68 80083168 01F88021 */  addu  $s0, $t7, $t8
/* 083D6C 8008316C 3C190601 */  lui   $t9, %hi(gTLUTHedgehog) # $t9, 0x601
/* 083D70 80083170 3C080601 */  lui   $t0, %hi(gTextureHedgehog) # $t0, 0x601
/* 083D74 80083174 3C090D00 */  lui   $t1, %hi(D_0D0060B0) # $t1, 0xd00
/* 083D78 80083178 27394908 */  addiu $t9, %lo(gTLUTHedgehog) # addiu $t9, $t9, 0x4908
/* 083D7C 8008317C 25084B08 */  addiu $t0, %lo(gTextureHedgehog) # addiu $t0, $t0, 0x4b08
/* 083D80 80083180 252960B0 */  addiu $t1, %lo(D_0D0060B0) # addiu $t1, $t1, 0x60b0
/* 083D84 80083184 AE190060 */  sw    $t9, 0x60($s0)
/* 083D88 80083188 AE080064 */  sw    $t0, 0x64($s0)
/* 083D8C 8008318C AE090074 */  sw    $t1, 0x74($s0)
/* 083D90 80083190 3C01800F */  lui   $at, %hi(D_800EF1C0) # $at, 0x800f
/* 083D94 80083194 C424F1C0 */  lwc1  $f4, %lo(D_800EF1C0)($at)
/* 083D98 80083198 A20000D2 */  sb    $zero, 0xd2($s0)
/* 083D9C 8008319C 02202025 */  move  $a0, $s1
/* 083DA0 800831A0 0C01C922 */  jal   func_80072488
/* 083DA4 800831A4 E6040000 */   swc1  $f4, ($s0)
/* 083DA8 800831A8 44800000 */  mtc1  $zero, $f0
/* 083DAC 800831AC 02202025 */  move  $a0, $s1
/* 083DB0 800831B0 44050000 */  mfc1  $a1, $f0
/* 083DB4 800831B4 44060000 */  mfc1  $a2, $f0
/* 083DB8 800831B8 44070000 */  mfc1  $a3, $f0
/* 083DBC 800831BC 0C022E03 */  jal   func_8008B80C
/* 083DC0 800831C0 00000000 */   nop   
/* 083DC4 800831C4 02202025 */  move  $a0, $s1
/* 083DC8 800831C8 00002825 */  move  $a1, $zero
/* 083DCC 800831CC 00003025 */  move  $a2, $zero
/* 083DD0 800831D0 0C022E2F */  jal   func_8008B8BC
/* 083DD4 800831D4 34078000 */   li    $a3, 32768
/* 083DD8 800831D8 8FAA002C */  lw    $t2, 0x2c($sp)
/* 083DDC 800831DC 24010006 */  li    $at, 6
/* 083DE0 800831E0 44809000 */  mtc1  $zero, $f18
/* 083DE4 800831E4 0141001A */  div   $zero, $t2, $at
/* 083DE8 800831E8 00005810 */  mfhi  $t3
/* 083DEC 800831EC 448B3000 */  mtc1  $t3, $f6
/* 083DF0 800831F0 3C01800F */  lui   $at, %hi(D_800EF1C8)
/* 083DF4 800831F4 D42AF1C8 */  ldc1  $f10, %lo(D_800EF1C8)($at)
/* 083DF8 800831F8 46803221 */  cvt.d.w $f8, $f6
/* 083DFC 800831FC 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 083E00 80083200 44819800 */  mtc1  $at, $f19
/* 083E04 80083204 02202025 */  move  $a0, $s1
/* 083E08 80083208 462A4402 */  mul.d $f16, $f8, $f10
/* 083E0C 8008320C 46328100 */  add.d $f4, $f16, $f18
/* 083E10 80083210 462021A0 */  cvt.s.d $f6, $f4
/* 083E14 80083214 0C021B9C */  jal   func_80086E70
/* 083E18 80083218 E6060034 */   swc1  $f6, 0x34($s0)
/* 083E1C 8008321C 3C050400 */  lui   $a1, (0x04000600 >> 16) # lui $a1, 0x400
/* 083E20 80083220 34A50600 */  ori   $a1, (0x04000600 & 0xFFFF) # ori $a1, $a1, 0x600
/* 083E24 80083224 0C01C870 */  jal   func_800721C0
/* 083E28 80083228 02202025 */   move  $a0, $s1
/* 083E2C 8008322C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 083E30 80083230 240C0002 */  li    $t4, 2
/* 083E34 80083234 A60C00C8 */  sh    $t4, 0xc8($s0)
/* 083E38 80083238 8FB0001C */  lw    $s0, 0x1c($sp)
/* 083E3C 8008323C 8FB10020 */  lw    $s1, 0x20($sp)
/* 083E40 80083240 03E00008 */  jr    $ra
/* 083E44 80083244 27BD0028 */   addiu $sp, $sp, 0x28
