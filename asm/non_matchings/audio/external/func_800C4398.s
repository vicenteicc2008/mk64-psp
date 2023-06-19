.section .late_rodata

glabel D_800F3664
.float 100000.0

.section .text

glabel func_800C4398
/* 0C4F98 800C4398 3C0E800F */  lui   $t6, %hi(sNumProcessedSoundRequests) # $t6, 0x800f
/* 0C4F9C 800C439C 91CEA1BC */  lbu   $t6, %lo(sNumProcessedSoundRequests)($t6)
/* 0C4FA0 800C43A0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0C4FA4 800C43A4 3C188019 */  lui   $t8, %hi(sSoundRequests) # $t8, 0x8019
/* 0C4FA8 800C43A8 000E7880 */  sll   $t7, $t6, 2
/* 0C4FAC 800C43AC 01EE7823 */  subu  $t7, $t7, $t6
/* 0C4FB0 800C43B0 000F78C0 */  sll   $t7, $t7, 3
/* 0C4FB4 800C43B4 2718FC20 */  addiu $t8, %lo(sSoundRequests) # addiu $t8, $t8, -0x3e0
/* 0C4FB8 800C43B8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C4FBC 800C43BC AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C4FC0 800C43C0 AFB00024 */  sw    $s0, 0x24($sp)
/* 0C4FC4 800C43C4 01F83021 */  addu  $a2, $t7, $t8
/* 0C4FC8 800C43C8 8CC50000 */  lw    $a1, ($a2)
/* 0C4FCC 800C43CC 03A0F025 */  move  $fp, $sp
/* 0C4FD0 800C43D0 241F00FF */  li    $ra, 255
/* 0C4FD4 800C43D4 10A000D3 */  beqz  $a1, .L800C4724
/* 0C4FD8 800C43D8 3C01F000 */   lui   $at, 0xf000
/* 0C4FDC 800C43DC 00A16824 */  and   $t5, $a1, $at
/* 0C4FE0 800C43E0 000DCF02 */  srl   $t9, $t5, 0x1c
/* 0C4FE4 800C43E4 332E00FF */  andi  $t6, $t9, 0xff
/* 0C4FE8 800C43E8 000E7900 */  sll   $t7, $t6, 4
/* 0C4FEC 800C43EC 01EE7823 */  subu  $t7, $t7, $t6
/* 0C4FF0 800C43F0 3C188019 */  lui   $t8, %hi(sSoundBanks) # $t8, 0x8019
/* 0C4FF4 800C43F4 27181420 */  addiu $t8, %lo(sSoundBanks) # addiu $t8, $t8, 0x1420
/* 0C4FF8 800C43F8 000F7980 */  sll   $t7, $t7, 6
/* 0C4FFC 800C43FC 01F8C821 */  addu  $t9, $t7, $t8
/* 0C5000 800C4400 9323002B */  lbu   $v1, 0x2b($t9)
/* 0C5004 800C4404 01C06825 */  move  $t5, $t6
/* 0C5008 800C4408 00003825 */  move  $a3, $zero
/* 0C500C 800C440C 13E30078 */  beq   $ra, $v1, .L800C45F0
/* 0C5010 800C4410 00601025 */   move  $v0, $v1
/* 0C5014 800C4414 10600076 */  beqz  $v1, .L800C45F0
/* 0C5018 800C4418 000E7100 */   sll   $t6, $t6, 4
/* 0C501C 800C441C 01CD7023 */  subu  $t6, $t6, $t5
/* 0C5020 800C4420 000E7180 */  sll   $t6, $t6, 6
/* 0C5024 800C4424 01D84821 */  addu  $t1, $t6, $t8
/* 0C5028 800C4428 240C0030 */  li    $t4, 48
/* 0C502C 800C442C 8FAB003C */  lw    $t3, 0x3c($sp)
/* 0C5030 800C4430 93AA0043 */  lbu   $t2, 0x43($sp)
.L800C4434:
/* 0C5034 800C4434 006C0019 */  multu $v1, $t4
/* 0C5038 800C4438 8CD90004 */  lw    $t9, 4($a2)
/* 0C503C 800C443C 3C18800F */  lui   $t8, %hi(D_800EA1C0) # $t8, 0x800f
/* 0C5040 800C4440 3C04800F */  lui   $a0, %hi(D_800EA1A0)
/* 0C5044 800C4444 00007812 */  mflo  $t7
/* 0C5048 800C4448 012F8021 */  addu  $s0, $t1, $t7
/* 0C504C 800C444C 8E0E0000 */  lw    $t6, ($s0)
/* 0C5050 800C4450 172E005A */  bne   $t9, $t6, .L800C45BC
/* 0C5054 800C4454 00000000 */   nop   
/* 0C5058 800C4458 9318A1C0 */  lbu   $t8, %lo(D_800EA1C0)($t8)
/* 0C505C 800C445C 8CC50000 */  lw    $a1, ($a2)
/* 0C5060 800C4460 8E020024 */  lw    $v0, 0x24($s0)
/* 0C5064 800C4464 00187880 */  sll   $t7, $t8, 2
/* 0C5068 800C4468 01F87823 */  subu  $t7, $t7, $t8
/* 0C506C 800C446C 000F7840 */  sll   $t7, $t7, 1
/* 0C5070 800C4470 01EDC821 */  addu  $t9, $t7, $t5
/* 0C5074 800C4474 00992021 */  addu  $a0, $a0, $t9
/* 0C5078 800C4478 9084A1A0 */  lbu   $a0, %lo(D_800EA1A0)($a0)
/* 0C507C 800C447C 14A20004 */  bne   $a1, $v0, .L800C4490
/* 0C5080 800C4480 00804025 */   move  $t0, $a0
/* 0C5084 800C4484 308700FF */  andi  $a3, $a0, 0xff
/* 0C5088 800C4488 10000017 */  b     .L800C44E8
/* 0C508C 800C448C 00E01025 */   move  $v0, $a3
.L800C4490:
/* 0C5090 800C4490 14E00004 */  bnez  $a3, .L800C44A4
/* 0C5094 800C4494 304EFF00 */   andi  $t6, $v0, 0xff00
/* 0C5098 800C4498 306A00FF */  andi  $t2, $v1, 0xff
/* 0C509C 800C449C 10000007 */  b     .L800C44BC
/* 0C50A0 800C44A0 00405825 */   move  $t3, $v0
.L800C44A4:
/* 0C50A4 800C44A4 3178FF00 */  andi  $t8, $t3, 0xff00
/* 0C50A8 800C44A8 01D8082B */  sltu  $at, $t6, $t8
/* 0C50AC 800C44AC 50200004 */  beql  $at, $zero, .L800C44C0
/* 0C50B0 800C44B0 24E70001 */   addiu $a3, $a3, 1
/* 0C50B4 800C44B4 306A00FF */  andi  $t2, $v1, 0xff
/* 0C50B8 800C44B8 00405825 */  move  $t3, $v0
.L800C44BC:
/* 0C50BC 800C44BC 24E70001 */  addiu $a3, $a3, 1
.L800C44C0:
/* 0C50C0 800C44C0 30E200FF */  andi  $v0, $a3, 0xff
/* 0C50C4 800C44C4 14480008 */  bne   $v0, $t0, .L800C44E8
/* 0C50C8 800C44C8 00403825 */   move  $a3, $v0
/* 0C50CC 800C44CC 30B9FF00 */  andi  $t9, $a1, 0xff00
/* 0C50D0 800C44D0 316EFF00 */  andi  $t6, $t3, 0xff00
/* 0C50D4 800C44D4 032E082B */  sltu  $at, $t9, $t6
/* 0C50D8 800C44D8 14200003 */  bnez  $at, .L800C44E8
/* 0C50DC 800C44DC 00001825 */   move  $v1, $zero
/* 0C50E0 800C44E0 10000001 */  b     .L800C44E8
/* 0C50E4 800C44E4 314300FF */   andi  $v1, $t2, 0xff
.L800C44E8:
/* 0C50E8 800C44E8 14480034 */  bne   $v0, $t0, .L800C45BC
/* 0C50EC 800C44EC 0005C100 */   sll   $t8, $a1, 4
/* 0C50F0 800C44F0 07000005 */  bltz  $t8, .L800C4508
/* 0C50F4 800C44F4 00057B40 */   sll   $t7, $a1, 0xd
/* 0C50F8 800C44F8 05E00003 */  bltz  $t7, .L800C4508
/* 0C50FC 800C44FC 00000000 */   nop   
/* 0C5100 800C4500 5543002E */  bnel  $t2, $v1, .L800C45BC
/* 0C5104 800C4504 00001825 */   move  $v1, $zero
.L800C4508:
/* 0C5108 800C4508 006C0019 */  multu $v1, $t4
/* 0C510C 800C450C 0000C812 */  mflo  $t9
/* 0C5110 800C4510 01398021 */  addu  $s0, $t1, $t9
/* 0C5114 800C4514 8E0E0024 */  lw    $t6, 0x24($s0)
/* 0C5118 800C4518 000EC300 */  sll   $t8, $t6, 0xc
/* 0C511C 800C451C 07030016 */  bgezl $t8, .L800C4578
/* 0C5120 800C4520 90D90008 */   lbu   $t9, 8($a2)
/* 0C5124 800C4524 920F0028 */  lbu   $t7, 0x28($s0)
/* 0C5128 800C4528 24010001 */  li    $at, 1
/* 0C512C 800C452C 51E10012 */  beql  $t7, $at, .L800C4578
/* 0C5130 800C4530 90D90008 */   lbu   $t9, 8($a2)
/* 0C5134 800C4534 9204002C */  lbu   $a0, 0x2c($s0)
/* 0C5138 800C4538 A3CD004F */  sb    $t5, 0x4f($fp)
/* 0C513C 800C453C AFCB003C */  sw    $t3, 0x3c($fp)
/* 0C5140 800C4540 A3CA0043 */  sb    $t2, 0x43($fp)
/* 0C5144 800C4544 AFC90030 */  sw    $t1, 0x30($fp)
/* 0C5148 800C4548 A3C7004D */  sb    $a3, 0x4d($fp)
/* 0C514C 800C454C 0C03103C */  jal   func_800C40F0
/* 0C5150 800C4550 AFC60048 */   sw    $a2, 0x48($fp)
/* 0C5154 800C4554 8FC60048 */  lw    $a2, 0x48($fp)
/* 0C5158 800C4558 93C7004D */  lbu   $a3, 0x4d($fp)
/* 0C515C 800C455C 8FC90030 */  lw    $t1, 0x30($fp)
/* 0C5160 800C4560 93CA0043 */  lbu   $t2, 0x43($fp)
/* 0C5164 800C4564 8FCB003C */  lw    $t3, 0x3c($fp)
/* 0C5168 800C4568 240C0030 */  li    $t4, 48
/* 0C516C 800C456C 93CD004F */  lbu   $t5, 0x4f($fp)
/* 0C5170 800C4570 241F00FF */  li    $ra, 255
/* 0C5174 800C4574 90D90008 */  lbu   $t9, 8($a2)
.L800C4578:
/* 0C5178 800C4578 3C010100 */  lui   $at, 0x100
/* 0C517C 800C457C A219000C */  sb    $t9, 0xc($s0)
/* 0C5180 800C4580 8CCE0000 */  lw    $t6, ($a2)
/* 0C5184 800C4584 AE0E0024 */  sw    $t6, 0x24($s0)
/* 0C5188 800C4588 8CD80000 */  lw    $t8, ($a2)
/* 0C518C 800C458C 240E0002 */  li    $t6, 2
/* 0C5190 800C4590 A20E0029 */  sb    $t6, 0x29($s0)
/* 0C5194 800C4594 03017824 */  and   $t7, $t8, $at
/* 0C5198 800C4598 000FCE02 */  srl   $t9, $t7, 0x18
/* 0C519C 800C459C A2190028 */  sb    $t9, 0x28($s0)
/* 0C51A0 800C45A0 8CD8000C */  lw    $t8, 0xc($a2)
/* 0C51A4 800C45A4 AE180010 */  sw    $t8, 0x10($s0)
/* 0C51A8 800C45A8 8CCF0010 */  lw    $t7, 0x10($a2)
/* 0C51AC 800C45AC AE0F0014 */  sw    $t7, 0x14($s0)
/* 0C51B0 800C45B0 8CD90014 */  lw    $t9, 0x14($a2)
/* 0C51B4 800C45B4 AE190018 */  sw    $t9, 0x18($s0)
/* 0C51B8 800C45B8 00001825 */  move  $v1, $zero
.L800C45BC:
/* 0C51BC 800C45BC 10600006 */  beqz  $v1, .L800C45D8
/* 0C51C0 800C45C0 00601025 */   move  $v0, $v1
/* 0C51C4 800C45C4 006C0019 */  multu $v1, $t4
/* 0C51C8 800C45C8 00007012 */  mflo  $t6
/* 0C51CC 800C45CC 012EC021 */  addu  $t8, $t1, $t6
/* 0C51D0 800C45D0 9303002B */  lbu   $v1, 0x2b($t8)
/* 0C51D4 800C45D4 00601025 */  move  $v0, $v1
.L800C45D8:
/* 0C51D8 800C45D8 13E20005 */  beq   $ra, $v0, .L800C45F0
/* 0C51DC 800C45DC 00000000 */   nop   
/* 0C51E0 800C45E0 1440FF94 */  bnez  $v0, .L800C4434
/* 0C51E4 800C45E4 00000000 */   nop   
/* 0C51E8 800C45E8 AFCB003C */  sw    $t3, 0x3c($fp)
/* 0C51EC 800C45EC A3CA0043 */  sb    $t2, 0x43($fp)
.L800C45F0:
/* 0C51F0 800C45F0 3C0E8019 */  lui   $t6, %hi(sSoundBankFreeListFront) # $t6, 0x8019
/* 0C51F4 800C45F4 25CE2AA8 */  addiu $t6, %lo(sSoundBankFreeListFront) # addiu $t6, $t6, 0x2aa8
/* 0C51F8 800C45F8 01AE3821 */  addu  $a3, $t5, $t6
/* 0C51FC 800C45FC 90E50000 */  lbu   $a1, ($a3)
/* 0C5200 800C4600 240C0030 */  li    $t4, 48
/* 0C5204 800C4604 000D7900 */  sll   $t7, $t5, 4
/* 0C5208 800C4608 00AC0019 */  multu $a1, $t4
/* 0C520C 800C460C 01ED7823 */  subu  $t7, $t7, $t5
/* 0C5210 800C4610 3C198019 */  lui   $t9, %hi(sSoundBanks) # $t9, 0x8019
/* 0C5214 800C4614 27391420 */  addiu $t9, %lo(sSoundBanks) # addiu $t9, $t9, 0x1420
/* 0C5218 800C4618 000F7980 */  sll   $t7, $t7, 6
/* 0C521C 800C461C 01F94821 */  addu  $t1, $t7, $t9
/* 0C5220 800C4620 0000C012 */  mflo  $t8
/* 0C5224 800C4624 01384021 */  addu  $t0, $t1, $t8
/* 0C5228 800C4628 9103002B */  lbu   $v1, 0x2b($t0)
/* 0C522C 800C462C 13E30034 */  beq   $ra, $v1, .L800C4700
/* 0C5230 800C4630 00000000 */   nop   
/* 0C5234 800C4634 10400032 */  beqz  $v0, .L800C4700
/* 0C5238 800C4638 00000000 */   nop   
/* 0C523C 800C463C 30A300FF */  andi  $v1, $a1, 0xff
/* 0C5240 800C4640 006C0019 */  multu $v1, $t4
/* 0C5244 800C4644 8CD90004 */  lw    $t9, 4($a2)
/* 0C5248 800C4648 3C010100 */  lui   $at, 0x100
/* 0C524C 800C464C 00007812 */  mflo  $t7
/* 0C5250 800C4650 012F8021 */  addu  $s0, $t1, $t7
/* 0C5254 800C4654 AE190000 */  sw    $t9, ($s0)
/* 0C5258 800C4658 8CCE0004 */  lw    $t6, 4($a2)
/* 0C525C 800C465C 25D80004 */  addiu $t8, $t6, 4
/* 0C5260 800C4660 AE180004 */  sw    $t8, 4($s0)
/* 0C5264 800C4664 8CCF0004 */  lw    $t7, 4($a2)
/* 0C5268 800C4668 25F90008 */  addiu $t9, $t7, 8
/* 0C526C 800C466C AE190008 */  sw    $t9, 8($s0)
/* 0C5270 800C4670 90CE0008 */  lbu   $t6, 8($a2)
/* 0C5274 800C4674 A20E000C */  sb    $t6, 0xc($s0)
/* 0C5278 800C4678 8CD8000C */  lw    $t8, 0xc($a2)
/* 0C527C 800C467C AE180010 */  sw    $t8, 0x10($s0)
/* 0C5280 800C4680 8CCF0010 */  lw    $t7, 0x10($a2)
/* 0C5284 800C4684 AE0F0014 */  sw    $t7, 0x14($s0)
/* 0C5288 800C4688 8CD90014 */  lw    $t9, 0x14($a2)
/* 0C528C 800C468C AE190018 */  sw    $t9, 0x18($s0)
/* 0C5290 800C4690 8CCE0000 */  lw    $t6, ($a2)
/* 0C5294 800C4694 AE0E0024 */  sw    $t6, 0x24($s0)
/* 0C5298 800C4698 8CD80000 */  lw    $t8, ($a2)
/* 0C529C 800C469C 240E0002 */  li    $t6, 2
/* 0C52A0 800C46A0 A20E0029 */  sb    $t6, 0x29($s0)
/* 0C52A4 800C46A4 03017824 */  and   $t7, $t8, $at
/* 0C52A8 800C46A8 3C188019 */  lui   $t8, %hi(sSoundBankUsedListBack) # $t8, 0x8019
/* 0C52AC 800C46AC 27182AA0 */  addiu $t8, %lo(sSoundBankUsedListBack) # addiu $t8, $t8, 0x2aa0
/* 0C52B0 800C46B0 01B81021 */  addu  $v0, $t5, $t8
/* 0C52B4 800C46B4 90440000 */  lbu   $a0, ($v0)
/* 0C52B8 800C46B8 000FCE02 */  srl   $t9, $t7, 0x18
/* 0C52BC 800C46BC A2190028 */  sb    $t9, 0x28($s0)
/* 0C52C0 800C46C0 008C0019 */  multu $a0, $t4
/* 0C52C4 800C46C4 A204002A */  sb    $a0, 0x2a($s0)
/* 0C52C8 800C46C8 00007812 */  mflo  $t7
/* 0C52CC 800C46CC 012FC821 */  addu  $t9, $t1, $t7
/* 0C52D0 800C46D0 A325002B */  sb    $a1, 0x2b($t9)
/* 0C52D4 800C46D4 910E002B */  lbu   $t6, 0x2b($t0)
/* 0C52D8 800C46D8 A0450000 */  sb    $a1, ($v0)
/* 0C52DC 800C46DC 240200FF */  li    $v0, 255
/* 0C52E0 800C46E0 31D800FF */  andi  $t8, $t6, 0xff
/* 0C52E4 800C46E4 030C0019 */  multu $t8, $t4
/* 0C52E8 800C46E8 A0EE0000 */  sb    $t6, ($a3)
/* 0C52EC 800C46EC 00007812 */  mflo  $t7
/* 0C52F0 800C46F0 012FC821 */  addu  $t9, $t1, $t7
/* 0C52F4 800C46F4 A322002A */  sb    $v0, 0x2a($t9)
/* 0C52F8 800C46F8 1000000A */  b     .L800C4724
/* 0C52FC 800C46FC A202002B */   sb    $v0, 0x2b($s0)
.L800C4700:
/* 0C5300 800C4700 57E30009 */  bnel  $ra, $v1, .L800C4728
/* 0C5304 800C4704 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C5308 800C4708 8CC20004 */  lw    $v0, 4($a2)
/* 0C530C 800C470C 3C0E800F */  lui   $t6, %hi(D_800EA1C8) # $t6, 0x800f
/* 0C5310 800C4710 25CEA1C8 */  addiu $t6, %lo(D_800EA1C8) # addiu $t6, $t6, -0x5e38
/* 0C5314 800C4714 11C20003 */  beq   $t6, $v0, .L800C4724
/* 0C5318 800C4718 3C01800F */   lui   $at, %hi(D_800F3664) # $at, 0x800f
/* 0C531C 800C471C C4243664 */  lwc1  $f4, %lo(D_800F3664)($at)
/* 0C5320 800C4720 E4440004 */  swc1  $f4, 4($v0)
.L800C4724:
/* 0C5324 800C4724 8FDF002C */  lw    $ra, 0x2c($fp)
.L800C4728:
/* 0C5328 800C4728 03C0E825 */  move  $sp, $fp
/* 0C532C 800C472C 8FD00024 */  lw    $s0, 0x24($fp)
/* 0C5330 800C4730 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C5334 800C4734 03E00008 */  jr    $ra
/* 0C5338 800C4738 27BD0050 */   addiu $sp, $sp, 0x50
