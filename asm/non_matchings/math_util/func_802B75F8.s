glabel func_802B75F8
/* 120C08 802B75F8 3C014780 */  li    $at, 0x47800000 # 65536.000000
/* 120C0C 802B75FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 120C10 802B7600 00801025 */  move  $v0, $a0
/* 120C14 802B7604 24830020 */  addiu $v1, $a0, 0x20
/* 120C18 802B7608 00A03025 */  move  $a2, $a1
/* 120C1C 802B760C 44810000 */  mtc1  $at, $f0
/* 120C20 802B7610 24050010 */  li    $a1, 16
/* 120C24 802B7614 27A40014 */  addiu $a0, $sp, 0x14
/* 120C28 802B7618 00003825 */  move  $a3, $zero
/* 120C2C 802B761C C4D00000 */  lwc1  $f16, ($a2)
/* 120C30 802B7620 24E70004 */  addiu $a3, $a3, 4
/* 120C34 802B7624 46008482 */  mul.s $f18, $f16, $f0
/* 120C38 802B7628 50E5002F */  beql  $a3, $a1, .L802B76E8
/* 120C3C 802B762C 4600940D */   trunc.w.s $f16, $f18
/* 120C40 802B7630 4600940D */  trunc.w.s $f16, $f18
.L802B7634:
/* 120C44 802B7634 24E70004 */  addiu $a3, $a3, 4
/* 120C48 802B7638 24C60010 */  addiu $a2, $a2, 0x10
/* 120C4C 802B763C 24420008 */  addiu $v0, $v0, 8
/* 120C50 802B7640 440F8000 */  mfc1  $t7, $f16
/* 120C54 802B7644 24630008 */  addiu $v1, $v1, 8
/* 120C58 802B7648 AFAF0014 */  sw    $t7, 0x14($sp)
/* 120C5C 802B764C 84980000 */  lh    $t8, ($a0)
/* 120C60 802B7650 A458FFF8 */  sh    $t8, -8($v0)
/* 120C64 802B7654 84990002 */  lh    $t9, 2($a0)
/* 120C68 802B7658 A479FFF8 */  sh    $t9, -8($v1)
/* 120C6C 802B765C C4D0FFF4 */  lwc1  $f16, -0xc($a2)
/* 120C70 802B7660 46008402 */  mul.s $f16, $f16, $f0
/* 120C74 802B7664 4600840D */  trunc.w.s $f16, $f16
/* 120C78 802B7668 44098000 */  mfc1  $t1, $f16
/* 120C7C 802B766C 00000000 */  nop   
/* 120C80 802B7670 AFA90014 */  sw    $t1, 0x14($sp)
/* 120C84 802B7674 848A0000 */  lh    $t2, ($a0)
/* 120C88 802B7678 A44AFFFA */  sh    $t2, -6($v0)
/* 120C8C 802B767C 848B0002 */  lh    $t3, 2($a0)
/* 120C90 802B7680 A46BFFFA */  sh    $t3, -6($v1)
/* 120C94 802B7684 C4D0FFF8 */  lwc1  $f16, -8($a2)
/* 120C98 802B7688 46008402 */  mul.s $f16, $f16, $f0
/* 120C9C 802B768C 4600840D */  trunc.w.s $f16, $f16
/* 120CA0 802B7690 440D8000 */  mfc1  $t5, $f16
/* 120CA4 802B7694 00000000 */  nop   
/* 120CA8 802B7698 AFAD0014 */  sw    $t5, 0x14($sp)
/* 120CAC 802B769C 848E0000 */  lh    $t6, ($a0)
/* 120CB0 802B76A0 A44EFFFC */  sh    $t6, -4($v0)
/* 120CB4 802B76A4 848F0002 */  lh    $t7, 2($a0)
/* 120CB8 802B76A8 A46FFFFC */  sh    $t7, -4($v1)
/* 120CBC 802B76AC C4D0FFFC */  lwc1  $f16, -4($a2)
/* 120CC0 802B76B0 46008402 */  mul.s $f16, $f16, $f0
/* 120CC4 802B76B4 4600840D */  trunc.w.s $f16, $f16
/* 120CC8 802B76B8 44198000 */  mfc1  $t9, $f16
/* 120CCC 802B76BC 00000000 */  nop   
/* 120CD0 802B76C0 AFB90014 */  sw    $t9, 0x14($sp)
/* 120CD4 802B76C4 84880000 */  lh    $t0, ($a0)
/* 120CD8 802B76C8 A448FFFE */  sh    $t0, -2($v0)
/* 120CDC 802B76CC 84890002 */  lh    $t1, 2($a0)
/* 120CE0 802B76D0 A469FFFE */  sh    $t1, -2($v1)
/* 120CE4 802B76D4 C4D00000 */  lwc1  $f16, ($a2)
/* 120CE8 802B76D8 46008482 */  mul.s $f18, $f16, $f0
/* 120CEC 802B76DC 54E5FFD5 */  bnel  $a3, $a1, .L802B7634
/* 120CF0 802B76E0 4600940D */   trunc.w.s $f16, $f18
/* 120CF4 802B76E4 4600940D */  trunc.w.s $f16, $f18
.L802B76E8:
/* 120CF8 802B76E8 24C60010 */  addiu $a2, $a2, 0x10
/* 120CFC 802B76EC 24420008 */  addiu $v0, $v0, 8
/* 120D00 802B76F0 24630008 */  addiu $v1, $v1, 8
/* 120D04 802B76F4 440F8000 */  mfc1  $t7, $f16
/* 120D08 802B76F8 00000000 */  nop   
/* 120D0C 802B76FC AFAF0014 */  sw    $t7, 0x14($sp)
/* 120D10 802B7700 84980000 */  lh    $t8, ($a0)
/* 120D14 802B7704 A458FFF8 */  sh    $t8, -8($v0)
/* 120D18 802B7708 84990002 */  lh    $t9, 2($a0)
/* 120D1C 802B770C A479FFF8 */  sh    $t9, -8($v1)
/* 120D20 802B7710 C4D0FFF4 */  lwc1  $f16, -0xc($a2)
/* 120D24 802B7714 46008402 */  mul.s $f16, $f16, $f0
/* 120D28 802B7718 4600840D */  trunc.w.s $f16, $f16
/* 120D2C 802B771C 44098000 */  mfc1  $t1, $f16
/* 120D30 802B7720 00000000 */  nop   
/* 120D34 802B7724 AFA90014 */  sw    $t1, 0x14($sp)
/* 120D38 802B7728 848A0000 */  lh    $t2, ($a0)
/* 120D3C 802B772C A44AFFFA */  sh    $t2, -6($v0)
/* 120D40 802B7730 848B0002 */  lh    $t3, 2($a0)
/* 120D44 802B7734 A46BFFFA */  sh    $t3, -6($v1)
/* 120D48 802B7738 C4D0FFF8 */  lwc1  $f16, -8($a2)
/* 120D4C 802B773C 46008402 */  mul.s $f16, $f16, $f0
/* 120D50 802B7740 4600840D */  trunc.w.s $f16, $f16
/* 120D54 802B7744 440D8000 */  mfc1  $t5, $f16
/* 120D58 802B7748 00000000 */  nop   
/* 120D5C 802B774C AFAD0014 */  sw    $t5, 0x14($sp)
/* 120D60 802B7750 848E0000 */  lh    $t6, ($a0)
/* 120D64 802B7754 A44EFFFC */  sh    $t6, -4($v0)
/* 120D68 802B7758 848F0002 */  lh    $t7, 2($a0)
/* 120D6C 802B775C A46FFFFC */  sh    $t7, -4($v1)
/* 120D70 802B7760 C4D0FFFC */  lwc1  $f16, -4($a2)
/* 120D74 802B7764 46008402 */  mul.s $f16, $f16, $f0
/* 120D78 802B7768 4600840D */  trunc.w.s $f16, $f16
/* 120D7C 802B776C 44198000 */  mfc1  $t9, $f16
/* 120D80 802B7770 00000000 */  nop   
/* 120D84 802B7774 AFB90014 */  sw    $t9, 0x14($sp)
/* 120D88 802B7778 84880000 */  lh    $t0, ($a0)
/* 120D8C 802B777C A448FFFE */  sh    $t0, -2($v0)
/* 120D90 802B7780 84890002 */  lh    $t1, 2($a0)
/* 120D94 802B7784 A469FFFE */  sh    $t1, -2($v1)
/* 120D98 802B7788 03E00008 */  jr    $ra
/* 120D9C 802B778C 27BD0018 */   addiu $sp, $sp, 0x18
