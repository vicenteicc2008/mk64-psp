glabel func_800B9AD8
/* 0BA6D8 800B9AD8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0BA6DC 800B9ADC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BA6E0 800B9AE0 AFA50024 */  sw    $a1, 0x24($sp)
/* 0BA6E4 800B9AE4 10800009 */  beqz  $a0, .L800B9B0C
/* 0BA6E8 800B9AE8 00803825 */   move  $a3, $a0
/* 0BA6EC 800B9AEC 24010001 */  li    $at, 1
/* 0BA6F0 800B9AF0 10810009 */  beq   $a0, $at, .L800B9B18
/* 0BA6F4 800B9AF4 3C05803B */   lui   $a1, %hi(D_803AFE18) # 0x803b
/* 0BA6F8 800B9AF8 24010002 */  li    $at, 2
/* 0BA6FC 800B9AFC 10810008 */  beq   $a0, $at, .L800B9B20
/* 0BA700 800B9B00 3C05803B */   lui   $a1, %hi(D_803AFFE8) # 0x803b
/* 0BA704 800B9B04 10000007 */  b     .L800B9B24
/* 0BA708 800B9B08 8FA50018 */   lw    $a1, 0x18($sp)
.L800B9B0C:
/* 0BA70C 800B9B0C 3C05803B */  lui   $a1, %hi(D_803AFC48) # $a1, 0x803b
/* 0BA710 800B9B10 10000004 */  b     .L800B9B24
/* 0BA714 800B9B14 24A5FC48 */   addiu $a1, %lo(D_803AFC48) # addiu $a1, $a1, -0x3b8
.L800B9B18:
/* 0BA718 800B9B18 10000002 */  b     .L800B9B24
/* 0BA71C 800B9B1C 24A5FE18 */   addiu $a1, $a1, %lo(D_803AFE18) # -0x1e8
.L800B9B20:
/* 0BA720 800B9B20 24A5FFE8 */  addiu $a1, $a1, %lo(D_803AFFE8) # -0x18
.L800B9B24:
/* 0BA724 800B9B24 8FAE0024 */  lw    $t6, 0x24($sp)
/* 0BA728 800B9B28 24A30194 */  addiu $v1, $a1, 0x194
/* 0BA72C 800B9B2C 55C00011 */  bnel  $t6, $zero, .L800B9B74
/* 0BA730 800B9B30 8CA80000 */   lw    $t0, ($a1)
/* 0BA734 800B9B34 846F001E */  lh    $t7, 0x1e($v1)
/* 0BA738 800B9B38 24180001 */  li    $t8, 1
/* 0BA73C 800B9B3C 54CF0005 */  bnel  $a2, $t7, .L800B9B54
/* 0BA740 800B9B40 8479002A */   lh    $t9, 0x2a($v1)
/* 0BA744 800B9B44 AC780000 */  sw    $t8, ($v1)
/* 0BA748 800B9B48 10000022 */  b     .L800B9BD4
/* 0BA74C 800B9B4C 8C620014 */   lw    $v0, 0x14($v1)
/* 0BA750 800B9B50 8479002A */  lh    $t9, 0x2a($v1)
.L800B9B54:
/* 0BA754 800B9B54 14D90004 */  bne   $a2, $t9, .L800B9B68
/* 0BA758 800B9B58 00000000 */   nop   
/* 0BA75C 800B9B5C AC600000 */  sw    $zero, ($v1)
/* 0BA760 800B9B60 1000001C */  b     .L800B9BD4
/* 0BA764 800B9B64 8C620020 */   lw    $v0, 0x20($v1)
.L800B9B68:
/* 0BA768 800B9B68 1000001A */  b     .L800B9BD4
/* 0BA76C 800B9B6C 00001025 */   move  $v0, $zero
/* 0BA770 800B9B70 8CA80000 */  lw    $t0, ($a1)
.L800B9B74:
/* 0BA774 800B9B74 00A02025 */  move  $a0, $a1
/* 0BA778 800B9B78 00001025 */  move  $v0, $zero
/* 0BA77C 800B9B7C 1100000C */  beqz  $t0, .L800B9BB0
/* 0BA780 800B9B80 00A01825 */   move  $v1, $a1
/* 0BA784 800B9B84 8469001E */  lh    $t1, 0x1e($v1)
.L800B9B88:
/* 0BA788 800B9B88 54C90004 */  bnel  $a2, $t1, .L800B9B9C
/* 0BA78C 800B9B8C 8C8A0000 */   lw    $t2, ($a0)
/* 0BA790 800B9B90 10000010 */  b     .L800B9BD4
/* 0BA794 800B9B94 8C620014 */   lw    $v0, 0x14($v1)
/* 0BA798 800B9B98 8C8A0000 */  lw    $t2, ($a0)
.L800B9B9C:
/* 0BA79C 800B9B9C 24420001 */  addiu $v0, $v0, 1
/* 0BA7A0 800B9BA0 2463000C */  addiu $v1, $v1, 0xc
/* 0BA7A4 800B9BA4 004A082B */  sltu  $at, $v0, $t2
/* 0BA7A8 800B9BA8 5420FFF7 */  bnel  $at, $zero, .L800B9B88
/* 0BA7AC 800B9BAC 8469001E */   lh    $t1, 0x1e($v1)
.L800B9BB0:
/* 0BA7B0 800B9BB0 8FAB0024 */  lw    $t3, 0x24($sp)
/* 0BA7B4 800B9BB4 24010002 */  li    $at, 2
/* 0BA7B8 800B9BB8 00E02025 */  move  $a0, $a3
/* 0BA7BC 800B9BBC 15610005 */  bne   $t3, $at, .L800B9BD4
/* 0BA7C0 800B9BC0 00001025 */   move  $v0, $zero
/* 0BA7C4 800B9BC4 0C02E6A4 */  jal   func_800B9A90
/* 0BA7C8 800B9BC8 00002825 */   move  $a1, $zero
/* 0BA7CC 800B9BCC 10000002 */  b     .L800B9BD8
/* 0BA7D0 800B9BD0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B9BD4:
/* 0BA7D4 800B9BD4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B9BD8:
/* 0BA7D8 800B9BD8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0BA7DC 800B9BDC 03E00008 */  jr    $ra
/* 0BA7E0 800B9BE0 00000000 */   nop   

/* 0BA7E4 800B9BE4 3C01800F */  lui   $at, %hi(D_800F2E80) # $at, 0x800f
/* 0BA7E8 800B9BE8 C4202E80 */  lwc1  $f0, %lo(D_800F2E80)($at)
/* 0BA7EC 800B9BEC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0BA7F0 800B9BF0 27A40014 */  addiu $a0, $sp, 0x14
/* 0BA7F4 800B9BF4 46007102 */  mul.s $f4, $f14, $f0
/* 0BA7F8 800B9BF8 27A2002C */  addiu $v0, $sp, 0x2c
/* 0BA7FC 800B9BFC 24C30004 */  addiu $v1, $a2, 4
/* 0BA800 800B9C00 46006182 */  mul.s $f6, $f12, $f0
/* 0BA804 800B9C04 00000000 */  nop   
/* 0BA808 800B9C08 460C7202 */  mul.s $f8, $f14, $f12
/* 0BA80C 800B9C0C E7A4000C */  swc1  $f4, 0xc($sp)
/* 0BA810 800B9C10 E7A6002C */  swc1  $f6, 0x2c($sp)
/* 0BA814 800B9C14 46004282 */  mul.s $f10, $f8, $f0
/* 0BA818 800B9C18 00000000 */  nop   
/* 0BA81C 800B9C1C 460C6402 */  mul.s $f16, $f12, $f12
/* 0BA820 800B9C20 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 0BA824 800B9C24 460E8480 */  add.s $f18, $f16, $f14
/* 0BA828 800B9C28 46009102 */  mul.s $f4, $f18, $f0
/* 0BA82C 800B9C2C E7A40030 */  swc1  $f4, 0x30($sp)
.L800B9C30:
/* 0BA830 800B9C30 C486FFFC */  lwc1  $f6, -4($a0)
/* 0BA834 800B9C34 C48AFFF8 */  lwc1  $f10, -8($a0)
/* 0BA838 800B9C38 240F0001 */  li    $t7, 1
/* 0BA83C 800B9C3C 460C3202 */  mul.s $f8, $f6, $f12
/* 0BA840 800B9C40 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0BA844 800B9C44 460A7402 */  mul.s $f16, $f14, $f10
/* 0BA848 800B9C48 46104480 */  add.s $f18, $f8, $f16
/* 0BA84C 800B9C4C 444EF800 */  cfc1  $t6, $31
/* 0BA850 800B9C50 44CFF800 */  ctc1  $t7, $31
/* 0BA854 800B9C54 00000000 */  nop   
/* 0BA858 800B9C58 46009124 */  cvt.w.s $f4, $f18
/* 0BA85C 800B9C5C 444FF800 */  cfc1  $t7, $31
/* 0BA860 800B9C60 00000000 */  nop   
/* 0BA864 800B9C64 31EF0078 */  andi  $t7, $t7, 0x78
/* 0BA868 800B9C68 51E00013 */  beql  $t7, $zero, .L800B9CB8
/* 0BA86C 800B9C6C 440F2000 */   mfc1  $t7, $f4
/* 0BA870 800B9C70 44812000 */  mtc1  $at, $f4
/* 0BA874 800B9C74 240F0001 */  li    $t7, 1
/* 0BA878 800B9C78 46049101 */  sub.s $f4, $f18, $f4
/* 0BA87C 800B9C7C 44CFF800 */  ctc1  $t7, $31
/* 0BA880 800B9C80 00000000 */  nop   
/* 0BA884 800B9C84 46002124 */  cvt.w.s $f4, $f4
/* 0BA888 800B9C88 444FF800 */  cfc1  $t7, $31
/* 0BA88C 800B9C8C 00000000 */  nop   
/* 0BA890 800B9C90 31EF0078 */  andi  $t7, $t7, 0x78
/* 0BA894 800B9C94 15E00005 */  bnez  $t7, .L800B9CAC
/* 0BA898 800B9C98 00000000 */   nop   
/* 0BA89C 800B9C9C 440F2000 */  mfc1  $t7, $f4
/* 0BA8A0 800B9CA0 3C018000 */  lui   $at, 0x8000
/* 0BA8A4 800B9CA4 10000007 */  b     .L800B9CC4
/* 0BA8A8 800B9CA8 01E17825 */   or    $t7, $t7, $at
.L800B9CAC:
/* 0BA8AC 800B9CAC 10000005 */  b     .L800B9CC4
/* 0BA8B0 800B9CB0 240FFFFF */   li    $t7, -1
/* 0BA8B4 800B9CB4 440F2000 */  mfc1  $t7, $f4
.L800B9CB8:
/* 0BA8B8 800B9CB8 00000000 */  nop   
/* 0BA8BC 800B9CBC 05E0FFFB */  bltz  $t7, .L800B9CAC
/* 0BA8C0 800B9CC0 00000000 */   nop   
.L800B9CC4:
/* 0BA8C4 800B9CC4 A46F0000 */  sh    $t7, ($v1)
/* 0BA8C8 800B9CC8 44CEF800 */  ctc1  $t6, $31
/* 0BA8CC 800B9CCC C486001C */  lwc1  $f6, 0x1c($a0)
/* 0BA8D0 800B9CD0 C4880018 */  lwc1  $f8, 0x18($a0)
/* 0BA8D4 800B9CD4 24190001 */  li    $t9, 1
/* 0BA8D8 800B9CD8 460C3282 */  mul.s $f10, $f6, $f12
/* 0BA8DC 800B9CDC 24840004 */  addiu $a0, $a0, 4
/* 0BA8E0 800B9CE0 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0BA8E4 800B9CE4 46087402 */  mul.s $f16, $f14, $f8
/* 0BA8E8 800B9CE8 46105480 */  add.s $f18, $f10, $f16
/* 0BA8EC 800B9CEC 4458F800 */  cfc1  $t8, $31
/* 0BA8F0 800B9CF0 44D9F800 */  ctc1  $t9, $31
/* 0BA8F4 800B9CF4 00000000 */  nop   
/* 0BA8F8 800B9CF8 46009124 */  cvt.w.s $f4, $f18
/* 0BA8FC 800B9CFC 4459F800 */  cfc1  $t9, $31
/* 0BA900 800B9D00 00000000 */  nop   
/* 0BA904 800B9D04 33390078 */  andi  $t9, $t9, 0x78
/* 0BA908 800B9D08 53200013 */  beql  $t9, $zero, .L800B9D58
/* 0BA90C 800B9D0C 44192000 */   mfc1  $t9, $f4
/* 0BA910 800B9D10 44812000 */  mtc1  $at, $f4
/* 0BA914 800B9D14 24190001 */  li    $t9, 1
/* 0BA918 800B9D18 46049101 */  sub.s $f4, $f18, $f4
/* 0BA91C 800B9D1C 44D9F800 */  ctc1  $t9, $31
/* 0BA920 800B9D20 00000000 */  nop   
/* 0BA924 800B9D24 46002124 */  cvt.w.s $f4, $f4
/* 0BA928 800B9D28 4459F800 */  cfc1  $t9, $31
/* 0BA92C 800B9D2C 00000000 */  nop   
/* 0BA930 800B9D30 33390078 */  andi  $t9, $t9, 0x78
/* 0BA934 800B9D34 17200005 */  bnez  $t9, .L800B9D4C
/* 0BA938 800B9D38 00000000 */   nop   
/* 0BA93C 800B9D3C 44192000 */  mfc1  $t9, $f4
/* 0BA940 800B9D40 3C018000 */  lui   $at, 0x8000
/* 0BA944 800B9D44 10000007 */  b     .L800B9D64
/* 0BA948 800B9D48 0321C825 */   or    $t9, $t9, $at
.L800B9D4C:
/* 0BA94C 800B9D4C 10000005 */  b     .L800B9D64
/* 0BA950 800B9D50 2419FFFF */   li    $t9, -1
/* 0BA954 800B9D54 44192000 */  mfc1  $t9, $f4
.L800B9D58:
/* 0BA958 800B9D58 00000000 */  nop   
/* 0BA95C 800B9D5C 0720FFFB */  bltz  $t9, .L800B9D4C
/* 0BA960 800B9D60 00000000 */   nop   
.L800B9D64:
/* 0BA964 800B9D64 0082082B */  sltu  $at, $a0, $v0
/* 0BA968 800B9D68 44D8F800 */  ctc1  $t8, $31
/* 0BA96C 800B9D6C 24630002 */  addiu $v1, $v1, 2
/* 0BA970 800B9D70 1420FFAF */  bnez  $at, .L800B9C30
/* 0BA974 800B9D74 A479000E */   sh    $t9, 0xe($v1)
/* 0BA978 800B9D78 00C01825 */  move  $v1, $a2
/* 0BA97C 800B9D7C 27A4000C */  addiu $a0, $sp, 0xc
/* 0BA980 800B9D80 27A2004C */  addiu $v0, $sp, 0x4c
.L800B9D84:
/* 0BA984 800B9D84 4448F800 */  cfc1  $t0, $31
/* 0BA988 800B9D88 24090001 */  li    $t1, 1
/* 0BA98C 800B9D8C 44C9F800 */  ctc1  $t1, $31
/* 0BA990 800B9D90 C4860000 */  lwc1  $f6, ($a0)
/* 0BA994 800B9D94 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0BA998 800B9D98 46003224 */  cvt.w.s $f8, $f6
/* 0BA99C 800B9D9C 4449F800 */  cfc1  $t1, $31
/* 0BA9A0 800B9DA0 00000000 */  nop   
/* 0BA9A4 800B9DA4 31290078 */  andi  $t1, $t1, 0x78
/* 0BA9A8 800B9DA8 51200013 */  beql  $t1, $zero, .L800B9DF8
/* 0BA9AC 800B9DAC 44094000 */   mfc1  $t1, $f8
/* 0BA9B0 800B9DB0 44814000 */  mtc1  $at, $f8
/* 0BA9B4 800B9DB4 24090001 */  li    $t1, 1
/* 0BA9B8 800B9DB8 46083201 */  sub.s $f8, $f6, $f8
/* 0BA9BC 800B9DBC 44C9F800 */  ctc1  $t1, $31
/* 0BA9C0 800B9DC0 00000000 */  nop   
/* 0BA9C4 800B9DC4 46004224 */  cvt.w.s $f8, $f8
/* 0BA9C8 800B9DC8 4449F800 */  cfc1  $t1, $31
/* 0BA9CC 800B9DCC 00000000 */  nop   
/* 0BA9D0 800B9DD0 31290078 */  andi  $t1, $t1, 0x78
/* 0BA9D4 800B9DD4 15200005 */  bnez  $t1, .L800B9DEC
/* 0BA9D8 800B9DD8 00000000 */   nop   
/* 0BA9DC 800B9DDC 44094000 */  mfc1  $t1, $f8
/* 0BA9E0 800B9DE0 3C018000 */  lui   $at, 0x8000
/* 0BA9E4 800B9DE4 10000007 */  b     .L800B9E04
/* 0BA9E8 800B9DE8 01214825 */   or    $t1, $t1, $at
.L800B9DEC:
/* 0BA9EC 800B9DEC 10000005 */  b     .L800B9E04
/* 0BA9F0 800B9DF0 2409FFFF */   li    $t1, -1
/* 0BA9F4 800B9DF4 44094000 */  mfc1  $t1, $f8
.L800B9DF8:
/* 0BA9F8 800B9DF8 00000000 */  nop   
/* 0BA9FC 800B9DFC 0520FFFB */  bltz  $t1, .L800B9DEC
/* 0BAA00 800B9E00 00000000 */   nop   
.L800B9E04:
/* 0BAA04 800B9E04 44C8F800 */  ctc1  $t0, $31
/* 0BAA08 800B9E08 240B0001 */  li    $t3, 1
/* 0BAA0C 800B9E0C A4690000 */  sh    $t1, ($v1)
/* 0BAA10 800B9E10 C48A0004 */  lwc1  $f10, 4($a0)
/* 0BAA14 800B9E14 444AF800 */  cfc1  $t2, $31
/* 0BAA18 800B9E18 44CBF800 */  ctc1  $t3, $31
/* 0BAA1C 800B9E1C 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0BAA20 800B9E20 46005424 */  cvt.w.s $f16, $f10
/* 0BAA24 800B9E24 444BF800 */  cfc1  $t3, $31
/* 0BAA28 800B9E28 00000000 */  nop   
/* 0BAA2C 800B9E2C 316B0078 */  andi  $t3, $t3, 0x78
/* 0BAA30 800B9E30 51600013 */  beql  $t3, $zero, .L800B9E80
/* 0BAA34 800B9E34 440B8000 */   mfc1  $t3, $f16
/* 0BAA38 800B9E38 44818000 */  mtc1  $at, $f16
/* 0BAA3C 800B9E3C 240B0001 */  li    $t3, 1
/* 0BAA40 800B9E40 46105401 */  sub.s $f16, $f10, $f16
/* 0BAA44 800B9E44 44CBF800 */  ctc1  $t3, $31
/* 0BAA48 800B9E48 00000000 */  nop   
/* 0BAA4C 800B9E4C 46008424 */  cvt.w.s $f16, $f16
/* 0BAA50 800B9E50 444BF800 */  cfc1  $t3, $31
/* 0BAA54 800B9E54 00000000 */  nop   
/* 0BAA58 800B9E58 316B0078 */  andi  $t3, $t3, 0x78
/* 0BAA5C 800B9E5C 15600005 */  bnez  $t3, .L800B9E74
/* 0BAA60 800B9E60 00000000 */   nop   
/* 0BAA64 800B9E64 440B8000 */  mfc1  $t3, $f16
/* 0BAA68 800B9E68 3C018000 */  lui   $at, 0x8000
/* 0BAA6C 800B9E6C 10000007 */  b     .L800B9E8C
/* 0BAA70 800B9E70 01615825 */   or    $t3, $t3, $at
.L800B9E74:
/* 0BAA74 800B9E74 10000005 */  b     .L800B9E8C
/* 0BAA78 800B9E78 240BFFFF */   li    $t3, -1
/* 0BAA7C 800B9E7C 440B8000 */  mfc1  $t3, $f16
.L800B9E80:
/* 0BAA80 800B9E80 00000000 */  nop   
/* 0BAA84 800B9E84 0560FFFB */  bltz  $t3, .L800B9E74
/* 0BAA88 800B9E88 00000000 */   nop   
.L800B9E8C:
/* 0BAA8C 800B9E8C 44CAF800 */  ctc1  $t2, $31
/* 0BAA90 800B9E90 A46B0002 */  sh    $t3, 2($v1)
/* 0BAA94 800B9E94 240D0001 */  li    $t5, 1
/* 0BAA98 800B9E98 C4920008 */  lwc1  $f18, 8($a0)
/* 0BAA9C 800B9E9C 444CF800 */  cfc1  $t4, $31
/* 0BAAA0 800B9EA0 44CDF800 */  ctc1  $t5, $31
/* 0BAAA4 800B9EA4 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0BAAA8 800B9EA8 46009124 */  cvt.w.s $f4, $f18
/* 0BAAAC 800B9EAC 444DF800 */  cfc1  $t5, $31
/* 0BAAB0 800B9EB0 00000000 */  nop   
/* 0BAAB4 800B9EB4 31AD0078 */  andi  $t5, $t5, 0x78
/* 0BAAB8 800B9EB8 51A00013 */  beql  $t5, $zero, .L800B9F08
/* 0BAABC 800B9EBC 440D2000 */   mfc1  $t5, $f4
/* 0BAAC0 800B9EC0 44812000 */  mtc1  $at, $f4
/* 0BAAC4 800B9EC4 240D0001 */  li    $t5, 1
/* 0BAAC8 800B9EC8 46049101 */  sub.s $f4, $f18, $f4
/* 0BAACC 800B9ECC 44CDF800 */  ctc1  $t5, $31
/* 0BAAD0 800B9ED0 00000000 */  nop   
/* 0BAAD4 800B9ED4 46002124 */  cvt.w.s $f4, $f4
/* 0BAAD8 800B9ED8 444DF800 */  cfc1  $t5, $31
/* 0BAADC 800B9EDC 00000000 */  nop   
/* 0BAAE0 800B9EE0 31AD0078 */  andi  $t5, $t5, 0x78
/* 0BAAE4 800B9EE4 15A00005 */  bnez  $t5, .L800B9EFC
/* 0BAAE8 800B9EE8 00000000 */   nop   
/* 0BAAEC 800B9EEC 440D2000 */  mfc1  $t5, $f4
/* 0BAAF0 800B9EF0 3C018000 */  lui   $at, 0x8000
/* 0BAAF4 800B9EF4 10000007 */  b     .L800B9F14
/* 0BAAF8 800B9EF8 01A16825 */   or    $t5, $t5, $at
.L800B9EFC:
/* 0BAAFC 800B9EFC 10000005 */  b     .L800B9F14
/* 0BAB00 800B9F00 240DFFFF */   li    $t5, -1
/* 0BAB04 800B9F04 440D2000 */  mfc1  $t5, $f4
.L800B9F08:
/* 0BAB08 800B9F08 00000000 */  nop   
/* 0BAB0C 800B9F0C 05A0FFFB */  bltz  $t5, .L800B9EFC
/* 0BAB10 800B9F10 00000000 */   nop   
.L800B9F14:
/* 0BAB14 800B9F14 44CCF800 */  ctc1  $t4, $31
/* 0BAB18 800B9F18 A46D0004 */  sh    $t5, 4($v1)
/* 0BAB1C 800B9F1C 240F0001 */  li    $t7, 1
/* 0BAB20 800B9F20 C486000C */  lwc1  $f6, 0xc($a0)
/* 0BAB24 800B9F24 444EF800 */  cfc1  $t6, $31
/* 0BAB28 800B9F28 44CFF800 */  ctc1  $t7, $31
/* 0BAB2C 800B9F2C 24840010 */  addiu $a0, $a0, 0x10
/* 0BAB30 800B9F30 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 0BAB34 800B9F34 46003224 */  cvt.w.s $f8, $f6
/* 0BAB38 800B9F38 444FF800 */  cfc1  $t7, $31
/* 0BAB3C 800B9F3C 00000000 */  nop   
/* 0BAB40 800B9F40 31EF0078 */  andi  $t7, $t7, 0x78
/* 0BAB44 800B9F44 51E00013 */  beql  $t7, $zero, .L800B9F94
/* 0BAB48 800B9F48 440F4000 */   mfc1  $t7, $f8
/* 0BAB4C 800B9F4C 44814000 */  mtc1  $at, $f8
/* 0BAB50 800B9F50 240F0001 */  li    $t7, 1
/* 0BAB54 800B9F54 46083201 */  sub.s $f8, $f6, $f8
/* 0BAB58 800B9F58 44CFF800 */  ctc1  $t7, $31
/* 0BAB5C 800B9F5C 00000000 */  nop   
/* 0BAB60 800B9F60 46004224 */  cvt.w.s $f8, $f8
/* 0BAB64 800B9F64 444FF800 */  cfc1  $t7, $31
/* 0BAB68 800B9F68 00000000 */  nop   
/* 0BAB6C 800B9F6C 31EF0078 */  andi  $t7, $t7, 0x78
/* 0BAB70 800B9F70 15E00005 */  bnez  $t7, .L800B9F88
/* 0BAB74 800B9F74 00000000 */   nop   
/* 0BAB78 800B9F78 440F4000 */  mfc1  $t7, $f8
/* 0BAB7C 800B9F7C 3C018000 */  lui   $at, 0x8000
/* 0BAB80 800B9F80 10000007 */  b     .L800B9FA0
/* 0BAB84 800B9F84 01E17825 */   or    $t7, $t7, $at
.L800B9F88:
/* 0BAB88 800B9F88 10000005 */  b     .L800B9FA0
/* 0BAB8C 800B9F8C 240FFFFF */   li    $t7, -1
/* 0BAB90 800B9F90 440F4000 */  mfc1  $t7, $f8
.L800B9F94:
/* 0BAB94 800B9F94 00000000 */  nop   
/* 0BAB98 800B9F98 05E0FFFB */  bltz  $t7, .L800B9F88
/* 0BAB9C 800B9F9C 00000000 */   nop   
.L800B9FA0:
/* 0BABA0 800B9FA0 44CEF800 */  ctc1  $t6, $31
/* 0BABA4 800B9FA4 A46F0006 */  sh    $t7, 6($v1)
/* 0BABA8 800B9FA8 1482FF76 */  bne   $a0, $v0, .L800B9D84
/* 0BABAC 800B9FAC 24630008 */   addiu $v1, $v1, 8
/* 0BABB0 800B9FB0 03E00008 */  jr    $ra
/* 0BABB4 800B9FB4 27BD0050 */   addiu $sp, $sp, 0x50
