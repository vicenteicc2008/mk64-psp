.section .late_rodata

glabel D_800F3668
.float 100000.0

.section .text

glabel func_800C473C
/* 0C533C 800C473C 30AE00FF */  andi  $t6, $a1, 0xff
/* 0C5340 800C4740 24080030 */  li    $t0, 48
/* 0C5344 800C4744 01C80019 */  multu $t6, $t0
/* 0C5348 800C4748 308700FF */  andi  $a3, $a0, 0xff
/* 0C534C 800C474C 00077900 */  sll   $t7, $a3, 4
/* 0C5350 800C4750 01E77823 */  subu  $t7, $t7, $a3
/* 0C5354 800C4754 3C188019 */  lui   $t8, %hi(sSoundBanks) # $t8, 0x8019
/* 0C5358 800C4758 27181420 */  addiu $t8, %lo(sSoundBanks) # addiu $t8, $t8, 0x1420
/* 0C535C 800C475C 000F7980 */  sll   $t7, $t7, 6
/* 0C5360 800C4760 01F83021 */  addu  $a2, $t7, $t8
/* 0C5364 800C4764 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0C5368 800C4768 3C09800F */  lui   $t1, %hi(D_800EA1C8) # $t1, 0x800f
/* 0C536C 800C476C 0000C812 */  mflo  $t9
/* 0C5370 800C4770 00D91021 */  addu  $v0, $a2, $t9
/* 0C5374 800C4774 8C4A0000 */  lw    $t2, ($v0)
/* 0C5378 800C4778 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C537C 800C477C AFA50044 */  sw    $a1, 0x44($sp)
/* 0C5380 800C4780 2529A1C8 */  addiu $t1, %lo(D_800EA1C8) # addiu $t1, $t1, -0x5e38
/* 0C5384 800C4784 01C02825 */  move  $a1, $t6
/* 0C5388 800C4788 03A0F025 */  move  $fp, $sp
/* 0C538C 800C478C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C5390 800C4790 112A0005 */  beq   $t1, $t2, .L800C47A8
/* 0C5394 800C4794 AFA40040 */   sw    $a0, 0x40($sp)
/* 0C5398 800C4798 3C01800F */  lui   $at, %hi(D_800F3668) # $at, 0x800f
/* 0C539C 800C479C C4243668 */  lwc1  $f4, %lo(D_800F3668)($at)
/* 0C53A0 800C47A0 8C4B0004 */  lw    $t3, 4($v0)
/* 0C53A4 800C47A4 E5640000 */  swc1  $f4, ($t3)
.L800C47A8:
/* 0C53A8 800C47A8 8C4C0024 */  lw    $t4, 0x24($v0)
/* 0C53AC 800C47AC 000C6B00 */  sll   $t5, $t4, 0xc
/* 0C53B0 800C47B0 05A1000C */  bgez  $t5, .L800C47E4
/* 0C53B4 800C47B4 00000000 */   nop   
/* 0C53B8 800C47B8 9044002C */  lbu   $a0, 0x2c($v0)
/* 0C53BC 800C47BC A3C70043 */  sb    $a3, 0x43($fp)
/* 0C53C0 800C47C0 AFC60034 */  sw    $a2, 0x34($fp)
/* 0C53C4 800C47C4 A3C50047 */  sb    $a1, 0x47($fp)
/* 0C53C8 800C47C8 0C03103C */  jal   func_800C40F0
/* 0C53CC 800C47CC AFC20030 */   sw    $v0, 0x30($fp)
/* 0C53D0 800C47D0 8FC20030 */  lw    $v0, 0x30($fp)
/* 0C53D4 800C47D4 93C50047 */  lbu   $a1, 0x47($fp)
/* 0C53D8 800C47D8 8FC60034 */  lw    $a2, 0x34($fp)
/* 0C53DC 800C47DC 93C70043 */  lbu   $a3, 0x43($fp)
/* 0C53E0 800C47E0 24080030 */  li    $t0, 48
.L800C47E4:
/* 0C53E4 800C47E4 3C0E8019 */  lui   $t6, %hi(sSoundBankUsedListBack) # $t6, 0x8019
/* 0C53E8 800C47E8 25CE2AA0 */  addiu $t6, %lo(sSoundBankUsedListBack) # addiu $t6, $t6, 0x2aa0
/* 0C53EC 800C47EC 00EE1821 */  addu  $v1, $a3, $t6
/* 0C53F0 800C47F0 906F0000 */  lbu   $t7, ($v1)
/* 0C53F4 800C47F4 54AF0005 */  bnel  $a1, $t7, .L800C480C
/* 0C53F8 800C47F8 9049002B */   lbu   $t1, 0x2b($v0)
/* 0C53FC 800C47FC 9058002A */  lbu   $t8, 0x2a($v0)
/* 0C5400 800C4800 10000007 */  b     .L800C4820
/* 0C5404 800C4804 A0780000 */   sb    $t8, ($v1)
/* 0C5408 800C4808 9049002B */  lbu   $t1, 0x2b($v0)
.L800C480C:
/* 0C540C 800C480C 9059002A */  lbu   $t9, 0x2a($v0)
/* 0C5410 800C4810 01280019 */  multu $t1, $t0
/* 0C5414 800C4814 00005012 */  mflo  $t2
/* 0C5418 800C4818 00CA5821 */  addu  $t3, $a2, $t2
/* 0C541C 800C481C A179002A */  sb    $t9, 0x2a($t3)
.L800C4820:
/* 0C5420 800C4820 904D002A */  lbu   $t5, 0x2a($v0)
/* 0C5424 800C4824 904C002B */  lbu   $t4, 0x2b($v0)
/* 0C5428 800C4828 3C188019 */  lui   $t8, %hi(sSoundBankFreeListFront) # $t8, 0x8019
/* 0C542C 800C482C 01A80019 */  multu $t5, $t0
/* 0C5430 800C4830 27182AA8 */  addiu $t8, %lo(sSoundBankFreeListFront) # addiu $t8, $t8, 0x2aa8
/* 0C5434 800C4834 00F81821 */  addu  $v1, $a3, $t8
/* 0C5438 800C4838 240A00FF */  li    $t2, 255
/* 0C543C 800C483C 00007012 */  mflo  $t6
/* 0C5440 800C4840 00CE7821 */  addu  $t7, $a2, $t6
/* 0C5444 800C4844 A1EC002B */  sb    $t4, 0x2b($t7)
/* 0C5448 800C4848 90790000 */  lbu   $t9, ($v1)
/* 0C544C 800C484C 90690000 */  lbu   $t1, ($v1)
/* 0C5450 800C4850 A04A002A */  sb    $t2, 0x2a($v0)
/* 0C5454 800C4854 03280019 */  multu $t9, $t0
/* 0C5458 800C4858 A049002B */  sb    $t1, 0x2b($v0)
/* 0C545C 800C485C 03C0E825 */  move  $sp, $fp
/* 0C5460 800C4860 00005812 */  mflo  $t3
/* 0C5464 800C4864 00CB6821 */  addu  $t5, $a2, $t3
/* 0C5468 800C4868 A1A5002A */  sb    $a1, 0x2a($t5)
/* 0C546C 800C486C A0650000 */  sb    $a1, ($v1)
/* 0C5470 800C4870 A0400028 */  sb    $zero, 0x28($v0)
/* 0C5474 800C4874 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C5478 800C4878 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C547C 800C487C 27BD0040 */  addiu $sp, $sp, 0x40
/* 0C5480 800C4880 03E00008 */  jr    $ra
/* 0C5484 800C4884 00000000 */   nop   
