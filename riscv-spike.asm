
riscv-spike.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_mstart>:
    80000000:	00002fb7          	lui	t6,0x2
    80000004:	800f8f9b          	addiw	t6,t6,-2048
    80000008:	300f9073          	csrw	mstatus,t6
    8000000c:	00000297          	auipc	t0,0x0
    80000010:	06428293          	addi	t0,t0,100 # 80000070 <trap_vector>
    80000014:	30529073          	csrw	mtvec,t0
    80000018:	4081                	li	ra,0
    8000001a:	4101                	li	sp,0
    8000001c:	4181                	li	gp,0
    8000001e:	4201                	li	tp,0
    80000020:	4281                	li	t0,0
    80000022:	4301                	li	t1,0
    80000024:	4381                	li	t2,0
    80000026:	4401                	li	s0,0
    80000028:	4481                	li	s1,0
    8000002a:	4501                	li	a0,0
    8000002c:	4581                	li	a1,0
    8000002e:	4601                	li	a2,0
    80000030:	4681                	li	a3,0
    80000032:	4701                	li	a4,0
    80000034:	4781                	li	a5,0
    80000036:	4801                	li	a6,0
    80000038:	4881                	li	a7,0
    8000003a:	4901                	li	s2,0
    8000003c:	4981                	li	s3,0
    8000003e:	4a01                	li	s4,0
    80000040:	4a81                	li	s5,0
    80000042:	4b01                	li	s6,0
    80000044:	4b81                	li	s7,0
    80000046:	4c01                	li	s8,0
    80000048:	4c81                	li	s9,0
    8000004a:	4d01                	li	s10,0
    8000004c:	4d81                	li	s11,0
    8000004e:	4e01                	li	t3,0
    80000050:	4e81                	li	t4,0
    80000052:	4f01                	li	t5,0
    80000054:	4f81                	li	t6,0
    80000056:	00081197          	auipc	gp,0x81
    8000005a:	b1218193          	addi	gp,gp,-1262 # 80080b68 <_gp>
    8000005e:	00097117          	auipc	sp,0x97
    80000062:	83210113          	addi	sp,sp,-1998 # 80096890 <__stack>
    80000066:	1ea0006f          	j	80000250 <init>
    8000006a:	00000013          	nop
    8000006e:	0001                	nop

0000000080000070 <trap_vector>:
    80000070:	7111                	addi	sp,sp,-256
    80000072:	e006                	sd	ra,0(sp)
    80000074:	f016                	sd	t0,32(sp)
    80000076:	f41a                	sd	t1,40(sp)
    80000078:	f81e                	sd	t2,48(sp)
    8000007a:	fc22                	sd	s0,56(sp)
    8000007c:	e0a6                	sd	s1,64(sp)
    8000007e:	e4aa                	sd	a0,72(sp)
    80000080:	e8ae                	sd	a1,80(sp)
    80000082:	ecb2                	sd	a2,88(sp)
    80000084:	f0b6                	sd	a3,96(sp)
    80000086:	f4ba                	sd	a4,104(sp)
    80000088:	f8be                	sd	a5,112(sp)
    8000008a:	fcc2                	sd	a6,120(sp)
    8000008c:	e146                	sd	a7,128(sp)
    8000008e:	e54a                	sd	s2,136(sp)
    80000090:	e94e                	sd	s3,144(sp)
    80000092:	ed52                	sd	s4,152(sp)
    80000094:	f156                	sd	s5,160(sp)
    80000096:	f55a                	sd	s6,168(sp)
    80000098:	f95e                	sd	s7,176(sp)
    8000009a:	fd62                	sd	s8,184(sp)
    8000009c:	e1e6                	sd	s9,192(sp)
    8000009e:	e5ea                	sd	s10,200(sp)
    800000a0:	e9ee                	sd	s11,208(sp)
    800000a2:	edf2                	sd	t3,216(sp)
    800000a4:	f1f6                	sd	t4,224(sp)
    800000a6:	f5fa                	sd	t5,232(sp)
    800000a8:	f9fe                	sd	t6,240(sp)
    800000aa:	300022f3          	csrr	t0,mstatus
    800000ae:	e416                	sd	t0,8(sp)
    800000b0:	34202573          	csrr	a0,mcause
    800000b4:	341025f3          	csrr	a1,mepc
    800000b8:	860a                	mv	a2,sp
    800000ba:	1ed070ef          	jal	ra,80007aa6 <trap_handler>
    800000be:	34151073          	csrw	mepc,a0
    800000c2:	62a2                	ld	t0,8(sp)
    800000c4:	30029073          	csrw	mstatus,t0
    800000c8:	6082                	ld	ra,0(sp)
    800000ca:	7282                	ld	t0,32(sp)
    800000cc:	7322                	ld	t1,40(sp)
    800000ce:	73c2                	ld	t2,48(sp)
    800000d0:	7462                	ld	s0,56(sp)
    800000d2:	6486                	ld	s1,64(sp)
    800000d4:	6526                	ld	a0,72(sp)
    800000d6:	65c6                	ld	a1,80(sp)
    800000d8:	6666                	ld	a2,88(sp)
    800000da:	7686                	ld	a3,96(sp)
    800000dc:	7726                	ld	a4,104(sp)
    800000de:	77c6                	ld	a5,112(sp)
    800000e0:	7866                	ld	a6,120(sp)
    800000e2:	688a                	ld	a7,128(sp)
    800000e4:	692a                	ld	s2,136(sp)
    800000e6:	69ca                	ld	s3,144(sp)
    800000e8:	6a6a                	ld	s4,152(sp)
    800000ea:	7a8a                	ld	s5,160(sp)
    800000ec:	7b2a                	ld	s6,168(sp)
    800000ee:	7bca                	ld	s7,176(sp)
    800000f0:	7c6a                	ld	s8,184(sp)
    800000f2:	6c8e                	ld	s9,192(sp)
    800000f4:	6d2e                	ld	s10,200(sp)
    800000f6:	6dce                	ld	s11,208(sp)
    800000f8:	6e6e                	ld	t3,216(sp)
    800000fa:	7e8e                	ld	t4,224(sp)
    800000fc:	7f2e                	ld	t5,232(sp)
    800000fe:	7fce                	ld	t6,240(sp)
    80000100:	6111                	addi	sp,sp,256
    80000102:	30200073          	mret

0000000080000106 <task_switch>:
    80000106:	812a                	mv	sp,a0
    80000108:	00081297          	auipc	t0,0x81
    8000010c:	2f828293          	addi	t0,t0,760 # 80081400 <OSTCBCur>
    80000110:	0002b303          	ld	t1,0(t0)
    80000114:	00233023          	sd	sp,0(t1)
    80000118:	773060ef          	jal	ra,8000708a <OSTaskSwHook>
    8000011c:	00081297          	auipc	t0,0x81
    80000120:	eb428293          	addi	t0,t0,-332 # 80080fd0 <OSTCBHighRdy>
    80000124:	0002b303          	ld	t1,0(t0)
    80000128:	00081297          	auipc	t0,0x81
    8000012c:	2d828293          	addi	t0,t0,728 # 80081400 <OSTCBCur>
    80000130:	0062b023          	sd	t1,0(t0)
    80000134:	00080297          	auipc	t0,0x80
    80000138:	3ae28293          	addi	t0,t0,942 # 800804e2 <OSPrioHighRdy>
    8000013c:	0002c303          	lbu	t1,0(t0)
    80000140:	00081297          	auipc	t0,0x81
    80000144:	8c828293          	addi	t0,t0,-1848 # 80080a08 <OSPrioCur>
    80000148:	00628023          	sb	t1,0(t0)
    8000014c:	00081297          	auipc	t0,0x81
    80000150:	e8428293          	addi	t0,t0,-380 # 80080fd0 <OSTCBHighRdy>
    80000154:	0002b303          	ld	t1,0(t0)
    80000158:	00033103          	ld	sp,0(t1)
    8000015c:	72ee                	ld	t0,248(sp)
    8000015e:	34129073          	csrw	mepc,t0
    80000162:	62a2                	ld	t0,8(sp)
    80000164:	3002a073          	csrs	mstatus,t0
    80000168:	6082                	ld	ra,0(sp)
    8000016a:	7282                	ld	t0,32(sp)
    8000016c:	7322                	ld	t1,40(sp)
    8000016e:	73c2                	ld	t2,48(sp)
    80000170:	7462                	ld	s0,56(sp)
    80000172:	6486                	ld	s1,64(sp)
    80000174:	6526                	ld	a0,72(sp)
    80000176:	65c6                	ld	a1,80(sp)
    80000178:	6666                	ld	a2,88(sp)
    8000017a:	7686                	ld	a3,96(sp)
    8000017c:	7726                	ld	a4,104(sp)
    8000017e:	77c6                	ld	a5,112(sp)
    80000180:	7866                	ld	a6,120(sp)
    80000182:	688a                	ld	a7,128(sp)
    80000184:	692a                	ld	s2,136(sp)
    80000186:	69ca                	ld	s3,144(sp)
    80000188:	6a6a                	ld	s4,152(sp)
    8000018a:	7a8a                	ld	s5,160(sp)
    8000018c:	7b2a                	ld	s6,168(sp)
    8000018e:	7bca                	ld	s7,176(sp)
    80000190:	7c6a                	ld	s8,184(sp)
    80000192:	6c8e                	ld	s9,192(sp)
    80000194:	6d2e                	ld	s10,200(sp)
    80000196:	6dce                	ld	s11,208(sp)
    80000198:	6e6e                	ld	t3,216(sp)
    8000019a:	7e8e                	ld	t4,224(sp)
    8000019c:	7f2e                	ld	t5,232(sp)
    8000019e:	7fce                	ld	t6,240(sp)
    800001a0:	6111                	addi	sp,sp,256
    800001a2:	30200073          	mret
    800001a6:	00000013          	nop
    800001aa:	00000013          	nop
    800001ae:	0001                	nop

00000000800001b0 <cpu_sr_set>:
    800001b0:	30002573          	csrr	a0,mstatus
    800001b4:	30047073          	csrci	mstatus,8
    800001b8:	8082                	ret

00000000800001ba <cpu_sr_reset>:
    800001ba:	30051073          	csrw	mstatus,a0
    800001be:	8082                	ret
    800001c0:	0000                	unimp
    800001c2:	0000                	unimp
	...

00000000800001c6 <init_bss>:
    800001c6:	1141                	addi	sp,sp,-16
    800001c8:	00080797          	auipc	a5,0x80
    800001cc:	1b878793          	addi	a5,a5,440 # 80080380 <__bss_start>
    800001d0:	e43e                	sd	a5,8(sp)
    800001d2:	0008e797          	auipc	a5,0x8e
    800001d6:	6ba78793          	addi	a5,a5,1722 # 8008e88c <mstatus_save+0x4>
    800001da:	e03e                	sd	a5,0(sp)
    800001dc:	a039                	j	800001ea <init_bss+0x24>
    800001de:	67a2                	ld	a5,8(sp)
    800001e0:	0007a023          	sw	zero,0(a5)
    800001e4:	67a2                	ld	a5,8(sp)
    800001e6:	0791                	addi	a5,a5,4
    800001e8:	e43e                	sd	a5,8(sp)
    800001ea:	6722                	ld	a4,8(sp)
    800001ec:	6782                	ld	a5,0(sp)
    800001ee:	fee7f8e3          	bleu	a4,a5,800001de <init_bss+0x18>
    800001f2:	0001                	nop
    800001f4:	0141                	addi	sp,sp,16
    800001f6:	8082                	ret

00000000800001f8 <init_sbss>:
    800001f8:	1141                	addi	sp,sp,-16
    800001fa:	00080797          	auipc	a5,0x80
    800001fe:	16e78793          	addi	a5,a5,366 # 80080368 <__sbss_end>
    80000202:	e43e                	sd	a5,8(sp)
    80000204:	00080797          	auipc	a5,0x80
    80000208:	16078793          	addi	a5,a5,352 # 80080364 <OSUnMapTbl+0x35c>
    8000020c:	e03e                	sd	a5,0(sp)
    8000020e:	a039                	j	8000021c <init_sbss+0x24>
    80000210:	67a2                	ld	a5,8(sp)
    80000212:	0007a023          	sw	zero,0(a5)
    80000216:	67a2                	ld	a5,8(sp)
    80000218:	0791                	addi	a5,a5,4
    8000021a:	e43e                	sd	a5,8(sp)
    8000021c:	6722                	ld	a4,8(sp)
    8000021e:	6782                	ld	a5,0(sp)
    80000220:	fee7f8e3          	bleu	a4,a5,80000210 <init_sbss+0x18>
    80000224:	0001                	nop
    80000226:	0141                	addi	sp,sp,16
    80000228:	8082                	ret

000000008000022a <exit>:
    8000022a:	1141                	addi	sp,sp,-16
    8000022c:	87aa                	mv	a5,a0
    8000022e:	c63e                	sw	a5,12(sp)
    80000230:	30047073          	csrci	mstatus,8
    80000234:	47b2                	lw	a5,12(sp)
    80000236:	0017979b          	slliw	a5,a5,0x1
    8000023a:	2781                	sext.w	a5,a5
    8000023c:	0017e793          	ori	a5,a5,1
    80000240:	2781                	sext.w	a5,a5
    80000242:	873e                	mv	a4,a5
    80000244:	00082797          	auipc	a5,0x82
    80000248:	63c78793          	addi	a5,a5,1596 # 80082880 <tohost>
    8000024c:	e398                	sd	a4,0(a5)
    8000024e:	a001                	j	8000024e <exit+0x24>

0000000080000250 <init>:
    80000250:	1101                	addi	sp,sp,-32
    80000252:	ec06                	sd	ra,24(sp)
    80000254:	fa5ff0ef          	jal	ra,800001f8 <init_sbss>
    80000258:	f6fff0ef          	jal	ra,800001c6 <init_bss>
    8000025c:	00080797          	auipc	a5,0x80
    80000260:	da478793          	addi	a5,a5,-604 # 80080000 <__rodata_start>
    80000264:	e03e                	sd	a5,0(sp)
    80000266:	e402                	sd	zero,8(sp)
    80000268:	878a                	mv	a5,sp
    8000026a:	85be                	mv	a1,a5
    8000026c:	4505                	li	a0,1
    8000026e:	183070ef          	jal	ra,80007bf0 <main>
    80000272:	87aa                	mv	a5,a0
    80000274:	853e                	mv	a0,a5
    80000276:	fb5ff0ef          	jal	ra,8000022a <exit>
    8000027a:	0001                	nop
    8000027c:	60e2                	ld	ra,24(sp)
    8000027e:	6105                	addi	sp,sp,32
    80000280:	8082                	ret

0000000080000282 <OSEventNameGet>:
    80000282:	7139                	addi	sp,sp,-64
    80000284:	fc06                	sd	ra,56(sp)
    80000286:	ec2a                	sd	a0,24(sp)
    80000288:	e82e                	sd	a1,16(sp)
    8000028a:	e432                	sd	a2,8(sp)
    8000028c:	f402                	sd	zero,40(sp)
    8000028e:	00081797          	auipc	a5,0x81
    80000292:	16a78793          	addi	a5,a5,362 # 800813f8 <OSIntNesting>
    80000296:	0007c783          	lbu	a5,0(a5)
    8000029a:	c799                	beqz	a5,800002a8 <OSEventNameGet+0x26>
    8000029c:	67a2                	ld	a5,8(sp)
    8000029e:	4745                	li	a4,17
    800002a0:	00e78023          	sb	a4,0(a5)
    800002a4:	4781                	li	a5,0
    800002a6:	a889                	j	800002f8 <OSEventNameGet+0x76>
    800002a8:	67e2                	ld	a5,24(sp)
    800002aa:	0007c783          	lbu	a5,0(a5)
    800002ae:	2781                	sext.w	a5,a5
    800002b0:	37fd                	addiw	a5,a5,-1
    800002b2:	0007871b          	sext.w	a4,a5
    800002b6:	478d                	li	a5,3
    800002b8:	00e7f863          	bleu	a4,a5,800002c8 <OSEventNameGet+0x46>
    800002bc:	67a2                	ld	a5,8(sp)
    800002be:	4705                	li	a4,1
    800002c0:	00e78023          	sb	a4,0(a5)
    800002c4:	4781                	li	a5,0
    800002c6:	a80d                	j	800002f8 <OSEventNameGet+0x76>
    800002c8:	0001                	nop
    800002ca:	337060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800002ce:	f42a                	sd	a0,40(sp)
    800002d0:	67e2                	ld	a5,24(sp)
    800002d2:	7398                	ld	a4,32(a5)
    800002d4:	67c2                	ld	a5,16(sp)
    800002d6:	e398                	sd	a4,0(a5)
    800002d8:	67c2                	ld	a5,16(sp)
    800002da:	639c                	ld	a5,0(a5)
    800002dc:	853e                	mv	a0,a5
    800002de:	380010ef          	jal	ra,8000165e <OS_StrLen>
    800002e2:	87aa                	mv	a5,a0
    800002e4:	02f103a3          	sb	a5,39(sp)
    800002e8:	7522                	ld	a0,40(sp)
    800002ea:	321060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800002ee:	67a2                	ld	a5,8(sp)
    800002f0:	00078023          	sb	zero,0(a5)
    800002f4:	02714783          	lbu	a5,39(sp)
    800002f8:	853e                	mv	a0,a5
    800002fa:	70e2                	ld	ra,56(sp)
    800002fc:	6121                	addi	sp,sp,64
    800002fe:	8082                	ret

0000000080000300 <OSEventNameSet>:
    80000300:	7139                	addi	sp,sp,-64
    80000302:	fc06                	sd	ra,56(sp)
    80000304:	ec2a                	sd	a0,24(sp)
    80000306:	e82e                	sd	a1,16(sp)
    80000308:	e432                	sd	a2,8(sp)
    8000030a:	f402                	sd	zero,40(sp)
    8000030c:	00081797          	auipc	a5,0x81
    80000310:	0ec78793          	addi	a5,a5,236 # 800813f8 <OSIntNesting>
    80000314:	0007c783          	lbu	a5,0(a5)
    80000318:	c791                	beqz	a5,80000324 <OSEventNameSet+0x24>
    8000031a:	67a2                	ld	a5,8(sp)
    8000031c:	4749                	li	a4,18
    8000031e:	00e78023          	sb	a4,0(a5)
    80000322:	a82d                	j	8000035c <OSEventNameSet+0x5c>
    80000324:	67e2                	ld	a5,24(sp)
    80000326:	0007c783          	lbu	a5,0(a5)
    8000032a:	2781                	sext.w	a5,a5
    8000032c:	37fd                	addiw	a5,a5,-1
    8000032e:	0007871b          	sext.w	a4,a5
    80000332:	478d                	li	a5,3
    80000334:	00e7f763          	bleu	a4,a5,80000342 <OSEventNameSet+0x42>
    80000338:	67a2                	ld	a5,8(sp)
    8000033a:	4705                	li	a4,1
    8000033c:	00e78023          	sb	a4,0(a5)
    80000340:	a831                	j	8000035c <OSEventNameSet+0x5c>
    80000342:	0001                	nop
    80000344:	2bd060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80000348:	f42a                	sd	a0,40(sp)
    8000034a:	67e2                	ld	a5,24(sp)
    8000034c:	6742                	ld	a4,16(sp)
    8000034e:	f398                	sd	a4,32(a5)
    80000350:	7522                	ld	a0,40(sp)
    80000352:	2b9060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80000356:	67a2                	ld	a5,8(sp)
    80000358:	00078023          	sb	zero,0(a5)
    8000035c:	70e2                	ld	ra,56(sp)
    8000035e:	6121                	addi	sp,sp,64
    80000360:	8082                	ret

0000000080000362 <OSEventPendMulti>:
    80000362:	7159                	addi	sp,sp,-112
    80000364:	f486                	sd	ra,104(sp)
    80000366:	f42a                	sd	a0,40(sp)
    80000368:	f02e                	sd	a1,32(sp)
    8000036a:	ec32                	sd	a2,24(sp)
    8000036c:	87b6                	mv	a5,a3
    8000036e:	e43a                	sd	a4,8(sp)
    80000370:	ca3e                	sw	a5,20(sp)
    80000372:	e082                	sd	zero,64(sp)
    80000374:	7782                	ld	a5,32(sp)
    80000376:	0007b023          	sd	zero,0(a5)
    8000037a:	77a2                	ld	a5,40(sp)
    8000037c:	ecbe                	sd	a5,88(sp)
    8000037e:	67e6                	ld	a5,88(sp)
    80000380:	639c                	ld	a5,0(a5)
    80000382:	e8be                	sd	a5,80(sp)
    80000384:	a091                	j	800003c8 <OSEventPendMulti+0x66>
    80000386:	67c6                	ld	a5,80(sp)
    80000388:	0007c783          	lbu	a5,0(a5)
    8000038c:	2781                	sext.w	a5,a5
    8000038e:	86be                	mv	a3,a5
    80000390:	4709                	li	a4,2
    80000392:	02e68063          	beq	a3,a4,800003b2 <OSEventPendMulti+0x50>
    80000396:	86be                	mv	a3,a5
    80000398:	470d                	li	a4,3
    8000039a:	00e68e63          	beq	a3,a4,800003b6 <OSEventPendMulti+0x54>
    8000039e:	873e                	mv	a4,a5
    800003a0:	4785                	li	a5,1
    800003a2:	00f70c63          	beq	a4,a5,800003ba <OSEventPendMulti+0x58>
    800003a6:	67a2                	ld	a5,8(sp)
    800003a8:	4705                	li	a4,1
    800003aa:	00e78023          	sb	a4,0(a5)
    800003ae:	4781                	li	a5,0
    800003b0:	aef1                	j	8000078c <OSEventPendMulti+0x42a>
    800003b2:	0001                	nop
    800003b4:	a021                	j	800003bc <OSEventPendMulti+0x5a>
    800003b6:	0001                	nop
    800003b8:	a011                	j	800003bc <OSEventPendMulti+0x5a>
    800003ba:	0001                	nop
    800003bc:	67e6                	ld	a5,88(sp)
    800003be:	07a1                	addi	a5,a5,8
    800003c0:	ecbe                	sd	a5,88(sp)
    800003c2:	67e6                	ld	a5,88(sp)
    800003c4:	639c                	ld	a5,0(a5)
    800003c6:	e8be                	sd	a5,80(sp)
    800003c8:	67c6                	ld	a5,80(sp)
    800003ca:	ffd5                	bnez	a5,80000386 <OSEventPendMulti+0x24>
    800003cc:	00081797          	auipc	a5,0x81
    800003d0:	02c78793          	addi	a5,a5,44 # 800813f8 <OSIntNesting>
    800003d4:	0007c783          	lbu	a5,0(a5)
    800003d8:	c799                	beqz	a5,800003e6 <OSEventPendMulti+0x84>
    800003da:	67a2                	ld	a5,8(sp)
    800003dc:	4709                	li	a4,2
    800003de:	00e78023          	sb	a4,0(a5)
    800003e2:	4781                	li	a5,0
    800003e4:	a665                	j	8000078c <OSEventPendMulti+0x42a>
    800003e6:	00080797          	auipc	a5,0x80
    800003ea:	0e278793          	addi	a5,a5,226 # 800804c8 <OSLockNesting>
    800003ee:	0007c783          	lbu	a5,0(a5)
    800003f2:	c799                	beqz	a5,80000400 <OSEventPendMulti+0x9e>
    800003f4:	67a2                	ld	a5,8(sp)
    800003f6:	4735                	li	a4,13
    800003f8:	00e78023          	sb	a4,0(a5)
    800003fc:	4781                	li	a5,0
    800003fe:	a679                	j	8000078c <OSEventPendMulti+0x42a>
    80000400:	201060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80000404:	e0aa                	sd	a0,64(sp)
    80000406:	040107a3          	sb	zero,79(sp)
    8000040a:	04011623          	sh	zero,76(sp)
    8000040e:	040105a3          	sb	zero,75(sp)
    80000412:	77a2                	ld	a5,40(sp)
    80000414:	ecbe                	sd	a5,88(sp)
    80000416:	67e6                	ld	a5,88(sp)
    80000418:	639c                	ld	a5,0(a5)
    8000041a:	e8be                	sd	a5,80(sp)
    8000041c:	aab9                	j	8000057a <OSEventPendMulti+0x218>
    8000041e:	67c6                	ld	a5,80(sp)
    80000420:	0007c783          	lbu	a5,0(a5)
    80000424:	2781                	sext.w	a5,a5
    80000426:	86be                	mv	a3,a5
    80000428:	4709                	li	a4,2
    8000042a:	0ae68863          	beq	a3,a4,800004da <OSEventPendMulti+0x178>
    8000042e:	86be                	mv	a3,a5
    80000430:	470d                	li	a4,3
    80000432:	00e68763          	beq	a3,a4,80000440 <OSEventPendMulti+0xde>
    80000436:	873e                	mv	a4,a5
    80000438:	4785                	li	a5,1
    8000043a:	04f70d63          	beq	a4,a5,80000494 <OSEventPendMulti+0x132>
    8000043e:	aa19                	j	80000554 <OSEventPendMulti+0x1f2>
    80000440:	67c6                	ld	a5,80(sp)
    80000442:	0107d783          	lhu	a5,16(a5)
    80000446:	c3a1                	beqz	a5,80000486 <OSEventPendMulti+0x124>
    80000448:	67c6                	ld	a5,80(sp)
    8000044a:	0107d783          	lhu	a5,16(a5)
    8000044e:	37fd                	addiw	a5,a5,-1
    80000450:	03079713          	slli	a4,a5,0x30
    80000454:	9341                	srli	a4,a4,0x30
    80000456:	67c6                	ld	a5,80(sp)
    80000458:	00e79823          	sh	a4,16(a5)
    8000045c:	7782                	ld	a5,32(sp)
    8000045e:	00878713          	addi	a4,a5,8
    80000462:	f03a                	sd	a4,32(sp)
    80000464:	6746                	ld	a4,80(sp)
    80000466:	e398                	sd	a4,0(a5)
    80000468:	4785                	li	a5,1
    8000046a:	04f107a3          	sb	a5,79(sp)
    8000046e:	67e2                	ld	a5,24(sp)
    80000470:	00878713          	addi	a4,a5,8
    80000474:	ec3a                	sd	a4,24(sp)
    80000476:	0007b023          	sd	zero,0(a5)
    8000047a:	04c15783          	lhu	a5,76(sp)
    8000047e:	2785                	addiw	a5,a5,1
    80000480:	04f11623          	sh	a5,76(sp)
    80000484:	a0ed                	j	8000056e <OSEventPendMulti+0x20c>
    80000486:	04b14783          	lbu	a5,75(sp)
    8000048a:	0017e793          	ori	a5,a5,1
    8000048e:	04f105a3          	sb	a5,75(sp)
    80000492:	a8f1                	j	8000056e <OSEventPendMulti+0x20c>
    80000494:	67c6                	ld	a5,80(sp)
    80000496:	679c                	ld	a5,8(a5)
    80000498:	cb95                	beqz	a5,800004cc <OSEventPendMulti+0x16a>
    8000049a:	67e2                	ld	a5,24(sp)
    8000049c:	00878713          	addi	a4,a5,8
    800004a0:	ec3a                	sd	a4,24(sp)
    800004a2:	6746                	ld	a4,80(sp)
    800004a4:	6718                	ld	a4,8(a4)
    800004a6:	e398                	sd	a4,0(a5)
    800004a8:	67c6                	ld	a5,80(sp)
    800004aa:	0007b423          	sd	zero,8(a5)
    800004ae:	7782                	ld	a5,32(sp)
    800004b0:	00878713          	addi	a4,a5,8
    800004b4:	f03a                	sd	a4,32(sp)
    800004b6:	6746                	ld	a4,80(sp)
    800004b8:	e398                	sd	a4,0(a5)
    800004ba:	4785                	li	a5,1
    800004bc:	04f107a3          	sb	a5,79(sp)
    800004c0:	04c15783          	lhu	a5,76(sp)
    800004c4:	2785                	addiw	a5,a5,1
    800004c6:	04f11623          	sh	a5,76(sp)
    800004ca:	a055                	j	8000056e <OSEventPendMulti+0x20c>
    800004cc:	04b14783          	lbu	a5,75(sp)
    800004d0:	0027e793          	ori	a5,a5,2
    800004d4:	04f105a3          	sb	a5,75(sp)
    800004d8:	a859                	j	8000056e <OSEventPendMulti+0x20c>
    800004da:	67c6                	ld	a5,80(sp)
    800004dc:	679c                	ld	a5,8(a5)
    800004de:	fc3e                	sd	a5,56(sp)
    800004e0:	77e2                	ld	a5,56(sp)
    800004e2:	02a7d783          	lhu	a5,42(a5)
    800004e6:	c3a5                	beqz	a5,80000546 <OSEventPendMulti+0x1e4>
    800004e8:	77e2                	ld	a5,56(sp)
    800004ea:	7398                	ld	a4,32(a5)
    800004ec:	00870693          	addi	a3,a4,8
    800004f0:	77e2                	ld	a5,56(sp)
    800004f2:	f394                	sd	a3,32(a5)
    800004f4:	67e2                	ld	a5,24(sp)
    800004f6:	00878693          	addi	a3,a5,8
    800004fa:	ec36                	sd	a3,24(sp)
    800004fc:	6318                	ld	a4,0(a4)
    800004fe:	e398                	sd	a4,0(a5)
    80000500:	77e2                	ld	a5,56(sp)
    80000502:	7398                	ld	a4,32(a5)
    80000504:	77e2                	ld	a5,56(sp)
    80000506:	6b9c                	ld	a5,16(a5)
    80000508:	00f71663          	bne	a4,a5,80000514 <OSEventPendMulti+0x1b2>
    8000050c:	77e2                	ld	a5,56(sp)
    8000050e:	6798                	ld	a4,8(a5)
    80000510:	77e2                	ld	a5,56(sp)
    80000512:	f398                	sd	a4,32(a5)
    80000514:	77e2                	ld	a5,56(sp)
    80000516:	02a7d783          	lhu	a5,42(a5)
    8000051a:	37fd                	addiw	a5,a5,-1
    8000051c:	03079713          	slli	a4,a5,0x30
    80000520:	9341                	srli	a4,a4,0x30
    80000522:	77e2                	ld	a5,56(sp)
    80000524:	02e79523          	sh	a4,42(a5)
    80000528:	7782                	ld	a5,32(sp)
    8000052a:	00878713          	addi	a4,a5,8
    8000052e:	f03a                	sd	a4,32(sp)
    80000530:	6746                	ld	a4,80(sp)
    80000532:	e398                	sd	a4,0(a5)
    80000534:	4785                	li	a5,1
    80000536:	04f107a3          	sb	a5,79(sp)
    8000053a:	04c15783          	lhu	a5,76(sp)
    8000053e:	2785                	addiw	a5,a5,1
    80000540:	04f11623          	sh	a5,76(sp)
    80000544:	a02d                	j	8000056e <OSEventPendMulti+0x20c>
    80000546:	04b14783          	lbu	a5,75(sp)
    8000054a:	0047e793          	ori	a5,a5,4
    8000054e:	04f105a3          	sb	a5,75(sp)
    80000552:	a831                	j	8000056e <OSEventPendMulti+0x20c>
    80000554:	6506                	ld	a0,64(sp)
    80000556:	0b5060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000055a:	7782                	ld	a5,32(sp)
    8000055c:	0007b023          	sd	zero,0(a5)
    80000560:	67a2                	ld	a5,8(sp)
    80000562:	4705                	li	a4,1
    80000564:	00e78023          	sb	a4,0(a5)
    80000568:	04c15783          	lhu	a5,76(sp)
    8000056c:	a405                	j	8000078c <OSEventPendMulti+0x42a>
    8000056e:	67e6                	ld	a5,88(sp)
    80000570:	07a1                	addi	a5,a5,8
    80000572:	ecbe                	sd	a5,88(sp)
    80000574:	67e6                	ld	a5,88(sp)
    80000576:	639c                	ld	a5,0(a5)
    80000578:	e8be                	sd	a5,80(sp)
    8000057a:	67c6                	ld	a5,80(sp)
    8000057c:	ea0791e3          	bnez	a5,8000041e <OSEventPendMulti+0xbc>
    80000580:	04f14783          	lbu	a5,79(sp)
    80000584:	0ff7f713          	andi	a4,a5,255
    80000588:	4785                	li	a5,1
    8000058a:	00f71e63          	bne	a4,a5,800005a6 <OSEventPendMulti+0x244>
    8000058e:	7782                	ld	a5,32(sp)
    80000590:	0007b023          	sd	zero,0(a5)
    80000594:	6506                	ld	a0,64(sp)
    80000596:	075060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000059a:	67a2                	ld	a5,8(sp)
    8000059c:	00078023          	sb	zero,0(a5)
    800005a0:	04c15783          	lhu	a5,76(sp)
    800005a4:	a2e5                	j	8000078c <OSEventPendMulti+0x42a>
    800005a6:	00081797          	auipc	a5,0x81
    800005aa:	e5a78793          	addi	a5,a5,-422 # 80081400 <OSTCBCur>
    800005ae:	639c                	ld	a5,0(a5)
    800005b0:	0587c703          	lbu	a4,88(a5)
    800005b4:	04b14783          	lbu	a5,75(sp)
    800005b8:	8fd9                	or	a5,a5,a4
    800005ba:	0ff7f713          	andi	a4,a5,255
    800005be:	00081797          	auipc	a5,0x81
    800005c2:	e4278793          	addi	a5,a5,-446 # 80081400 <OSTCBCur>
    800005c6:	639c                	ld	a5,0(a5)
    800005c8:	f8076713          	ori	a4,a4,-128
    800005cc:	0ff77713          	andi	a4,a4,255
    800005d0:	04e78c23          	sb	a4,88(a5)
    800005d4:	00081797          	auipc	a5,0x81
    800005d8:	e2c78793          	addi	a5,a5,-468 # 80081400 <OSTCBCur>
    800005dc:	639c                	ld	a5,0(a5)
    800005de:	04078ca3          	sb	zero,89(a5)
    800005e2:	00081797          	auipc	a5,0x81
    800005e6:	e1e78793          	addi	a5,a5,-482 # 80081400 <OSTCBCur>
    800005ea:	639c                	ld	a5,0(a5)
    800005ec:	4752                	lw	a4,20(sp)
    800005ee:	cbf8                	sw	a4,84(a5)
    800005f0:	7522                	ld	a0,40(sp)
    800005f2:	0f3000ef          	jal	ra,80000ee4 <OS_EventTaskWaitMulti>
    800005f6:	6506                	ld	a0,64(sp)
    800005f8:	013060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800005fc:	74d000ef          	jal	ra,80001548 <OS_Sched>
    80000600:	001060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80000604:	e0aa                	sd	a0,64(sp)
    80000606:	00081797          	auipc	a5,0x81
    8000060a:	dfa78793          	addi	a5,a5,-518 # 80081400 <OSTCBCur>
    8000060e:	639c                	ld	a5,0(a5)
    80000610:	0597c783          	lbu	a5,89(a5)
    80000614:	2781                	sext.w	a5,a5
    80000616:	873e                	mv	a4,a5
    80000618:	c709                	beqz	a4,80000622 <OSEventPendMulti+0x2c0>
    8000061a:	873e                	mv	a4,a5
    8000061c:	4789                	li	a5,2
    8000061e:	04f71c63          	bne	a4,a5,80000676 <OSEventPendMulti+0x314>
    80000622:	00081797          	auipc	a5,0x81
    80000626:	dde78793          	addi	a5,a5,-546 # 80081400 <OSTCBCur>
    8000062a:	639c                	ld	a5,0(a5)
    8000062c:	7b9c                	ld	a5,48(a5)
    8000062e:	e8be                	sd	a5,80(sp)
    80000630:	67c6                	ld	a5,80(sp)
    80000632:	c385                	beqz	a5,80000652 <OSEventPendMulti+0x2f0>
    80000634:	7782                	ld	a5,32(sp)
    80000636:	00878713          	addi	a4,a5,8
    8000063a:	f03a                	sd	a4,32(sp)
    8000063c:	6746                	ld	a4,80(sp)
    8000063e:	e398                	sd	a4,0(a5)
    80000640:	7782                	ld	a5,32(sp)
    80000642:	0007b023          	sd	zero,0(a5)
    80000646:	04c15783          	lhu	a5,76(sp)
    8000064a:	2785                	addiw	a5,a5,1
    8000064c:	04f11623          	sh	a5,76(sp)
    80000650:	a82d                	j	8000068a <OSEventPendMulti+0x328>
    80000652:	00081797          	auipc	a5,0x81
    80000656:	dae78793          	addi	a5,a5,-594 # 80081400 <OSTCBCur>
    8000065a:	639c                	ld	a5,0(a5)
    8000065c:	4705                	li	a4,1
    8000065e:	04e78ca3          	sb	a4,89(a5)
    80000662:	00081797          	auipc	a5,0x81
    80000666:	d9e78793          	addi	a5,a5,-610 # 80081400 <OSTCBCur>
    8000066a:	639c                	ld	a5,0(a5)
    8000066c:	75a2                	ld	a1,40(sp)
    8000066e:	853e                	mv	a0,a5
    80000670:	231000ef          	jal	ra,800010a0 <OS_EventTaskRemoveMulti>
    80000674:	a819                	j	8000068a <OSEventPendMulti+0x328>
    80000676:	00081797          	auipc	a5,0x81
    8000067a:	d8a78793          	addi	a5,a5,-630 # 80081400 <OSTCBCur>
    8000067e:	639c                	ld	a5,0(a5)
    80000680:	75a2                	ld	a1,40(sp)
    80000682:	853e                	mv	a0,a5
    80000684:	21d000ef          	jal	ra,800010a0 <OS_EventTaskRemoveMulti>
    80000688:	0001                	nop
    8000068a:	00081797          	auipc	a5,0x81
    8000068e:	d7678793          	addi	a5,a5,-650 # 80081400 <OSTCBCur>
    80000692:	639c                	ld	a5,0(a5)
    80000694:	0597c783          	lbu	a5,89(a5)
    80000698:	2781                	sext.w	a5,a5
    8000069a:	873e                	mv	a4,a5
    8000069c:	c711                	beqz	a4,800006a8 <OSEventPendMulti+0x346>
    8000069e:	873e                	mv	a4,a5
    800006a0:	4789                	li	a5,2
    800006a2:	06f70763          	beq	a4,a5,80000710 <OSEventPendMulti+0x3ae>
    800006a6:	a041                	j	80000726 <OSEventPendMulti+0x3c4>
    800006a8:	67c6                	ld	a5,80(sp)
    800006aa:	0007c783          	lbu	a5,0(a5)
    800006ae:	2781                	sext.w	a5,a5
    800006b0:	86be                	mv	a3,a5
    800006b2:	4705                	li	a4,1
    800006b4:	02e6cd63          	blt	a3,a4,800006ee <OSEventPendMulti+0x38c>
    800006b8:	86be                	mv	a3,a5
    800006ba:	4709                	li	a4,2
    800006bc:	00d75d63          	ble	a3,a4,800006d6 <OSEventPendMulti+0x374>
    800006c0:	873e                	mv	a4,a5
    800006c2:	478d                	li	a5,3
    800006c4:	02f71563          	bne	a4,a5,800006ee <OSEventPendMulti+0x38c>
    800006c8:	67e2                	ld	a5,24(sp)
    800006ca:	00878713          	addi	a4,a5,8
    800006ce:	ec3a                	sd	a4,24(sp)
    800006d0:	0007b023          	sd	zero,0(a5)
    800006d4:	a815                	j	80000708 <OSEventPendMulti+0x3a6>
    800006d6:	00081797          	auipc	a5,0x81
    800006da:	d2a78793          	addi	a5,a5,-726 # 80081400 <OSTCBCur>
    800006de:	6398                	ld	a4,0(a5)
    800006e0:	67e2                	ld	a5,24(sp)
    800006e2:	00878693          	addi	a3,a5,8
    800006e6:	ec36                	sd	a3,24(sp)
    800006e8:	6338                	ld	a4,64(a4)
    800006ea:	e398                	sd	a4,0(a5)
    800006ec:	a831                	j	80000708 <OSEventPendMulti+0x3a6>
    800006ee:	6506                	ld	a0,64(sp)
    800006f0:	71a060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800006f4:	7782                	ld	a5,32(sp)
    800006f6:	0007b023          	sd	zero,0(a5)
    800006fa:	67a2                	ld	a5,8(sp)
    800006fc:	4705                	li	a4,1
    800006fe:	00e78023          	sb	a4,0(a5)
    80000702:	04c15783          	lhu	a5,76(sp)
    80000706:	a059                	j	8000078c <OSEventPendMulti+0x42a>
    80000708:	67a2                	ld	a5,8(sp)
    8000070a:	00078023          	sb	zero,0(a5)
    8000070e:	a03d                	j	8000073c <OSEventPendMulti+0x3da>
    80000710:	67e2                	ld	a5,24(sp)
    80000712:	00878713          	addi	a4,a5,8
    80000716:	ec3a                	sd	a4,24(sp)
    80000718:	0007b023          	sd	zero,0(a5)
    8000071c:	67a2                	ld	a5,8(sp)
    8000071e:	4739                	li	a4,14
    80000720:	00e78023          	sb	a4,0(a5)
    80000724:	a821                	j	8000073c <OSEventPendMulti+0x3da>
    80000726:	67e2                	ld	a5,24(sp)
    80000728:	00878713          	addi	a4,a5,8
    8000072c:	ec3a                	sd	a4,24(sp)
    8000072e:	0007b023          	sd	zero,0(a5)
    80000732:	67a2                	ld	a5,8(sp)
    80000734:	4729                	li	a4,10
    80000736:	00e78023          	sb	a4,0(a5)
    8000073a:	0001                	nop
    8000073c:	00081797          	auipc	a5,0x81
    80000740:	cc478793          	addi	a5,a5,-828 # 80081400 <OSTCBCur>
    80000744:	639c                	ld	a5,0(a5)
    80000746:	04078c23          	sb	zero,88(a5)
    8000074a:	00081797          	auipc	a5,0x81
    8000074e:	cb678793          	addi	a5,a5,-842 # 80081400 <OSTCBCur>
    80000752:	639c                	ld	a5,0(a5)
    80000754:	04078ca3          	sb	zero,89(a5)
    80000758:	00081797          	auipc	a5,0x81
    8000075c:	ca878793          	addi	a5,a5,-856 # 80081400 <OSTCBCur>
    80000760:	639c                	ld	a5,0(a5)
    80000762:	0207b823          	sd	zero,48(a5)
    80000766:	00081797          	auipc	a5,0x81
    8000076a:	c9a78793          	addi	a5,a5,-870 # 80081400 <OSTCBCur>
    8000076e:	639c                	ld	a5,0(a5)
    80000770:	0207bc23          	sd	zero,56(a5)
    80000774:	00081797          	auipc	a5,0x81
    80000778:	c8c78793          	addi	a5,a5,-884 # 80081400 <OSTCBCur>
    8000077c:	639c                	ld	a5,0(a5)
    8000077e:	0407b023          	sd	zero,64(a5)
    80000782:	6506                	ld	a0,64(sp)
    80000784:	686060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80000788:	04c15783          	lhu	a5,76(sp)
    8000078c:	853e                	mv	a0,a5
    8000078e:	70a6                	ld	ra,104(sp)
    80000790:	6165                	addi	sp,sp,112
    80000792:	8082                	ret

0000000080000794 <OSInit>:
    80000794:	1141                	addi	sp,sp,-16
    80000796:	e406                	sd	ra,8(sp)
    80000798:	0c3060ef          	jal	ra,8000705a <OSInitHookBegin>
    8000079c:	2bd000ef          	jal	ra,80001258 <OS_InitMisc>
    800007a0:	335000ef          	jal	ra,800012d4 <OS_InitRdyList>
    800007a4:	44b000ef          	jal	ra,800013ee <OS_InitTCBList>
    800007a8:	1d7000ef          	jal	ra,8000117e <OS_InitEventList>
    800007ac:	05c020ef          	jal	ra,80002808 <OS_FlagInit>
    800007b0:	291020ef          	jal	ra,80003240 <OS_MemInit>
    800007b4:	0d0040ef          	jal	ra,80004884 <OS_QInit>
    800007b8:	393000ef          	jal	ra,8000134a <OS_InitTaskIdle>
    800007bc:	3e1000ef          	jal	ra,8000139c <OS_InitTaskStat>
    800007c0:	124060ef          	jal	ra,800068e4 <OSTmr_Init>
    800007c4:	0a7060ef          	jal	ra,8000706a <OSInitHookEnd>
    800007c8:	0001                	nop
    800007ca:	60a2                	ld	ra,8(sp)
    800007cc:	0141                	addi	sp,sp,16
    800007ce:	8082                	ret

00000000800007d0 <OSIntEnter>:
    800007d0:	00080797          	auipc	a5,0x80
    800007d4:	d0878793          	addi	a5,a5,-760 # 800804d8 <OSRunning>
    800007d8:	0007c783          	lbu	a5,0(a5)
    800007dc:	873e                	mv	a4,a5
    800007de:	4785                	li	a5,1
    800007e0:	02f71c63          	bne	a4,a5,80000818 <OSIntEnter+0x48>
    800007e4:	00081797          	auipc	a5,0x81
    800007e8:	c1478793          	addi	a5,a5,-1004 # 800813f8 <OSIntNesting>
    800007ec:	0007c783          	lbu	a5,0(a5)
    800007f0:	873e                	mv	a4,a5
    800007f2:	0ff00793          	li	a5,255
    800007f6:	02f70163          	beq	a4,a5,80000818 <OSIntEnter+0x48>
    800007fa:	00081797          	auipc	a5,0x81
    800007fe:	bfe78793          	addi	a5,a5,-1026 # 800813f8 <OSIntNesting>
    80000802:	0007c783          	lbu	a5,0(a5)
    80000806:	2785                	addiw	a5,a5,1
    80000808:	0ff7f713          	andi	a4,a5,255
    8000080c:	00081797          	auipc	a5,0x81
    80000810:	bec78793          	addi	a5,a5,-1044 # 800813f8 <OSIntNesting>
    80000814:	00e78023          	sb	a4,0(a5)
    80000818:	0001                	nop
    8000081a:	8082                	ret

000000008000081c <OSIntExit>:
    8000081c:	1101                	addi	sp,sp,-32
    8000081e:	ec06                	sd	ra,24(sp)
    80000820:	e402                	sd	zero,8(sp)
    80000822:	00080797          	auipc	a5,0x80
    80000826:	cb678793          	addi	a5,a5,-842 # 800804d8 <OSRunning>
    8000082a:	0007c783          	lbu	a5,0(a5)
    8000082e:	873e                	mv	a4,a5
    80000830:	4785                	li	a5,1
    80000832:	0cf71563          	bne	a4,a5,800008fc <OSIntExit+0xe0>
    80000836:	5ca060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000083a:	e42a                	sd	a0,8(sp)
    8000083c:	00081797          	auipc	a5,0x81
    80000840:	bbc78793          	addi	a5,a5,-1092 # 800813f8 <OSIntNesting>
    80000844:	0007c783          	lbu	a5,0(a5)
    80000848:	c385                	beqz	a5,80000868 <OSIntExit+0x4c>
    8000084a:	00081797          	auipc	a5,0x81
    8000084e:	bae78793          	addi	a5,a5,-1106 # 800813f8 <OSIntNesting>
    80000852:	0007c783          	lbu	a5,0(a5)
    80000856:	37fd                	addiw	a5,a5,-1
    80000858:	0ff7f713          	andi	a4,a5,255
    8000085c:	00081797          	auipc	a5,0x81
    80000860:	b9c78793          	addi	a5,a5,-1124 # 800813f8 <OSIntNesting>
    80000864:	00e78023          	sb	a4,0(a5)
    80000868:	00081797          	auipc	a5,0x81
    8000086c:	b9078793          	addi	a5,a5,-1136 # 800813f8 <OSIntNesting>
    80000870:	0007c783          	lbu	a5,0(a5)
    80000874:	e3c9                	bnez	a5,800008f6 <OSIntExit+0xda>
    80000876:	00080797          	auipc	a5,0x80
    8000087a:	c5278793          	addi	a5,a5,-942 # 800804c8 <OSLockNesting>
    8000087e:	0007c783          	lbu	a5,0(a5)
    80000882:	ebb5                	bnez	a5,800008f6 <OSIntExit+0xda>
    80000884:	571000ef          	jal	ra,800015f4 <OS_SchedNew>
    80000888:	00080797          	auipc	a5,0x80
    8000088c:	c5a78793          	addi	a5,a5,-934 # 800804e2 <OSPrioHighRdy>
    80000890:	0007c783          	lbu	a5,0(a5)
    80000894:	2781                	sext.w	a5,a5
    80000896:	00082717          	auipc	a4,0x82
    8000089a:	d8270713          	addi	a4,a4,-638 # 80082618 <OSTCBPrioTbl>
    8000089e:	078e                	slli	a5,a5,0x3
    800008a0:	97ba                	add	a5,a5,a4
    800008a2:	6398                	ld	a4,0(a5)
    800008a4:	00080797          	auipc	a5,0x80
    800008a8:	72c78793          	addi	a5,a5,1836 # 80080fd0 <OSTCBHighRdy>
    800008ac:	e398                	sd	a4,0(a5)
    800008ae:	00080797          	auipc	a5,0x80
    800008b2:	c3478793          	addi	a5,a5,-972 # 800804e2 <OSPrioHighRdy>
    800008b6:	0007c703          	lbu	a4,0(a5)
    800008ba:	00080797          	auipc	a5,0x80
    800008be:	14e78793          	addi	a5,a5,334 # 80080a08 <OSPrioCur>
    800008c2:	0007c783          	lbu	a5,0(a5)
    800008c6:	02f70863          	beq	a4,a5,800008f6 <OSIntExit+0xda>
    800008ca:	00080797          	auipc	a5,0x80
    800008ce:	70678793          	addi	a5,a5,1798 # 80080fd0 <OSTCBHighRdy>
    800008d2:	639c                	ld	a5,0(a5)
    800008d4:	53b8                	lw	a4,96(a5)
    800008d6:	2705                	addiw	a4,a4,1
    800008d8:	2701                	sext.w	a4,a4
    800008da:	d3b8                	sw	a4,96(a5)
    800008dc:	00080797          	auipc	a5,0x80
    800008e0:	60c78793          	addi	a5,a5,1548 # 80080ee8 <OSCtxSwCtr>
    800008e4:	439c                	lw	a5,0(a5)
    800008e6:	2785                	addiw	a5,a5,1
    800008e8:	0007871b          	sext.w	a4,a5
    800008ec:	00080797          	auipc	a5,0x80
    800008f0:	5fc78793          	addi	a5,a5,1532 # 80080ee8 <OSCtxSwCtr>
    800008f4:	c398                	sw	a4,0(a5)
    800008f6:	6522                	ld	a0,8(sp)
    800008f8:	512060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800008fc:	0001                	nop
    800008fe:	60e2                	ld	ra,24(sp)
    80000900:	6105                	addi	sp,sp,32
    80000902:	8082                	ret

0000000080000904 <OSSchedLock>:
    80000904:	1101                	addi	sp,sp,-32
    80000906:	ec06                	sd	ra,24(sp)
    80000908:	e402                	sd	zero,8(sp)
    8000090a:	00080797          	auipc	a5,0x80
    8000090e:	bce78793          	addi	a5,a5,-1074 # 800804d8 <OSRunning>
    80000912:	0007c783          	lbu	a5,0(a5)
    80000916:	873e                	mv	a4,a5
    80000918:	4785                	li	a5,1
    8000091a:	04f71963          	bne	a4,a5,8000096c <OSSchedLock+0x68>
    8000091e:	4e2060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80000922:	e42a                	sd	a0,8(sp)
    80000924:	00081797          	auipc	a5,0x81
    80000928:	ad478793          	addi	a5,a5,-1324 # 800813f8 <OSIntNesting>
    8000092c:	0007c783          	lbu	a5,0(a5)
    80000930:	eb9d                	bnez	a5,80000966 <OSSchedLock+0x62>
    80000932:	00080797          	auipc	a5,0x80
    80000936:	b9678793          	addi	a5,a5,-1130 # 800804c8 <OSLockNesting>
    8000093a:	0007c783          	lbu	a5,0(a5)
    8000093e:	873e                	mv	a4,a5
    80000940:	0ff00793          	li	a5,255
    80000944:	02f70163          	beq	a4,a5,80000966 <OSSchedLock+0x62>
    80000948:	00080797          	auipc	a5,0x80
    8000094c:	b8078793          	addi	a5,a5,-1152 # 800804c8 <OSLockNesting>
    80000950:	0007c783          	lbu	a5,0(a5)
    80000954:	2785                	addiw	a5,a5,1
    80000956:	0ff7f713          	andi	a4,a5,255
    8000095a:	00080797          	auipc	a5,0x80
    8000095e:	b6e78793          	addi	a5,a5,-1170 # 800804c8 <OSLockNesting>
    80000962:	00e78023          	sb	a4,0(a5)
    80000966:	6522                	ld	a0,8(sp)
    80000968:	4a2060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000096c:	0001                	nop
    8000096e:	60e2                	ld	ra,24(sp)
    80000970:	6105                	addi	sp,sp,32
    80000972:	8082                	ret

0000000080000974 <OSSchedUnlock>:
    80000974:	1101                	addi	sp,sp,-32
    80000976:	ec06                	sd	ra,24(sp)
    80000978:	e402                	sd	zero,8(sp)
    8000097a:	00080797          	auipc	a5,0x80
    8000097e:	b5e78793          	addi	a5,a5,-1186 # 800804d8 <OSRunning>
    80000982:	0007c783          	lbu	a5,0(a5)
    80000986:	873e                	mv	a4,a5
    80000988:	4785                	li	a5,1
    8000098a:	06f71a63          	bne	a4,a5,800009fe <OSSchedUnlock+0x8a>
    8000098e:	472060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80000992:	e42a                	sd	a0,8(sp)
    80000994:	00080797          	auipc	a5,0x80
    80000998:	b3478793          	addi	a5,a5,-1228 # 800804c8 <OSLockNesting>
    8000099c:	0007c783          	lbu	a5,0(a5)
    800009a0:	cfa1                	beqz	a5,800009f8 <OSSchedUnlock+0x84>
    800009a2:	00080797          	auipc	a5,0x80
    800009a6:	b2678793          	addi	a5,a5,-1242 # 800804c8 <OSLockNesting>
    800009aa:	0007c783          	lbu	a5,0(a5)
    800009ae:	37fd                	addiw	a5,a5,-1
    800009b0:	0ff7f713          	andi	a4,a5,255
    800009b4:	00080797          	auipc	a5,0x80
    800009b8:	b1478793          	addi	a5,a5,-1260 # 800804c8 <OSLockNesting>
    800009bc:	00e78023          	sb	a4,0(a5)
    800009c0:	00080797          	auipc	a5,0x80
    800009c4:	b0878793          	addi	a5,a5,-1272 # 800804c8 <OSLockNesting>
    800009c8:	0007c783          	lbu	a5,0(a5)
    800009cc:	e395                	bnez	a5,800009f0 <OSSchedUnlock+0x7c>
    800009ce:	00081797          	auipc	a5,0x81
    800009d2:	a2a78793          	addi	a5,a5,-1494 # 800813f8 <OSIntNesting>
    800009d6:	0007c783          	lbu	a5,0(a5)
    800009da:	e799                	bnez	a5,800009e8 <OSSchedUnlock+0x74>
    800009dc:	6522                	ld	a0,8(sp)
    800009de:	42c060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800009e2:	367000ef          	jal	ra,80001548 <OS_Sched>
    800009e6:	a821                	j	800009fe <OSSchedUnlock+0x8a>
    800009e8:	6522                	ld	a0,8(sp)
    800009ea:	420060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800009ee:	a801                	j	800009fe <OSSchedUnlock+0x8a>
    800009f0:	6522                	ld	a0,8(sp)
    800009f2:	418060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800009f6:	a021                	j	800009fe <OSSchedUnlock+0x8a>
    800009f8:	6522                	ld	a0,8(sp)
    800009fa:	410060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800009fe:	0001                	nop
    80000a00:	60e2                	ld	ra,24(sp)
    80000a02:	6105                	addi	sp,sp,32
    80000a04:	8082                	ret

0000000080000a06 <OSStart>:
    80000a06:	1141                	addi	sp,sp,-16
    80000a08:	e406                	sd	ra,8(sp)
    80000a0a:	00080797          	auipc	a5,0x80
    80000a0e:	ace78793          	addi	a5,a5,-1330 # 800804d8 <OSRunning>
    80000a12:	0007c783          	lbu	a5,0(a5)
    80000a16:	efb1                	bnez	a5,80000a72 <OSStart+0x6c>
    80000a18:	3dd000ef          	jal	ra,800015f4 <OS_SchedNew>
    80000a1c:	00080797          	auipc	a5,0x80
    80000a20:	ac678793          	addi	a5,a5,-1338 # 800804e2 <OSPrioHighRdy>
    80000a24:	0007c703          	lbu	a4,0(a5)
    80000a28:	00080797          	auipc	a5,0x80
    80000a2c:	fe078793          	addi	a5,a5,-32 # 80080a08 <OSPrioCur>
    80000a30:	00e78023          	sb	a4,0(a5)
    80000a34:	00080797          	auipc	a5,0x80
    80000a38:	aae78793          	addi	a5,a5,-1362 # 800804e2 <OSPrioHighRdy>
    80000a3c:	0007c783          	lbu	a5,0(a5)
    80000a40:	2781                	sext.w	a5,a5
    80000a42:	00082717          	auipc	a4,0x82
    80000a46:	bd670713          	addi	a4,a4,-1066 # 80082618 <OSTCBPrioTbl>
    80000a4a:	078e                	slli	a5,a5,0x3
    80000a4c:	97ba                	add	a5,a5,a4
    80000a4e:	6398                	ld	a4,0(a5)
    80000a50:	00080797          	auipc	a5,0x80
    80000a54:	58078793          	addi	a5,a5,1408 # 80080fd0 <OSTCBHighRdy>
    80000a58:	e398                	sd	a4,0(a5)
    80000a5a:	00080797          	auipc	a5,0x80
    80000a5e:	57678793          	addi	a5,a5,1398 # 80080fd0 <OSTCBHighRdy>
    80000a62:	6398                	ld	a4,0(a5)
    80000a64:	00081797          	auipc	a5,0x81
    80000a68:	99c78793          	addi	a5,a5,-1636 # 80081400 <OSTCBCur>
    80000a6c:	e398                	sd	a4,0(a5)
    80000a6e:	3a2060ef          	jal	ra,80006e10 <OSStartHighRdy>
    80000a72:	0001                	nop
    80000a74:	60a2                	ld	ra,8(sp)
    80000a76:	0141                	addi	sp,sp,16
    80000a78:	8082                	ret

0000000080000a7a <OSStatInit>:
    80000a7a:	1101                	addi	sp,sp,-32
    80000a7c:	ec06                	sd	ra,24(sp)
    80000a7e:	e402                	sd	zero,8(sp)
    80000a80:	4509                	li	a0,2
    80000a82:	45e050ef          	jal	ra,80005ee0 <OSTimeDly>
    80000a86:	37a060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80000a8a:	e42a                	sd	a0,8(sp)
    80000a8c:	00080797          	auipc	a5,0x80
    80000a90:	a5078793          	addi	a5,a5,-1456 # 800804dc <OSIdleCtr>
    80000a94:	0007a023          	sw	zero,0(a5)
    80000a98:	6522                	ld	a0,8(sp)
    80000a9a:	370060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80000a9e:	4529                	li	a0,10
    80000aa0:	440050ef          	jal	ra,80005ee0 <OSTimeDly>
    80000aa4:	35c060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80000aa8:	e42a                	sd	a0,8(sp)
    80000aaa:	00080797          	auipc	a5,0x80
    80000aae:	a3278793          	addi	a5,a5,-1486 # 800804dc <OSIdleCtr>
    80000ab2:	439c                	lw	a5,0(a5)
    80000ab4:	0007871b          	sext.w	a4,a5
    80000ab8:	00080797          	auipc	a5,0x80
    80000abc:	43878793          	addi	a5,a5,1080 # 80080ef0 <OSIdleCtrMax>
    80000ac0:	c398                	sw	a4,0(a5)
    80000ac2:	00082797          	auipc	a5,0x82
    80000ac6:	b4e78793          	addi	a5,a5,-1202 # 80082610 <OSStatRdy>
    80000aca:	4705                	li	a4,1
    80000acc:	00e78023          	sb	a4,0(a5)
    80000ad0:	6522                	ld	a0,8(sp)
    80000ad2:	338060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80000ad6:	0001                	nop
    80000ad8:	60e2                	ld	ra,24(sp)
    80000ada:	6105                	addi	sp,sp,32
    80000adc:	8082                	ret

0000000080000ade <OSTimeTick>:
    80000ade:	7179                	addi	sp,sp,-48
    80000ae0:	f406                	sd	ra,40(sp)
    80000ae2:	e402                	sd	zero,8(sp)
    80000ae4:	5b4060ef          	jal	ra,80007098 <OSTimeTickHook>
    80000ae8:	318060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80000aec:	e42a                	sd	a0,8(sp)
    80000aee:	00081797          	auipc	a5,0x81
    80000af2:	91e78793          	addi	a5,a5,-1762 # 8008140c <OSTime>
    80000af6:	439c                	lw	a5,0(a5)
    80000af8:	2781                	sext.w	a5,a5
    80000afa:	2785                	addiw	a5,a5,1
    80000afc:	0007871b          	sext.w	a4,a5
    80000b00:	00081797          	auipc	a5,0x81
    80000b04:	90c78793          	addi	a5,a5,-1780 # 8008140c <OSTime>
    80000b08:	c398                	sw	a4,0(a5)
    80000b0a:	6522                	ld	a0,8(sp)
    80000b0c:	2fe060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80000b10:	00080797          	auipc	a5,0x80
    80000b14:	9c878793          	addi	a5,a5,-1592 # 800804d8 <OSRunning>
    80000b18:	0007c783          	lbu	a5,0(a5)
    80000b1c:	873e                	mv	a4,a5
    80000b1e:	4785                	li	a5,1
    80000b20:	14f71963          	bne	a4,a5,80000c72 <OSTimeTick+0x194>
    80000b24:	00080797          	auipc	a5,0x80
    80000b28:	fbc78793          	addi	a5,a5,-68 # 80080ae0 <OSTickStepState>
    80000b2c:	0007c783          	lbu	a5,0(a5)
    80000b30:	2781                	sext.w	a5,a5
    80000b32:	86be                	mv	a3,a5
    80000b34:	4705                	li	a4,1
    80000b36:	00e68b63          	beq	a3,a4,80000b4c <OSTimeTick+0x6e>
    80000b3a:	86be                	mv	a3,a5
    80000b3c:	4709                	li	a4,2
    80000b3e:	00e68a63          	beq	a3,a4,80000b52 <OSTimeTick+0x74>
    80000b42:	e39d                	bnez	a5,80000b68 <OSTimeTick+0x8a>
    80000b44:	4785                	li	a5,1
    80000b46:	00f10ba3          	sb	a5,23(sp)
    80000b4a:	a80d                	j	80000b7c <OSTimeTick+0x9e>
    80000b4c:	00010ba3          	sb	zero,23(sp)
    80000b50:	a035                	j	80000b7c <OSTimeTick+0x9e>
    80000b52:	4785                	li	a5,1
    80000b54:	00f10ba3          	sb	a5,23(sp)
    80000b58:	00080797          	auipc	a5,0x80
    80000b5c:	f8878793          	addi	a5,a5,-120 # 80080ae0 <OSTickStepState>
    80000b60:	4705                	li	a4,1
    80000b62:	00e78023          	sb	a4,0(a5)
    80000b66:	a819                	j	80000b7c <OSTimeTick+0x9e>
    80000b68:	4785                	li	a5,1
    80000b6a:	00f10ba3          	sb	a5,23(sp)
    80000b6e:	00080797          	auipc	a5,0x80
    80000b72:	f7278793          	addi	a5,a5,-142 # 80080ae0 <OSTickStepState>
    80000b76:	00078023          	sb	zero,0(a5)
    80000b7a:	0001                	nop
    80000b7c:	01714783          	lbu	a5,23(sp)
    80000b80:	0ff7f793          	andi	a5,a5,255
    80000b84:	c7f5                	beqz	a5,80000c70 <OSTimeTick+0x192>
    80000b86:	00080797          	auipc	a5,0x80
    80000b8a:	e8a78793          	addi	a5,a5,-374 # 80080a10 <OSTCBList>
    80000b8e:	639c                	ld	a5,0(a5)
    80000b90:	ec3e                	sd	a5,24(sp)
    80000b92:	a0f1                	j	80000c5e <OSTimeTick+0x180>
    80000b94:	26c060ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80000b98:	e42a                	sd	a0,8(sp)
    80000b9a:	67e2                	ld	a5,24(sp)
    80000b9c:	4bfc                	lw	a5,84(a5)
    80000b9e:	cbd5                	beqz	a5,80000c52 <OSTimeTick+0x174>
    80000ba0:	67e2                	ld	a5,24(sp)
    80000ba2:	4bfc                	lw	a5,84(a5)
    80000ba4:	37fd                	addiw	a5,a5,-1
    80000ba6:	0007871b          	sext.w	a4,a5
    80000baa:	67e2                	ld	a5,24(sp)
    80000bac:	cbf8                	sw	a4,84(a5)
    80000bae:	67e2                	ld	a5,24(sp)
    80000bb0:	4bfc                	lw	a5,84(a5)
    80000bb2:	e3c5                	bnez	a5,80000c52 <OSTimeTick+0x174>
    80000bb4:	67e2                	ld	a5,24(sp)
    80000bb6:	0587c783          	lbu	a5,88(a5)
    80000bba:	2781                	sext.w	a5,a5
    80000bbc:	0377f793          	andi	a5,a5,55
    80000bc0:	2781                	sext.w	a5,a5
    80000bc2:	c385                	beqz	a5,80000be2 <OSTimeTick+0x104>
    80000bc4:	67e2                	ld	a5,24(sp)
    80000bc6:	0587c783          	lbu	a5,88(a5)
    80000bca:	fc87f793          	andi	a5,a5,-56
    80000bce:	0ff7f713          	andi	a4,a5,255
    80000bd2:	67e2                	ld	a5,24(sp)
    80000bd4:	04e78c23          	sb	a4,88(a5)
    80000bd8:	67e2                	ld	a5,24(sp)
    80000bda:	4705                	li	a4,1
    80000bdc:	04e78ca3          	sb	a4,89(a5)
    80000be0:	a021                	j	80000be8 <OSTimeTick+0x10a>
    80000be2:	67e2                	ld	a5,24(sp)
    80000be4:	04078ca3          	sb	zero,89(a5)
    80000be8:	67e2                	ld	a5,24(sp)
    80000bea:	0587c783          	lbu	a5,88(a5)
    80000bee:	2781                	sext.w	a5,a5
    80000bf0:	8ba1                	andi	a5,a5,8
    80000bf2:	2781                	sext.w	a5,a5
    80000bf4:	efb9                	bnez	a5,80000c52 <OSTimeTick+0x174>
    80000bf6:	67e2                	ld	a5,24(sp)
    80000bf8:	05e7c703          	lbu	a4,94(a5)
    80000bfc:	00080797          	auipc	a5,0x80
    80000c00:	3e478793          	addi	a5,a5,996 # 80080fe0 <OSRdyGrp>
    80000c04:	0007c783          	lbu	a5,0(a5)
    80000c08:	8fd9                	or	a5,a5,a4
    80000c0a:	0ff7f713          	andi	a4,a5,255
    80000c0e:	00080797          	auipc	a5,0x80
    80000c12:	3d278793          	addi	a5,a5,978 # 80080fe0 <OSRdyGrp>
    80000c16:	00e78023          	sb	a4,0(a5)
    80000c1a:	67e2                	ld	a5,24(sp)
    80000c1c:	05c7c783          	lbu	a5,92(a5)
    80000c20:	2781                	sext.w	a5,a5
    80000c22:	00080717          	auipc	a4,0x80
    80000c26:	3c670713          	addi	a4,a4,966 # 80080fe8 <OSRdyTbl>
    80000c2a:	97ba                	add	a5,a5,a4
    80000c2c:	0007c683          	lbu	a3,0(a5)
    80000c30:	67e2                	ld	a5,24(sp)
    80000c32:	05d7c703          	lbu	a4,93(a5)
    80000c36:	67e2                	ld	a5,24(sp)
    80000c38:	05c7c783          	lbu	a5,92(a5)
    80000c3c:	2781                	sext.w	a5,a5
    80000c3e:	8f55                	or	a4,a4,a3
    80000c40:	0ff77713          	andi	a4,a4,255
    80000c44:	00080697          	auipc	a3,0x80
    80000c48:	3a468693          	addi	a3,a3,932 # 80080fe8 <OSRdyTbl>
    80000c4c:	97b6                	add	a5,a5,a3
    80000c4e:	00e78023          	sb	a4,0(a5)
    80000c52:	67e2                	ld	a5,24(sp)
    80000c54:	739c                	ld	a5,32(a5)
    80000c56:	ec3e                	sd	a5,24(sp)
    80000c58:	6522                	ld	a0,8(sp)
    80000c5a:	1b0060ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80000c5e:	67e2                	ld	a5,24(sp)
    80000c60:	05a7c783          	lbu	a5,90(a5)
    80000c64:	873e                	mv	a4,a5
    80000c66:	03f00793          	li	a5,63
    80000c6a:	f2f715e3          	bne	a4,a5,80000b94 <OSTimeTick+0xb6>
    80000c6e:	a011                	j	80000c72 <OSTimeTick+0x194>
    80000c70:	0001                	nop
    80000c72:	70a2                	ld	ra,40(sp)
    80000c74:	6145                	addi	sp,sp,48
    80000c76:	8082                	ret

0000000080000c78 <OSVersion>:
    80000c78:	12300793          	li	a5,291
    80000c7c:	853e                	mv	a0,a5
    80000c7e:	8082                	ret

0000000080000c80 <OS_Dummy>:
    80000c80:	0001                	nop
    80000c82:	8082                	ret

0000000080000c84 <OS_EventTaskRdy>:
    80000c84:	7139                	addi	sp,sp,-64
    80000c86:	fc06                	sd	ra,56(sp)
    80000c88:	ec2a                	sd	a0,24(sp)
    80000c8a:	e82e                	sd	a1,16(sp)
    80000c8c:	87b2                	mv	a5,a2
    80000c8e:	8736                	mv	a4,a3
    80000c90:	00f107a3          	sb	a5,15(sp)
    80000c94:	87ba                	mv	a5,a4
    80000c96:	00f10723          	sb	a5,14(sp)
    80000c9a:	67e2                	ld	a5,24(sp)
    80000c9c:	0127c783          	lbu	a5,18(a5)
    80000ca0:	2781                	sext.w	a5,a5
    80000ca2:	0007f717          	auipc	a4,0x7f
    80000ca6:	36670713          	addi	a4,a4,870 # 80080008 <OSUnMapTbl>
    80000caa:	97ba                	add	a5,a5,a4
    80000cac:	0007c783          	lbu	a5,0(a5)
    80000cb0:	02f107a3          	sb	a5,47(sp)
    80000cb4:	02f14783          	lbu	a5,47(sp)
    80000cb8:	2781                	sext.w	a5,a5
    80000cba:	6762                	ld	a4,24(sp)
    80000cbc:	97ba                	add	a5,a5,a4
    80000cbe:	0137c783          	lbu	a5,19(a5)
    80000cc2:	2781                	sext.w	a5,a5
    80000cc4:	0007f717          	auipc	a4,0x7f
    80000cc8:	34470713          	addi	a4,a4,836 # 80080008 <OSUnMapTbl>
    80000ccc:	97ba                	add	a5,a5,a4
    80000cce:	0007c783          	lbu	a5,0(a5)
    80000cd2:	02f10723          	sb	a5,46(sp)
    80000cd6:	02f14783          	lbu	a5,47(sp)
    80000cda:	0037979b          	slliw	a5,a5,0x3
    80000cde:	0ff7f793          	andi	a5,a5,255
    80000ce2:	02e14703          	lbu	a4,46(sp)
    80000ce6:	9fb9                	addw	a5,a5,a4
    80000ce8:	02f106a3          	sb	a5,45(sp)
    80000cec:	02d14783          	lbu	a5,45(sp)
    80000cf0:	2781                	sext.w	a5,a5
    80000cf2:	00082717          	auipc	a4,0x82
    80000cf6:	92670713          	addi	a4,a4,-1754 # 80082618 <OSTCBPrioTbl>
    80000cfa:	078e                	slli	a5,a5,0x3
    80000cfc:	97ba                	add	a5,a5,a4
    80000cfe:	639c                	ld	a5,0(a5)
    80000d00:	f03e                	sd	a5,32(sp)
    80000d02:	7782                	ld	a5,32(sp)
    80000d04:	0407aa23          	sw	zero,84(a5)
    80000d08:	7782                	ld	a5,32(sp)
    80000d0a:	6742                	ld	a4,16(sp)
    80000d0c:	e3b8                	sd	a4,64(a5)
    80000d0e:	7782                	ld	a5,32(sp)
    80000d10:	0587c703          	lbu	a4,88(a5)
    80000d14:	00f14783          	lbu	a5,15(sp)
    80000d18:	fff7c793          	not	a5,a5
    80000d1c:	0ff7f793          	andi	a5,a5,255
    80000d20:	8ff9                	and	a5,a5,a4
    80000d22:	0ff7f713          	andi	a4,a5,255
    80000d26:	7782                	ld	a5,32(sp)
    80000d28:	04e78c23          	sb	a4,88(a5)
    80000d2c:	7782                	ld	a5,32(sp)
    80000d2e:	00e14703          	lbu	a4,14(sp)
    80000d32:	04e78ca3          	sb	a4,89(a5)
    80000d36:	7782                	ld	a5,32(sp)
    80000d38:	0587c783          	lbu	a5,88(a5)
    80000d3c:	2781                	sext.w	a5,a5
    80000d3e:	8ba1                	andi	a5,a5,8
    80000d40:	2781                	sext.w	a5,a5
    80000d42:	efa9                	bnez	a5,80000d9c <OS_EventTaskRdy+0x118>
    80000d44:	7782                	ld	a5,32(sp)
    80000d46:	05e7c703          	lbu	a4,94(a5)
    80000d4a:	00080797          	auipc	a5,0x80
    80000d4e:	29678793          	addi	a5,a5,662 # 80080fe0 <OSRdyGrp>
    80000d52:	0007c783          	lbu	a5,0(a5)
    80000d56:	8fd9                	or	a5,a5,a4
    80000d58:	0ff7f713          	andi	a4,a5,255
    80000d5c:	00080797          	auipc	a5,0x80
    80000d60:	28478793          	addi	a5,a5,644 # 80080fe0 <OSRdyGrp>
    80000d64:	00e78023          	sb	a4,0(a5)
    80000d68:	02f14783          	lbu	a5,47(sp)
    80000d6c:	2781                	sext.w	a5,a5
    80000d6e:	00080717          	auipc	a4,0x80
    80000d72:	27a70713          	addi	a4,a4,634 # 80080fe8 <OSRdyTbl>
    80000d76:	97ba                	add	a5,a5,a4
    80000d78:	0007c683          	lbu	a3,0(a5)
    80000d7c:	7782                	ld	a5,32(sp)
    80000d7e:	05d7c703          	lbu	a4,93(a5)
    80000d82:	02f14783          	lbu	a5,47(sp)
    80000d86:	2781                	sext.w	a5,a5
    80000d88:	8f55                	or	a4,a4,a3
    80000d8a:	0ff77713          	andi	a4,a4,255
    80000d8e:	00080697          	auipc	a3,0x80
    80000d92:	25a68693          	addi	a3,a3,602 # 80080fe8 <OSRdyTbl>
    80000d96:	97b6                	add	a5,a5,a3
    80000d98:	00e78023          	sb	a4,0(a5)
    80000d9c:	65e2                	ld	a1,24(sp)
    80000d9e:	7502                	ld	a0,32(sp)
    80000da0:	28a000ef          	jal	ra,8000102a <OS_EventTaskRemove>
    80000da4:	7782                	ld	a5,32(sp)
    80000da6:	7f9c                	ld	a5,56(a5)
    80000da8:	cb91                	beqz	a5,80000dbc <OS_EventTaskRdy+0x138>
    80000daa:	7782                	ld	a5,32(sp)
    80000dac:	7f9c                	ld	a5,56(a5)
    80000dae:	85be                	mv	a1,a5
    80000db0:	7502                	ld	a0,32(sp)
    80000db2:	2ee000ef          	jal	ra,800010a0 <OS_EventTaskRemoveMulti>
    80000db6:	7782                	ld	a5,32(sp)
    80000db8:	6762                	ld	a4,24(sp)
    80000dba:	fb98                	sd	a4,48(a5)
    80000dbc:	02d14783          	lbu	a5,45(sp)
    80000dc0:	853e                	mv	a0,a5
    80000dc2:	70e2                	ld	ra,56(sp)
    80000dc4:	6121                	addi	sp,sp,64
    80000dc6:	8082                	ret

0000000080000dc8 <OS_EventTaskWait>:
    80000dc8:	1101                	addi	sp,sp,-32
    80000dca:	e42a                	sd	a0,8(sp)
    80000dcc:	00080797          	auipc	a5,0x80
    80000dd0:	63478793          	addi	a5,a5,1588 # 80081400 <OSTCBCur>
    80000dd4:	639c                	ld	a5,0(a5)
    80000dd6:	6722                	ld	a4,8(sp)
    80000dd8:	fb98                	sd	a4,48(a5)
    80000dda:	00080797          	auipc	a5,0x80
    80000dde:	62678793          	addi	a5,a5,1574 # 80081400 <OSTCBCur>
    80000de2:	639c                	ld	a5,0(a5)
    80000de4:	05c7c783          	lbu	a5,92(a5)
    80000de8:	2781                	sext.w	a5,a5
    80000dea:	6722                	ld	a4,8(sp)
    80000dec:	97ba                	add	a5,a5,a4
    80000dee:	0137c683          	lbu	a3,19(a5)
    80000df2:	00080797          	auipc	a5,0x80
    80000df6:	60e78793          	addi	a5,a5,1550 # 80081400 <OSTCBCur>
    80000dfa:	639c                	ld	a5,0(a5)
    80000dfc:	05d7c703          	lbu	a4,93(a5)
    80000e00:	00080797          	auipc	a5,0x80
    80000e04:	60078793          	addi	a5,a5,1536 # 80081400 <OSTCBCur>
    80000e08:	639c                	ld	a5,0(a5)
    80000e0a:	05c7c783          	lbu	a5,92(a5)
    80000e0e:	2781                	sext.w	a5,a5
    80000e10:	8f55                	or	a4,a4,a3
    80000e12:	0ff77713          	andi	a4,a4,255
    80000e16:	66a2                	ld	a3,8(sp)
    80000e18:	97b6                	add	a5,a5,a3
    80000e1a:	00e789a3          	sb	a4,19(a5)
    80000e1e:	67a2                	ld	a5,8(sp)
    80000e20:	0127c703          	lbu	a4,18(a5)
    80000e24:	00080797          	auipc	a5,0x80
    80000e28:	5dc78793          	addi	a5,a5,1500 # 80081400 <OSTCBCur>
    80000e2c:	639c                	ld	a5,0(a5)
    80000e2e:	05e7c783          	lbu	a5,94(a5)
    80000e32:	8fd9                	or	a5,a5,a4
    80000e34:	0ff7f713          	andi	a4,a5,255
    80000e38:	67a2                	ld	a5,8(sp)
    80000e3a:	00e78923          	sb	a4,18(a5)
    80000e3e:	00080797          	auipc	a5,0x80
    80000e42:	5c278793          	addi	a5,a5,1474 # 80081400 <OSTCBCur>
    80000e46:	639c                	ld	a5,0(a5)
    80000e48:	05c7c783          	lbu	a5,92(a5)
    80000e4c:	00f10fa3          	sb	a5,31(sp)
    80000e50:	01f14783          	lbu	a5,31(sp)
    80000e54:	2781                	sext.w	a5,a5
    80000e56:	00080717          	auipc	a4,0x80
    80000e5a:	19270713          	addi	a4,a4,402 # 80080fe8 <OSRdyTbl>
    80000e5e:	97ba                	add	a5,a5,a4
    80000e60:	0007c683          	lbu	a3,0(a5)
    80000e64:	00080797          	auipc	a5,0x80
    80000e68:	59c78793          	addi	a5,a5,1436 # 80081400 <OSTCBCur>
    80000e6c:	639c                	ld	a5,0(a5)
    80000e6e:	05d7c783          	lbu	a5,93(a5)
    80000e72:	fff7c793          	not	a5,a5
    80000e76:	0ff7f713          	andi	a4,a5,255
    80000e7a:	01f14783          	lbu	a5,31(sp)
    80000e7e:	2781                	sext.w	a5,a5
    80000e80:	8f75                	and	a4,a4,a3
    80000e82:	0ff77713          	andi	a4,a4,255
    80000e86:	00080697          	auipc	a3,0x80
    80000e8a:	16268693          	addi	a3,a3,354 # 80080fe8 <OSRdyTbl>
    80000e8e:	97b6                	add	a5,a5,a3
    80000e90:	00e78023          	sb	a4,0(a5)
    80000e94:	01f14783          	lbu	a5,31(sp)
    80000e98:	2781                	sext.w	a5,a5
    80000e9a:	00080717          	auipc	a4,0x80
    80000e9e:	14e70713          	addi	a4,a4,334 # 80080fe8 <OSRdyTbl>
    80000ea2:	97ba                	add	a5,a5,a4
    80000ea4:	0007c783          	lbu	a5,0(a5)
    80000ea8:	eb9d                	bnez	a5,80000ede <OS_EventTaskWait+0x116>
    80000eaa:	00080797          	auipc	a5,0x80
    80000eae:	55678793          	addi	a5,a5,1366 # 80081400 <OSTCBCur>
    80000eb2:	639c                	ld	a5,0(a5)
    80000eb4:	05e7c783          	lbu	a5,94(a5)
    80000eb8:	fff7c793          	not	a5,a5
    80000ebc:	0ff7f713          	andi	a4,a5,255
    80000ec0:	00080797          	auipc	a5,0x80
    80000ec4:	12078793          	addi	a5,a5,288 # 80080fe0 <OSRdyGrp>
    80000ec8:	0007c783          	lbu	a5,0(a5)
    80000ecc:	8ff9                	and	a5,a5,a4
    80000ece:	0ff7f713          	andi	a4,a5,255
    80000ed2:	00080797          	auipc	a5,0x80
    80000ed6:	10e78793          	addi	a5,a5,270 # 80080fe0 <OSRdyGrp>
    80000eda:	00e78023          	sb	a4,0(a5)
    80000ede:	0001                	nop
    80000ee0:	6105                	addi	sp,sp,32
    80000ee2:	8082                	ret

0000000080000ee4 <OS_EventTaskWaitMulti>:
    80000ee4:	7179                	addi	sp,sp,-48
    80000ee6:	e42a                	sd	a0,8(sp)
    80000ee8:	00080797          	auipc	a5,0x80
    80000eec:	51878793          	addi	a5,a5,1304 # 80081400 <OSTCBCur>
    80000ef0:	639c                	ld	a5,0(a5)
    80000ef2:	0207b823          	sd	zero,48(a5)
    80000ef6:	00080797          	auipc	a5,0x80
    80000efa:	50a78793          	addi	a5,a5,1290 # 80081400 <OSTCBCur>
    80000efe:	639c                	ld	a5,0(a5)
    80000f00:	6722                	ld	a4,8(sp)
    80000f02:	ff98                	sd	a4,56(a5)
    80000f04:	67a2                	ld	a5,8(sp)
    80000f06:	f43e                	sd	a5,40(sp)
    80000f08:	77a2                	ld	a5,40(sp)
    80000f0a:	639c                	ld	a5,0(a5)
    80000f0c:	f03e                	sd	a5,32(sp)
    80000f0e:	a88d                	j	80000f80 <OS_EventTaskWaitMulti+0x9c>
    80000f10:	00080797          	auipc	a5,0x80
    80000f14:	4f078793          	addi	a5,a5,1264 # 80081400 <OSTCBCur>
    80000f18:	639c                	ld	a5,0(a5)
    80000f1a:	05c7c783          	lbu	a5,92(a5)
    80000f1e:	2781                	sext.w	a5,a5
    80000f20:	7702                	ld	a4,32(sp)
    80000f22:	97ba                	add	a5,a5,a4
    80000f24:	0137c683          	lbu	a3,19(a5)
    80000f28:	00080797          	auipc	a5,0x80
    80000f2c:	4d878793          	addi	a5,a5,1240 # 80081400 <OSTCBCur>
    80000f30:	639c                	ld	a5,0(a5)
    80000f32:	05d7c703          	lbu	a4,93(a5)
    80000f36:	00080797          	auipc	a5,0x80
    80000f3a:	4ca78793          	addi	a5,a5,1226 # 80081400 <OSTCBCur>
    80000f3e:	639c                	ld	a5,0(a5)
    80000f40:	05c7c783          	lbu	a5,92(a5)
    80000f44:	2781                	sext.w	a5,a5
    80000f46:	8f55                	or	a4,a4,a3
    80000f48:	0ff77713          	andi	a4,a4,255
    80000f4c:	7682                	ld	a3,32(sp)
    80000f4e:	97b6                	add	a5,a5,a3
    80000f50:	00e789a3          	sb	a4,19(a5)
    80000f54:	7782                	ld	a5,32(sp)
    80000f56:	0127c703          	lbu	a4,18(a5)
    80000f5a:	00080797          	auipc	a5,0x80
    80000f5e:	4a678793          	addi	a5,a5,1190 # 80081400 <OSTCBCur>
    80000f62:	639c                	ld	a5,0(a5)
    80000f64:	05e7c783          	lbu	a5,94(a5)
    80000f68:	8fd9                	or	a5,a5,a4
    80000f6a:	0ff7f713          	andi	a4,a5,255
    80000f6e:	7782                	ld	a5,32(sp)
    80000f70:	00e78923          	sb	a4,18(a5)
    80000f74:	77a2                	ld	a5,40(sp)
    80000f76:	07a1                	addi	a5,a5,8
    80000f78:	f43e                	sd	a5,40(sp)
    80000f7a:	77a2                	ld	a5,40(sp)
    80000f7c:	639c                	ld	a5,0(a5)
    80000f7e:	f03e                	sd	a5,32(sp)
    80000f80:	7782                	ld	a5,32(sp)
    80000f82:	f7d9                	bnez	a5,80000f10 <OS_EventTaskWaitMulti+0x2c>
    80000f84:	00080797          	auipc	a5,0x80
    80000f88:	47c78793          	addi	a5,a5,1148 # 80081400 <OSTCBCur>
    80000f8c:	639c                	ld	a5,0(a5)
    80000f8e:	05c7c783          	lbu	a5,92(a5)
    80000f92:	00f10fa3          	sb	a5,31(sp)
    80000f96:	01f14783          	lbu	a5,31(sp)
    80000f9a:	2781                	sext.w	a5,a5
    80000f9c:	00080717          	auipc	a4,0x80
    80000fa0:	04c70713          	addi	a4,a4,76 # 80080fe8 <OSRdyTbl>
    80000fa4:	97ba                	add	a5,a5,a4
    80000fa6:	0007c683          	lbu	a3,0(a5)
    80000faa:	00080797          	auipc	a5,0x80
    80000fae:	45678793          	addi	a5,a5,1110 # 80081400 <OSTCBCur>
    80000fb2:	639c                	ld	a5,0(a5)
    80000fb4:	05d7c783          	lbu	a5,93(a5)
    80000fb8:	fff7c793          	not	a5,a5
    80000fbc:	0ff7f713          	andi	a4,a5,255
    80000fc0:	01f14783          	lbu	a5,31(sp)
    80000fc4:	2781                	sext.w	a5,a5
    80000fc6:	8f75                	and	a4,a4,a3
    80000fc8:	0ff77713          	andi	a4,a4,255
    80000fcc:	00080697          	auipc	a3,0x80
    80000fd0:	01c68693          	addi	a3,a3,28 # 80080fe8 <OSRdyTbl>
    80000fd4:	97b6                	add	a5,a5,a3
    80000fd6:	00e78023          	sb	a4,0(a5)
    80000fda:	01f14783          	lbu	a5,31(sp)
    80000fde:	2781                	sext.w	a5,a5
    80000fe0:	00080717          	auipc	a4,0x80
    80000fe4:	00870713          	addi	a4,a4,8 # 80080fe8 <OSRdyTbl>
    80000fe8:	97ba                	add	a5,a5,a4
    80000fea:	0007c783          	lbu	a5,0(a5)
    80000fee:	eb9d                	bnez	a5,80001024 <OS_EventTaskWaitMulti+0x140>
    80000ff0:	00080797          	auipc	a5,0x80
    80000ff4:	41078793          	addi	a5,a5,1040 # 80081400 <OSTCBCur>
    80000ff8:	639c                	ld	a5,0(a5)
    80000ffa:	05e7c783          	lbu	a5,94(a5)
    80000ffe:	fff7c793          	not	a5,a5
    80001002:	0ff7f713          	andi	a4,a5,255
    80001006:	00080797          	auipc	a5,0x80
    8000100a:	fda78793          	addi	a5,a5,-38 # 80080fe0 <OSRdyGrp>
    8000100e:	0007c783          	lbu	a5,0(a5)
    80001012:	8ff9                	and	a5,a5,a4
    80001014:	0ff7f713          	andi	a4,a5,255
    80001018:	00080797          	auipc	a5,0x80
    8000101c:	fc878793          	addi	a5,a5,-56 # 80080fe0 <OSRdyGrp>
    80001020:	00e78023          	sb	a4,0(a5)
    80001024:	0001                	nop
    80001026:	6145                	addi	sp,sp,48
    80001028:	8082                	ret

000000008000102a <OS_EventTaskRemove>:
    8000102a:	1101                	addi	sp,sp,-32
    8000102c:	e42a                	sd	a0,8(sp)
    8000102e:	e02e                	sd	a1,0(sp)
    80001030:	67a2                	ld	a5,8(sp)
    80001032:	05c7c783          	lbu	a5,92(a5)
    80001036:	00f10fa3          	sb	a5,31(sp)
    8000103a:	01f14783          	lbu	a5,31(sp)
    8000103e:	2781                	sext.w	a5,a5
    80001040:	6702                	ld	a4,0(sp)
    80001042:	97ba                	add	a5,a5,a4
    80001044:	0137c683          	lbu	a3,19(a5)
    80001048:	67a2                	ld	a5,8(sp)
    8000104a:	05d7c783          	lbu	a5,93(a5)
    8000104e:	fff7c793          	not	a5,a5
    80001052:	0ff7f713          	andi	a4,a5,255
    80001056:	01f14783          	lbu	a5,31(sp)
    8000105a:	2781                	sext.w	a5,a5
    8000105c:	8f75                	and	a4,a4,a3
    8000105e:	0ff77713          	andi	a4,a4,255
    80001062:	6682                	ld	a3,0(sp)
    80001064:	97b6                	add	a5,a5,a3
    80001066:	00e789a3          	sb	a4,19(a5)
    8000106a:	01f14783          	lbu	a5,31(sp)
    8000106e:	2781                	sext.w	a5,a5
    80001070:	6702                	ld	a4,0(sp)
    80001072:	97ba                	add	a5,a5,a4
    80001074:	0137c783          	lbu	a5,19(a5)
    80001078:	e38d                	bnez	a5,8000109a <OS_EventTaskRemove+0x70>
    8000107a:	6782                	ld	a5,0(sp)
    8000107c:	0127c703          	lbu	a4,18(a5)
    80001080:	67a2                	ld	a5,8(sp)
    80001082:	05e7c783          	lbu	a5,94(a5)
    80001086:	fff7c793          	not	a5,a5
    8000108a:	0ff7f793          	andi	a5,a5,255
    8000108e:	8ff9                	and	a5,a5,a4
    80001090:	0ff7f713          	andi	a4,a5,255
    80001094:	6782                	ld	a5,0(sp)
    80001096:	00e78923          	sb	a4,18(a5)
    8000109a:	0001                	nop
    8000109c:	6105                	addi	sp,sp,32
    8000109e:	8082                	ret

00000000800010a0 <OS_EventTaskRemoveMulti>:
    800010a0:	7179                	addi	sp,sp,-48
    800010a2:	e42a                	sd	a0,8(sp)
    800010a4:	e02e                	sd	a1,0(sp)
    800010a6:	67a2                	ld	a5,8(sp)
    800010a8:	05c7c783          	lbu	a5,92(a5)
    800010ac:	00f10fa3          	sb	a5,31(sp)
    800010b0:	67a2                	ld	a5,8(sp)
    800010b2:	05e7c783          	lbu	a5,94(a5)
    800010b6:	00f10f23          	sb	a5,30(sp)
    800010ba:	67a2                	ld	a5,8(sp)
    800010bc:	05d7c783          	lbu	a5,93(a5)
    800010c0:	00f10ea3          	sb	a5,29(sp)
    800010c4:	6782                	ld	a5,0(sp)
    800010c6:	f43e                	sd	a5,40(sp)
    800010c8:	77a2                	ld	a5,40(sp)
    800010ca:	639c                	ld	a5,0(a5)
    800010cc:	f03e                	sd	a5,32(sp)
    800010ce:	a0ad                	j	80001138 <OS_EventTaskRemoveMulti+0x98>
    800010d0:	01f14783          	lbu	a5,31(sp)
    800010d4:	2781                	sext.w	a5,a5
    800010d6:	7702                	ld	a4,32(sp)
    800010d8:	97ba                	add	a5,a5,a4
    800010da:	0137c683          	lbu	a3,19(a5)
    800010de:	01d14783          	lbu	a5,29(sp)
    800010e2:	fff7c793          	not	a5,a5
    800010e6:	0ff7f713          	andi	a4,a5,255
    800010ea:	01f14783          	lbu	a5,31(sp)
    800010ee:	2781                	sext.w	a5,a5
    800010f0:	8f75                	and	a4,a4,a3
    800010f2:	0ff77713          	andi	a4,a4,255
    800010f6:	7682                	ld	a3,32(sp)
    800010f8:	97b6                	add	a5,a5,a3
    800010fa:	00e789a3          	sb	a4,19(a5)
    800010fe:	01f14783          	lbu	a5,31(sp)
    80001102:	2781                	sext.w	a5,a5
    80001104:	7702                	ld	a4,32(sp)
    80001106:	97ba                	add	a5,a5,a4
    80001108:	0137c783          	lbu	a5,19(a5)
    8000110c:	e385                	bnez	a5,8000112c <OS_EventTaskRemoveMulti+0x8c>
    8000110e:	7782                	ld	a5,32(sp)
    80001110:	0127c703          	lbu	a4,18(a5)
    80001114:	01e14783          	lbu	a5,30(sp)
    80001118:	fff7c793          	not	a5,a5
    8000111c:	0ff7f793          	andi	a5,a5,255
    80001120:	8ff9                	and	a5,a5,a4
    80001122:	0ff7f713          	andi	a4,a5,255
    80001126:	7782                	ld	a5,32(sp)
    80001128:	00e78923          	sb	a4,18(a5)
    8000112c:	77a2                	ld	a5,40(sp)
    8000112e:	07a1                	addi	a5,a5,8
    80001130:	f43e                	sd	a5,40(sp)
    80001132:	77a2                	ld	a5,40(sp)
    80001134:	639c                	ld	a5,0(a5)
    80001136:	f03e                	sd	a5,32(sp)
    80001138:	7782                	ld	a5,32(sp)
    8000113a:	fbd9                	bnez	a5,800010d0 <OS_EventTaskRemoveMulti+0x30>
    8000113c:	0001                	nop
    8000113e:	6145                	addi	sp,sp,48
    80001140:	8082                	ret

0000000080001142 <OS_EventWaitListInit>:
    80001142:	1101                	addi	sp,sp,-32
    80001144:	e42a                	sd	a0,8(sp)
    80001146:	67a2                	ld	a5,8(sp)
    80001148:	00078923          	sb	zero,18(a5)
    8000114c:	00010fa3          	sb	zero,31(sp)
    80001150:	a829                	j	8000116a <OS_EventWaitListInit+0x28>
    80001152:	01f14783          	lbu	a5,31(sp)
    80001156:	2781                	sext.w	a5,a5
    80001158:	6722                	ld	a4,8(sp)
    8000115a:	97ba                	add	a5,a5,a4
    8000115c:	000789a3          	sb	zero,19(a5)
    80001160:	01f14783          	lbu	a5,31(sp)
    80001164:	2785                	addiw	a5,a5,1
    80001166:	00f10fa3          	sb	a5,31(sp)
    8000116a:	01f14783          	lbu	a5,31(sp)
    8000116e:	0ff7f713          	andi	a4,a5,255
    80001172:	479d                	li	a5,7
    80001174:	fce7ffe3          	bleu	a4,a5,80001152 <OS_EventWaitListInit+0x10>
    80001178:	0001                	nop
    8000117a:	6105                	addi	sp,sp,32
    8000117c:	8082                	ret

000000008000117e <OS_InitEventList>:
    8000117e:	7179                	addi	sp,sp,-48
    80001180:	f406                	sd	ra,40(sp)
    80001182:	19000593          	li	a1,400
    80001186:	00080517          	auipc	a0,0x80
    8000118a:	69250513          	addi	a0,a0,1682 # 80081818 <OSEventTbl>
    8000118e:	34c000ef          	jal	ra,800014da <OS_MemClr>
    80001192:	00011f23          	sh	zero,30(sp)
    80001196:	a09d                	j	800011fc <OS_InitEventList+0x7e>
    80001198:	01e15783          	lhu	a5,30(sp)
    8000119c:	2785                	addiw	a5,a5,1
    8000119e:	00f11723          	sh	a5,14(sp)
    800011a2:	01e15783          	lhu	a5,30(sp)
    800011a6:	0007871b          	sext.w	a4,a5
    800011aa:	87ba                	mv	a5,a4
    800011ac:	078a                	slli	a5,a5,0x2
    800011ae:	97ba                	add	a5,a5,a4
    800011b0:	078e                	slli	a5,a5,0x3
    800011b2:	00080717          	auipc	a4,0x80
    800011b6:	66670713          	addi	a4,a4,1638 # 80081818 <OSEventTbl>
    800011ba:	97ba                	add	a5,a5,a4
    800011bc:	e83e                	sd	a5,16(sp)
    800011be:	00e15783          	lhu	a5,14(sp)
    800011c2:	0007871b          	sext.w	a4,a5
    800011c6:	87ba                	mv	a5,a4
    800011c8:	078a                	slli	a5,a5,0x2
    800011ca:	97ba                	add	a5,a5,a4
    800011cc:	078e                	slli	a5,a5,0x3
    800011ce:	00080717          	auipc	a4,0x80
    800011d2:	64a70713          	addi	a4,a4,1610 # 80081818 <OSEventTbl>
    800011d6:	97ba                	add	a5,a5,a4
    800011d8:	e03e                	sd	a5,0(sp)
    800011da:	67c2                	ld	a5,16(sp)
    800011dc:	00078023          	sb	zero,0(a5)
    800011e0:	67c2                	ld	a5,16(sp)
    800011e2:	6702                	ld	a4,0(sp)
    800011e4:	e798                	sd	a4,8(a5)
    800011e6:	67c2                	ld	a5,16(sp)
    800011e8:	0007f717          	auipc	a4,0x7f
    800011ec:	f2070713          	addi	a4,a4,-224 # 80080108 <OSUnMapTbl+0x100>
    800011f0:	f398                	sd	a4,32(a5)
    800011f2:	01e15783          	lhu	a5,30(sp)
    800011f6:	2785                	addiw	a5,a5,1
    800011f8:	00f11f23          	sh	a5,30(sp)
    800011fc:	01e15783          	lhu	a5,30(sp)
    80001200:	0007871b          	sext.w	a4,a5
    80001204:	47a1                	li	a5,8
    80001206:	f8e7f9e3          	bleu	a4,a5,80001198 <OS_InitEventList+0x1a>
    8000120a:	01e15783          	lhu	a5,30(sp)
    8000120e:	0007871b          	sext.w	a4,a5
    80001212:	87ba                	mv	a5,a4
    80001214:	078a                	slli	a5,a5,0x2
    80001216:	97ba                	add	a5,a5,a4
    80001218:	078e                	slli	a5,a5,0x3
    8000121a:	00080717          	auipc	a4,0x80
    8000121e:	5fe70713          	addi	a4,a4,1534 # 80081818 <OSEventTbl>
    80001222:	97ba                	add	a5,a5,a4
    80001224:	e83e                	sd	a5,16(sp)
    80001226:	67c2                	ld	a5,16(sp)
    80001228:	00078023          	sb	zero,0(a5)
    8000122c:	67c2                	ld	a5,16(sp)
    8000122e:	0007b423          	sd	zero,8(a5)
    80001232:	67c2                	ld	a5,16(sp)
    80001234:	0007f717          	auipc	a4,0x7f
    80001238:	ed470713          	addi	a4,a4,-300 # 80080108 <OSUnMapTbl+0x100>
    8000123c:	f398                	sd	a4,32(a5)
    8000123e:	00080797          	auipc	a5,0x80
    80001242:	1b278793          	addi	a5,a5,434 # 800813f0 <OSEventFreeList>
    80001246:	00080717          	auipc	a4,0x80
    8000124a:	5d270713          	addi	a4,a4,1490 # 80081818 <OSEventTbl>
    8000124e:	e398                	sd	a4,0(a5)
    80001250:	0001                	nop
    80001252:	70a2                	ld	ra,40(sp)
    80001254:	6145                	addi	sp,sp,48
    80001256:	8082                	ret

0000000080001258 <OS_InitMisc>:
    80001258:	00080797          	auipc	a5,0x80
    8000125c:	1b478793          	addi	a5,a5,436 # 8008140c <OSTime>
    80001260:	0007a023          	sw	zero,0(a5)
    80001264:	00080797          	auipc	a5,0x80
    80001268:	19478793          	addi	a5,a5,404 # 800813f8 <OSIntNesting>
    8000126c:	00078023          	sb	zero,0(a5)
    80001270:	0007f797          	auipc	a5,0x7f
    80001274:	25878793          	addi	a5,a5,600 # 800804c8 <OSLockNesting>
    80001278:	00078023          	sb	zero,0(a5)
    8000127c:	00080797          	auipc	a5,0x80
    80001280:	c8578793          	addi	a5,a5,-891 # 80080f01 <OSTaskCtr>
    80001284:	00078023          	sb	zero,0(a5)
    80001288:	0007f797          	auipc	a5,0x7f
    8000128c:	25078793          	addi	a5,a5,592 # 800804d8 <OSRunning>
    80001290:	00078023          	sb	zero,0(a5)
    80001294:	00080797          	auipc	a5,0x80
    80001298:	c5478793          	addi	a5,a5,-940 # 80080ee8 <OSCtxSwCtr>
    8000129c:	0007a023          	sw	zero,0(a5)
    800012a0:	0007f797          	auipc	a5,0x7f
    800012a4:	23c78793          	addi	a5,a5,572 # 800804dc <OSIdleCtr>
    800012a8:	0007a023          	sw	zero,0(a5)
    800012ac:	00081797          	auipc	a5,0x81
    800012b0:	56c78793          	addi	a5,a5,1388 # 80082818 <OSIdleCtrRun>
    800012b4:	0007a023          	sw	zero,0(a5)
    800012b8:	00080797          	auipc	a5,0x80
    800012bc:	c3878793          	addi	a5,a5,-968 # 80080ef0 <OSIdleCtrMax>
    800012c0:	0007a023          	sw	zero,0(a5)
    800012c4:	00081797          	auipc	a5,0x81
    800012c8:	34c78793          	addi	a5,a5,844 # 80082610 <OSStatRdy>
    800012cc:	00078023          	sb	zero,0(a5)
    800012d0:	0001                	nop
    800012d2:	8082                	ret

00000000800012d4 <OS_InitRdyList>:
    800012d4:	1141                	addi	sp,sp,-16
    800012d6:	00080797          	auipc	a5,0x80
    800012da:	d0a78793          	addi	a5,a5,-758 # 80080fe0 <OSRdyGrp>
    800012de:	00078023          	sb	zero,0(a5)
    800012e2:	000107a3          	sb	zero,15(sp)
    800012e6:	a005                	j	80001306 <OS_InitRdyList+0x32>
    800012e8:	00f14783          	lbu	a5,15(sp)
    800012ec:	2781                	sext.w	a5,a5
    800012ee:	00080717          	auipc	a4,0x80
    800012f2:	cfa70713          	addi	a4,a4,-774 # 80080fe8 <OSRdyTbl>
    800012f6:	97ba                	add	a5,a5,a4
    800012f8:	00078023          	sb	zero,0(a5)
    800012fc:	00f14783          	lbu	a5,15(sp)
    80001300:	2785                	addiw	a5,a5,1
    80001302:	00f107a3          	sb	a5,15(sp)
    80001306:	00f14783          	lbu	a5,15(sp)
    8000130a:	0ff7f713          	andi	a4,a5,255
    8000130e:	479d                	li	a5,7
    80001310:	fce7fce3          	bleu	a4,a5,800012e8 <OS_InitRdyList+0x14>
    80001314:	0007f797          	auipc	a5,0x7f
    80001318:	6f478793          	addi	a5,a5,1780 # 80080a08 <OSPrioCur>
    8000131c:	00078023          	sb	zero,0(a5)
    80001320:	0007f797          	auipc	a5,0x7f
    80001324:	1c278793          	addi	a5,a5,450 # 800804e2 <OSPrioHighRdy>
    80001328:	00078023          	sb	zero,0(a5)
    8000132c:	00080797          	auipc	a5,0x80
    80001330:	ca478793          	addi	a5,a5,-860 # 80080fd0 <OSTCBHighRdy>
    80001334:	0007b023          	sd	zero,0(a5)
    80001338:	00080797          	auipc	a5,0x80
    8000133c:	0c878793          	addi	a5,a5,200 # 80081400 <OSTCBCur>
    80001340:	0007b023          	sd	zero,0(a5)
    80001344:	0001                	nop
    80001346:	0141                	addi	sp,sp,16
    80001348:	8082                	ret

000000008000134a <OS_InitTaskIdle>:
    8000134a:	7179                	addi	sp,sp,-48
    8000134c:	f406                	sd	ra,40(sp)
    8000134e:	478d                	li	a5,3
    80001350:	e03e                	sd	a5,0(sp)
    80001352:	4881                	li	a7,0
    80001354:	08000813          	li	a6,128
    80001358:	00080797          	auipc	a5,0x80
    8000135c:	0c078793          	addi	a5,a5,192 # 80081418 <OSTaskIdleStk>
    80001360:	6741                	lui	a4,0x10
    80001362:	177d                	addi	a4,a4,-1
    80001364:	03f00693          	li	a3,63
    80001368:	00080617          	auipc	a2,0x80
    8000136c:	4a860613          	addi	a2,a2,1192 # 80081810 <OSTaskIdleStk+0x3f8>
    80001370:	4581                	li	a1,0
    80001372:	00000517          	auipc	a0,0x0
    80001376:	31850513          	addi	a0,a0,792 # 8000168a <OS_TaskIdle>
    8000137a:	04a040ef          	jal	ra,800053c4 <OSTaskCreateExt>
    8000137e:	01f10793          	addi	a5,sp,31
    80001382:	863e                	mv	a2,a5
    80001384:	0007f597          	auipc	a1,0x7f
    80001388:	d8c58593          	addi	a1,a1,-628 # 80080110 <OSUnMapTbl+0x108>
    8000138c:	03f00513          	li	a0,63
    80001390:	554040ef          	jal	ra,800058e4 <OSTaskNameSet>
    80001394:	0001                	nop
    80001396:	70a2                	ld	ra,40(sp)
    80001398:	6145                	addi	sp,sp,48
    8000139a:	8082                	ret

000000008000139c <OS_InitTaskStat>:
    8000139c:	7179                	addi	sp,sp,-48
    8000139e:	f406                	sd	ra,40(sp)
    800013a0:	478d                	li	a5,3
    800013a2:	e03e                	sd	a5,0(sp)
    800013a4:	4881                	li	a7,0
    800013a6:	08000813          	li	a6,128
    800013aa:	0007f797          	auipc	a5,0x7f
    800013ae:	73e78793          	addi	a5,a5,1854 # 80080ae8 <OSTaskStatStk>
    800013b2:	6741                	lui	a4,0x10
    800013b4:	1779                	addi	a4,a4,-2
    800013b6:	03e00693          	li	a3,62
    800013ba:	00080617          	auipc	a2,0x80
    800013be:	b2660613          	addi	a2,a2,-1242 # 80080ee0 <_gp+0x378>
    800013c2:	4581                	li	a1,0
    800013c4:	00000517          	auipc	a0,0x0
    800013c8:	2fc50513          	addi	a0,a0,764 # 800016c0 <OS_TaskStat>
    800013cc:	7f9030ef          	jal	ra,800053c4 <OSTaskCreateExt>
    800013d0:	01f10793          	addi	a5,sp,31
    800013d4:	863e                	mv	a2,a5
    800013d6:	0007f597          	auipc	a1,0x7f
    800013da:	d4a58593          	addi	a1,a1,-694 # 80080120 <OSUnMapTbl+0x118>
    800013de:	03e00513          	li	a0,62
    800013e2:	502040ef          	jal	ra,800058e4 <OSTaskNameSet>
    800013e6:	0001                	nop
    800013e8:	70a2                	ld	ra,40(sp)
    800013ea:	6145                	addi	sp,sp,48
    800013ec:	8082                	ret

00000000800013ee <OS_InitTCBList>:
    800013ee:	7179                	addi	sp,sp,-48
    800013f0:	f406                	sd	ra,40(sp)
    800013f2:	6785                	lui	a5,0x1
    800013f4:	c6078593          	addi	a1,a5,-928 # c60 <RISCV_MIE_MSIE+0xc58>
    800013f8:	00080517          	auipc	a0,0x80
    800013fc:	5b050513          	addi	a0,a0,1456 # 800819a8 <OSTCBTbl>
    80001400:	0da000ef          	jal	ra,800014da <OS_MemClr>
    80001404:	20000593          	li	a1,512
    80001408:	00081517          	auipc	a0,0x81
    8000140c:	21050513          	addi	a0,a0,528 # 80082618 <OSTCBPrioTbl>
    80001410:	0ca000ef          	jal	ra,800014da <OS_MemClr>
    80001414:	00010fa3          	sb	zero,31(sp)
    80001418:	a085                	j	80001478 <OS_InitTCBList+0x8a>
    8000141a:	01f14783          	lbu	a5,31(sp)
    8000141e:	2785                	addiw	a5,a5,1
    80001420:	00f107a3          	sb	a5,15(sp)
    80001424:	01f14783          	lbu	a5,31(sp)
    80001428:	0007871b          	sext.w	a4,a5
    8000142c:	87ba                	mv	a5,a4
    8000142e:	078e                	slli	a5,a5,0x3
    80001430:	97ba                	add	a5,a5,a4
    80001432:	0792                	slli	a5,a5,0x4
    80001434:	00080717          	auipc	a4,0x80
    80001438:	57470713          	addi	a4,a4,1396 # 800819a8 <OSTCBTbl>
    8000143c:	97ba                	add	a5,a5,a4
    8000143e:	e83e                	sd	a5,16(sp)
    80001440:	00f14783          	lbu	a5,15(sp)
    80001444:	0007871b          	sext.w	a4,a5
    80001448:	87ba                	mv	a5,a4
    8000144a:	078e                	slli	a5,a5,0x3
    8000144c:	97ba                	add	a5,a5,a4
    8000144e:	0792                	slli	a5,a5,0x4
    80001450:	00080717          	auipc	a4,0x80
    80001454:	55870713          	addi	a4,a4,1368 # 800819a8 <OSTCBTbl>
    80001458:	97ba                	add	a5,a5,a4
    8000145a:	e03e                	sd	a5,0(sp)
    8000145c:	67c2                	ld	a5,16(sp)
    8000145e:	6702                	ld	a4,0(sp)
    80001460:	f398                	sd	a4,32(a5)
    80001462:	67c2                	ld	a5,16(sp)
    80001464:	0007f717          	auipc	a4,0x7f
    80001468:	ca470713          	addi	a4,a4,-860 # 80080108 <OSUnMapTbl+0x100>
    8000146c:	e3d8                	sd	a4,128(a5)
    8000146e:	01f14783          	lbu	a5,31(sp)
    80001472:	2785                	addiw	a5,a5,1
    80001474:	00f10fa3          	sb	a5,31(sp)
    80001478:	01f14783          	lbu	a5,31(sp)
    8000147c:	0ff7f713          	andi	a4,a5,255
    80001480:	47d1                	li	a5,20
    80001482:	f8e7fce3          	bleu	a4,a5,8000141a <OS_InitTCBList+0x2c>
    80001486:	01f14783          	lbu	a5,31(sp)
    8000148a:	0007871b          	sext.w	a4,a5
    8000148e:	87ba                	mv	a5,a4
    80001490:	078e                	slli	a5,a5,0x3
    80001492:	97ba                	add	a5,a5,a4
    80001494:	0792                	slli	a5,a5,0x4
    80001496:	00080717          	auipc	a4,0x80
    8000149a:	51270713          	addi	a4,a4,1298 # 800819a8 <OSTCBTbl>
    8000149e:	97ba                	add	a5,a5,a4
    800014a0:	e83e                	sd	a5,16(sp)
    800014a2:	67c2                	ld	a5,16(sp)
    800014a4:	0207b023          	sd	zero,32(a5)
    800014a8:	67c2                	ld	a5,16(sp)
    800014aa:	0007f717          	auipc	a4,0x7f
    800014ae:	c5e70713          	addi	a4,a4,-930 # 80080108 <OSUnMapTbl+0x100>
    800014b2:	e3d8                	sd	a4,128(a5)
    800014b4:	0007f797          	auipc	a5,0x7f
    800014b8:	55c78793          	addi	a5,a5,1372 # 80080a10 <OSTCBList>
    800014bc:	0007b023          	sd	zero,0(a5)
    800014c0:	00080797          	auipc	a5,0x80
    800014c4:	a3878793          	addi	a5,a5,-1480 # 80080ef8 <OSTCBFreeList>
    800014c8:	00080717          	auipc	a4,0x80
    800014cc:	4e070713          	addi	a4,a4,1248 # 800819a8 <OSTCBTbl>
    800014d0:	e398                	sd	a4,0(a5)
    800014d2:	0001                	nop
    800014d4:	70a2                	ld	ra,40(sp)
    800014d6:	6145                	addi	sp,sp,48
    800014d8:	8082                	ret

00000000800014da <OS_MemClr>:
    800014da:	1141                	addi	sp,sp,-16
    800014dc:	e42a                	sd	a0,8(sp)
    800014de:	87ae                	mv	a5,a1
    800014e0:	00f11323          	sh	a5,6(sp)
    800014e4:	a821                	j	800014fc <OS_MemClr+0x22>
    800014e6:	67a2                	ld	a5,8(sp)
    800014e8:	00178713          	addi	a4,a5,1
    800014ec:	e43a                	sd	a4,8(sp)
    800014ee:	00078023          	sb	zero,0(a5)
    800014f2:	00615783          	lhu	a5,6(sp)
    800014f6:	37fd                	addiw	a5,a5,-1
    800014f8:	00f11323          	sh	a5,6(sp)
    800014fc:	00615783          	lhu	a5,6(sp)
    80001500:	2781                	sext.w	a5,a5
    80001502:	f3f5                	bnez	a5,800014e6 <OS_MemClr+0xc>
    80001504:	0001                	nop
    80001506:	0141                	addi	sp,sp,16
    80001508:	8082                	ret

000000008000150a <OS_MemCopy>:
    8000150a:	1101                	addi	sp,sp,-32
    8000150c:	ec2a                	sd	a0,24(sp)
    8000150e:	e82e                	sd	a1,16(sp)
    80001510:	87b2                	mv	a5,a2
    80001512:	00f11723          	sh	a5,14(sp)
    80001516:	a015                	j	8000153a <OS_MemCopy+0x30>
    80001518:	6742                	ld	a4,16(sp)
    8000151a:	00170793          	addi	a5,a4,1
    8000151e:	e83e                	sd	a5,16(sp)
    80001520:	67e2                	ld	a5,24(sp)
    80001522:	00178693          	addi	a3,a5,1
    80001526:	ec36                	sd	a3,24(sp)
    80001528:	00074703          	lbu	a4,0(a4)
    8000152c:	00e78023          	sb	a4,0(a5)
    80001530:	00e15783          	lhu	a5,14(sp)
    80001534:	37fd                	addiw	a5,a5,-1
    80001536:	00f11723          	sh	a5,14(sp)
    8000153a:	00e15783          	lhu	a5,14(sp)
    8000153e:	2781                	sext.w	a5,a5
    80001540:	ffe1                	bnez	a5,80001518 <OS_MemCopy+0xe>
    80001542:	0001                	nop
    80001544:	6105                	addi	sp,sp,32
    80001546:	8082                	ret

0000000080001548 <OS_Sched>:
    80001548:	1101                	addi	sp,sp,-32
    8000154a:	ec06                	sd	ra,24(sp)
    8000154c:	e402                	sd	zero,8(sp)
    8000154e:	0b3050ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80001552:	e42a                	sd	a0,8(sp)
    80001554:	00080797          	auipc	a5,0x80
    80001558:	ea478793          	addi	a5,a5,-348 # 800813f8 <OSIntNesting>
    8000155c:	0007c783          	lbu	a5,0(a5)
    80001560:	e3d9                	bnez	a5,800015e6 <OS_Sched+0x9e>
    80001562:	0007f797          	auipc	a5,0x7f
    80001566:	f6678793          	addi	a5,a5,-154 # 800804c8 <OSLockNesting>
    8000156a:	0007c783          	lbu	a5,0(a5)
    8000156e:	efa5                	bnez	a5,800015e6 <OS_Sched+0x9e>
    80001570:	084000ef          	jal	ra,800015f4 <OS_SchedNew>
    80001574:	0007f797          	auipc	a5,0x7f
    80001578:	f6e78793          	addi	a5,a5,-146 # 800804e2 <OSPrioHighRdy>
    8000157c:	0007c783          	lbu	a5,0(a5)
    80001580:	2781                	sext.w	a5,a5
    80001582:	00081717          	auipc	a4,0x81
    80001586:	09670713          	addi	a4,a4,150 # 80082618 <OSTCBPrioTbl>
    8000158a:	078e                	slli	a5,a5,0x3
    8000158c:	97ba                	add	a5,a5,a4
    8000158e:	6398                	ld	a4,0(a5)
    80001590:	00080797          	auipc	a5,0x80
    80001594:	a4078793          	addi	a5,a5,-1472 # 80080fd0 <OSTCBHighRdy>
    80001598:	e398                	sd	a4,0(a5)
    8000159a:	0007f797          	auipc	a5,0x7f
    8000159e:	f4878793          	addi	a5,a5,-184 # 800804e2 <OSPrioHighRdy>
    800015a2:	0007c703          	lbu	a4,0(a5)
    800015a6:	0007f797          	auipc	a5,0x7f
    800015aa:	46278793          	addi	a5,a5,1122 # 80080a08 <OSPrioCur>
    800015ae:	0007c783          	lbu	a5,0(a5)
    800015b2:	02f70a63          	beq	a4,a5,800015e6 <OS_Sched+0x9e>
    800015b6:	00080797          	auipc	a5,0x80
    800015ba:	a1a78793          	addi	a5,a5,-1510 # 80080fd0 <OSTCBHighRdy>
    800015be:	639c                	ld	a5,0(a5)
    800015c0:	53b8                	lw	a4,96(a5)
    800015c2:	2705                	addiw	a4,a4,1
    800015c4:	2701                	sext.w	a4,a4
    800015c6:	d3b8                	sw	a4,96(a5)
    800015c8:	00080797          	auipc	a5,0x80
    800015cc:	92078793          	addi	a5,a5,-1760 # 80080ee8 <OSCtxSwCtr>
    800015d0:	439c                	lw	a5,0(a5)
    800015d2:	2785                	addiw	a5,a5,1
    800015d4:	0007871b          	sext.w	a4,a5
    800015d8:	00080797          	auipc	a5,0x80
    800015dc:	91078793          	addi	a5,a5,-1776 # 80080ee8 <OSCtxSwCtr>
    800015e0:	c398                	sw	a4,0(a5)
    800015e2:	09f050ef          	jal	ra,80006e80 <OSCtxSw>
    800015e6:	6522                	ld	a0,8(sp)
    800015e8:	023050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800015ec:	0001                	nop
    800015ee:	60e2                	ld	ra,24(sp)
    800015f0:	6105                	addi	sp,sp,32
    800015f2:	8082                	ret

00000000800015f4 <OS_SchedNew>:
    800015f4:	1141                	addi	sp,sp,-16
    800015f6:	00080797          	auipc	a5,0x80
    800015fa:	9ea78793          	addi	a5,a5,-1558 # 80080fe0 <OSRdyGrp>
    800015fe:	0007c783          	lbu	a5,0(a5)
    80001602:	2781                	sext.w	a5,a5
    80001604:	0007f717          	auipc	a4,0x7f
    80001608:	a0470713          	addi	a4,a4,-1532 # 80080008 <OSUnMapTbl>
    8000160c:	97ba                	add	a5,a5,a4
    8000160e:	0007c783          	lbu	a5,0(a5)
    80001612:	00f107a3          	sb	a5,15(sp)
    80001616:	00f14783          	lbu	a5,15(sp)
    8000161a:	0037979b          	slliw	a5,a5,0x3
    8000161e:	0ff7f713          	andi	a4,a5,255
    80001622:	00f14783          	lbu	a5,15(sp)
    80001626:	2781                	sext.w	a5,a5
    80001628:	00080697          	auipc	a3,0x80
    8000162c:	9c068693          	addi	a3,a3,-1600 # 80080fe8 <OSRdyTbl>
    80001630:	97b6                	add	a5,a5,a3
    80001632:	0007c783          	lbu	a5,0(a5)
    80001636:	2781                	sext.w	a5,a5
    80001638:	0007f697          	auipc	a3,0x7f
    8000163c:	9d068693          	addi	a3,a3,-1584 # 80080008 <OSUnMapTbl>
    80001640:	97b6                	add	a5,a5,a3
    80001642:	0007c783          	lbu	a5,0(a5)
    80001646:	9fb9                	addw	a5,a5,a4
    80001648:	0ff7f713          	andi	a4,a5,255
    8000164c:	0007f797          	auipc	a5,0x7f
    80001650:	e9678793          	addi	a5,a5,-362 # 800804e2 <OSPrioHighRdy>
    80001654:	00e78023          	sb	a4,0(a5)
    80001658:	0001                	nop
    8000165a:	0141                	addi	sp,sp,16
    8000165c:	8082                	ret

000000008000165e <OS_StrLen>:
    8000165e:	1101                	addi	sp,sp,-32
    80001660:	e42a                	sd	a0,8(sp)
    80001662:	00010fa3          	sb	zero,31(sp)
    80001666:	a809                	j	80001678 <OS_StrLen+0x1a>
    80001668:	67a2                	ld	a5,8(sp)
    8000166a:	0785                	addi	a5,a5,1
    8000166c:	e43e                	sd	a5,8(sp)
    8000166e:	01f14783          	lbu	a5,31(sp)
    80001672:	2785                	addiw	a5,a5,1
    80001674:	00f10fa3          	sb	a5,31(sp)
    80001678:	67a2                	ld	a5,8(sp)
    8000167a:	0007c783          	lbu	a5,0(a5)
    8000167e:	f7ed                	bnez	a5,80001668 <OS_StrLen+0xa>
    80001680:	01f14783          	lbu	a5,31(sp)
    80001684:	853e                	mv	a0,a5
    80001686:	6105                	addi	sp,sp,32
    80001688:	8082                	ret

000000008000168a <OS_TaskIdle>:
    8000168a:	7179                	addi	sp,sp,-48
    8000168c:	f406                	sd	ra,40(sp)
    8000168e:	e42a                	sd	a0,8(sp)
    80001690:	ec02                	sd	zero,24(sp)
    80001692:	76e050ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80001696:	ec2a                	sd	a0,24(sp)
    80001698:	0007f797          	auipc	a5,0x7f
    8000169c:	e4478793          	addi	a5,a5,-444 # 800804dc <OSIdleCtr>
    800016a0:	439c                	lw	a5,0(a5)
    800016a2:	2781                	sext.w	a5,a5
    800016a4:	2785                	addiw	a5,a5,1
    800016a6:	0007871b          	sext.w	a4,a5
    800016aa:	0007f797          	auipc	a5,0x7f
    800016ae:	e3278793          	addi	a5,a5,-462 # 800804dc <OSIdleCtr>
    800016b2:	c398                	sw	a4,0(a5)
    800016b4:	6562                	ld	a0,24(sp)
    800016b6:	754050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800016ba:	1c9050ef          	jal	ra,80007082 <OSTaskIdleHook>
    800016be:	bfd1                	j	80001692 <OS_TaskIdle+0x8>

00000000800016c0 <OS_TaskStat>:
    800016c0:	7179                	addi	sp,sp,-48
    800016c2:	f406                	sd	ra,40(sp)
    800016c4:	e42a                	sd	a0,8(sp)
    800016c6:	ec02                	sd	zero,24(sp)
    800016c8:	a021                	j	800016d0 <OS_TaskStat+0x10>
    800016ca:	4551                	li	a0,20
    800016cc:	015040ef          	jal	ra,80005ee0 <OSTimeDly>
    800016d0:	00081797          	auipc	a5,0x81
    800016d4:	f4078793          	addi	a5,a5,-192 # 80082610 <OSStatRdy>
    800016d8:	0007c783          	lbu	a5,0(a5)
    800016dc:	d7fd                	beqz	a5,800016ca <OS_TaskStat+0xa>
    800016de:	00080797          	auipc	a5,0x80
    800016e2:	81278793          	addi	a5,a5,-2030 # 80080ef0 <OSIdleCtrMax>
    800016e6:	439c                	lw	a5,0(a5)
    800016e8:	873e                	mv	a4,a5
    800016ea:	06400793          	li	a5,100
    800016ee:	02f757bb          	divuw	a5,a4,a5
    800016f2:	0007871b          	sext.w	a4,a5
    800016f6:	0007f797          	auipc	a5,0x7f
    800016fa:	7fa78793          	addi	a5,a5,2042 # 80080ef0 <OSIdleCtrMax>
    800016fe:	c398                	sw	a4,0(a5)
    80001700:	0007f797          	auipc	a5,0x7f
    80001704:	7f078793          	addi	a5,a5,2032 # 80080ef0 <OSIdleCtrMax>
    80001708:	439c                	lw	a5,0(a5)
    8000170a:	eb99                	bnez	a5,80001720 <OS_TaskStat+0x60>
    8000170c:	0007f797          	auipc	a5,0x7f
    80001710:	7f478793          	addi	a5,a5,2036 # 80080f00 <OSCPUUsage>
    80001714:	00078023          	sb	zero,0(a5)
    80001718:	0ff00513          	li	a0,255
    8000171c:	47c040ef          	jal	ra,80005b98 <OSTaskSuspend>
    80001720:	6e0050ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80001724:	ec2a                	sd	a0,24(sp)
    80001726:	0007f797          	auipc	a5,0x7f
    8000172a:	db678793          	addi	a5,a5,-586 # 800804dc <OSIdleCtr>
    8000172e:	439c                	lw	a5,0(a5)
    80001730:	0007871b          	sext.w	a4,a5
    80001734:	00081797          	auipc	a5,0x81
    80001738:	0e478793          	addi	a5,a5,228 # 80082818 <OSIdleCtrRun>
    8000173c:	c398                	sw	a4,0(a5)
    8000173e:	0007f797          	auipc	a5,0x7f
    80001742:	d9e78793          	addi	a5,a5,-610 # 800804dc <OSIdleCtr>
    80001746:	0007a023          	sw	zero,0(a5)
    8000174a:	6562                	ld	a0,24(sp)
    8000174c:	6be050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001750:	00081797          	auipc	a5,0x81
    80001754:	0c878793          	addi	a5,a5,200 # 80082818 <OSIdleCtrRun>
    80001758:	4398                	lw	a4,0(a5)
    8000175a:	0007f797          	auipc	a5,0x7f
    8000175e:	79678793          	addi	a5,a5,1942 # 80080ef0 <OSIdleCtrMax>
    80001762:	439c                	lw	a5,0(a5)
    80001764:	02f757bb          	divuw	a5,a4,a5
    80001768:	2781                	sext.w	a5,a5
    8000176a:	0ff7f793          	andi	a5,a5,255
    8000176e:	06400713          	li	a4,100
    80001772:	40f707bb          	subw	a5,a4,a5
    80001776:	0ff7f713          	andi	a4,a5,255
    8000177a:	0007f797          	auipc	a5,0x7f
    8000177e:	78678793          	addi	a5,a5,1926 # 80080f00 <OSCPUUsage>
    80001782:	00e78023          	sb	a4,0(a5)
    80001786:	101050ef          	jal	ra,80007086 <OSTaskStatHook>
    8000178a:	00c000ef          	jal	ra,80001796 <OS_TaskStatStkChk>
    8000178e:	4529                	li	a0,10
    80001790:	750040ef          	jal	ra,80005ee0 <OSTimeDly>
    80001794:	b771                	j	80001720 <OS_TaskStat+0x60>

0000000080001796 <OS_TaskStatStkChk>:
    80001796:	7179                	addi	sp,sp,-48
    80001798:	f406                	sd	ra,40(sp)
    8000179a:	00010fa3          	sb	zero,31(sp)
    8000179e:	a09d                	j	80001804 <OS_TaskStatStkChk+0x6e>
    800017a0:	0038                	addi	a4,sp,8
    800017a2:	01f14783          	lbu	a5,31(sp)
    800017a6:	85ba                	mv	a1,a4
    800017a8:	853e                	mv	a0,a5
    800017aa:	302040ef          	jal	ra,80005aac <OSTaskStkChk>
    800017ae:	87aa                	mv	a5,a0
    800017b0:	00f10f23          	sb	a5,30(sp)
    800017b4:	01e14783          	lbu	a5,30(sp)
    800017b8:	0ff7f793          	andi	a5,a5,255
    800017bc:	ef9d                	bnez	a5,800017fa <OS_TaskStatStkChk+0x64>
    800017be:	01f14783          	lbu	a5,31(sp)
    800017c2:	2781                	sext.w	a5,a5
    800017c4:	00081717          	auipc	a4,0x81
    800017c8:	e5470713          	addi	a4,a4,-428 # 80082618 <OSTCBPrioTbl>
    800017cc:	078e                	slli	a5,a5,0x3
    800017ce:	97ba                	add	a5,a5,a4
    800017d0:	639c                	ld	a5,0(a5)
    800017d2:	e83e                	sd	a5,16(sp)
    800017d4:	67c2                	ld	a5,16(sp)
    800017d6:	c395                	beqz	a5,800017fa <OS_TaskStatStkChk+0x64>
    800017d8:	6742                	ld	a4,16(sp)
    800017da:	4785                	li	a5,1
    800017dc:	00f70f63          	beq	a4,a5,800017fa <OS_TaskStatStkChk+0x64>
    800017e0:	67c2                	ld	a5,16(sp)
    800017e2:	6b98                	ld	a4,16(a5)
    800017e4:	67c2                	ld	a5,16(sp)
    800017e6:	4f9c                	lw	a5,24(a5)
    800017e8:	1782                	slli	a5,a5,0x20
    800017ea:	9381                	srli	a5,a5,0x20
    800017ec:	078e                	slli	a5,a5,0x3
    800017ee:	973e                	add	a4,a4,a5
    800017f0:	67c2                	ld	a5,16(sp)
    800017f2:	fbb8                	sd	a4,112(a5)
    800017f4:	4732                	lw	a4,12(sp)
    800017f6:	67c2                	ld	a5,16(sp)
    800017f8:	dfb8                	sw	a4,120(a5)
    800017fa:	01f14783          	lbu	a5,31(sp)
    800017fe:	2785                	addiw	a5,a5,1
    80001800:	00f10fa3          	sb	a5,31(sp)
    80001804:	01f14783          	lbu	a5,31(sp)
    80001808:	0ff7f713          	andi	a4,a5,255
    8000180c:	03f00793          	li	a5,63
    80001810:	f8e7f8e3          	bleu	a4,a5,800017a0 <OS_TaskStatStkChk+0xa>
    80001814:	0001                	nop
    80001816:	70a2                	ld	ra,40(sp)
    80001818:	6145                	addi	sp,sp,48
    8000181a:	8082                	ret

000000008000181c <OS_TCBInit>:
    8000181c:	711d                	addi	sp,sp,-96
    8000181e:	ec86                	sd	ra,88(sp)
    80001820:	f02e                	sd	a1,32(sp)
    80001822:	ec32                	sd	a2,24(sp)
    80001824:	8636                	mv	a2,a3
    80001826:	86ba                	mv	a3,a4
    80001828:	e83e                	sd	a5,16(sp)
    8000182a:	8742                	mv	a4,a6
    8000182c:	87aa                	mv	a5,a0
    8000182e:	02f107a3          	sb	a5,47(sp)
    80001832:	87b2                	mv	a5,a2
    80001834:	02f11623          	sh	a5,44(sp)
    80001838:	87b6                	mv	a5,a3
    8000183a:	d43e                	sw	a5,40(sp)
    8000183c:	87ba                	mv	a5,a4
    8000183e:	00f11723          	sh	a5,14(sp)
    80001842:	e082                	sd	zero,64(sp)
    80001844:	5bc050ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80001848:	e0aa                	sd	a0,64(sp)
    8000184a:	0007f797          	auipc	a5,0x7f
    8000184e:	6ae78793          	addi	a5,a5,1710 # 80080ef8 <OSTCBFreeList>
    80001852:	639c                	ld	a5,0(a5)
    80001854:	fc3e                	sd	a5,56(sp)
    80001856:	77e2                	ld	a5,56(sp)
    80001858:	20078763          	beqz	a5,80001a66 <OS_TCBInit+0x24a>
    8000185c:	77e2                	ld	a5,56(sp)
    8000185e:	7398                	ld	a4,32(a5)
    80001860:	0007f797          	auipc	a5,0x7f
    80001864:	69878793          	addi	a5,a5,1688 # 80080ef8 <OSTCBFreeList>
    80001868:	e398                	sd	a4,0(a5)
    8000186a:	6506                	ld	a0,64(sp)
    8000186c:	59e050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001870:	77e2                	ld	a5,56(sp)
    80001872:	7702                	ld	a4,32(sp)
    80001874:	e398                	sd	a4,0(a5)
    80001876:	77e2                	ld	a5,56(sp)
    80001878:	02f14703          	lbu	a4,47(sp)
    8000187c:	04e78d23          	sb	a4,90(a5)
    80001880:	77e2                	ld	a5,56(sp)
    80001882:	04078c23          	sb	zero,88(a5)
    80001886:	77e2                	ld	a5,56(sp)
    80001888:	04078ca3          	sb	zero,89(a5)
    8000188c:	77e2                	ld	a5,56(sp)
    8000188e:	0407aa23          	sw	zero,84(a5)
    80001892:	77e2                	ld	a5,56(sp)
    80001894:	6742                	ld	a4,16(sp)
    80001896:	e798                	sd	a4,8(a5)
    80001898:	77e2                	ld	a5,56(sp)
    8000189a:	5722                	lw	a4,40(sp)
    8000189c:	cf98                	sw	a4,24(a5)
    8000189e:	77e2                	ld	a5,56(sp)
    800018a0:	6762                	ld	a4,24(sp)
    800018a2:	eb98                	sd	a4,16(a5)
    800018a4:	77e2                	ld	a5,56(sp)
    800018a6:	00e15703          	lhu	a4,14(sp)
    800018aa:	00e79e23          	sh	a4,28(a5)
    800018ae:	77e2                	ld	a5,56(sp)
    800018b0:	02c15703          	lhu	a4,44(sp)
    800018b4:	00e79f23          	sh	a4,30(a5)
    800018b8:	77e2                	ld	a5,56(sp)
    800018ba:	04078fa3          	sb	zero,95(a5)
    800018be:	02f14783          	lbu	a5,47(sp)
    800018c2:	0037d79b          	srliw	a5,a5,0x3
    800018c6:	0ff7f713          	andi	a4,a5,255
    800018ca:	77e2                	ld	a5,56(sp)
    800018cc:	04e78e23          	sb	a4,92(a5)
    800018d0:	02f14783          	lbu	a5,47(sp)
    800018d4:	8b9d                	andi	a5,a5,7
    800018d6:	0ff7f713          	andi	a4,a5,255
    800018da:	77e2                	ld	a5,56(sp)
    800018dc:	04e78da3          	sb	a4,91(a5)
    800018e0:	77e2                	ld	a5,56(sp)
    800018e2:	05c7c783          	lbu	a5,92(a5)
    800018e6:	2781                	sext.w	a5,a5
    800018e8:	4705                	li	a4,1
    800018ea:	00f717b3          	sll	a5,a4,a5
    800018ee:	0ff7f713          	andi	a4,a5,255
    800018f2:	77e2                	ld	a5,56(sp)
    800018f4:	04e78f23          	sb	a4,94(a5)
    800018f8:	77e2                	ld	a5,56(sp)
    800018fa:	05b7c783          	lbu	a5,91(a5)
    800018fe:	2781                	sext.w	a5,a5
    80001900:	4705                	li	a4,1
    80001902:	00f717b3          	sll	a5,a4,a5
    80001906:	0ff7f713          	andi	a4,a5,255
    8000190a:	77e2                	ld	a5,56(sp)
    8000190c:	04e78ea3          	sb	a4,93(a5)
    80001910:	77e2                	ld	a5,56(sp)
    80001912:	0207b823          	sd	zero,48(a5)
    80001916:	77e2                	ld	a5,56(sp)
    80001918:	0207bc23          	sd	zero,56(a5)
    8000191c:	77e2                	ld	a5,56(sp)
    8000191e:	0407b423          	sd	zero,72(a5)
    80001922:	77e2                	ld	a5,56(sp)
    80001924:	0407b023          	sd	zero,64(a5)
    80001928:	77e2                	ld	a5,56(sp)
    8000192a:	0607a023          	sw	zero,96(a5)
    8000192e:	77e2                	ld	a5,56(sp)
    80001930:	0607a423          	sw	zero,104(a5)
    80001934:	77e2                	ld	a5,56(sp)
    80001936:	0607a223          	sw	zero,100(a5)
    8000193a:	77e2                	ld	a5,56(sp)
    8000193c:	0607b823          	sd	zero,112(a5)
    80001940:	77e2                	ld	a5,56(sp)
    80001942:	0607ac23          	sw	zero,120(a5)
    80001946:	77e2                	ld	a5,56(sp)
    80001948:	0007e717          	auipc	a4,0x7e
    8000194c:	7c070713          	addi	a4,a4,1984 # 80080108 <OSUnMapTbl+0x100>
    80001950:	e3d8                	sd	a4,128(a5)
    80001952:	040107a3          	sb	zero,79(sp)
    80001956:	a005                	j	80001976 <OS_TCBInit+0x15a>
    80001958:	04f14783          	lbu	a5,79(sp)
    8000195c:	2781                	sext.w	a5,a5
    8000195e:	7762                	ld	a4,56(sp)
    80001960:	02078793          	addi	a5,a5,32
    80001964:	078a                	slli	a5,a5,0x2
    80001966:	97ba                	add	a5,a5,a4
    80001968:	0007a423          	sw	zero,8(a5)
    8000196c:	04f14783          	lbu	a5,79(sp)
    80001970:	2785                	addiw	a5,a5,1
    80001972:	04f107a3          	sb	a5,79(sp)
    80001976:	04f14783          	lbu	a5,79(sp)
    8000197a:	0ff7f793          	andi	a5,a5,255
    8000197e:	dfe9                	beqz	a5,80001958 <OS_TCBInit+0x13c>
    80001980:	7562                	ld	a0,56(sp)
    80001982:	70c050ef          	jal	ra,8000708e <OSTCBInitHook>
    80001986:	7562                	ld	a0,56(sp)
    80001988:	6e6050ef          	jal	ra,8000706e <OSTaskCreateHook>
    8000198c:	474050ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80001990:	e0aa                	sd	a0,64(sp)
    80001992:	02f14783          	lbu	a5,47(sp)
    80001996:	2781                	sext.w	a5,a5
    80001998:	00081717          	auipc	a4,0x81
    8000199c:	c8070713          	addi	a4,a4,-896 # 80082618 <OSTCBPrioTbl>
    800019a0:	078e                	slli	a5,a5,0x3
    800019a2:	97ba                	add	a5,a5,a4
    800019a4:	7762                	ld	a4,56(sp)
    800019a6:	e398                	sd	a4,0(a5)
    800019a8:	0007f797          	auipc	a5,0x7f
    800019ac:	06878793          	addi	a5,a5,104 # 80080a10 <OSTCBList>
    800019b0:	6398                	ld	a4,0(a5)
    800019b2:	77e2                	ld	a5,56(sp)
    800019b4:	f398                	sd	a4,32(a5)
    800019b6:	77e2                	ld	a5,56(sp)
    800019b8:	0207b423          	sd	zero,40(a5)
    800019bc:	0007f797          	auipc	a5,0x7f
    800019c0:	05478793          	addi	a5,a5,84 # 80080a10 <OSTCBList>
    800019c4:	639c                	ld	a5,0(a5)
    800019c6:	cb81                	beqz	a5,800019d6 <OS_TCBInit+0x1ba>
    800019c8:	0007f797          	auipc	a5,0x7f
    800019cc:	04878793          	addi	a5,a5,72 # 80080a10 <OSTCBList>
    800019d0:	639c                	ld	a5,0(a5)
    800019d2:	7762                	ld	a4,56(sp)
    800019d4:	f798                	sd	a4,40(a5)
    800019d6:	0007f797          	auipc	a5,0x7f
    800019da:	03a78793          	addi	a5,a5,58 # 80080a10 <OSTCBList>
    800019de:	7762                	ld	a4,56(sp)
    800019e0:	e398                	sd	a4,0(a5)
    800019e2:	77e2                	ld	a5,56(sp)
    800019e4:	05e7c703          	lbu	a4,94(a5)
    800019e8:	0007f797          	auipc	a5,0x7f
    800019ec:	5f878793          	addi	a5,a5,1528 # 80080fe0 <OSRdyGrp>
    800019f0:	0007c783          	lbu	a5,0(a5)
    800019f4:	8fd9                	or	a5,a5,a4
    800019f6:	0ff7f713          	andi	a4,a5,255
    800019fa:	0007f797          	auipc	a5,0x7f
    800019fe:	5e678793          	addi	a5,a5,1510 # 80080fe0 <OSRdyGrp>
    80001a02:	00e78023          	sb	a4,0(a5)
    80001a06:	77e2                	ld	a5,56(sp)
    80001a08:	05c7c783          	lbu	a5,92(a5)
    80001a0c:	2781                	sext.w	a5,a5
    80001a0e:	0007f717          	auipc	a4,0x7f
    80001a12:	5da70713          	addi	a4,a4,1498 # 80080fe8 <OSRdyTbl>
    80001a16:	97ba                	add	a5,a5,a4
    80001a18:	0007c683          	lbu	a3,0(a5)
    80001a1c:	77e2                	ld	a5,56(sp)
    80001a1e:	05d7c703          	lbu	a4,93(a5)
    80001a22:	77e2                	ld	a5,56(sp)
    80001a24:	05c7c783          	lbu	a5,92(a5)
    80001a28:	2781                	sext.w	a5,a5
    80001a2a:	8f55                	or	a4,a4,a3
    80001a2c:	0ff77713          	andi	a4,a4,255
    80001a30:	0007f697          	auipc	a3,0x7f
    80001a34:	5b868693          	addi	a3,a3,1464 # 80080fe8 <OSRdyTbl>
    80001a38:	97b6                	add	a5,a5,a3
    80001a3a:	00e78023          	sb	a4,0(a5)
    80001a3e:	0007f797          	auipc	a5,0x7f
    80001a42:	4c378793          	addi	a5,a5,1219 # 80080f01 <OSTaskCtr>
    80001a46:	0007c783          	lbu	a5,0(a5)
    80001a4a:	2785                	addiw	a5,a5,1
    80001a4c:	0ff7f713          	andi	a4,a5,255
    80001a50:	0007f797          	auipc	a5,0x7f
    80001a54:	4b178793          	addi	a5,a5,1201 # 80080f01 <OSTaskCtr>
    80001a58:	00e78023          	sb	a4,0(a5)
    80001a5c:	6506                	ld	a0,64(sp)
    80001a5e:	3ac050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001a62:	4781                	li	a5,0
    80001a64:	a031                	j	80001a70 <OS_TCBInit+0x254>
    80001a66:	6506                	ld	a0,64(sp)
    80001a68:	3a2050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001a6c:	04200793          	li	a5,66
    80001a70:	853e                	mv	a0,a5
    80001a72:	60e6                	ld	ra,88(sp)
    80001a74:	6125                	addi	sp,sp,96
    80001a76:	8082                	ret

0000000080001a78 <OSFlagAccept>:
    80001a78:	715d                	addi	sp,sp,-80
    80001a7a:	e486                	sd	ra,72(sp)
    80001a7c:	ec2a                	sd	a0,24(sp)
    80001a7e:	87ae                	mv	a5,a1
    80001a80:	8732                	mv	a4,a2
    80001a82:	e436                	sd	a3,8(sp)
    80001a84:	00f11b23          	sh	a5,22(sp)
    80001a88:	87ba                	mv	a5,a4
    80001a8a:	00f10aa3          	sb	a5,21(sp)
    80001a8e:	f802                	sd	zero,48(sp)
    80001a90:	67e2                	ld	a5,24(sp)
    80001a92:	0007c783          	lbu	a5,0(a5)
    80001a96:	873e                	mv	a4,a5
    80001a98:	4795                	li	a5,5
    80001a9a:	00f70863          	beq	a4,a5,80001aaa <OSFlagAccept+0x32>
    80001a9e:	67a2                	ld	a5,8(sp)
    80001aa0:	4705                	li	a4,1
    80001aa2:	00e78023          	sb	a4,0(a5)
    80001aa6:	4781                	li	a5,0
    80001aa8:	aafd                	j	80001ca6 <OSFlagAccept+0x22e>
    80001aaa:	01514783          	lbu	a5,21(sp)
    80001aae:	f807f793          	andi	a5,a5,-128
    80001ab2:	02f107a3          	sb	a5,47(sp)
    80001ab6:	02f14783          	lbu	a5,47(sp)
    80001aba:	0ff7f793          	andi	a5,a5,255
    80001abe:	cb99                	beqz	a5,80001ad4 <OSFlagAccept+0x5c>
    80001ac0:	01514783          	lbu	a5,21(sp)
    80001ac4:	07f7f793          	andi	a5,a5,127
    80001ac8:	00f10aa3          	sb	a5,21(sp)
    80001acc:	4785                	li	a5,1
    80001ace:	02f10ea3          	sb	a5,61(sp)
    80001ad2:	a019                	j	80001ad8 <OSFlagAccept+0x60>
    80001ad4:	02010ea3          	sb	zero,61(sp)
    80001ad8:	67a2                	ld	a5,8(sp)
    80001ada:	00078023          	sb	zero,0(a5)
    80001ade:	322050ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80001ae2:	f82a                	sd	a0,48(sp)
    80001ae4:	01514783          	lbu	a5,21(sp)
    80001ae8:	2781                	sext.w	a5,a5
    80001aea:	86be                	mv	a3,a5
    80001aec:	4705                	li	a4,1
    80001aee:	14e68163          	beq	a3,a4,80001c30 <OSFlagAccept+0x1b8>
    80001af2:	86be                	mv	a3,a5
    80001af4:	4705                	li	a4,1
    80001af6:	00d74463          	blt	a4,a3,80001afe <OSFlagAccept+0x86>
    80001afa:	cbe9                	beqz	a5,80001bcc <OSFlagAccept+0x154>
    80001afc:	aa41                	j	80001c8c <OSFlagAccept+0x214>
    80001afe:	86be                	mv	a3,a5
    80001b00:	4709                	li	a4,2
    80001b02:	00e68763          	beq	a3,a4,80001b10 <OSFlagAccept+0x98>
    80001b06:	873e                	mv	a4,a5
    80001b08:	478d                	li	a5,3
    80001b0a:	06f70463          	beq	a4,a5,80001b72 <OSFlagAccept+0xfa>
    80001b0e:	aabd                	j	80001c8c <OSFlagAccept+0x214>
    80001b10:	67e2                	ld	a5,24(sp)
    80001b12:	0107d703          	lhu	a4,16(a5)
    80001b16:	01615783          	lhu	a5,22(sp)
    80001b1a:	8ff9                	and	a5,a5,a4
    80001b1c:	02f11f23          	sh	a5,62(sp)
    80001b20:	03e15703          	lhu	a4,62(sp)
    80001b24:	01615783          	lhu	a5,22(sp)
    80001b28:	2701                	sext.w	a4,a4
    80001b2a:	2781                	sext.w	a5,a5
    80001b2c:	02f71a63          	bne	a4,a5,80001b60 <OSFlagAccept+0xe8>
    80001b30:	03d14783          	lbu	a5,61(sp)
    80001b34:	0ff7f713          	andi	a4,a5,255
    80001b38:	4785                	li	a5,1
    80001b3a:	02f71863          	bne	a4,a5,80001b6a <OSFlagAccept+0xf2>
    80001b3e:	67e2                	ld	a5,24(sp)
    80001b40:	0107d703          	lhu	a4,16(a5)
    80001b44:	03e15783          	lhu	a5,62(sp)
    80001b48:	fff7c793          	not	a5,a5
    80001b4c:	17c2                	slli	a5,a5,0x30
    80001b4e:	93c1                	srli	a5,a5,0x30
    80001b50:	8ff9                	and	a5,a5,a4
    80001b52:	03079713          	slli	a4,a5,0x30
    80001b56:	9341                	srli	a4,a4,0x30
    80001b58:	67e2                	ld	a5,24(sp)
    80001b5a:	00e79823          	sh	a4,16(a5)
    80001b5e:	a031                	j	80001b6a <OSFlagAccept+0xf2>
    80001b60:	67a2                	ld	a5,8(sp)
    80001b62:	07000713          	li	a4,112
    80001b66:	00e78023          	sb	a4,0(a5)
    80001b6a:	7542                	ld	a0,48(sp)
    80001b6c:	29e050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001b70:	aa0d                	j	80001ca2 <OSFlagAccept+0x22a>
    80001b72:	67e2                	ld	a5,24(sp)
    80001b74:	0107d703          	lhu	a4,16(a5)
    80001b78:	01615783          	lhu	a5,22(sp)
    80001b7c:	8ff9                	and	a5,a5,a4
    80001b7e:	02f11f23          	sh	a5,62(sp)
    80001b82:	03e15783          	lhu	a5,62(sp)
    80001b86:	2781                	sext.w	a5,a5
    80001b88:	cb8d                	beqz	a5,80001bba <OSFlagAccept+0x142>
    80001b8a:	03d14783          	lbu	a5,61(sp)
    80001b8e:	0ff7f713          	andi	a4,a5,255
    80001b92:	4785                	li	a5,1
    80001b94:	02f71863          	bne	a4,a5,80001bc4 <OSFlagAccept+0x14c>
    80001b98:	67e2                	ld	a5,24(sp)
    80001b9a:	0107d703          	lhu	a4,16(a5)
    80001b9e:	03e15783          	lhu	a5,62(sp)
    80001ba2:	fff7c793          	not	a5,a5
    80001ba6:	17c2                	slli	a5,a5,0x30
    80001ba8:	93c1                	srli	a5,a5,0x30
    80001baa:	8ff9                	and	a5,a5,a4
    80001bac:	03079713          	slli	a4,a5,0x30
    80001bb0:	9341                	srli	a4,a4,0x30
    80001bb2:	67e2                	ld	a5,24(sp)
    80001bb4:	00e79823          	sh	a4,16(a5)
    80001bb8:	a031                	j	80001bc4 <OSFlagAccept+0x14c>
    80001bba:	67a2                	ld	a5,8(sp)
    80001bbc:	07000713          	li	a4,112
    80001bc0:	00e78023          	sb	a4,0(a5)
    80001bc4:	7542                	ld	a0,48(sp)
    80001bc6:	244050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001bca:	a8e1                	j	80001ca2 <OSFlagAccept+0x22a>
    80001bcc:	67e2                	ld	a5,24(sp)
    80001bce:	0107d783          	lhu	a5,16(a5)
    80001bd2:	fff7c793          	not	a5,a5
    80001bd6:	03079713          	slli	a4,a5,0x30
    80001bda:	9341                	srli	a4,a4,0x30
    80001bdc:	01615783          	lhu	a5,22(sp)
    80001be0:	8ff9                	and	a5,a5,a4
    80001be2:	02f11f23          	sh	a5,62(sp)
    80001be6:	03e15703          	lhu	a4,62(sp)
    80001bea:	01615783          	lhu	a5,22(sp)
    80001bee:	2701                	sext.w	a4,a4
    80001bf0:	2781                	sext.w	a5,a5
    80001bf2:	02f71663          	bne	a4,a5,80001c1e <OSFlagAccept+0x1a6>
    80001bf6:	03d14783          	lbu	a5,61(sp)
    80001bfa:	0ff7f713          	andi	a4,a5,255
    80001bfe:	4785                	li	a5,1
    80001c00:	02f71463          	bne	a4,a5,80001c28 <OSFlagAccept+0x1b0>
    80001c04:	67e2                	ld	a5,24(sp)
    80001c06:	0107d703          	lhu	a4,16(a5)
    80001c0a:	03e15783          	lhu	a5,62(sp)
    80001c0e:	8fd9                	or	a5,a5,a4
    80001c10:	03079713          	slli	a4,a5,0x30
    80001c14:	9341                	srli	a4,a4,0x30
    80001c16:	67e2                	ld	a5,24(sp)
    80001c18:	00e79823          	sh	a4,16(a5)
    80001c1c:	a031                	j	80001c28 <OSFlagAccept+0x1b0>
    80001c1e:	67a2                	ld	a5,8(sp)
    80001c20:	07000713          	li	a4,112
    80001c24:	00e78023          	sb	a4,0(a5)
    80001c28:	7542                	ld	a0,48(sp)
    80001c2a:	1e0050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001c2e:	a895                	j	80001ca2 <OSFlagAccept+0x22a>
    80001c30:	67e2                	ld	a5,24(sp)
    80001c32:	0107d783          	lhu	a5,16(a5)
    80001c36:	fff7c793          	not	a5,a5
    80001c3a:	03079713          	slli	a4,a5,0x30
    80001c3e:	9341                	srli	a4,a4,0x30
    80001c40:	01615783          	lhu	a5,22(sp)
    80001c44:	8ff9                	and	a5,a5,a4
    80001c46:	02f11f23          	sh	a5,62(sp)
    80001c4a:	03e15783          	lhu	a5,62(sp)
    80001c4e:	2781                	sext.w	a5,a5
    80001c50:	c78d                	beqz	a5,80001c7a <OSFlagAccept+0x202>
    80001c52:	03d14783          	lbu	a5,61(sp)
    80001c56:	0ff7f713          	andi	a4,a5,255
    80001c5a:	4785                	li	a5,1
    80001c5c:	02f71463          	bne	a4,a5,80001c84 <OSFlagAccept+0x20c>
    80001c60:	67e2                	ld	a5,24(sp)
    80001c62:	0107d703          	lhu	a4,16(a5)
    80001c66:	03e15783          	lhu	a5,62(sp)
    80001c6a:	8fd9                	or	a5,a5,a4
    80001c6c:	03079713          	slli	a4,a5,0x30
    80001c70:	9341                	srli	a4,a4,0x30
    80001c72:	67e2                	ld	a5,24(sp)
    80001c74:	00e79823          	sh	a4,16(a5)
    80001c78:	a031                	j	80001c84 <OSFlagAccept+0x20c>
    80001c7a:	67a2                	ld	a5,8(sp)
    80001c7c:	07000713          	li	a4,112
    80001c80:	00e78023          	sb	a4,0(a5)
    80001c84:	7542                	ld	a0,48(sp)
    80001c86:	184050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001c8a:	a821                	j	80001ca2 <OSFlagAccept+0x22a>
    80001c8c:	7542                	ld	a0,48(sp)
    80001c8e:	17c050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001c92:	02011f23          	sh	zero,62(sp)
    80001c96:	67a2                	ld	a5,8(sp)
    80001c98:	06f00713          	li	a4,111
    80001c9c:	00e78023          	sb	a4,0(a5)
    80001ca0:	0001                	nop
    80001ca2:	03e15783          	lhu	a5,62(sp)
    80001ca6:	853e                	mv	a0,a5
    80001ca8:	60a6                	ld	ra,72(sp)
    80001caa:	6161                	addi	sp,sp,80
    80001cac:	8082                	ret

0000000080001cae <OSFlagCreate>:
    80001cae:	7179                	addi	sp,sp,-48
    80001cb0:	f406                	sd	ra,40(sp)
    80001cb2:	87aa                	mv	a5,a0
    80001cb4:	e02e                	sd	a1,0(sp)
    80001cb6:	00f11723          	sh	a5,14(sp)
    80001cba:	ec02                	sd	zero,24(sp)
    80001cbc:	0007f797          	auipc	a5,0x7f
    80001cc0:	73c78793          	addi	a5,a5,1852 # 800813f8 <OSIntNesting>
    80001cc4:	0007c783          	lbu	a5,0(a5)
    80001cc8:	c799                	beqz	a5,80001cd6 <OSFlagCreate+0x28>
    80001cca:	6782                	ld	a5,0(sp)
    80001ccc:	4741                	li	a4,16
    80001cce:	00e78023          	sb	a4,0(a5)
    80001cd2:	4781                	li	a5,0
    80001cd4:	a88d                	j	80001d46 <OSFlagCreate+0x98>
    80001cd6:	12a050ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80001cda:	ec2a                	sd	a0,24(sp)
    80001cdc:	00081797          	auipc	a5,0x81
    80001ce0:	92c78793          	addi	a5,a5,-1748 # 80082608 <OSFlagFreeList>
    80001ce4:	639c                	ld	a5,0(a5)
    80001ce6:	e83e                	sd	a5,16(sp)
    80001ce8:	67c2                	ld	a5,16(sp)
    80001cea:	c7a9                	beqz	a5,80001d34 <OSFlagCreate+0x86>
    80001cec:	00081797          	auipc	a5,0x81
    80001cf0:	91c78793          	addi	a5,a5,-1764 # 80082608 <OSFlagFreeList>
    80001cf4:	639c                	ld	a5,0(a5)
    80001cf6:	6798                	ld	a4,8(a5)
    80001cf8:	00081797          	auipc	a5,0x81
    80001cfc:	91078793          	addi	a5,a5,-1776 # 80082608 <OSFlagFreeList>
    80001d00:	e398                	sd	a4,0(a5)
    80001d02:	67c2                	ld	a5,16(sp)
    80001d04:	4715                	li	a4,5
    80001d06:	00e78023          	sb	a4,0(a5)
    80001d0a:	67c2                	ld	a5,16(sp)
    80001d0c:	00e15703          	lhu	a4,14(sp)
    80001d10:	00e79823          	sh	a4,16(a5)
    80001d14:	67c2                	ld	a5,16(sp)
    80001d16:	0007b423          	sd	zero,8(a5)
    80001d1a:	67c2                	ld	a5,16(sp)
    80001d1c:	0007e717          	auipc	a4,0x7e
    80001d20:	3ec70713          	addi	a4,a4,1004 # 80080108 <OSUnMapTbl+0x100>
    80001d24:	ef98                	sd	a4,24(a5)
    80001d26:	6562                	ld	a0,24(sp)
    80001d28:	0e2050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001d2c:	6782                	ld	a5,0(sp)
    80001d2e:	00078023          	sb	zero,0(a5)
    80001d32:	a809                	j	80001d44 <OSFlagCreate+0x96>
    80001d34:	6562                	ld	a0,24(sp)
    80001d36:	0d4050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001d3a:	6782                	ld	a5,0(sp)
    80001d3c:	07200713          	li	a4,114
    80001d40:	00e78023          	sb	a4,0(a5)
    80001d44:	67c2                	ld	a5,16(sp)
    80001d46:	853e                	mv	a0,a5
    80001d48:	70a2                	ld	ra,40(sp)
    80001d4a:	6145                	addi	sp,sp,48
    80001d4c:	8082                	ret

0000000080001d4e <OSFlagDel>:
    80001d4e:	715d                	addi	sp,sp,-80
    80001d50:	e486                	sd	ra,72(sp)
    80001d52:	ec2a                	sd	a0,24(sp)
    80001d54:	87ae                	mv	a5,a1
    80001d56:	e432                	sd	a2,8(sp)
    80001d58:	00f10ba3          	sb	a5,23(sp)
    80001d5c:	f002                	sd	zero,32(sp)
    80001d5e:	0007f797          	auipc	a5,0x7f
    80001d62:	69a78793          	addi	a5,a5,1690 # 800813f8 <OSIntNesting>
    80001d66:	0007c783          	lbu	a5,0(a5)
    80001d6a:	c799                	beqz	a5,80001d78 <OSFlagDel+0x2a>
    80001d6c:	67a2                	ld	a5,8(sp)
    80001d6e:	473d                	li	a4,15
    80001d70:	00e78023          	sb	a4,0(a5)
    80001d74:	67e2                	ld	a5,24(sp)
    80001d76:	a23d                	j	80001ea4 <OSFlagDel+0x156>
    80001d78:	67e2                	ld	a5,24(sp)
    80001d7a:	0007c783          	lbu	a5,0(a5)
    80001d7e:	873e                	mv	a4,a5
    80001d80:	4795                	li	a5,5
    80001d82:	00f70863          	beq	a4,a5,80001d92 <OSFlagDel+0x44>
    80001d86:	67a2                	ld	a5,8(sp)
    80001d88:	4705                	li	a4,1
    80001d8a:	00e78023          	sb	a4,0(a5)
    80001d8e:	67e2                	ld	a5,24(sp)
    80001d90:	aa11                	j	80001ea4 <OSFlagDel+0x156>
    80001d92:	06e050ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80001d96:	f02a                	sd	a0,32(sp)
    80001d98:	67e2                	ld	a5,24(sp)
    80001d9a:	679c                	ld	a5,8(a5)
    80001d9c:	c789                	beqz	a5,80001da6 <OSFlagDel+0x58>
    80001d9e:	4785                	li	a5,1
    80001da0:	02f10fa3          	sb	a5,63(sp)
    80001da4:	a019                	j	80001daa <OSFlagDel+0x5c>
    80001da6:	02010fa3          	sb	zero,63(sp)
    80001daa:	01714783          	lbu	a5,23(sp)
    80001dae:	2781                	sext.w	a5,a5
    80001db0:	873e                	mv	a4,a5
    80001db2:	c711                	beqz	a4,80001dbe <OSFlagDel+0x70>
    80001db4:	873e                	mv	a4,a5
    80001db6:	4785                	li	a5,1
    80001db8:	06f70463          	beq	a4,a5,80001e20 <OSFlagDel+0xd2>
    80001dbc:	a8c9                	j	80001e8e <OSFlagDel+0x140>
    80001dbe:	03f14783          	lbu	a5,63(sp)
    80001dc2:	0ff7f793          	andi	a5,a5,255
    80001dc6:	e3b1                	bnez	a5,80001e0a <OSFlagDel+0xbc>
    80001dc8:	67e2                	ld	a5,24(sp)
    80001dca:	0007e717          	auipc	a4,0x7e
    80001dce:	33e70713          	addi	a4,a4,830 # 80080108 <OSUnMapTbl+0x100>
    80001dd2:	ef98                	sd	a4,24(a5)
    80001dd4:	67e2                	ld	a5,24(sp)
    80001dd6:	00078023          	sb	zero,0(a5)
    80001dda:	00081797          	auipc	a5,0x81
    80001dde:	82e78793          	addi	a5,a5,-2002 # 80082608 <OSFlagFreeList>
    80001de2:	6398                	ld	a4,0(a5)
    80001de4:	67e2                	ld	a5,24(sp)
    80001de6:	e798                	sd	a4,8(a5)
    80001de8:	67e2                	ld	a5,24(sp)
    80001dea:	00079823          	sh	zero,16(a5)
    80001dee:	00081797          	auipc	a5,0x81
    80001df2:	81a78793          	addi	a5,a5,-2022 # 80082608 <OSFlagFreeList>
    80001df6:	6762                	ld	a4,24(sp)
    80001df8:	e398                	sd	a4,0(a5)
    80001dfa:	7502                	ld	a0,32(sp)
    80001dfc:	00e050ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001e00:	67a2                	ld	a5,8(sp)
    80001e02:	00078023          	sb	zero,0(a5)
    80001e06:	f402                	sd	zero,40(sp)
    80001e08:	a869                	j	80001ea2 <OSFlagDel+0x154>
    80001e0a:	7502                	ld	a0,32(sp)
    80001e0c:	7ff040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001e10:	67a2                	ld	a5,8(sp)
    80001e12:	04900713          	li	a4,73
    80001e16:	00e78023          	sb	a4,0(a5)
    80001e1a:	67e2                	ld	a5,24(sp)
    80001e1c:	f43e                	sd	a5,40(sp)
    80001e1e:	a051                	j	80001ea2 <OSFlagDel+0x154>
    80001e20:	67e2                	ld	a5,24(sp)
    80001e22:	679c                	ld	a5,8(a5)
    80001e24:	f83e                	sd	a5,48(sp)
    80001e26:	a801                	j	80001e36 <OSFlagDel+0xe8>
    80001e28:	4581                	li	a1,0
    80001e2a:	7542                	ld	a0,48(sp)
    80001e2c:	2a5000ef          	jal	ra,800028d0 <OS_FlagTaskRdy>
    80001e30:	77c2                	ld	a5,48(sp)
    80001e32:	639c                	ld	a5,0(a5)
    80001e34:	f83e                	sd	a5,48(sp)
    80001e36:	77c2                	ld	a5,48(sp)
    80001e38:	fbe5                	bnez	a5,80001e28 <OSFlagDel+0xda>
    80001e3a:	67e2                	ld	a5,24(sp)
    80001e3c:	0007e717          	auipc	a4,0x7e
    80001e40:	2cc70713          	addi	a4,a4,716 # 80080108 <OSUnMapTbl+0x100>
    80001e44:	ef98                	sd	a4,24(a5)
    80001e46:	67e2                	ld	a5,24(sp)
    80001e48:	00078023          	sb	zero,0(a5)
    80001e4c:	00080797          	auipc	a5,0x80
    80001e50:	7bc78793          	addi	a5,a5,1980 # 80082608 <OSFlagFreeList>
    80001e54:	6398                	ld	a4,0(a5)
    80001e56:	67e2                	ld	a5,24(sp)
    80001e58:	e798                	sd	a4,8(a5)
    80001e5a:	67e2                	ld	a5,24(sp)
    80001e5c:	00079823          	sh	zero,16(a5)
    80001e60:	00080797          	auipc	a5,0x80
    80001e64:	7a878793          	addi	a5,a5,1960 # 80082608 <OSFlagFreeList>
    80001e68:	6762                	ld	a4,24(sp)
    80001e6a:	e398                	sd	a4,0(a5)
    80001e6c:	7502                	ld	a0,32(sp)
    80001e6e:	79d040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001e72:	03f14783          	lbu	a5,63(sp)
    80001e76:	0ff7f713          	andi	a4,a5,255
    80001e7a:	4785                	li	a5,1
    80001e7c:	00f71463          	bne	a4,a5,80001e84 <OSFlagDel+0x136>
    80001e80:	ec8ff0ef          	jal	ra,80001548 <OS_Sched>
    80001e84:	67a2                	ld	a5,8(sp)
    80001e86:	00078023          	sb	zero,0(a5)
    80001e8a:	f402                	sd	zero,40(sp)
    80001e8c:	a819                	j	80001ea2 <OSFlagDel+0x154>
    80001e8e:	7502                	ld	a0,32(sp)
    80001e90:	77b040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001e94:	67a2                	ld	a5,8(sp)
    80001e96:	471d                	li	a4,7
    80001e98:	00e78023          	sb	a4,0(a5)
    80001e9c:	67e2                	ld	a5,24(sp)
    80001e9e:	f43e                	sd	a5,40(sp)
    80001ea0:	0001                	nop
    80001ea2:	77a2                	ld	a5,40(sp)
    80001ea4:	853e                	mv	a0,a5
    80001ea6:	60a6                	ld	ra,72(sp)
    80001ea8:	6161                	addi	sp,sp,80
    80001eaa:	8082                	ret

0000000080001eac <OSFlagNameGet>:
    80001eac:	7139                	addi	sp,sp,-64
    80001eae:	fc06                	sd	ra,56(sp)
    80001eb0:	ec2a                	sd	a0,24(sp)
    80001eb2:	e82e                	sd	a1,16(sp)
    80001eb4:	e432                	sd	a2,8(sp)
    80001eb6:	f402                	sd	zero,40(sp)
    80001eb8:	0007f797          	auipc	a5,0x7f
    80001ebc:	54078793          	addi	a5,a5,1344 # 800813f8 <OSIntNesting>
    80001ec0:	0007c783          	lbu	a5,0(a5)
    80001ec4:	c799                	beqz	a5,80001ed2 <OSFlagNameGet+0x26>
    80001ec6:	67a2                	ld	a5,8(sp)
    80001ec8:	4745                	li	a4,17
    80001eca:	00e78023          	sb	a4,0(a5)
    80001ece:	4781                	li	a5,0
    80001ed0:	a881                	j	80001f20 <OSFlagNameGet+0x74>
    80001ed2:	72f040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80001ed6:	f42a                	sd	a0,40(sp)
    80001ed8:	67e2                	ld	a5,24(sp)
    80001eda:	0007c783          	lbu	a5,0(a5)
    80001ede:	873e                	mv	a4,a5
    80001ee0:	4795                	li	a5,5
    80001ee2:	00f70b63          	beq	a4,a5,80001ef8 <OSFlagNameGet+0x4c>
    80001ee6:	7522                	ld	a0,40(sp)
    80001ee8:	723040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001eec:	67a2                	ld	a5,8(sp)
    80001eee:	4705                	li	a4,1
    80001ef0:	00e78023          	sb	a4,0(a5)
    80001ef4:	4781                	li	a5,0
    80001ef6:	a02d                	j	80001f20 <OSFlagNameGet+0x74>
    80001ef8:	67e2                	ld	a5,24(sp)
    80001efa:	6f98                	ld	a4,24(a5)
    80001efc:	67c2                	ld	a5,16(sp)
    80001efe:	e398                	sd	a4,0(a5)
    80001f00:	67c2                	ld	a5,16(sp)
    80001f02:	639c                	ld	a5,0(a5)
    80001f04:	853e                	mv	a0,a5
    80001f06:	f58ff0ef          	jal	ra,8000165e <OS_StrLen>
    80001f0a:	87aa                	mv	a5,a0
    80001f0c:	02f103a3          	sb	a5,39(sp)
    80001f10:	7522                	ld	a0,40(sp)
    80001f12:	6f9040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001f16:	67a2                	ld	a5,8(sp)
    80001f18:	00078023          	sb	zero,0(a5)
    80001f1c:	02714783          	lbu	a5,39(sp)
    80001f20:	853e                	mv	a0,a5
    80001f22:	70e2                	ld	ra,56(sp)
    80001f24:	6121                	addi	sp,sp,64
    80001f26:	8082                	ret

0000000080001f28 <OSFlagNameSet>:
    80001f28:	7139                	addi	sp,sp,-64
    80001f2a:	fc06                	sd	ra,56(sp)
    80001f2c:	ec2a                	sd	a0,24(sp)
    80001f2e:	e82e                	sd	a1,16(sp)
    80001f30:	e432                	sd	a2,8(sp)
    80001f32:	f402                	sd	zero,40(sp)
    80001f34:	0007f797          	auipc	a5,0x7f
    80001f38:	4c478793          	addi	a5,a5,1220 # 800813f8 <OSIntNesting>
    80001f3c:	0007c783          	lbu	a5,0(a5)
    80001f40:	c791                	beqz	a5,80001f4c <OSFlagNameSet+0x24>
    80001f42:	67a2                	ld	a5,8(sp)
    80001f44:	4749                	li	a4,18
    80001f46:	00e78023          	sb	a4,0(a5)
    80001f4a:	a82d                	j	80001f84 <OSFlagNameSet+0x5c>
    80001f4c:	6b5040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80001f50:	f42a                	sd	a0,40(sp)
    80001f52:	67e2                	ld	a5,24(sp)
    80001f54:	0007c783          	lbu	a5,0(a5)
    80001f58:	873e                	mv	a4,a5
    80001f5a:	4795                	li	a5,5
    80001f5c:	00f70a63          	beq	a4,a5,80001f70 <OSFlagNameSet+0x48>
    80001f60:	7522                	ld	a0,40(sp)
    80001f62:	6a9040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001f66:	67a2                	ld	a5,8(sp)
    80001f68:	4705                	li	a4,1
    80001f6a:	00e78023          	sb	a4,0(a5)
    80001f6e:	a819                	j	80001f84 <OSFlagNameSet+0x5c>
    80001f70:	67e2                	ld	a5,24(sp)
    80001f72:	6742                	ld	a4,16(sp)
    80001f74:	ef98                	sd	a4,24(a5)
    80001f76:	7522                	ld	a0,40(sp)
    80001f78:	693040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80001f7c:	67a2                	ld	a5,8(sp)
    80001f7e:	00078023          	sb	zero,0(a5)
    80001f82:	0001                	nop
    80001f84:	70e2                	ld	ra,56(sp)
    80001f86:	6121                	addi	sp,sp,64
    80001f88:	8082                	ret

0000000080001f8a <OSFlagPend>:
    80001f8a:	7159                	addi	sp,sp,-112
    80001f8c:	f486                	sd	ra,104(sp)
    80001f8e:	ec2a                	sd	a0,24(sp)
    80001f90:	87ae                	mv	a5,a1
    80001f92:	e43a                	sd	a4,8(sp)
    80001f94:	00f11b23          	sh	a5,22(sp)
    80001f98:	87b2                	mv	a5,a2
    80001f9a:	00f10aa3          	sb	a5,21(sp)
    80001f9e:	87b6                	mv	a5,a3
    80001fa0:	c83e                	sw	a5,16(sp)
    80001fa2:	e882                	sd	zero,80(sp)
    80001fa4:	0007f797          	auipc	a5,0x7f
    80001fa8:	45478793          	addi	a5,a5,1108 # 800813f8 <OSIntNesting>
    80001fac:	0007c783          	lbu	a5,0(a5)
    80001fb0:	c799                	beqz	a5,80001fbe <OSFlagPend+0x34>
    80001fb2:	67a2                	ld	a5,8(sp)
    80001fb4:	4709                	li	a4,2
    80001fb6:	00e78023          	sb	a4,0(a5)
    80001fba:	4781                	li	a5,0
    80001fbc:	aefd                	j	800023ba <OSFlagPend+0x430>
    80001fbe:	0007e797          	auipc	a5,0x7e
    80001fc2:	50a78793          	addi	a5,a5,1290 # 800804c8 <OSLockNesting>
    80001fc6:	0007c783          	lbu	a5,0(a5)
    80001fca:	c799                	beqz	a5,80001fd8 <OSFlagPend+0x4e>
    80001fcc:	67a2                	ld	a5,8(sp)
    80001fce:	4735                	li	a4,13
    80001fd0:	00e78023          	sb	a4,0(a5)
    80001fd4:	4781                	li	a5,0
    80001fd6:	a6d5                	j	800023ba <OSFlagPend+0x430>
    80001fd8:	67e2                	ld	a5,24(sp)
    80001fda:	0007c783          	lbu	a5,0(a5)
    80001fde:	873e                	mv	a4,a5
    80001fe0:	4795                	li	a5,5
    80001fe2:	00f70863          	beq	a4,a5,80001ff2 <OSFlagPend+0x68>
    80001fe6:	67a2                	ld	a5,8(sp)
    80001fe8:	4705                	li	a4,1
    80001fea:	00e78023          	sb	a4,0(a5)
    80001fee:	4781                	li	a5,0
    80001ff0:	a6e9                	j	800023ba <OSFlagPend+0x430>
    80001ff2:	01514783          	lbu	a5,21(sp)
    80001ff6:	f807f793          	andi	a5,a5,-128
    80001ffa:	04f107a3          	sb	a5,79(sp)
    80001ffe:	04f14783          	lbu	a5,79(sp)
    80002002:	0ff7f793          	andi	a5,a5,255
    80002006:	cb99                	beqz	a5,8000201c <OSFlagPend+0x92>
    80002008:	01514783          	lbu	a5,21(sp)
    8000200c:	07f7f793          	andi	a5,a5,127
    80002010:	00f10aa3          	sb	a5,21(sp)
    80002014:	4785                	li	a5,1
    80002016:	04f10fa3          	sb	a5,95(sp)
    8000201a:	a019                	j	80002020 <OSFlagPend+0x96>
    8000201c:	04010fa3          	sb	zero,95(sp)
    80002020:	5e1040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002024:	e8aa                	sd	a0,80(sp)
    80002026:	01514783          	lbu	a5,21(sp)
    8000202a:	2781                	sext.w	a5,a5
    8000202c:	86be                	mv	a3,a5
    8000202e:	4705                	li	a4,1
    80002030:	1ce68463          	beq	a3,a4,800021f8 <OSFlagPend+0x26e>
    80002034:	86be                	mv	a3,a5
    80002036:	4705                	li	a4,1
    80002038:	00d74563          	blt	a4,a3,80002042 <OSFlagPend+0xb8>
    8000203c:	12078663          	beqz	a5,80002168 <OSFlagPend+0x1de>
    80002040:	a481                	j	80002280 <OSFlagPend+0x2f6>
    80002042:	86be                	mv	a3,a5
    80002044:	4709                	li	a4,2
    80002046:	00e68763          	beq	a3,a4,80002054 <OSFlagPend+0xca>
    8000204a:	873e                	mv	a4,a5
    8000204c:	478d                	li	a5,3
    8000204e:	08f70a63          	beq	a4,a5,800020e2 <OSFlagPend+0x158>
    80002052:	a43d                	j	80002280 <OSFlagPend+0x2f6>
    80002054:	67e2                	ld	a5,24(sp)
    80002056:	0107d703          	lhu	a4,16(a5)
    8000205a:	01615783          	lhu	a5,22(sp)
    8000205e:	8ff9                	and	a5,a5,a4
    80002060:	04f11623          	sh	a5,76(sp)
    80002064:	04c15703          	lhu	a4,76(sp)
    80002068:	01615783          	lhu	a5,22(sp)
    8000206c:	2701                	sext.w	a4,a4
    8000206e:	2781                	sext.w	a5,a5
    80002070:	04f71b63          	bne	a4,a5,800020c6 <OSFlagPend+0x13c>
    80002074:	05f14783          	lbu	a5,95(sp)
    80002078:	0ff7f713          	andi	a4,a5,255
    8000207c:	4785                	li	a5,1
    8000207e:	02f71263          	bne	a4,a5,800020a2 <OSFlagPend+0x118>
    80002082:	67e2                	ld	a5,24(sp)
    80002084:	0107d703          	lhu	a4,16(a5)
    80002088:	04c15783          	lhu	a5,76(sp)
    8000208c:	fff7c793          	not	a5,a5
    80002090:	17c2                	slli	a5,a5,0x30
    80002092:	93c1                	srli	a5,a5,0x30
    80002094:	8ff9                	and	a5,a5,a4
    80002096:	03079713          	slli	a4,a5,0x30
    8000209a:	9341                	srli	a4,a4,0x30
    8000209c:	67e2                	ld	a5,24(sp)
    8000209e:	00e79823          	sh	a4,16(a5)
    800020a2:	0007f797          	auipc	a5,0x7f
    800020a6:	35e78793          	addi	a5,a5,862 # 80081400 <OSTCBCur>
    800020aa:	639c                	ld	a5,0(a5)
    800020ac:	04c15703          	lhu	a4,76(sp)
    800020b0:	04e79823          	sh	a4,80(a5)
    800020b4:	6546                	ld	a0,80(sp)
    800020b6:	555040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800020ba:	67a2                	ld	a5,8(sp)
    800020bc:	00078023          	sb	zero,0(a5)
    800020c0:	04c15783          	lhu	a5,76(sp)
    800020c4:	acdd                	j	800023ba <OSFlagPend+0x430>
    800020c6:	4742                	lw	a4,16(sp)
    800020c8:	01514683          	lbu	a3,21(sp)
    800020cc:	01615603          	lhu	a2,22(sp)
    800020d0:	101c                	addi	a5,sp,32
    800020d2:	85be                	mv	a1,a5
    800020d4:	6562                	ld	a0,24(sp)
    800020d6:	5dc000ef          	jal	ra,800026b2 <OS_FlagBlock>
    800020da:	6546                	ld	a0,80(sp)
    800020dc:	52f040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800020e0:	aa6d                	j	8000229a <OSFlagPend+0x310>
    800020e2:	67e2                	ld	a5,24(sp)
    800020e4:	0107d703          	lhu	a4,16(a5)
    800020e8:	01615783          	lhu	a5,22(sp)
    800020ec:	8ff9                	and	a5,a5,a4
    800020ee:	04f11623          	sh	a5,76(sp)
    800020f2:	04c15783          	lhu	a5,76(sp)
    800020f6:	2781                	sext.w	a5,a5
    800020f8:	cbb1                	beqz	a5,8000214c <OSFlagPend+0x1c2>
    800020fa:	05f14783          	lbu	a5,95(sp)
    800020fe:	0ff7f713          	andi	a4,a5,255
    80002102:	4785                	li	a5,1
    80002104:	02f71263          	bne	a4,a5,80002128 <OSFlagPend+0x19e>
    80002108:	67e2                	ld	a5,24(sp)
    8000210a:	0107d703          	lhu	a4,16(a5)
    8000210e:	04c15783          	lhu	a5,76(sp)
    80002112:	fff7c793          	not	a5,a5
    80002116:	17c2                	slli	a5,a5,0x30
    80002118:	93c1                	srli	a5,a5,0x30
    8000211a:	8ff9                	and	a5,a5,a4
    8000211c:	03079713          	slli	a4,a5,0x30
    80002120:	9341                	srli	a4,a4,0x30
    80002122:	67e2                	ld	a5,24(sp)
    80002124:	00e79823          	sh	a4,16(a5)
    80002128:	0007f797          	auipc	a5,0x7f
    8000212c:	2d878793          	addi	a5,a5,728 # 80081400 <OSTCBCur>
    80002130:	639c                	ld	a5,0(a5)
    80002132:	04c15703          	lhu	a4,76(sp)
    80002136:	04e79823          	sh	a4,80(a5)
    8000213a:	6546                	ld	a0,80(sp)
    8000213c:	4cf040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002140:	67a2                	ld	a5,8(sp)
    80002142:	00078023          	sb	zero,0(a5)
    80002146:	04c15783          	lhu	a5,76(sp)
    8000214a:	ac85                	j	800023ba <OSFlagPend+0x430>
    8000214c:	4742                	lw	a4,16(sp)
    8000214e:	01514683          	lbu	a3,21(sp)
    80002152:	01615603          	lhu	a2,22(sp)
    80002156:	101c                	addi	a5,sp,32
    80002158:	85be                	mv	a1,a5
    8000215a:	6562                	ld	a0,24(sp)
    8000215c:	556000ef          	jal	ra,800026b2 <OS_FlagBlock>
    80002160:	6546                	ld	a0,80(sp)
    80002162:	4a9040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002166:	aa15                	j	8000229a <OSFlagPend+0x310>
    80002168:	67e2                	ld	a5,24(sp)
    8000216a:	0107d783          	lhu	a5,16(a5)
    8000216e:	fff7c793          	not	a5,a5
    80002172:	03079713          	slli	a4,a5,0x30
    80002176:	9341                	srli	a4,a4,0x30
    80002178:	01615783          	lhu	a5,22(sp)
    8000217c:	8ff9                	and	a5,a5,a4
    8000217e:	04f11623          	sh	a5,76(sp)
    80002182:	04c15703          	lhu	a4,76(sp)
    80002186:	01615783          	lhu	a5,22(sp)
    8000218a:	2701                	sext.w	a4,a4
    8000218c:	2781                	sext.w	a5,a5
    8000218e:	04f71763          	bne	a4,a5,800021dc <OSFlagPend+0x252>
    80002192:	05f14783          	lbu	a5,95(sp)
    80002196:	0ff7f713          	andi	a4,a5,255
    8000219a:	4785                	li	a5,1
    8000219c:	00f71e63          	bne	a4,a5,800021b8 <OSFlagPend+0x22e>
    800021a0:	67e2                	ld	a5,24(sp)
    800021a2:	0107d703          	lhu	a4,16(a5)
    800021a6:	04c15783          	lhu	a5,76(sp)
    800021aa:	8fd9                	or	a5,a5,a4
    800021ac:	03079713          	slli	a4,a5,0x30
    800021b0:	9341                	srli	a4,a4,0x30
    800021b2:	67e2                	ld	a5,24(sp)
    800021b4:	00e79823          	sh	a4,16(a5)
    800021b8:	0007f797          	auipc	a5,0x7f
    800021bc:	24878793          	addi	a5,a5,584 # 80081400 <OSTCBCur>
    800021c0:	639c                	ld	a5,0(a5)
    800021c2:	04c15703          	lhu	a4,76(sp)
    800021c6:	04e79823          	sh	a4,80(a5)
    800021ca:	6546                	ld	a0,80(sp)
    800021cc:	43f040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800021d0:	67a2                	ld	a5,8(sp)
    800021d2:	00078023          	sb	zero,0(a5)
    800021d6:	04c15783          	lhu	a5,76(sp)
    800021da:	a2c5                	j	800023ba <OSFlagPend+0x430>
    800021dc:	4742                	lw	a4,16(sp)
    800021de:	01514683          	lbu	a3,21(sp)
    800021e2:	01615603          	lhu	a2,22(sp)
    800021e6:	101c                	addi	a5,sp,32
    800021e8:	85be                	mv	a1,a5
    800021ea:	6562                	ld	a0,24(sp)
    800021ec:	4c6000ef          	jal	ra,800026b2 <OS_FlagBlock>
    800021f0:	6546                	ld	a0,80(sp)
    800021f2:	419040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800021f6:	a055                	j	8000229a <OSFlagPend+0x310>
    800021f8:	67e2                	ld	a5,24(sp)
    800021fa:	0107d783          	lhu	a5,16(a5)
    800021fe:	fff7c793          	not	a5,a5
    80002202:	03079713          	slli	a4,a5,0x30
    80002206:	9341                	srli	a4,a4,0x30
    80002208:	01615783          	lhu	a5,22(sp)
    8000220c:	8ff9                	and	a5,a5,a4
    8000220e:	04f11623          	sh	a5,76(sp)
    80002212:	04c15783          	lhu	a5,76(sp)
    80002216:	2781                	sext.w	a5,a5
    80002218:	c7b1                	beqz	a5,80002264 <OSFlagPend+0x2da>
    8000221a:	05f14783          	lbu	a5,95(sp)
    8000221e:	0ff7f713          	andi	a4,a5,255
    80002222:	4785                	li	a5,1
    80002224:	00f71e63          	bne	a4,a5,80002240 <OSFlagPend+0x2b6>
    80002228:	67e2                	ld	a5,24(sp)
    8000222a:	0107d703          	lhu	a4,16(a5)
    8000222e:	04c15783          	lhu	a5,76(sp)
    80002232:	8fd9                	or	a5,a5,a4
    80002234:	03079713          	slli	a4,a5,0x30
    80002238:	9341                	srli	a4,a4,0x30
    8000223a:	67e2                	ld	a5,24(sp)
    8000223c:	00e79823          	sh	a4,16(a5)
    80002240:	0007f797          	auipc	a5,0x7f
    80002244:	1c078793          	addi	a5,a5,448 # 80081400 <OSTCBCur>
    80002248:	639c                	ld	a5,0(a5)
    8000224a:	04c15703          	lhu	a4,76(sp)
    8000224e:	04e79823          	sh	a4,80(a5)
    80002252:	6546                	ld	a0,80(sp)
    80002254:	3b7040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002258:	67a2                	ld	a5,8(sp)
    8000225a:	00078023          	sb	zero,0(a5)
    8000225e:	04c15783          	lhu	a5,76(sp)
    80002262:	aaa1                	j	800023ba <OSFlagPend+0x430>
    80002264:	4742                	lw	a4,16(sp)
    80002266:	01514683          	lbu	a3,21(sp)
    8000226a:	01615603          	lhu	a2,22(sp)
    8000226e:	101c                	addi	a5,sp,32
    80002270:	85be                	mv	a1,a5
    80002272:	6562                	ld	a0,24(sp)
    80002274:	43e000ef          	jal	ra,800026b2 <OS_FlagBlock>
    80002278:	6546                	ld	a0,80(sp)
    8000227a:	391040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000227e:	a831                	j	8000229a <OSFlagPend+0x310>
    80002280:	6546                	ld	a0,80(sp)
    80002282:	389040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002286:	04011623          	sh	zero,76(sp)
    8000228a:	67a2                	ld	a5,8(sp)
    8000228c:	06f00713          	li	a4,111
    80002290:	00e78023          	sb	a4,0(a5)
    80002294:	04c15783          	lhu	a5,76(sp)
    80002298:	a20d                	j	800023ba <OSFlagPend+0x430>
    8000229a:	aaeff0ef          	jal	ra,80001548 <OS_Sched>
    8000229e:	363040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800022a2:	e8aa                	sd	a0,80(sp)
    800022a4:	0007f797          	auipc	a5,0x7f
    800022a8:	15c78793          	addi	a5,a5,348 # 80081400 <OSTCBCur>
    800022ac:	639c                	ld	a5,0(a5)
    800022ae:	0597c783          	lbu	a5,89(a5)
    800022b2:	c7ad                	beqz	a5,8000231c <OSFlagPend+0x392>
    800022b4:	0007f797          	auipc	a5,0x7f
    800022b8:	14c78793          	addi	a5,a5,332 # 80081400 <OSTCBCur>
    800022bc:	639c                	ld	a5,0(a5)
    800022be:	0597c783          	lbu	a5,89(a5)
    800022c2:	04f105a3          	sb	a5,75(sp)
    800022c6:	0007f797          	auipc	a5,0x7f
    800022ca:	13a78793          	addi	a5,a5,314 # 80081400 <OSTCBCur>
    800022ce:	639c                	ld	a5,0(a5)
    800022d0:	04078ca3          	sb	zero,89(a5)
    800022d4:	101c                	addi	a5,sp,32
    800022d6:	853e                	mv	a0,a5
    800022d8:	6b6000ef          	jal	ra,8000298e <OS_FlagUnlink>
    800022dc:	0007f797          	auipc	a5,0x7f
    800022e0:	12478793          	addi	a5,a5,292 # 80081400 <OSTCBCur>
    800022e4:	639c                	ld	a5,0(a5)
    800022e6:	04078c23          	sb	zero,88(a5)
    800022ea:	6546                	ld	a0,80(sp)
    800022ec:	31f040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800022f0:	04011623          	sh	zero,76(sp)
    800022f4:	04b14783          	lbu	a5,75(sp)
    800022f8:	2781                	sext.w	a5,a5
    800022fa:	873e                	mv	a4,a5
    800022fc:	4789                	li	a5,2
    800022fe:	00f71763          	bne	a4,a5,8000230c <OSFlagPend+0x382>
    80002302:	67a2                	ld	a5,8(sp)
    80002304:	4739                	li	a4,14
    80002306:	00e78023          	sb	a4,0(a5)
    8000230a:	a031                	j	80002316 <OSFlagPend+0x38c>
    8000230c:	67a2                	ld	a5,8(sp)
    8000230e:	4729                	li	a4,10
    80002310:	00e78023          	sb	a4,0(a5)
    80002314:	0001                	nop
    80002316:	04c15783          	lhu	a5,76(sp)
    8000231a:	a045                	j	800023ba <OSFlagPend+0x430>
    8000231c:	0007f797          	auipc	a5,0x7f
    80002320:	0e478793          	addi	a5,a5,228 # 80081400 <OSTCBCur>
    80002324:	639c                	ld	a5,0(a5)
    80002326:	0507d783          	lhu	a5,80(a5)
    8000232a:	04f11623          	sh	a5,76(sp)
    8000232e:	05f14783          	lbu	a5,95(sp)
    80002332:	0ff7f713          	andi	a4,a5,255
    80002336:	4785                	li	a5,1
    80002338:	06f71863          	bne	a4,a5,800023a8 <OSFlagPend+0x41e>
    8000233c:	01514783          	lbu	a5,21(sp)
    80002340:	2781                	sext.w	a5,a5
    80002342:	873e                	mv	a4,a5
    80002344:	04074863          	bltz	a4,80002394 <OSFlagPend+0x40a>
    80002348:	86be                	mv	a3,a5
    8000234a:	4705                	li	a4,1
    8000234c:	02d75763          	ble	a3,a4,8000237a <OSFlagPend+0x3f0>
    80002350:	873e                	mv	a4,a5
    80002352:	478d                	li	a5,3
    80002354:	04e7c063          	blt	a5,a4,80002394 <OSFlagPend+0x40a>
    80002358:	67e2                	ld	a5,24(sp)
    8000235a:	0107d703          	lhu	a4,16(a5)
    8000235e:	04c15783          	lhu	a5,76(sp)
    80002362:	fff7c793          	not	a5,a5
    80002366:	17c2                	slli	a5,a5,0x30
    80002368:	93c1                	srli	a5,a5,0x30
    8000236a:	8ff9                	and	a5,a5,a4
    8000236c:	03079713          	slli	a4,a5,0x30
    80002370:	9341                	srli	a4,a4,0x30
    80002372:	67e2                	ld	a5,24(sp)
    80002374:	00e79823          	sh	a4,16(a5)
    80002378:	a80d                	j	800023aa <OSFlagPend+0x420>
    8000237a:	67e2                	ld	a5,24(sp)
    8000237c:	0107d703          	lhu	a4,16(a5)
    80002380:	04c15783          	lhu	a5,76(sp)
    80002384:	8fd9                	or	a5,a5,a4
    80002386:	03079713          	slli	a4,a5,0x30
    8000238a:	9341                	srli	a4,a4,0x30
    8000238c:	67e2                	ld	a5,24(sp)
    8000238e:	00e79823          	sh	a4,16(a5)
    80002392:	a821                	j	800023aa <OSFlagPend+0x420>
    80002394:	6546                	ld	a0,80(sp)
    80002396:	275040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000239a:	67a2                	ld	a5,8(sp)
    8000239c:	06f00713          	li	a4,111
    800023a0:	00e78023          	sb	a4,0(a5)
    800023a4:	4781                	li	a5,0
    800023a6:	a811                	j	800023ba <OSFlagPend+0x430>
    800023a8:	0001                	nop
    800023aa:	6546                	ld	a0,80(sp)
    800023ac:	25f040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800023b0:	67a2                	ld	a5,8(sp)
    800023b2:	00078023          	sb	zero,0(a5)
    800023b6:	04c15783          	lhu	a5,76(sp)
    800023ba:	853e                	mv	a0,a5
    800023bc:	70a6                	ld	ra,104(sp)
    800023be:	6165                	addi	sp,sp,112
    800023c0:	8082                	ret

00000000800023c2 <OSFlagPendGetFlagsRdy>:
    800023c2:	1101                	addi	sp,sp,-32
    800023c4:	ec06                	sd	ra,24(sp)
    800023c6:	e402                	sd	zero,8(sp)
    800023c8:	239040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800023cc:	e42a                	sd	a0,8(sp)
    800023ce:	0007f797          	auipc	a5,0x7f
    800023d2:	03278793          	addi	a5,a5,50 # 80081400 <OSTCBCur>
    800023d6:	639c                	ld	a5,0(a5)
    800023d8:	0507d783          	lhu	a5,80(a5)
    800023dc:	00f11323          	sh	a5,6(sp)
    800023e0:	6522                	ld	a0,8(sp)
    800023e2:	229040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800023e6:	00615783          	lhu	a5,6(sp)
    800023ea:	853e                	mv	a0,a5
    800023ec:	60e2                	ld	ra,24(sp)
    800023ee:	6105                	addi	sp,sp,32
    800023f0:	8082                	ret

00000000800023f2 <OSFlagPost>:
    800023f2:	715d                	addi	sp,sp,-80
    800023f4:	e486                	sd	ra,72(sp)
    800023f6:	ec2a                	sd	a0,24(sp)
    800023f8:	87ae                	mv	a5,a1
    800023fa:	8732                	mv	a4,a2
    800023fc:	e436                	sd	a3,8(sp)
    800023fe:	00f11b23          	sh	a5,22(sp)
    80002402:	87ba                	mv	a5,a4
    80002404:	00f10aa3          	sb	a5,21(sp)
    80002408:	f402                	sd	zero,40(sp)
    8000240a:	67e2                	ld	a5,24(sp)
    8000240c:	0007c783          	lbu	a5,0(a5)
    80002410:	873e                	mv	a4,a5
    80002412:	4795                	li	a5,5
    80002414:	00f70863          	beq	a4,a5,80002424 <OSFlagPost+0x32>
    80002418:	67a2                	ld	a5,8(sp)
    8000241a:	4705                	li	a4,1
    8000241c:	00e78023          	sb	a4,0(a5)
    80002420:	4781                	li	a5,0
    80002422:	ac35                	j	8000265e <OSFlagPost+0x26c>
    80002424:	1dd040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002428:	f42a                	sd	a0,40(sp)
    8000242a:	01514783          	lbu	a5,21(sp)
    8000242e:	2781                	sext.w	a5,a5
    80002430:	873e                	mv	a4,a5
    80002432:	c711                	beqz	a4,8000243e <OSFlagPost+0x4c>
    80002434:	873e                	mv	a4,a5
    80002436:	4785                	li	a5,1
    80002438:	02f70463          	beq	a4,a5,80002460 <OSFlagPost+0x6e>
    8000243c:	a83d                	j	8000247a <OSFlagPost+0x88>
    8000243e:	67e2                	ld	a5,24(sp)
    80002440:	0107d703          	lhu	a4,16(a5)
    80002444:	01615783          	lhu	a5,22(sp)
    80002448:	fff7c793          	not	a5,a5
    8000244c:	17c2                	slli	a5,a5,0x30
    8000244e:	93c1                	srli	a5,a5,0x30
    80002450:	8ff9                	and	a5,a5,a4
    80002452:	03079713          	slli	a4,a5,0x30
    80002456:	9341                	srli	a4,a4,0x30
    80002458:	67e2                	ld	a5,24(sp)
    8000245a:	00e79823          	sh	a4,16(a5)
    8000245e:	a805                	j	8000248e <OSFlagPost+0x9c>
    80002460:	67e2                	ld	a5,24(sp)
    80002462:	0107d703          	lhu	a4,16(a5)
    80002466:	01615783          	lhu	a5,22(sp)
    8000246a:	8fd9                	or	a5,a5,a4
    8000246c:	03079713          	slli	a4,a5,0x30
    80002470:	9341                	srli	a4,a4,0x30
    80002472:	67e2                	ld	a5,24(sp)
    80002474:	00e79823          	sh	a4,16(a5)
    80002478:	a819                	j	8000248e <OSFlagPost+0x9c>
    8000247a:	7522                	ld	a0,40(sp)
    8000247c:	18f040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002480:	67a2                	ld	a5,8(sp)
    80002482:	07100713          	li	a4,113
    80002486:	00e78023          	sb	a4,0(a5)
    8000248a:	4781                	li	a5,0
    8000248c:	aac9                	j	8000265e <OSFlagPost+0x26c>
    8000248e:	02010ba3          	sb	zero,55(sp)
    80002492:	67e2                	ld	a5,24(sp)
    80002494:	679c                	ld	a5,8(a5)
    80002496:	fc3e                	sd	a5,56(sp)
    80002498:	a261                	j	80002620 <OSFlagPost+0x22e>
    8000249a:	77e2                	ld	a5,56(sp)
    8000249c:	0227c783          	lbu	a5,34(a5)
    800024a0:	2781                	sext.w	a5,a5
    800024a2:	86be                	mv	a3,a5
    800024a4:	4705                	li	a4,1
    800024a6:	10e68363          	beq	a3,a4,800025ac <OSFlagPost+0x1ba>
    800024aa:	86be                	mv	a3,a5
    800024ac:	4705                	li	a4,1
    800024ae:	00d74463          	blt	a4,a3,800024b6 <OSFlagPost+0xc4>
    800024b2:	c3d5                	beqz	a5,80002556 <OSFlagPost+0x164>
    800024b4:	a291                	j	800025f8 <OSFlagPost+0x206>
    800024b6:	86be                	mv	a3,a5
    800024b8:	4709                	li	a4,2
    800024ba:	00e68763          	beq	a3,a4,800024c8 <OSFlagPost+0xd6>
    800024be:	873e                	mv	a4,a5
    800024c0:	478d                	li	a5,3
    800024c2:	04f70963          	beq	a4,a5,80002514 <OSFlagPost+0x122>
    800024c6:	aa0d                	j	800025f8 <OSFlagPost+0x206>
    800024c8:	67e2                	ld	a5,24(sp)
    800024ca:	0107d703          	lhu	a4,16(a5)
    800024ce:	77e2                	ld	a5,56(sp)
    800024d0:	0207d783          	lhu	a5,32(a5)
    800024d4:	8ff9                	and	a5,a5,a4
    800024d6:	02f11223          	sh	a5,36(sp)
    800024da:	77e2                	ld	a5,56(sp)
    800024dc:	0207d783          	lhu	a5,32(a5)
    800024e0:	02415703          	lhu	a4,36(sp)
    800024e4:	2701                	sext.w	a4,a4
    800024e6:	2781                	sext.w	a5,a5
    800024e8:	12f71263          	bne	a4,a5,8000260c <OSFlagPost+0x21a>
    800024ec:	02415783          	lhu	a5,36(sp)
    800024f0:	85be                	mv	a1,a5
    800024f2:	7562                	ld	a0,56(sp)
    800024f4:	3dc000ef          	jal	ra,800028d0 <OS_FlagTaskRdy>
    800024f8:	87aa                	mv	a5,a0
    800024fa:	02f101a3          	sb	a5,35(sp)
    800024fe:	02314783          	lbu	a5,35(sp)
    80002502:	0ff7f713          	andi	a4,a5,255
    80002506:	4785                	li	a5,1
    80002508:	10f71263          	bne	a4,a5,8000260c <OSFlagPost+0x21a>
    8000250c:	4785                	li	a5,1
    8000250e:	02f10ba3          	sb	a5,55(sp)
    80002512:	a8ed                	j	8000260c <OSFlagPost+0x21a>
    80002514:	67e2                	ld	a5,24(sp)
    80002516:	0107d703          	lhu	a4,16(a5)
    8000251a:	77e2                	ld	a5,56(sp)
    8000251c:	0207d783          	lhu	a5,32(a5)
    80002520:	8ff9                	and	a5,a5,a4
    80002522:	02f11223          	sh	a5,36(sp)
    80002526:	02415783          	lhu	a5,36(sp)
    8000252a:	2781                	sext.w	a5,a5
    8000252c:	c3f5                	beqz	a5,80002610 <OSFlagPost+0x21e>
    8000252e:	02415783          	lhu	a5,36(sp)
    80002532:	85be                	mv	a1,a5
    80002534:	7562                	ld	a0,56(sp)
    80002536:	39a000ef          	jal	ra,800028d0 <OS_FlagTaskRdy>
    8000253a:	87aa                	mv	a5,a0
    8000253c:	02f101a3          	sb	a5,35(sp)
    80002540:	02314783          	lbu	a5,35(sp)
    80002544:	0ff7f713          	andi	a4,a5,255
    80002548:	4785                	li	a5,1
    8000254a:	0cf71363          	bne	a4,a5,80002610 <OSFlagPost+0x21e>
    8000254e:	4785                	li	a5,1
    80002550:	02f10ba3          	sb	a5,55(sp)
    80002554:	a875                	j	80002610 <OSFlagPost+0x21e>
    80002556:	67e2                	ld	a5,24(sp)
    80002558:	0107d783          	lhu	a5,16(a5)
    8000255c:	fff7c793          	not	a5,a5
    80002560:	03079713          	slli	a4,a5,0x30
    80002564:	9341                	srli	a4,a4,0x30
    80002566:	77e2                	ld	a5,56(sp)
    80002568:	0207d783          	lhu	a5,32(a5)
    8000256c:	8ff9                	and	a5,a5,a4
    8000256e:	02f11223          	sh	a5,36(sp)
    80002572:	77e2                	ld	a5,56(sp)
    80002574:	0207d783          	lhu	a5,32(a5)
    80002578:	02415703          	lhu	a4,36(sp)
    8000257c:	2701                	sext.w	a4,a4
    8000257e:	2781                	sext.w	a5,a5
    80002580:	08f71a63          	bne	a4,a5,80002614 <OSFlagPost+0x222>
    80002584:	02415783          	lhu	a5,36(sp)
    80002588:	85be                	mv	a1,a5
    8000258a:	7562                	ld	a0,56(sp)
    8000258c:	344000ef          	jal	ra,800028d0 <OS_FlagTaskRdy>
    80002590:	87aa                	mv	a5,a0
    80002592:	02f101a3          	sb	a5,35(sp)
    80002596:	02314783          	lbu	a5,35(sp)
    8000259a:	0ff7f713          	andi	a4,a5,255
    8000259e:	4785                	li	a5,1
    800025a0:	06f71a63          	bne	a4,a5,80002614 <OSFlagPost+0x222>
    800025a4:	4785                	li	a5,1
    800025a6:	02f10ba3          	sb	a5,55(sp)
    800025aa:	a0ad                	j	80002614 <OSFlagPost+0x222>
    800025ac:	67e2                	ld	a5,24(sp)
    800025ae:	0107d783          	lhu	a5,16(a5)
    800025b2:	fff7c793          	not	a5,a5
    800025b6:	03079713          	slli	a4,a5,0x30
    800025ba:	9341                	srli	a4,a4,0x30
    800025bc:	77e2                	ld	a5,56(sp)
    800025be:	0207d783          	lhu	a5,32(a5)
    800025c2:	8ff9                	and	a5,a5,a4
    800025c4:	02f11223          	sh	a5,36(sp)
    800025c8:	02415783          	lhu	a5,36(sp)
    800025cc:	2781                	sext.w	a5,a5
    800025ce:	c7a9                	beqz	a5,80002618 <OSFlagPost+0x226>
    800025d0:	02415783          	lhu	a5,36(sp)
    800025d4:	85be                	mv	a1,a5
    800025d6:	7562                	ld	a0,56(sp)
    800025d8:	2f8000ef          	jal	ra,800028d0 <OS_FlagTaskRdy>
    800025dc:	87aa                	mv	a5,a0
    800025de:	02f101a3          	sb	a5,35(sp)
    800025e2:	02314783          	lbu	a5,35(sp)
    800025e6:	0ff7f713          	andi	a4,a5,255
    800025ea:	4785                	li	a5,1
    800025ec:	02f71663          	bne	a4,a5,80002618 <OSFlagPost+0x226>
    800025f0:	4785                	li	a5,1
    800025f2:	02f10ba3          	sb	a5,55(sp)
    800025f6:	a00d                	j	80002618 <OSFlagPost+0x226>
    800025f8:	7522                	ld	a0,40(sp)
    800025fa:	011040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800025fe:	67a2                	ld	a5,8(sp)
    80002600:	06f00713          	li	a4,111
    80002604:	00e78023          	sb	a4,0(a5)
    80002608:	4781                	li	a5,0
    8000260a:	a891                	j	8000265e <OSFlagPost+0x26c>
    8000260c:	0001                	nop
    8000260e:	a031                	j	8000261a <OSFlagPost+0x228>
    80002610:	0001                	nop
    80002612:	a021                	j	8000261a <OSFlagPost+0x228>
    80002614:	0001                	nop
    80002616:	a011                	j	8000261a <OSFlagPost+0x228>
    80002618:	0001                	nop
    8000261a:	77e2                	ld	a5,56(sp)
    8000261c:	639c                	ld	a5,0(a5)
    8000261e:	fc3e                	sd	a5,56(sp)
    80002620:	77e2                	ld	a5,56(sp)
    80002622:	e6079ce3          	bnez	a5,8000249a <OSFlagPost+0xa8>
    80002626:	7522                	ld	a0,40(sp)
    80002628:	7e2040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000262c:	03714783          	lbu	a5,55(sp)
    80002630:	0ff7f713          	andi	a4,a5,255
    80002634:	4785                	li	a5,1
    80002636:	00f71463          	bne	a4,a5,8000263e <OSFlagPost+0x24c>
    8000263a:	f0ffe0ef          	jal	ra,80001548 <OS_Sched>
    8000263e:	7c2040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002642:	f42a                	sd	a0,40(sp)
    80002644:	67e2                	ld	a5,24(sp)
    80002646:	0107d783          	lhu	a5,16(a5)
    8000264a:	02f11323          	sh	a5,38(sp)
    8000264e:	7522                	ld	a0,40(sp)
    80002650:	7ba040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002654:	67a2                	ld	a5,8(sp)
    80002656:	00078023          	sb	zero,0(a5)
    8000265a:	02615783          	lhu	a5,38(sp)
    8000265e:	853e                	mv	a0,a5
    80002660:	60a6                	ld	ra,72(sp)
    80002662:	6161                	addi	sp,sp,80
    80002664:	8082                	ret

0000000080002666 <OSFlagQuery>:
    80002666:	7179                	addi	sp,sp,-48
    80002668:	f406                	sd	ra,40(sp)
    8000266a:	e42a                	sd	a0,8(sp)
    8000266c:	e02e                	sd	a1,0(sp)
    8000266e:	ec02                	sd	zero,24(sp)
    80002670:	67a2                	ld	a5,8(sp)
    80002672:	0007c783          	lbu	a5,0(a5)
    80002676:	873e                	mv	a4,a5
    80002678:	4795                	li	a5,5
    8000267a:	00f70863          	beq	a4,a5,8000268a <OSFlagQuery+0x24>
    8000267e:	6782                	ld	a5,0(sp)
    80002680:	4705                	li	a4,1
    80002682:	00e78023          	sb	a4,0(a5)
    80002686:	4781                	li	a5,0
    80002688:	a00d                	j	800026aa <OSFlagQuery+0x44>
    8000268a:	776040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000268e:	ec2a                	sd	a0,24(sp)
    80002690:	67a2                	ld	a5,8(sp)
    80002692:	0107d783          	lhu	a5,16(a5)
    80002696:	00f11b23          	sh	a5,22(sp)
    8000269a:	6562                	ld	a0,24(sp)
    8000269c:	76e040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800026a0:	6782                	ld	a5,0(sp)
    800026a2:	00078023          	sb	zero,0(a5)
    800026a6:	01615783          	lhu	a5,22(sp)
    800026aa:	853e                	mv	a0,a5
    800026ac:	70a2                	ld	ra,40(sp)
    800026ae:	6145                	addi	sp,sp,48
    800026b0:	8082                	ret

00000000800026b2 <OS_FlagBlock>:
    800026b2:	7179                	addi	sp,sp,-48
    800026b4:	ec2a                	sd	a0,24(sp)
    800026b6:	e82e                	sd	a1,16(sp)
    800026b8:	87b2                	mv	a5,a2
    800026ba:	00f11723          	sh	a5,14(sp)
    800026be:	87b6                	mv	a5,a3
    800026c0:	00f106a3          	sb	a5,13(sp)
    800026c4:	87ba                	mv	a5,a4
    800026c6:	c43e                	sw	a5,8(sp)
    800026c8:	0007f797          	auipc	a5,0x7f
    800026cc:	d3878793          	addi	a5,a5,-712 # 80081400 <OSTCBCur>
    800026d0:	639c                	ld	a5,0(a5)
    800026d2:	0587c703          	lbu	a4,88(a5)
    800026d6:	0007f797          	auipc	a5,0x7f
    800026da:	d2a78793          	addi	a5,a5,-726 # 80081400 <OSTCBCur>
    800026de:	639c                	ld	a5,0(a5)
    800026e0:	02076713          	ori	a4,a4,32
    800026e4:	0ff77713          	andi	a4,a4,255
    800026e8:	04e78c23          	sb	a4,88(a5)
    800026ec:	0007f797          	auipc	a5,0x7f
    800026f0:	d1478793          	addi	a5,a5,-748 # 80081400 <OSTCBCur>
    800026f4:	639c                	ld	a5,0(a5)
    800026f6:	04078ca3          	sb	zero,89(a5)
    800026fa:	0007f797          	auipc	a5,0x7f
    800026fe:	d0678793          	addi	a5,a5,-762 # 80081400 <OSTCBCur>
    80002702:	639c                	ld	a5,0(a5)
    80002704:	4722                	lw	a4,8(sp)
    80002706:	cbf8                	sw	a4,84(a5)
    80002708:	0007f797          	auipc	a5,0x7f
    8000270c:	cf878793          	addi	a5,a5,-776 # 80081400 <OSTCBCur>
    80002710:	639c                	ld	a5,0(a5)
    80002712:	6742                	ld	a4,16(sp)
    80002714:	e7b8                	sd	a4,72(a5)
    80002716:	67c2                	ld	a5,16(sp)
    80002718:	00e15703          	lhu	a4,14(sp)
    8000271c:	02e79023          	sh	a4,32(a5)
    80002720:	67c2                	ld	a5,16(sp)
    80002722:	00d14703          	lbu	a4,13(sp)
    80002726:	02e78123          	sb	a4,34(a5)
    8000272a:	0007f797          	auipc	a5,0x7f
    8000272e:	cd678793          	addi	a5,a5,-810 # 80081400 <OSTCBCur>
    80002732:	6398                	ld	a4,0(a5)
    80002734:	67c2                	ld	a5,16(sp)
    80002736:	eb98                	sd	a4,16(a5)
    80002738:	67e2                	ld	a5,24(sp)
    8000273a:	6798                	ld	a4,8(a5)
    8000273c:	67c2                	ld	a5,16(sp)
    8000273e:	e398                	sd	a4,0(a5)
    80002740:	67c2                	ld	a5,16(sp)
    80002742:	0007b423          	sd	zero,8(a5)
    80002746:	67c2                	ld	a5,16(sp)
    80002748:	6762                	ld	a4,24(sp)
    8000274a:	ef98                	sd	a4,24(a5)
    8000274c:	67e2                	ld	a5,24(sp)
    8000274e:	679c                	ld	a5,8(a5)
    80002750:	f43e                	sd	a5,40(sp)
    80002752:	77a2                	ld	a5,40(sp)
    80002754:	c781                	beqz	a5,8000275c <OS_FlagBlock+0xaa>
    80002756:	77a2                	ld	a5,40(sp)
    80002758:	6742                	ld	a4,16(sp)
    8000275a:	e798                	sd	a4,8(a5)
    8000275c:	67e2                	ld	a5,24(sp)
    8000275e:	6742                	ld	a4,16(sp)
    80002760:	e798                	sd	a4,8(a5)
    80002762:	0007f797          	auipc	a5,0x7f
    80002766:	c9e78793          	addi	a5,a5,-866 # 80081400 <OSTCBCur>
    8000276a:	639c                	ld	a5,0(a5)
    8000276c:	05c7c783          	lbu	a5,92(a5)
    80002770:	02f103a3          	sb	a5,39(sp)
    80002774:	02714783          	lbu	a5,39(sp)
    80002778:	2781                	sext.w	a5,a5
    8000277a:	0007f717          	auipc	a4,0x7f
    8000277e:	86e70713          	addi	a4,a4,-1938 # 80080fe8 <OSRdyTbl>
    80002782:	97ba                	add	a5,a5,a4
    80002784:	0007c683          	lbu	a3,0(a5)
    80002788:	0007f797          	auipc	a5,0x7f
    8000278c:	c7878793          	addi	a5,a5,-904 # 80081400 <OSTCBCur>
    80002790:	639c                	ld	a5,0(a5)
    80002792:	05d7c783          	lbu	a5,93(a5)
    80002796:	fff7c793          	not	a5,a5
    8000279a:	0ff7f713          	andi	a4,a5,255
    8000279e:	02714783          	lbu	a5,39(sp)
    800027a2:	2781                	sext.w	a5,a5
    800027a4:	8f75                	and	a4,a4,a3
    800027a6:	0ff77713          	andi	a4,a4,255
    800027aa:	0007f697          	auipc	a3,0x7f
    800027ae:	83e68693          	addi	a3,a3,-1986 # 80080fe8 <OSRdyTbl>
    800027b2:	97b6                	add	a5,a5,a3
    800027b4:	00e78023          	sb	a4,0(a5)
    800027b8:	02714783          	lbu	a5,39(sp)
    800027bc:	2781                	sext.w	a5,a5
    800027be:	0007f717          	auipc	a4,0x7f
    800027c2:	82a70713          	addi	a4,a4,-2006 # 80080fe8 <OSRdyTbl>
    800027c6:	97ba                	add	a5,a5,a4
    800027c8:	0007c783          	lbu	a5,0(a5)
    800027cc:	eb9d                	bnez	a5,80002802 <OS_FlagBlock+0x150>
    800027ce:	0007f797          	auipc	a5,0x7f
    800027d2:	c3278793          	addi	a5,a5,-974 # 80081400 <OSTCBCur>
    800027d6:	639c                	ld	a5,0(a5)
    800027d8:	05e7c783          	lbu	a5,94(a5)
    800027dc:	fff7c793          	not	a5,a5
    800027e0:	0ff7f713          	andi	a4,a5,255
    800027e4:	0007e797          	auipc	a5,0x7e
    800027e8:	7fc78793          	addi	a5,a5,2044 # 80080fe0 <OSRdyGrp>
    800027ec:	0007c783          	lbu	a5,0(a5)
    800027f0:	8ff9                	and	a5,a5,a4
    800027f2:	0ff7f713          	andi	a4,a5,255
    800027f6:	0007e797          	auipc	a5,0x7e
    800027fa:	7ea78793          	addi	a5,a5,2026 # 80080fe0 <OSRdyGrp>
    800027fe:	00e78023          	sb	a4,0(a5)
    80002802:	0001                	nop
    80002804:	6145                	addi	sp,sp,48
    80002806:	8082                	ret

0000000080002808 <OS_FlagInit>:
    80002808:	7179                	addi	sp,sp,-48
    8000280a:	f406                	sd	ra,40(sp)
    8000280c:	0a000593          	li	a1,160
    80002810:	0007e517          	auipc	a0,0x7e
    80002814:	cd850513          	addi	a0,a0,-808 # 800804e8 <OSFlagTbl>
    80002818:	cc3fe0ef          	jal	ra,800014da <OS_MemClr>
    8000281c:	00011f23          	sh	zero,30(sp)
    80002820:	a8a9                	j	8000287a <OS_FlagInit+0x72>
    80002822:	01e15783          	lhu	a5,30(sp)
    80002826:	2785                	addiw	a5,a5,1
    80002828:	00f11723          	sh	a5,14(sp)
    8000282c:	01e15783          	lhu	a5,30(sp)
    80002830:	2781                	sext.w	a5,a5
    80002832:	00579713          	slli	a4,a5,0x5
    80002836:	0007e797          	auipc	a5,0x7e
    8000283a:	cb278793          	addi	a5,a5,-846 # 800804e8 <OSFlagTbl>
    8000283e:	97ba                	add	a5,a5,a4
    80002840:	e83e                	sd	a5,16(sp)
    80002842:	00e15783          	lhu	a5,14(sp)
    80002846:	2781                	sext.w	a5,a5
    80002848:	00579713          	slli	a4,a5,0x5
    8000284c:	0007e797          	auipc	a5,0x7e
    80002850:	c9c78793          	addi	a5,a5,-868 # 800804e8 <OSFlagTbl>
    80002854:	97ba                	add	a5,a5,a4
    80002856:	e03e                	sd	a5,0(sp)
    80002858:	67c2                	ld	a5,16(sp)
    8000285a:	00078023          	sb	zero,0(a5)
    8000285e:	67c2                	ld	a5,16(sp)
    80002860:	6702                	ld	a4,0(sp)
    80002862:	e798                	sd	a4,8(a5)
    80002864:	67c2                	ld	a5,16(sp)
    80002866:	0007e717          	auipc	a4,0x7e
    8000286a:	8a270713          	addi	a4,a4,-1886 # 80080108 <OSUnMapTbl+0x100>
    8000286e:	ef98                	sd	a4,24(a5)
    80002870:	01e15783          	lhu	a5,30(sp)
    80002874:	2785                	addiw	a5,a5,1
    80002876:	00f11f23          	sh	a5,30(sp)
    8000287a:	01e15783          	lhu	a5,30(sp)
    8000287e:	0007871b          	sext.w	a4,a5
    80002882:	478d                	li	a5,3
    80002884:	f8e7ffe3          	bleu	a4,a5,80002822 <OS_FlagInit+0x1a>
    80002888:	01e15783          	lhu	a5,30(sp)
    8000288c:	2781                	sext.w	a5,a5
    8000288e:	00579713          	slli	a4,a5,0x5
    80002892:	0007e797          	auipc	a5,0x7e
    80002896:	c5678793          	addi	a5,a5,-938 # 800804e8 <OSFlagTbl>
    8000289a:	97ba                	add	a5,a5,a4
    8000289c:	e83e                	sd	a5,16(sp)
    8000289e:	67c2                	ld	a5,16(sp)
    800028a0:	00078023          	sb	zero,0(a5)
    800028a4:	67c2                	ld	a5,16(sp)
    800028a6:	0007b423          	sd	zero,8(a5)
    800028aa:	67c2                	ld	a5,16(sp)
    800028ac:	0007e717          	auipc	a4,0x7e
    800028b0:	85c70713          	addi	a4,a4,-1956 # 80080108 <OSUnMapTbl+0x100>
    800028b4:	ef98                	sd	a4,24(a5)
    800028b6:	00080797          	auipc	a5,0x80
    800028ba:	d5278793          	addi	a5,a5,-686 # 80082608 <OSFlagFreeList>
    800028be:	0007e717          	auipc	a4,0x7e
    800028c2:	c2a70713          	addi	a4,a4,-982 # 800804e8 <OSFlagTbl>
    800028c6:	e398                	sd	a4,0(a5)
    800028c8:	0001                	nop
    800028ca:	70a2                	ld	ra,40(sp)
    800028cc:	6145                	addi	sp,sp,48
    800028ce:	8082                	ret

00000000800028d0 <OS_FlagTaskRdy>:
    800028d0:	7179                	addi	sp,sp,-48
    800028d2:	f406                	sd	ra,40(sp)
    800028d4:	e42a                	sd	a0,8(sp)
    800028d6:	87ae                	mv	a5,a1
    800028d8:	00f11323          	sh	a5,6(sp)
    800028dc:	67a2                	ld	a5,8(sp)
    800028de:	6b9c                	ld	a5,16(a5)
    800028e0:	e83e                	sd	a5,16(sp)
    800028e2:	67c2                	ld	a5,16(sp)
    800028e4:	0407aa23          	sw	zero,84(a5)
    800028e8:	67c2                	ld	a5,16(sp)
    800028ea:	00615703          	lhu	a4,6(sp)
    800028ee:	04e79823          	sh	a4,80(a5)
    800028f2:	67c2                	ld	a5,16(sp)
    800028f4:	0587c783          	lbu	a5,88(a5)
    800028f8:	fdf7f793          	andi	a5,a5,-33
    800028fc:	0ff7f713          	andi	a4,a5,255
    80002900:	67c2                	ld	a5,16(sp)
    80002902:	04e78c23          	sb	a4,88(a5)
    80002906:	67c2                	ld	a5,16(sp)
    80002908:	04078ca3          	sb	zero,89(a5)
    8000290c:	67c2                	ld	a5,16(sp)
    8000290e:	0587c783          	lbu	a5,88(a5)
    80002912:	e3bd                	bnez	a5,80002978 <OS_FlagTaskRdy+0xa8>
    80002914:	67c2                	ld	a5,16(sp)
    80002916:	05e7c703          	lbu	a4,94(a5)
    8000291a:	0007e797          	auipc	a5,0x7e
    8000291e:	6c678793          	addi	a5,a5,1734 # 80080fe0 <OSRdyGrp>
    80002922:	0007c783          	lbu	a5,0(a5)
    80002926:	8fd9                	or	a5,a5,a4
    80002928:	0ff7f713          	andi	a4,a5,255
    8000292c:	0007e797          	auipc	a5,0x7e
    80002930:	6b478793          	addi	a5,a5,1716 # 80080fe0 <OSRdyGrp>
    80002934:	00e78023          	sb	a4,0(a5)
    80002938:	67c2                	ld	a5,16(sp)
    8000293a:	05c7c783          	lbu	a5,92(a5)
    8000293e:	2781                	sext.w	a5,a5
    80002940:	0007e717          	auipc	a4,0x7e
    80002944:	6a870713          	addi	a4,a4,1704 # 80080fe8 <OSRdyTbl>
    80002948:	97ba                	add	a5,a5,a4
    8000294a:	0007c683          	lbu	a3,0(a5)
    8000294e:	67c2                	ld	a5,16(sp)
    80002950:	05d7c703          	lbu	a4,93(a5)
    80002954:	67c2                	ld	a5,16(sp)
    80002956:	05c7c783          	lbu	a5,92(a5)
    8000295a:	2781                	sext.w	a5,a5
    8000295c:	8f55                	or	a4,a4,a3
    8000295e:	0ff77713          	andi	a4,a4,255
    80002962:	0007e697          	auipc	a3,0x7e
    80002966:	68668693          	addi	a3,a3,1670 # 80080fe8 <OSRdyTbl>
    8000296a:	97b6                	add	a5,a5,a3
    8000296c:	00e78023          	sb	a4,0(a5)
    80002970:	4785                	li	a5,1
    80002972:	00f10fa3          	sb	a5,31(sp)
    80002976:	a019                	j	8000297c <OS_FlagTaskRdy+0xac>
    80002978:	00010fa3          	sb	zero,31(sp)
    8000297c:	6522                	ld	a0,8(sp)
    8000297e:	010000ef          	jal	ra,8000298e <OS_FlagUnlink>
    80002982:	01f14783          	lbu	a5,31(sp)
    80002986:	853e                	mv	a0,a5
    80002988:	70a2                	ld	ra,40(sp)
    8000298a:	6145                	addi	sp,sp,48
    8000298c:	8082                	ret

000000008000298e <OS_FlagUnlink>:
    8000298e:	7179                	addi	sp,sp,-48
    80002990:	e42a                	sd	a0,8(sp)
    80002992:	67a2                	ld	a5,8(sp)
    80002994:	679c                	ld	a5,8(a5)
    80002996:	f43e                	sd	a5,40(sp)
    80002998:	67a2                	ld	a5,8(sp)
    8000299a:	639c                	ld	a5,0(a5)
    8000299c:	f03e                	sd	a5,32(sp)
    8000299e:	77a2                	ld	a5,40(sp)
    800029a0:	ef89                	bnez	a5,800029ba <OS_FlagUnlink+0x2c>
    800029a2:	67a2                	ld	a5,8(sp)
    800029a4:	6f9c                	ld	a5,24(a5)
    800029a6:	ec3e                	sd	a5,24(sp)
    800029a8:	67e2                	ld	a5,24(sp)
    800029aa:	7702                	ld	a4,32(sp)
    800029ac:	e798                	sd	a4,8(a5)
    800029ae:	7782                	ld	a5,32(sp)
    800029b0:	cf89                	beqz	a5,800029ca <OS_FlagUnlink+0x3c>
    800029b2:	7782                	ld	a5,32(sp)
    800029b4:	0007b423          	sd	zero,8(a5)
    800029b8:	a809                	j	800029ca <OS_FlagUnlink+0x3c>
    800029ba:	77a2                	ld	a5,40(sp)
    800029bc:	7702                	ld	a4,32(sp)
    800029be:	e398                	sd	a4,0(a5)
    800029c0:	7782                	ld	a5,32(sp)
    800029c2:	c781                	beqz	a5,800029ca <OS_FlagUnlink+0x3c>
    800029c4:	7782                	ld	a5,32(sp)
    800029c6:	7722                	ld	a4,40(sp)
    800029c8:	e798                	sd	a4,8(a5)
    800029ca:	67a2                	ld	a5,8(sp)
    800029cc:	6b9c                	ld	a5,16(a5)
    800029ce:	e83e                	sd	a5,16(sp)
    800029d0:	67c2                	ld	a5,16(sp)
    800029d2:	0407b423          	sd	zero,72(a5)
    800029d6:	0001                	nop
    800029d8:	6145                	addi	sp,sp,48
    800029da:	8082                	ret

00000000800029dc <OSMboxAccept>:
    800029dc:	7179                	addi	sp,sp,-48
    800029de:	f406                	sd	ra,40(sp)
    800029e0:	e42a                	sd	a0,8(sp)
    800029e2:	ec02                	sd	zero,24(sp)
    800029e4:	67a2                	ld	a5,8(sp)
    800029e6:	0007c783          	lbu	a5,0(a5)
    800029ea:	873e                	mv	a4,a5
    800029ec:	4785                	li	a5,1
    800029ee:	00f70463          	beq	a4,a5,800029f6 <OSMboxAccept+0x1a>
    800029f2:	4781                	li	a5,0
    800029f4:	a831                	j	80002a10 <OSMboxAccept+0x34>
    800029f6:	40a040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800029fa:	ec2a                	sd	a0,24(sp)
    800029fc:	67a2                	ld	a5,8(sp)
    800029fe:	679c                	ld	a5,8(a5)
    80002a00:	e83e                	sd	a5,16(sp)
    80002a02:	67a2                	ld	a5,8(sp)
    80002a04:	0007b423          	sd	zero,8(a5)
    80002a08:	6562                	ld	a0,24(sp)
    80002a0a:	400040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002a0e:	67c2                	ld	a5,16(sp)
    80002a10:	853e                	mv	a0,a5
    80002a12:	70a2                	ld	ra,40(sp)
    80002a14:	6145                	addi	sp,sp,48
    80002a16:	8082                	ret

0000000080002a18 <OSMboxCreate>:
    80002a18:	7179                	addi	sp,sp,-48
    80002a1a:	f406                	sd	ra,40(sp)
    80002a1c:	e42a                	sd	a0,8(sp)
    80002a1e:	ec02                	sd	zero,24(sp)
    80002a20:	0007f797          	auipc	a5,0x7f
    80002a24:	9d878793          	addi	a5,a5,-1576 # 800813f8 <OSIntNesting>
    80002a28:	0007c783          	lbu	a5,0(a5)
    80002a2c:	c399                	beqz	a5,80002a32 <OSMboxCreate+0x1a>
    80002a2e:	4781                	li	a5,0
    80002a30:	a0a5                	j	80002a98 <OSMboxCreate+0x80>
    80002a32:	3ce040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002a36:	ec2a                	sd	a0,24(sp)
    80002a38:	0007f797          	auipc	a5,0x7f
    80002a3c:	9b878793          	addi	a5,a5,-1608 # 800813f0 <OSEventFreeList>
    80002a40:	639c                	ld	a5,0(a5)
    80002a42:	e83e                	sd	a5,16(sp)
    80002a44:	0007f797          	auipc	a5,0x7f
    80002a48:	9ac78793          	addi	a5,a5,-1620 # 800813f0 <OSEventFreeList>
    80002a4c:	639c                	ld	a5,0(a5)
    80002a4e:	cf81                	beqz	a5,80002a66 <OSMboxCreate+0x4e>
    80002a50:	0007f797          	auipc	a5,0x7f
    80002a54:	9a078793          	addi	a5,a5,-1632 # 800813f0 <OSEventFreeList>
    80002a58:	639c                	ld	a5,0(a5)
    80002a5a:	6798                	ld	a4,8(a5)
    80002a5c:	0007f797          	auipc	a5,0x7f
    80002a60:	99478793          	addi	a5,a5,-1644 # 800813f0 <OSEventFreeList>
    80002a64:	e398                	sd	a4,0(a5)
    80002a66:	6562                	ld	a0,24(sp)
    80002a68:	3a2040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002a6c:	67c2                	ld	a5,16(sp)
    80002a6e:	c785                	beqz	a5,80002a96 <OSMboxCreate+0x7e>
    80002a70:	67c2                	ld	a5,16(sp)
    80002a72:	4705                	li	a4,1
    80002a74:	00e78023          	sb	a4,0(a5)
    80002a78:	67c2                	ld	a5,16(sp)
    80002a7a:	00079823          	sh	zero,16(a5)
    80002a7e:	67c2                	ld	a5,16(sp)
    80002a80:	6722                	ld	a4,8(sp)
    80002a82:	e798                	sd	a4,8(a5)
    80002a84:	67c2                	ld	a5,16(sp)
    80002a86:	0007d717          	auipc	a4,0x7d
    80002a8a:	68270713          	addi	a4,a4,1666 # 80080108 <OSUnMapTbl+0x100>
    80002a8e:	f398                	sd	a4,32(a5)
    80002a90:	6542                	ld	a0,16(sp)
    80002a92:	eb0fe0ef          	jal	ra,80001142 <OS_EventWaitListInit>
    80002a96:	67c2                	ld	a5,16(sp)
    80002a98:	853e                	mv	a0,a5
    80002a9a:	70a2                	ld	ra,40(sp)
    80002a9c:	6145                	addi	sp,sp,48
    80002a9e:	8082                	ret

0000000080002aa0 <OSMboxDel>:
    80002aa0:	715d                	addi	sp,sp,-80
    80002aa2:	e486                	sd	ra,72(sp)
    80002aa4:	ec2a                	sd	a0,24(sp)
    80002aa6:	87ae                	mv	a5,a1
    80002aa8:	e432                	sd	a2,8(sp)
    80002aaa:	00f10ba3          	sb	a5,23(sp)
    80002aae:	f402                	sd	zero,40(sp)
    80002ab0:	67e2                	ld	a5,24(sp)
    80002ab2:	0007c783          	lbu	a5,0(a5)
    80002ab6:	873e                	mv	a4,a5
    80002ab8:	4785                	li	a5,1
    80002aba:	00f70863          	beq	a4,a5,80002aca <OSMboxDel+0x2a>
    80002abe:	67a2                	ld	a5,8(sp)
    80002ac0:	4705                	li	a4,1
    80002ac2:	00e78023          	sb	a4,0(a5)
    80002ac6:	67e2                	ld	a5,24(sp)
    80002ac8:	a22d                	j	80002bf2 <OSMboxDel+0x152>
    80002aca:	0007f797          	auipc	a5,0x7f
    80002ace:	92e78793          	addi	a5,a5,-1746 # 800813f8 <OSIntNesting>
    80002ad2:	0007c783          	lbu	a5,0(a5)
    80002ad6:	c799                	beqz	a5,80002ae4 <OSMboxDel+0x44>
    80002ad8:	67a2                	ld	a5,8(sp)
    80002ada:	473d                	li	a4,15
    80002adc:	00e78023          	sb	a4,0(a5)
    80002ae0:	67e2                	ld	a5,24(sp)
    80002ae2:	aa01                	j	80002bf2 <OSMboxDel+0x152>
    80002ae4:	31c040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002ae8:	f42a                	sd	a0,40(sp)
    80002aea:	67e2                	ld	a5,24(sp)
    80002aec:	0127c783          	lbu	a5,18(a5)
    80002af0:	c789                	beqz	a5,80002afa <OSMboxDel+0x5a>
    80002af2:	4785                	li	a5,1
    80002af4:	02f10fa3          	sb	a5,63(sp)
    80002af8:	a019                	j	80002afe <OSMboxDel+0x5e>
    80002afa:	02010fa3          	sb	zero,63(sp)
    80002afe:	01714783          	lbu	a5,23(sp)
    80002b02:	2781                	sext.w	a5,a5
    80002b04:	873e                	mv	a4,a5
    80002b06:	c711                	beqz	a4,80002b12 <OSMboxDel+0x72>
    80002b08:	873e                	mv	a4,a5
    80002b0a:	4785                	li	a5,1
    80002b0c:	06f70a63          	beq	a4,a5,80002b80 <OSMboxDel+0xe0>
    80002b10:	a0f1                	j	80002bdc <OSMboxDel+0x13c>
    80002b12:	03f14783          	lbu	a5,63(sp)
    80002b16:	0ff7f793          	andi	a5,a5,255
    80002b1a:	e3b1                	bnez	a5,80002b5e <OSMboxDel+0xbe>
    80002b1c:	67e2                	ld	a5,24(sp)
    80002b1e:	0007d717          	auipc	a4,0x7d
    80002b22:	5ea70713          	addi	a4,a4,1514 # 80080108 <OSUnMapTbl+0x100>
    80002b26:	f398                	sd	a4,32(a5)
    80002b28:	67e2                	ld	a5,24(sp)
    80002b2a:	00078023          	sb	zero,0(a5)
    80002b2e:	0007f797          	auipc	a5,0x7f
    80002b32:	8c278793          	addi	a5,a5,-1854 # 800813f0 <OSEventFreeList>
    80002b36:	6398                	ld	a4,0(a5)
    80002b38:	67e2                	ld	a5,24(sp)
    80002b3a:	e798                	sd	a4,8(a5)
    80002b3c:	67e2                	ld	a5,24(sp)
    80002b3e:	00079823          	sh	zero,16(a5)
    80002b42:	0007f797          	auipc	a5,0x7f
    80002b46:	8ae78793          	addi	a5,a5,-1874 # 800813f0 <OSEventFreeList>
    80002b4a:	6762                	ld	a4,24(sp)
    80002b4c:	e398                	sd	a4,0(a5)
    80002b4e:	7522                	ld	a0,40(sp)
    80002b50:	2ba040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002b54:	67a2                	ld	a5,8(sp)
    80002b56:	00078023          	sb	zero,0(a5)
    80002b5a:	f802                	sd	zero,48(sp)
    80002b5c:	a851                	j	80002bf0 <OSMboxDel+0x150>
    80002b5e:	7522                	ld	a0,40(sp)
    80002b60:	2aa040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002b64:	67a2                	ld	a5,8(sp)
    80002b66:	04900713          	li	a4,73
    80002b6a:	00e78023          	sb	a4,0(a5)
    80002b6e:	67e2                	ld	a5,24(sp)
    80002b70:	f83e                	sd	a5,48(sp)
    80002b72:	a8bd                	j	80002bf0 <OSMboxDel+0x150>
    80002b74:	4681                	li	a3,0
    80002b76:	4609                	li	a2,2
    80002b78:	4581                	li	a1,0
    80002b7a:	6562                	ld	a0,24(sp)
    80002b7c:	908fe0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80002b80:	67e2                	ld	a5,24(sp)
    80002b82:	0127c783          	lbu	a5,18(a5)
    80002b86:	f7fd                	bnez	a5,80002b74 <OSMboxDel+0xd4>
    80002b88:	67e2                	ld	a5,24(sp)
    80002b8a:	0007d717          	auipc	a4,0x7d
    80002b8e:	57e70713          	addi	a4,a4,1406 # 80080108 <OSUnMapTbl+0x100>
    80002b92:	f398                	sd	a4,32(a5)
    80002b94:	67e2                	ld	a5,24(sp)
    80002b96:	00078023          	sb	zero,0(a5)
    80002b9a:	0007f797          	auipc	a5,0x7f
    80002b9e:	85678793          	addi	a5,a5,-1962 # 800813f0 <OSEventFreeList>
    80002ba2:	6398                	ld	a4,0(a5)
    80002ba4:	67e2                	ld	a5,24(sp)
    80002ba6:	e798                	sd	a4,8(a5)
    80002ba8:	67e2                	ld	a5,24(sp)
    80002baa:	00079823          	sh	zero,16(a5)
    80002bae:	0007f797          	auipc	a5,0x7f
    80002bb2:	84278793          	addi	a5,a5,-1982 # 800813f0 <OSEventFreeList>
    80002bb6:	6762                	ld	a4,24(sp)
    80002bb8:	e398                	sd	a4,0(a5)
    80002bba:	7522                	ld	a0,40(sp)
    80002bbc:	24e040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002bc0:	03f14783          	lbu	a5,63(sp)
    80002bc4:	0ff7f713          	andi	a4,a5,255
    80002bc8:	4785                	li	a5,1
    80002bca:	00f71463          	bne	a4,a5,80002bd2 <OSMboxDel+0x132>
    80002bce:	97bfe0ef          	jal	ra,80001548 <OS_Sched>
    80002bd2:	67a2                	ld	a5,8(sp)
    80002bd4:	00078023          	sb	zero,0(a5)
    80002bd8:	f802                	sd	zero,48(sp)
    80002bda:	a819                	j	80002bf0 <OSMboxDel+0x150>
    80002bdc:	7522                	ld	a0,40(sp)
    80002bde:	22c040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002be2:	67a2                	ld	a5,8(sp)
    80002be4:	471d                	li	a4,7
    80002be6:	00e78023          	sb	a4,0(a5)
    80002bea:	67e2                	ld	a5,24(sp)
    80002bec:	f83e                	sd	a5,48(sp)
    80002bee:	0001                	nop
    80002bf0:	77c2                	ld	a5,48(sp)
    80002bf2:	853e                	mv	a0,a5
    80002bf4:	60a6                	ld	ra,72(sp)
    80002bf6:	6161                	addi	sp,sp,80
    80002bf8:	8082                	ret

0000000080002bfa <OSMboxPend>:
    80002bfa:	7139                	addi	sp,sp,-64
    80002bfc:	fc06                	sd	ra,56(sp)
    80002bfe:	ec2a                	sd	a0,24(sp)
    80002c00:	87ae                	mv	a5,a1
    80002c02:	e432                	sd	a2,8(sp)
    80002c04:	ca3e                	sw	a5,20(sp)
    80002c06:	f002                	sd	zero,32(sp)
    80002c08:	67e2                	ld	a5,24(sp)
    80002c0a:	0007c783          	lbu	a5,0(a5)
    80002c0e:	873e                	mv	a4,a5
    80002c10:	4785                	li	a5,1
    80002c12:	00f70863          	beq	a4,a5,80002c22 <OSMboxPend+0x28>
    80002c16:	67a2                	ld	a5,8(sp)
    80002c18:	4705                	li	a4,1
    80002c1a:	00e78023          	sb	a4,0(a5)
    80002c1e:	4781                	li	a5,0
    80002c20:	aab9                	j	80002d7e <OSMboxPend+0x184>
    80002c22:	0007e797          	auipc	a5,0x7e
    80002c26:	7d678793          	addi	a5,a5,2006 # 800813f8 <OSIntNesting>
    80002c2a:	0007c783          	lbu	a5,0(a5)
    80002c2e:	c799                	beqz	a5,80002c3c <OSMboxPend+0x42>
    80002c30:	67a2                	ld	a5,8(sp)
    80002c32:	4709                	li	a4,2
    80002c34:	00e78023          	sb	a4,0(a5)
    80002c38:	4781                	li	a5,0
    80002c3a:	a291                	j	80002d7e <OSMboxPend+0x184>
    80002c3c:	0007e797          	auipc	a5,0x7e
    80002c40:	88c78793          	addi	a5,a5,-1908 # 800804c8 <OSLockNesting>
    80002c44:	0007c783          	lbu	a5,0(a5)
    80002c48:	c799                	beqz	a5,80002c56 <OSMboxPend+0x5c>
    80002c4a:	67a2                	ld	a5,8(sp)
    80002c4c:	4735                	li	a4,13
    80002c4e:	00e78023          	sb	a4,0(a5)
    80002c52:	4781                	li	a5,0
    80002c54:	a22d                	j	80002d7e <OSMboxPend+0x184>
    80002c56:	1aa040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002c5a:	f02a                	sd	a0,32(sp)
    80002c5c:	67e2                	ld	a5,24(sp)
    80002c5e:	679c                	ld	a5,8(a5)
    80002c60:	f43e                	sd	a5,40(sp)
    80002c62:	77a2                	ld	a5,40(sp)
    80002c64:	cf81                	beqz	a5,80002c7c <OSMboxPend+0x82>
    80002c66:	67e2                	ld	a5,24(sp)
    80002c68:	0007b423          	sd	zero,8(a5)
    80002c6c:	7502                	ld	a0,32(sp)
    80002c6e:	19c040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002c72:	67a2                	ld	a5,8(sp)
    80002c74:	00078023          	sb	zero,0(a5)
    80002c78:	77a2                	ld	a5,40(sp)
    80002c7a:	a211                	j	80002d7e <OSMboxPend+0x184>
    80002c7c:	0007e797          	auipc	a5,0x7e
    80002c80:	78478793          	addi	a5,a5,1924 # 80081400 <OSTCBCur>
    80002c84:	639c                	ld	a5,0(a5)
    80002c86:	0587c703          	lbu	a4,88(a5)
    80002c8a:	0007e797          	auipc	a5,0x7e
    80002c8e:	77678793          	addi	a5,a5,1910 # 80081400 <OSTCBCur>
    80002c92:	639c                	ld	a5,0(a5)
    80002c94:	00276713          	ori	a4,a4,2
    80002c98:	0ff77713          	andi	a4,a4,255
    80002c9c:	04e78c23          	sb	a4,88(a5)
    80002ca0:	0007e797          	auipc	a5,0x7e
    80002ca4:	76078793          	addi	a5,a5,1888 # 80081400 <OSTCBCur>
    80002ca8:	639c                	ld	a5,0(a5)
    80002caa:	04078ca3          	sb	zero,89(a5)
    80002cae:	0007e797          	auipc	a5,0x7e
    80002cb2:	75278793          	addi	a5,a5,1874 # 80081400 <OSTCBCur>
    80002cb6:	639c                	ld	a5,0(a5)
    80002cb8:	4752                	lw	a4,20(sp)
    80002cba:	cbf8                	sw	a4,84(a5)
    80002cbc:	6562                	ld	a0,24(sp)
    80002cbe:	90afe0ef          	jal	ra,80000dc8 <OS_EventTaskWait>
    80002cc2:	7502                	ld	a0,32(sp)
    80002cc4:	146040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002cc8:	881fe0ef          	jal	ra,80001548 <OS_Sched>
    80002ccc:	134040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002cd0:	f02a                	sd	a0,32(sp)
    80002cd2:	0007e797          	auipc	a5,0x7e
    80002cd6:	72e78793          	addi	a5,a5,1838 # 80081400 <OSTCBCur>
    80002cda:	639c                	ld	a5,0(a5)
    80002cdc:	0597c783          	lbu	a5,89(a5)
    80002ce0:	2781                	sext.w	a5,a5
    80002ce2:	873e                	mv	a4,a5
    80002ce4:	c711                	beqz	a4,80002cf0 <OSMboxPend+0xf6>
    80002ce6:	873e                	mv	a4,a5
    80002ce8:	4789                	li	a5,2
    80002cea:	00f70e63          	beq	a4,a5,80002d06 <OSMboxPend+0x10c>
    80002cee:	a015                	j	80002d12 <OSMboxPend+0x118>
    80002cf0:	0007e797          	auipc	a5,0x7e
    80002cf4:	71078793          	addi	a5,a5,1808 # 80081400 <OSTCBCur>
    80002cf8:	639c                	ld	a5,0(a5)
    80002cfa:	63bc                	ld	a5,64(a5)
    80002cfc:	f43e                	sd	a5,40(sp)
    80002cfe:	67a2                	ld	a5,8(sp)
    80002d00:	00078023          	sb	zero,0(a5)
    80002d04:	a035                	j	80002d30 <OSMboxPend+0x136>
    80002d06:	f402                	sd	zero,40(sp)
    80002d08:	67a2                	ld	a5,8(sp)
    80002d0a:	4739                	li	a4,14
    80002d0c:	00e78023          	sb	a4,0(a5)
    80002d10:	a005                	j	80002d30 <OSMboxPend+0x136>
    80002d12:	0007e797          	auipc	a5,0x7e
    80002d16:	6ee78793          	addi	a5,a5,1774 # 80081400 <OSTCBCur>
    80002d1a:	639c                	ld	a5,0(a5)
    80002d1c:	65e2                	ld	a1,24(sp)
    80002d1e:	853e                	mv	a0,a5
    80002d20:	b0afe0ef          	jal	ra,8000102a <OS_EventTaskRemove>
    80002d24:	f402                	sd	zero,40(sp)
    80002d26:	67a2                	ld	a5,8(sp)
    80002d28:	4729                	li	a4,10
    80002d2a:	00e78023          	sb	a4,0(a5)
    80002d2e:	0001                	nop
    80002d30:	0007e797          	auipc	a5,0x7e
    80002d34:	6d078793          	addi	a5,a5,1744 # 80081400 <OSTCBCur>
    80002d38:	639c                	ld	a5,0(a5)
    80002d3a:	04078c23          	sb	zero,88(a5)
    80002d3e:	0007e797          	auipc	a5,0x7e
    80002d42:	6c278793          	addi	a5,a5,1730 # 80081400 <OSTCBCur>
    80002d46:	639c                	ld	a5,0(a5)
    80002d48:	04078ca3          	sb	zero,89(a5)
    80002d4c:	0007e797          	auipc	a5,0x7e
    80002d50:	6b478793          	addi	a5,a5,1716 # 80081400 <OSTCBCur>
    80002d54:	639c                	ld	a5,0(a5)
    80002d56:	0207b823          	sd	zero,48(a5)
    80002d5a:	0007e797          	auipc	a5,0x7e
    80002d5e:	6a678793          	addi	a5,a5,1702 # 80081400 <OSTCBCur>
    80002d62:	639c                	ld	a5,0(a5)
    80002d64:	0207bc23          	sd	zero,56(a5)
    80002d68:	0007e797          	auipc	a5,0x7e
    80002d6c:	69878793          	addi	a5,a5,1688 # 80081400 <OSTCBCur>
    80002d70:	639c                	ld	a5,0(a5)
    80002d72:	0407b023          	sd	zero,64(a5)
    80002d76:	7502                	ld	a0,32(sp)
    80002d78:	092040ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002d7c:	77a2                	ld	a5,40(sp)
    80002d7e:	853e                	mv	a0,a5
    80002d80:	70e2                	ld	ra,56(sp)
    80002d82:	6121                	addi	sp,sp,64
    80002d84:	8082                	ret

0000000080002d86 <OSMboxPendAbort>:
    80002d86:	7139                	addi	sp,sp,-64
    80002d88:	fc06                	sd	ra,56(sp)
    80002d8a:	ec2a                	sd	a0,24(sp)
    80002d8c:	87ae                	mv	a5,a1
    80002d8e:	e432                	sd	a2,8(sp)
    80002d90:	00f10ba3          	sb	a5,23(sp)
    80002d94:	f002                	sd	zero,32(sp)
    80002d96:	67e2                	ld	a5,24(sp)
    80002d98:	0007c783          	lbu	a5,0(a5)
    80002d9c:	873e                	mv	a4,a5
    80002d9e:	4785                	li	a5,1
    80002da0:	00f70863          	beq	a4,a5,80002db0 <OSMboxPendAbort+0x2a>
    80002da4:	67a2                	ld	a5,8(sp)
    80002da6:	4705                	li	a4,1
    80002da8:	00e78023          	sb	a4,0(a5)
    80002dac:	4781                	li	a5,0
    80002dae:	a049                	j	80002e30 <OSMboxPendAbort+0xaa>
    80002db0:	050040ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002db4:	f02a                	sd	a0,32(sp)
    80002db6:	67e2                	ld	a5,24(sp)
    80002db8:	0127c783          	lbu	a5,18(a5)
    80002dbc:	c3bd                	beqz	a5,80002e22 <OSMboxPendAbort+0x9c>
    80002dbe:	020107a3          	sb	zero,47(sp)
    80002dc2:	01714783          	lbu	a5,23(sp)
    80002dc6:	2781                	sext.w	a5,a5
    80002dc8:	873e                	mv	a4,a5
    80002dca:	4785                	li	a5,1
    80002dcc:	02f71363          	bne	a4,a5,80002df2 <OSMboxPendAbort+0x6c>
    80002dd0:	a821                	j	80002de8 <OSMboxPendAbort+0x62>
    80002dd2:	4689                	li	a3,2
    80002dd4:	4609                	li	a2,2
    80002dd6:	4581                	li	a1,0
    80002dd8:	6562                	ld	a0,24(sp)
    80002dda:	eabfd0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80002dde:	02f14783          	lbu	a5,47(sp)
    80002de2:	2785                	addiw	a5,a5,1
    80002de4:	02f107a3          	sb	a5,47(sp)
    80002de8:	67e2                	ld	a5,24(sp)
    80002dea:	0127c783          	lbu	a5,18(a5)
    80002dee:	f3f5                	bnez	a5,80002dd2 <OSMboxPendAbort+0x4c>
    80002df0:	a829                	j	80002e0a <OSMboxPendAbort+0x84>
    80002df2:	4689                	li	a3,2
    80002df4:	4609                	li	a2,2
    80002df6:	4581                	li	a1,0
    80002df8:	6562                	ld	a0,24(sp)
    80002dfa:	e8bfd0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80002dfe:	02f14783          	lbu	a5,47(sp)
    80002e02:	2785                	addiw	a5,a5,1
    80002e04:	02f107a3          	sb	a5,47(sp)
    80002e08:	0001                	nop
    80002e0a:	7502                	ld	a0,32(sp)
    80002e0c:	7ff030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002e10:	f38fe0ef          	jal	ra,80001548 <OS_Sched>
    80002e14:	67a2                	ld	a5,8(sp)
    80002e16:	4739                	li	a4,14
    80002e18:	00e78023          	sb	a4,0(a5)
    80002e1c:	02f14783          	lbu	a5,47(sp)
    80002e20:	a801                	j	80002e30 <OSMboxPendAbort+0xaa>
    80002e22:	7502                	ld	a0,32(sp)
    80002e24:	7e7030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002e28:	67a2                	ld	a5,8(sp)
    80002e2a:	00078023          	sb	zero,0(a5)
    80002e2e:	4781                	li	a5,0
    80002e30:	853e                	mv	a0,a5
    80002e32:	70e2                	ld	ra,56(sp)
    80002e34:	6121                	addi	sp,sp,64
    80002e36:	8082                	ret

0000000080002e38 <OSMboxPost>:
    80002e38:	7179                	addi	sp,sp,-48
    80002e3a:	f406                	sd	ra,40(sp)
    80002e3c:	e42a                	sd	a0,8(sp)
    80002e3e:	e02e                	sd	a1,0(sp)
    80002e40:	ec02                	sd	zero,24(sp)
    80002e42:	67a2                	ld	a5,8(sp)
    80002e44:	0007c783          	lbu	a5,0(a5)
    80002e48:	873e                	mv	a4,a5
    80002e4a:	4785                	li	a5,1
    80002e4c:	00f70463          	beq	a4,a5,80002e54 <OSMboxPost+0x1c>
    80002e50:	4785                	li	a5,1
    80002e52:	a0a1                	j	80002e9a <OSMboxPost+0x62>
    80002e54:	7ad030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002e58:	ec2a                	sd	a0,24(sp)
    80002e5a:	67a2                	ld	a5,8(sp)
    80002e5c:	0127c783          	lbu	a5,18(a5)
    80002e60:	cf91                	beqz	a5,80002e7c <OSMboxPost+0x44>
    80002e62:	4681                	li	a3,0
    80002e64:	4609                	li	a2,2
    80002e66:	6582                	ld	a1,0(sp)
    80002e68:	6522                	ld	a0,8(sp)
    80002e6a:	e1bfd0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80002e6e:	6562                	ld	a0,24(sp)
    80002e70:	79b030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002e74:	ed4fe0ef          	jal	ra,80001548 <OS_Sched>
    80002e78:	4781                	li	a5,0
    80002e7a:	a005                	j	80002e9a <OSMboxPost+0x62>
    80002e7c:	67a2                	ld	a5,8(sp)
    80002e7e:	679c                	ld	a5,8(a5)
    80002e80:	c791                	beqz	a5,80002e8c <OSMboxPost+0x54>
    80002e82:	6562                	ld	a0,24(sp)
    80002e84:	787030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002e88:	47d1                	li	a5,20
    80002e8a:	a801                	j	80002e9a <OSMboxPost+0x62>
    80002e8c:	67a2                	ld	a5,8(sp)
    80002e8e:	6702                	ld	a4,0(sp)
    80002e90:	e798                	sd	a4,8(a5)
    80002e92:	6562                	ld	a0,24(sp)
    80002e94:	777030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002e98:	4781                	li	a5,0
    80002e9a:	853e                	mv	a0,a5
    80002e9c:	70a2                	ld	ra,40(sp)
    80002e9e:	6145                	addi	sp,sp,48
    80002ea0:	8082                	ret

0000000080002ea2 <OSMboxPostOpt>:
    80002ea2:	7139                	addi	sp,sp,-64
    80002ea4:	fc06                	sd	ra,56(sp)
    80002ea6:	ec2a                	sd	a0,24(sp)
    80002ea8:	e82e                	sd	a1,16(sp)
    80002eaa:	87b2                	mv	a5,a2
    80002eac:	00f107a3          	sb	a5,15(sp)
    80002eb0:	f402                	sd	zero,40(sp)
    80002eb2:	67e2                	ld	a5,24(sp)
    80002eb4:	0007c783          	lbu	a5,0(a5)
    80002eb8:	873e                	mv	a4,a5
    80002eba:	4785                	li	a5,1
    80002ebc:	00f70463          	beq	a4,a5,80002ec4 <OSMboxPostOpt+0x22>
    80002ec0:	4785                	li	a5,1
    80002ec2:	a8a5                	j	80002f3a <OSMboxPostOpt+0x98>
    80002ec4:	73d030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002ec8:	f42a                	sd	a0,40(sp)
    80002eca:	67e2                	ld	a5,24(sp)
    80002ecc:	0127c783          	lbu	a5,18(a5)
    80002ed0:	c7b1                	beqz	a5,80002f1c <OSMboxPostOpt+0x7a>
    80002ed2:	00f14783          	lbu	a5,15(sp)
    80002ed6:	2781                	sext.w	a5,a5
    80002ed8:	8b85                	andi	a5,a5,1
    80002eda:	2781                	sext.w	a5,a5
    80002edc:	cf89                	beqz	a5,80002ef6 <OSMboxPostOpt+0x54>
    80002ede:	a039                	j	80002eec <OSMboxPostOpt+0x4a>
    80002ee0:	4681                	li	a3,0
    80002ee2:	4609                	li	a2,2
    80002ee4:	65c2                	ld	a1,16(sp)
    80002ee6:	6562                	ld	a0,24(sp)
    80002ee8:	d9dfd0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80002eec:	67e2                	ld	a5,24(sp)
    80002eee:	0127c783          	lbu	a5,18(a5)
    80002ef2:	f7fd                	bnez	a5,80002ee0 <OSMboxPostOpt+0x3e>
    80002ef4:	a039                	j	80002f02 <OSMboxPostOpt+0x60>
    80002ef6:	4681                	li	a3,0
    80002ef8:	4609                	li	a2,2
    80002efa:	65c2                	ld	a1,16(sp)
    80002efc:	6562                	ld	a0,24(sp)
    80002efe:	d87fd0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80002f02:	7522                	ld	a0,40(sp)
    80002f04:	707030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002f08:	00f14783          	lbu	a5,15(sp)
    80002f0c:	2781                	sext.w	a5,a5
    80002f0e:	8b91                	andi	a5,a5,4
    80002f10:	2781                	sext.w	a5,a5
    80002f12:	e399                	bnez	a5,80002f18 <OSMboxPostOpt+0x76>
    80002f14:	e34fe0ef          	jal	ra,80001548 <OS_Sched>
    80002f18:	4781                	li	a5,0
    80002f1a:	a005                	j	80002f3a <OSMboxPostOpt+0x98>
    80002f1c:	67e2                	ld	a5,24(sp)
    80002f1e:	679c                	ld	a5,8(a5)
    80002f20:	c791                	beqz	a5,80002f2c <OSMboxPostOpt+0x8a>
    80002f22:	7522                	ld	a0,40(sp)
    80002f24:	6e7030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002f28:	47d1                	li	a5,20
    80002f2a:	a801                	j	80002f3a <OSMboxPostOpt+0x98>
    80002f2c:	67e2                	ld	a5,24(sp)
    80002f2e:	6742                	ld	a4,16(sp)
    80002f30:	e798                	sd	a4,8(a5)
    80002f32:	7522                	ld	a0,40(sp)
    80002f34:	6d7030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002f38:	4781                	li	a5,0
    80002f3a:	853e                	mv	a0,a5
    80002f3c:	70e2                	ld	ra,56(sp)
    80002f3e:	6121                	addi	sp,sp,64
    80002f40:	8082                	ret

0000000080002f42 <OSMboxQuery>:
    80002f42:	7139                	addi	sp,sp,-64
    80002f44:	fc06                	sd	ra,56(sp)
    80002f46:	e42a                	sd	a0,8(sp)
    80002f48:	e02e                	sd	a1,0(sp)
    80002f4a:	e802                	sd	zero,16(sp)
    80002f4c:	67a2                	ld	a5,8(sp)
    80002f4e:	0007c783          	lbu	a5,0(a5)
    80002f52:	873e                	mv	a4,a5
    80002f54:	4785                	li	a5,1
    80002f56:	00f70463          	beq	a4,a5,80002f5e <OSMboxQuery+0x1c>
    80002f5a:	4785                	li	a5,1
    80002f5c:	a09d                	j	80002fc2 <OSMboxQuery+0x80>
    80002f5e:	6a3030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002f62:	e82a                	sd	a0,16(sp)
    80002f64:	67a2                	ld	a5,8(sp)
    80002f66:	0127c703          	lbu	a4,18(a5)
    80002f6a:	6782                	ld	a5,0(sp)
    80002f6c:	00e78823          	sb	a4,16(a5)
    80002f70:	67a2                	ld	a5,8(sp)
    80002f72:	07cd                	addi	a5,a5,19
    80002f74:	f03e                	sd	a5,32(sp)
    80002f76:	6782                	ld	a5,0(sp)
    80002f78:	07a1                	addi	a5,a5,8
    80002f7a:	ec3e                	sd	a5,24(sp)
    80002f7c:	020107a3          	sb	zero,47(sp)
    80002f80:	a015                	j	80002fa4 <OSMboxQuery+0x62>
    80002f82:	7702                	ld	a4,32(sp)
    80002f84:	00170793          	addi	a5,a4,1
    80002f88:	f03e                	sd	a5,32(sp)
    80002f8a:	67e2                	ld	a5,24(sp)
    80002f8c:	00178693          	addi	a3,a5,1
    80002f90:	ec36                	sd	a3,24(sp)
    80002f92:	00074703          	lbu	a4,0(a4)
    80002f96:	00e78023          	sb	a4,0(a5)
    80002f9a:	02f14783          	lbu	a5,47(sp)
    80002f9e:	2785                	addiw	a5,a5,1
    80002fa0:	02f107a3          	sb	a5,47(sp)
    80002fa4:	02f14783          	lbu	a5,47(sp)
    80002fa8:	0ff7f713          	andi	a4,a5,255
    80002fac:	479d                	li	a5,7
    80002fae:	fce7fae3          	bleu	a4,a5,80002f82 <OSMboxQuery+0x40>
    80002fb2:	67a2                	ld	a5,8(sp)
    80002fb4:	6798                	ld	a4,8(a5)
    80002fb6:	6782                	ld	a5,0(sp)
    80002fb8:	e398                	sd	a4,0(a5)
    80002fba:	6542                	ld	a0,16(sp)
    80002fbc:	64f030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80002fc0:	4781                	li	a5,0
    80002fc2:	853e                	mv	a0,a5
    80002fc4:	70e2                	ld	ra,56(sp)
    80002fc6:	6121                	addi	sp,sp,64
    80002fc8:	8082                	ret

0000000080002fca <OSMemCreate>:
    80002fca:	711d                	addi	sp,sp,-96
    80002fcc:	ec86                	sd	ra,88(sp)
    80002fce:	ec2a                	sd	a0,24(sp)
    80002fd0:	87ae                	mv	a5,a1
    80002fd2:	8732                	mv	a4,a2
    80002fd4:	e436                	sd	a3,8(sp)
    80002fd6:	ca3e                	sw	a5,20(sp)
    80002fd8:	87ba                	mv	a5,a4
    80002fda:	c83e                	sw	a5,16(sp)
    80002fdc:	f802                	sd	zero,48(sp)
    80002fde:	623030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80002fe2:	f82a                	sd	a0,48(sp)
    80002fe4:	0007e797          	auipc	a5,0x7e
    80002fe8:	f2478793          	addi	a5,a5,-220 # 80080f08 <OSMemFreeList>
    80002fec:	639c                	ld	a5,0(a5)
    80002fee:	f43e                	sd	a5,40(sp)
    80002ff0:	0007e797          	auipc	a5,0x7e
    80002ff4:	f1878793          	addi	a5,a5,-232 # 80080f08 <OSMemFreeList>
    80002ff8:	639c                	ld	a5,0(a5)
    80002ffa:	cf81                	beqz	a5,80003012 <OSMemCreate+0x48>
    80002ffc:	0007e797          	auipc	a5,0x7e
    80003000:	f0c78793          	addi	a5,a5,-244 # 80080f08 <OSMemFreeList>
    80003004:	639c                	ld	a5,0(a5)
    80003006:	6798                	ld	a4,8(a5)
    80003008:	0007e797          	auipc	a5,0x7e
    8000300c:	f0078793          	addi	a5,a5,-256 # 80080f08 <OSMemFreeList>
    80003010:	e398                	sd	a4,0(a5)
    80003012:	7542                	ld	a0,48(sp)
    80003014:	5f7030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003018:	77a2                	ld	a5,40(sp)
    8000301a:	eb81                	bnez	a5,8000302a <OSMemCreate+0x60>
    8000301c:	67a2                	ld	a5,8(sp)
    8000301e:	05a00713          	li	a4,90
    80003022:	00e78023          	sb	a4,0(a5)
    80003026:	4781                	li	a5,0
    80003028:	a09d                	j	8000308e <OSMemCreate+0xc4>
    8000302a:	67e2                	ld	a5,24(sp)
    8000302c:	e0be                	sd	a5,64(sp)
    8000302e:	67e2                	ld	a5,24(sp)
    80003030:	e4be                	sd	a5,72(sp)
    80003032:	47d2                	lw	a5,20(sp)
    80003034:	37fd                	addiw	a5,a5,-1
    80003036:	d23e                	sw	a5,36(sp)
    80003038:	de02                	sw	zero,60(sp)
    8000303a:	a831                	j	80003056 <OSMemCreate+0x8c>
    8000303c:	01016783          	lwu	a5,16(sp)
    80003040:	6726                	ld	a4,72(sp)
    80003042:	97ba                	add	a5,a5,a4
    80003044:	e4be                	sd	a5,72(sp)
    80003046:	6786                	ld	a5,64(sp)
    80003048:	6726                	ld	a4,72(sp)
    8000304a:	e398                	sd	a4,0(a5)
    8000304c:	67a6                	ld	a5,72(sp)
    8000304e:	e0be                	sd	a5,64(sp)
    80003050:	57f2                	lw	a5,60(sp)
    80003052:	2785                	addiw	a5,a5,1
    80003054:	de3e                	sw	a5,60(sp)
    80003056:	5772                	lw	a4,60(sp)
    80003058:	5792                	lw	a5,36(sp)
    8000305a:	2701                	sext.w	a4,a4
    8000305c:	2781                	sext.w	a5,a5
    8000305e:	fcf76fe3          	bltu	a4,a5,8000303c <OSMemCreate+0x72>
    80003062:	6786                	ld	a5,64(sp)
    80003064:	0007b023          	sd	zero,0(a5)
    80003068:	77a2                	ld	a5,40(sp)
    8000306a:	6762                	ld	a4,24(sp)
    8000306c:	e398                	sd	a4,0(a5)
    8000306e:	77a2                	ld	a5,40(sp)
    80003070:	6762                	ld	a4,24(sp)
    80003072:	e798                	sd	a4,8(a5)
    80003074:	77a2                	ld	a5,40(sp)
    80003076:	4752                	lw	a4,20(sp)
    80003078:	cf98                	sw	a4,24(a5)
    8000307a:	77a2                	ld	a5,40(sp)
    8000307c:	4752                	lw	a4,20(sp)
    8000307e:	cbd8                	sw	a4,20(a5)
    80003080:	77a2                	ld	a5,40(sp)
    80003082:	4742                	lw	a4,16(sp)
    80003084:	cb98                	sw	a4,16(a5)
    80003086:	67a2                	ld	a5,8(sp)
    80003088:	00078023          	sb	zero,0(a5)
    8000308c:	77a2                	ld	a5,40(sp)
    8000308e:	853e                	mv	a0,a5
    80003090:	60e6                	ld	ra,88(sp)
    80003092:	6125                	addi	sp,sp,96
    80003094:	8082                	ret

0000000080003096 <OSMemGet>:
    80003096:	7179                	addi	sp,sp,-48
    80003098:	f406                	sd	ra,40(sp)
    8000309a:	e42a                	sd	a0,8(sp)
    8000309c:	e02e                	sd	a1,0(sp)
    8000309e:	ec02                	sd	zero,24(sp)
    800030a0:	561030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800030a4:	ec2a                	sd	a0,24(sp)
    800030a6:	67a2                	ld	a5,8(sp)
    800030a8:	4f9c                	lw	a5,24(a5)
    800030aa:	c79d                	beqz	a5,800030d8 <OSMemGet+0x42>
    800030ac:	67a2                	ld	a5,8(sp)
    800030ae:	679c                	ld	a5,8(a5)
    800030b0:	e83e                	sd	a5,16(sp)
    800030b2:	67c2                	ld	a5,16(sp)
    800030b4:	6398                	ld	a4,0(a5)
    800030b6:	67a2                	ld	a5,8(sp)
    800030b8:	e798                	sd	a4,8(a5)
    800030ba:	67a2                	ld	a5,8(sp)
    800030bc:	4f9c                	lw	a5,24(a5)
    800030be:	37fd                	addiw	a5,a5,-1
    800030c0:	0007871b          	sext.w	a4,a5
    800030c4:	67a2                	ld	a5,8(sp)
    800030c6:	cf98                	sw	a4,24(a5)
    800030c8:	6562                	ld	a0,24(sp)
    800030ca:	541030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800030ce:	6782                	ld	a5,0(sp)
    800030d0:	00078023          	sb	zero,0(a5)
    800030d4:	67c2                	ld	a5,16(sp)
    800030d6:	a811                	j	800030ea <OSMemGet+0x54>
    800030d8:	6562                	ld	a0,24(sp)
    800030da:	531030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800030de:	6782                	ld	a5,0(sp)
    800030e0:	05d00713          	li	a4,93
    800030e4:	00e78023          	sb	a4,0(a5)
    800030e8:	4781                	li	a5,0
    800030ea:	853e                	mv	a0,a5
    800030ec:	70a2                	ld	ra,40(sp)
    800030ee:	6145                	addi	sp,sp,48
    800030f0:	8082                	ret

00000000800030f2 <OSMemNameGet>:
    800030f2:	7139                	addi	sp,sp,-64
    800030f4:	fc06                	sd	ra,56(sp)
    800030f6:	ec2a                	sd	a0,24(sp)
    800030f8:	e82e                	sd	a1,16(sp)
    800030fa:	e432                	sd	a2,8(sp)
    800030fc:	f402                	sd	zero,40(sp)
    800030fe:	0007e797          	auipc	a5,0x7e
    80003102:	2fa78793          	addi	a5,a5,762 # 800813f8 <OSIntNesting>
    80003106:	0007c783          	lbu	a5,0(a5)
    8000310a:	c799                	beqz	a5,80003118 <OSMemNameGet+0x26>
    8000310c:	67a2                	ld	a5,8(sp)
    8000310e:	4745                	li	a4,17
    80003110:	00e78023          	sb	a4,0(a5)
    80003114:	4781                	li	a5,0
    80003116:	a805                	j	80003146 <OSMemNameGet+0x54>
    80003118:	4e9030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000311c:	f42a                	sd	a0,40(sp)
    8000311e:	67e2                	ld	a5,24(sp)
    80003120:	7398                	ld	a4,32(a5)
    80003122:	67c2                	ld	a5,16(sp)
    80003124:	e398                	sd	a4,0(a5)
    80003126:	67c2                	ld	a5,16(sp)
    80003128:	639c                	ld	a5,0(a5)
    8000312a:	853e                	mv	a0,a5
    8000312c:	d32fe0ef          	jal	ra,8000165e <OS_StrLen>
    80003130:	87aa                	mv	a5,a0
    80003132:	02f103a3          	sb	a5,39(sp)
    80003136:	7522                	ld	a0,40(sp)
    80003138:	4d3030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000313c:	67a2                	ld	a5,8(sp)
    8000313e:	00078023          	sb	zero,0(a5)
    80003142:	02714783          	lbu	a5,39(sp)
    80003146:	853e                	mv	a0,a5
    80003148:	70e2                	ld	ra,56(sp)
    8000314a:	6121                	addi	sp,sp,64
    8000314c:	8082                	ret

000000008000314e <OSMemNameSet>:
    8000314e:	7139                	addi	sp,sp,-64
    80003150:	fc06                	sd	ra,56(sp)
    80003152:	ec2a                	sd	a0,24(sp)
    80003154:	e82e                	sd	a1,16(sp)
    80003156:	e432                	sd	a2,8(sp)
    80003158:	f402                	sd	zero,40(sp)
    8000315a:	0007e797          	auipc	a5,0x7e
    8000315e:	29e78793          	addi	a5,a5,670 # 800813f8 <OSIntNesting>
    80003162:	0007c783          	lbu	a5,0(a5)
    80003166:	c791                	beqz	a5,80003172 <OSMemNameSet+0x24>
    80003168:	67a2                	ld	a5,8(sp)
    8000316a:	4749                	li	a4,18
    8000316c:	00e78023          	sb	a4,0(a5)
    80003170:	a829                	j	8000318a <OSMemNameSet+0x3c>
    80003172:	48f030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80003176:	f42a                	sd	a0,40(sp)
    80003178:	67e2                	ld	a5,24(sp)
    8000317a:	6742                	ld	a4,16(sp)
    8000317c:	f398                	sd	a4,32(a5)
    8000317e:	7522                	ld	a0,40(sp)
    80003180:	48b030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003184:	67a2                	ld	a5,8(sp)
    80003186:	00078023          	sb	zero,0(a5)
    8000318a:	70e2                	ld	ra,56(sp)
    8000318c:	6121                	addi	sp,sp,64
    8000318e:	8082                	ret

0000000080003190 <OSMemPut>:
    80003190:	7179                	addi	sp,sp,-48
    80003192:	f406                	sd	ra,40(sp)
    80003194:	e42a                	sd	a0,8(sp)
    80003196:	e02e                	sd	a1,0(sp)
    80003198:	ec02                	sd	zero,24(sp)
    8000319a:	467030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000319e:	ec2a                	sd	a0,24(sp)
    800031a0:	67a2                	ld	a5,8(sp)
    800031a2:	4f98                	lw	a4,24(a5)
    800031a4:	67a2                	ld	a5,8(sp)
    800031a6:	4bdc                	lw	a5,20(a5)
    800031a8:	00f76863          	bltu	a4,a5,800031b8 <OSMemPut+0x28>
    800031ac:	6562                	ld	a0,24(sp)
    800031ae:	45d030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800031b2:	05e00793          	li	a5,94
    800031b6:	a01d                	j	800031dc <OSMemPut+0x4c>
    800031b8:	67a2                	ld	a5,8(sp)
    800031ba:	6798                	ld	a4,8(a5)
    800031bc:	6782                	ld	a5,0(sp)
    800031be:	e398                	sd	a4,0(a5)
    800031c0:	67a2                	ld	a5,8(sp)
    800031c2:	6702                	ld	a4,0(sp)
    800031c4:	e798                	sd	a4,8(a5)
    800031c6:	67a2                	ld	a5,8(sp)
    800031c8:	4f9c                	lw	a5,24(a5)
    800031ca:	2785                	addiw	a5,a5,1
    800031cc:	0007871b          	sext.w	a4,a5
    800031d0:	67a2                	ld	a5,8(sp)
    800031d2:	cf98                	sw	a4,24(a5)
    800031d4:	6562                	ld	a0,24(sp)
    800031d6:	435030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800031da:	4781                	li	a5,0
    800031dc:	853e                	mv	a0,a5
    800031de:	70a2                	ld	ra,40(sp)
    800031e0:	6145                	addi	sp,sp,48
    800031e2:	8082                	ret

00000000800031e4 <OSMemQuery>:
    800031e4:	7179                	addi	sp,sp,-48
    800031e6:	f406                	sd	ra,40(sp)
    800031e8:	e42a                	sd	a0,8(sp)
    800031ea:	e02e                	sd	a1,0(sp)
    800031ec:	ec02                	sd	zero,24(sp)
    800031ee:	413030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800031f2:	ec2a                	sd	a0,24(sp)
    800031f4:	67a2                	ld	a5,8(sp)
    800031f6:	6398                	ld	a4,0(a5)
    800031f8:	6782                	ld	a5,0(sp)
    800031fa:	e398                	sd	a4,0(a5)
    800031fc:	67a2                	ld	a5,8(sp)
    800031fe:	6798                	ld	a4,8(a5)
    80003200:	6782                	ld	a5,0(sp)
    80003202:	e798                	sd	a4,8(a5)
    80003204:	67a2                	ld	a5,8(sp)
    80003206:	4b98                	lw	a4,16(a5)
    80003208:	6782                	ld	a5,0(sp)
    8000320a:	cb98                	sw	a4,16(a5)
    8000320c:	67a2                	ld	a5,8(sp)
    8000320e:	4bd8                	lw	a4,20(a5)
    80003210:	6782                	ld	a5,0(sp)
    80003212:	cbd8                	sw	a4,20(a5)
    80003214:	67a2                	ld	a5,8(sp)
    80003216:	4f98                	lw	a4,24(a5)
    80003218:	6782                	ld	a5,0(sp)
    8000321a:	cf98                	sw	a4,24(a5)
    8000321c:	6562                	ld	a0,24(sp)
    8000321e:	3ed030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003222:	6782                	ld	a5,0(sp)
    80003224:	4bd8                	lw	a4,20(a5)
    80003226:	6782                	ld	a5,0(sp)
    80003228:	4f9c                	lw	a5,24(a5)
    8000322a:	40f707bb          	subw	a5,a4,a5
    8000322e:	0007871b          	sext.w	a4,a5
    80003232:	6782                	ld	a5,0(sp)
    80003234:	cfd8                	sw	a4,28(a5)
    80003236:	4781                	li	a5,0
    80003238:	853e                	mv	a0,a5
    8000323a:	70a2                	ld	ra,40(sp)
    8000323c:	6145                	addi	sp,sp,48
    8000323e:	8082                	ret

0000000080003240 <OS_MemInit>:
    80003240:	1101                	addi	sp,sp,-32
    80003242:	ec06                	sd	ra,24(sp)
    80003244:	0c800593          	li	a1,200
    80003248:	0007d517          	auipc	a0,0x7d
    8000324c:	7d050513          	addi	a0,a0,2000 # 80080a18 <OSMemTbl>
    80003250:	a8afe0ef          	jal	ra,800014da <OS_MemClr>
    80003254:	00011723          	sh	zero,14(sp)
    80003258:	a8a9                	j	800032b2 <OS_MemInit+0x72>
    8000325a:	00e15783          	lhu	a5,14(sp)
    8000325e:	0007871b          	sext.w	a4,a5
    80003262:	87ba                	mv	a5,a4
    80003264:	078a                	slli	a5,a5,0x2
    80003266:	97ba                	add	a5,a5,a4
    80003268:	078e                	slli	a5,a5,0x3
    8000326a:	0007d717          	auipc	a4,0x7d
    8000326e:	7ae70713          	addi	a4,a4,1966 # 80080a18 <OSMemTbl>
    80003272:	97ba                	add	a5,a5,a4
    80003274:	e03e                	sd	a5,0(sp)
    80003276:	00e15783          	lhu	a5,14(sp)
    8000327a:	2781                	sext.w	a5,a5
    8000327c:	2785                	addiw	a5,a5,1
    8000327e:	2781                	sext.w	a5,a5
    80003280:	02079713          	slli	a4,a5,0x20
    80003284:	9301                	srli	a4,a4,0x20
    80003286:	87ba                	mv	a5,a4
    80003288:	078a                	slli	a5,a5,0x2
    8000328a:	97ba                	add	a5,a5,a4
    8000328c:	078e                	slli	a5,a5,0x3
    8000328e:	0007d717          	auipc	a4,0x7d
    80003292:	78a70713          	addi	a4,a4,1930 # 80080a18 <OSMemTbl>
    80003296:	973e                	add	a4,a4,a5
    80003298:	6782                	ld	a5,0(sp)
    8000329a:	e798                	sd	a4,8(a5)
    8000329c:	6782                	ld	a5,0(sp)
    8000329e:	0007d717          	auipc	a4,0x7d
    800032a2:	e6a70713          	addi	a4,a4,-406 # 80080108 <OSUnMapTbl+0x100>
    800032a6:	f398                	sd	a4,32(a5)
    800032a8:	00e15783          	lhu	a5,14(sp)
    800032ac:	2785                	addiw	a5,a5,1
    800032ae:	00f11723          	sh	a5,14(sp)
    800032b2:	00e15783          	lhu	a5,14(sp)
    800032b6:	0007871b          	sext.w	a4,a5
    800032ba:	478d                	li	a5,3
    800032bc:	f8e7ffe3          	bleu	a4,a5,8000325a <OS_MemInit+0x1a>
    800032c0:	00e15783          	lhu	a5,14(sp)
    800032c4:	0007871b          	sext.w	a4,a5
    800032c8:	87ba                	mv	a5,a4
    800032ca:	078a                	slli	a5,a5,0x2
    800032cc:	97ba                	add	a5,a5,a4
    800032ce:	078e                	slli	a5,a5,0x3
    800032d0:	0007d717          	auipc	a4,0x7d
    800032d4:	74870713          	addi	a4,a4,1864 # 80080a18 <OSMemTbl>
    800032d8:	97ba                	add	a5,a5,a4
    800032da:	e03e                	sd	a5,0(sp)
    800032dc:	6782                	ld	a5,0(sp)
    800032de:	0007b423          	sd	zero,8(a5)
    800032e2:	6782                	ld	a5,0(sp)
    800032e4:	0007d717          	auipc	a4,0x7d
    800032e8:	e2470713          	addi	a4,a4,-476 # 80080108 <OSUnMapTbl+0x100>
    800032ec:	f398                	sd	a4,32(a5)
    800032ee:	0007e797          	auipc	a5,0x7e
    800032f2:	c1a78793          	addi	a5,a5,-998 # 80080f08 <OSMemFreeList>
    800032f6:	0007d717          	auipc	a4,0x7d
    800032fa:	72270713          	addi	a4,a4,1826 # 80080a18 <OSMemTbl>
    800032fe:	e398                	sd	a4,0(a5)
    80003300:	0001                	nop
    80003302:	60e2                	ld	ra,24(sp)
    80003304:	6105                	addi	sp,sp,32
    80003306:	8082                	ret

0000000080003308 <OSMutexAccept>:
    80003308:	7179                	addi	sp,sp,-48
    8000330a:	f406                	sd	ra,40(sp)
    8000330c:	e42a                	sd	a0,8(sp)
    8000330e:	e02e                	sd	a1,0(sp)
    80003310:	ec02                	sd	zero,24(sp)
    80003312:	67a2                	ld	a5,8(sp)
    80003314:	0007c783          	lbu	a5,0(a5)
    80003318:	873e                	mv	a4,a5
    8000331a:	4791                	li	a5,4
    8000331c:	00f70863          	beq	a4,a5,8000332c <OSMutexAccept+0x24>
    80003320:	6782                	ld	a5,0(sp)
    80003322:	4705                	li	a4,1
    80003324:	00e78023          	sb	a4,0(a5)
    80003328:	4781                	li	a5,0
    8000332a:	a0c5                	j	8000340a <OSMutexAccept+0x102>
    8000332c:	0007e797          	auipc	a5,0x7e
    80003330:	0cc78793          	addi	a5,a5,204 # 800813f8 <OSIntNesting>
    80003334:	0007c783          	lbu	a5,0(a5)
    80003338:	c799                	beqz	a5,80003346 <OSMutexAccept+0x3e>
    8000333a:	6782                	ld	a5,0(sp)
    8000333c:	4709                	li	a4,2
    8000333e:	00e78023          	sb	a4,0(a5)
    80003342:	4781                	li	a5,0
    80003344:	a0d9                	j	8000340a <OSMutexAccept+0x102>
    80003346:	2bb030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000334a:	ec2a                	sd	a0,24(sp)
    8000334c:	67a2                	ld	a5,8(sp)
    8000334e:	0107d783          	lhu	a5,16(a5)
    80003352:	0087d79b          	srliw	a5,a5,0x8
    80003356:	17c2                	slli	a5,a5,0x30
    80003358:	93c1                	srli	a5,a5,0x30
    8000335a:	00f10ba3          	sb	a5,23(sp)
    8000335e:	67a2                	ld	a5,8(sp)
    80003360:	0107d783          	lhu	a5,16(a5)
    80003364:	2781                	sext.w	a5,a5
    80003366:	0ff7f793          	andi	a5,a5,255
    8000336a:	2781                	sext.w	a5,a5
    8000336c:	873e                	mv	a4,a5
    8000336e:	0ff00793          	li	a5,255
    80003372:	08f71563          	bne	a4,a5,800033fc <OSMutexAccept+0xf4>
    80003376:	67a2                	ld	a5,8(sp)
    80003378:	0107d783          	lhu	a5,16(a5)
    8000337c:	f007f793          	andi	a5,a5,-256
    80003380:	03079713          	slli	a4,a5,0x30
    80003384:	9341                	srli	a4,a4,0x30
    80003386:	67a2                	ld	a5,8(sp)
    80003388:	00e79823          	sh	a4,16(a5)
    8000338c:	67a2                	ld	a5,8(sp)
    8000338e:	0107d703          	lhu	a4,16(a5)
    80003392:	0007e797          	auipc	a5,0x7e
    80003396:	06e78793          	addi	a5,a5,110 # 80081400 <OSTCBCur>
    8000339a:	639c                	ld	a5,0(a5)
    8000339c:	05a7c783          	lbu	a5,90(a5)
    800033a0:	17c2                	slli	a5,a5,0x30
    800033a2:	93c1                	srli	a5,a5,0x30
    800033a4:	8fd9                	or	a5,a5,a4
    800033a6:	03079713          	slli	a4,a5,0x30
    800033aa:	9341                	srli	a4,a4,0x30
    800033ac:	67a2                	ld	a5,8(sp)
    800033ae:	00e79823          	sh	a4,16(a5)
    800033b2:	0007e797          	auipc	a5,0x7e
    800033b6:	04e78793          	addi	a5,a5,78 # 80081400 <OSTCBCur>
    800033ba:	6398                	ld	a4,0(a5)
    800033bc:	67a2                	ld	a5,8(sp)
    800033be:	e798                	sd	a4,8(a5)
    800033c0:	0007e797          	auipc	a5,0x7e
    800033c4:	04078793          	addi	a5,a5,64 # 80081400 <OSTCBCur>
    800033c8:	639c                	ld	a5,0(a5)
    800033ca:	05a7c703          	lbu	a4,90(a5)
    800033ce:	01714783          	lbu	a5,23(sp)
    800033d2:	0ff7f793          	andi	a5,a5,255
    800033d6:	00e7eb63          	bltu	a5,a4,800033ec <OSMutexAccept+0xe4>
    800033da:	6562                	ld	a0,24(sp)
    800033dc:	22f030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800033e0:	6782                	ld	a5,0(sp)
    800033e2:	07800713          	li	a4,120
    800033e6:	00e78023          	sb	a4,0(a5)
    800033ea:	a039                	j	800033f8 <OSMutexAccept+0xf0>
    800033ec:	6562                	ld	a0,24(sp)
    800033ee:	21d030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800033f2:	6782                	ld	a5,0(sp)
    800033f4:	00078023          	sb	zero,0(a5)
    800033f8:	4785                	li	a5,1
    800033fa:	a801                	j	8000340a <OSMutexAccept+0x102>
    800033fc:	6562                	ld	a0,24(sp)
    800033fe:	20d030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003402:	6782                	ld	a5,0(sp)
    80003404:	00078023          	sb	zero,0(a5)
    80003408:	4781                	li	a5,0
    8000340a:	853e                	mv	a0,a5
    8000340c:	70a2                	ld	ra,40(sp)
    8000340e:	6145                	addi	sp,sp,48
    80003410:	8082                	ret

0000000080003412 <OSMutexCreate>:
    80003412:	7179                	addi	sp,sp,-48
    80003414:	f406                	sd	ra,40(sp)
    80003416:	87aa                	mv	a5,a0
    80003418:	e02e                	sd	a1,0(sp)
    8000341a:	00f107a3          	sb	a5,15(sp)
    8000341e:	ec02                	sd	zero,24(sp)
    80003420:	0007e797          	auipc	a5,0x7e
    80003424:	fd878793          	addi	a5,a5,-40 # 800813f8 <OSIntNesting>
    80003428:	0007c783          	lbu	a5,0(a5)
    8000342c:	c799                	beqz	a5,8000343a <OSMutexCreate+0x28>
    8000342e:	6782                	ld	a5,0(sp)
    80003430:	4741                	li	a4,16
    80003432:	00e78023          	sb	a4,0(a5)
    80003436:	4781                	li	a5,0
    80003438:	a0d5                	j	8000351c <OSMutexCreate+0x10a>
    8000343a:	1c7030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000343e:	ec2a                	sd	a0,24(sp)
    80003440:	00f14783          	lbu	a5,15(sp)
    80003444:	2781                	sext.w	a5,a5
    80003446:	0007f717          	auipc	a4,0x7f
    8000344a:	1d270713          	addi	a4,a4,466 # 80082618 <OSTCBPrioTbl>
    8000344e:	078e                	slli	a5,a5,0x3
    80003450:	97ba                	add	a5,a5,a4
    80003452:	639c                	ld	a5,0(a5)
    80003454:	cb99                	beqz	a5,8000346a <OSMutexCreate+0x58>
    80003456:	6562                	ld	a0,24(sp)
    80003458:	1b3030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000345c:	6782                	ld	a5,0(sp)
    8000345e:	02800713          	li	a4,40
    80003462:	00e78023          	sb	a4,0(a5)
    80003466:	4781                	li	a5,0
    80003468:	a855                	j	8000351c <OSMutexCreate+0x10a>
    8000346a:	00f14783          	lbu	a5,15(sp)
    8000346e:	2781                	sext.w	a5,a5
    80003470:	0007f717          	auipc	a4,0x7f
    80003474:	1a870713          	addi	a4,a4,424 # 80082618 <OSTCBPrioTbl>
    80003478:	078e                	slli	a5,a5,0x3
    8000347a:	97ba                	add	a5,a5,a4
    8000347c:	4705                	li	a4,1
    8000347e:	e398                	sd	a4,0(a5)
    80003480:	0007e797          	auipc	a5,0x7e
    80003484:	f7078793          	addi	a5,a5,-144 # 800813f0 <OSEventFreeList>
    80003488:	639c                	ld	a5,0(a5)
    8000348a:	e83e                	sd	a5,16(sp)
    8000348c:	67c2                	ld	a5,16(sp)
    8000348e:	e78d                	bnez	a5,800034b8 <OSMutexCreate+0xa6>
    80003490:	00f14783          	lbu	a5,15(sp)
    80003494:	2781                	sext.w	a5,a5
    80003496:	0007f717          	auipc	a4,0x7f
    8000349a:	18270713          	addi	a4,a4,386 # 80082618 <OSTCBPrioTbl>
    8000349e:	078e                	slli	a5,a5,0x3
    800034a0:	97ba                	add	a5,a5,a4
    800034a2:	0007b023          	sd	zero,0(a5)
    800034a6:	6562                	ld	a0,24(sp)
    800034a8:	163030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800034ac:	6782                	ld	a5,0(sp)
    800034ae:	4711                	li	a4,4
    800034b0:	00e78023          	sb	a4,0(a5)
    800034b4:	67c2                	ld	a5,16(sp)
    800034b6:	a09d                	j	8000351c <OSMutexCreate+0x10a>
    800034b8:	0007e797          	auipc	a5,0x7e
    800034bc:	f3878793          	addi	a5,a5,-200 # 800813f0 <OSEventFreeList>
    800034c0:	639c                	ld	a5,0(a5)
    800034c2:	6798                	ld	a4,8(a5)
    800034c4:	0007e797          	auipc	a5,0x7e
    800034c8:	f2c78793          	addi	a5,a5,-212 # 800813f0 <OSEventFreeList>
    800034cc:	e398                	sd	a4,0(a5)
    800034ce:	6562                	ld	a0,24(sp)
    800034d0:	13b030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800034d4:	67c2                	ld	a5,16(sp)
    800034d6:	4711                	li	a4,4
    800034d8:	00e78023          	sb	a4,0(a5)
    800034dc:	00f14783          	lbu	a5,15(sp)
    800034e0:	17c2                	slli	a5,a5,0x30
    800034e2:	93c1                	srli	a5,a5,0x30
    800034e4:	0087979b          	slliw	a5,a5,0x8
    800034e8:	17c2                	slli	a5,a5,0x30
    800034ea:	93c1                	srli	a5,a5,0x30
    800034ec:	0ff7e793          	ori	a5,a5,255
    800034f0:	03079713          	slli	a4,a5,0x30
    800034f4:	9341                	srli	a4,a4,0x30
    800034f6:	67c2                	ld	a5,16(sp)
    800034f8:	00e79823          	sh	a4,16(a5)
    800034fc:	67c2                	ld	a5,16(sp)
    800034fe:	0007b423          	sd	zero,8(a5)
    80003502:	67c2                	ld	a5,16(sp)
    80003504:	0007d717          	auipc	a4,0x7d
    80003508:	c0470713          	addi	a4,a4,-1020 # 80080108 <OSUnMapTbl+0x100>
    8000350c:	f398                	sd	a4,32(a5)
    8000350e:	6542                	ld	a0,16(sp)
    80003510:	c33fd0ef          	jal	ra,80001142 <OS_EventWaitListInit>
    80003514:	6782                	ld	a5,0(sp)
    80003516:	00078023          	sb	zero,0(a5)
    8000351a:	67c2                	ld	a5,16(sp)
    8000351c:	853e                	mv	a0,a5
    8000351e:	70a2                	ld	ra,40(sp)
    80003520:	6145                	addi	sp,sp,48
    80003522:	8082                	ret

0000000080003524 <OSMutexDel>:
    80003524:	711d                	addi	sp,sp,-96
    80003526:	ec86                	sd	ra,88(sp)
    80003528:	ec2a                	sd	a0,24(sp)
    8000352a:	87ae                	mv	a5,a1
    8000352c:	e432                	sd	a2,8(sp)
    8000352e:	00f10ba3          	sb	a5,23(sp)
    80003532:	fc02                	sd	zero,56(sp)
    80003534:	67e2                	ld	a5,24(sp)
    80003536:	0007c783          	lbu	a5,0(a5)
    8000353a:	873e                	mv	a4,a5
    8000353c:	4791                	li	a5,4
    8000353e:	00f70863          	beq	a4,a5,8000354e <OSMutexDel+0x2a>
    80003542:	67a2                	ld	a5,8(sp)
    80003544:	4705                	li	a4,1
    80003546:	00e78023          	sb	a4,0(a5)
    8000354a:	67e2                	ld	a5,24(sp)
    8000354c:	a2c1                	j	8000370c <OSMutexDel+0x1e8>
    8000354e:	0007e797          	auipc	a5,0x7e
    80003552:	eaa78793          	addi	a5,a5,-342 # 800813f8 <OSIntNesting>
    80003556:	0007c783          	lbu	a5,0(a5)
    8000355a:	c799                	beqz	a5,80003568 <OSMutexDel+0x44>
    8000355c:	67a2                	ld	a5,8(sp)
    8000355e:	473d                	li	a4,15
    80003560:	00e78023          	sb	a4,0(a5)
    80003564:	67e2                	ld	a5,24(sp)
    80003566:	a25d                	j	8000370c <OSMutexDel+0x1e8>
    80003568:	099030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000356c:	fc2a                	sd	a0,56(sp)
    8000356e:	67e2                	ld	a5,24(sp)
    80003570:	0127c783          	lbu	a5,18(a5)
    80003574:	c789                	beqz	a5,8000357e <OSMutexDel+0x5a>
    80003576:	4785                	li	a5,1
    80003578:	04f107a3          	sb	a5,79(sp)
    8000357c:	a019                	j	80003582 <OSMutexDel+0x5e>
    8000357e:	040107a3          	sb	zero,79(sp)
    80003582:	01714783          	lbu	a5,23(sp)
    80003586:	2781                	sext.w	a5,a5
    80003588:	873e                	mv	a4,a5
    8000358a:	c711                	beqz	a4,80003596 <OSMutexDel+0x72>
    8000358c:	873e                	mv	a4,a5
    8000358e:	4785                	li	a5,1
    80003590:	08f70863          	beq	a4,a5,80003620 <OSMutexDel+0xfc>
    80003594:	a28d                	j	800036f6 <OSMutexDel+0x1d2>
    80003596:	04f14783          	lbu	a5,79(sp)
    8000359a:	0ff7f793          	andi	a5,a5,255
    8000359e:	e7b5                	bnez	a5,8000360a <OSMutexDel+0xe6>
    800035a0:	67e2                	ld	a5,24(sp)
    800035a2:	0007d717          	auipc	a4,0x7d
    800035a6:	b6670713          	addi	a4,a4,-1178 # 80080108 <OSUnMapTbl+0x100>
    800035aa:	f398                	sd	a4,32(a5)
    800035ac:	67e2                	ld	a5,24(sp)
    800035ae:	0107d783          	lhu	a5,16(a5)
    800035b2:	0087d79b          	srliw	a5,a5,0x8
    800035b6:	17c2                	slli	a5,a5,0x30
    800035b8:	93c1                	srli	a5,a5,0x30
    800035ba:	02f10ba3          	sb	a5,55(sp)
    800035be:	03714783          	lbu	a5,55(sp)
    800035c2:	2781                	sext.w	a5,a5
    800035c4:	0007f717          	auipc	a4,0x7f
    800035c8:	05470713          	addi	a4,a4,84 # 80082618 <OSTCBPrioTbl>
    800035cc:	078e                	slli	a5,a5,0x3
    800035ce:	97ba                	add	a5,a5,a4
    800035d0:	0007b023          	sd	zero,0(a5)
    800035d4:	67e2                	ld	a5,24(sp)
    800035d6:	00078023          	sb	zero,0(a5)
    800035da:	0007e797          	auipc	a5,0x7e
    800035de:	e1678793          	addi	a5,a5,-490 # 800813f0 <OSEventFreeList>
    800035e2:	6398                	ld	a4,0(a5)
    800035e4:	67e2                	ld	a5,24(sp)
    800035e6:	e798                	sd	a4,8(a5)
    800035e8:	67e2                	ld	a5,24(sp)
    800035ea:	00079823          	sh	zero,16(a5)
    800035ee:	0007e797          	auipc	a5,0x7e
    800035f2:	e0278793          	addi	a5,a5,-510 # 800813f0 <OSEventFreeList>
    800035f6:	6762                	ld	a4,24(sp)
    800035f8:	e398                	sd	a4,0(a5)
    800035fa:	7562                	ld	a0,56(sp)
    800035fc:	00f030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003600:	67a2                	ld	a5,8(sp)
    80003602:	00078023          	sb	zero,0(a5)
    80003606:	e082                	sd	zero,64(sp)
    80003608:	a209                	j	8000370a <OSMutexDel+0x1e6>
    8000360a:	7562                	ld	a0,56(sp)
    8000360c:	7fe030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003610:	67a2                	ld	a5,8(sp)
    80003612:	04900713          	li	a4,73
    80003616:	00e78023          	sb	a4,0(a5)
    8000361a:	67e2                	ld	a5,24(sp)
    8000361c:	e0be                	sd	a5,64(sp)
    8000361e:	a0f5                	j	8000370a <OSMutexDel+0x1e6>
    80003620:	67e2                	ld	a5,24(sp)
    80003622:	0107d783          	lhu	a5,16(a5)
    80003626:	0087d79b          	srliw	a5,a5,0x8
    8000362a:	17c2                	slli	a5,a5,0x30
    8000362c:	93c1                	srli	a5,a5,0x30
    8000362e:	02f10ba3          	sb	a5,55(sp)
    80003632:	67e2                	ld	a5,24(sp)
    80003634:	0107d783          	lhu	a5,16(a5)
    80003638:	02f10b23          	sb	a5,54(sp)
    8000363c:	67e2                	ld	a5,24(sp)
    8000363e:	679c                	ld	a5,8(a5)
    80003640:	f43e                	sd	a5,40(sp)
    80003642:	77a2                	ld	a5,40(sp)
    80003644:	c79d                	beqz	a5,80003672 <OSMutexDel+0x14e>
    80003646:	77a2                	ld	a5,40(sp)
    80003648:	05a7c703          	lbu	a4,90(a5)
    8000364c:	03714783          	lbu	a5,55(sp)
    80003650:	0ff7f793          	andi	a5,a5,255
    80003654:	00e79f63          	bne	a5,a4,80003672 <OSMutexDel+0x14e>
    80003658:	03614783          	lbu	a5,54(sp)
    8000365c:	85be                	mv	a1,a5
    8000365e:	7522                	ld	a0,40(sp)
    80003660:	782000ef          	jal	ra,80003de2 <OSMutex_RdyAtPrio>
    80003664:	a039                	j	80003672 <OSMutexDel+0x14e>
    80003666:	4681                	li	a3,0
    80003668:	4641                	li	a2,16
    8000366a:	4581                	li	a1,0
    8000366c:	6562                	ld	a0,24(sp)
    8000366e:	e16fd0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80003672:	67e2                	ld	a5,24(sp)
    80003674:	0127c783          	lbu	a5,18(a5)
    80003678:	f7fd                	bnez	a5,80003666 <OSMutexDel+0x142>
    8000367a:	67e2                	ld	a5,24(sp)
    8000367c:	0007d717          	auipc	a4,0x7d
    80003680:	a8c70713          	addi	a4,a4,-1396 # 80080108 <OSUnMapTbl+0x100>
    80003684:	f398                	sd	a4,32(a5)
    80003686:	67e2                	ld	a5,24(sp)
    80003688:	0107d783          	lhu	a5,16(a5)
    8000368c:	0087d79b          	srliw	a5,a5,0x8
    80003690:	17c2                	slli	a5,a5,0x30
    80003692:	93c1                	srli	a5,a5,0x30
    80003694:	02f10ba3          	sb	a5,55(sp)
    80003698:	03714783          	lbu	a5,55(sp)
    8000369c:	2781                	sext.w	a5,a5
    8000369e:	0007f717          	auipc	a4,0x7f
    800036a2:	f7a70713          	addi	a4,a4,-134 # 80082618 <OSTCBPrioTbl>
    800036a6:	078e                	slli	a5,a5,0x3
    800036a8:	97ba                	add	a5,a5,a4
    800036aa:	0007b023          	sd	zero,0(a5)
    800036ae:	67e2                	ld	a5,24(sp)
    800036b0:	00078023          	sb	zero,0(a5)
    800036b4:	0007e797          	auipc	a5,0x7e
    800036b8:	d3c78793          	addi	a5,a5,-708 # 800813f0 <OSEventFreeList>
    800036bc:	6398                	ld	a4,0(a5)
    800036be:	67e2                	ld	a5,24(sp)
    800036c0:	e798                	sd	a4,8(a5)
    800036c2:	67e2                	ld	a5,24(sp)
    800036c4:	00079823          	sh	zero,16(a5)
    800036c8:	0007e797          	auipc	a5,0x7e
    800036cc:	d2878793          	addi	a5,a5,-728 # 800813f0 <OSEventFreeList>
    800036d0:	6762                	ld	a4,24(sp)
    800036d2:	e398                	sd	a4,0(a5)
    800036d4:	7562                	ld	a0,56(sp)
    800036d6:	734030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800036da:	04f14783          	lbu	a5,79(sp)
    800036de:	0ff7f713          	andi	a4,a5,255
    800036e2:	4785                	li	a5,1
    800036e4:	00f71463          	bne	a4,a5,800036ec <OSMutexDel+0x1c8>
    800036e8:	e61fd0ef          	jal	ra,80001548 <OS_Sched>
    800036ec:	67a2                	ld	a5,8(sp)
    800036ee:	00078023          	sb	zero,0(a5)
    800036f2:	e082                	sd	zero,64(sp)
    800036f4:	a819                	j	8000370a <OSMutexDel+0x1e6>
    800036f6:	7562                	ld	a0,56(sp)
    800036f8:	712030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800036fc:	67a2                	ld	a5,8(sp)
    800036fe:	471d                	li	a4,7
    80003700:	00e78023          	sb	a4,0(a5)
    80003704:	67e2                	ld	a5,24(sp)
    80003706:	e0be                	sd	a5,64(sp)
    80003708:	0001                	nop
    8000370a:	6786                	ld	a5,64(sp)
    8000370c:	853e                	mv	a0,a5
    8000370e:	60e6                	ld	ra,88(sp)
    80003710:	6125                	addi	sp,sp,96
    80003712:	8082                	ret

0000000080003714 <OSMutexPend>:
    80003714:	711d                	addi	sp,sp,-96
    80003716:	ec86                	sd	ra,88(sp)
    80003718:	ec2a                	sd	a0,24(sp)
    8000371a:	87ae                	mv	a5,a1
    8000371c:	e432                	sd	a2,8(sp)
    8000371e:	ca3e                	sw	a5,20(sp)
    80003720:	e082                	sd	zero,64(sp)
    80003722:	67e2                	ld	a5,24(sp)
    80003724:	0007c783          	lbu	a5,0(a5)
    80003728:	873e                	mv	a4,a5
    8000372a:	4791                	li	a5,4
    8000372c:	00f70763          	beq	a4,a5,8000373a <OSMutexPend+0x26>
    80003730:	67a2                	ld	a5,8(sp)
    80003732:	4705                	li	a4,1
    80003734:	00e78023          	sb	a4,0(a5)
    80003738:	a9a1                	j	80003b90 <OSMutexPend+0x47c>
    8000373a:	0007e797          	auipc	a5,0x7e
    8000373e:	cbe78793          	addi	a5,a5,-834 # 800813f8 <OSIntNesting>
    80003742:	0007c783          	lbu	a5,0(a5)
    80003746:	c791                	beqz	a5,80003752 <OSMutexPend+0x3e>
    80003748:	67a2                	ld	a5,8(sp)
    8000374a:	4709                	li	a4,2
    8000374c:	00e78023          	sb	a4,0(a5)
    80003750:	a181                	j	80003b90 <OSMutexPend+0x47c>
    80003752:	0007d797          	auipc	a5,0x7d
    80003756:	d7678793          	addi	a5,a5,-650 # 800804c8 <OSLockNesting>
    8000375a:	0007c783          	lbu	a5,0(a5)
    8000375e:	c791                	beqz	a5,8000376a <OSMutexPend+0x56>
    80003760:	67a2                	ld	a5,8(sp)
    80003762:	4735                	li	a4,13
    80003764:	00e78023          	sb	a4,0(a5)
    80003768:	a125                	j	80003b90 <OSMutexPend+0x47c>
    8000376a:	696030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000376e:	e0aa                	sd	a0,64(sp)
    80003770:	67e2                	ld	a5,24(sp)
    80003772:	0107d783          	lhu	a5,16(a5)
    80003776:	0087d79b          	srliw	a5,a5,0x8
    8000377a:	17c2                	slli	a5,a5,0x30
    8000377c:	93c1                	srli	a5,a5,0x30
    8000377e:	02f10fa3          	sb	a5,63(sp)
    80003782:	67e2                	ld	a5,24(sp)
    80003784:	0107d783          	lhu	a5,16(a5)
    80003788:	0ff7f793          	andi	a5,a5,255
    8000378c:	873e                	mv	a4,a5
    8000378e:	0ff00793          	li	a5,255
    80003792:	08f71463          	bne	a4,a5,8000381a <OSMutexPend+0x106>
    80003796:	67e2                	ld	a5,24(sp)
    80003798:	0107d783          	lhu	a5,16(a5)
    8000379c:	f007f793          	andi	a5,a5,-256
    800037a0:	03079713          	slli	a4,a5,0x30
    800037a4:	9341                	srli	a4,a4,0x30
    800037a6:	67e2                	ld	a5,24(sp)
    800037a8:	00e79823          	sh	a4,16(a5)
    800037ac:	67e2                	ld	a5,24(sp)
    800037ae:	0107d703          	lhu	a4,16(a5)
    800037b2:	0007e797          	auipc	a5,0x7e
    800037b6:	c4e78793          	addi	a5,a5,-946 # 80081400 <OSTCBCur>
    800037ba:	639c                	ld	a5,0(a5)
    800037bc:	05a7c783          	lbu	a5,90(a5)
    800037c0:	17c2                	slli	a5,a5,0x30
    800037c2:	93c1                	srli	a5,a5,0x30
    800037c4:	8fd9                	or	a5,a5,a4
    800037c6:	03079713          	slli	a4,a5,0x30
    800037ca:	9341                	srli	a4,a4,0x30
    800037cc:	67e2                	ld	a5,24(sp)
    800037ce:	00e79823          	sh	a4,16(a5)
    800037d2:	0007e797          	auipc	a5,0x7e
    800037d6:	c2e78793          	addi	a5,a5,-978 # 80081400 <OSTCBCur>
    800037da:	6398                	ld	a4,0(a5)
    800037dc:	67e2                	ld	a5,24(sp)
    800037de:	e798                	sd	a4,8(a5)
    800037e0:	0007e797          	auipc	a5,0x7e
    800037e4:	c2078793          	addi	a5,a5,-992 # 80081400 <OSTCBCur>
    800037e8:	639c                	ld	a5,0(a5)
    800037ea:	05a7c703          	lbu	a4,90(a5)
    800037ee:	03f14783          	lbu	a5,63(sp)
    800037f2:	0ff7f793          	andi	a5,a5,255
    800037f6:	00e7eb63          	bltu	a5,a4,8000380c <OSMutexPend+0xf8>
    800037fa:	6506                	ld	a0,64(sp)
    800037fc:	60e030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003800:	67a2                	ld	a5,8(sp)
    80003802:	07800713          	li	a4,120
    80003806:	00e78023          	sb	a4,0(a5)
    8000380a:	a659                	j	80003b90 <OSMutexPend+0x47c>
    8000380c:	6506                	ld	a0,64(sp)
    8000380e:	5fc030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003812:	67a2                	ld	a5,8(sp)
    80003814:	00078023          	sb	zero,0(a5)
    80003818:	aea5                	j	80003b90 <OSMutexPend+0x47c>
    8000381a:	67e2                	ld	a5,24(sp)
    8000381c:	0107d783          	lhu	a5,16(a5)
    80003820:	02f10f23          	sb	a5,62(sp)
    80003824:	67e2                	ld	a5,24(sp)
    80003826:	679c                	ld	a5,8(a5)
    80003828:	f83e                	sd	a5,48(sp)
    8000382a:	77c2                	ld	a5,48(sp)
    8000382c:	05a7c703          	lbu	a4,90(a5)
    80003830:	03f14783          	lbu	a5,63(sp)
    80003834:	0ff7f793          	andi	a5,a5,255
    80003838:	26e7fc63          	bleu	a4,a5,80003ab0 <OSMutexPend+0x39c>
    8000383c:	0007e797          	auipc	a5,0x7e
    80003840:	bc478793          	addi	a5,a5,-1084 # 80081400 <OSTCBCur>
    80003844:	639c                	ld	a5,0(a5)
    80003846:	05a7c703          	lbu	a4,90(a5)
    8000384a:	03e14783          	lbu	a5,62(sp)
    8000384e:	0ff7f793          	andi	a5,a5,255
    80003852:	24f77f63          	bleu	a5,a4,80003ab0 <OSMutexPend+0x39c>
    80003856:	77c2                	ld	a5,48(sp)
    80003858:	05c7c783          	lbu	a5,92(a5)
    8000385c:	02f107a3          	sb	a5,47(sp)
    80003860:	02f14783          	lbu	a5,47(sp)
    80003864:	2781                	sext.w	a5,a5
    80003866:	0007d717          	auipc	a4,0x7d
    8000386a:	78270713          	addi	a4,a4,1922 # 80080fe8 <OSRdyTbl>
    8000386e:	97ba                	add	a5,a5,a4
    80003870:	0007c703          	lbu	a4,0(a5)
    80003874:	77c2                	ld	a5,48(sp)
    80003876:	05d7c783          	lbu	a5,93(a5)
    8000387a:	8ff9                	and	a5,a5,a4
    8000387c:	0ff7f793          	andi	a5,a5,255
    80003880:	c7c1                	beqz	a5,80003908 <OSMutexPend+0x1f4>
    80003882:	02f14783          	lbu	a5,47(sp)
    80003886:	2781                	sext.w	a5,a5
    80003888:	0007d717          	auipc	a4,0x7d
    8000388c:	76070713          	addi	a4,a4,1888 # 80080fe8 <OSRdyTbl>
    80003890:	97ba                	add	a5,a5,a4
    80003892:	0007c683          	lbu	a3,0(a5)
    80003896:	77c2                	ld	a5,48(sp)
    80003898:	05d7c783          	lbu	a5,93(a5)
    8000389c:	fff7c793          	not	a5,a5
    800038a0:	0ff7f713          	andi	a4,a5,255
    800038a4:	02f14783          	lbu	a5,47(sp)
    800038a8:	2781                	sext.w	a5,a5
    800038aa:	8f75                	and	a4,a4,a3
    800038ac:	0ff77713          	andi	a4,a4,255
    800038b0:	0007d697          	auipc	a3,0x7d
    800038b4:	73868693          	addi	a3,a3,1848 # 80080fe8 <OSRdyTbl>
    800038b8:	97b6                	add	a5,a5,a3
    800038ba:	00e78023          	sb	a4,0(a5)
    800038be:	02f14783          	lbu	a5,47(sp)
    800038c2:	2781                	sext.w	a5,a5
    800038c4:	0007d717          	auipc	a4,0x7d
    800038c8:	72470713          	addi	a4,a4,1828 # 80080fe8 <OSRdyTbl>
    800038cc:	97ba                	add	a5,a5,a4
    800038ce:	0007c783          	lbu	a5,0(a5)
    800038d2:	e79d                	bnez	a5,80003900 <OSMutexPend+0x1ec>
    800038d4:	77c2                	ld	a5,48(sp)
    800038d6:	05e7c783          	lbu	a5,94(a5)
    800038da:	fff7c793          	not	a5,a5
    800038de:	0ff7f713          	andi	a4,a5,255
    800038e2:	0007d797          	auipc	a5,0x7d
    800038e6:	6fe78793          	addi	a5,a5,1790 # 80080fe0 <OSRdyGrp>
    800038ea:	0007c783          	lbu	a5,0(a5)
    800038ee:	8ff9                	and	a5,a5,a4
    800038f0:	0ff7f713          	andi	a4,a5,255
    800038f4:	0007d797          	auipc	a5,0x7d
    800038f8:	6ec78793          	addi	a5,a5,1772 # 80080fe0 <OSRdyGrp>
    800038fc:	00e78023          	sb	a4,0(a5)
    80003900:	4785                	li	a5,1
    80003902:	04f107a3          	sb	a5,79(sp)
    80003906:	a8ad                	j	80003980 <OSMutexPend+0x26c>
    80003908:	77c2                	ld	a5,48(sp)
    8000390a:	7b9c                	ld	a5,48(a5)
    8000390c:	f03e                	sd	a5,32(sp)
    8000390e:	7782                	ld	a5,32(sp)
    80003910:	c7b5                	beqz	a5,8000397c <OSMutexPend+0x268>
    80003912:	77c2                	ld	a5,48(sp)
    80003914:	05c7c783          	lbu	a5,92(a5)
    80003918:	02f107a3          	sb	a5,47(sp)
    8000391c:	02f14783          	lbu	a5,47(sp)
    80003920:	2781                	sext.w	a5,a5
    80003922:	7702                	ld	a4,32(sp)
    80003924:	97ba                	add	a5,a5,a4
    80003926:	0137c683          	lbu	a3,19(a5)
    8000392a:	77c2                	ld	a5,48(sp)
    8000392c:	05d7c783          	lbu	a5,93(a5)
    80003930:	fff7c793          	not	a5,a5
    80003934:	0ff7f713          	andi	a4,a5,255
    80003938:	02f14783          	lbu	a5,47(sp)
    8000393c:	2781                	sext.w	a5,a5
    8000393e:	8f75                	and	a4,a4,a3
    80003940:	0ff77713          	andi	a4,a4,255
    80003944:	7682                	ld	a3,32(sp)
    80003946:	97b6                	add	a5,a5,a3
    80003948:	00e789a3          	sb	a4,19(a5)
    8000394c:	02f14783          	lbu	a5,47(sp)
    80003950:	2781                	sext.w	a5,a5
    80003952:	7702                	ld	a4,32(sp)
    80003954:	97ba                	add	a5,a5,a4
    80003956:	0137c783          	lbu	a5,19(a5)
    8000395a:	e38d                	bnez	a5,8000397c <OSMutexPend+0x268>
    8000395c:	7782                	ld	a5,32(sp)
    8000395e:	0127c703          	lbu	a4,18(a5)
    80003962:	77c2                	ld	a5,48(sp)
    80003964:	05e7c783          	lbu	a5,94(a5)
    80003968:	fff7c793          	not	a5,a5
    8000396c:	0ff7f793          	andi	a5,a5,255
    80003970:	8ff9                	and	a5,a5,a4
    80003972:	0ff7f713          	andi	a4,a5,255
    80003976:	7782                	ld	a5,32(sp)
    80003978:	00e78923          	sb	a4,18(a5)
    8000397c:	040107a3          	sb	zero,79(sp)
    80003980:	77c2                	ld	a5,48(sp)
    80003982:	03f14703          	lbu	a4,63(sp)
    80003986:	04e78d23          	sb	a4,90(a5)
    8000398a:	77c2                	ld	a5,48(sp)
    8000398c:	05a7c783          	lbu	a5,90(a5)
    80003990:	0037d79b          	srliw	a5,a5,0x3
    80003994:	0ff7f713          	andi	a4,a5,255
    80003998:	77c2                	ld	a5,48(sp)
    8000399a:	04e78e23          	sb	a4,92(a5)
    8000399e:	77c2                	ld	a5,48(sp)
    800039a0:	05a7c783          	lbu	a5,90(a5)
    800039a4:	8b9d                	andi	a5,a5,7
    800039a6:	0ff7f713          	andi	a4,a5,255
    800039aa:	77c2                	ld	a5,48(sp)
    800039ac:	04e78da3          	sb	a4,91(a5)
    800039b0:	77c2                	ld	a5,48(sp)
    800039b2:	05c7c783          	lbu	a5,92(a5)
    800039b6:	2781                	sext.w	a5,a5
    800039b8:	4705                	li	a4,1
    800039ba:	00f717b3          	sll	a5,a4,a5
    800039be:	0ff7f713          	andi	a4,a5,255
    800039c2:	77c2                	ld	a5,48(sp)
    800039c4:	04e78f23          	sb	a4,94(a5)
    800039c8:	77c2                	ld	a5,48(sp)
    800039ca:	05b7c783          	lbu	a5,91(a5)
    800039ce:	2781                	sext.w	a5,a5
    800039d0:	4705                	li	a4,1
    800039d2:	00f717b3          	sll	a5,a4,a5
    800039d6:	0ff7f713          	andi	a4,a5,255
    800039da:	77c2                	ld	a5,48(sp)
    800039dc:	04e78ea3          	sb	a4,93(a5)
    800039e0:	04f14783          	lbu	a5,79(sp)
    800039e4:	0ff7f713          	andi	a4,a5,255
    800039e8:	4785                	li	a5,1
    800039ea:	06f71163          	bne	a4,a5,80003a4c <OSMutexPend+0x338>
    800039ee:	77c2                	ld	a5,48(sp)
    800039f0:	05e7c703          	lbu	a4,94(a5)
    800039f4:	0007d797          	auipc	a5,0x7d
    800039f8:	5ec78793          	addi	a5,a5,1516 # 80080fe0 <OSRdyGrp>
    800039fc:	0007c783          	lbu	a5,0(a5)
    80003a00:	8fd9                	or	a5,a5,a4
    80003a02:	0ff7f713          	andi	a4,a5,255
    80003a06:	0007d797          	auipc	a5,0x7d
    80003a0a:	5da78793          	addi	a5,a5,1498 # 80080fe0 <OSRdyGrp>
    80003a0e:	00e78023          	sb	a4,0(a5)
    80003a12:	77c2                	ld	a5,48(sp)
    80003a14:	05c7c783          	lbu	a5,92(a5)
    80003a18:	2781                	sext.w	a5,a5
    80003a1a:	0007d717          	auipc	a4,0x7d
    80003a1e:	5ce70713          	addi	a4,a4,1486 # 80080fe8 <OSRdyTbl>
    80003a22:	97ba                	add	a5,a5,a4
    80003a24:	0007c683          	lbu	a3,0(a5)
    80003a28:	77c2                	ld	a5,48(sp)
    80003a2a:	05d7c703          	lbu	a4,93(a5)
    80003a2e:	77c2                	ld	a5,48(sp)
    80003a30:	05c7c783          	lbu	a5,92(a5)
    80003a34:	2781                	sext.w	a5,a5
    80003a36:	8f55                	or	a4,a4,a3
    80003a38:	0ff77713          	andi	a4,a4,255
    80003a3c:	0007d697          	auipc	a3,0x7d
    80003a40:	5ac68693          	addi	a3,a3,1452 # 80080fe8 <OSRdyTbl>
    80003a44:	97b6                	add	a5,a5,a3
    80003a46:	00e78023          	sb	a4,0(a5)
    80003a4a:	a881                	j	80003a9a <OSMutexPend+0x386>
    80003a4c:	77c2                	ld	a5,48(sp)
    80003a4e:	7b9c                	ld	a5,48(a5)
    80003a50:	f03e                	sd	a5,32(sp)
    80003a52:	7782                	ld	a5,32(sp)
    80003a54:	c3b9                	beqz	a5,80003a9a <OSMutexPend+0x386>
    80003a56:	7782                	ld	a5,32(sp)
    80003a58:	0127c703          	lbu	a4,18(a5)
    80003a5c:	77c2                	ld	a5,48(sp)
    80003a5e:	05e7c783          	lbu	a5,94(a5)
    80003a62:	8fd9                	or	a5,a5,a4
    80003a64:	0ff7f713          	andi	a4,a5,255
    80003a68:	7782                	ld	a5,32(sp)
    80003a6a:	00e78923          	sb	a4,18(a5)
    80003a6e:	77c2                	ld	a5,48(sp)
    80003a70:	05c7c783          	lbu	a5,92(a5)
    80003a74:	2781                	sext.w	a5,a5
    80003a76:	7702                	ld	a4,32(sp)
    80003a78:	97ba                	add	a5,a5,a4
    80003a7a:	0137c683          	lbu	a3,19(a5)
    80003a7e:	77c2                	ld	a5,48(sp)
    80003a80:	05d7c703          	lbu	a4,93(a5)
    80003a84:	77c2                	ld	a5,48(sp)
    80003a86:	05c7c783          	lbu	a5,92(a5)
    80003a8a:	2781                	sext.w	a5,a5
    80003a8c:	8f55                	or	a4,a4,a3
    80003a8e:	0ff77713          	andi	a4,a4,255
    80003a92:	7682                	ld	a3,32(sp)
    80003a94:	97b6                	add	a5,a5,a3
    80003a96:	00e789a3          	sb	a4,19(a5)
    80003a9a:	03f14783          	lbu	a5,63(sp)
    80003a9e:	2781                	sext.w	a5,a5
    80003aa0:	0007f717          	auipc	a4,0x7f
    80003aa4:	b7870713          	addi	a4,a4,-1160 # 80082618 <OSTCBPrioTbl>
    80003aa8:	078e                	slli	a5,a5,0x3
    80003aaa:	97ba                	add	a5,a5,a4
    80003aac:	7742                	ld	a4,48(sp)
    80003aae:	e398                	sd	a4,0(a5)
    80003ab0:	0007e797          	auipc	a5,0x7e
    80003ab4:	95078793          	addi	a5,a5,-1712 # 80081400 <OSTCBCur>
    80003ab8:	639c                	ld	a5,0(a5)
    80003aba:	0587c703          	lbu	a4,88(a5)
    80003abe:	0007e797          	auipc	a5,0x7e
    80003ac2:	94278793          	addi	a5,a5,-1726 # 80081400 <OSTCBCur>
    80003ac6:	639c                	ld	a5,0(a5)
    80003ac8:	01076713          	ori	a4,a4,16
    80003acc:	0ff77713          	andi	a4,a4,255
    80003ad0:	04e78c23          	sb	a4,88(a5)
    80003ad4:	0007e797          	auipc	a5,0x7e
    80003ad8:	92c78793          	addi	a5,a5,-1748 # 80081400 <OSTCBCur>
    80003adc:	639c                	ld	a5,0(a5)
    80003ade:	04078ca3          	sb	zero,89(a5)
    80003ae2:	0007e797          	auipc	a5,0x7e
    80003ae6:	91e78793          	addi	a5,a5,-1762 # 80081400 <OSTCBCur>
    80003aea:	639c                	ld	a5,0(a5)
    80003aec:	4752                	lw	a4,20(sp)
    80003aee:	cbf8                	sw	a4,84(a5)
    80003af0:	6562                	ld	a0,24(sp)
    80003af2:	ad6fd0ef          	jal	ra,80000dc8 <OS_EventTaskWait>
    80003af6:	6506                	ld	a0,64(sp)
    80003af8:	312030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003afc:	a4dfd0ef          	jal	ra,80001548 <OS_Sched>
    80003b00:	300030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80003b04:	e0aa                	sd	a0,64(sp)
    80003b06:	0007e797          	auipc	a5,0x7e
    80003b0a:	8fa78793          	addi	a5,a5,-1798 # 80081400 <OSTCBCur>
    80003b0e:	639c                	ld	a5,0(a5)
    80003b10:	0597c783          	lbu	a5,89(a5)
    80003b14:	2781                	sext.w	a5,a5
    80003b16:	873e                	mv	a4,a5
    80003b18:	c711                	beqz	a4,80003b24 <OSMutexPend+0x410>
    80003b1a:	873e                	mv	a4,a5
    80003b1c:	4789                	li	a5,2
    80003b1e:	00f70763          	beq	a4,a5,80003b2c <OSMutexPend+0x418>
    80003b22:	a811                	j	80003b36 <OSMutexPend+0x422>
    80003b24:	67a2                	ld	a5,8(sp)
    80003b26:	00078023          	sb	zero,0(a5)
    80003b2a:	a025                	j	80003b52 <OSMutexPend+0x43e>
    80003b2c:	67a2                	ld	a5,8(sp)
    80003b2e:	4739                	li	a4,14
    80003b30:	00e78023          	sb	a4,0(a5)
    80003b34:	a839                	j	80003b52 <OSMutexPend+0x43e>
    80003b36:	0007e797          	auipc	a5,0x7e
    80003b3a:	8ca78793          	addi	a5,a5,-1846 # 80081400 <OSTCBCur>
    80003b3e:	639c                	ld	a5,0(a5)
    80003b40:	65e2                	ld	a1,24(sp)
    80003b42:	853e                	mv	a0,a5
    80003b44:	ce6fd0ef          	jal	ra,8000102a <OS_EventTaskRemove>
    80003b48:	67a2                	ld	a5,8(sp)
    80003b4a:	4729                	li	a4,10
    80003b4c:	00e78023          	sb	a4,0(a5)
    80003b50:	0001                	nop
    80003b52:	0007e797          	auipc	a5,0x7e
    80003b56:	8ae78793          	addi	a5,a5,-1874 # 80081400 <OSTCBCur>
    80003b5a:	639c                	ld	a5,0(a5)
    80003b5c:	04078c23          	sb	zero,88(a5)
    80003b60:	0007e797          	auipc	a5,0x7e
    80003b64:	8a078793          	addi	a5,a5,-1888 # 80081400 <OSTCBCur>
    80003b68:	639c                	ld	a5,0(a5)
    80003b6a:	04078ca3          	sb	zero,89(a5)
    80003b6e:	0007e797          	auipc	a5,0x7e
    80003b72:	89278793          	addi	a5,a5,-1902 # 80081400 <OSTCBCur>
    80003b76:	639c                	ld	a5,0(a5)
    80003b78:	0207b823          	sd	zero,48(a5)
    80003b7c:	0007e797          	auipc	a5,0x7e
    80003b80:	88478793          	addi	a5,a5,-1916 # 80081400 <OSTCBCur>
    80003b84:	639c                	ld	a5,0(a5)
    80003b86:	0207bc23          	sd	zero,56(a5)
    80003b8a:	6506                	ld	a0,64(sp)
    80003b8c:	27e030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003b90:	60e6                	ld	ra,88(sp)
    80003b92:	6125                	addi	sp,sp,96
    80003b94:	8082                	ret

0000000080003b96 <OSMutexPost>:
    80003b96:	7179                	addi	sp,sp,-48
    80003b98:	f406                	sd	ra,40(sp)
    80003b9a:	e42a                	sd	a0,8(sp)
    80003b9c:	ec02                	sd	zero,24(sp)
    80003b9e:	0007e797          	auipc	a5,0x7e
    80003ba2:	85a78793          	addi	a5,a5,-1958 # 800813f8 <OSIntNesting>
    80003ba6:	0007c783          	lbu	a5,0(a5)
    80003baa:	c399                	beqz	a5,80003bb0 <OSMutexPost+0x1a>
    80003bac:	4795                	li	a5,5
    80003bae:	aa91                	j	80003d02 <OSMutexPost+0x16c>
    80003bb0:	67a2                	ld	a5,8(sp)
    80003bb2:	0007c783          	lbu	a5,0(a5)
    80003bb6:	873e                	mv	a4,a5
    80003bb8:	4791                	li	a5,4
    80003bba:	00f70463          	beq	a4,a5,80003bc2 <OSMutexPost+0x2c>
    80003bbe:	4785                	li	a5,1
    80003bc0:	a289                	j	80003d02 <OSMutexPost+0x16c>
    80003bc2:	23e030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80003bc6:	ec2a                	sd	a0,24(sp)
    80003bc8:	67a2                	ld	a5,8(sp)
    80003bca:	0107d783          	lhu	a5,16(a5)
    80003bce:	0087d79b          	srliw	a5,a5,0x8
    80003bd2:	17c2                	slli	a5,a5,0x30
    80003bd4:	93c1                	srli	a5,a5,0x30
    80003bd6:	00f10ba3          	sb	a5,23(sp)
    80003bda:	67a2                	ld	a5,8(sp)
    80003bdc:	0107d783          	lhu	a5,16(a5)
    80003be0:	00f10b23          	sb	a5,22(sp)
    80003be4:	67a2                	ld	a5,8(sp)
    80003be6:	6798                	ld	a4,8(a5)
    80003be8:	0007e797          	auipc	a5,0x7e
    80003bec:	81878793          	addi	a5,a5,-2024 # 80081400 <OSTCBCur>
    80003bf0:	639c                	ld	a5,0(a5)
    80003bf2:	00f70863          	beq	a4,a5,80003c02 <OSMutexPost+0x6c>
    80003bf6:	6562                	ld	a0,24(sp)
    80003bf8:	212030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003bfc:	06400793          	li	a5,100
    80003c00:	a209                	j	80003d02 <OSMutexPost+0x16c>
    80003c02:	0007d797          	auipc	a5,0x7d
    80003c06:	7fe78793          	addi	a5,a5,2046 # 80081400 <OSTCBCur>
    80003c0a:	639c                	ld	a5,0(a5)
    80003c0c:	05a7c703          	lbu	a4,90(a5)
    80003c10:	01714783          	lbu	a5,23(sp)
    80003c14:	0ff7f793          	andi	a5,a5,255
    80003c18:	00e79d63          	bne	a5,a4,80003c32 <OSMutexPost+0x9c>
    80003c1c:	0007d797          	auipc	a5,0x7d
    80003c20:	7e478793          	addi	a5,a5,2020 # 80081400 <OSTCBCur>
    80003c24:	639c                	ld	a5,0(a5)
    80003c26:	01614703          	lbu	a4,22(sp)
    80003c2a:	85ba                	mv	a1,a4
    80003c2c:	853e                	mv	a0,a5
    80003c2e:	1b4000ef          	jal	ra,80003de2 <OSMutex_RdyAtPrio>
    80003c32:	01714783          	lbu	a5,23(sp)
    80003c36:	2781                	sext.w	a5,a5
    80003c38:	0007f717          	auipc	a4,0x7f
    80003c3c:	9e070713          	addi	a4,a4,-1568 # 80082618 <OSTCBPrioTbl>
    80003c40:	078e                	slli	a5,a5,0x3
    80003c42:	97ba                	add	a5,a5,a4
    80003c44:	4705                	li	a4,1
    80003c46:	e398                	sd	a4,0(a5)
    80003c48:	67a2                	ld	a5,8(sp)
    80003c4a:	0127c783          	lbu	a5,18(a5)
    80003c4e:	cbc1                	beqz	a5,80003cde <OSMutexPost+0x148>
    80003c50:	4681                	li	a3,0
    80003c52:	4641                	li	a2,16
    80003c54:	4581                	li	a1,0
    80003c56:	6522                	ld	a0,8(sp)
    80003c58:	82cfd0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80003c5c:	87aa                	mv	a5,a0
    80003c5e:	00f10b23          	sb	a5,22(sp)
    80003c62:	67a2                	ld	a5,8(sp)
    80003c64:	0107d783          	lhu	a5,16(a5)
    80003c68:	f007f793          	andi	a5,a5,-256
    80003c6c:	03079713          	slli	a4,a5,0x30
    80003c70:	9341                	srli	a4,a4,0x30
    80003c72:	67a2                	ld	a5,8(sp)
    80003c74:	00e79823          	sh	a4,16(a5)
    80003c78:	67a2                	ld	a5,8(sp)
    80003c7a:	0107d703          	lhu	a4,16(a5)
    80003c7e:	01614783          	lbu	a5,22(sp)
    80003c82:	17c2                	slli	a5,a5,0x30
    80003c84:	93c1                	srli	a5,a5,0x30
    80003c86:	8fd9                	or	a5,a5,a4
    80003c88:	03079713          	slli	a4,a5,0x30
    80003c8c:	9341                	srli	a4,a4,0x30
    80003c8e:	67a2                	ld	a5,8(sp)
    80003c90:	00e79823          	sh	a4,16(a5)
    80003c94:	01614783          	lbu	a5,22(sp)
    80003c98:	2781                	sext.w	a5,a5
    80003c9a:	0007f717          	auipc	a4,0x7f
    80003c9e:	97e70713          	addi	a4,a4,-1666 # 80082618 <OSTCBPrioTbl>
    80003ca2:	078e                	slli	a5,a5,0x3
    80003ca4:	97ba                	add	a5,a5,a4
    80003ca6:	6398                	ld	a4,0(a5)
    80003ca8:	67a2                	ld	a5,8(sp)
    80003caa:	e798                	sd	a4,8(a5)
    80003cac:	01614703          	lbu	a4,22(sp)
    80003cb0:	01714783          	lbu	a5,23(sp)
    80003cb4:	0ff77713          	andi	a4,a4,255
    80003cb8:	0ff7f793          	andi	a5,a5,255
    80003cbc:	00e7ea63          	bltu	a5,a4,80003cd0 <OSMutexPost+0x13a>
    80003cc0:	6562                	ld	a0,24(sp)
    80003cc2:	148030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003cc6:	883fd0ef          	jal	ra,80001548 <OS_Sched>
    80003cca:	07800793          	li	a5,120
    80003cce:	a815                	j	80003d02 <OSMutexPost+0x16c>
    80003cd0:	6562                	ld	a0,24(sp)
    80003cd2:	138030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003cd6:	873fd0ef          	jal	ra,80001548 <OS_Sched>
    80003cda:	4781                	li	a5,0
    80003cdc:	a01d                	j	80003d02 <OSMutexPost+0x16c>
    80003cde:	67a2                	ld	a5,8(sp)
    80003ce0:	0107d783          	lhu	a5,16(a5)
    80003ce4:	0ff7e793          	ori	a5,a5,255
    80003ce8:	03079713          	slli	a4,a5,0x30
    80003cec:	9341                	srli	a4,a4,0x30
    80003cee:	67a2                	ld	a5,8(sp)
    80003cf0:	00e79823          	sh	a4,16(a5)
    80003cf4:	67a2                	ld	a5,8(sp)
    80003cf6:	0007b423          	sd	zero,8(a5)
    80003cfa:	6562                	ld	a0,24(sp)
    80003cfc:	10e030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003d00:	4781                	li	a5,0
    80003d02:	853e                	mv	a0,a5
    80003d04:	70a2                	ld	ra,40(sp)
    80003d06:	6145                	addi	sp,sp,48
    80003d08:	8082                	ret

0000000080003d0a <OSMutexQuery>:
    80003d0a:	7139                	addi	sp,sp,-64
    80003d0c:	fc06                	sd	ra,56(sp)
    80003d0e:	e42a                	sd	a0,8(sp)
    80003d10:	e02e                	sd	a1,0(sp)
    80003d12:	e802                	sd	zero,16(sp)
    80003d14:	0007d797          	auipc	a5,0x7d
    80003d18:	6e478793          	addi	a5,a5,1764 # 800813f8 <OSIntNesting>
    80003d1c:	0007c783          	lbu	a5,0(a5)
    80003d20:	c399                	beqz	a5,80003d26 <OSMutexQuery+0x1c>
    80003d22:	4799                	li	a5,6
    80003d24:	a85d                	j	80003dda <OSMutexQuery+0xd0>
    80003d26:	67a2                	ld	a5,8(sp)
    80003d28:	0007c783          	lbu	a5,0(a5)
    80003d2c:	873e                	mv	a4,a5
    80003d2e:	4791                	li	a5,4
    80003d30:	00f70463          	beq	a4,a5,80003d38 <OSMutexQuery+0x2e>
    80003d34:	4785                	li	a5,1
    80003d36:	a055                	j	80003dda <OSMutexQuery+0xd0>
    80003d38:	0c8030ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80003d3c:	e82a                	sd	a0,16(sp)
    80003d3e:	67a2                	ld	a5,8(sp)
    80003d40:	0107d783          	lhu	a5,16(a5)
    80003d44:	0087d79b          	srliw	a5,a5,0x8
    80003d48:	17c2                	slli	a5,a5,0x30
    80003d4a:	93c1                	srli	a5,a5,0x30
    80003d4c:	0ff7f713          	andi	a4,a5,255
    80003d50:	6782                	ld	a5,0(sp)
    80003d52:	00e785a3          	sb	a4,11(a5)
    80003d56:	67a2                	ld	a5,8(sp)
    80003d58:	0107d783          	lhu	a5,16(a5)
    80003d5c:	0ff7f713          	andi	a4,a5,255
    80003d60:	6782                	ld	a5,0(sp)
    80003d62:	00e78523          	sb	a4,10(a5)
    80003d66:	6782                	ld	a5,0(sp)
    80003d68:	00a7c783          	lbu	a5,10(a5)
    80003d6c:	873e                	mv	a4,a5
    80003d6e:	0ff00793          	li	a5,255
    80003d72:	00f71763          	bne	a4,a5,80003d80 <OSMutexQuery+0x76>
    80003d76:	6782                	ld	a5,0(sp)
    80003d78:	4705                	li	a4,1
    80003d7a:	00e784a3          	sb	a4,9(a5)
    80003d7e:	a021                	j	80003d86 <OSMutexQuery+0x7c>
    80003d80:	6782                	ld	a5,0(sp)
    80003d82:	000784a3          	sb	zero,9(a5)
    80003d86:	67a2                	ld	a5,8(sp)
    80003d88:	0127c703          	lbu	a4,18(a5)
    80003d8c:	6782                	ld	a5,0(sp)
    80003d8e:	00e78423          	sb	a4,8(a5)
    80003d92:	67a2                	ld	a5,8(sp)
    80003d94:	07cd                	addi	a5,a5,19
    80003d96:	f03e                	sd	a5,32(sp)
    80003d98:	6782                	ld	a5,0(sp)
    80003d9a:	ec3e                	sd	a5,24(sp)
    80003d9c:	020107a3          	sb	zero,47(sp)
    80003da0:	a015                	j	80003dc4 <OSMutexQuery+0xba>
    80003da2:	7702                	ld	a4,32(sp)
    80003da4:	00170793          	addi	a5,a4,1
    80003da8:	f03e                	sd	a5,32(sp)
    80003daa:	67e2                	ld	a5,24(sp)
    80003dac:	00178693          	addi	a3,a5,1
    80003db0:	ec36                	sd	a3,24(sp)
    80003db2:	00074703          	lbu	a4,0(a4)
    80003db6:	00e78023          	sb	a4,0(a5)
    80003dba:	02f14783          	lbu	a5,47(sp)
    80003dbe:	2785                	addiw	a5,a5,1
    80003dc0:	02f107a3          	sb	a5,47(sp)
    80003dc4:	02f14783          	lbu	a5,47(sp)
    80003dc8:	0ff7f713          	andi	a4,a5,255
    80003dcc:	479d                	li	a5,7
    80003dce:	fce7fae3          	bleu	a4,a5,80003da2 <OSMutexQuery+0x98>
    80003dd2:	6542                	ld	a0,16(sp)
    80003dd4:	036030ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003dd8:	4781                	li	a5,0
    80003dda:	853e                	mv	a0,a5
    80003ddc:	70e2                	ld	ra,56(sp)
    80003dde:	6121                	addi	sp,sp,64
    80003de0:	8082                	ret

0000000080003de2 <OSMutex_RdyAtPrio>:
    80003de2:	1101                	addi	sp,sp,-32
    80003de4:	e42a                	sd	a0,8(sp)
    80003de6:	87ae                	mv	a5,a1
    80003de8:	00f103a3          	sb	a5,7(sp)
    80003dec:	67a2                	ld	a5,8(sp)
    80003dee:	05c7c783          	lbu	a5,92(a5)
    80003df2:	00f10fa3          	sb	a5,31(sp)
    80003df6:	01f14783          	lbu	a5,31(sp)
    80003dfa:	2781                	sext.w	a5,a5
    80003dfc:	0007d717          	auipc	a4,0x7d
    80003e00:	1ec70713          	addi	a4,a4,492 # 80080fe8 <OSRdyTbl>
    80003e04:	97ba                	add	a5,a5,a4
    80003e06:	0007c683          	lbu	a3,0(a5)
    80003e0a:	67a2                	ld	a5,8(sp)
    80003e0c:	05d7c783          	lbu	a5,93(a5)
    80003e10:	fff7c793          	not	a5,a5
    80003e14:	0ff7f713          	andi	a4,a5,255
    80003e18:	01f14783          	lbu	a5,31(sp)
    80003e1c:	2781                	sext.w	a5,a5
    80003e1e:	8f75                	and	a4,a4,a3
    80003e20:	0ff77713          	andi	a4,a4,255
    80003e24:	0007d697          	auipc	a3,0x7d
    80003e28:	1c468693          	addi	a3,a3,452 # 80080fe8 <OSRdyTbl>
    80003e2c:	97b6                	add	a5,a5,a3
    80003e2e:	00e78023          	sb	a4,0(a5)
    80003e32:	01f14783          	lbu	a5,31(sp)
    80003e36:	2781                	sext.w	a5,a5
    80003e38:	0007d717          	auipc	a4,0x7d
    80003e3c:	1b070713          	addi	a4,a4,432 # 80080fe8 <OSRdyTbl>
    80003e40:	97ba                	add	a5,a5,a4
    80003e42:	0007c783          	lbu	a5,0(a5)
    80003e46:	e79d                	bnez	a5,80003e74 <OSMutex_RdyAtPrio+0x92>
    80003e48:	67a2                	ld	a5,8(sp)
    80003e4a:	05e7c783          	lbu	a5,94(a5)
    80003e4e:	fff7c793          	not	a5,a5
    80003e52:	0ff7f713          	andi	a4,a5,255
    80003e56:	0007d797          	auipc	a5,0x7d
    80003e5a:	18a78793          	addi	a5,a5,394 # 80080fe0 <OSRdyGrp>
    80003e5e:	0007c783          	lbu	a5,0(a5)
    80003e62:	8ff9                	and	a5,a5,a4
    80003e64:	0ff7f713          	andi	a4,a5,255
    80003e68:	0007d797          	auipc	a5,0x7d
    80003e6c:	17878793          	addi	a5,a5,376 # 80080fe0 <OSRdyGrp>
    80003e70:	00e78023          	sb	a4,0(a5)
    80003e74:	67a2                	ld	a5,8(sp)
    80003e76:	00714703          	lbu	a4,7(sp)
    80003e7a:	04e78d23          	sb	a4,90(a5)
    80003e7e:	0007d797          	auipc	a5,0x7d
    80003e82:	b8a78793          	addi	a5,a5,-1142 # 80080a08 <OSPrioCur>
    80003e86:	00714703          	lbu	a4,7(sp)
    80003e8a:	00e78023          	sb	a4,0(a5)
    80003e8e:	00714783          	lbu	a5,7(sp)
    80003e92:	0037d79b          	srliw	a5,a5,0x3
    80003e96:	0ff7f793          	andi	a5,a5,255
    80003e9a:	8b9d                	andi	a5,a5,7
    80003e9c:	0ff7f713          	andi	a4,a5,255
    80003ea0:	67a2                	ld	a5,8(sp)
    80003ea2:	04e78e23          	sb	a4,92(a5)
    80003ea6:	00714783          	lbu	a5,7(sp)
    80003eaa:	8b9d                	andi	a5,a5,7
    80003eac:	0ff7f713          	andi	a4,a5,255
    80003eb0:	67a2                	ld	a5,8(sp)
    80003eb2:	04e78da3          	sb	a4,91(a5)
    80003eb6:	67a2                	ld	a5,8(sp)
    80003eb8:	05c7c783          	lbu	a5,92(a5)
    80003ebc:	2781                	sext.w	a5,a5
    80003ebe:	4705                	li	a4,1
    80003ec0:	00f717b3          	sll	a5,a4,a5
    80003ec4:	0ff7f713          	andi	a4,a5,255
    80003ec8:	67a2                	ld	a5,8(sp)
    80003eca:	04e78f23          	sb	a4,94(a5)
    80003ece:	67a2                	ld	a5,8(sp)
    80003ed0:	05b7c783          	lbu	a5,91(a5)
    80003ed4:	2781                	sext.w	a5,a5
    80003ed6:	4705                	li	a4,1
    80003ed8:	00f717b3          	sll	a5,a4,a5
    80003edc:	0ff7f713          	andi	a4,a5,255
    80003ee0:	67a2                	ld	a5,8(sp)
    80003ee2:	04e78ea3          	sb	a4,93(a5)
    80003ee6:	67a2                	ld	a5,8(sp)
    80003ee8:	05e7c703          	lbu	a4,94(a5)
    80003eec:	0007d797          	auipc	a5,0x7d
    80003ef0:	0f478793          	addi	a5,a5,244 # 80080fe0 <OSRdyGrp>
    80003ef4:	0007c783          	lbu	a5,0(a5)
    80003ef8:	8fd9                	or	a5,a5,a4
    80003efa:	0ff7f713          	andi	a4,a5,255
    80003efe:	0007d797          	auipc	a5,0x7d
    80003f02:	0e278793          	addi	a5,a5,226 # 80080fe0 <OSRdyGrp>
    80003f06:	00e78023          	sb	a4,0(a5)
    80003f0a:	67a2                	ld	a5,8(sp)
    80003f0c:	05c7c783          	lbu	a5,92(a5)
    80003f10:	2781                	sext.w	a5,a5
    80003f12:	0007d717          	auipc	a4,0x7d
    80003f16:	0d670713          	addi	a4,a4,214 # 80080fe8 <OSRdyTbl>
    80003f1a:	97ba                	add	a5,a5,a4
    80003f1c:	0007c683          	lbu	a3,0(a5)
    80003f20:	67a2                	ld	a5,8(sp)
    80003f22:	05d7c703          	lbu	a4,93(a5)
    80003f26:	67a2                	ld	a5,8(sp)
    80003f28:	05c7c783          	lbu	a5,92(a5)
    80003f2c:	2781                	sext.w	a5,a5
    80003f2e:	8f55                	or	a4,a4,a3
    80003f30:	0ff77713          	andi	a4,a4,255
    80003f34:	0007d697          	auipc	a3,0x7d
    80003f38:	0b468693          	addi	a3,a3,180 # 80080fe8 <OSRdyTbl>
    80003f3c:	97b6                	add	a5,a5,a3
    80003f3e:	00e78023          	sb	a4,0(a5)
    80003f42:	00714783          	lbu	a5,7(sp)
    80003f46:	2781                	sext.w	a5,a5
    80003f48:	0007e717          	auipc	a4,0x7e
    80003f4c:	6d070713          	addi	a4,a4,1744 # 80082618 <OSTCBPrioTbl>
    80003f50:	078e                	slli	a5,a5,0x3
    80003f52:	97ba                	add	a5,a5,a4
    80003f54:	6722                	ld	a4,8(sp)
    80003f56:	e398                	sd	a4,0(a5)
    80003f58:	0001                	nop
    80003f5a:	6105                	addi	sp,sp,32
    80003f5c:	8082                	ret

0000000080003f5e <OSQAccept>:
    80003f5e:	7139                	addi	sp,sp,-64
    80003f60:	fc06                	sd	ra,56(sp)
    80003f62:	e42a                	sd	a0,8(sp)
    80003f64:	e02e                	sd	a1,0(sp)
    80003f66:	f002                	sd	zero,32(sp)
    80003f68:	67a2                	ld	a5,8(sp)
    80003f6a:	0007c783          	lbu	a5,0(a5)
    80003f6e:	873e                	mv	a4,a5
    80003f70:	4789                	li	a5,2
    80003f72:	00f70863          	beq	a4,a5,80003f82 <OSQAccept+0x24>
    80003f76:	6782                	ld	a5,0(sp)
    80003f78:	4705                	li	a4,1
    80003f7a:	00e78023          	sb	a4,0(a5)
    80003f7e:	4781                	li	a5,0
    80003f80:	a0a5                	j	80003fe8 <OSQAccept+0x8a>
    80003f82:	67f020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80003f86:	f02a                	sd	a0,32(sp)
    80003f88:	67a2                	ld	a5,8(sp)
    80003f8a:	679c                	ld	a5,8(a5)
    80003f8c:	ec3e                	sd	a5,24(sp)
    80003f8e:	67e2                	ld	a5,24(sp)
    80003f90:	02a7d783          	lhu	a5,42(a5)
    80003f94:	c3a9                	beqz	a5,80003fd6 <OSQAccept+0x78>
    80003f96:	67e2                	ld	a5,24(sp)
    80003f98:	739c                	ld	a5,32(a5)
    80003f9a:	00878693          	addi	a3,a5,8
    80003f9e:	6762                	ld	a4,24(sp)
    80003fa0:	f314                	sd	a3,32(a4)
    80003fa2:	639c                	ld	a5,0(a5)
    80003fa4:	f43e                	sd	a5,40(sp)
    80003fa6:	67e2                	ld	a5,24(sp)
    80003fa8:	02a7d783          	lhu	a5,42(a5)
    80003fac:	37fd                	addiw	a5,a5,-1
    80003fae:	03079713          	slli	a4,a5,0x30
    80003fb2:	9341                	srli	a4,a4,0x30
    80003fb4:	67e2                	ld	a5,24(sp)
    80003fb6:	02e79523          	sh	a4,42(a5)
    80003fba:	67e2                	ld	a5,24(sp)
    80003fbc:	7398                	ld	a4,32(a5)
    80003fbe:	67e2                	ld	a5,24(sp)
    80003fc0:	6b9c                	ld	a5,16(a5)
    80003fc2:	00f71663          	bne	a4,a5,80003fce <OSQAccept+0x70>
    80003fc6:	67e2                	ld	a5,24(sp)
    80003fc8:	6798                	ld	a4,8(a5)
    80003fca:	67e2                	ld	a5,24(sp)
    80003fcc:	f398                	sd	a4,32(a5)
    80003fce:	6782                	ld	a5,0(sp)
    80003fd0:	00078023          	sb	zero,0(a5)
    80003fd4:	a031                	j	80003fe0 <OSQAccept+0x82>
    80003fd6:	6782                	ld	a5,0(sp)
    80003fd8:	477d                	li	a4,31
    80003fda:	00e78023          	sb	a4,0(a5)
    80003fde:	f402                	sd	zero,40(sp)
    80003fe0:	7502                	ld	a0,32(sp)
    80003fe2:	629020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80003fe6:	77a2                	ld	a5,40(sp)
    80003fe8:	853e                	mv	a0,a5
    80003fea:	70e2                	ld	ra,56(sp)
    80003fec:	6121                	addi	sp,sp,64
    80003fee:	8082                	ret

0000000080003ff0 <OSQCreate>:
    80003ff0:	7139                	addi	sp,sp,-64
    80003ff2:	fc06                	sd	ra,56(sp)
    80003ff4:	e42a                	sd	a0,8(sp)
    80003ff6:	87ae                	mv	a5,a1
    80003ff8:	00f11323          	sh	a5,6(sp)
    80003ffc:	f002                	sd	zero,32(sp)
    80003ffe:	0007d797          	auipc	a5,0x7d
    80004002:	3fa78793          	addi	a5,a5,1018 # 800813f8 <OSIntNesting>
    80004006:	0007c783          	lbu	a5,0(a5)
    8000400a:	c399                	beqz	a5,80004010 <OSQCreate+0x20>
    8000400c:	4781                	li	a5,0
    8000400e:	a0fd                	j	800040fc <OSQCreate+0x10c>
    80004010:	5f1020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004014:	f02a                	sd	a0,32(sp)
    80004016:	0007d797          	auipc	a5,0x7d
    8000401a:	3da78793          	addi	a5,a5,986 # 800813f0 <OSEventFreeList>
    8000401e:	639c                	ld	a5,0(a5)
    80004020:	f43e                	sd	a5,40(sp)
    80004022:	0007d797          	auipc	a5,0x7d
    80004026:	3ce78793          	addi	a5,a5,974 # 800813f0 <OSEventFreeList>
    8000402a:	639c                	ld	a5,0(a5)
    8000402c:	cf81                	beqz	a5,80004044 <OSQCreate+0x54>
    8000402e:	0007d797          	auipc	a5,0x7d
    80004032:	3c278793          	addi	a5,a5,962 # 800813f0 <OSEventFreeList>
    80004036:	639c                	ld	a5,0(a5)
    80004038:	6798                	ld	a4,8(a5)
    8000403a:	0007d797          	auipc	a5,0x7d
    8000403e:	3b678793          	addi	a5,a5,950 # 800813f0 <OSEventFreeList>
    80004042:	e398                	sd	a4,0(a5)
    80004044:	7502                	ld	a0,32(sp)
    80004046:	5c5020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000404a:	77a2                	ld	a5,40(sp)
    8000404c:	c7dd                	beqz	a5,800040fa <OSQCreate+0x10a>
    8000404e:	5b3020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004052:	f02a                	sd	a0,32(sp)
    80004054:	0007d797          	auipc	a5,0x7d
    80004058:	f8478793          	addi	a5,a5,-124 # 80080fd8 <OSQFreeList>
    8000405c:	639c                	ld	a5,0(a5)
    8000405e:	ec3e                	sd	a5,24(sp)
    80004060:	67e2                	ld	a5,24(sp)
    80004062:	cbbd                	beqz	a5,800040d8 <OSQCreate+0xe8>
    80004064:	0007d797          	auipc	a5,0x7d
    80004068:	f7478793          	addi	a5,a5,-140 # 80080fd8 <OSQFreeList>
    8000406c:	639c                	ld	a5,0(a5)
    8000406e:	6398                	ld	a4,0(a5)
    80004070:	0007d797          	auipc	a5,0x7d
    80004074:	f6878793          	addi	a5,a5,-152 # 80080fd8 <OSQFreeList>
    80004078:	e398                	sd	a4,0(a5)
    8000407a:	7502                	ld	a0,32(sp)
    8000407c:	58f020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004080:	67e2                	ld	a5,24(sp)
    80004082:	6722                	ld	a4,8(sp)
    80004084:	e798                	sd	a4,8(a5)
    80004086:	00615783          	lhu	a5,6(sp)
    8000408a:	078e                	slli	a5,a5,0x3
    8000408c:	6722                	ld	a4,8(sp)
    8000408e:	973e                	add	a4,a4,a5
    80004090:	67e2                	ld	a5,24(sp)
    80004092:	eb98                	sd	a4,16(a5)
    80004094:	67e2                	ld	a5,24(sp)
    80004096:	6722                	ld	a4,8(sp)
    80004098:	ef98                	sd	a4,24(a5)
    8000409a:	67e2                	ld	a5,24(sp)
    8000409c:	6722                	ld	a4,8(sp)
    8000409e:	f398                	sd	a4,32(a5)
    800040a0:	67e2                	ld	a5,24(sp)
    800040a2:	00615703          	lhu	a4,6(sp)
    800040a6:	02e79423          	sh	a4,40(a5)
    800040aa:	67e2                	ld	a5,24(sp)
    800040ac:	02079523          	sh	zero,42(a5)
    800040b0:	77a2                	ld	a5,40(sp)
    800040b2:	4709                	li	a4,2
    800040b4:	00e78023          	sb	a4,0(a5)
    800040b8:	77a2                	ld	a5,40(sp)
    800040ba:	00079823          	sh	zero,16(a5)
    800040be:	77a2                	ld	a5,40(sp)
    800040c0:	6762                	ld	a4,24(sp)
    800040c2:	e798                	sd	a4,8(a5)
    800040c4:	77a2                	ld	a5,40(sp)
    800040c6:	0007c717          	auipc	a4,0x7c
    800040ca:	04270713          	addi	a4,a4,66 # 80080108 <OSUnMapTbl+0x100>
    800040ce:	f398                	sd	a4,32(a5)
    800040d0:	7522                	ld	a0,40(sp)
    800040d2:	870fd0ef          	jal	ra,80001142 <OS_EventWaitListInit>
    800040d6:	a015                	j	800040fa <OSQCreate+0x10a>
    800040d8:	0007d797          	auipc	a5,0x7d
    800040dc:	31878793          	addi	a5,a5,792 # 800813f0 <OSEventFreeList>
    800040e0:	6398                	ld	a4,0(a5)
    800040e2:	77a2                	ld	a5,40(sp)
    800040e4:	e798                	sd	a4,8(a5)
    800040e6:	0007d797          	auipc	a5,0x7d
    800040ea:	30a78793          	addi	a5,a5,778 # 800813f0 <OSEventFreeList>
    800040ee:	7722                	ld	a4,40(sp)
    800040f0:	e398                	sd	a4,0(a5)
    800040f2:	7502                	ld	a0,32(sp)
    800040f4:	517020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800040f8:	f402                	sd	zero,40(sp)
    800040fa:	77a2                	ld	a5,40(sp)
    800040fc:	853e                	mv	a0,a5
    800040fe:	70e2                	ld	ra,56(sp)
    80004100:	6121                	addi	sp,sp,64
    80004102:	8082                	ret

0000000080004104 <OSQDel>:
    80004104:	715d                	addi	sp,sp,-80
    80004106:	e486                	sd	ra,72(sp)
    80004108:	ec2a                	sd	a0,24(sp)
    8000410a:	87ae                	mv	a5,a1
    8000410c:	e432                	sd	a2,8(sp)
    8000410e:	00f10ba3          	sb	a5,23(sp)
    80004112:	f402                	sd	zero,40(sp)
    80004114:	67e2                	ld	a5,24(sp)
    80004116:	0007c783          	lbu	a5,0(a5)
    8000411a:	873e                	mv	a4,a5
    8000411c:	4789                	li	a5,2
    8000411e:	00f70863          	beq	a4,a5,8000412e <OSQDel+0x2a>
    80004122:	67a2                	ld	a5,8(sp)
    80004124:	4705                	li	a4,1
    80004126:	00e78023          	sb	a4,0(a5)
    8000412a:	67e2                	ld	a5,24(sp)
    8000412c:	a2ad                	j	80004296 <OSQDel+0x192>
    8000412e:	0007d797          	auipc	a5,0x7d
    80004132:	2ca78793          	addi	a5,a5,714 # 800813f8 <OSIntNesting>
    80004136:	0007c783          	lbu	a5,0(a5)
    8000413a:	c799                	beqz	a5,80004148 <OSQDel+0x44>
    8000413c:	67a2                	ld	a5,8(sp)
    8000413e:	473d                	li	a4,15
    80004140:	00e78023          	sb	a4,0(a5)
    80004144:	67e2                	ld	a5,24(sp)
    80004146:	aa81                	j	80004296 <OSQDel+0x192>
    80004148:	4b9020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000414c:	f42a                	sd	a0,40(sp)
    8000414e:	67e2                	ld	a5,24(sp)
    80004150:	0127c783          	lbu	a5,18(a5)
    80004154:	c789                	beqz	a5,8000415e <OSQDel+0x5a>
    80004156:	4785                	li	a5,1
    80004158:	02f10fa3          	sb	a5,63(sp)
    8000415c:	a019                	j	80004162 <OSQDel+0x5e>
    8000415e:	02010fa3          	sb	zero,63(sp)
    80004162:	01714783          	lbu	a5,23(sp)
    80004166:	2781                	sext.w	a5,a5
    80004168:	873e                	mv	a4,a5
    8000416a:	c711                	beqz	a4,80004176 <OSQDel+0x72>
    8000416c:	873e                	mv	a4,a5
    8000416e:	4785                	li	a5,1
    80004170:	08f70a63          	beq	a4,a5,80004204 <OSQDel+0x100>
    80004174:	a231                	j	80004280 <OSQDel+0x17c>
    80004176:	03f14783          	lbu	a5,63(sp)
    8000417a:	0ff7f793          	andi	a5,a5,255
    8000417e:	e3b5                	bnez	a5,800041e2 <OSQDel+0xde>
    80004180:	67e2                	ld	a5,24(sp)
    80004182:	0007c717          	auipc	a4,0x7c
    80004186:	f8670713          	addi	a4,a4,-122 # 80080108 <OSUnMapTbl+0x100>
    8000418a:	f398                	sd	a4,32(a5)
    8000418c:	67e2                	ld	a5,24(sp)
    8000418e:	679c                	ld	a5,8(a5)
    80004190:	f03e                	sd	a5,32(sp)
    80004192:	0007d797          	auipc	a5,0x7d
    80004196:	e4678793          	addi	a5,a5,-442 # 80080fd8 <OSQFreeList>
    8000419a:	6398                	ld	a4,0(a5)
    8000419c:	7782                	ld	a5,32(sp)
    8000419e:	e398                	sd	a4,0(a5)
    800041a0:	0007d797          	auipc	a5,0x7d
    800041a4:	e3878793          	addi	a5,a5,-456 # 80080fd8 <OSQFreeList>
    800041a8:	7702                	ld	a4,32(sp)
    800041aa:	e398                	sd	a4,0(a5)
    800041ac:	67e2                	ld	a5,24(sp)
    800041ae:	00078023          	sb	zero,0(a5)
    800041b2:	0007d797          	auipc	a5,0x7d
    800041b6:	23e78793          	addi	a5,a5,574 # 800813f0 <OSEventFreeList>
    800041ba:	6398                	ld	a4,0(a5)
    800041bc:	67e2                	ld	a5,24(sp)
    800041be:	e798                	sd	a4,8(a5)
    800041c0:	67e2                	ld	a5,24(sp)
    800041c2:	00079823          	sh	zero,16(a5)
    800041c6:	0007d797          	auipc	a5,0x7d
    800041ca:	22a78793          	addi	a5,a5,554 # 800813f0 <OSEventFreeList>
    800041ce:	6762                	ld	a4,24(sp)
    800041d0:	e398                	sd	a4,0(a5)
    800041d2:	7522                	ld	a0,40(sp)
    800041d4:	437020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800041d8:	67a2                	ld	a5,8(sp)
    800041da:	00078023          	sb	zero,0(a5)
    800041de:	f802                	sd	zero,48(sp)
    800041e0:	a855                	j	80004294 <OSQDel+0x190>
    800041e2:	7522                	ld	a0,40(sp)
    800041e4:	427020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800041e8:	67a2                	ld	a5,8(sp)
    800041ea:	04900713          	li	a4,73
    800041ee:	00e78023          	sb	a4,0(a5)
    800041f2:	67e2                	ld	a5,24(sp)
    800041f4:	f83e                	sd	a5,48(sp)
    800041f6:	a879                	j	80004294 <OSQDel+0x190>
    800041f8:	4681                	li	a3,0
    800041fa:	4611                	li	a2,4
    800041fc:	4581                	li	a1,0
    800041fe:	6562                	ld	a0,24(sp)
    80004200:	a85fc0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80004204:	67e2                	ld	a5,24(sp)
    80004206:	0127c783          	lbu	a5,18(a5)
    8000420a:	f7fd                	bnez	a5,800041f8 <OSQDel+0xf4>
    8000420c:	67e2                	ld	a5,24(sp)
    8000420e:	0007c717          	auipc	a4,0x7c
    80004212:	efa70713          	addi	a4,a4,-262 # 80080108 <OSUnMapTbl+0x100>
    80004216:	f398                	sd	a4,32(a5)
    80004218:	67e2                	ld	a5,24(sp)
    8000421a:	679c                	ld	a5,8(a5)
    8000421c:	f03e                	sd	a5,32(sp)
    8000421e:	0007d797          	auipc	a5,0x7d
    80004222:	dba78793          	addi	a5,a5,-582 # 80080fd8 <OSQFreeList>
    80004226:	6398                	ld	a4,0(a5)
    80004228:	7782                	ld	a5,32(sp)
    8000422a:	e398                	sd	a4,0(a5)
    8000422c:	0007d797          	auipc	a5,0x7d
    80004230:	dac78793          	addi	a5,a5,-596 # 80080fd8 <OSQFreeList>
    80004234:	7702                	ld	a4,32(sp)
    80004236:	e398                	sd	a4,0(a5)
    80004238:	67e2                	ld	a5,24(sp)
    8000423a:	00078023          	sb	zero,0(a5)
    8000423e:	0007d797          	auipc	a5,0x7d
    80004242:	1b278793          	addi	a5,a5,434 # 800813f0 <OSEventFreeList>
    80004246:	6398                	ld	a4,0(a5)
    80004248:	67e2                	ld	a5,24(sp)
    8000424a:	e798                	sd	a4,8(a5)
    8000424c:	67e2                	ld	a5,24(sp)
    8000424e:	00079823          	sh	zero,16(a5)
    80004252:	0007d797          	auipc	a5,0x7d
    80004256:	19e78793          	addi	a5,a5,414 # 800813f0 <OSEventFreeList>
    8000425a:	6762                	ld	a4,24(sp)
    8000425c:	e398                	sd	a4,0(a5)
    8000425e:	7522                	ld	a0,40(sp)
    80004260:	3ab020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004264:	03f14783          	lbu	a5,63(sp)
    80004268:	0ff7f713          	andi	a4,a5,255
    8000426c:	4785                	li	a5,1
    8000426e:	00f71463          	bne	a4,a5,80004276 <OSQDel+0x172>
    80004272:	ad6fd0ef          	jal	ra,80001548 <OS_Sched>
    80004276:	67a2                	ld	a5,8(sp)
    80004278:	00078023          	sb	zero,0(a5)
    8000427c:	f802                	sd	zero,48(sp)
    8000427e:	a819                	j	80004294 <OSQDel+0x190>
    80004280:	7522                	ld	a0,40(sp)
    80004282:	389020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004286:	67a2                	ld	a5,8(sp)
    80004288:	471d                	li	a4,7
    8000428a:	00e78023          	sb	a4,0(a5)
    8000428e:	67e2                	ld	a5,24(sp)
    80004290:	f83e                	sd	a5,48(sp)
    80004292:	0001                	nop
    80004294:	77c2                	ld	a5,48(sp)
    80004296:	853e                	mv	a0,a5
    80004298:	60a6                	ld	ra,72(sp)
    8000429a:	6161                	addi	sp,sp,80
    8000429c:	8082                	ret

000000008000429e <OSQFlush>:
    8000429e:	7179                	addi	sp,sp,-48
    800042a0:	f406                	sd	ra,40(sp)
    800042a2:	e42a                	sd	a0,8(sp)
    800042a4:	ec02                	sd	zero,24(sp)
    800042a6:	35b020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800042aa:	ec2a                	sd	a0,24(sp)
    800042ac:	67a2                	ld	a5,8(sp)
    800042ae:	679c                	ld	a5,8(a5)
    800042b0:	e83e                	sd	a5,16(sp)
    800042b2:	67c2                	ld	a5,16(sp)
    800042b4:	6798                	ld	a4,8(a5)
    800042b6:	67c2                	ld	a5,16(sp)
    800042b8:	ef98                	sd	a4,24(a5)
    800042ba:	67c2                	ld	a5,16(sp)
    800042bc:	6798                	ld	a4,8(a5)
    800042be:	67c2                	ld	a5,16(sp)
    800042c0:	f398                	sd	a4,32(a5)
    800042c2:	67c2                	ld	a5,16(sp)
    800042c4:	02079523          	sh	zero,42(a5)
    800042c8:	6562                	ld	a0,24(sp)
    800042ca:	341020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800042ce:	4781                	li	a5,0
    800042d0:	853e                	mv	a0,a5
    800042d2:	70a2                	ld	ra,40(sp)
    800042d4:	6145                	addi	sp,sp,48
    800042d6:	8082                	ret

00000000800042d8 <OSQPend>:
    800042d8:	715d                	addi	sp,sp,-80
    800042da:	e486                	sd	ra,72(sp)
    800042dc:	ec2a                	sd	a0,24(sp)
    800042de:	87ae                	mv	a5,a1
    800042e0:	e432                	sd	a2,8(sp)
    800042e2:	ca3e                	sw	a5,20(sp)
    800042e4:	f802                	sd	zero,48(sp)
    800042e6:	67e2                	ld	a5,24(sp)
    800042e8:	0007c783          	lbu	a5,0(a5)
    800042ec:	873e                	mv	a4,a5
    800042ee:	4789                	li	a5,2
    800042f0:	00f70863          	beq	a4,a5,80004300 <OSQPend+0x28>
    800042f4:	67a2                	ld	a5,8(sp)
    800042f6:	4705                	li	a4,1
    800042f8:	00e78023          	sb	a4,0(a5)
    800042fc:	4781                	li	a5,0
    800042fe:	aa51                	j	80004492 <OSQPend+0x1ba>
    80004300:	0007d797          	auipc	a5,0x7d
    80004304:	0f878793          	addi	a5,a5,248 # 800813f8 <OSIntNesting>
    80004308:	0007c783          	lbu	a5,0(a5)
    8000430c:	c799                	beqz	a5,8000431a <OSQPend+0x42>
    8000430e:	67a2                	ld	a5,8(sp)
    80004310:	4709                	li	a4,2
    80004312:	00e78023          	sb	a4,0(a5)
    80004316:	4781                	li	a5,0
    80004318:	aaad                	j	80004492 <OSQPend+0x1ba>
    8000431a:	0007c797          	auipc	a5,0x7c
    8000431e:	1ae78793          	addi	a5,a5,430 # 800804c8 <OSLockNesting>
    80004322:	0007c783          	lbu	a5,0(a5)
    80004326:	c799                	beqz	a5,80004334 <OSQPend+0x5c>
    80004328:	67a2                	ld	a5,8(sp)
    8000432a:	4735                	li	a4,13
    8000432c:	00e78023          	sb	a4,0(a5)
    80004330:	4781                	li	a5,0
    80004332:	a285                	j	80004492 <OSQPend+0x1ba>
    80004334:	2cd020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004338:	f82a                	sd	a0,48(sp)
    8000433a:	67e2                	ld	a5,24(sp)
    8000433c:	679c                	ld	a5,8(a5)
    8000433e:	f43e                	sd	a5,40(sp)
    80004340:	77a2                	ld	a5,40(sp)
    80004342:	02a7d783          	lhu	a5,42(a5)
    80004346:	c7a9                	beqz	a5,80004390 <OSQPend+0xb8>
    80004348:	77a2                	ld	a5,40(sp)
    8000434a:	739c                	ld	a5,32(a5)
    8000434c:	00878693          	addi	a3,a5,8
    80004350:	7722                	ld	a4,40(sp)
    80004352:	f314                	sd	a3,32(a4)
    80004354:	639c                	ld	a5,0(a5)
    80004356:	fc3e                	sd	a5,56(sp)
    80004358:	77a2                	ld	a5,40(sp)
    8000435a:	02a7d783          	lhu	a5,42(a5)
    8000435e:	37fd                	addiw	a5,a5,-1
    80004360:	03079713          	slli	a4,a5,0x30
    80004364:	9341                	srli	a4,a4,0x30
    80004366:	77a2                	ld	a5,40(sp)
    80004368:	02e79523          	sh	a4,42(a5)
    8000436c:	77a2                	ld	a5,40(sp)
    8000436e:	7398                	ld	a4,32(a5)
    80004370:	77a2                	ld	a5,40(sp)
    80004372:	6b9c                	ld	a5,16(a5)
    80004374:	00f71663          	bne	a4,a5,80004380 <OSQPend+0xa8>
    80004378:	77a2                	ld	a5,40(sp)
    8000437a:	6798                	ld	a4,8(a5)
    8000437c:	77a2                	ld	a5,40(sp)
    8000437e:	f398                	sd	a4,32(a5)
    80004380:	7542                	ld	a0,48(sp)
    80004382:	289020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004386:	67a2                	ld	a5,8(sp)
    80004388:	00078023          	sb	zero,0(a5)
    8000438c:	77e2                	ld	a5,56(sp)
    8000438e:	a211                	j	80004492 <OSQPend+0x1ba>
    80004390:	0007d797          	auipc	a5,0x7d
    80004394:	07078793          	addi	a5,a5,112 # 80081400 <OSTCBCur>
    80004398:	639c                	ld	a5,0(a5)
    8000439a:	0587c703          	lbu	a4,88(a5)
    8000439e:	0007d797          	auipc	a5,0x7d
    800043a2:	06278793          	addi	a5,a5,98 # 80081400 <OSTCBCur>
    800043a6:	639c                	ld	a5,0(a5)
    800043a8:	00476713          	ori	a4,a4,4
    800043ac:	0ff77713          	andi	a4,a4,255
    800043b0:	04e78c23          	sb	a4,88(a5)
    800043b4:	0007d797          	auipc	a5,0x7d
    800043b8:	04c78793          	addi	a5,a5,76 # 80081400 <OSTCBCur>
    800043bc:	639c                	ld	a5,0(a5)
    800043be:	04078ca3          	sb	zero,89(a5)
    800043c2:	0007d797          	auipc	a5,0x7d
    800043c6:	03e78793          	addi	a5,a5,62 # 80081400 <OSTCBCur>
    800043ca:	639c                	ld	a5,0(a5)
    800043cc:	4752                	lw	a4,20(sp)
    800043ce:	cbf8                	sw	a4,84(a5)
    800043d0:	6562                	ld	a0,24(sp)
    800043d2:	9f7fc0ef          	jal	ra,80000dc8 <OS_EventTaskWait>
    800043d6:	7542                	ld	a0,48(sp)
    800043d8:	233020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800043dc:	96cfd0ef          	jal	ra,80001548 <OS_Sched>
    800043e0:	221020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800043e4:	f82a                	sd	a0,48(sp)
    800043e6:	0007d797          	auipc	a5,0x7d
    800043ea:	01a78793          	addi	a5,a5,26 # 80081400 <OSTCBCur>
    800043ee:	639c                	ld	a5,0(a5)
    800043f0:	0597c783          	lbu	a5,89(a5)
    800043f4:	2781                	sext.w	a5,a5
    800043f6:	873e                	mv	a4,a5
    800043f8:	c711                	beqz	a4,80004404 <OSQPend+0x12c>
    800043fa:	873e                	mv	a4,a5
    800043fc:	4789                	li	a5,2
    800043fe:	00f70e63          	beq	a4,a5,8000441a <OSQPend+0x142>
    80004402:	a015                	j	80004426 <OSQPend+0x14e>
    80004404:	0007d797          	auipc	a5,0x7d
    80004408:	ffc78793          	addi	a5,a5,-4 # 80081400 <OSTCBCur>
    8000440c:	639c                	ld	a5,0(a5)
    8000440e:	63bc                	ld	a5,64(a5)
    80004410:	fc3e                	sd	a5,56(sp)
    80004412:	67a2                	ld	a5,8(sp)
    80004414:	00078023          	sb	zero,0(a5)
    80004418:	a035                	j	80004444 <OSQPend+0x16c>
    8000441a:	fc02                	sd	zero,56(sp)
    8000441c:	67a2                	ld	a5,8(sp)
    8000441e:	4739                	li	a4,14
    80004420:	00e78023          	sb	a4,0(a5)
    80004424:	a005                	j	80004444 <OSQPend+0x16c>
    80004426:	0007d797          	auipc	a5,0x7d
    8000442a:	fda78793          	addi	a5,a5,-38 # 80081400 <OSTCBCur>
    8000442e:	639c                	ld	a5,0(a5)
    80004430:	65e2                	ld	a1,24(sp)
    80004432:	853e                	mv	a0,a5
    80004434:	bf7fc0ef          	jal	ra,8000102a <OS_EventTaskRemove>
    80004438:	fc02                	sd	zero,56(sp)
    8000443a:	67a2                	ld	a5,8(sp)
    8000443c:	4729                	li	a4,10
    8000443e:	00e78023          	sb	a4,0(a5)
    80004442:	0001                	nop
    80004444:	0007d797          	auipc	a5,0x7d
    80004448:	fbc78793          	addi	a5,a5,-68 # 80081400 <OSTCBCur>
    8000444c:	639c                	ld	a5,0(a5)
    8000444e:	04078c23          	sb	zero,88(a5)
    80004452:	0007d797          	auipc	a5,0x7d
    80004456:	fae78793          	addi	a5,a5,-82 # 80081400 <OSTCBCur>
    8000445a:	639c                	ld	a5,0(a5)
    8000445c:	04078ca3          	sb	zero,89(a5)
    80004460:	0007d797          	auipc	a5,0x7d
    80004464:	fa078793          	addi	a5,a5,-96 # 80081400 <OSTCBCur>
    80004468:	639c                	ld	a5,0(a5)
    8000446a:	0207b823          	sd	zero,48(a5)
    8000446e:	0007d797          	auipc	a5,0x7d
    80004472:	f9278793          	addi	a5,a5,-110 # 80081400 <OSTCBCur>
    80004476:	639c                	ld	a5,0(a5)
    80004478:	0207bc23          	sd	zero,56(a5)
    8000447c:	0007d797          	auipc	a5,0x7d
    80004480:	f8478793          	addi	a5,a5,-124 # 80081400 <OSTCBCur>
    80004484:	639c                	ld	a5,0(a5)
    80004486:	0407b023          	sd	zero,64(a5)
    8000448a:	7542                	ld	a0,48(sp)
    8000448c:	17f020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004490:	77e2                	ld	a5,56(sp)
    80004492:	853e                	mv	a0,a5
    80004494:	60a6                	ld	ra,72(sp)
    80004496:	6161                	addi	sp,sp,80
    80004498:	8082                	ret

000000008000449a <OSQPendAbort>:
    8000449a:	7139                	addi	sp,sp,-64
    8000449c:	fc06                	sd	ra,56(sp)
    8000449e:	ec2a                	sd	a0,24(sp)
    800044a0:	87ae                	mv	a5,a1
    800044a2:	e432                	sd	a2,8(sp)
    800044a4:	00f10ba3          	sb	a5,23(sp)
    800044a8:	f002                	sd	zero,32(sp)
    800044aa:	67e2                	ld	a5,24(sp)
    800044ac:	0007c783          	lbu	a5,0(a5)
    800044b0:	873e                	mv	a4,a5
    800044b2:	4789                	li	a5,2
    800044b4:	00f70863          	beq	a4,a5,800044c4 <OSQPendAbort+0x2a>
    800044b8:	67a2                	ld	a5,8(sp)
    800044ba:	4705                	li	a4,1
    800044bc:	00e78023          	sb	a4,0(a5)
    800044c0:	4781                	li	a5,0
    800044c2:	a049                	j	80004544 <OSQPendAbort+0xaa>
    800044c4:	13d020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800044c8:	f02a                	sd	a0,32(sp)
    800044ca:	67e2                	ld	a5,24(sp)
    800044cc:	0127c783          	lbu	a5,18(a5)
    800044d0:	c3bd                	beqz	a5,80004536 <OSQPendAbort+0x9c>
    800044d2:	020107a3          	sb	zero,47(sp)
    800044d6:	01714783          	lbu	a5,23(sp)
    800044da:	2781                	sext.w	a5,a5
    800044dc:	873e                	mv	a4,a5
    800044de:	4785                	li	a5,1
    800044e0:	02f71363          	bne	a4,a5,80004506 <OSQPendAbort+0x6c>
    800044e4:	a821                	j	800044fc <OSQPendAbort+0x62>
    800044e6:	4689                	li	a3,2
    800044e8:	4611                	li	a2,4
    800044ea:	4581                	li	a1,0
    800044ec:	6562                	ld	a0,24(sp)
    800044ee:	f96fc0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    800044f2:	02f14783          	lbu	a5,47(sp)
    800044f6:	2785                	addiw	a5,a5,1
    800044f8:	02f107a3          	sb	a5,47(sp)
    800044fc:	67e2                	ld	a5,24(sp)
    800044fe:	0127c783          	lbu	a5,18(a5)
    80004502:	f3f5                	bnez	a5,800044e6 <OSQPendAbort+0x4c>
    80004504:	a829                	j	8000451e <OSQPendAbort+0x84>
    80004506:	4689                	li	a3,2
    80004508:	4611                	li	a2,4
    8000450a:	4581                	li	a1,0
    8000450c:	6562                	ld	a0,24(sp)
    8000450e:	f76fc0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80004512:	02f14783          	lbu	a5,47(sp)
    80004516:	2785                	addiw	a5,a5,1
    80004518:	02f107a3          	sb	a5,47(sp)
    8000451c:	0001                	nop
    8000451e:	7502                	ld	a0,32(sp)
    80004520:	0eb020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004524:	824fd0ef          	jal	ra,80001548 <OS_Sched>
    80004528:	67a2                	ld	a5,8(sp)
    8000452a:	4739                	li	a4,14
    8000452c:	00e78023          	sb	a4,0(a5)
    80004530:	02f14783          	lbu	a5,47(sp)
    80004534:	a801                	j	80004544 <OSQPendAbort+0xaa>
    80004536:	7502                	ld	a0,32(sp)
    80004538:	0d3020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000453c:	67a2                	ld	a5,8(sp)
    8000453e:	00078023          	sb	zero,0(a5)
    80004542:	4781                	li	a5,0
    80004544:	853e                	mv	a0,a5
    80004546:	70e2                	ld	ra,56(sp)
    80004548:	6121                	addi	sp,sp,64
    8000454a:	8082                	ret

000000008000454c <OSQPost>:
    8000454c:	7179                	addi	sp,sp,-48
    8000454e:	f406                	sd	ra,40(sp)
    80004550:	e42a                	sd	a0,8(sp)
    80004552:	e02e                	sd	a1,0(sp)
    80004554:	ec02                	sd	zero,24(sp)
    80004556:	67a2                	ld	a5,8(sp)
    80004558:	0007c783          	lbu	a5,0(a5)
    8000455c:	873e                	mv	a4,a5
    8000455e:	4789                	li	a5,2
    80004560:	00f70463          	beq	a4,a5,80004568 <OSQPost+0x1c>
    80004564:	4785                	li	a5,1
    80004566:	a079                	j	800045f4 <OSQPost+0xa8>
    80004568:	099020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000456c:	ec2a                	sd	a0,24(sp)
    8000456e:	67a2                	ld	a5,8(sp)
    80004570:	0127c783          	lbu	a5,18(a5)
    80004574:	cf91                	beqz	a5,80004590 <OSQPost+0x44>
    80004576:	4681                	li	a3,0
    80004578:	4611                	li	a2,4
    8000457a:	6582                	ld	a1,0(sp)
    8000457c:	6522                	ld	a0,8(sp)
    8000457e:	f06fc0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80004582:	6562                	ld	a0,24(sp)
    80004584:	087020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004588:	fc1fc0ef          	jal	ra,80001548 <OS_Sched>
    8000458c:	4781                	li	a5,0
    8000458e:	a09d                	j	800045f4 <OSQPost+0xa8>
    80004590:	67a2                	ld	a5,8(sp)
    80004592:	679c                	ld	a5,8(a5)
    80004594:	e83e                	sd	a5,16(sp)
    80004596:	67c2                	ld	a5,16(sp)
    80004598:	02a7d703          	lhu	a4,42(a5)
    8000459c:	67c2                	ld	a5,16(sp)
    8000459e:	0287d783          	lhu	a5,40(a5)
    800045a2:	2701                	sext.w	a4,a4
    800045a4:	2781                	sext.w	a5,a5
    800045a6:	00f76763          	bltu	a4,a5,800045b4 <OSQPost+0x68>
    800045aa:	6562                	ld	a0,24(sp)
    800045ac:	05f020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800045b0:	47f9                	li	a5,30
    800045b2:	a089                	j	800045f4 <OSQPost+0xa8>
    800045b4:	67c2                	ld	a5,16(sp)
    800045b6:	6f9c                	ld	a5,24(a5)
    800045b8:	00878693          	addi	a3,a5,8
    800045bc:	6742                	ld	a4,16(sp)
    800045be:	ef14                	sd	a3,24(a4)
    800045c0:	6702                	ld	a4,0(sp)
    800045c2:	e398                	sd	a4,0(a5)
    800045c4:	67c2                	ld	a5,16(sp)
    800045c6:	02a7d783          	lhu	a5,42(a5)
    800045ca:	2785                	addiw	a5,a5,1
    800045cc:	03079713          	slli	a4,a5,0x30
    800045d0:	9341                	srli	a4,a4,0x30
    800045d2:	67c2                	ld	a5,16(sp)
    800045d4:	02e79523          	sh	a4,42(a5)
    800045d8:	67c2                	ld	a5,16(sp)
    800045da:	6f98                	ld	a4,24(a5)
    800045dc:	67c2                	ld	a5,16(sp)
    800045de:	6b9c                	ld	a5,16(a5)
    800045e0:	00f71663          	bne	a4,a5,800045ec <OSQPost+0xa0>
    800045e4:	67c2                	ld	a5,16(sp)
    800045e6:	6798                	ld	a4,8(a5)
    800045e8:	67c2                	ld	a5,16(sp)
    800045ea:	ef98                	sd	a4,24(a5)
    800045ec:	6562                	ld	a0,24(sp)
    800045ee:	01d020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800045f2:	4781                	li	a5,0
    800045f4:	853e                	mv	a0,a5
    800045f6:	70a2                	ld	ra,40(sp)
    800045f8:	6145                	addi	sp,sp,48
    800045fa:	8082                	ret

00000000800045fc <OSQPostFront>:
    800045fc:	7179                	addi	sp,sp,-48
    800045fe:	f406                	sd	ra,40(sp)
    80004600:	e42a                	sd	a0,8(sp)
    80004602:	e02e                	sd	a1,0(sp)
    80004604:	ec02                	sd	zero,24(sp)
    80004606:	67a2                	ld	a5,8(sp)
    80004608:	0007c783          	lbu	a5,0(a5)
    8000460c:	873e                	mv	a4,a5
    8000460e:	4789                	li	a5,2
    80004610:	00f70463          	beq	a4,a5,80004618 <OSQPostFront+0x1c>
    80004614:	4785                	li	a5,1
    80004616:	a849                	j	800046a8 <OSQPostFront+0xac>
    80004618:	7e8020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000461c:	ec2a                	sd	a0,24(sp)
    8000461e:	67a2                	ld	a5,8(sp)
    80004620:	0127c783          	lbu	a5,18(a5)
    80004624:	cf91                	beqz	a5,80004640 <OSQPostFront+0x44>
    80004626:	4681                	li	a3,0
    80004628:	4611                	li	a2,4
    8000462a:	6582                	ld	a1,0(sp)
    8000462c:	6522                	ld	a0,8(sp)
    8000462e:	e56fc0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80004632:	6562                	ld	a0,24(sp)
    80004634:	7d6020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004638:	f11fc0ef          	jal	ra,80001548 <OS_Sched>
    8000463c:	4781                	li	a5,0
    8000463e:	a0ad                	j	800046a8 <OSQPostFront+0xac>
    80004640:	67a2                	ld	a5,8(sp)
    80004642:	679c                	ld	a5,8(a5)
    80004644:	e83e                	sd	a5,16(sp)
    80004646:	67c2                	ld	a5,16(sp)
    80004648:	02a7d703          	lhu	a4,42(a5)
    8000464c:	67c2                	ld	a5,16(sp)
    8000464e:	0287d783          	lhu	a5,40(a5)
    80004652:	2701                	sext.w	a4,a4
    80004654:	2781                	sext.w	a5,a5
    80004656:	00f76763          	bltu	a4,a5,80004664 <OSQPostFront+0x68>
    8000465a:	6562                	ld	a0,24(sp)
    8000465c:	7ae020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004660:	47f9                	li	a5,30
    80004662:	a099                	j	800046a8 <OSQPostFront+0xac>
    80004664:	67c2                	ld	a5,16(sp)
    80004666:	7398                	ld	a4,32(a5)
    80004668:	67c2                	ld	a5,16(sp)
    8000466a:	679c                	ld	a5,8(a5)
    8000466c:	00f71663          	bne	a4,a5,80004678 <OSQPostFront+0x7c>
    80004670:	67c2                	ld	a5,16(sp)
    80004672:	6b98                	ld	a4,16(a5)
    80004674:	67c2                	ld	a5,16(sp)
    80004676:	f398                	sd	a4,32(a5)
    80004678:	67c2                	ld	a5,16(sp)
    8000467a:	739c                	ld	a5,32(a5)
    8000467c:	ff878713          	addi	a4,a5,-8
    80004680:	67c2                	ld	a5,16(sp)
    80004682:	f398                	sd	a4,32(a5)
    80004684:	67c2                	ld	a5,16(sp)
    80004686:	739c                	ld	a5,32(a5)
    80004688:	6702                	ld	a4,0(sp)
    8000468a:	e398                	sd	a4,0(a5)
    8000468c:	67c2                	ld	a5,16(sp)
    8000468e:	02a7d783          	lhu	a5,42(a5)
    80004692:	2785                	addiw	a5,a5,1
    80004694:	03079713          	slli	a4,a5,0x30
    80004698:	9341                	srli	a4,a4,0x30
    8000469a:	67c2                	ld	a5,16(sp)
    8000469c:	02e79523          	sh	a4,42(a5)
    800046a0:	6562                	ld	a0,24(sp)
    800046a2:	768020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800046a6:	4781                	li	a5,0
    800046a8:	853e                	mv	a0,a5
    800046aa:	70a2                	ld	ra,40(sp)
    800046ac:	6145                	addi	sp,sp,48
    800046ae:	8082                	ret

00000000800046b0 <OSQPostOpt>:
    800046b0:	7139                	addi	sp,sp,-64
    800046b2:	fc06                	sd	ra,56(sp)
    800046b4:	ec2a                	sd	a0,24(sp)
    800046b6:	e82e                	sd	a1,16(sp)
    800046b8:	87b2                	mv	a5,a2
    800046ba:	00f107a3          	sb	a5,15(sp)
    800046be:	f402                	sd	zero,40(sp)
    800046c0:	67e2                	ld	a5,24(sp)
    800046c2:	0007c783          	lbu	a5,0(a5)
    800046c6:	873e                	mv	a4,a5
    800046c8:	4789                	li	a5,2
    800046ca:	00f70463          	beq	a4,a5,800046d2 <OSQPostOpt+0x22>
    800046ce:	4785                	li	a5,1
    800046d0:	a8d5                	j	800047c4 <OSQPostOpt+0x114>
    800046d2:	72e020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800046d6:	f42a                	sd	a0,40(sp)
    800046d8:	67e2                	ld	a5,24(sp)
    800046da:	0127c783          	lbu	a5,18(a5)
    800046de:	c7b1                	beqz	a5,8000472a <OSQPostOpt+0x7a>
    800046e0:	00f14783          	lbu	a5,15(sp)
    800046e4:	2781                	sext.w	a5,a5
    800046e6:	8b85                	andi	a5,a5,1
    800046e8:	2781                	sext.w	a5,a5
    800046ea:	cf89                	beqz	a5,80004704 <OSQPostOpt+0x54>
    800046ec:	a039                	j	800046fa <OSQPostOpt+0x4a>
    800046ee:	4681                	li	a3,0
    800046f0:	4611                	li	a2,4
    800046f2:	65c2                	ld	a1,16(sp)
    800046f4:	6562                	ld	a0,24(sp)
    800046f6:	d8efc0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    800046fa:	67e2                	ld	a5,24(sp)
    800046fc:	0127c783          	lbu	a5,18(a5)
    80004700:	f7fd                	bnez	a5,800046ee <OSQPostOpt+0x3e>
    80004702:	a039                	j	80004710 <OSQPostOpt+0x60>
    80004704:	4681                	li	a3,0
    80004706:	4611                	li	a2,4
    80004708:	65c2                	ld	a1,16(sp)
    8000470a:	6562                	ld	a0,24(sp)
    8000470c:	d78fc0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80004710:	7522                	ld	a0,40(sp)
    80004712:	6f8020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004716:	00f14783          	lbu	a5,15(sp)
    8000471a:	2781                	sext.w	a5,a5
    8000471c:	8b91                	andi	a5,a5,4
    8000471e:	2781                	sext.w	a5,a5
    80004720:	e399                	bnez	a5,80004726 <OSQPostOpt+0x76>
    80004722:	e27fc0ef          	jal	ra,80001548 <OS_Sched>
    80004726:	4781                	li	a5,0
    80004728:	a871                	j	800047c4 <OSQPostOpt+0x114>
    8000472a:	67e2                	ld	a5,24(sp)
    8000472c:	679c                	ld	a5,8(a5)
    8000472e:	f03e                	sd	a5,32(sp)
    80004730:	7782                	ld	a5,32(sp)
    80004732:	02a7d703          	lhu	a4,42(a5)
    80004736:	7782                	ld	a5,32(sp)
    80004738:	0287d783          	lhu	a5,40(a5)
    8000473c:	2701                	sext.w	a4,a4
    8000473e:	2781                	sext.w	a5,a5
    80004740:	00f76763          	bltu	a4,a5,8000474e <OSQPostOpt+0x9e>
    80004744:	7522                	ld	a0,40(sp)
    80004746:	6c4020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000474a:	47f9                	li	a5,30
    8000474c:	a8a5                	j	800047c4 <OSQPostOpt+0x114>
    8000474e:	00f14783          	lbu	a5,15(sp)
    80004752:	2781                	sext.w	a5,a5
    80004754:	8b89                	andi	a5,a5,2
    80004756:	2781                	sext.w	a5,a5
    80004758:	c795                	beqz	a5,80004784 <OSQPostOpt+0xd4>
    8000475a:	7782                	ld	a5,32(sp)
    8000475c:	7398                	ld	a4,32(a5)
    8000475e:	7782                	ld	a5,32(sp)
    80004760:	679c                	ld	a5,8(a5)
    80004762:	00f71663          	bne	a4,a5,8000476e <OSQPostOpt+0xbe>
    80004766:	7782                	ld	a5,32(sp)
    80004768:	6b98                	ld	a4,16(a5)
    8000476a:	7782                	ld	a5,32(sp)
    8000476c:	f398                	sd	a4,32(a5)
    8000476e:	7782                	ld	a5,32(sp)
    80004770:	739c                	ld	a5,32(a5)
    80004772:	ff878713          	addi	a4,a5,-8
    80004776:	7782                	ld	a5,32(sp)
    80004778:	f398                	sd	a4,32(a5)
    8000477a:	7782                	ld	a5,32(sp)
    8000477c:	739c                	ld	a5,32(a5)
    8000477e:	6742                	ld	a4,16(sp)
    80004780:	e398                	sd	a4,0(a5)
    80004782:	a01d                	j	800047a8 <OSQPostOpt+0xf8>
    80004784:	7782                	ld	a5,32(sp)
    80004786:	6f9c                	ld	a5,24(a5)
    80004788:	00878693          	addi	a3,a5,8
    8000478c:	7702                	ld	a4,32(sp)
    8000478e:	ef14                	sd	a3,24(a4)
    80004790:	6742                	ld	a4,16(sp)
    80004792:	e398                	sd	a4,0(a5)
    80004794:	7782                	ld	a5,32(sp)
    80004796:	6f98                	ld	a4,24(a5)
    80004798:	7782                	ld	a5,32(sp)
    8000479a:	6b9c                	ld	a5,16(a5)
    8000479c:	00f71663          	bne	a4,a5,800047a8 <OSQPostOpt+0xf8>
    800047a0:	7782                	ld	a5,32(sp)
    800047a2:	6798                	ld	a4,8(a5)
    800047a4:	7782                	ld	a5,32(sp)
    800047a6:	ef98                	sd	a4,24(a5)
    800047a8:	7782                	ld	a5,32(sp)
    800047aa:	02a7d783          	lhu	a5,42(a5)
    800047ae:	2785                	addiw	a5,a5,1
    800047b0:	03079713          	slli	a4,a5,0x30
    800047b4:	9341                	srli	a4,a4,0x30
    800047b6:	7782                	ld	a5,32(sp)
    800047b8:	02e79523          	sh	a4,42(a5)
    800047bc:	7522                	ld	a0,40(sp)
    800047be:	64c020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800047c2:	4781                	li	a5,0
    800047c4:	853e                	mv	a0,a5
    800047c6:	70e2                	ld	ra,56(sp)
    800047c8:	6121                	addi	sp,sp,64
    800047ca:	8082                	ret

00000000800047cc <OSQQuery>:
    800047cc:	715d                	addi	sp,sp,-80
    800047ce:	e486                	sd	ra,72(sp)
    800047d0:	e42a                	sd	a0,8(sp)
    800047d2:	e02e                	sd	a1,0(sp)
    800047d4:	f002                	sd	zero,32(sp)
    800047d6:	67a2                	ld	a5,8(sp)
    800047d8:	0007c783          	lbu	a5,0(a5)
    800047dc:	873e                	mv	a4,a5
    800047de:	4789                	li	a5,2
    800047e0:	00f70463          	beq	a4,a5,800047e8 <OSQQuery+0x1c>
    800047e4:	4785                	li	a5,1
    800047e6:	a859                	j	8000487c <OSQQuery+0xb0>
    800047e8:	618020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800047ec:	f02a                	sd	a0,32(sp)
    800047ee:	67a2                	ld	a5,8(sp)
    800047f0:	0127c703          	lbu	a4,18(a5)
    800047f4:	6782                	ld	a5,0(sp)
    800047f6:	00e78a23          	sb	a4,20(a5)
    800047fa:	67a2                	ld	a5,8(sp)
    800047fc:	07cd                	addi	a5,a5,19
    800047fe:	f83e                	sd	a5,48(sp)
    80004800:	6782                	ld	a5,0(sp)
    80004802:	07b1                	addi	a5,a5,12
    80004804:	f43e                	sd	a5,40(sp)
    80004806:	02010fa3          	sb	zero,63(sp)
    8000480a:	a015                	j	8000482e <OSQQuery+0x62>
    8000480c:	7742                	ld	a4,48(sp)
    8000480e:	00170793          	addi	a5,a4,1
    80004812:	f83e                	sd	a5,48(sp)
    80004814:	77a2                	ld	a5,40(sp)
    80004816:	00178693          	addi	a3,a5,1
    8000481a:	f436                	sd	a3,40(sp)
    8000481c:	00074703          	lbu	a4,0(a4)
    80004820:	00e78023          	sb	a4,0(a5)
    80004824:	03f14783          	lbu	a5,63(sp)
    80004828:	2785                	addiw	a5,a5,1
    8000482a:	02f10fa3          	sb	a5,63(sp)
    8000482e:	03f14783          	lbu	a5,63(sp)
    80004832:	0ff7f713          	andi	a4,a5,255
    80004836:	479d                	li	a5,7
    80004838:	fce7fae3          	bleu	a4,a5,8000480c <OSQQuery+0x40>
    8000483c:	67a2                	ld	a5,8(sp)
    8000483e:	679c                	ld	a5,8(a5)
    80004840:	ec3e                	sd	a5,24(sp)
    80004842:	67e2                	ld	a5,24(sp)
    80004844:	02a7d783          	lhu	a5,42(a5)
    80004848:	c799                	beqz	a5,80004856 <OSQQuery+0x8a>
    8000484a:	67e2                	ld	a5,24(sp)
    8000484c:	739c                	ld	a5,32(a5)
    8000484e:	6398                	ld	a4,0(a5)
    80004850:	6782                	ld	a5,0(sp)
    80004852:	e398                	sd	a4,0(a5)
    80004854:	a021                	j	8000485c <OSQQuery+0x90>
    80004856:	6782                	ld	a5,0(sp)
    80004858:	0007b023          	sd	zero,0(a5)
    8000485c:	67e2                	ld	a5,24(sp)
    8000485e:	02a7d703          	lhu	a4,42(a5)
    80004862:	6782                	ld	a5,0(sp)
    80004864:	00e79423          	sh	a4,8(a5)
    80004868:	67e2                	ld	a5,24(sp)
    8000486a:	0287d703          	lhu	a4,40(a5)
    8000486e:	6782                	ld	a5,0(sp)
    80004870:	00e79523          	sh	a4,10(a5)
    80004874:	7502                	ld	a0,32(sp)
    80004876:	594020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000487a:	4781                	li	a5,0
    8000487c:	853e                	mv	a0,a5
    8000487e:	60a6                	ld	ra,72(sp)
    80004880:	6161                	addi	sp,sp,80
    80004882:	8082                	ret

0000000080004884 <OS_QInit>:
    80004884:	7179                	addi	sp,sp,-48
    80004886:	f406                	sd	ra,40(sp)
    80004888:	0c000593          	li	a1,192
    8000488c:	0007c517          	auipc	a0,0x7c
    80004890:	68450513          	addi	a0,a0,1668 # 80080f10 <OSQTbl>
    80004894:	c47fc0ef          	jal	ra,800014da <OS_MemClr>
    80004898:	00011f23          	sh	zero,30(sp)
    8000489c:	a891                	j	800048f0 <OS_QInit+0x6c>
    8000489e:	01e15783          	lhu	a5,30(sp)
    800048a2:	2785                	addiw	a5,a5,1
    800048a4:	00f11723          	sh	a5,14(sp)
    800048a8:	01e15783          	lhu	a5,30(sp)
    800048ac:	0007871b          	sext.w	a4,a5
    800048b0:	87ba                	mv	a5,a4
    800048b2:	0786                	slli	a5,a5,0x1
    800048b4:	97ba                	add	a5,a5,a4
    800048b6:	0792                	slli	a5,a5,0x4
    800048b8:	0007c717          	auipc	a4,0x7c
    800048bc:	65870713          	addi	a4,a4,1624 # 80080f10 <OSQTbl>
    800048c0:	97ba                	add	a5,a5,a4
    800048c2:	e83e                	sd	a5,16(sp)
    800048c4:	00e15783          	lhu	a5,14(sp)
    800048c8:	0007871b          	sext.w	a4,a5
    800048cc:	87ba                	mv	a5,a4
    800048ce:	0786                	slli	a5,a5,0x1
    800048d0:	97ba                	add	a5,a5,a4
    800048d2:	0792                	slli	a5,a5,0x4
    800048d4:	0007c717          	auipc	a4,0x7c
    800048d8:	63c70713          	addi	a4,a4,1596 # 80080f10 <OSQTbl>
    800048dc:	97ba                	add	a5,a5,a4
    800048de:	e03e                	sd	a5,0(sp)
    800048e0:	67c2                	ld	a5,16(sp)
    800048e2:	6702                	ld	a4,0(sp)
    800048e4:	e398                	sd	a4,0(a5)
    800048e6:	01e15783          	lhu	a5,30(sp)
    800048ea:	2785                	addiw	a5,a5,1
    800048ec:	00f11f23          	sh	a5,30(sp)
    800048f0:	01e15783          	lhu	a5,30(sp)
    800048f4:	0007871b          	sext.w	a4,a5
    800048f8:	4789                	li	a5,2
    800048fa:	fae7f2e3          	bleu	a4,a5,8000489e <OS_QInit+0x1a>
    800048fe:	01e15783          	lhu	a5,30(sp)
    80004902:	0007871b          	sext.w	a4,a5
    80004906:	87ba                	mv	a5,a4
    80004908:	0786                	slli	a5,a5,0x1
    8000490a:	97ba                	add	a5,a5,a4
    8000490c:	0792                	slli	a5,a5,0x4
    8000490e:	0007c717          	auipc	a4,0x7c
    80004912:	60270713          	addi	a4,a4,1538 # 80080f10 <OSQTbl>
    80004916:	97ba                	add	a5,a5,a4
    80004918:	e83e                	sd	a5,16(sp)
    8000491a:	67c2                	ld	a5,16(sp)
    8000491c:	0007b023          	sd	zero,0(a5)
    80004920:	0007c797          	auipc	a5,0x7c
    80004924:	6b878793          	addi	a5,a5,1720 # 80080fd8 <OSQFreeList>
    80004928:	0007c717          	auipc	a4,0x7c
    8000492c:	5e870713          	addi	a4,a4,1512 # 80080f10 <OSQTbl>
    80004930:	e398                	sd	a4,0(a5)
    80004932:	0001                	nop
    80004934:	70a2                	ld	ra,40(sp)
    80004936:	6145                	addi	sp,sp,48
    80004938:	8082                	ret

000000008000493a <OSSemAccept>:
    8000493a:	7179                	addi	sp,sp,-48
    8000493c:	f406                	sd	ra,40(sp)
    8000493e:	e42a                	sd	a0,8(sp)
    80004940:	ec02                	sd	zero,24(sp)
    80004942:	67a2                	ld	a5,8(sp)
    80004944:	0007c783          	lbu	a5,0(a5)
    80004948:	873e                	mv	a4,a5
    8000494a:	478d                	li	a5,3
    8000494c:	00f70463          	beq	a4,a5,80004954 <OSSemAccept+0x1a>
    80004950:	4781                	li	a5,0
    80004952:	a825                	j	8000498a <OSSemAccept+0x50>
    80004954:	4ac020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004958:	ec2a                	sd	a0,24(sp)
    8000495a:	67a2                	ld	a5,8(sp)
    8000495c:	0107d783          	lhu	a5,16(a5)
    80004960:	00f11b23          	sh	a5,22(sp)
    80004964:	01615783          	lhu	a5,22(sp)
    80004968:	2781                	sext.w	a5,a5
    8000496a:	cb99                	beqz	a5,80004980 <OSSemAccept+0x46>
    8000496c:	67a2                	ld	a5,8(sp)
    8000496e:	0107d783          	lhu	a5,16(a5)
    80004972:	37fd                	addiw	a5,a5,-1
    80004974:	03079713          	slli	a4,a5,0x30
    80004978:	9341                	srli	a4,a4,0x30
    8000497a:	67a2                	ld	a5,8(sp)
    8000497c:	00e79823          	sh	a4,16(a5)
    80004980:	6562                	ld	a0,24(sp)
    80004982:	488020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004986:	01615783          	lhu	a5,22(sp)
    8000498a:	853e                	mv	a0,a5
    8000498c:	70a2                	ld	ra,40(sp)
    8000498e:	6145                	addi	sp,sp,48
    80004990:	8082                	ret

0000000080004992 <OSSemCreate>:
    80004992:	7179                	addi	sp,sp,-48
    80004994:	f406                	sd	ra,40(sp)
    80004996:	87aa                	mv	a5,a0
    80004998:	00f11723          	sh	a5,14(sp)
    8000499c:	ec02                	sd	zero,24(sp)
    8000499e:	0007d797          	auipc	a5,0x7d
    800049a2:	a5a78793          	addi	a5,a5,-1446 # 800813f8 <OSIntNesting>
    800049a6:	0007c783          	lbu	a5,0(a5)
    800049aa:	c399                	beqz	a5,800049b0 <OSSemCreate+0x1e>
    800049ac:	4781                	li	a5,0
    800049ae:	a0b5                	j	80004a1a <OSSemCreate+0x88>
    800049b0:	450020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800049b4:	ec2a                	sd	a0,24(sp)
    800049b6:	0007d797          	auipc	a5,0x7d
    800049ba:	a3a78793          	addi	a5,a5,-1478 # 800813f0 <OSEventFreeList>
    800049be:	639c                	ld	a5,0(a5)
    800049c0:	e83e                	sd	a5,16(sp)
    800049c2:	0007d797          	auipc	a5,0x7d
    800049c6:	a2e78793          	addi	a5,a5,-1490 # 800813f0 <OSEventFreeList>
    800049ca:	639c                	ld	a5,0(a5)
    800049cc:	cf81                	beqz	a5,800049e4 <OSSemCreate+0x52>
    800049ce:	0007d797          	auipc	a5,0x7d
    800049d2:	a2278793          	addi	a5,a5,-1502 # 800813f0 <OSEventFreeList>
    800049d6:	639c                	ld	a5,0(a5)
    800049d8:	6798                	ld	a4,8(a5)
    800049da:	0007d797          	auipc	a5,0x7d
    800049de:	a1678793          	addi	a5,a5,-1514 # 800813f0 <OSEventFreeList>
    800049e2:	e398                	sd	a4,0(a5)
    800049e4:	6562                	ld	a0,24(sp)
    800049e6:	424020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800049ea:	67c2                	ld	a5,16(sp)
    800049ec:	c795                	beqz	a5,80004a18 <OSSemCreate+0x86>
    800049ee:	67c2                	ld	a5,16(sp)
    800049f0:	470d                	li	a4,3
    800049f2:	00e78023          	sb	a4,0(a5)
    800049f6:	67c2                	ld	a5,16(sp)
    800049f8:	00e15703          	lhu	a4,14(sp)
    800049fc:	00e79823          	sh	a4,16(a5)
    80004a00:	67c2                	ld	a5,16(sp)
    80004a02:	0007b423          	sd	zero,8(a5)
    80004a06:	67c2                	ld	a5,16(sp)
    80004a08:	0007b717          	auipc	a4,0x7b
    80004a0c:	70070713          	addi	a4,a4,1792 # 80080108 <OSUnMapTbl+0x100>
    80004a10:	f398                	sd	a4,32(a5)
    80004a12:	6542                	ld	a0,16(sp)
    80004a14:	f2efc0ef          	jal	ra,80001142 <OS_EventWaitListInit>
    80004a18:	67c2                	ld	a5,16(sp)
    80004a1a:	853e                	mv	a0,a5
    80004a1c:	70a2                	ld	ra,40(sp)
    80004a1e:	6145                	addi	sp,sp,48
    80004a20:	8082                	ret

0000000080004a22 <OSSemDel>:
    80004a22:	715d                	addi	sp,sp,-80
    80004a24:	e486                	sd	ra,72(sp)
    80004a26:	ec2a                	sd	a0,24(sp)
    80004a28:	87ae                	mv	a5,a1
    80004a2a:	e432                	sd	a2,8(sp)
    80004a2c:	00f10ba3          	sb	a5,23(sp)
    80004a30:	f402                	sd	zero,40(sp)
    80004a32:	67e2                	ld	a5,24(sp)
    80004a34:	0007c783          	lbu	a5,0(a5)
    80004a38:	873e                	mv	a4,a5
    80004a3a:	478d                	li	a5,3
    80004a3c:	00f70863          	beq	a4,a5,80004a4c <OSSemDel+0x2a>
    80004a40:	67a2                	ld	a5,8(sp)
    80004a42:	4705                	li	a4,1
    80004a44:	00e78023          	sb	a4,0(a5)
    80004a48:	67e2                	ld	a5,24(sp)
    80004a4a:	a22d                	j	80004b74 <OSSemDel+0x152>
    80004a4c:	0007d797          	auipc	a5,0x7d
    80004a50:	9ac78793          	addi	a5,a5,-1620 # 800813f8 <OSIntNesting>
    80004a54:	0007c783          	lbu	a5,0(a5)
    80004a58:	c799                	beqz	a5,80004a66 <OSSemDel+0x44>
    80004a5a:	67a2                	ld	a5,8(sp)
    80004a5c:	473d                	li	a4,15
    80004a5e:	00e78023          	sb	a4,0(a5)
    80004a62:	67e2                	ld	a5,24(sp)
    80004a64:	aa01                	j	80004b74 <OSSemDel+0x152>
    80004a66:	39a020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004a6a:	f42a                	sd	a0,40(sp)
    80004a6c:	67e2                	ld	a5,24(sp)
    80004a6e:	0127c783          	lbu	a5,18(a5)
    80004a72:	c789                	beqz	a5,80004a7c <OSSemDel+0x5a>
    80004a74:	4785                	li	a5,1
    80004a76:	02f10fa3          	sb	a5,63(sp)
    80004a7a:	a019                	j	80004a80 <OSSemDel+0x5e>
    80004a7c:	02010fa3          	sb	zero,63(sp)
    80004a80:	01714783          	lbu	a5,23(sp)
    80004a84:	2781                	sext.w	a5,a5
    80004a86:	873e                	mv	a4,a5
    80004a88:	c711                	beqz	a4,80004a94 <OSSemDel+0x72>
    80004a8a:	873e                	mv	a4,a5
    80004a8c:	4785                	li	a5,1
    80004a8e:	06f70a63          	beq	a4,a5,80004b02 <OSSemDel+0xe0>
    80004a92:	a0f1                	j	80004b5e <OSSemDel+0x13c>
    80004a94:	03f14783          	lbu	a5,63(sp)
    80004a98:	0ff7f793          	andi	a5,a5,255
    80004a9c:	e3b1                	bnez	a5,80004ae0 <OSSemDel+0xbe>
    80004a9e:	67e2                	ld	a5,24(sp)
    80004aa0:	0007b717          	auipc	a4,0x7b
    80004aa4:	66870713          	addi	a4,a4,1640 # 80080108 <OSUnMapTbl+0x100>
    80004aa8:	f398                	sd	a4,32(a5)
    80004aaa:	67e2                	ld	a5,24(sp)
    80004aac:	00078023          	sb	zero,0(a5)
    80004ab0:	0007d797          	auipc	a5,0x7d
    80004ab4:	94078793          	addi	a5,a5,-1728 # 800813f0 <OSEventFreeList>
    80004ab8:	6398                	ld	a4,0(a5)
    80004aba:	67e2                	ld	a5,24(sp)
    80004abc:	e798                	sd	a4,8(a5)
    80004abe:	67e2                	ld	a5,24(sp)
    80004ac0:	00079823          	sh	zero,16(a5)
    80004ac4:	0007d797          	auipc	a5,0x7d
    80004ac8:	92c78793          	addi	a5,a5,-1748 # 800813f0 <OSEventFreeList>
    80004acc:	6762                	ld	a4,24(sp)
    80004ace:	e398                	sd	a4,0(a5)
    80004ad0:	7522                	ld	a0,40(sp)
    80004ad2:	338020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004ad6:	67a2                	ld	a5,8(sp)
    80004ad8:	00078023          	sb	zero,0(a5)
    80004adc:	f802                	sd	zero,48(sp)
    80004ade:	a851                	j	80004b72 <OSSemDel+0x150>
    80004ae0:	7522                	ld	a0,40(sp)
    80004ae2:	328020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004ae6:	67a2                	ld	a5,8(sp)
    80004ae8:	04900713          	li	a4,73
    80004aec:	00e78023          	sb	a4,0(a5)
    80004af0:	67e2                	ld	a5,24(sp)
    80004af2:	f83e                	sd	a5,48(sp)
    80004af4:	a8bd                	j	80004b72 <OSSemDel+0x150>
    80004af6:	4681                	li	a3,0
    80004af8:	4605                	li	a2,1
    80004afa:	4581                	li	a1,0
    80004afc:	6562                	ld	a0,24(sp)
    80004afe:	986fc0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80004b02:	67e2                	ld	a5,24(sp)
    80004b04:	0127c783          	lbu	a5,18(a5)
    80004b08:	f7fd                	bnez	a5,80004af6 <OSSemDel+0xd4>
    80004b0a:	67e2                	ld	a5,24(sp)
    80004b0c:	0007b717          	auipc	a4,0x7b
    80004b10:	5fc70713          	addi	a4,a4,1532 # 80080108 <OSUnMapTbl+0x100>
    80004b14:	f398                	sd	a4,32(a5)
    80004b16:	67e2                	ld	a5,24(sp)
    80004b18:	00078023          	sb	zero,0(a5)
    80004b1c:	0007d797          	auipc	a5,0x7d
    80004b20:	8d478793          	addi	a5,a5,-1836 # 800813f0 <OSEventFreeList>
    80004b24:	6398                	ld	a4,0(a5)
    80004b26:	67e2                	ld	a5,24(sp)
    80004b28:	e798                	sd	a4,8(a5)
    80004b2a:	67e2                	ld	a5,24(sp)
    80004b2c:	00079823          	sh	zero,16(a5)
    80004b30:	0007d797          	auipc	a5,0x7d
    80004b34:	8c078793          	addi	a5,a5,-1856 # 800813f0 <OSEventFreeList>
    80004b38:	6762                	ld	a4,24(sp)
    80004b3a:	e398                	sd	a4,0(a5)
    80004b3c:	7522                	ld	a0,40(sp)
    80004b3e:	2cc020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004b42:	03f14783          	lbu	a5,63(sp)
    80004b46:	0ff7f713          	andi	a4,a5,255
    80004b4a:	4785                	li	a5,1
    80004b4c:	00f71463          	bne	a4,a5,80004b54 <OSSemDel+0x132>
    80004b50:	9f9fc0ef          	jal	ra,80001548 <OS_Sched>
    80004b54:	67a2                	ld	a5,8(sp)
    80004b56:	00078023          	sb	zero,0(a5)
    80004b5a:	f802                	sd	zero,48(sp)
    80004b5c:	a819                	j	80004b72 <OSSemDel+0x150>
    80004b5e:	7522                	ld	a0,40(sp)
    80004b60:	2aa020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004b64:	67a2                	ld	a5,8(sp)
    80004b66:	471d                	li	a4,7
    80004b68:	00e78023          	sb	a4,0(a5)
    80004b6c:	67e2                	ld	a5,24(sp)
    80004b6e:	f83e                	sd	a5,48(sp)
    80004b70:	0001                	nop
    80004b72:	77c2                	ld	a5,48(sp)
    80004b74:	853e                	mv	a0,a5
    80004b76:	60a6                	ld	ra,72(sp)
    80004b78:	6161                	addi	sp,sp,80
    80004b7a:	8082                	ret

0000000080004b7c <OSSemPend>:
    80004b7c:	7139                	addi	sp,sp,-64
    80004b7e:	fc06                	sd	ra,56(sp)
    80004b80:	ec2a                	sd	a0,24(sp)
    80004b82:	87ae                	mv	a5,a1
    80004b84:	e432                	sd	a2,8(sp)
    80004b86:	ca3e                	sw	a5,20(sp)
    80004b88:	f402                	sd	zero,40(sp)
    80004b8a:	67e2                	ld	a5,24(sp)
    80004b8c:	0007c783          	lbu	a5,0(a5)
    80004b90:	873e                	mv	a4,a5
    80004b92:	478d                	li	a5,3
    80004b94:	00f70763          	beq	a4,a5,80004ba2 <OSSemPend+0x26>
    80004b98:	67a2                	ld	a5,8(sp)
    80004b9a:	4705                	li	a4,1
    80004b9c:	00e78023          	sb	a4,0(a5)
    80004ba0:	a289                	j	80004ce2 <OSSemPend+0x166>
    80004ba2:	0007d797          	auipc	a5,0x7d
    80004ba6:	85678793          	addi	a5,a5,-1962 # 800813f8 <OSIntNesting>
    80004baa:	0007c783          	lbu	a5,0(a5)
    80004bae:	c791                	beqz	a5,80004bba <OSSemPend+0x3e>
    80004bb0:	67a2                	ld	a5,8(sp)
    80004bb2:	4709                	li	a4,2
    80004bb4:	00e78023          	sb	a4,0(a5)
    80004bb8:	a22d                	j	80004ce2 <OSSemPend+0x166>
    80004bba:	0007c797          	auipc	a5,0x7c
    80004bbe:	90e78793          	addi	a5,a5,-1778 # 800804c8 <OSLockNesting>
    80004bc2:	0007c783          	lbu	a5,0(a5)
    80004bc6:	c791                	beqz	a5,80004bd2 <OSSemPend+0x56>
    80004bc8:	67a2                	ld	a5,8(sp)
    80004bca:	4735                	li	a4,13
    80004bcc:	00e78023          	sb	a4,0(a5)
    80004bd0:	aa09                	j	80004ce2 <OSSemPend+0x166>
    80004bd2:	22e020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004bd6:	f42a                	sd	a0,40(sp)
    80004bd8:	67e2                	ld	a5,24(sp)
    80004bda:	0107d783          	lhu	a5,16(a5)
    80004bde:	c395                	beqz	a5,80004c02 <OSSemPend+0x86>
    80004be0:	67e2                	ld	a5,24(sp)
    80004be2:	0107d783          	lhu	a5,16(a5)
    80004be6:	37fd                	addiw	a5,a5,-1
    80004be8:	03079713          	slli	a4,a5,0x30
    80004bec:	9341                	srli	a4,a4,0x30
    80004bee:	67e2                	ld	a5,24(sp)
    80004bf0:	00e79823          	sh	a4,16(a5)
    80004bf4:	7522                	ld	a0,40(sp)
    80004bf6:	214020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004bfa:	67a2                	ld	a5,8(sp)
    80004bfc:	00078023          	sb	zero,0(a5)
    80004c00:	a0cd                	j	80004ce2 <OSSemPend+0x166>
    80004c02:	0007c797          	auipc	a5,0x7c
    80004c06:	7fe78793          	addi	a5,a5,2046 # 80081400 <OSTCBCur>
    80004c0a:	639c                	ld	a5,0(a5)
    80004c0c:	0587c703          	lbu	a4,88(a5)
    80004c10:	0007c797          	auipc	a5,0x7c
    80004c14:	7f078793          	addi	a5,a5,2032 # 80081400 <OSTCBCur>
    80004c18:	639c                	ld	a5,0(a5)
    80004c1a:	00176713          	ori	a4,a4,1
    80004c1e:	0ff77713          	andi	a4,a4,255
    80004c22:	04e78c23          	sb	a4,88(a5)
    80004c26:	0007c797          	auipc	a5,0x7c
    80004c2a:	7da78793          	addi	a5,a5,2010 # 80081400 <OSTCBCur>
    80004c2e:	639c                	ld	a5,0(a5)
    80004c30:	04078ca3          	sb	zero,89(a5)
    80004c34:	0007c797          	auipc	a5,0x7c
    80004c38:	7cc78793          	addi	a5,a5,1996 # 80081400 <OSTCBCur>
    80004c3c:	639c                	ld	a5,0(a5)
    80004c3e:	4752                	lw	a4,20(sp)
    80004c40:	cbf8                	sw	a4,84(a5)
    80004c42:	6562                	ld	a0,24(sp)
    80004c44:	984fc0ef          	jal	ra,80000dc8 <OS_EventTaskWait>
    80004c48:	7522                	ld	a0,40(sp)
    80004c4a:	1c0020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004c4e:	8fbfc0ef          	jal	ra,80001548 <OS_Sched>
    80004c52:	1ae020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004c56:	f42a                	sd	a0,40(sp)
    80004c58:	0007c797          	auipc	a5,0x7c
    80004c5c:	7a878793          	addi	a5,a5,1960 # 80081400 <OSTCBCur>
    80004c60:	639c                	ld	a5,0(a5)
    80004c62:	0597c783          	lbu	a5,89(a5)
    80004c66:	2781                	sext.w	a5,a5
    80004c68:	873e                	mv	a4,a5
    80004c6a:	c711                	beqz	a4,80004c76 <OSSemPend+0xfa>
    80004c6c:	873e                	mv	a4,a5
    80004c6e:	4789                	li	a5,2
    80004c70:	00f70763          	beq	a4,a5,80004c7e <OSSemPend+0x102>
    80004c74:	a811                	j	80004c88 <OSSemPend+0x10c>
    80004c76:	67a2                	ld	a5,8(sp)
    80004c78:	00078023          	sb	zero,0(a5)
    80004c7c:	a025                	j	80004ca4 <OSSemPend+0x128>
    80004c7e:	67a2                	ld	a5,8(sp)
    80004c80:	4739                	li	a4,14
    80004c82:	00e78023          	sb	a4,0(a5)
    80004c86:	a839                	j	80004ca4 <OSSemPend+0x128>
    80004c88:	0007c797          	auipc	a5,0x7c
    80004c8c:	77878793          	addi	a5,a5,1912 # 80081400 <OSTCBCur>
    80004c90:	639c                	ld	a5,0(a5)
    80004c92:	65e2                	ld	a1,24(sp)
    80004c94:	853e                	mv	a0,a5
    80004c96:	b94fc0ef          	jal	ra,8000102a <OS_EventTaskRemove>
    80004c9a:	67a2                	ld	a5,8(sp)
    80004c9c:	4729                	li	a4,10
    80004c9e:	00e78023          	sb	a4,0(a5)
    80004ca2:	0001                	nop
    80004ca4:	0007c797          	auipc	a5,0x7c
    80004ca8:	75c78793          	addi	a5,a5,1884 # 80081400 <OSTCBCur>
    80004cac:	639c                	ld	a5,0(a5)
    80004cae:	04078c23          	sb	zero,88(a5)
    80004cb2:	0007c797          	auipc	a5,0x7c
    80004cb6:	74e78793          	addi	a5,a5,1870 # 80081400 <OSTCBCur>
    80004cba:	639c                	ld	a5,0(a5)
    80004cbc:	04078ca3          	sb	zero,89(a5)
    80004cc0:	0007c797          	auipc	a5,0x7c
    80004cc4:	74078793          	addi	a5,a5,1856 # 80081400 <OSTCBCur>
    80004cc8:	639c                	ld	a5,0(a5)
    80004cca:	0207b823          	sd	zero,48(a5)
    80004cce:	0007c797          	auipc	a5,0x7c
    80004cd2:	73278793          	addi	a5,a5,1842 # 80081400 <OSTCBCur>
    80004cd6:	639c                	ld	a5,0(a5)
    80004cd8:	0207bc23          	sd	zero,56(a5)
    80004cdc:	7522                	ld	a0,40(sp)
    80004cde:	12c020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004ce2:	70e2                	ld	ra,56(sp)
    80004ce4:	6121                	addi	sp,sp,64
    80004ce6:	8082                	ret

0000000080004ce8 <OSSemPendAbort>:
    80004ce8:	7139                	addi	sp,sp,-64
    80004cea:	fc06                	sd	ra,56(sp)
    80004cec:	ec2a                	sd	a0,24(sp)
    80004cee:	87ae                	mv	a5,a1
    80004cf0:	e432                	sd	a2,8(sp)
    80004cf2:	00f10ba3          	sb	a5,23(sp)
    80004cf6:	f002                	sd	zero,32(sp)
    80004cf8:	67e2                	ld	a5,24(sp)
    80004cfa:	0007c783          	lbu	a5,0(a5)
    80004cfe:	873e                	mv	a4,a5
    80004d00:	478d                	li	a5,3
    80004d02:	00f70863          	beq	a4,a5,80004d12 <OSSemPendAbort+0x2a>
    80004d06:	67a2                	ld	a5,8(sp)
    80004d08:	4705                	li	a4,1
    80004d0a:	00e78023          	sb	a4,0(a5)
    80004d0e:	4781                	li	a5,0
    80004d10:	a049                	j	80004d92 <OSSemPendAbort+0xaa>
    80004d12:	0ee020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004d16:	f02a                	sd	a0,32(sp)
    80004d18:	67e2                	ld	a5,24(sp)
    80004d1a:	0127c783          	lbu	a5,18(a5)
    80004d1e:	c3bd                	beqz	a5,80004d84 <OSSemPendAbort+0x9c>
    80004d20:	020107a3          	sb	zero,47(sp)
    80004d24:	01714783          	lbu	a5,23(sp)
    80004d28:	2781                	sext.w	a5,a5
    80004d2a:	873e                	mv	a4,a5
    80004d2c:	4785                	li	a5,1
    80004d2e:	02f71363          	bne	a4,a5,80004d54 <OSSemPendAbort+0x6c>
    80004d32:	a821                	j	80004d4a <OSSemPendAbort+0x62>
    80004d34:	4689                	li	a3,2
    80004d36:	4605                	li	a2,1
    80004d38:	4581                	li	a1,0
    80004d3a:	6562                	ld	a0,24(sp)
    80004d3c:	f49fb0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80004d40:	02f14783          	lbu	a5,47(sp)
    80004d44:	2785                	addiw	a5,a5,1
    80004d46:	02f107a3          	sb	a5,47(sp)
    80004d4a:	67e2                	ld	a5,24(sp)
    80004d4c:	0127c783          	lbu	a5,18(a5)
    80004d50:	f3f5                	bnez	a5,80004d34 <OSSemPendAbort+0x4c>
    80004d52:	a829                	j	80004d6c <OSSemPendAbort+0x84>
    80004d54:	4689                	li	a3,2
    80004d56:	4605                	li	a2,1
    80004d58:	4581                	li	a1,0
    80004d5a:	6562                	ld	a0,24(sp)
    80004d5c:	f29fb0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80004d60:	02f14783          	lbu	a5,47(sp)
    80004d64:	2785                	addiw	a5,a5,1
    80004d66:	02f107a3          	sb	a5,47(sp)
    80004d6a:	0001                	nop
    80004d6c:	7502                	ld	a0,32(sp)
    80004d6e:	09c020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004d72:	fd6fc0ef          	jal	ra,80001548 <OS_Sched>
    80004d76:	67a2                	ld	a5,8(sp)
    80004d78:	4739                	li	a4,14
    80004d7a:	00e78023          	sb	a4,0(a5)
    80004d7e:	02f14783          	lbu	a5,47(sp)
    80004d82:	a801                	j	80004d92 <OSSemPendAbort+0xaa>
    80004d84:	7502                	ld	a0,32(sp)
    80004d86:	084020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004d8a:	67a2                	ld	a5,8(sp)
    80004d8c:	00078023          	sb	zero,0(a5)
    80004d90:	4781                	li	a5,0
    80004d92:	853e                	mv	a0,a5
    80004d94:	70e2                	ld	ra,56(sp)
    80004d96:	6121                	addi	sp,sp,64
    80004d98:	8082                	ret

0000000080004d9a <OSSemPost>:
    80004d9a:	7179                	addi	sp,sp,-48
    80004d9c:	f406                	sd	ra,40(sp)
    80004d9e:	e42a                	sd	a0,8(sp)
    80004da0:	ec02                	sd	zero,24(sp)
    80004da2:	67a2                	ld	a5,8(sp)
    80004da4:	0007c783          	lbu	a5,0(a5)
    80004da8:	873e                	mv	a4,a5
    80004daa:	478d                	li	a5,3
    80004dac:	00f70463          	beq	a4,a5,80004db4 <OSSemPost+0x1a>
    80004db0:	4785                	li	a5,1
    80004db2:	a095                	j	80004e16 <OSSemPost+0x7c>
    80004db4:	04c020ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004db8:	ec2a                	sd	a0,24(sp)
    80004dba:	67a2                	ld	a5,8(sp)
    80004dbc:	0127c783          	lbu	a5,18(a5)
    80004dc0:	cf91                	beqz	a5,80004ddc <OSSemPost+0x42>
    80004dc2:	4681                	li	a3,0
    80004dc4:	4605                	li	a2,1
    80004dc6:	4581                	li	a1,0
    80004dc8:	6522                	ld	a0,8(sp)
    80004dca:	ebbfb0ef          	jal	ra,80000c84 <OS_EventTaskRdy>
    80004dce:	6562                	ld	a0,24(sp)
    80004dd0:	03a020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004dd4:	f74fc0ef          	jal	ra,80001548 <OS_Sched>
    80004dd8:	4781                	li	a5,0
    80004dda:	a835                	j	80004e16 <OSSemPost+0x7c>
    80004ddc:	67a2                	ld	a5,8(sp)
    80004dde:	0107d783          	lhu	a5,16(a5)
    80004de2:	0007871b          	sext.w	a4,a5
    80004de6:	67c1                	lui	a5,0x10
    80004de8:	17fd                	addi	a5,a5,-1
    80004dea:	02f70163          	beq	a4,a5,80004e0c <OSSemPost+0x72>
    80004dee:	67a2                	ld	a5,8(sp)
    80004df0:	0107d783          	lhu	a5,16(a5) # 10010 <_HEAP_SIZE+0xc010>
    80004df4:	2785                	addiw	a5,a5,1
    80004df6:	03079713          	slli	a4,a5,0x30
    80004dfa:	9341                	srli	a4,a4,0x30
    80004dfc:	67a2                	ld	a5,8(sp)
    80004dfe:	00e79823          	sh	a4,16(a5)
    80004e02:	6562                	ld	a0,24(sp)
    80004e04:	006020ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004e08:	4781                	li	a5,0
    80004e0a:	a031                	j	80004e16 <OSSemPost+0x7c>
    80004e0c:	6562                	ld	a0,24(sp)
    80004e0e:	7fd010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004e12:	03300793          	li	a5,51
    80004e16:	853e                	mv	a0,a5
    80004e18:	70a2                	ld	ra,40(sp)
    80004e1a:	6145                	addi	sp,sp,48
    80004e1c:	8082                	ret

0000000080004e1e <OSSemQuery>:
    80004e1e:	7139                	addi	sp,sp,-64
    80004e20:	fc06                	sd	ra,56(sp)
    80004e22:	e42a                	sd	a0,8(sp)
    80004e24:	e02e                	sd	a1,0(sp)
    80004e26:	e802                	sd	zero,16(sp)
    80004e28:	67a2                	ld	a5,8(sp)
    80004e2a:	0007c783          	lbu	a5,0(a5)
    80004e2e:	873e                	mv	a4,a5
    80004e30:	478d                	li	a5,3
    80004e32:	00f70463          	beq	a4,a5,80004e3a <OSSemQuery+0x1c>
    80004e36:	4785                	li	a5,1
    80004e38:	a0ad                	j	80004ea2 <OSSemQuery+0x84>
    80004e3a:	7c7010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004e3e:	e82a                	sd	a0,16(sp)
    80004e40:	67a2                	ld	a5,8(sp)
    80004e42:	0127c703          	lbu	a4,18(a5)
    80004e46:	6782                	ld	a5,0(sp)
    80004e48:	00e78523          	sb	a4,10(a5)
    80004e4c:	67a2                	ld	a5,8(sp)
    80004e4e:	07cd                	addi	a5,a5,19
    80004e50:	f03e                	sd	a5,32(sp)
    80004e52:	6782                	ld	a5,0(sp)
    80004e54:	0789                	addi	a5,a5,2
    80004e56:	ec3e                	sd	a5,24(sp)
    80004e58:	020107a3          	sb	zero,47(sp)
    80004e5c:	a015                	j	80004e80 <OSSemQuery+0x62>
    80004e5e:	7702                	ld	a4,32(sp)
    80004e60:	00170793          	addi	a5,a4,1
    80004e64:	f03e                	sd	a5,32(sp)
    80004e66:	67e2                	ld	a5,24(sp)
    80004e68:	00178693          	addi	a3,a5,1
    80004e6c:	ec36                	sd	a3,24(sp)
    80004e6e:	00074703          	lbu	a4,0(a4)
    80004e72:	00e78023          	sb	a4,0(a5)
    80004e76:	02f14783          	lbu	a5,47(sp)
    80004e7a:	2785                	addiw	a5,a5,1
    80004e7c:	02f107a3          	sb	a5,47(sp)
    80004e80:	02f14783          	lbu	a5,47(sp)
    80004e84:	0ff7f713          	andi	a4,a5,255
    80004e88:	479d                	li	a5,7
    80004e8a:	fce7fae3          	bleu	a4,a5,80004e5e <OSSemQuery+0x40>
    80004e8e:	67a2                	ld	a5,8(sp)
    80004e90:	0107d703          	lhu	a4,16(a5)
    80004e94:	6782                	ld	a5,0(sp)
    80004e96:	00e79023          	sh	a4,0(a5)
    80004e9a:	6542                	ld	a0,16(sp)
    80004e9c:	76f010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004ea0:	4781                	li	a5,0
    80004ea2:	853e                	mv	a0,a5
    80004ea4:	70e2                	ld	ra,56(sp)
    80004ea6:	6121                	addi	sp,sp,64
    80004ea8:	8082                	ret

0000000080004eaa <OSSemSet>:
    80004eaa:	7139                	addi	sp,sp,-64
    80004eac:	fc06                	sd	ra,56(sp)
    80004eae:	ec2a                	sd	a0,24(sp)
    80004eb0:	87ae                	mv	a5,a1
    80004eb2:	e432                	sd	a2,8(sp)
    80004eb4:	00f11b23          	sh	a5,22(sp)
    80004eb8:	f402                	sd	zero,40(sp)
    80004eba:	67e2                	ld	a5,24(sp)
    80004ebc:	0007c783          	lbu	a5,0(a5)
    80004ec0:	873e                	mv	a4,a5
    80004ec2:	478d                	li	a5,3
    80004ec4:	00f70763          	beq	a4,a5,80004ed2 <OSSemSet+0x28>
    80004ec8:	67a2                	ld	a5,8(sp)
    80004eca:	4705                	li	a4,1
    80004ecc:	00e78023          	sb	a4,0(a5)
    80004ed0:	a099                	j	80004f16 <OSSemSet+0x6c>
    80004ed2:	72f010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004ed6:	f42a                	sd	a0,40(sp)
    80004ed8:	67a2                	ld	a5,8(sp)
    80004eda:	00078023          	sb	zero,0(a5)
    80004ede:	67e2                	ld	a5,24(sp)
    80004ee0:	0107d783          	lhu	a5,16(a5)
    80004ee4:	c799                	beqz	a5,80004ef2 <OSSemSet+0x48>
    80004ee6:	67e2                	ld	a5,24(sp)
    80004ee8:	01615703          	lhu	a4,22(sp)
    80004eec:	00e79823          	sh	a4,16(a5)
    80004ef0:	a005                	j	80004f10 <OSSemSet+0x66>
    80004ef2:	67e2                	ld	a5,24(sp)
    80004ef4:	0127c783          	lbu	a5,18(a5)
    80004ef8:	e799                	bnez	a5,80004f06 <OSSemSet+0x5c>
    80004efa:	67e2                	ld	a5,24(sp)
    80004efc:	01615703          	lhu	a4,22(sp)
    80004f00:	00e79823          	sh	a4,16(a5)
    80004f04:	a031                	j	80004f10 <OSSemSet+0x66>
    80004f06:	67a2                	ld	a5,8(sp)
    80004f08:	04900713          	li	a4,73
    80004f0c:	00e78023          	sb	a4,0(a5)
    80004f10:	7522                	ld	a0,40(sp)
    80004f12:	6f9010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004f16:	70e2                	ld	ra,56(sp)
    80004f18:	6121                	addi	sp,sp,64
    80004f1a:	8082                	ret

0000000080004f1c <OSTaskChangePrio>:
    80004f1c:	715d                	addi	sp,sp,-80
    80004f1e:	e486                	sd	ra,72(sp)
    80004f20:	87aa                	mv	a5,a0
    80004f22:	872e                	mv	a4,a1
    80004f24:	00f107a3          	sb	a5,15(sp)
    80004f28:	87ba                	mv	a5,a4
    80004f2a:	00f10723          	sb	a5,14(sp)
    80004f2e:	f402                	sd	zero,40(sp)
    80004f30:	6d1010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80004f34:	f42a                	sd	a0,40(sp)
    80004f36:	00e14783          	lbu	a5,14(sp)
    80004f3a:	2781                	sext.w	a5,a5
    80004f3c:	0007d717          	auipc	a4,0x7d
    80004f40:	6dc70713          	addi	a4,a4,1756 # 80082618 <OSTCBPrioTbl>
    80004f44:	078e                	slli	a5,a5,0x3
    80004f46:	97ba                	add	a5,a5,a4
    80004f48:	639c                	ld	a5,0(a5)
    80004f4a:	c799                	beqz	a5,80004f58 <OSTaskChangePrio+0x3c>
    80004f4c:	7522                	ld	a0,40(sp)
    80004f4e:	6bd010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004f52:	02800793          	li	a5,40
    80004f56:	aeb5                	j	800052d2 <OSTaskChangePrio+0x3b6>
    80004f58:	00f14783          	lbu	a5,15(sp)
    80004f5c:	0ff7f713          	andi	a4,a5,255
    80004f60:	0ff00793          	li	a5,255
    80004f64:	00f71b63          	bne	a4,a5,80004f7a <OSTaskChangePrio+0x5e>
    80004f68:	0007c797          	auipc	a5,0x7c
    80004f6c:	49878793          	addi	a5,a5,1176 # 80081400 <OSTCBCur>
    80004f70:	639c                	ld	a5,0(a5)
    80004f72:	05a7c783          	lbu	a5,90(a5)
    80004f76:	00f107a3          	sb	a5,15(sp)
    80004f7a:	00f14783          	lbu	a5,15(sp)
    80004f7e:	2781                	sext.w	a5,a5
    80004f80:	0007d717          	auipc	a4,0x7d
    80004f84:	69870713          	addi	a4,a4,1688 # 80082618 <OSTCBPrioTbl>
    80004f88:	078e                	slli	a5,a5,0x3
    80004f8a:	97ba                	add	a5,a5,a4
    80004f8c:	639c                	ld	a5,0(a5)
    80004f8e:	f03e                	sd	a5,32(sp)
    80004f90:	7782                	ld	a5,32(sp)
    80004f92:	e799                	bnez	a5,80004fa0 <OSTaskChangePrio+0x84>
    80004f94:	7522                	ld	a0,40(sp)
    80004f96:	675010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004f9a:	02900793          	li	a5,41
    80004f9e:	ae15                	j	800052d2 <OSTaskChangePrio+0x3b6>
    80004fa0:	7702                	ld	a4,32(sp)
    80004fa2:	4785                	li	a5,1
    80004fa4:	00f71863          	bne	a4,a5,80004fb4 <OSTaskChangePrio+0x98>
    80004fa8:	7522                	ld	a0,40(sp)
    80004faa:	661010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80004fae:	04300793          	li	a5,67
    80004fb2:	a605                	j	800052d2 <OSTaskChangePrio+0x3b6>
    80004fb4:	00e14783          	lbu	a5,14(sp)
    80004fb8:	0037d79b          	srliw	a5,a5,0x3
    80004fbc:	00f10fa3          	sb	a5,31(sp)
    80004fc0:	00e14783          	lbu	a5,14(sp)
    80004fc4:	8b9d                	andi	a5,a5,7
    80004fc6:	00f10f23          	sb	a5,30(sp)
    80004fca:	01f14783          	lbu	a5,31(sp)
    80004fce:	2781                	sext.w	a5,a5
    80004fd0:	4705                	li	a4,1
    80004fd2:	00f717b3          	sll	a5,a4,a5
    80004fd6:	00f10ea3          	sb	a5,29(sp)
    80004fda:	01e14783          	lbu	a5,30(sp)
    80004fde:	2781                	sext.w	a5,a5
    80004fe0:	4705                	li	a4,1
    80004fe2:	00f717b3          	sll	a5,a4,a5
    80004fe6:	00f10e23          	sb	a5,28(sp)
    80004fea:	00f14783          	lbu	a5,15(sp)
    80004fee:	2781                	sext.w	a5,a5
    80004ff0:	0007d717          	auipc	a4,0x7d
    80004ff4:	62870713          	addi	a4,a4,1576 # 80082618 <OSTCBPrioTbl>
    80004ff8:	078e                	slli	a5,a5,0x3
    80004ffa:	97ba                	add	a5,a5,a4
    80004ffc:	0007b023          	sd	zero,0(a5)
    80005000:	00e14783          	lbu	a5,14(sp)
    80005004:	2781                	sext.w	a5,a5
    80005006:	0007d717          	auipc	a4,0x7d
    8000500a:	61270713          	addi	a4,a4,1554 # 80082618 <OSTCBPrioTbl>
    8000500e:	078e                	slli	a5,a5,0x3
    80005010:	97ba                	add	a5,a5,a4
    80005012:	7702                	ld	a4,32(sp)
    80005014:	e398                	sd	a4,0(a5)
    80005016:	7782                	ld	a5,32(sp)
    80005018:	05c7c783          	lbu	a5,92(a5)
    8000501c:	00f10da3          	sb	a5,27(sp)
    80005020:	7782                	ld	a5,32(sp)
    80005022:	05e7c783          	lbu	a5,94(a5)
    80005026:	00f10d23          	sb	a5,26(sp)
    8000502a:	7782                	ld	a5,32(sp)
    8000502c:	05d7c783          	lbu	a5,93(a5)
    80005030:	00f10ca3          	sb	a5,25(sp)
    80005034:	01b14783          	lbu	a5,27(sp)
    80005038:	2781                	sext.w	a5,a5
    8000503a:	0007c717          	auipc	a4,0x7c
    8000503e:	fae70713          	addi	a4,a4,-82 # 80080fe8 <OSRdyTbl>
    80005042:	97ba                	add	a5,a5,a4
    80005044:	0007c703          	lbu	a4,0(a5)
    80005048:	01914783          	lbu	a5,25(sp)
    8000504c:	8ff9                	and	a5,a5,a4
    8000504e:	0ff7f793          	andi	a5,a5,255
    80005052:	cbe1                	beqz	a5,80005122 <OSTaskChangePrio+0x206>
    80005054:	01b14783          	lbu	a5,27(sp)
    80005058:	2781                	sext.w	a5,a5
    8000505a:	0007c717          	auipc	a4,0x7c
    8000505e:	f8e70713          	addi	a4,a4,-114 # 80080fe8 <OSRdyTbl>
    80005062:	97ba                	add	a5,a5,a4
    80005064:	0007c683          	lbu	a3,0(a5)
    80005068:	01914783          	lbu	a5,25(sp)
    8000506c:	fff7c793          	not	a5,a5
    80005070:	0ff7f713          	andi	a4,a5,255
    80005074:	01b14783          	lbu	a5,27(sp)
    80005078:	2781                	sext.w	a5,a5
    8000507a:	8f75                	and	a4,a4,a3
    8000507c:	0ff77713          	andi	a4,a4,255
    80005080:	0007c697          	auipc	a3,0x7c
    80005084:	f6868693          	addi	a3,a3,-152 # 80080fe8 <OSRdyTbl>
    80005088:	97b6                	add	a5,a5,a3
    8000508a:	00e78023          	sb	a4,0(a5)
    8000508e:	01b14783          	lbu	a5,27(sp)
    80005092:	2781                	sext.w	a5,a5
    80005094:	0007c717          	auipc	a4,0x7c
    80005098:	f5470713          	addi	a4,a4,-172 # 80080fe8 <OSRdyTbl>
    8000509c:	97ba                	add	a5,a5,a4
    8000509e:	0007c783          	lbu	a5,0(a5)
    800050a2:	e795                	bnez	a5,800050ce <OSTaskChangePrio+0x1b2>
    800050a4:	01a14783          	lbu	a5,26(sp)
    800050a8:	fff7c793          	not	a5,a5
    800050ac:	0ff7f713          	andi	a4,a5,255
    800050b0:	0007c797          	auipc	a5,0x7c
    800050b4:	f3078793          	addi	a5,a5,-208 # 80080fe0 <OSRdyGrp>
    800050b8:	0007c783          	lbu	a5,0(a5)
    800050bc:	8ff9                	and	a5,a5,a4
    800050be:	0ff7f713          	andi	a4,a5,255
    800050c2:	0007c797          	auipc	a5,0x7c
    800050c6:	f1e78793          	addi	a5,a5,-226 # 80080fe0 <OSRdyGrp>
    800050ca:	00e78023          	sb	a4,0(a5)
    800050ce:	0007c797          	auipc	a5,0x7c
    800050d2:	f1278793          	addi	a5,a5,-238 # 80080fe0 <OSRdyGrp>
    800050d6:	0007c703          	lbu	a4,0(a5)
    800050da:	01d14783          	lbu	a5,29(sp)
    800050de:	8fd9                	or	a5,a5,a4
    800050e0:	0ff7f713          	andi	a4,a5,255
    800050e4:	0007c797          	auipc	a5,0x7c
    800050e8:	efc78793          	addi	a5,a5,-260 # 80080fe0 <OSRdyGrp>
    800050ec:	00e78023          	sb	a4,0(a5)
    800050f0:	01f14783          	lbu	a5,31(sp)
    800050f4:	2781                	sext.w	a5,a5
    800050f6:	0007c717          	auipc	a4,0x7c
    800050fa:	ef270713          	addi	a4,a4,-270 # 80080fe8 <OSRdyTbl>
    800050fe:	97ba                	add	a5,a5,a4
    80005100:	0007c683          	lbu	a3,0(a5)
    80005104:	01f14783          	lbu	a5,31(sp)
    80005108:	2781                	sext.w	a5,a5
    8000510a:	01c14703          	lbu	a4,28(sp)
    8000510e:	8f55                	or	a4,a4,a3
    80005110:	0ff77713          	andi	a4,a4,255
    80005114:	0007c697          	auipc	a3,0x7c
    80005118:	ed468693          	addi	a3,a3,-300 # 80080fe8 <OSRdyTbl>
    8000511c:	97b6                	add	a5,a5,a3
    8000511e:	00e78023          	sb	a4,0(a5)
    80005122:	7782                	ld	a5,32(sp)
    80005124:	7b9c                	ld	a5,48(a5)
    80005126:	fc3e                	sd	a5,56(sp)
    80005128:	77e2                	ld	a5,56(sp)
    8000512a:	cfc9                	beqz	a5,800051c4 <OSTaskChangePrio+0x2a8>
    8000512c:	01b14783          	lbu	a5,27(sp)
    80005130:	2781                	sext.w	a5,a5
    80005132:	7762                	ld	a4,56(sp)
    80005134:	97ba                	add	a5,a5,a4
    80005136:	0137c683          	lbu	a3,19(a5)
    8000513a:	01914783          	lbu	a5,25(sp)
    8000513e:	fff7c793          	not	a5,a5
    80005142:	0ff7f713          	andi	a4,a5,255
    80005146:	01b14783          	lbu	a5,27(sp)
    8000514a:	2781                	sext.w	a5,a5
    8000514c:	8f75                	and	a4,a4,a3
    8000514e:	0ff77713          	andi	a4,a4,255
    80005152:	76e2                	ld	a3,56(sp)
    80005154:	97b6                	add	a5,a5,a3
    80005156:	00e789a3          	sb	a4,19(a5)
    8000515a:	01b14783          	lbu	a5,27(sp)
    8000515e:	2781                	sext.w	a5,a5
    80005160:	7762                	ld	a4,56(sp)
    80005162:	97ba                	add	a5,a5,a4
    80005164:	0137c783          	lbu	a5,19(a5)
    80005168:	e385                	bnez	a5,80005188 <OSTaskChangePrio+0x26c>
    8000516a:	77e2                	ld	a5,56(sp)
    8000516c:	0127c703          	lbu	a4,18(a5)
    80005170:	01a14783          	lbu	a5,26(sp)
    80005174:	fff7c793          	not	a5,a5
    80005178:	0ff7f793          	andi	a5,a5,255
    8000517c:	8ff9                	and	a5,a5,a4
    8000517e:	0ff7f713          	andi	a4,a5,255
    80005182:	77e2                	ld	a5,56(sp)
    80005184:	00e78923          	sb	a4,18(a5)
    80005188:	77e2                	ld	a5,56(sp)
    8000518a:	0127c703          	lbu	a4,18(a5)
    8000518e:	01d14783          	lbu	a5,29(sp)
    80005192:	8fd9                	or	a5,a5,a4
    80005194:	0ff7f713          	andi	a4,a5,255
    80005198:	77e2                	ld	a5,56(sp)
    8000519a:	00e78923          	sb	a4,18(a5)
    8000519e:	01f14783          	lbu	a5,31(sp)
    800051a2:	2781                	sext.w	a5,a5
    800051a4:	7762                	ld	a4,56(sp)
    800051a6:	97ba                	add	a5,a5,a4
    800051a8:	0137c683          	lbu	a3,19(a5)
    800051ac:	01f14783          	lbu	a5,31(sp)
    800051b0:	2781                	sext.w	a5,a5
    800051b2:	01c14703          	lbu	a4,28(sp)
    800051b6:	8f55                	or	a4,a4,a3
    800051b8:	0ff77713          	andi	a4,a4,255
    800051bc:	76e2                	ld	a3,56(sp)
    800051be:	97b6                	add	a5,a5,a3
    800051c0:	00e789a3          	sb	a4,19(a5)
    800051c4:	7782                	ld	a5,32(sp)
    800051c6:	7f9c                	ld	a5,56(a5)
    800051c8:	cfc5                	beqz	a5,80005280 <OSTaskChangePrio+0x364>
    800051ca:	7782                	ld	a5,32(sp)
    800051cc:	7f9c                	ld	a5,56(a5)
    800051ce:	f83e                	sd	a5,48(sp)
    800051d0:	77c2                	ld	a5,48(sp)
    800051d2:	639c                	ld	a5,0(a5)
    800051d4:	fc3e                	sd	a5,56(sp)
    800051d6:	a05d                	j	8000527c <OSTaskChangePrio+0x360>
    800051d8:	01b14783          	lbu	a5,27(sp)
    800051dc:	2781                	sext.w	a5,a5
    800051de:	7762                	ld	a4,56(sp)
    800051e0:	97ba                	add	a5,a5,a4
    800051e2:	0137c683          	lbu	a3,19(a5)
    800051e6:	01914783          	lbu	a5,25(sp)
    800051ea:	fff7c793          	not	a5,a5
    800051ee:	0ff7f713          	andi	a4,a5,255
    800051f2:	01b14783          	lbu	a5,27(sp)
    800051f6:	2781                	sext.w	a5,a5
    800051f8:	8f75                	and	a4,a4,a3
    800051fa:	0ff77713          	andi	a4,a4,255
    800051fe:	76e2                	ld	a3,56(sp)
    80005200:	97b6                	add	a5,a5,a3
    80005202:	00e789a3          	sb	a4,19(a5)
    80005206:	01b14783          	lbu	a5,27(sp)
    8000520a:	2781                	sext.w	a5,a5
    8000520c:	7762                	ld	a4,56(sp)
    8000520e:	97ba                	add	a5,a5,a4
    80005210:	0137c783          	lbu	a5,19(a5)
    80005214:	e385                	bnez	a5,80005234 <OSTaskChangePrio+0x318>
    80005216:	77e2                	ld	a5,56(sp)
    80005218:	0127c703          	lbu	a4,18(a5)
    8000521c:	01a14783          	lbu	a5,26(sp)
    80005220:	fff7c793          	not	a5,a5
    80005224:	0ff7f793          	andi	a5,a5,255
    80005228:	8ff9                	and	a5,a5,a4
    8000522a:	0ff7f713          	andi	a4,a5,255
    8000522e:	77e2                	ld	a5,56(sp)
    80005230:	00e78923          	sb	a4,18(a5)
    80005234:	77e2                	ld	a5,56(sp)
    80005236:	0127c703          	lbu	a4,18(a5)
    8000523a:	01d14783          	lbu	a5,29(sp)
    8000523e:	8fd9                	or	a5,a5,a4
    80005240:	0ff7f713          	andi	a4,a5,255
    80005244:	77e2                	ld	a5,56(sp)
    80005246:	00e78923          	sb	a4,18(a5)
    8000524a:	01f14783          	lbu	a5,31(sp)
    8000524e:	2781                	sext.w	a5,a5
    80005250:	7762                	ld	a4,56(sp)
    80005252:	97ba                	add	a5,a5,a4
    80005254:	0137c683          	lbu	a3,19(a5)
    80005258:	01f14783          	lbu	a5,31(sp)
    8000525c:	2781                	sext.w	a5,a5
    8000525e:	01c14703          	lbu	a4,28(sp)
    80005262:	8f55                	or	a4,a4,a3
    80005264:	0ff77713          	andi	a4,a4,255
    80005268:	76e2                	ld	a3,56(sp)
    8000526a:	97b6                	add	a5,a5,a3
    8000526c:	00e789a3          	sb	a4,19(a5)
    80005270:	77c2                	ld	a5,48(sp)
    80005272:	07a1                	addi	a5,a5,8
    80005274:	f83e                	sd	a5,48(sp)
    80005276:	77c2                	ld	a5,48(sp)
    80005278:	639c                	ld	a5,0(a5)
    8000527a:	fc3e                	sd	a5,56(sp)
    8000527c:	77e2                	ld	a5,56(sp)
    8000527e:	ffa9                	bnez	a5,800051d8 <OSTaskChangePrio+0x2bc>
    80005280:	7782                	ld	a5,32(sp)
    80005282:	00e14703          	lbu	a4,14(sp)
    80005286:	04e78d23          	sb	a4,90(a5)
    8000528a:	7782                	ld	a5,32(sp)
    8000528c:	01f14703          	lbu	a4,31(sp)
    80005290:	04e78e23          	sb	a4,92(a5)
    80005294:	7782                	ld	a5,32(sp)
    80005296:	01e14703          	lbu	a4,30(sp)
    8000529a:	04e78da3          	sb	a4,91(a5)
    8000529e:	7782                	ld	a5,32(sp)
    800052a0:	01d14703          	lbu	a4,29(sp)
    800052a4:	04e78f23          	sb	a4,94(a5)
    800052a8:	7782                	ld	a5,32(sp)
    800052aa:	01c14703          	lbu	a4,28(sp)
    800052ae:	04e78ea3          	sb	a4,93(a5)
    800052b2:	7522                	ld	a0,40(sp)
    800052b4:	357010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800052b8:	0007b797          	auipc	a5,0x7b
    800052bc:	22078793          	addi	a5,a5,544 # 800804d8 <OSRunning>
    800052c0:	0007c783          	lbu	a5,0(a5)
    800052c4:	873e                	mv	a4,a5
    800052c6:	4785                	li	a5,1
    800052c8:	00f71463          	bne	a4,a5,800052d0 <OSTaskChangePrio+0x3b4>
    800052cc:	a7cfc0ef          	jal	ra,80001548 <OS_Sched>
    800052d0:	4781                	li	a5,0
    800052d2:	853e                	mv	a0,a5
    800052d4:	60a6                	ld	ra,72(sp)
    800052d6:	6161                	addi	sp,sp,80
    800052d8:	8082                	ret

00000000800052da <OSTaskCreate>:
    800052da:	715d                	addi	sp,sp,-80
    800052dc:	e486                	sd	ra,72(sp)
    800052de:	ec2a                	sd	a0,24(sp)
    800052e0:	e82e                	sd	a1,16(sp)
    800052e2:	e432                	sd	a2,8(sp)
    800052e4:	87b6                	mv	a5,a3
    800052e6:	00f103a3          	sb	a5,7(sp)
    800052ea:	fc02                	sd	zero,56(sp)
    800052ec:	315010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800052f0:	fc2a                	sd	a0,56(sp)
    800052f2:	0007c797          	auipc	a5,0x7c
    800052f6:	10678793          	addi	a5,a5,262 # 800813f8 <OSIntNesting>
    800052fa:	0007c783          	lbu	a5,0(a5)
    800052fe:	c799                	beqz	a5,8000530c <OSTaskCreate+0x32>
    80005300:	7562                	ld	a0,56(sp)
    80005302:	309010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005306:	03c00793          	li	a5,60
    8000530a:	a84d                	j	800053bc <OSTaskCreate+0xe2>
    8000530c:	00714783          	lbu	a5,7(sp)
    80005310:	2781                	sext.w	a5,a5
    80005312:	0007d717          	auipc	a4,0x7d
    80005316:	30670713          	addi	a4,a4,774 # 80082618 <OSTCBPrioTbl>
    8000531a:	078e                	slli	a5,a5,0x3
    8000531c:	97ba                	add	a5,a5,a4
    8000531e:	639c                	ld	a5,0(a5)
    80005320:	ebc9                	bnez	a5,800053b2 <OSTaskCreate+0xd8>
    80005322:	00714783          	lbu	a5,7(sp)
    80005326:	2781                	sext.w	a5,a5
    80005328:	0007d717          	auipc	a4,0x7d
    8000532c:	2f070713          	addi	a4,a4,752 # 80082618 <OSTCBPrioTbl>
    80005330:	078e                	slli	a5,a5,0x3
    80005332:	97ba                	add	a5,a5,a4
    80005334:	4705                	li	a4,1
    80005336:	e398                	sd	a4,0(a5)
    80005338:	7562                	ld	a0,56(sp)
    8000533a:	2d1010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000533e:	4681                	li	a3,0
    80005340:	6622                	ld	a2,8(sp)
    80005342:	65c2                	ld	a1,16(sp)
    80005344:	6562                	ld	a0,24(sp)
    80005346:	3b9010ef          	jal	ra,80006efe <OSTaskStkInit>
    8000534a:	f82a                	sd	a0,48(sp)
    8000534c:	00714503          	lbu	a0,7(sp)
    80005350:	4801                	li	a6,0
    80005352:	4781                	li	a5,0
    80005354:	4701                	li	a4,0
    80005356:	4681                	li	a3,0
    80005358:	4601                	li	a2,0
    8000535a:	75c2                	ld	a1,48(sp)
    8000535c:	cc0fc0ef          	jal	ra,8000181c <OS_TCBInit>
    80005360:	87aa                	mv	a5,a0
    80005362:	02f107a3          	sb	a5,47(sp)
    80005366:	02f14783          	lbu	a5,47(sp)
    8000536a:	0ff7f793          	andi	a5,a5,255
    8000536e:	ef91                	bnez	a5,8000538a <OSTaskCreate+0xb0>
    80005370:	0007b797          	auipc	a5,0x7b
    80005374:	16878793          	addi	a5,a5,360 # 800804d8 <OSRunning>
    80005378:	0007c783          	lbu	a5,0(a5)
    8000537c:	873e                	mv	a4,a5
    8000537e:	4785                	li	a5,1
    80005380:	02f71663          	bne	a4,a5,800053ac <OSTaskCreate+0xd2>
    80005384:	9c4fc0ef          	jal	ra,80001548 <OS_Sched>
    80005388:	a015                	j	800053ac <OSTaskCreate+0xd2>
    8000538a:	277010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000538e:	fc2a                	sd	a0,56(sp)
    80005390:	00714783          	lbu	a5,7(sp)
    80005394:	2781                	sext.w	a5,a5
    80005396:	0007d717          	auipc	a4,0x7d
    8000539a:	28270713          	addi	a4,a4,642 # 80082618 <OSTCBPrioTbl>
    8000539e:	078e                	slli	a5,a5,0x3
    800053a0:	97ba                	add	a5,a5,a4
    800053a2:	0007b023          	sd	zero,0(a5)
    800053a6:	7562                	ld	a0,56(sp)
    800053a8:	263010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800053ac:	02f14783          	lbu	a5,47(sp)
    800053b0:	a031                	j	800053bc <OSTaskCreate+0xe2>
    800053b2:	7562                	ld	a0,56(sp)
    800053b4:	257010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800053b8:	02800793          	li	a5,40
    800053bc:	853e                	mv	a0,a5
    800053be:	60a6                	ld	ra,72(sp)
    800053c0:	6161                	addi	sp,sp,80
    800053c2:	8082                	ret

00000000800053c4 <OSTaskCreateExt>:
    800053c4:	711d                	addi	sp,sp,-96
    800053c6:	ec86                	sd	ra,88(sp)
    800053c8:	f42a                	sd	a0,40(sp)
    800053ca:	f02e                	sd	a1,32(sp)
    800053cc:	ec32                	sd	a2,24(sp)
    800053ce:	8636                	mv	a2,a3
    800053d0:	86ba                	mv	a3,a4
    800053d2:	e43e                	sd	a5,8(sp)
    800053d4:	8742                	mv	a4,a6
    800053d6:	e046                	sd	a7,0(sp)
    800053d8:	87b2                	mv	a5,a2
    800053da:	00f10ba3          	sb	a5,23(sp)
    800053de:	87b6                	mv	a5,a3
    800053e0:	00f11a23          	sh	a5,20(sp)
    800053e4:	87ba                	mv	a5,a4
    800053e6:	c83e                	sw	a5,16(sp)
    800053e8:	e482                	sd	zero,72(sp)
    800053ea:	217010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800053ee:	e4aa                	sd	a0,72(sp)
    800053f0:	0007c797          	auipc	a5,0x7c
    800053f4:	00878793          	addi	a5,a5,8 # 800813f8 <OSIntNesting>
    800053f8:	0007c783          	lbu	a5,0(a5)
    800053fc:	c799                	beqz	a5,8000540a <OSTaskCreateExt+0x46>
    800053fe:	6526                	ld	a0,72(sp)
    80005400:	20b010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005404:	03c00793          	li	a5,60
    80005408:	a0f1                	j	800054d4 <OSTaskCreateExt+0x110>
    8000540a:	01714783          	lbu	a5,23(sp)
    8000540e:	2781                	sext.w	a5,a5
    80005410:	0007d717          	auipc	a4,0x7d
    80005414:	20870713          	addi	a4,a4,520 # 80082618 <OSTCBPrioTbl>
    80005418:	078e                	slli	a5,a5,0x3
    8000541a:	97ba                	add	a5,a5,a4
    8000541c:	639c                	ld	a5,0(a5)
    8000541e:	e7d5                	bnez	a5,800054ca <OSTaskCreateExt+0x106>
    80005420:	01714783          	lbu	a5,23(sp)
    80005424:	2781                	sext.w	a5,a5
    80005426:	0007d717          	auipc	a4,0x7d
    8000542a:	1f270713          	addi	a4,a4,498 # 80082618 <OSTCBPrioTbl>
    8000542e:	078e                	slli	a5,a5,0x3
    80005430:	97ba                	add	a5,a5,a4
    80005432:	4705                	li	a4,1
    80005434:	e398                	sd	a4,0(a5)
    80005436:	6526                	ld	a0,72(sp)
    80005438:	1d3010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000543c:	06015703          	lhu	a4,96(sp)
    80005440:	47c2                	lw	a5,16(sp)
    80005442:	863a                	mv	a2,a4
    80005444:	85be                	mv	a1,a5
    80005446:	6522                	ld	a0,8(sp)
    80005448:	251000ef          	jal	ra,80005e98 <OS_TaskStkClr>
    8000544c:	06015783          	lhu	a5,96(sp)
    80005450:	86be                	mv	a3,a5
    80005452:	6662                	ld	a2,24(sp)
    80005454:	7582                	ld	a1,32(sp)
    80005456:	7522                	ld	a0,40(sp)
    80005458:	2a7010ef          	jal	ra,80006efe <OSTaskStkInit>
    8000545c:	e0aa                	sd	a0,64(sp)
    8000545e:	06015783          	lhu	a5,96(sp)
    80005462:	4742                	lw	a4,16(sp)
    80005464:	01415683          	lhu	a3,20(sp)
    80005468:	01714503          	lbu	a0,23(sp)
    8000546c:	883e                	mv	a6,a5
    8000546e:	6782                	ld	a5,0(sp)
    80005470:	6622                	ld	a2,8(sp)
    80005472:	6586                	ld	a1,64(sp)
    80005474:	ba8fc0ef          	jal	ra,8000181c <OS_TCBInit>
    80005478:	87aa                	mv	a5,a0
    8000547a:	02f10fa3          	sb	a5,63(sp)
    8000547e:	03f14783          	lbu	a5,63(sp)
    80005482:	0ff7f793          	andi	a5,a5,255
    80005486:	ef91                	bnez	a5,800054a2 <OSTaskCreateExt+0xde>
    80005488:	0007b797          	auipc	a5,0x7b
    8000548c:	05078793          	addi	a5,a5,80 # 800804d8 <OSRunning>
    80005490:	0007c783          	lbu	a5,0(a5)
    80005494:	873e                	mv	a4,a5
    80005496:	4785                	li	a5,1
    80005498:	02f71663          	bne	a4,a5,800054c4 <OSTaskCreateExt+0x100>
    8000549c:	8acfc0ef          	jal	ra,80001548 <OS_Sched>
    800054a0:	a015                	j	800054c4 <OSTaskCreateExt+0x100>
    800054a2:	15f010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800054a6:	e4aa                	sd	a0,72(sp)
    800054a8:	01714783          	lbu	a5,23(sp)
    800054ac:	2781                	sext.w	a5,a5
    800054ae:	0007d717          	auipc	a4,0x7d
    800054b2:	16a70713          	addi	a4,a4,362 # 80082618 <OSTCBPrioTbl>
    800054b6:	078e                	slli	a5,a5,0x3
    800054b8:	97ba                	add	a5,a5,a4
    800054ba:	0007b023          	sd	zero,0(a5)
    800054be:	6526                	ld	a0,72(sp)
    800054c0:	14b010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800054c4:	03f14783          	lbu	a5,63(sp)
    800054c8:	a031                	j	800054d4 <OSTaskCreateExt+0x110>
    800054ca:	6526                	ld	a0,72(sp)
    800054cc:	13f010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800054d0:	02800793          	li	a5,40
    800054d4:	853e                	mv	a0,a5
    800054d6:	60e6                	ld	ra,88(sp)
    800054d8:	6125                	addi	sp,sp,96
    800054da:	8082                	ret

00000000800054dc <OSTaskDel>:
    800054dc:	7139                	addi	sp,sp,-64
    800054de:	fc06                	sd	ra,56(sp)
    800054e0:	87aa                	mv	a5,a0
    800054e2:	00f107a3          	sb	a5,15(sp)
    800054e6:	f402                	sd	zero,40(sp)
    800054e8:	0007c797          	auipc	a5,0x7c
    800054ec:	f1078793          	addi	a5,a5,-240 # 800813f8 <OSIntNesting>
    800054f0:	0007c783          	lbu	a5,0(a5)
    800054f4:	c781                	beqz	a5,800054fc <OSTaskDel+0x20>
    800054f6:	04000793          	li	a5,64
    800054fa:	a49d                	j	80005760 <OSTaskDel+0x284>
    800054fc:	00f14783          	lbu	a5,15(sp)
    80005500:	0ff7f713          	andi	a4,a5,255
    80005504:	03f00793          	li	a5,63
    80005508:	00f71563          	bne	a4,a5,80005512 <OSTaskDel+0x36>
    8000550c:	03e00793          	li	a5,62
    80005510:	ac81                	j	80005760 <OSTaskDel+0x284>
    80005512:	0ef010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80005516:	f42a                	sd	a0,40(sp)
    80005518:	00f14783          	lbu	a5,15(sp)
    8000551c:	0ff7f713          	andi	a4,a5,255
    80005520:	0ff00793          	li	a5,255
    80005524:	00f71b63          	bne	a4,a5,8000553a <OSTaskDel+0x5e>
    80005528:	0007c797          	auipc	a5,0x7c
    8000552c:	ed878793          	addi	a5,a5,-296 # 80081400 <OSTCBCur>
    80005530:	639c                	ld	a5,0(a5)
    80005532:	05a7c783          	lbu	a5,90(a5)
    80005536:	00f107a3          	sb	a5,15(sp)
    8000553a:	00f14783          	lbu	a5,15(sp)
    8000553e:	2781                	sext.w	a5,a5
    80005540:	0007d717          	auipc	a4,0x7d
    80005544:	0d870713          	addi	a4,a4,216 # 80082618 <OSTCBPrioTbl>
    80005548:	078e                	slli	a5,a5,0x3
    8000554a:	97ba                	add	a5,a5,a4
    8000554c:	639c                	ld	a5,0(a5)
    8000554e:	f03e                	sd	a5,32(sp)
    80005550:	7782                	ld	a5,32(sp)
    80005552:	e799                	bnez	a5,80005560 <OSTaskDel+0x84>
    80005554:	7522                	ld	a0,40(sp)
    80005556:	0b5010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000555a:	04300793          	li	a5,67
    8000555e:	a409                	j	80005760 <OSTaskDel+0x284>
    80005560:	7702                	ld	a4,32(sp)
    80005562:	4785                	li	a5,1
    80005564:	00f71863          	bne	a4,a5,80005574 <OSTaskDel+0x98>
    80005568:	7522                	ld	a0,40(sp)
    8000556a:	0a1010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000556e:	03d00793          	li	a5,61
    80005572:	a2fd                	j	80005760 <OSTaskDel+0x284>
    80005574:	7782                	ld	a5,32(sp)
    80005576:	05c7c783          	lbu	a5,92(a5)
    8000557a:	2781                	sext.w	a5,a5
    8000557c:	0007c717          	auipc	a4,0x7c
    80005580:	a6c70713          	addi	a4,a4,-1428 # 80080fe8 <OSRdyTbl>
    80005584:	97ba                	add	a5,a5,a4
    80005586:	0007c683          	lbu	a3,0(a5)
    8000558a:	7782                	ld	a5,32(sp)
    8000558c:	05d7c783          	lbu	a5,93(a5)
    80005590:	fff7c793          	not	a5,a5
    80005594:	0ff7f713          	andi	a4,a5,255
    80005598:	7782                	ld	a5,32(sp)
    8000559a:	05c7c783          	lbu	a5,92(a5)
    8000559e:	2781                	sext.w	a5,a5
    800055a0:	8f75                	and	a4,a4,a3
    800055a2:	0ff77713          	andi	a4,a4,255
    800055a6:	0007c697          	auipc	a3,0x7c
    800055aa:	a4268693          	addi	a3,a3,-1470 # 80080fe8 <OSRdyTbl>
    800055ae:	97b6                	add	a5,a5,a3
    800055b0:	00e78023          	sb	a4,0(a5)
    800055b4:	7782                	ld	a5,32(sp)
    800055b6:	05c7c783          	lbu	a5,92(a5)
    800055ba:	2781                	sext.w	a5,a5
    800055bc:	0007c717          	auipc	a4,0x7c
    800055c0:	a2c70713          	addi	a4,a4,-1492 # 80080fe8 <OSRdyTbl>
    800055c4:	97ba                	add	a5,a5,a4
    800055c6:	0007c783          	lbu	a5,0(a5)
    800055ca:	e79d                	bnez	a5,800055f8 <OSTaskDel+0x11c>
    800055cc:	7782                	ld	a5,32(sp)
    800055ce:	05e7c783          	lbu	a5,94(a5)
    800055d2:	fff7c793          	not	a5,a5
    800055d6:	0ff7f713          	andi	a4,a5,255
    800055da:	0007c797          	auipc	a5,0x7c
    800055de:	a0678793          	addi	a5,a5,-1530 # 80080fe0 <OSRdyGrp>
    800055e2:	0007c783          	lbu	a5,0(a5)
    800055e6:	8ff9                	and	a5,a5,a4
    800055e8:	0ff7f713          	andi	a4,a5,255
    800055ec:	0007c797          	auipc	a5,0x7c
    800055f0:	9f478793          	addi	a5,a5,-1548 # 80080fe0 <OSRdyGrp>
    800055f4:	00e78023          	sb	a4,0(a5)
    800055f8:	7782                	ld	a5,32(sp)
    800055fa:	7b9c                	ld	a5,48(a5)
    800055fc:	c799                	beqz	a5,8000560a <OSTaskDel+0x12e>
    800055fe:	7782                	ld	a5,32(sp)
    80005600:	7b9c                	ld	a5,48(a5)
    80005602:	85be                	mv	a1,a5
    80005604:	7502                	ld	a0,32(sp)
    80005606:	a25fb0ef          	jal	ra,8000102a <OS_EventTaskRemove>
    8000560a:	7782                	ld	a5,32(sp)
    8000560c:	7f9c                	ld	a5,56(a5)
    8000560e:	c799                	beqz	a5,8000561c <OSTaskDel+0x140>
    80005610:	7782                	ld	a5,32(sp)
    80005612:	7f9c                	ld	a5,56(a5)
    80005614:	85be                	mv	a1,a5
    80005616:	7502                	ld	a0,32(sp)
    80005618:	a89fb0ef          	jal	ra,800010a0 <OS_EventTaskRemoveMulti>
    8000561c:	7782                	ld	a5,32(sp)
    8000561e:	67bc                	ld	a5,72(a5)
    80005620:	ec3e                	sd	a5,24(sp)
    80005622:	67e2                	ld	a5,24(sp)
    80005624:	c781                	beqz	a5,8000562c <OSTaskDel+0x150>
    80005626:	6562                	ld	a0,24(sp)
    80005628:	b66fd0ef          	jal	ra,8000298e <OS_FlagUnlink>
    8000562c:	7782                	ld	a5,32(sp)
    8000562e:	0407aa23          	sw	zero,84(a5)
    80005632:	7782                	ld	a5,32(sp)
    80005634:	04078c23          	sb	zero,88(a5)
    80005638:	7782                	ld	a5,32(sp)
    8000563a:	04078ca3          	sb	zero,89(a5)
    8000563e:	0007b797          	auipc	a5,0x7b
    80005642:	e8a78793          	addi	a5,a5,-374 # 800804c8 <OSLockNesting>
    80005646:	0007c783          	lbu	a5,0(a5)
    8000564a:	873e                	mv	a4,a5
    8000564c:	0ff00793          	li	a5,255
    80005650:	02f70163          	beq	a4,a5,80005672 <OSTaskDel+0x196>
    80005654:	0007b797          	auipc	a5,0x7b
    80005658:	e7478793          	addi	a5,a5,-396 # 800804c8 <OSLockNesting>
    8000565c:	0007c783          	lbu	a5,0(a5)
    80005660:	2785                	addiw	a5,a5,1
    80005662:	0ff7f713          	andi	a4,a5,255
    80005666:	0007b797          	auipc	a5,0x7b
    8000566a:	e6278793          	addi	a5,a5,-414 # 800804c8 <OSLockNesting>
    8000566e:	00e78023          	sb	a4,0(a5)
    80005672:	7522                	ld	a0,40(sp)
    80005674:	796010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005678:	e08fb0ef          	jal	ra,80000c80 <OS_Dummy>
    8000567c:	784010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80005680:	f42a                	sd	a0,40(sp)
    80005682:	0007b797          	auipc	a5,0x7b
    80005686:	e4678793          	addi	a5,a5,-442 # 800804c8 <OSLockNesting>
    8000568a:	0007c783          	lbu	a5,0(a5)
    8000568e:	c385                	beqz	a5,800056ae <OSTaskDel+0x1d2>
    80005690:	0007b797          	auipc	a5,0x7b
    80005694:	e3878793          	addi	a5,a5,-456 # 800804c8 <OSLockNesting>
    80005698:	0007c783          	lbu	a5,0(a5)
    8000569c:	37fd                	addiw	a5,a5,-1
    8000569e:	0ff7f713          	andi	a4,a5,255
    800056a2:	0007b797          	auipc	a5,0x7b
    800056a6:	e2678793          	addi	a5,a5,-474 # 800804c8 <OSLockNesting>
    800056aa:	00e78023          	sb	a4,0(a5)
    800056ae:	7502                	ld	a0,32(sp)
    800056b0:	1c9010ef          	jal	ra,80007078 <OSTaskDelHook>
    800056b4:	0007c797          	auipc	a5,0x7c
    800056b8:	84d78793          	addi	a5,a5,-1971 # 80080f01 <OSTaskCtr>
    800056bc:	0007c783          	lbu	a5,0(a5)
    800056c0:	37fd                	addiw	a5,a5,-1
    800056c2:	0ff7f713          	andi	a4,a5,255
    800056c6:	0007c797          	auipc	a5,0x7c
    800056ca:	83b78793          	addi	a5,a5,-1989 # 80080f01 <OSTaskCtr>
    800056ce:	00e78023          	sb	a4,0(a5)
    800056d2:	00f14783          	lbu	a5,15(sp)
    800056d6:	2781                	sext.w	a5,a5
    800056d8:	0007d717          	auipc	a4,0x7d
    800056dc:	f4070713          	addi	a4,a4,-192 # 80082618 <OSTCBPrioTbl>
    800056e0:	078e                	slli	a5,a5,0x3
    800056e2:	97ba                	add	a5,a5,a4
    800056e4:	0007b023          	sd	zero,0(a5)
    800056e8:	7782                	ld	a5,32(sp)
    800056ea:	779c                	ld	a5,40(a5)
    800056ec:	ef89                	bnez	a5,80005706 <OSTaskDel+0x22a>
    800056ee:	7782                	ld	a5,32(sp)
    800056f0:	739c                	ld	a5,32(a5)
    800056f2:	0207b423          	sd	zero,40(a5)
    800056f6:	7782                	ld	a5,32(sp)
    800056f8:	7398                	ld	a4,32(a5)
    800056fa:	0007b797          	auipc	a5,0x7b
    800056fe:	31678793          	addi	a5,a5,790 # 80080a10 <OSTCBList>
    80005702:	e398                	sd	a4,0(a5)
    80005704:	a819                	j	8000571a <OSTaskDel+0x23e>
    80005706:	7782                	ld	a5,32(sp)
    80005708:	779c                	ld	a5,40(a5)
    8000570a:	7702                	ld	a4,32(sp)
    8000570c:	7318                	ld	a4,32(a4)
    8000570e:	f398                	sd	a4,32(a5)
    80005710:	7782                	ld	a5,32(sp)
    80005712:	739c                	ld	a5,32(a5)
    80005714:	7702                	ld	a4,32(sp)
    80005716:	7718                	ld	a4,40(a4)
    80005718:	f798                	sd	a4,40(a5)
    8000571a:	0007b797          	auipc	a5,0x7b
    8000571e:	7de78793          	addi	a5,a5,2014 # 80080ef8 <OSTCBFreeList>
    80005722:	6398                	ld	a4,0(a5)
    80005724:	7782                	ld	a5,32(sp)
    80005726:	f398                	sd	a4,32(a5)
    80005728:	0007b797          	auipc	a5,0x7b
    8000572c:	7d078793          	addi	a5,a5,2000 # 80080ef8 <OSTCBFreeList>
    80005730:	7702                	ld	a4,32(sp)
    80005732:	e398                	sd	a4,0(a5)
    80005734:	7782                	ld	a5,32(sp)
    80005736:	0007b717          	auipc	a4,0x7b
    8000573a:	9d270713          	addi	a4,a4,-1582 # 80080108 <OSUnMapTbl+0x100>
    8000573e:	e3d8                	sd	a4,128(a5)
    80005740:	7522                	ld	a0,40(sp)
    80005742:	6c8010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005746:	0007b797          	auipc	a5,0x7b
    8000574a:	d9278793          	addi	a5,a5,-622 # 800804d8 <OSRunning>
    8000574e:	0007c783          	lbu	a5,0(a5)
    80005752:	873e                	mv	a4,a5
    80005754:	4785                	li	a5,1
    80005756:	00f71463          	bne	a4,a5,8000575e <OSTaskDel+0x282>
    8000575a:	deffb0ef          	jal	ra,80001548 <OS_Sched>
    8000575e:	4781                	li	a5,0
    80005760:	853e                	mv	a0,a5
    80005762:	70e2                	ld	ra,56(sp)
    80005764:	6121                	addi	sp,sp,64
    80005766:	8082                	ret

0000000080005768 <OSTaskDelReq>:
    80005768:	7139                	addi	sp,sp,-64
    8000576a:	fc06                	sd	ra,56(sp)
    8000576c:	87aa                	mv	a5,a0
    8000576e:	00f107a3          	sb	a5,15(sp)
    80005772:	f402                	sd	zero,40(sp)
    80005774:	00f14783          	lbu	a5,15(sp)
    80005778:	0ff7f713          	andi	a4,a5,255
    8000577c:	03f00793          	li	a5,63
    80005780:	00f71563          	bne	a4,a5,8000578a <OSTaskDelReq+0x22>
    80005784:	03e00793          	li	a5,62
    80005788:	a061                	j	80005810 <OSTaskDelReq+0xa8>
    8000578a:	00f14783          	lbu	a5,15(sp)
    8000578e:	0ff7f713          	andi	a4,a5,255
    80005792:	0ff00793          	li	a5,255
    80005796:	02f71463          	bne	a4,a5,800057be <OSTaskDelReq+0x56>
    8000579a:	666010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    8000579e:	f42a                	sd	a0,40(sp)
    800057a0:	0007c797          	auipc	a5,0x7c
    800057a4:	c6078793          	addi	a5,a5,-928 # 80081400 <OSTCBCur>
    800057a8:	639c                	ld	a5,0(a5)
    800057aa:	05f7c783          	lbu	a5,95(a5)
    800057ae:	00f10fa3          	sb	a5,31(sp)
    800057b2:	7522                	ld	a0,40(sp)
    800057b4:	656010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800057b8:	01f14783          	lbu	a5,31(sp)
    800057bc:	a891                	j	80005810 <OSTaskDelReq+0xa8>
    800057be:	642010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800057c2:	f42a                	sd	a0,40(sp)
    800057c4:	00f14783          	lbu	a5,15(sp)
    800057c8:	2781                	sext.w	a5,a5
    800057ca:	0007d717          	auipc	a4,0x7d
    800057ce:	e4e70713          	addi	a4,a4,-434 # 80082618 <OSTCBPrioTbl>
    800057d2:	078e                	slli	a5,a5,0x3
    800057d4:	97ba                	add	a5,a5,a4
    800057d6:	639c                	ld	a5,0(a5)
    800057d8:	f03e                	sd	a5,32(sp)
    800057da:	7782                	ld	a5,32(sp)
    800057dc:	e799                	bnez	a5,800057ea <OSTaskDelReq+0x82>
    800057de:	7522                	ld	a0,40(sp)
    800057e0:	62a010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800057e4:	04300793          	li	a5,67
    800057e8:	a025                	j	80005810 <OSTaskDelReq+0xa8>
    800057ea:	7702                	ld	a4,32(sp)
    800057ec:	4785                	li	a5,1
    800057ee:	00f71863          	bne	a4,a5,800057fe <OSTaskDelReq+0x96>
    800057f2:	7522                	ld	a0,40(sp)
    800057f4:	616010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800057f8:	03d00793          	li	a5,61
    800057fc:	a811                	j	80005810 <OSTaskDelReq+0xa8>
    800057fe:	7782                	ld	a5,32(sp)
    80005800:	03f00713          	li	a4,63
    80005804:	04e78fa3          	sb	a4,95(a5)
    80005808:	7522                	ld	a0,40(sp)
    8000580a:	600010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000580e:	4781                	li	a5,0
    80005810:	853e                	mv	a0,a5
    80005812:	70e2                	ld	ra,56(sp)
    80005814:	6121                	addi	sp,sp,64
    80005816:	8082                	ret

0000000080005818 <OSTaskNameGet>:
    80005818:	715d                	addi	sp,sp,-80
    8000581a:	e486                	sd	ra,72(sp)
    8000581c:	87aa                	mv	a5,a0
    8000581e:	e82e                	sd	a1,16(sp)
    80005820:	e432                	sd	a2,8(sp)
    80005822:	00f10fa3          	sb	a5,31(sp)
    80005826:	fc02                	sd	zero,56(sp)
    80005828:	0007c797          	auipc	a5,0x7c
    8000582c:	bd078793          	addi	a5,a5,-1072 # 800813f8 <OSIntNesting>
    80005830:	0007c783          	lbu	a5,0(a5)
    80005834:	c799                	beqz	a5,80005842 <OSTaskNameGet+0x2a>
    80005836:	67a2                	ld	a5,8(sp)
    80005838:	4745                	li	a4,17
    8000583a:	00e78023          	sb	a4,0(a5)
    8000583e:	4781                	li	a5,0
    80005840:	a871                	j	800058dc <OSTaskNameGet+0xc4>
    80005842:	5be010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80005846:	fc2a                	sd	a0,56(sp)
    80005848:	01f14783          	lbu	a5,31(sp)
    8000584c:	0ff7f713          	andi	a4,a5,255
    80005850:	0ff00793          	li	a5,255
    80005854:	00f71b63          	bne	a4,a5,8000586a <OSTaskNameGet+0x52>
    80005858:	0007c797          	auipc	a5,0x7c
    8000585c:	ba878793          	addi	a5,a5,-1112 # 80081400 <OSTCBCur>
    80005860:	639c                	ld	a5,0(a5)
    80005862:	05a7c783          	lbu	a5,90(a5)
    80005866:	00f10fa3          	sb	a5,31(sp)
    8000586a:	01f14783          	lbu	a5,31(sp)
    8000586e:	2781                	sext.w	a5,a5
    80005870:	0007d717          	auipc	a4,0x7d
    80005874:	da870713          	addi	a4,a4,-600 # 80082618 <OSTCBPrioTbl>
    80005878:	078e                	slli	a5,a5,0x3
    8000587a:	97ba                	add	a5,a5,a4
    8000587c:	639c                	ld	a5,0(a5)
    8000587e:	f83e                	sd	a5,48(sp)
    80005880:	77c2                	ld	a5,48(sp)
    80005882:	eb99                	bnez	a5,80005898 <OSTaskNameGet+0x80>
    80005884:	7562                	ld	a0,56(sp)
    80005886:	584010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000588a:	67a2                	ld	a5,8(sp)
    8000588c:	04300713          	li	a4,67
    80005890:	00e78023          	sb	a4,0(a5)
    80005894:	4781                	li	a5,0
    80005896:	a099                	j	800058dc <OSTaskNameGet+0xc4>
    80005898:	7742                	ld	a4,48(sp)
    8000589a:	4785                	li	a5,1
    8000589c:	00f71c63          	bne	a4,a5,800058b4 <OSTaskNameGet+0x9c>
    800058a0:	7562                	ld	a0,56(sp)
    800058a2:	568010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800058a6:	67a2                	ld	a5,8(sp)
    800058a8:	04300713          	li	a4,67
    800058ac:	00e78023          	sb	a4,0(a5)
    800058b0:	4781                	li	a5,0
    800058b2:	a02d                	j	800058dc <OSTaskNameGet+0xc4>
    800058b4:	77c2                	ld	a5,48(sp)
    800058b6:	63d8                	ld	a4,128(a5)
    800058b8:	67c2                	ld	a5,16(sp)
    800058ba:	e398                	sd	a4,0(a5)
    800058bc:	67c2                	ld	a5,16(sp)
    800058be:	639c                	ld	a5,0(a5)
    800058c0:	853e                	mv	a0,a5
    800058c2:	d9dfb0ef          	jal	ra,8000165e <OS_StrLen>
    800058c6:	87aa                	mv	a5,a0
    800058c8:	02f107a3          	sb	a5,47(sp)
    800058cc:	7562                	ld	a0,56(sp)
    800058ce:	53c010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800058d2:	67a2                	ld	a5,8(sp)
    800058d4:	00078023          	sb	zero,0(a5)
    800058d8:	02f14783          	lbu	a5,47(sp)
    800058dc:	853e                	mv	a0,a5
    800058de:	60a6                	ld	ra,72(sp)
    800058e0:	6161                	addi	sp,sp,80
    800058e2:	8082                	ret

00000000800058e4 <OSTaskNameSet>:
    800058e4:	7139                	addi	sp,sp,-64
    800058e6:	fc06                	sd	ra,56(sp)
    800058e8:	87aa                	mv	a5,a0
    800058ea:	e82e                	sd	a1,16(sp)
    800058ec:	e432                	sd	a2,8(sp)
    800058ee:	00f10fa3          	sb	a5,31(sp)
    800058f2:	f402                	sd	zero,40(sp)
    800058f4:	0007c797          	auipc	a5,0x7c
    800058f8:	b0478793          	addi	a5,a5,-1276 # 800813f8 <OSIntNesting>
    800058fc:	0007c783          	lbu	a5,0(a5)
    80005900:	c791                	beqz	a5,8000590c <OSTaskNameSet+0x28>
    80005902:	67a2                	ld	a5,8(sp)
    80005904:	4749                	li	a4,18
    80005906:	00e78023          	sb	a4,0(a5)
    8000590a:	a049                	j	8000598c <OSTaskNameSet+0xa8>
    8000590c:	4f4010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80005910:	f42a                	sd	a0,40(sp)
    80005912:	01f14783          	lbu	a5,31(sp)
    80005916:	0ff7f713          	andi	a4,a5,255
    8000591a:	0ff00793          	li	a5,255
    8000591e:	00f71b63          	bne	a4,a5,80005934 <OSTaskNameSet+0x50>
    80005922:	0007c797          	auipc	a5,0x7c
    80005926:	ade78793          	addi	a5,a5,-1314 # 80081400 <OSTCBCur>
    8000592a:	639c                	ld	a5,0(a5)
    8000592c:	05a7c783          	lbu	a5,90(a5)
    80005930:	00f10fa3          	sb	a5,31(sp)
    80005934:	01f14783          	lbu	a5,31(sp)
    80005938:	2781                	sext.w	a5,a5
    8000593a:	0007d717          	auipc	a4,0x7d
    8000593e:	cde70713          	addi	a4,a4,-802 # 80082618 <OSTCBPrioTbl>
    80005942:	078e                	slli	a5,a5,0x3
    80005944:	97ba                	add	a5,a5,a4
    80005946:	639c                	ld	a5,0(a5)
    80005948:	f03e                	sd	a5,32(sp)
    8000594a:	7782                	ld	a5,32(sp)
    8000594c:	eb91                	bnez	a5,80005960 <OSTaskNameSet+0x7c>
    8000594e:	7522                	ld	a0,40(sp)
    80005950:	4ba010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005954:	67a2                	ld	a5,8(sp)
    80005956:	04300713          	li	a4,67
    8000595a:	00e78023          	sb	a4,0(a5)
    8000595e:	a03d                	j	8000598c <OSTaskNameSet+0xa8>
    80005960:	7702                	ld	a4,32(sp)
    80005962:	4785                	li	a5,1
    80005964:	00f71b63          	bne	a4,a5,8000597a <OSTaskNameSet+0x96>
    80005968:	7522                	ld	a0,40(sp)
    8000596a:	4a0010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    8000596e:	67a2                	ld	a5,8(sp)
    80005970:	04300713          	li	a4,67
    80005974:	00e78023          	sb	a4,0(a5)
    80005978:	a811                	j	8000598c <OSTaskNameSet+0xa8>
    8000597a:	7782                	ld	a5,32(sp)
    8000597c:	6742                	ld	a4,16(sp)
    8000597e:	e3d8                	sd	a4,128(a5)
    80005980:	7522                	ld	a0,40(sp)
    80005982:	488010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005986:	67a2                	ld	a5,8(sp)
    80005988:	00078023          	sb	zero,0(a5)
    8000598c:	70e2                	ld	ra,56(sp)
    8000598e:	6121                	addi	sp,sp,64
    80005990:	8082                	ret

0000000080005992 <OSTaskResume>:
    80005992:	7179                	addi	sp,sp,-48
    80005994:	f406                	sd	ra,40(sp)
    80005996:	87aa                	mv	a5,a0
    80005998:	00f107a3          	sb	a5,15(sp)
    8000599c:	ec02                	sd	zero,24(sp)
    8000599e:	462010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800059a2:	ec2a                	sd	a0,24(sp)
    800059a4:	00f14783          	lbu	a5,15(sp)
    800059a8:	2781                	sext.w	a5,a5
    800059aa:	0007d717          	auipc	a4,0x7d
    800059ae:	c6e70713          	addi	a4,a4,-914 # 80082618 <OSTCBPrioTbl>
    800059b2:	078e                	slli	a5,a5,0x3
    800059b4:	97ba                	add	a5,a5,a4
    800059b6:	639c                	ld	a5,0(a5)
    800059b8:	e83e                	sd	a5,16(sp)
    800059ba:	67c2                	ld	a5,16(sp)
    800059bc:	e799                	bnez	a5,800059ca <OSTaskResume+0x38>
    800059be:	6562                	ld	a0,24(sp)
    800059c0:	44a010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800059c4:	04600793          	li	a5,70
    800059c8:	a8f1                	j	80005aa4 <OSTaskResume+0x112>
    800059ca:	6742                	ld	a4,16(sp)
    800059cc:	4785                	li	a5,1
    800059ce:	00f71863          	bne	a4,a5,800059de <OSTaskResume+0x4c>
    800059d2:	6562                	ld	a0,24(sp)
    800059d4:	436010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800059d8:	04300793          	li	a5,67
    800059dc:	a0e1                	j	80005aa4 <OSTaskResume+0x112>
    800059de:	67c2                	ld	a5,16(sp)
    800059e0:	0587c783          	lbu	a5,88(a5)
    800059e4:	2781                	sext.w	a5,a5
    800059e6:	8ba1                	andi	a5,a5,8
    800059e8:	2781                	sext.w	a5,a5
    800059ea:	cbc5                	beqz	a5,80005a9a <OSTaskResume+0x108>
    800059ec:	67c2                	ld	a5,16(sp)
    800059ee:	0587c783          	lbu	a5,88(a5)
    800059f2:	9bdd                	andi	a5,a5,-9
    800059f4:	0ff7f713          	andi	a4,a5,255
    800059f8:	67c2                	ld	a5,16(sp)
    800059fa:	04e78c23          	sb	a4,88(a5)
    800059fe:	67c2                	ld	a5,16(sp)
    80005a00:	0587c783          	lbu	a5,88(a5)
    80005a04:	e7d1                	bnez	a5,80005a90 <OSTaskResume+0xfe>
    80005a06:	67c2                	ld	a5,16(sp)
    80005a08:	4bfc                	lw	a5,84(a5)
    80005a0a:	efbd                	bnez	a5,80005a88 <OSTaskResume+0xf6>
    80005a0c:	67c2                	ld	a5,16(sp)
    80005a0e:	05e7c703          	lbu	a4,94(a5)
    80005a12:	0007b797          	auipc	a5,0x7b
    80005a16:	5ce78793          	addi	a5,a5,1486 # 80080fe0 <OSRdyGrp>
    80005a1a:	0007c783          	lbu	a5,0(a5)
    80005a1e:	8fd9                	or	a5,a5,a4
    80005a20:	0ff7f713          	andi	a4,a5,255
    80005a24:	0007b797          	auipc	a5,0x7b
    80005a28:	5bc78793          	addi	a5,a5,1468 # 80080fe0 <OSRdyGrp>
    80005a2c:	00e78023          	sb	a4,0(a5)
    80005a30:	67c2                	ld	a5,16(sp)
    80005a32:	05c7c783          	lbu	a5,92(a5)
    80005a36:	2781                	sext.w	a5,a5
    80005a38:	0007b717          	auipc	a4,0x7b
    80005a3c:	5b070713          	addi	a4,a4,1456 # 80080fe8 <OSRdyTbl>
    80005a40:	97ba                	add	a5,a5,a4
    80005a42:	0007c683          	lbu	a3,0(a5)
    80005a46:	67c2                	ld	a5,16(sp)
    80005a48:	05d7c703          	lbu	a4,93(a5)
    80005a4c:	67c2                	ld	a5,16(sp)
    80005a4e:	05c7c783          	lbu	a5,92(a5)
    80005a52:	2781                	sext.w	a5,a5
    80005a54:	8f55                	or	a4,a4,a3
    80005a56:	0ff77713          	andi	a4,a4,255
    80005a5a:	0007b697          	auipc	a3,0x7b
    80005a5e:	58e68693          	addi	a3,a3,1422 # 80080fe8 <OSRdyTbl>
    80005a62:	97b6                	add	a5,a5,a3
    80005a64:	00e78023          	sb	a4,0(a5)
    80005a68:	6562                	ld	a0,24(sp)
    80005a6a:	3a0010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005a6e:	0007b797          	auipc	a5,0x7b
    80005a72:	a6a78793          	addi	a5,a5,-1430 # 800804d8 <OSRunning>
    80005a76:	0007c783          	lbu	a5,0(a5)
    80005a7a:	873e                	mv	a4,a5
    80005a7c:	4785                	li	a5,1
    80005a7e:	00f71c63          	bne	a4,a5,80005a96 <OSTaskResume+0x104>
    80005a82:	ac7fb0ef          	jal	ra,80001548 <OS_Sched>
    80005a86:	a801                	j	80005a96 <OSTaskResume+0x104>
    80005a88:	6562                	ld	a0,24(sp)
    80005a8a:	380010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005a8e:	a021                	j	80005a96 <OSTaskResume+0x104>
    80005a90:	6562                	ld	a0,24(sp)
    80005a92:	378010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005a96:	4781                	li	a5,0
    80005a98:	a031                	j	80005aa4 <OSTaskResume+0x112>
    80005a9a:	6562                	ld	a0,24(sp)
    80005a9c:	36e010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005aa0:	04400793          	li	a5,68
    80005aa4:	853e                	mv	a0,a5
    80005aa6:	70a2                	ld	ra,40(sp)
    80005aa8:	6145                	addi	sp,sp,48
    80005aaa:	8082                	ret

0000000080005aac <OSTaskStkChk>:
    80005aac:	715d                	addi	sp,sp,-80
    80005aae:	e486                	sd	ra,72(sp)
    80005ab0:	87aa                	mv	a5,a0
    80005ab2:	e02e                	sd	a1,0(sp)
    80005ab4:	00f107a3          	sb	a5,15(sp)
    80005ab8:	f402                	sd	zero,40(sp)
    80005aba:	6782                	ld	a5,0(sp)
    80005abc:	0007a023          	sw	zero,0(a5)
    80005ac0:	6782                	ld	a5,0(sp)
    80005ac2:	0007a223          	sw	zero,4(a5)
    80005ac6:	33a010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80005aca:	f42a                	sd	a0,40(sp)
    80005acc:	00f14783          	lbu	a5,15(sp)
    80005ad0:	0ff7f713          	andi	a4,a5,255
    80005ad4:	0ff00793          	li	a5,255
    80005ad8:	00f71b63          	bne	a4,a5,80005aee <OSTaskStkChk+0x42>
    80005adc:	0007c797          	auipc	a5,0x7c
    80005ae0:	92478793          	addi	a5,a5,-1756 # 80081400 <OSTCBCur>
    80005ae4:	639c                	ld	a5,0(a5)
    80005ae6:	05a7c783          	lbu	a5,90(a5)
    80005aea:	00f107a3          	sb	a5,15(sp)
    80005aee:	00f14783          	lbu	a5,15(sp)
    80005af2:	2781                	sext.w	a5,a5
    80005af4:	0007d717          	auipc	a4,0x7d
    80005af8:	b2470713          	addi	a4,a4,-1244 # 80082618 <OSTCBPrioTbl>
    80005afc:	078e                	slli	a5,a5,0x3
    80005afe:	97ba                	add	a5,a5,a4
    80005b00:	639c                	ld	a5,0(a5)
    80005b02:	f03e                	sd	a5,32(sp)
    80005b04:	7782                	ld	a5,32(sp)
    80005b06:	e799                	bnez	a5,80005b14 <OSTaskStkChk+0x68>
    80005b08:	7522                	ld	a0,40(sp)
    80005b0a:	300010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005b0e:	04300793          	li	a5,67
    80005b12:	a8bd                	j	80005b90 <OSTaskStkChk+0xe4>
    80005b14:	7702                	ld	a4,32(sp)
    80005b16:	4785                	li	a5,1
    80005b18:	00f71863          	bne	a4,a5,80005b28 <OSTaskStkChk+0x7c>
    80005b1c:	7522                	ld	a0,40(sp)
    80005b1e:	2ec010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005b22:	04300793          	li	a5,67
    80005b26:	a0ad                	j	80005b90 <OSTaskStkChk+0xe4>
    80005b28:	7782                	ld	a5,32(sp)
    80005b2a:	01c7d783          	lhu	a5,28(a5)
    80005b2e:	2781                	sext.w	a5,a5
    80005b30:	8b85                	andi	a5,a5,1
    80005b32:	2781                	sext.w	a5,a5
    80005b34:	e799                	bnez	a5,80005b42 <OSTaskStkChk+0x96>
    80005b36:	7522                	ld	a0,40(sp)
    80005b38:	2d2010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005b3c:	04500793          	li	a5,69
    80005b40:	a881                	j	80005b90 <OSTaskStkChk+0xe4>
    80005b42:	da02                	sw	zero,52(sp)
    80005b44:	7782                	ld	a5,32(sp)
    80005b46:	4f9c                	lw	a5,24(a5)
    80005b48:	ce3e                	sw	a5,28(sp)
    80005b4a:	7782                	ld	a5,32(sp)
    80005b4c:	6b9c                	ld	a5,16(a5)
    80005b4e:	fc3e                	sd	a5,56(sp)
    80005b50:	7522                	ld	a0,40(sp)
    80005b52:	2b8010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005b56:	a021                	j	80005b5e <OSTaskStkChk+0xb2>
    80005b58:	57d2                	lw	a5,52(sp)
    80005b5a:	2785                	addiw	a5,a5,1
    80005b5c:	da3e                	sw	a5,52(sp)
    80005b5e:	77e2                	ld	a5,56(sp)
    80005b60:	00878713          	addi	a4,a5,8
    80005b64:	fc3a                	sd	a4,56(sp)
    80005b66:	639c                	ld	a5,0(a5)
    80005b68:	dbe5                	beqz	a5,80005b58 <OSTaskStkChk+0xac>
    80005b6a:	57d2                	lw	a5,52(sp)
    80005b6c:	0037979b          	slliw	a5,a5,0x3
    80005b70:	0007871b          	sext.w	a4,a5
    80005b74:	6782                	ld	a5,0(sp)
    80005b76:	c398                	sw	a4,0(a5)
    80005b78:	4772                	lw	a4,28(sp)
    80005b7a:	57d2                	lw	a5,52(sp)
    80005b7c:	40f707bb          	subw	a5,a4,a5
    80005b80:	2781                	sext.w	a5,a5
    80005b82:	0037979b          	slliw	a5,a5,0x3
    80005b86:	0007871b          	sext.w	a4,a5
    80005b8a:	6782                	ld	a5,0(sp)
    80005b8c:	c3d8                	sw	a4,4(a5)
    80005b8e:	4781                	li	a5,0
    80005b90:	853e                	mv	a0,a5
    80005b92:	60a6                	ld	ra,72(sp)
    80005b94:	6161                	addi	sp,sp,80
    80005b96:	8082                	ret

0000000080005b98 <OSTaskSuspend>:
    80005b98:	7139                	addi	sp,sp,-64
    80005b9a:	fc06                	sd	ra,56(sp)
    80005b9c:	87aa                	mv	a5,a0
    80005b9e:	00f107a3          	sb	a5,15(sp)
    80005ba2:	f002                	sd	zero,32(sp)
    80005ba4:	25c010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80005ba8:	f02a                	sd	a0,32(sp)
    80005baa:	00f14783          	lbu	a5,15(sp)
    80005bae:	0ff7f713          	andi	a4,a5,255
    80005bb2:	0ff00793          	li	a5,255
    80005bb6:	00f71f63          	bne	a4,a5,80005bd4 <OSTaskSuspend+0x3c>
    80005bba:	0007c797          	auipc	a5,0x7c
    80005bbe:	84678793          	addi	a5,a5,-1978 # 80081400 <OSTCBCur>
    80005bc2:	639c                	ld	a5,0(a5)
    80005bc4:	05a7c783          	lbu	a5,90(a5)
    80005bc8:	00f107a3          	sb	a5,15(sp)
    80005bcc:	4785                	li	a5,1
    80005bce:	02f107a3          	sb	a5,47(sp)
    80005bd2:	a025                	j	80005bfa <OSTaskSuspend+0x62>
    80005bd4:	0007c797          	auipc	a5,0x7c
    80005bd8:	82c78793          	addi	a5,a5,-2004 # 80081400 <OSTCBCur>
    80005bdc:	639c                	ld	a5,0(a5)
    80005bde:	05a7c703          	lbu	a4,90(a5)
    80005be2:	00f14783          	lbu	a5,15(sp)
    80005be6:	0ff7f793          	andi	a5,a5,255
    80005bea:	00e79663          	bne	a5,a4,80005bf6 <OSTaskSuspend+0x5e>
    80005bee:	4785                	li	a5,1
    80005bf0:	02f107a3          	sb	a5,47(sp)
    80005bf4:	a019                	j	80005bfa <OSTaskSuspend+0x62>
    80005bf6:	020107a3          	sb	zero,47(sp)
    80005bfa:	00f14783          	lbu	a5,15(sp)
    80005bfe:	2781                	sext.w	a5,a5
    80005c00:	0007d717          	auipc	a4,0x7d
    80005c04:	a1870713          	addi	a4,a4,-1512 # 80082618 <OSTCBPrioTbl>
    80005c08:	078e                	slli	a5,a5,0x3
    80005c0a:	97ba                	add	a5,a5,a4
    80005c0c:	639c                	ld	a5,0(a5)
    80005c0e:	ec3e                	sd	a5,24(sp)
    80005c10:	67e2                	ld	a5,24(sp)
    80005c12:	e799                	bnez	a5,80005c20 <OSTaskSuspend+0x88>
    80005c14:	7502                	ld	a0,32(sp)
    80005c16:	1f4010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005c1a:	04800793          	li	a5,72
    80005c1e:	a0f1                	j	80005cea <OSTaskSuspend+0x152>
    80005c20:	6762                	ld	a4,24(sp)
    80005c22:	4785                	li	a5,1
    80005c24:	00f71863          	bne	a4,a5,80005c34 <OSTaskSuspend+0x9c>
    80005c28:	7502                	ld	a0,32(sp)
    80005c2a:	1e0010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005c2e:	04300793          	li	a5,67
    80005c32:	a865                	j	80005cea <OSTaskSuspend+0x152>
    80005c34:	67e2                	ld	a5,24(sp)
    80005c36:	05c7c783          	lbu	a5,92(a5)
    80005c3a:	00f10ba3          	sb	a5,23(sp)
    80005c3e:	01714783          	lbu	a5,23(sp)
    80005c42:	2781                	sext.w	a5,a5
    80005c44:	0007b717          	auipc	a4,0x7b
    80005c48:	3a470713          	addi	a4,a4,932 # 80080fe8 <OSRdyTbl>
    80005c4c:	97ba                	add	a5,a5,a4
    80005c4e:	0007c683          	lbu	a3,0(a5)
    80005c52:	67e2                	ld	a5,24(sp)
    80005c54:	05d7c783          	lbu	a5,93(a5)
    80005c58:	fff7c793          	not	a5,a5
    80005c5c:	0ff7f713          	andi	a4,a5,255
    80005c60:	01714783          	lbu	a5,23(sp)
    80005c64:	2781                	sext.w	a5,a5
    80005c66:	8f75                	and	a4,a4,a3
    80005c68:	0ff77713          	andi	a4,a4,255
    80005c6c:	0007b697          	auipc	a3,0x7b
    80005c70:	37c68693          	addi	a3,a3,892 # 80080fe8 <OSRdyTbl>
    80005c74:	97b6                	add	a5,a5,a3
    80005c76:	00e78023          	sb	a4,0(a5)
    80005c7a:	01714783          	lbu	a5,23(sp)
    80005c7e:	2781                	sext.w	a5,a5
    80005c80:	0007b717          	auipc	a4,0x7b
    80005c84:	36870713          	addi	a4,a4,872 # 80080fe8 <OSRdyTbl>
    80005c88:	97ba                	add	a5,a5,a4
    80005c8a:	0007c783          	lbu	a5,0(a5)
    80005c8e:	e79d                	bnez	a5,80005cbc <OSTaskSuspend+0x124>
    80005c90:	67e2                	ld	a5,24(sp)
    80005c92:	05e7c783          	lbu	a5,94(a5)
    80005c96:	fff7c793          	not	a5,a5
    80005c9a:	0ff7f713          	andi	a4,a5,255
    80005c9e:	0007b797          	auipc	a5,0x7b
    80005ca2:	34278793          	addi	a5,a5,834 # 80080fe0 <OSRdyGrp>
    80005ca6:	0007c783          	lbu	a5,0(a5)
    80005caa:	8ff9                	and	a5,a5,a4
    80005cac:	0ff7f713          	andi	a4,a5,255
    80005cb0:	0007b797          	auipc	a5,0x7b
    80005cb4:	33078793          	addi	a5,a5,816 # 80080fe0 <OSRdyGrp>
    80005cb8:	00e78023          	sb	a4,0(a5)
    80005cbc:	67e2                	ld	a5,24(sp)
    80005cbe:	0587c783          	lbu	a5,88(a5)
    80005cc2:	0087e793          	ori	a5,a5,8
    80005cc6:	0ff7f713          	andi	a4,a5,255
    80005cca:	67e2                	ld	a5,24(sp)
    80005ccc:	04e78c23          	sb	a4,88(a5)
    80005cd0:	7502                	ld	a0,32(sp)
    80005cd2:	138010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005cd6:	02f14783          	lbu	a5,47(sp)
    80005cda:	0ff7f713          	andi	a4,a5,255
    80005cde:	4785                	li	a5,1
    80005ce0:	00f71463          	bne	a4,a5,80005ce8 <OSTaskSuspend+0x150>
    80005ce4:	865fb0ef          	jal	ra,80001548 <OS_Sched>
    80005ce8:	4781                	li	a5,0
    80005cea:	853e                	mv	a0,a5
    80005cec:	70e2                	ld	ra,56(sp)
    80005cee:	6121                	addi	sp,sp,64
    80005cf0:	8082                	ret

0000000080005cf2 <OSTaskQuery>:
    80005cf2:	7179                	addi	sp,sp,-48
    80005cf4:	f406                	sd	ra,40(sp)
    80005cf6:	87aa                	mv	a5,a0
    80005cf8:	e02e                	sd	a1,0(sp)
    80005cfa:	00f107a3          	sb	a5,15(sp)
    80005cfe:	ec02                	sd	zero,24(sp)
    80005d00:	100010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80005d04:	ec2a                	sd	a0,24(sp)
    80005d06:	00f14783          	lbu	a5,15(sp)
    80005d0a:	0ff7f713          	andi	a4,a5,255
    80005d0e:	0ff00793          	li	a5,255
    80005d12:	00f71b63          	bne	a4,a5,80005d28 <OSTaskQuery+0x36>
    80005d16:	0007b797          	auipc	a5,0x7b
    80005d1a:	6ea78793          	addi	a5,a5,1770 # 80081400 <OSTCBCur>
    80005d1e:	639c                	ld	a5,0(a5)
    80005d20:	05a7c783          	lbu	a5,90(a5)
    80005d24:	00f107a3          	sb	a5,15(sp)
    80005d28:	00f14783          	lbu	a5,15(sp)
    80005d2c:	2781                	sext.w	a5,a5
    80005d2e:	0007d717          	auipc	a4,0x7d
    80005d32:	8ea70713          	addi	a4,a4,-1814 # 80082618 <OSTCBPrioTbl>
    80005d36:	078e                	slli	a5,a5,0x3
    80005d38:	97ba                	add	a5,a5,a4
    80005d3a:	639c                	ld	a5,0(a5)
    80005d3c:	e83e                	sd	a5,16(sp)
    80005d3e:	67c2                	ld	a5,16(sp)
    80005d40:	e799                	bnez	a5,80005d4e <OSTaskQuery+0x5c>
    80005d42:	6562                	ld	a0,24(sp)
    80005d44:	0c6010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005d48:	02900793          	li	a5,41
    80005d4c:	a02d                	j	80005d76 <OSTaskQuery+0x84>
    80005d4e:	6742                	ld	a4,16(sp)
    80005d50:	4785                	li	a5,1
    80005d52:	00f71863          	bne	a4,a5,80005d62 <OSTaskQuery+0x70>
    80005d56:	6562                	ld	a0,24(sp)
    80005d58:	0b2010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005d5c:	04300793          	li	a5,67
    80005d60:	a819                	j	80005d76 <OSTaskQuery+0x84>
    80005d62:	09000613          	li	a2,144
    80005d66:	65c2                	ld	a1,16(sp)
    80005d68:	6502                	ld	a0,0(sp)
    80005d6a:	fa0fb0ef          	jal	ra,8000150a <OS_MemCopy>
    80005d6e:	6562                	ld	a0,24(sp)
    80005d70:	09a010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005d74:	4781                	li	a5,0
    80005d76:	853e                	mv	a0,a5
    80005d78:	70a2                	ld	ra,40(sp)
    80005d7a:	6145                	addi	sp,sp,48
    80005d7c:	8082                	ret

0000000080005d7e <OSTaskRegGet>:
    80005d7e:	7139                	addi	sp,sp,-64
    80005d80:	fc06                	sd	ra,56(sp)
    80005d82:	87aa                	mv	a5,a0
    80005d84:	872e                	mv	a4,a1
    80005d86:	e032                	sd	a2,0(sp)
    80005d88:	00f107a3          	sb	a5,15(sp)
    80005d8c:	87ba                	mv	a5,a4
    80005d8e:	00f10723          	sb	a5,14(sp)
    80005d92:	f002                	sd	zero,32(sp)
    80005d94:	06c010ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80005d98:	f02a                	sd	a0,32(sp)
    80005d9a:	00f14783          	lbu	a5,15(sp)
    80005d9e:	0ff7f713          	andi	a4,a5,255
    80005da2:	0ff00793          	li	a5,255
    80005da6:	00f71963          	bne	a4,a5,80005db8 <OSTaskRegGet+0x3a>
    80005daa:	0007b797          	auipc	a5,0x7b
    80005dae:	65678793          	addi	a5,a5,1622 # 80081400 <OSTCBCur>
    80005db2:	639c                	ld	a5,0(a5)
    80005db4:	f43e                	sd	a5,40(sp)
    80005db6:	a821                	j	80005dce <OSTaskRegGet+0x50>
    80005db8:	00f14783          	lbu	a5,15(sp)
    80005dbc:	2781                	sext.w	a5,a5
    80005dbe:	0007d717          	auipc	a4,0x7d
    80005dc2:	85a70713          	addi	a4,a4,-1958 # 80082618 <OSTCBPrioTbl>
    80005dc6:	078e                	slli	a5,a5,0x3
    80005dc8:	97ba                	add	a5,a5,a4
    80005dca:	639c                	ld	a5,0(a5)
    80005dcc:	f43e                	sd	a5,40(sp)
    80005dce:	00e14783          	lbu	a5,14(sp)
    80005dd2:	2781                	sext.w	a5,a5
    80005dd4:	7722                	ld	a4,40(sp)
    80005dd6:	02078793          	addi	a5,a5,32
    80005dda:	078a                	slli	a5,a5,0x2
    80005ddc:	97ba                	add	a5,a5,a4
    80005dde:	479c                	lw	a5,8(a5)
    80005de0:	ce3e                	sw	a5,28(sp)
    80005de2:	7502                	ld	a0,32(sp)
    80005de4:	026010ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005de8:	6782                	ld	a5,0(sp)
    80005dea:	00078023          	sb	zero,0(a5)
    80005dee:	47f2                	lw	a5,28(sp)
    80005df0:	853e                	mv	a0,a5
    80005df2:	70e2                	ld	ra,56(sp)
    80005df4:	6121                	addi	sp,sp,64
    80005df6:	8082                	ret

0000000080005df8 <OSTaskRegSet>:
    80005df8:	7179                	addi	sp,sp,-48
    80005dfa:	f406                	sd	ra,40(sp)
    80005dfc:	87aa                	mv	a5,a0
    80005dfe:	8732                	mv	a4,a2
    80005e00:	e036                	sd	a3,0(sp)
    80005e02:	00f107a3          	sb	a5,15(sp)
    80005e06:	87ae                	mv	a5,a1
    80005e08:	00f10723          	sb	a5,14(sp)
    80005e0c:	87ba                	mv	a5,a4
    80005e0e:	c43e                	sw	a5,8(sp)
    80005e10:	e802                	sd	zero,16(sp)
    80005e12:	7ef000ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80005e16:	e82a                	sd	a0,16(sp)
    80005e18:	00f14783          	lbu	a5,15(sp)
    80005e1c:	0ff7f713          	andi	a4,a5,255
    80005e20:	0ff00793          	li	a5,255
    80005e24:	00f71963          	bne	a4,a5,80005e36 <OSTaskRegSet+0x3e>
    80005e28:	0007b797          	auipc	a5,0x7b
    80005e2c:	5d878793          	addi	a5,a5,1496 # 80081400 <OSTCBCur>
    80005e30:	639c                	ld	a5,0(a5)
    80005e32:	ec3e                	sd	a5,24(sp)
    80005e34:	a821                	j	80005e4c <OSTaskRegSet+0x54>
    80005e36:	00f14783          	lbu	a5,15(sp)
    80005e3a:	2781                	sext.w	a5,a5
    80005e3c:	0007c717          	auipc	a4,0x7c
    80005e40:	7dc70713          	addi	a4,a4,2012 # 80082618 <OSTCBPrioTbl>
    80005e44:	078e                	slli	a5,a5,0x3
    80005e46:	97ba                	add	a5,a5,a4
    80005e48:	639c                	ld	a5,0(a5)
    80005e4a:	ec3e                	sd	a5,24(sp)
    80005e4c:	00e14783          	lbu	a5,14(sp)
    80005e50:	2781                	sext.w	a5,a5
    80005e52:	6762                	ld	a4,24(sp)
    80005e54:	02078793          	addi	a5,a5,32
    80005e58:	078a                	slli	a5,a5,0x2
    80005e5a:	97ba                	add	a5,a5,a4
    80005e5c:	4722                	lw	a4,8(sp)
    80005e5e:	c798                	sw	a4,8(a5)
    80005e60:	6542                	ld	a0,16(sp)
    80005e62:	7a9000ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005e66:	6782                	ld	a5,0(sp)
    80005e68:	00078023          	sb	zero,0(a5)
    80005e6c:	0001                	nop
    80005e6e:	70a2                	ld	ra,40(sp)
    80005e70:	6145                	addi	sp,sp,48
    80005e72:	8082                	ret

0000000080005e74 <OS_TaskReturn>:
    80005e74:	1141                	addi	sp,sp,-16
    80005e76:	e406                	sd	ra,8(sp)
    80005e78:	0007b797          	auipc	a5,0x7b
    80005e7c:	58878793          	addi	a5,a5,1416 # 80081400 <OSTCBCur>
    80005e80:	639c                	ld	a5,0(a5)
    80005e82:	853e                	mv	a0,a5
    80005e84:	26e010ef          	jal	ra,800070f2 <OSTaskReturnHook>
    80005e88:	0ff00513          	li	a0,255
    80005e8c:	e50ff0ef          	jal	ra,800054dc <OSTaskDel>
    80005e90:	0001                	nop
    80005e92:	60a2                	ld	ra,8(sp)
    80005e94:	0141                	addi	sp,sp,16
    80005e96:	8082                	ret

0000000080005e98 <OS_TaskStkClr>:
    80005e98:	1141                	addi	sp,sp,-16
    80005e9a:	e42a                	sd	a0,8(sp)
    80005e9c:	87ae                	mv	a5,a1
    80005e9e:	8732                	mv	a4,a2
    80005ea0:	c23e                	sw	a5,4(sp)
    80005ea2:	87ba                	mv	a5,a4
    80005ea4:	00f11123          	sh	a5,2(sp)
    80005ea8:	00215783          	lhu	a5,2(sp)
    80005eac:	2781                	sext.w	a5,a5
    80005eae:	8b85                	andi	a5,a5,1
    80005eb0:	2781                	sext.w	a5,a5
    80005eb2:	c785                	beqz	a5,80005eda <OS_TaskStkClr+0x42>
    80005eb4:	00215783          	lhu	a5,2(sp)
    80005eb8:	2781                	sext.w	a5,a5
    80005eba:	8b89                	andi	a5,a5,2
    80005ebc:	2781                	sext.w	a5,a5
    80005ebe:	cf91                	beqz	a5,80005eda <OS_TaskStkClr+0x42>
    80005ec0:	a811                	j	80005ed4 <OS_TaskStkClr+0x3c>
    80005ec2:	4792                	lw	a5,4(sp)
    80005ec4:	37fd                	addiw	a5,a5,-1
    80005ec6:	c23e                	sw	a5,4(sp)
    80005ec8:	67a2                	ld	a5,8(sp)
    80005eca:	00878713          	addi	a4,a5,8
    80005ece:	e43a                	sd	a4,8(sp)
    80005ed0:	0007b023          	sd	zero,0(a5)
    80005ed4:	4792                	lw	a5,4(sp)
    80005ed6:	2781                	sext.w	a5,a5
    80005ed8:	f7ed                	bnez	a5,80005ec2 <OS_TaskStkClr+0x2a>
    80005eda:	0001                	nop
    80005edc:	0141                	addi	sp,sp,16
    80005ede:	8082                	ret

0000000080005ee0 <OSTimeDly>:
    80005ee0:	7179                	addi	sp,sp,-48
    80005ee2:	f406                	sd	ra,40(sp)
    80005ee4:	87aa                	mv	a5,a0
    80005ee6:	c63e                	sw	a5,12(sp)
    80005ee8:	ec02                	sd	zero,24(sp)
    80005eea:	0007b797          	auipc	a5,0x7b
    80005eee:	50e78793          	addi	a5,a5,1294 # 800813f8 <OSIntNesting>
    80005ef2:	0007c783          	lbu	a5,0(a5)
    80005ef6:	ebf9                	bnez	a5,80005fcc <OSTimeDly+0xec>
    80005ef8:	0007a797          	auipc	a5,0x7a
    80005efc:	5d078793          	addi	a5,a5,1488 # 800804c8 <OSLockNesting>
    80005f00:	0007c783          	lbu	a5,0(a5)
    80005f04:	e7f1                	bnez	a5,80005fd0 <OSTimeDly+0xf0>
    80005f06:	47b2                	lw	a5,12(sp)
    80005f08:	2781                	sext.w	a5,a5
    80005f0a:	c7e1                	beqz	a5,80005fd2 <OSTimeDly+0xf2>
    80005f0c:	6f5000ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    80005f10:	ec2a                	sd	a0,24(sp)
    80005f12:	0007b797          	auipc	a5,0x7b
    80005f16:	4ee78793          	addi	a5,a5,1262 # 80081400 <OSTCBCur>
    80005f1a:	639c                	ld	a5,0(a5)
    80005f1c:	05c7c783          	lbu	a5,92(a5)
    80005f20:	00f10ba3          	sb	a5,23(sp)
    80005f24:	01714783          	lbu	a5,23(sp)
    80005f28:	2781                	sext.w	a5,a5
    80005f2a:	0007b717          	auipc	a4,0x7b
    80005f2e:	0be70713          	addi	a4,a4,190 # 80080fe8 <OSRdyTbl>
    80005f32:	97ba                	add	a5,a5,a4
    80005f34:	0007c683          	lbu	a3,0(a5)
    80005f38:	0007b797          	auipc	a5,0x7b
    80005f3c:	4c878793          	addi	a5,a5,1224 # 80081400 <OSTCBCur>
    80005f40:	639c                	ld	a5,0(a5)
    80005f42:	05d7c783          	lbu	a5,93(a5)
    80005f46:	fff7c793          	not	a5,a5
    80005f4a:	0ff7f713          	andi	a4,a5,255
    80005f4e:	01714783          	lbu	a5,23(sp)
    80005f52:	2781                	sext.w	a5,a5
    80005f54:	8f75                	and	a4,a4,a3
    80005f56:	0ff77713          	andi	a4,a4,255
    80005f5a:	0007b697          	auipc	a3,0x7b
    80005f5e:	08e68693          	addi	a3,a3,142 # 80080fe8 <OSRdyTbl>
    80005f62:	97b6                	add	a5,a5,a3
    80005f64:	00e78023          	sb	a4,0(a5)
    80005f68:	01714783          	lbu	a5,23(sp)
    80005f6c:	2781                	sext.w	a5,a5
    80005f6e:	0007b717          	auipc	a4,0x7b
    80005f72:	07a70713          	addi	a4,a4,122 # 80080fe8 <OSRdyTbl>
    80005f76:	97ba                	add	a5,a5,a4
    80005f78:	0007c783          	lbu	a5,0(a5)
    80005f7c:	eb9d                	bnez	a5,80005fb2 <OSTimeDly+0xd2>
    80005f7e:	0007b797          	auipc	a5,0x7b
    80005f82:	48278793          	addi	a5,a5,1154 # 80081400 <OSTCBCur>
    80005f86:	639c                	ld	a5,0(a5)
    80005f88:	05e7c783          	lbu	a5,94(a5)
    80005f8c:	fff7c793          	not	a5,a5
    80005f90:	0ff7f713          	andi	a4,a5,255
    80005f94:	0007b797          	auipc	a5,0x7b
    80005f98:	04c78793          	addi	a5,a5,76 # 80080fe0 <OSRdyGrp>
    80005f9c:	0007c783          	lbu	a5,0(a5)
    80005fa0:	8ff9                	and	a5,a5,a4
    80005fa2:	0ff7f713          	andi	a4,a5,255
    80005fa6:	0007b797          	auipc	a5,0x7b
    80005faa:	03a78793          	addi	a5,a5,58 # 80080fe0 <OSRdyGrp>
    80005fae:	00e78023          	sb	a4,0(a5)
    80005fb2:	0007b797          	auipc	a5,0x7b
    80005fb6:	44e78793          	addi	a5,a5,1102 # 80081400 <OSTCBCur>
    80005fba:	639c                	ld	a5,0(a5)
    80005fbc:	4732                	lw	a4,12(sp)
    80005fbe:	cbf8                	sw	a4,84(a5)
    80005fc0:	6562                	ld	a0,24(sp)
    80005fc2:	649000ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80005fc6:	d82fb0ef          	jal	ra,80001548 <OS_Sched>
    80005fca:	a021                	j	80005fd2 <OSTimeDly+0xf2>
    80005fcc:	0001                	nop
    80005fce:	a011                	j	80005fd2 <OSTimeDly+0xf2>
    80005fd0:	0001                	nop
    80005fd2:	70a2                	ld	ra,40(sp)
    80005fd4:	6145                	addi	sp,sp,48
    80005fd6:	8082                	ret

0000000080005fd8 <OSTimeDlyHMSM>:
    80005fd8:	7179                	addi	sp,sp,-48
    80005fda:	f406                	sd	ra,40(sp)
    80005fdc:	87aa                	mv	a5,a0
    80005fde:	8736                	mv	a4,a3
    80005fe0:	00f107a3          	sb	a5,15(sp)
    80005fe4:	87ae                	mv	a5,a1
    80005fe6:	00f10723          	sb	a5,14(sp)
    80005fea:	87b2                	mv	a5,a2
    80005fec:	00f106a3          	sb	a5,13(sp)
    80005ff0:	87ba                	mv	a5,a4
    80005ff2:	00f11523          	sh	a5,10(sp)
    80005ff6:	0007b797          	auipc	a5,0x7b
    80005ffa:	40278793          	addi	a5,a5,1026 # 800813f8 <OSIntNesting>
    80005ffe:	0007c783          	lbu	a5,0(a5)
    80006002:	c781                	beqz	a5,8000600a <OSTimeDlyHMSM+0x32>
    80006004:	05500793          	li	a5,85
    80006008:	a88d                	j	8000607a <OSTimeDlyHMSM+0xa2>
    8000600a:	0007a797          	auipc	a5,0x7a
    8000600e:	4be78793          	addi	a5,a5,1214 # 800804c8 <OSLockNesting>
    80006012:	0007c783          	lbu	a5,0(a5)
    80006016:	c781                	beqz	a5,8000601e <OSTimeDlyHMSM+0x46>
    80006018:	03200793          	li	a5,50
    8000601c:	a8b9                	j	8000607a <OSTimeDlyHMSM+0xa2>
    8000601e:	00f14703          	lbu	a4,15(sp)
    80006022:	6785                	lui	a5,0x1
    80006024:	e1078793          	addi	a5,a5,-496 # e10 <RISCV_MIE_MSIE+0xe08>
    80006028:	02f706b3          	mul	a3,a4,a5
    8000602c:	00e14703          	lbu	a4,14(sp)
    80006030:	87ba                	mv	a5,a4
    80006032:	0792                	slli	a5,a5,0x4
    80006034:	8f99                	sub	a5,a5,a4
    80006036:	078a                	slli	a5,a5,0x2
    80006038:	00f68733          	add	a4,a3,a5
    8000603c:	00d14783          	lbu	a5,13(sp)
    80006040:	97ba                	add	a5,a5,a4
    80006042:	0007871b          	sext.w	a4,a5
    80006046:	06400793          	li	a5,100
    8000604a:	02f707bb          	mulw	a5,a4,a5
    8000604e:	0007871b          	sext.w	a4,a5
    80006052:	00a15683          	lhu	a3,10(sp)
    80006056:	06400793          	li	a5,100
    8000605a:	02f687b3          	mul	a5,a3,a5
    8000605e:	1f478693          	addi	a3,a5,500
    80006062:	3e800793          	li	a5,1000
    80006066:	02f6d7b3          	divu	a5,a3,a5
    8000606a:	2781                	sext.w	a5,a5
    8000606c:	9fb9                	addw	a5,a5,a4
    8000606e:	ce3e                	sw	a5,28(sp)
    80006070:	47f2                	lw	a5,28(sp)
    80006072:	853e                	mv	a0,a5
    80006074:	e6dff0ef          	jal	ra,80005ee0 <OSTimeDly>
    80006078:	4781                	li	a5,0
    8000607a:	853e                	mv	a0,a5
    8000607c:	70a2                	ld	ra,40(sp)
    8000607e:	6145                	addi	sp,sp,48
    80006080:	8082                	ret

0000000080006082 <OSTimeDlyResume>:
    80006082:	7179                	addi	sp,sp,-48
    80006084:	f406                	sd	ra,40(sp)
    80006086:	87aa                	mv	a5,a0
    80006088:	00f107a3          	sb	a5,15(sp)
    8000608c:	ec02                	sd	zero,24(sp)
    8000608e:	00f14783          	lbu	a5,15(sp)
    80006092:	0ff7f713          	andi	a4,a5,255
    80006096:	03e00793          	li	a5,62
    8000609a:	00e7f563          	bleu	a4,a5,800060a4 <OSTimeDlyResume+0x22>
    8000609e:	02a00793          	li	a5,42
    800060a2:	a231                	j	800061ae <OSTimeDlyResume+0x12c>
    800060a4:	55d000ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800060a8:	ec2a                	sd	a0,24(sp)
    800060aa:	00f14783          	lbu	a5,15(sp)
    800060ae:	2781                	sext.w	a5,a5
    800060b0:	0007c717          	auipc	a4,0x7c
    800060b4:	56870713          	addi	a4,a4,1384 # 80082618 <OSTCBPrioTbl>
    800060b8:	078e                	slli	a5,a5,0x3
    800060ba:	97ba                	add	a5,a5,a4
    800060bc:	639c                	ld	a5,0(a5)
    800060be:	e83e                	sd	a5,16(sp)
    800060c0:	67c2                	ld	a5,16(sp)
    800060c2:	e799                	bnez	a5,800060d0 <OSTimeDlyResume+0x4e>
    800060c4:	6562                	ld	a0,24(sp)
    800060c6:	545000ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800060ca:	04300793          	li	a5,67
    800060ce:	a0c5                	j	800061ae <OSTimeDlyResume+0x12c>
    800060d0:	6742                	ld	a4,16(sp)
    800060d2:	4785                	li	a5,1
    800060d4:	00f71863          	bne	a4,a5,800060e4 <OSTimeDlyResume+0x62>
    800060d8:	6562                	ld	a0,24(sp)
    800060da:	531000ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800060de:	04300793          	li	a5,67
    800060e2:	a0f1                	j	800061ae <OSTimeDlyResume+0x12c>
    800060e4:	67c2                	ld	a5,16(sp)
    800060e6:	4bfc                	lw	a5,84(a5)
    800060e8:	e799                	bnez	a5,800060f6 <OSTimeDlyResume+0x74>
    800060ea:	6562                	ld	a0,24(sp)
    800060ec:	51f000ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800060f0:	05000793          	li	a5,80
    800060f4:	a86d                	j	800061ae <OSTimeDlyResume+0x12c>
    800060f6:	67c2                	ld	a5,16(sp)
    800060f8:	0407aa23          	sw	zero,84(a5)
    800060fc:	67c2                	ld	a5,16(sp)
    800060fe:	0587c783          	lbu	a5,88(a5)
    80006102:	2781                	sext.w	a5,a5
    80006104:	0377f793          	andi	a5,a5,55
    80006108:	2781                	sext.w	a5,a5
    8000610a:	c385                	beqz	a5,8000612a <OSTimeDlyResume+0xa8>
    8000610c:	67c2                	ld	a5,16(sp)
    8000610e:	0587c783          	lbu	a5,88(a5)
    80006112:	fc87f793          	andi	a5,a5,-56
    80006116:	0ff7f713          	andi	a4,a5,255
    8000611a:	67c2                	ld	a5,16(sp)
    8000611c:	04e78c23          	sb	a4,88(a5)
    80006120:	67c2                	ld	a5,16(sp)
    80006122:	4705                	li	a4,1
    80006124:	04e78ca3          	sb	a4,89(a5)
    80006128:	a021                	j	80006130 <OSTimeDlyResume+0xae>
    8000612a:	67c2                	ld	a5,16(sp)
    8000612c:	04078ca3          	sb	zero,89(a5)
    80006130:	67c2                	ld	a5,16(sp)
    80006132:	0587c783          	lbu	a5,88(a5)
    80006136:	2781                	sext.w	a5,a5
    80006138:	8ba1                	andi	a5,a5,8
    8000613a:	2781                	sext.w	a5,a5
    8000613c:	e7ad                	bnez	a5,800061a6 <OSTimeDlyResume+0x124>
    8000613e:	67c2                	ld	a5,16(sp)
    80006140:	05e7c703          	lbu	a4,94(a5)
    80006144:	0007b797          	auipc	a5,0x7b
    80006148:	e9c78793          	addi	a5,a5,-356 # 80080fe0 <OSRdyGrp>
    8000614c:	0007c783          	lbu	a5,0(a5)
    80006150:	8fd9                	or	a5,a5,a4
    80006152:	0ff7f713          	andi	a4,a5,255
    80006156:	0007b797          	auipc	a5,0x7b
    8000615a:	e8a78793          	addi	a5,a5,-374 # 80080fe0 <OSRdyGrp>
    8000615e:	00e78023          	sb	a4,0(a5)
    80006162:	67c2                	ld	a5,16(sp)
    80006164:	05c7c783          	lbu	a5,92(a5)
    80006168:	2781                	sext.w	a5,a5
    8000616a:	0007b717          	auipc	a4,0x7b
    8000616e:	e7e70713          	addi	a4,a4,-386 # 80080fe8 <OSRdyTbl>
    80006172:	97ba                	add	a5,a5,a4
    80006174:	0007c683          	lbu	a3,0(a5)
    80006178:	67c2                	ld	a5,16(sp)
    8000617a:	05d7c703          	lbu	a4,93(a5)
    8000617e:	67c2                	ld	a5,16(sp)
    80006180:	05c7c783          	lbu	a5,92(a5)
    80006184:	2781                	sext.w	a5,a5
    80006186:	8f55                	or	a4,a4,a3
    80006188:	0ff77713          	andi	a4,a4,255
    8000618c:	0007b697          	auipc	a3,0x7b
    80006190:	e5c68693          	addi	a3,a3,-420 # 80080fe8 <OSRdyTbl>
    80006194:	97b6                	add	a5,a5,a3
    80006196:	00e78023          	sb	a4,0(a5)
    8000619a:	6562                	ld	a0,24(sp)
    8000619c:	46f000ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800061a0:	ba8fb0ef          	jal	ra,80001548 <OS_Sched>
    800061a4:	a021                	j	800061ac <OSTimeDlyResume+0x12a>
    800061a6:	6562                	ld	a0,24(sp)
    800061a8:	463000ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800061ac:	4781                	li	a5,0
    800061ae:	853e                	mv	a0,a5
    800061b0:	70a2                	ld	ra,40(sp)
    800061b2:	6145                	addi	sp,sp,48
    800061b4:	8082                	ret

00000000800061b6 <OSTimeGet>:
    800061b6:	1101                	addi	sp,sp,-32
    800061b8:	ec06                	sd	ra,24(sp)
    800061ba:	e402                	sd	zero,8(sp)
    800061bc:	445000ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800061c0:	e42a                	sd	a0,8(sp)
    800061c2:	0007b797          	auipc	a5,0x7b
    800061c6:	24a78793          	addi	a5,a5,586 # 8008140c <OSTime>
    800061ca:	439c                	lw	a5,0(a5)
    800061cc:	c23e                	sw	a5,4(sp)
    800061ce:	6522                	ld	a0,8(sp)
    800061d0:	43b000ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    800061d4:	4792                	lw	a5,4(sp)
    800061d6:	853e                	mv	a0,a5
    800061d8:	60e2                	ld	ra,24(sp)
    800061da:	6105                	addi	sp,sp,32
    800061dc:	8082                	ret

00000000800061de <OSTimeSet>:
    800061de:	7179                	addi	sp,sp,-48
    800061e0:	f406                	sd	ra,40(sp)
    800061e2:	87aa                	mv	a5,a0
    800061e4:	c63e                	sw	a5,12(sp)
    800061e6:	ec02                	sd	zero,24(sp)
    800061e8:	419000ef          	jal	ra,80006e00 <OS_CPU_SR_Save>
    800061ec:	ec2a                	sd	a0,24(sp)
    800061ee:	0007b797          	auipc	a5,0x7b
    800061f2:	21e78793          	addi	a5,a5,542 # 8008140c <OSTime>
    800061f6:	4732                	lw	a4,12(sp)
    800061f8:	c398                	sw	a4,0(a5)
    800061fa:	6562                	ld	a0,24(sp)
    800061fc:	40f000ef          	jal	ra,80006e0a <OS_CPU_SR_Restore>
    80006200:	0001                	nop
    80006202:	70a2                	ld	ra,40(sp)
    80006204:	6145                	addi	sp,sp,48
    80006206:	8082                	ret

0000000080006208 <OSTmrCreate>:
    80006208:	715d                	addi	sp,sp,-80
    8000620a:	e486                	sd	ra,72(sp)
    8000620c:	ec36                	sd	a3,24(sp)
    8000620e:	e83a                	sd	a4,16(sp)
    80006210:	e43e                	sd	a5,8(sp)
    80006212:	e042                	sd	a6,0(sp)
    80006214:	87aa                	mv	a5,a0
    80006216:	d63e                	sw	a5,44(sp)
    80006218:	87ae                	mv	a5,a1
    8000621a:	d43e                	sw	a5,40(sp)
    8000621c:	87b2                	mv	a5,a2
    8000621e:	02f103a3          	sb	a5,39(sp)
    80006222:	0007b797          	auipc	a5,0x7b
    80006226:	1d678793          	addi	a5,a5,470 # 800813f8 <OSIntNesting>
    8000622a:	0007c783          	lbu	a5,0(a5)
    8000622e:	cb81                	beqz	a5,8000623e <OSTmrCreate+0x36>
    80006230:	6782                	ld	a5,0(sp)
    80006232:	f8b00713          	li	a4,-117
    80006236:	00e78023          	sb	a4,0(a5)
    8000623a:	4781                	li	a5,0
    8000623c:	a8b9                	j	8000629a <OSTmrCreate+0x92>
    8000623e:	ec6fa0ef          	jal	ra,80000904 <OSSchedLock>
    80006242:	588000ef          	jal	ra,800067ca <OSTmr_Alloc>
    80006246:	fc2a                	sd	a0,56(sp)
    80006248:	77e2                	ld	a5,56(sp)
    8000624a:	eb91                	bnez	a5,8000625e <OSTmrCreate+0x56>
    8000624c:	f28fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006250:	6782                	ld	a5,0(sp)
    80006252:	f8600713          	li	a4,-122
    80006256:	00e78023          	sb	a4,0(a5)
    8000625a:	4781                	li	a5,0
    8000625c:	a83d                	j	8000629a <OSTmrCreate+0x92>
    8000625e:	77e2                	ld	a5,56(sp)
    80006260:	4705                	li	a4,1
    80006262:	04e780a3          	sb	a4,65(a5)
    80006266:	77e2                	ld	a5,56(sp)
    80006268:	5732                	lw	a4,44(sp)
    8000626a:	d7d8                	sw	a4,44(a5)
    8000626c:	77e2                	ld	a5,56(sp)
    8000626e:	5722                	lw	a4,40(sp)
    80006270:	db98                	sw	a4,48(a5)
    80006272:	77e2                	ld	a5,56(sp)
    80006274:	02714703          	lbu	a4,39(sp)
    80006278:	04e78023          	sb	a4,64(a5)
    8000627c:	77e2                	ld	a5,56(sp)
    8000627e:	6762                	ld	a4,24(sp)
    80006280:	e798                	sd	a4,8(a5)
    80006282:	77e2                	ld	a5,56(sp)
    80006284:	6742                	ld	a4,16(sp)
    80006286:	eb98                	sd	a4,16(a5)
    80006288:	77e2                	ld	a5,56(sp)
    8000628a:	6722                	ld	a4,8(sp)
    8000628c:	ff98                	sd	a4,56(a5)
    8000628e:	ee6fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006292:	6782                	ld	a5,0(sp)
    80006294:	00078023          	sb	zero,0(a5)
    80006298:	77e2                	ld	a5,56(sp)
    8000629a:	853e                	mv	a0,a5
    8000629c:	60a6                	ld	ra,72(sp)
    8000629e:	6161                	addi	sp,sp,80
    800062a0:	8082                	ret

00000000800062a2 <OSTmrDel>:
    800062a2:	1101                	addi	sp,sp,-32
    800062a4:	ec06                	sd	ra,24(sp)
    800062a6:	e42a                	sd	a0,8(sp)
    800062a8:	e02e                	sd	a1,0(sp)
    800062aa:	67a2                	ld	a5,8(sp)
    800062ac:	0007c783          	lbu	a5,0(a5)
    800062b0:	873e                	mv	a4,a5
    800062b2:	06400793          	li	a5,100
    800062b6:	00f70963          	beq	a4,a5,800062c8 <OSTmrDel+0x26>
    800062ba:	6782                	ld	a5,0(sp)
    800062bc:	f8900713          	li	a4,-119
    800062c0:	00e78023          	sb	a4,0(a5)
    800062c4:	4781                	li	a5,0
    800062c6:	a859                	j	8000635c <OSTmrDel+0xba>
    800062c8:	0007b797          	auipc	a5,0x7b
    800062cc:	13078793          	addi	a5,a5,304 # 800813f8 <OSIntNesting>
    800062d0:	0007c783          	lbu	a5,0(a5)
    800062d4:	cb81                	beqz	a5,800062e4 <OSTmrDel+0x42>
    800062d6:	6782                	ld	a5,0(sp)
    800062d8:	f8b00713          	li	a4,-117
    800062dc:	00e78023          	sb	a4,0(a5)
    800062e0:	4781                	li	a5,0
    800062e2:	a8ad                	j	8000635c <OSTmrDel+0xba>
    800062e4:	e20fa0ef          	jal	ra,80000904 <OSSchedLock>
    800062e8:	67a2                	ld	a5,8(sp)
    800062ea:	0417c783          	lbu	a5,65(a5)
    800062ee:	2781                	sext.w	a5,a5
    800062f0:	86be                	mv	a3,a5
    800062f2:	4709                	li	a4,2
    800062f4:	00d74863          	blt	a4,a3,80006304 <OSTmrDel+0x62>
    800062f8:	86be                	mv	a3,a5
    800062fa:	4705                	li	a4,1
    800062fc:	02e6d563          	ble	a4,a3,80006326 <OSTmrDel+0x84>
    80006300:	cf8d                	beqz	a5,8000633a <OSTmrDel+0x98>
    80006302:	a0a9                	j	8000634c <OSTmrDel+0xaa>
    80006304:	873e                	mv	a4,a5
    80006306:	478d                	li	a5,3
    80006308:	04f71263          	bne	a4,a5,8000634c <OSTmrDel+0xaa>
    8000630c:	6522                	ld	a0,8(sp)
    8000630e:	09b000ef          	jal	ra,80006ba8 <OSTmr_Unlink>
    80006312:	6522                	ld	a0,8(sp)
    80006314:	536000ef          	jal	ra,8000684a <OSTmr_Free>
    80006318:	e5cfa0ef          	jal	ra,80000974 <OSSchedUnlock>
    8000631c:	6782                	ld	a5,0(sp)
    8000631e:	00078023          	sb	zero,0(a5)
    80006322:	4785                	li	a5,1
    80006324:	a825                	j	8000635c <OSTmrDel+0xba>
    80006326:	6522                	ld	a0,8(sp)
    80006328:	522000ef          	jal	ra,8000684a <OSTmr_Free>
    8000632c:	e48fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006330:	6782                	ld	a5,0(sp)
    80006332:	00078023          	sb	zero,0(a5)
    80006336:	4785                	li	a5,1
    80006338:	a015                	j	8000635c <OSTmrDel+0xba>
    8000633a:	e3afa0ef          	jal	ra,80000974 <OSSchedUnlock>
    8000633e:	6782                	ld	a5,0(sp)
    80006340:	f8700713          	li	a4,-121
    80006344:	00e78023          	sb	a4,0(a5)
    80006348:	4781                	li	a5,0
    8000634a:	a809                	j	8000635c <OSTmrDel+0xba>
    8000634c:	e28fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006350:	6782                	ld	a5,0(sp)
    80006352:	f8d00713          	li	a4,-115
    80006356:	00e78023          	sb	a4,0(a5)
    8000635a:	4781                	li	a5,0
    8000635c:	853e                	mv	a0,a5
    8000635e:	60e2                	ld	ra,24(sp)
    80006360:	6105                	addi	sp,sp,32
    80006362:	8082                	ret

0000000080006364 <OSTmrNameGet>:
    80006364:	7139                	addi	sp,sp,-64
    80006366:	fc06                	sd	ra,56(sp)
    80006368:	ec2a                	sd	a0,24(sp)
    8000636a:	e82e                	sd	a1,16(sp)
    8000636c:	e432                	sd	a2,8(sp)
    8000636e:	67e2                	ld	a5,24(sp)
    80006370:	0007c783          	lbu	a5,0(a5)
    80006374:	873e                	mv	a4,a5
    80006376:	06400793          	li	a5,100
    8000637a:	00f70963          	beq	a4,a5,8000638c <OSTmrNameGet+0x28>
    8000637e:	67a2                	ld	a5,8(sp)
    80006380:	f8900713          	li	a4,-119
    80006384:	00e78023          	sb	a4,0(a5)
    80006388:	4781                	li	a5,0
    8000638a:	a051                	j	8000640e <OSTmrNameGet+0xaa>
    8000638c:	0007b797          	auipc	a5,0x7b
    80006390:	06c78793          	addi	a5,a5,108 # 800813f8 <OSIntNesting>
    80006394:	0007c783          	lbu	a5,0(a5)
    80006398:	c799                	beqz	a5,800063a6 <OSTmrNameGet+0x42>
    8000639a:	67a2                	ld	a5,8(sp)
    8000639c:	4745                	li	a4,17
    8000639e:	00e78023          	sb	a4,0(a5)
    800063a2:	4781                	li	a5,0
    800063a4:	a0ad                	j	8000640e <OSTmrNameGet+0xaa>
    800063a6:	d5efa0ef          	jal	ra,80000904 <OSSchedLock>
    800063aa:	67e2                	ld	a5,24(sp)
    800063ac:	0417c783          	lbu	a5,65(a5)
    800063b0:	2781                	sext.w	a5,a5
    800063b2:	873e                	mv	a4,a5
    800063b4:	cf05                	beqz	a4,800063ec <OSTmrNameGet+0x88>
    800063b6:	873e                	mv	a4,a5
    800063b8:	04074363          	bltz	a4,800063fe <OSTmrNameGet+0x9a>
    800063bc:	873e                	mv	a4,a5
    800063be:	478d                	li	a5,3
    800063c0:	02e7cf63          	blt	a5,a4,800063fe <OSTmrNameGet+0x9a>
    800063c4:	67e2                	ld	a5,24(sp)
    800063c6:	7f98                	ld	a4,56(a5)
    800063c8:	67c2                	ld	a5,16(sp)
    800063ca:	e398                	sd	a4,0(a5)
    800063cc:	67c2                	ld	a5,16(sp)
    800063ce:	639c                	ld	a5,0(a5)
    800063d0:	853e                	mv	a0,a5
    800063d2:	a8cfb0ef          	jal	ra,8000165e <OS_StrLen>
    800063d6:	87aa                	mv	a5,a0
    800063d8:	02f107a3          	sb	a5,47(sp)
    800063dc:	d98fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    800063e0:	67a2                	ld	a5,8(sp)
    800063e2:	00078023          	sb	zero,0(a5)
    800063e6:	02f14783          	lbu	a5,47(sp)
    800063ea:	a015                	j	8000640e <OSTmrNameGet+0xaa>
    800063ec:	d88fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    800063f0:	67a2                	ld	a5,8(sp)
    800063f2:	f8700713          	li	a4,-121
    800063f6:	00e78023          	sb	a4,0(a5)
    800063fa:	4781                	li	a5,0
    800063fc:	a809                	j	8000640e <OSTmrNameGet+0xaa>
    800063fe:	d76fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006402:	67a2                	ld	a5,8(sp)
    80006404:	f8d00713          	li	a4,-115
    80006408:	00e78023          	sb	a4,0(a5)
    8000640c:	4781                	li	a5,0
    8000640e:	853e                	mv	a0,a5
    80006410:	70e2                	ld	ra,56(sp)
    80006412:	6121                	addi	sp,sp,64
    80006414:	8082                	ret

0000000080006416 <OSTmrRemainGet>:
    80006416:	7179                	addi	sp,sp,-48
    80006418:	f406                	sd	ra,40(sp)
    8000641a:	e42a                	sd	a0,8(sp)
    8000641c:	e02e                	sd	a1,0(sp)
    8000641e:	67a2                	ld	a5,8(sp)
    80006420:	0007c783          	lbu	a5,0(a5)
    80006424:	873e                	mv	a4,a5
    80006426:	06400793          	li	a5,100
    8000642a:	00f70963          	beq	a4,a5,8000643c <OSTmrRemainGet+0x26>
    8000642e:	6782                	ld	a5,0(sp)
    80006430:	f8900713          	li	a4,-119
    80006434:	00e78023          	sb	a4,0(a5)
    80006438:	4781                	li	a5,0
    8000643a:	a0dd                	j	80006520 <OSTmrRemainGet+0x10a>
    8000643c:	0007b797          	auipc	a5,0x7b
    80006440:	fbc78793          	addi	a5,a5,-68 # 800813f8 <OSIntNesting>
    80006444:	0007c783          	lbu	a5,0(a5)
    80006448:	cb81                	beqz	a5,80006458 <OSTmrRemainGet+0x42>
    8000644a:	6782                	ld	a5,0(sp)
    8000644c:	f8b00713          	li	a4,-117
    80006450:	00e78023          	sb	a4,0(a5)
    80006454:	4781                	li	a5,0
    80006456:	a0e9                	j	80006520 <OSTmrRemainGet+0x10a>
    80006458:	cacfa0ef          	jal	ra,80000904 <OSSchedLock>
    8000645c:	67a2                	ld	a5,8(sp)
    8000645e:	0417c783          	lbu	a5,65(a5)
    80006462:	2781                	sext.w	a5,a5
    80006464:	86be                	mv	a3,a5
    80006466:	4705                	li	a4,1
    80006468:	04e68163          	beq	a3,a4,800064aa <OSTmrRemainGet+0x94>
    8000646c:	86be                	mv	a3,a5
    8000646e:	4705                	li	a4,1
    80006470:	00d74463          	blt	a4,a3,80006478 <OSTmrRemainGet+0x62>
    80006474:	c7c9                	beqz	a5,800064fe <OSTmrRemainGet+0xe8>
    80006476:	a869                	j	80006510 <OSTmrRemainGet+0xfa>
    80006478:	86be                	mv	a3,a5
    8000647a:	4709                	li	a4,2
    8000647c:	06e68a63          	beq	a3,a4,800064f0 <OSTmrRemainGet+0xda>
    80006480:	873e                	mv	a4,a5
    80006482:	478d                	li	a5,3
    80006484:	08f71663          	bne	a4,a5,80006510 <OSTmrRemainGet+0xfa>
    80006488:	67a2                	ld	a5,8(sp)
    8000648a:	5798                	lw	a4,40(a5)
    8000648c:	0007b797          	auipc	a5,0x7b
    80006490:	f7c78793          	addi	a5,a5,-132 # 80081408 <OSTmrTime>
    80006494:	439c                	lw	a5,0(a5)
    80006496:	40f707bb          	subw	a5,a4,a5
    8000649a:	ce3e                	sw	a5,28(sp)
    8000649c:	cd8fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    800064a0:	6782                	ld	a5,0(sp)
    800064a2:	00078023          	sb	zero,0(a5)
    800064a6:	47f2                	lw	a5,28(sp)
    800064a8:	a8a5                	j	80006520 <OSTmrRemainGet+0x10a>
    800064aa:	67a2                	ld	a5,8(sp)
    800064ac:	0407c783          	lbu	a5,64(a5)
    800064b0:	2781                	sext.w	a5,a5
    800064b2:	873e                	mv	a4,a5
    800064b4:	4789                	li	a5,2
    800064b6:	02f71263          	bne	a4,a5,800064da <OSTmrRemainGet+0xc4>
    800064ba:	67a2                	ld	a5,8(sp)
    800064bc:	57dc                	lw	a5,44(a5)
    800064be:	e789                	bnez	a5,800064c8 <OSTmrRemainGet+0xb2>
    800064c0:	67a2                	ld	a5,8(sp)
    800064c2:	5b9c                	lw	a5,48(a5)
    800064c4:	ce3e                	sw	a5,28(sp)
    800064c6:	a021                	j	800064ce <OSTmrRemainGet+0xb8>
    800064c8:	67a2                	ld	a5,8(sp)
    800064ca:	57dc                	lw	a5,44(a5)
    800064cc:	ce3e                	sw	a5,28(sp)
    800064ce:	ca6fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    800064d2:	6782                	ld	a5,0(sp)
    800064d4:	00078023          	sb	zero,0(a5)
    800064d8:	a811                	j	800064ec <OSTmrRemainGet+0xd6>
    800064da:	67a2                	ld	a5,8(sp)
    800064dc:	57dc                	lw	a5,44(a5)
    800064de:	ce3e                	sw	a5,28(sp)
    800064e0:	c94fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    800064e4:	6782                	ld	a5,0(sp)
    800064e6:	00078023          	sb	zero,0(a5)
    800064ea:	0001                	nop
    800064ec:	47f2                	lw	a5,28(sp)
    800064ee:	a80d                	j	80006520 <OSTmrRemainGet+0x10a>
    800064f0:	c84fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    800064f4:	6782                	ld	a5,0(sp)
    800064f6:	00078023          	sb	zero,0(a5)
    800064fa:	4781                	li	a5,0
    800064fc:	a015                	j	80006520 <OSTmrRemainGet+0x10a>
    800064fe:	c76fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006502:	6782                	ld	a5,0(sp)
    80006504:	f8700713          	li	a4,-121
    80006508:	00e78023          	sb	a4,0(a5)
    8000650c:	4781                	li	a5,0
    8000650e:	a809                	j	80006520 <OSTmrRemainGet+0x10a>
    80006510:	c64fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006514:	6782                	ld	a5,0(sp)
    80006516:	f8d00713          	li	a4,-115
    8000651a:	00e78023          	sb	a4,0(a5)
    8000651e:	4781                	li	a5,0
    80006520:	853e                	mv	a0,a5
    80006522:	70a2                	ld	ra,40(sp)
    80006524:	6145                	addi	sp,sp,48
    80006526:	8082                	ret

0000000080006528 <OSTmrStateGet>:
    80006528:	7179                	addi	sp,sp,-48
    8000652a:	f406                	sd	ra,40(sp)
    8000652c:	e42a                	sd	a0,8(sp)
    8000652e:	e02e                	sd	a1,0(sp)
    80006530:	67a2                	ld	a5,8(sp)
    80006532:	0007c783          	lbu	a5,0(a5)
    80006536:	873e                	mv	a4,a5
    80006538:	06400793          	li	a5,100
    8000653c:	00f70963          	beq	a4,a5,8000654e <OSTmrStateGet+0x26>
    80006540:	6782                	ld	a5,0(sp)
    80006542:	f8900713          	li	a4,-119
    80006546:	00e78023          	sb	a4,0(a5)
    8000654a:	4781                	li	a5,0
    8000654c:	a8b1                	j	800065a8 <OSTmrStateGet+0x80>
    8000654e:	0007b797          	auipc	a5,0x7b
    80006552:	eaa78793          	addi	a5,a5,-342 # 800813f8 <OSIntNesting>
    80006556:	0007c783          	lbu	a5,0(a5)
    8000655a:	cb81                	beqz	a5,8000656a <OSTmrStateGet+0x42>
    8000655c:	6782                	ld	a5,0(sp)
    8000655e:	f8b00713          	li	a4,-117
    80006562:	00e78023          	sb	a4,0(a5)
    80006566:	4781                	li	a5,0
    80006568:	a081                	j	800065a8 <OSTmrStateGet+0x80>
    8000656a:	b9afa0ef          	jal	ra,80000904 <OSSchedLock>
    8000656e:	67a2                	ld	a5,8(sp)
    80006570:	0417c783          	lbu	a5,65(a5)
    80006574:	00f10fa3          	sb	a5,31(sp)
    80006578:	01f14783          	lbu	a5,31(sp)
    8000657c:	2781                	sext.w	a5,a5
    8000657e:	0007879b          	sext.w	a5,a5
    80006582:	0007871b          	sext.w	a4,a5
    80006586:	478d                	li	a5,3
    80006588:	00e7e663          	bltu	a5,a4,80006594 <OSTmrStateGet+0x6c>
    8000658c:	6782                	ld	a5,0(sp)
    8000658e:	00078023          	sb	zero,0(a5)
    80006592:	a039                	j	800065a0 <OSTmrStateGet+0x78>
    80006594:	6782                	ld	a5,0(sp)
    80006596:	f8d00713          	li	a4,-115
    8000659a:	00e78023          	sb	a4,0(a5)
    8000659e:	0001                	nop
    800065a0:	bd4fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    800065a4:	01f14783          	lbu	a5,31(sp)
    800065a8:	853e                	mv	a0,a5
    800065aa:	70a2                	ld	ra,40(sp)
    800065ac:	6145                	addi	sp,sp,48
    800065ae:	8082                	ret

00000000800065b0 <OSTmrStart>:
    800065b0:	1101                	addi	sp,sp,-32
    800065b2:	ec06                	sd	ra,24(sp)
    800065b4:	e42a                	sd	a0,8(sp)
    800065b6:	e02e                	sd	a1,0(sp)
    800065b8:	67a2                	ld	a5,8(sp)
    800065ba:	0007c783          	lbu	a5,0(a5)
    800065be:	873e                	mv	a4,a5
    800065c0:	06400793          	li	a5,100
    800065c4:	00f70963          	beq	a4,a5,800065d6 <OSTmrStart+0x26>
    800065c8:	6782                	ld	a5,0(sp)
    800065ca:	f8900713          	li	a4,-119
    800065ce:	00e78023          	sb	a4,0(a5)
    800065d2:	4781                	li	a5,0
    800065d4:	a869                	j	8000666e <OSTmrStart+0xbe>
    800065d6:	0007b797          	auipc	a5,0x7b
    800065da:	e2278793          	addi	a5,a5,-478 # 800813f8 <OSIntNesting>
    800065de:	0007c783          	lbu	a5,0(a5)
    800065e2:	cb81                	beqz	a5,800065f2 <OSTmrStart+0x42>
    800065e4:	6782                	ld	a5,0(sp)
    800065e6:	f8b00713          	li	a4,-117
    800065ea:	00e78023          	sb	a4,0(a5)
    800065ee:	4781                	li	a5,0
    800065f0:	a8bd                	j	8000666e <OSTmrStart+0xbe>
    800065f2:	b12fa0ef          	jal	ra,80000904 <OSSchedLock>
    800065f6:	67a2                	ld	a5,8(sp)
    800065f8:	0417c783          	lbu	a5,65(a5)
    800065fc:	2781                	sext.w	a5,a5
    800065fe:	86be                	mv	a3,a5
    80006600:	4709                	li	a4,2
    80006602:	00d74863          	blt	a4,a3,80006612 <OSTmrStart+0x62>
    80006606:	86be                	mv	a3,a5
    80006608:	4705                	li	a4,1
    8000660a:	02e6d663          	ble	a4,a3,80006636 <OSTmrStart+0x86>
    8000660e:	cf9d                	beqz	a5,8000664c <OSTmrStart+0x9c>
    80006610:	a0b9                	j	8000665e <OSTmrStart+0xae>
    80006612:	873e                	mv	a4,a5
    80006614:	478d                	li	a5,3
    80006616:	04f71463          	bne	a4,a5,8000665e <OSTmrStart+0xae>
    8000661a:	6522                	ld	a0,8(sp)
    8000661c:	58c000ef          	jal	ra,80006ba8 <OSTmr_Unlink>
    80006620:	4581                	li	a1,0
    80006622:	6522                	ld	a0,8(sp)
    80006624:	49a000ef          	jal	ra,80006abe <OSTmr_Link>
    80006628:	b4cfa0ef          	jal	ra,80000974 <OSSchedUnlock>
    8000662c:	6782                	ld	a5,0(sp)
    8000662e:	00078023          	sb	zero,0(a5)
    80006632:	4785                	li	a5,1
    80006634:	a82d                	j	8000666e <OSTmrStart+0xbe>
    80006636:	4581                	li	a1,0
    80006638:	6522                	ld	a0,8(sp)
    8000663a:	484000ef          	jal	ra,80006abe <OSTmr_Link>
    8000663e:	b36fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006642:	6782                	ld	a5,0(sp)
    80006644:	00078023          	sb	zero,0(a5)
    80006648:	4785                	li	a5,1
    8000664a:	a015                	j	8000666e <OSTmrStart+0xbe>
    8000664c:	b28fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006650:	6782                	ld	a5,0(sp)
    80006652:	f8700713          	li	a4,-121
    80006656:	00e78023          	sb	a4,0(a5)
    8000665a:	4781                	li	a5,0
    8000665c:	a809                	j	8000666e <OSTmrStart+0xbe>
    8000665e:	b16fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006662:	6782                	ld	a5,0(sp)
    80006664:	f8d00713          	li	a4,-115
    80006668:	00e78023          	sb	a4,0(a5)
    8000666c:	4781                	li	a5,0
    8000666e:	853e                	mv	a0,a5
    80006670:	60e2                	ld	ra,24(sp)
    80006672:	6105                	addi	sp,sp,32
    80006674:	8082                	ret

0000000080006676 <OSTmrStop>:
    80006676:	7139                	addi	sp,sp,-64
    80006678:	fc06                	sd	ra,56(sp)
    8000667a:	ec2a                	sd	a0,24(sp)
    8000667c:	87ae                	mv	a5,a1
    8000667e:	e432                	sd	a2,8(sp)
    80006680:	e036                	sd	a3,0(sp)
    80006682:	00f10ba3          	sb	a5,23(sp)
    80006686:	67e2                	ld	a5,24(sp)
    80006688:	0007c783          	lbu	a5,0(a5)
    8000668c:	873e                	mv	a4,a5
    8000668e:	06400793          	li	a5,100
    80006692:	00f70963          	beq	a4,a5,800066a4 <OSTmrStop+0x2e>
    80006696:	6782                	ld	a5,0(sp)
    80006698:	f8900713          	li	a4,-119
    8000669c:	00e78023          	sb	a4,0(a5)
    800066a0:	4781                	li	a5,0
    800066a2:	a8ed                	j	8000679c <OSTmrStop+0x126>
    800066a4:	0007b797          	auipc	a5,0x7b
    800066a8:	d5478793          	addi	a5,a5,-684 # 800813f8 <OSIntNesting>
    800066ac:	0007c783          	lbu	a5,0(a5)
    800066b0:	cb81                	beqz	a5,800066c0 <OSTmrStop+0x4a>
    800066b2:	6782                	ld	a5,0(sp)
    800066b4:	f8b00713          	li	a4,-117
    800066b8:	00e78023          	sb	a4,0(a5)
    800066bc:	4781                	li	a5,0
    800066be:	a8f9                	j	8000679c <OSTmrStop+0x126>
    800066c0:	a44fa0ef          	jal	ra,80000904 <OSSchedLock>
    800066c4:	67e2                	ld	a5,24(sp)
    800066c6:	0417c783          	lbu	a5,65(a5)
    800066ca:	2781                	sext.w	a5,a5
    800066cc:	86be                	mv	a3,a5
    800066ce:	4709                	li	a4,2
    800066d0:	00d74863          	blt	a4,a3,800066e0 <OSTmrStop+0x6a>
    800066d4:	86be                	mv	a3,a5
    800066d6:	4705                	li	a4,1
    800066d8:	08e6d863          	ble	a4,a3,80006768 <OSTmrStop+0xf2>
    800066dc:	cfd9                	beqz	a5,8000677a <OSTmrStop+0x104>
    800066de:	a07d                	j	8000678c <OSTmrStop+0x116>
    800066e0:	873e                	mv	a4,a5
    800066e2:	478d                	li	a5,3
    800066e4:	0af71463          	bne	a4,a5,8000678c <OSTmrStop+0x116>
    800066e8:	6562                	ld	a0,24(sp)
    800066ea:	4be000ef          	jal	ra,80006ba8 <OSTmr_Unlink>
    800066ee:	6782                	ld	a5,0(sp)
    800066f0:	00078023          	sb	zero,0(a5)
    800066f4:	01714783          	lbu	a5,23(sp)
    800066f8:	2781                	sext.w	a5,a5
    800066fa:	86be                	mv	a3,a5
    800066fc:	470d                	li	a4,3
    800066fe:	00e68863          	beq	a3,a4,8000670e <OSTmrStop+0x98>
    80006702:	86be                	mv	a3,a5
    80006704:	4711                	li	a4,4
    80006706:	02e68663          	beq	a3,a4,80006732 <OSTmrStop+0xbc>
    8000670a:	cbb1                	beqz	a5,8000675e <OSTmrStop+0xe8>
    8000670c:	a099                	j	80006752 <OSTmrStop+0xdc>
    8000670e:	67e2                	ld	a5,24(sp)
    80006710:	679c                	ld	a5,8(a5)
    80006712:	f43e                	sd	a5,40(sp)
    80006714:	77a2                	ld	a5,40(sp)
    80006716:	cb81                	beqz	a5,80006726 <OSTmrStop+0xb0>
    80006718:	67e2                	ld	a5,24(sp)
    8000671a:	6b9c                	ld	a5,16(a5)
    8000671c:	7722                	ld	a4,40(sp)
    8000671e:	85be                	mv	a1,a5
    80006720:	6562                	ld	a0,24(sp)
    80006722:	9702                	jalr	a4
    80006724:	a835                	j	80006760 <OSTmrStop+0xea>
    80006726:	6782                	ld	a5,0(sp)
    80006728:	f8f00713          	li	a4,-113
    8000672c:	00e78023          	sb	a4,0(a5)
    80006730:	a805                	j	80006760 <OSTmrStop+0xea>
    80006732:	67e2                	ld	a5,24(sp)
    80006734:	679c                	ld	a5,8(a5)
    80006736:	f43e                	sd	a5,40(sp)
    80006738:	77a2                	ld	a5,40(sp)
    8000673a:	c791                	beqz	a5,80006746 <OSTmrStop+0xd0>
    8000673c:	77a2                	ld	a5,40(sp)
    8000673e:	65a2                	ld	a1,8(sp)
    80006740:	6562                	ld	a0,24(sp)
    80006742:	9782                	jalr	a5
    80006744:	a831                	j	80006760 <OSTmrStop+0xea>
    80006746:	6782                	ld	a5,0(sp)
    80006748:	f8f00713          	li	a4,-113
    8000674c:	00e78023          	sb	a4,0(a5)
    80006750:	a801                	j	80006760 <OSTmrStop+0xea>
    80006752:	6782                	ld	a5,0(sp)
    80006754:	f8400713          	li	a4,-124
    80006758:	00e78023          	sb	a4,0(a5)
    8000675c:	a011                	j	80006760 <OSTmrStop+0xea>
    8000675e:	0001                	nop
    80006760:	a14fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006764:	4785                	li	a5,1
    80006766:	a81d                	j	8000679c <OSTmrStop+0x126>
    80006768:	a0cfa0ef          	jal	ra,80000974 <OSSchedUnlock>
    8000676c:	6782                	ld	a5,0(sp)
    8000676e:	f8e00713          	li	a4,-114
    80006772:	00e78023          	sb	a4,0(a5)
    80006776:	4785                	li	a5,1
    80006778:	a015                	j	8000679c <OSTmrStop+0x126>
    8000677a:	9fafa0ef          	jal	ra,80000974 <OSSchedUnlock>
    8000677e:	6782                	ld	a5,0(sp)
    80006780:	f8700713          	li	a4,-121
    80006784:	00e78023          	sb	a4,0(a5)
    80006788:	4781                	li	a5,0
    8000678a:	a809                	j	8000679c <OSTmrStop+0x126>
    8000678c:	9e8fa0ef          	jal	ra,80000974 <OSSchedUnlock>
    80006790:	6782                	ld	a5,0(sp)
    80006792:	f8d00713          	li	a4,-115
    80006796:	00e78023          	sb	a4,0(a5)
    8000679a:	4781                	li	a5,0
    8000679c:	853e                	mv	a0,a5
    8000679e:	70e2                	ld	ra,56(sp)
    800067a0:	6121                	addi	sp,sp,64
    800067a2:	8082                	ret

00000000800067a4 <OSTmrSignal>:
    800067a4:	1101                	addi	sp,sp,-32
    800067a6:	ec06                	sd	ra,24(sp)
    800067a8:	0007a797          	auipc	a5,0x7a
    800067ac:	d2878793          	addi	a5,a5,-728 # 800804d0 <OSTmrSemSignal>
    800067b0:	639c                	ld	a5,0(a5)
    800067b2:	853e                	mv	a0,a5
    800067b4:	de6fe0ef          	jal	ra,80004d9a <OSSemPost>
    800067b8:	87aa                	mv	a5,a0
    800067ba:	00f107a3          	sb	a5,15(sp)
    800067be:	00f14783          	lbu	a5,15(sp)
    800067c2:	853e                	mv	a0,a5
    800067c4:	60e2                	ld	ra,24(sp)
    800067c6:	6105                	addi	sp,sp,32
    800067c8:	8082                	ret

00000000800067ca <OSTmr_Alloc>:
    800067ca:	1141                	addi	sp,sp,-16
    800067cc:	0007a797          	auipc	a5,0x7a
    800067d0:	c7478793          	addi	a5,a5,-908 # 80080440 <OSTmrFreeList>
    800067d4:	639c                	ld	a5,0(a5)
    800067d6:	e399                	bnez	a5,800067dc <OSTmr_Alloc+0x12>
    800067d8:	4781                	li	a5,0
    800067da:	a0ad                	j	80006844 <OSTmr_Alloc+0x7a>
    800067dc:	0007a797          	auipc	a5,0x7a
    800067e0:	c6478793          	addi	a5,a5,-924 # 80080440 <OSTmrFreeList>
    800067e4:	639c                	ld	a5,0(a5)
    800067e6:	e43e                	sd	a5,8(sp)
    800067e8:	67a2                	ld	a5,8(sp)
    800067ea:	6f98                	ld	a4,24(a5)
    800067ec:	0007a797          	auipc	a5,0x7a
    800067f0:	c5478793          	addi	a5,a5,-940 # 80080440 <OSTmrFreeList>
    800067f4:	e398                	sd	a4,0(a5)
    800067f6:	67a2                	ld	a5,8(sp)
    800067f8:	0007bc23          	sd	zero,24(a5)
    800067fc:	67a2                	ld	a5,8(sp)
    800067fe:	0207b023          	sd	zero,32(a5)
    80006802:	0007a797          	auipc	a5,0x7a
    80006806:	cde78793          	addi	a5,a5,-802 # 800804e0 <OSTmrUsed>
    8000680a:	0007d783          	lhu	a5,0(a5)
    8000680e:	2785                	addiw	a5,a5,1
    80006810:	03079713          	slli	a4,a5,0x30
    80006814:	9341                	srli	a4,a4,0x30
    80006816:	0007a797          	auipc	a5,0x7a
    8000681a:	cca78793          	addi	a5,a5,-822 # 800804e0 <OSTmrUsed>
    8000681e:	00e79023          	sh	a4,0(a5)
    80006822:	0007a797          	auipc	a5,0x7a
    80006826:	6ca78793          	addi	a5,a5,1738 # 80080eec <OSTmrFree>
    8000682a:	0007d783          	lhu	a5,0(a5)
    8000682e:	37fd                	addiw	a5,a5,-1
    80006830:	03079713          	slli	a4,a5,0x30
    80006834:	9341                	srli	a4,a4,0x30
    80006836:	0007a797          	auipc	a5,0x7a
    8000683a:	6b678793          	addi	a5,a5,1718 # 80080eec <OSTmrFree>
    8000683e:	00e79023          	sh	a4,0(a5)
    80006842:	67a2                	ld	a5,8(sp)
    80006844:	853e                	mv	a0,a5
    80006846:	0141                	addi	sp,sp,16
    80006848:	8082                	ret

000000008000684a <OSTmr_Free>:
    8000684a:	1141                	addi	sp,sp,-16
    8000684c:	e42a                	sd	a0,8(sp)
    8000684e:	67a2                	ld	a5,8(sp)
    80006850:	040780a3          	sb	zero,65(a5)
    80006854:	67a2                	ld	a5,8(sp)
    80006856:	04078023          	sb	zero,64(a5)
    8000685a:	67a2                	ld	a5,8(sp)
    8000685c:	0207a823          	sw	zero,48(a5)
    80006860:	67a2                	ld	a5,8(sp)
    80006862:	0207a423          	sw	zero,40(a5)
    80006866:	67a2                	ld	a5,8(sp)
    80006868:	0007b423          	sd	zero,8(a5)
    8000686c:	67a2                	ld	a5,8(sp)
    8000686e:	0007b823          	sd	zero,16(a5)
    80006872:	67a2                	ld	a5,8(sp)
    80006874:	0007a717          	auipc	a4,0x7a
    80006878:	89470713          	addi	a4,a4,-1900 # 80080108 <OSUnMapTbl+0x100>
    8000687c:	ff98                	sd	a4,56(a5)
    8000687e:	67a2                	ld	a5,8(sp)
    80006880:	0207b023          	sd	zero,32(a5)
    80006884:	0007a797          	auipc	a5,0x7a
    80006888:	bbc78793          	addi	a5,a5,-1092 # 80080440 <OSTmrFreeList>
    8000688c:	6398                	ld	a4,0(a5)
    8000688e:	67a2                	ld	a5,8(sp)
    80006890:	ef98                	sd	a4,24(a5)
    80006892:	0007a797          	auipc	a5,0x7a
    80006896:	bae78793          	addi	a5,a5,-1106 # 80080440 <OSTmrFreeList>
    8000689a:	6722                	ld	a4,8(sp)
    8000689c:	e398                	sd	a4,0(a5)
    8000689e:	0007a797          	auipc	a5,0x7a
    800068a2:	c4278793          	addi	a5,a5,-958 # 800804e0 <OSTmrUsed>
    800068a6:	0007d783          	lhu	a5,0(a5)
    800068aa:	37fd                	addiw	a5,a5,-1
    800068ac:	03079713          	slli	a4,a5,0x30
    800068b0:	9341                	srli	a4,a4,0x30
    800068b2:	0007a797          	auipc	a5,0x7a
    800068b6:	c2e78793          	addi	a5,a5,-978 # 800804e0 <OSTmrUsed>
    800068ba:	00e79023          	sh	a4,0(a5)
    800068be:	0007a797          	auipc	a5,0x7a
    800068c2:	62e78793          	addi	a5,a5,1582 # 80080eec <OSTmrFree>
    800068c6:	0007d783          	lhu	a5,0(a5)
    800068ca:	2785                	addiw	a5,a5,1
    800068cc:	03079713          	slli	a4,a5,0x30
    800068d0:	9341                	srli	a4,a4,0x30
    800068d2:	0007a797          	auipc	a5,0x7a
    800068d6:	61a78793          	addi	a5,a5,1562 # 80080eec <OSTmrFree>
    800068da:	00e79023          	sh	a4,0(a5)
    800068de:	0001                	nop
    800068e0:	0141                	addi	sp,sp,16
    800068e2:	8082                	ret

00000000800068e4 <OSTmr_Init>:
    800068e4:	7139                	addi	sp,sp,-64
    800068e6:	fc06                	sd	ra,56(sp)
    800068e8:	48000593          	li	a1,1152
    800068ec:	0007a517          	auipc	a0,0x7a
    800068f0:	c9c50513          	addi	a0,a0,-868 # 80080588 <OSTmrTbl>
    800068f4:	be7fa0ef          	jal	ra,800014da <OS_MemClr>
    800068f8:	08000593          	li	a1,128
    800068fc:	0007a517          	auipc	a0,0x7a
    80006900:	b4c50513          	addi	a0,a0,-1204 # 80080448 <OSTmrWheelTbl>
    80006904:	bd7fa0ef          	jal	ra,800014da <OS_MemClr>
    80006908:	02011723          	sh	zero,46(sp)
    8000690c:	a885                	j	8000697c <OSTmr_Init+0x98>
    8000690e:	02e15783          	lhu	a5,46(sp)
    80006912:	2785                	addiw	a5,a5,1
    80006914:	00f11f23          	sh	a5,30(sp)
    80006918:	02e15783          	lhu	a5,46(sp)
    8000691c:	0007871b          	sext.w	a4,a5
    80006920:	87ba                	mv	a5,a4
    80006922:	078e                	slli	a5,a5,0x3
    80006924:	97ba                	add	a5,a5,a4
    80006926:	078e                	slli	a5,a5,0x3
    80006928:	0007a717          	auipc	a4,0x7a
    8000692c:	c6070713          	addi	a4,a4,-928 # 80080588 <OSTmrTbl>
    80006930:	97ba                	add	a5,a5,a4
    80006932:	f03e                	sd	a5,32(sp)
    80006934:	01e15783          	lhu	a5,30(sp)
    80006938:	0007871b          	sext.w	a4,a5
    8000693c:	87ba                	mv	a5,a4
    8000693e:	078e                	slli	a5,a5,0x3
    80006940:	97ba                	add	a5,a5,a4
    80006942:	078e                	slli	a5,a5,0x3
    80006944:	0007a717          	auipc	a4,0x7a
    80006948:	c4470713          	addi	a4,a4,-956 # 80080588 <OSTmrTbl>
    8000694c:	97ba                	add	a5,a5,a4
    8000694e:	e83e                	sd	a5,16(sp)
    80006950:	7782                	ld	a5,32(sp)
    80006952:	06400713          	li	a4,100
    80006956:	00e78023          	sb	a4,0(a5)
    8000695a:	7782                	ld	a5,32(sp)
    8000695c:	040780a3          	sb	zero,65(a5)
    80006960:	7782                	ld	a5,32(sp)
    80006962:	6742                	ld	a4,16(sp)
    80006964:	ef98                	sd	a4,24(a5)
    80006966:	7782                	ld	a5,32(sp)
    80006968:	00079717          	auipc	a4,0x79
    8000696c:	7a070713          	addi	a4,a4,1952 # 80080108 <OSUnMapTbl+0x100>
    80006970:	ff98                	sd	a4,56(a5)
    80006972:	02e15783          	lhu	a5,46(sp)
    80006976:	2785                	addiw	a5,a5,1
    80006978:	02f11723          	sh	a5,46(sp)
    8000697c:	02e15783          	lhu	a5,46(sp)
    80006980:	0007871b          	sext.w	a4,a5
    80006984:	47b9                	li	a5,14
    80006986:	f8e7f4e3          	bleu	a4,a5,8000690e <OSTmr_Init+0x2a>
    8000698a:	02e15783          	lhu	a5,46(sp)
    8000698e:	0007871b          	sext.w	a4,a5
    80006992:	87ba                	mv	a5,a4
    80006994:	078e                	slli	a5,a5,0x3
    80006996:	97ba                	add	a5,a5,a4
    80006998:	078e                	slli	a5,a5,0x3
    8000699a:	0007a717          	auipc	a4,0x7a
    8000699e:	bee70713          	addi	a4,a4,-1042 # 80080588 <OSTmrTbl>
    800069a2:	97ba                	add	a5,a5,a4
    800069a4:	f03e                	sd	a5,32(sp)
    800069a6:	7782                	ld	a5,32(sp)
    800069a8:	06400713          	li	a4,100
    800069ac:	00e78023          	sb	a4,0(a5)
    800069b0:	7782                	ld	a5,32(sp)
    800069b2:	040780a3          	sb	zero,65(a5)
    800069b6:	7782                	ld	a5,32(sp)
    800069b8:	0007bc23          	sd	zero,24(a5)
    800069bc:	7782                	ld	a5,32(sp)
    800069be:	00079717          	auipc	a4,0x79
    800069c2:	74a70713          	addi	a4,a4,1866 # 80080108 <OSUnMapTbl+0x100>
    800069c6:	ff98                	sd	a4,56(a5)
    800069c8:	0007b797          	auipc	a5,0x7b
    800069cc:	a4078793          	addi	a5,a5,-1472 # 80081408 <OSTmrTime>
    800069d0:	0007a023          	sw	zero,0(a5)
    800069d4:	0007a797          	auipc	a5,0x7a
    800069d8:	b0c78793          	addi	a5,a5,-1268 # 800804e0 <OSTmrUsed>
    800069dc:	00079023          	sh	zero,0(a5)
    800069e0:	0007a797          	auipc	a5,0x7a
    800069e4:	50c78793          	addi	a5,a5,1292 # 80080eec <OSTmrFree>
    800069e8:	4741                	li	a4,16
    800069ea:	00e79023          	sh	a4,0(a5)
    800069ee:	0007a797          	auipc	a5,0x7a
    800069f2:	a5278793          	addi	a5,a5,-1454 # 80080440 <OSTmrFreeList>
    800069f6:	0007a717          	auipc	a4,0x7a
    800069fa:	b9270713          	addi	a4,a4,-1134 # 80080588 <OSTmrTbl>
    800069fe:	e398                	sd	a4,0(a5)
    80006a00:	4505                	li	a0,1
    80006a02:	f91fd0ef          	jal	ra,80004992 <OSSemCreate>
    80006a06:	872a                	mv	a4,a0
    80006a08:	0007b797          	auipc	a5,0x7b
    80006a0c:	a0878793          	addi	a5,a5,-1528 # 80081410 <OSTmrSem>
    80006a10:	e398                	sd	a4,0(a5)
    80006a12:	4501                	li	a0,0
    80006a14:	f7ffd0ef          	jal	ra,80004992 <OSSemCreate>
    80006a18:	872a                	mv	a4,a0
    80006a1a:	0007a797          	auipc	a5,0x7a
    80006a1e:	ab678793          	addi	a5,a5,-1354 # 800804d0 <OSTmrSemSignal>
    80006a22:	e398                	sd	a4,0(a5)
    80006a24:	0007b797          	auipc	a5,0x7b
    80006a28:	9ec78793          	addi	a5,a5,-1556 # 80081410 <OSTmrSem>
    80006a2c:	639c                	ld	a5,0(a5)
    80006a2e:	00f10713          	addi	a4,sp,15
    80006a32:	863a                	mv	a2,a4
    80006a34:	00079597          	auipc	a1,0x79
    80006a38:	6fc58593          	addi	a1,a1,1788 # 80080130 <OSUnMapTbl+0x128>
    80006a3c:	853e                	mv	a0,a5
    80006a3e:	8c3f90ef          	jal	ra,80000300 <OSEventNameSet>
    80006a42:	0007a797          	auipc	a5,0x7a
    80006a46:	a8e78793          	addi	a5,a5,-1394 # 800804d0 <OSTmrSemSignal>
    80006a4a:	639c                	ld	a5,0(a5)
    80006a4c:	00f10713          	addi	a4,sp,15
    80006a50:	863a                	mv	a2,a4
    80006a52:	00079597          	auipc	a1,0x79
    80006a56:	6f658593          	addi	a1,a1,1782 # 80080148 <OSUnMapTbl+0x140>
    80006a5a:	853e                	mv	a0,a5
    80006a5c:	8a5f90ef          	jal	ra,80000300 <OSEventNameSet>
    80006a60:	00c000ef          	jal	ra,80006a6c <OSTmr_InitTask>
    80006a64:	0001                	nop
    80006a66:	70e2                	ld	ra,56(sp)
    80006a68:	6121                	addi	sp,sp,64
    80006a6a:	8082                	ret

0000000080006a6c <OSTmr_InitTask>:
    80006a6c:	7179                	addi	sp,sp,-48
    80006a6e:	f406                	sd	ra,40(sp)
    80006a70:	478d                	li	a5,3
    80006a72:	e03e                	sd	a5,0(sp)
    80006a74:	4881                	li	a7,0
    80006a76:	08000813          	li	a6,128
    80006a7a:	0007a797          	auipc	a5,0x7a
    80006a7e:	57678793          	addi	a5,a5,1398 # 80080ff0 <OSTmrTaskStk>
    80006a82:	6741                	lui	a4,0x10
    80006a84:	1775                	addi	a4,a4,-3
    80006a86:	03d00693          	li	a3,61
    80006a8a:	0007b617          	auipc	a2,0x7b
    80006a8e:	95e60613          	addi	a2,a2,-1698 # 800813e8 <OSTmrTaskStk+0x3f8>
    80006a92:	4581                	li	a1,0
    80006a94:	00000517          	auipc	a0,0x0
    80006a98:	1a850513          	addi	a0,a0,424 # 80006c3c <OSTmr_Task>
    80006a9c:	929fe0ef          	jal	ra,800053c4 <OSTaskCreateExt>
    80006aa0:	01f10793          	addi	a5,sp,31
    80006aa4:	863e                	mv	a2,a5
    80006aa6:	00079597          	auipc	a1,0x79
    80006aaa:	6ba58593          	addi	a1,a1,1722 # 80080160 <OSUnMapTbl+0x158>
    80006aae:	03d00513          	li	a0,61
    80006ab2:	e33fe0ef          	jal	ra,800058e4 <OSTaskNameSet>
    80006ab6:	0001                	nop
    80006ab8:	70a2                	ld	ra,40(sp)
    80006aba:	6145                	addi	sp,sp,48
    80006abc:	8082                	ret

0000000080006abe <OSTmr_Link>:
    80006abe:	7179                	addi	sp,sp,-48
    80006ac0:	e42a                	sd	a0,8(sp)
    80006ac2:	87ae                	mv	a5,a1
    80006ac4:	00f103a3          	sb	a5,7(sp)
    80006ac8:	67a2                	ld	a5,8(sp)
    80006aca:	470d                	li	a4,3
    80006acc:	04e780a3          	sb	a4,65(a5)
    80006ad0:	00714783          	lbu	a5,7(sp)
    80006ad4:	0ff7f713          	andi	a4,a5,255
    80006ad8:	4785                	li	a5,1
    80006ada:	00f71f63          	bne	a4,a5,80006af8 <OSTmr_Link+0x3a>
    80006ade:	67a2                	ld	a5,8(sp)
    80006ae0:	5b98                	lw	a4,48(a5)
    80006ae2:	0007b797          	auipc	a5,0x7b
    80006ae6:	92678793          	addi	a5,a5,-1754 # 80081408 <OSTmrTime>
    80006aea:	439c                	lw	a5,0(a5)
    80006aec:	9fb9                	addw	a5,a5,a4
    80006aee:	0007871b          	sext.w	a4,a5
    80006af2:	67a2                	ld	a5,8(sp)
    80006af4:	d798                	sw	a4,40(a5)
    80006af6:	a82d                	j	80006b30 <OSTmr_Link+0x72>
    80006af8:	67a2                	ld	a5,8(sp)
    80006afa:	57dc                	lw	a5,44(a5)
    80006afc:	ef91                	bnez	a5,80006b18 <OSTmr_Link+0x5a>
    80006afe:	67a2                	ld	a5,8(sp)
    80006b00:	5b98                	lw	a4,48(a5)
    80006b02:	0007b797          	auipc	a5,0x7b
    80006b06:	90678793          	addi	a5,a5,-1786 # 80081408 <OSTmrTime>
    80006b0a:	439c                	lw	a5,0(a5)
    80006b0c:	9fb9                	addw	a5,a5,a4
    80006b0e:	0007871b          	sext.w	a4,a5
    80006b12:	67a2                	ld	a5,8(sp)
    80006b14:	d798                	sw	a4,40(a5)
    80006b16:	a829                	j	80006b30 <OSTmr_Link+0x72>
    80006b18:	67a2                	ld	a5,8(sp)
    80006b1a:	57d8                	lw	a4,44(a5)
    80006b1c:	0007b797          	auipc	a5,0x7b
    80006b20:	8ec78793          	addi	a5,a5,-1812 # 80081408 <OSTmrTime>
    80006b24:	439c                	lw	a5,0(a5)
    80006b26:	9fb9                	addw	a5,a5,a4
    80006b28:	0007871b          	sext.w	a4,a5
    80006b2c:	67a2                	ld	a5,8(sp)
    80006b2e:	d798                	sw	a4,40(a5)
    80006b30:	67a2                	ld	a5,8(sp)
    80006b32:	579c                	lw	a5,40(a5)
    80006b34:	17c2                	slli	a5,a5,0x30
    80006b36:	93c1                	srli	a5,a5,0x30
    80006b38:	8b9d                	andi	a5,a5,7
    80006b3a:	02f11723          	sh	a5,46(sp)
    80006b3e:	02e15783          	lhu	a5,46(sp)
    80006b42:	2781                	sext.w	a5,a5
    80006b44:	00479713          	slli	a4,a5,0x4
    80006b48:	0007a797          	auipc	a5,0x7a
    80006b4c:	90078793          	addi	a5,a5,-1792 # 80080448 <OSTmrWheelTbl>
    80006b50:	97ba                	add	a5,a5,a4
    80006b52:	f03e                	sd	a5,32(sp)
    80006b54:	7782                	ld	a5,32(sp)
    80006b56:	639c                	ld	a5,0(a5)
    80006b58:	ef81                	bnez	a5,80006b70 <OSTmr_Link+0xb2>
    80006b5a:	7782                	ld	a5,32(sp)
    80006b5c:	6722                	ld	a4,8(sp)
    80006b5e:	e398                	sd	a4,0(a5)
    80006b60:	67a2                	ld	a5,8(sp)
    80006b62:	0007bc23          	sd	zero,24(a5)
    80006b66:	7782                	ld	a5,32(sp)
    80006b68:	4705                	li	a4,1
    80006b6a:	00e79423          	sh	a4,8(a5)
    80006b6e:	a03d                	j	80006b9c <OSTmr_Link+0xde>
    80006b70:	7782                	ld	a5,32(sp)
    80006b72:	639c                	ld	a5,0(a5)
    80006b74:	ec3e                	sd	a5,24(sp)
    80006b76:	7782                	ld	a5,32(sp)
    80006b78:	6722                	ld	a4,8(sp)
    80006b7a:	e398                	sd	a4,0(a5)
    80006b7c:	67a2                	ld	a5,8(sp)
    80006b7e:	6762                	ld	a4,24(sp)
    80006b80:	ef98                	sd	a4,24(a5)
    80006b82:	67e2                	ld	a5,24(sp)
    80006b84:	6722                	ld	a4,8(sp)
    80006b86:	f398                	sd	a4,32(a5)
    80006b88:	7782                	ld	a5,32(sp)
    80006b8a:	0087d783          	lhu	a5,8(a5)
    80006b8e:	2785                	addiw	a5,a5,1
    80006b90:	03079713          	slli	a4,a5,0x30
    80006b94:	9341                	srli	a4,a4,0x30
    80006b96:	7782                	ld	a5,32(sp)
    80006b98:	00e79423          	sh	a4,8(a5)
    80006b9c:	67a2                	ld	a5,8(sp)
    80006b9e:	0207b023          	sd	zero,32(a5)
    80006ba2:	0001                	nop
    80006ba4:	6145                	addi	sp,sp,48
    80006ba6:	8082                	ret

0000000080006ba8 <OSTmr_Unlink>:
    80006ba8:	7179                	addi	sp,sp,-48
    80006baa:	e42a                	sd	a0,8(sp)
    80006bac:	67a2                	ld	a5,8(sp)
    80006bae:	579c                	lw	a5,40(a5)
    80006bb0:	17c2                	slli	a5,a5,0x30
    80006bb2:	93c1                	srli	a5,a5,0x30
    80006bb4:	8b9d                	andi	a5,a5,7
    80006bb6:	02f11723          	sh	a5,46(sp)
    80006bba:	02e15783          	lhu	a5,46(sp)
    80006bbe:	2781                	sext.w	a5,a5
    80006bc0:	00479713          	slli	a4,a5,0x4
    80006bc4:	0007a797          	auipc	a5,0x7a
    80006bc8:	88478793          	addi	a5,a5,-1916 # 80080448 <OSTmrWheelTbl>
    80006bcc:	97ba                	add	a5,a5,a4
    80006bce:	f03e                	sd	a5,32(sp)
    80006bd0:	7782                	ld	a5,32(sp)
    80006bd2:	639c                	ld	a5,0(a5)
    80006bd4:	6722                	ld	a4,8(sp)
    80006bd6:	00f71e63          	bne	a4,a5,80006bf2 <OSTmr_Unlink+0x4a>
    80006bda:	67a2                	ld	a5,8(sp)
    80006bdc:	6f9c                	ld	a5,24(a5)
    80006bde:	ec3e                	sd	a5,24(sp)
    80006be0:	7782                	ld	a5,32(sp)
    80006be2:	6762                	ld	a4,24(sp)
    80006be4:	e398                	sd	a4,0(a5)
    80006be6:	67e2                	ld	a5,24(sp)
    80006be8:	c39d                	beqz	a5,80006c0e <OSTmr_Unlink+0x66>
    80006bea:	67e2                	ld	a5,24(sp)
    80006bec:	0207b023          	sd	zero,32(a5)
    80006bf0:	a839                	j	80006c0e <OSTmr_Unlink+0x66>
    80006bf2:	67a2                	ld	a5,8(sp)
    80006bf4:	739c                	ld	a5,32(a5)
    80006bf6:	ec3e                	sd	a5,24(sp)
    80006bf8:	67a2                	ld	a5,8(sp)
    80006bfa:	6f9c                	ld	a5,24(a5)
    80006bfc:	e83e                	sd	a5,16(sp)
    80006bfe:	67e2                	ld	a5,24(sp)
    80006c00:	6742                	ld	a4,16(sp)
    80006c02:	ef98                	sd	a4,24(a5)
    80006c04:	67c2                	ld	a5,16(sp)
    80006c06:	c781                	beqz	a5,80006c0e <OSTmr_Unlink+0x66>
    80006c08:	67c2                	ld	a5,16(sp)
    80006c0a:	6762                	ld	a4,24(sp)
    80006c0c:	f398                	sd	a4,32(a5)
    80006c0e:	67a2                	ld	a5,8(sp)
    80006c10:	4705                	li	a4,1
    80006c12:	04e780a3          	sb	a4,65(a5)
    80006c16:	67a2                	ld	a5,8(sp)
    80006c18:	0007bc23          	sd	zero,24(a5)
    80006c1c:	67a2                	ld	a5,8(sp)
    80006c1e:	0207b023          	sd	zero,32(a5)
    80006c22:	7782                	ld	a5,32(sp)
    80006c24:	0087d783          	lhu	a5,8(a5)
    80006c28:	37fd                	addiw	a5,a5,-1
    80006c2a:	03079713          	slli	a4,a5,0x30
    80006c2e:	9341                	srli	a4,a4,0x30
    80006c30:	7782                	ld	a5,32(sp)
    80006c32:	00e79423          	sh	a4,8(a5)
    80006c36:	0001                	nop
    80006c38:	6145                	addi	sp,sp,48
    80006c3a:	8082                	ret

0000000080006c3c <OSTmr_Task>:
    80006c3c:	715d                	addi	sp,sp,-80
    80006c3e:	e486                	sd	ra,72(sp)
    80006c40:	e42a                	sd	a0,8(sp)
    80006c42:	0007a797          	auipc	a5,0x7a
    80006c46:	88e78793          	addi	a5,a5,-1906 # 800804d0 <OSTmrSemSignal>
    80006c4a:	639c                	ld	a5,0(a5)
    80006c4c:	01710713          	addi	a4,sp,23
    80006c50:	863a                	mv	a2,a4
    80006c52:	4581                	li	a1,0
    80006c54:	853e                	mv	a0,a5
    80006c56:	f27fd0ef          	jal	ra,80004b7c <OSSemPend>
    80006c5a:	cabf90ef          	jal	ra,80000904 <OSSchedLock>
    80006c5e:	0007a797          	auipc	a5,0x7a
    80006c62:	7aa78793          	addi	a5,a5,1962 # 80081408 <OSTmrTime>
    80006c66:	439c                	lw	a5,0(a5)
    80006c68:	2785                	addiw	a5,a5,1
    80006c6a:	0007871b          	sext.w	a4,a5
    80006c6e:	0007a797          	auipc	a5,0x7a
    80006c72:	79a78793          	addi	a5,a5,1946 # 80081408 <OSTmrTime>
    80006c76:	c398                	sw	a4,0(a5)
    80006c78:	0007a797          	auipc	a5,0x7a
    80006c7c:	79078793          	addi	a5,a5,1936 # 80081408 <OSTmrTime>
    80006c80:	439c                	lw	a5,0(a5)
    80006c82:	17c2                	slli	a5,a5,0x30
    80006c84:	93c1                	srli	a5,a5,0x30
    80006c86:	8b9d                	andi	a5,a5,7
    80006c88:	02f11b23          	sh	a5,54(sp)
    80006c8c:	03615783          	lhu	a5,54(sp)
    80006c90:	2781                	sext.w	a5,a5
    80006c92:	00479713          	slli	a4,a5,0x4
    80006c96:	00079797          	auipc	a5,0x79
    80006c9a:	7b278793          	addi	a5,a5,1970 # 80080448 <OSTmrWheelTbl>
    80006c9e:	97ba                	add	a5,a5,a4
    80006ca0:	f43e                	sd	a5,40(sp)
    80006ca2:	77a2                	ld	a5,40(sp)
    80006ca4:	639c                	ld	a5,0(a5)
    80006ca6:	fc3e                	sd	a5,56(sp)
    80006ca8:	a8a9                	j	80006d02 <OSTmr_Task+0xc6>
    80006caa:	77e2                	ld	a5,56(sp)
    80006cac:	6f9c                	ld	a5,24(a5)
    80006cae:	f03e                	sd	a5,32(sp)
    80006cb0:	77e2                	ld	a5,56(sp)
    80006cb2:	5798                	lw	a4,40(a5)
    80006cb4:	0007a797          	auipc	a5,0x7a
    80006cb8:	75478793          	addi	a5,a5,1876 # 80081408 <OSTmrTime>
    80006cbc:	439c                	lw	a5,0(a5)
    80006cbe:	04f71063          	bne	a4,a5,80006cfe <OSTmr_Task+0xc2>
    80006cc2:	7562                	ld	a0,56(sp)
    80006cc4:	ee5ff0ef          	jal	ra,80006ba8 <OSTmr_Unlink>
    80006cc8:	77e2                	ld	a5,56(sp)
    80006cca:	0407c783          	lbu	a5,64(a5)
    80006cce:	873e                	mv	a4,a5
    80006cd0:	4789                	li	a5,2
    80006cd2:	00f71763          	bne	a4,a5,80006ce0 <OSTmr_Task+0xa4>
    80006cd6:	4585                	li	a1,1
    80006cd8:	7562                	ld	a0,56(sp)
    80006cda:	de5ff0ef          	jal	ra,80006abe <OSTmr_Link>
    80006cde:	a029                	j	80006ce8 <OSTmr_Task+0xac>
    80006ce0:	77e2                	ld	a5,56(sp)
    80006ce2:	4709                	li	a4,2
    80006ce4:	04e780a3          	sb	a4,65(a5)
    80006ce8:	77e2                	ld	a5,56(sp)
    80006cea:	679c                	ld	a5,8(a5)
    80006cec:	ec3e                	sd	a5,24(sp)
    80006cee:	67e2                	ld	a5,24(sp)
    80006cf0:	c799                	beqz	a5,80006cfe <OSTmr_Task+0xc2>
    80006cf2:	77e2                	ld	a5,56(sp)
    80006cf4:	6b9c                	ld	a5,16(a5)
    80006cf6:	6762                	ld	a4,24(sp)
    80006cf8:	85be                	mv	a1,a5
    80006cfa:	7562                	ld	a0,56(sp)
    80006cfc:	9702                	jalr	a4
    80006cfe:	7782                	ld	a5,32(sp)
    80006d00:	fc3e                	sd	a5,56(sp)
    80006d02:	77e2                	ld	a5,56(sp)
    80006d04:	f3dd                	bnez	a5,80006caa <OSTmr_Task+0x6e>
    80006d06:	c6ff90ef          	jal	ra,80000974 <OSSchedUnlock>
    80006d0a:	bf25                	j	80006c42 <OSTmr_Task+0x6>
	...

0000000080006e00 <OS_CPU_SR_Save>:
    80006e00:	30002573          	csrr	a0,mstatus
    80006e04:	30047073          	csrci	mstatus,8
    80006e08:	8082                	ret

0000000080006e0a <OS_CPU_SR_Restore>:
    80006e0a:	30051073          	csrw	mstatus,a0
    80006e0e:	8082                	ret

0000000080006e10 <OSStartHighRdy>:
    80006e10:	27a000ef          	jal	ra,8000708a <OSTaskSwHook>
    80006e14:	4285                	li	t0,1
    80006e16:	00079317          	auipc	t1,0x79
    80006e1a:	6c230313          	addi	t1,t1,1730 # 800804d8 <OSRunning>
    80006e1e:	00530023          	sb	t0,0(t1)
    80006e22:	0007a297          	auipc	t0,0x7a
    80006e26:	1ae28293          	addi	t0,t0,430 # 80080fd0 <OSTCBHighRdy>
    80006e2a:	0002b303          	ld	t1,0(t0)
    80006e2e:	00033103          	ld	sp,0(t1)
    80006e32:	72ee                	ld	t0,248(sp)
    80006e34:	34129073          	csrw	mepc,t0
    80006e38:	6082                	ld	ra,0(sp)
    80006e3a:	7282                	ld	t0,32(sp)
    80006e3c:	7322                	ld	t1,40(sp)
    80006e3e:	73c2                	ld	t2,48(sp)
    80006e40:	7462                	ld	s0,56(sp)
    80006e42:	6486                	ld	s1,64(sp)
    80006e44:	6526                	ld	a0,72(sp)
    80006e46:	65c6                	ld	a1,80(sp)
    80006e48:	6666                	ld	a2,88(sp)
    80006e4a:	7686                	ld	a3,96(sp)
    80006e4c:	7726                	ld	a4,104(sp)
    80006e4e:	77c6                	ld	a5,112(sp)
    80006e50:	7866                	ld	a6,120(sp)
    80006e52:	688a                	ld	a7,128(sp)
    80006e54:	692a                	ld	s2,136(sp)
    80006e56:	69ca                	ld	s3,144(sp)
    80006e58:	6a6a                	ld	s4,152(sp)
    80006e5a:	7a8a                	ld	s5,160(sp)
    80006e5c:	7b2a                	ld	s6,168(sp)
    80006e5e:	7bca                	ld	s7,176(sp)
    80006e60:	7c6a                	ld	s8,184(sp)
    80006e62:	6c8e                	ld	s9,192(sp)
    80006e64:	6d2e                	ld	s10,200(sp)
    80006e66:	6dce                	ld	s11,208(sp)
    80006e68:	6e6e                	ld	t3,216(sp)
    80006e6a:	7e8e                	ld	t4,224(sp)
    80006e6c:	7f2e                	ld	t5,232(sp)
    80006e6e:	7fce                	ld	t6,240(sp)
    80006e70:	6111                	addi	sp,sp,256
    80006e72:	30200073          	mret
    80006e76:	00000013          	nop
    80006e7a:	00000013          	nop
    80006e7e:	0001                	nop

0000000080006e80 <OSCtxSw>:
    80006e80:	00000073          	ecall
    80006e84:	8082                	ret

0000000080006e86 <OSIntCtxSw>:
    80006e86:	a80f906f          	j	80000106 <task_switch>
	...

0000000080006efe <OSTaskStkInit>:
    80006efe:	7179                	addi	sp,sp,-48
    80006f00:	ec2a                	sd	a0,24(sp)
    80006f02:	e82e                	sd	a1,16(sp)
    80006f04:	e432                	sd	a2,8(sp)
    80006f06:	87b6                	mv	a5,a3
    80006f08:	00f11323          	sh	a5,6(sp)
    80006f0c:	67a2                	ld	a5,8(sp)
    80006f0e:	f0078793          	addi	a5,a5,-256
    80006f12:	f43e                	sd	a5,40(sp)
    80006f14:	00001717          	auipc	a4,0x1
    80006f18:	c0a70713          	addi	a4,a4,-1014 # 80007b1e <halt>
    80006f1c:	77a2                	ld	a5,40(sp)
    80006f1e:	e398                	sd	a4,0(a5)
    80006f20:	77a2                	ld	a5,40(sp)
    80006f22:	07a1                	addi	a5,a5,8
    80006f24:	08000713          	li	a4,128
    80006f28:	e398                	sd	a4,0(a5)
    80006f2a:	77a2                	ld	a5,40(sp)
    80006f2c:	07c1                	addi	a5,a5,16
    80006f2e:	0007b023          	sd	zero,0(a5)
    80006f32:	77a2                	ld	a5,40(sp)
    80006f34:	07e1                	addi	a5,a5,24
    80006f36:	0007b023          	sd	zero,0(a5)
    80006f3a:	77a2                	ld	a5,40(sp)
    80006f3c:	02078793          	addi	a5,a5,32
    80006f40:	0007b023          	sd	zero,0(a5)
    80006f44:	77a2                	ld	a5,40(sp)
    80006f46:	02878793          	addi	a5,a5,40
    80006f4a:	0007b023          	sd	zero,0(a5)
    80006f4e:	77a2                	ld	a5,40(sp)
    80006f50:	03078793          	addi	a5,a5,48
    80006f54:	0007b023          	sd	zero,0(a5)
    80006f58:	77a2                	ld	a5,40(sp)
    80006f5a:	03878793          	addi	a5,a5,56
    80006f5e:	0007b023          	sd	zero,0(a5)
    80006f62:	77a2                	ld	a5,40(sp)
    80006f64:	04078793          	addi	a5,a5,64
    80006f68:	0007b023          	sd	zero,0(a5)
    80006f6c:	77a2                	ld	a5,40(sp)
    80006f6e:	04878793          	addi	a5,a5,72
    80006f72:	6742                	ld	a4,16(sp)
    80006f74:	e398                	sd	a4,0(a5)
    80006f76:	77a2                	ld	a5,40(sp)
    80006f78:	05078793          	addi	a5,a5,80
    80006f7c:	0007b023          	sd	zero,0(a5)
    80006f80:	77a2                	ld	a5,40(sp)
    80006f82:	05878793          	addi	a5,a5,88
    80006f86:	0007b023          	sd	zero,0(a5)
    80006f8a:	77a2                	ld	a5,40(sp)
    80006f8c:	06078793          	addi	a5,a5,96
    80006f90:	0007b023          	sd	zero,0(a5)
    80006f94:	77a2                	ld	a5,40(sp)
    80006f96:	06878793          	addi	a5,a5,104
    80006f9a:	0007b023          	sd	zero,0(a5)
    80006f9e:	77a2                	ld	a5,40(sp)
    80006fa0:	07078793          	addi	a5,a5,112
    80006fa4:	0007b023          	sd	zero,0(a5)
    80006fa8:	77a2                	ld	a5,40(sp)
    80006faa:	07878793          	addi	a5,a5,120
    80006fae:	0007b023          	sd	zero,0(a5)
    80006fb2:	77a2                	ld	a5,40(sp)
    80006fb4:	08078793          	addi	a5,a5,128
    80006fb8:	0007b023          	sd	zero,0(a5)
    80006fbc:	77a2                	ld	a5,40(sp)
    80006fbe:	08878793          	addi	a5,a5,136
    80006fc2:	0007b023          	sd	zero,0(a5)
    80006fc6:	77a2                	ld	a5,40(sp)
    80006fc8:	09078793          	addi	a5,a5,144
    80006fcc:	0007b023          	sd	zero,0(a5)
    80006fd0:	77a2                	ld	a5,40(sp)
    80006fd2:	09878793          	addi	a5,a5,152
    80006fd6:	0007b023          	sd	zero,0(a5)
    80006fda:	77a2                	ld	a5,40(sp)
    80006fdc:	0a078793          	addi	a5,a5,160
    80006fe0:	0007b023          	sd	zero,0(a5)
    80006fe4:	77a2                	ld	a5,40(sp)
    80006fe6:	0a878793          	addi	a5,a5,168
    80006fea:	0007b023          	sd	zero,0(a5)
    80006fee:	77a2                	ld	a5,40(sp)
    80006ff0:	0b078793          	addi	a5,a5,176
    80006ff4:	0007b023          	sd	zero,0(a5)
    80006ff8:	77a2                	ld	a5,40(sp)
    80006ffa:	0b878793          	addi	a5,a5,184
    80006ffe:	0007b023          	sd	zero,0(a5)
    80007002:	77a2                	ld	a5,40(sp)
    80007004:	0c078793          	addi	a5,a5,192
    80007008:	0007b023          	sd	zero,0(a5)
    8000700c:	77a2                	ld	a5,40(sp)
    8000700e:	0c878793          	addi	a5,a5,200
    80007012:	0007b023          	sd	zero,0(a5)
    80007016:	77a2                	ld	a5,40(sp)
    80007018:	0d078793          	addi	a5,a5,208
    8000701c:	0007b023          	sd	zero,0(a5)
    80007020:	77a2                	ld	a5,40(sp)
    80007022:	0d878793          	addi	a5,a5,216
    80007026:	0007b023          	sd	zero,0(a5)
    8000702a:	77a2                	ld	a5,40(sp)
    8000702c:	0e078793          	addi	a5,a5,224
    80007030:	0007b023          	sd	zero,0(a5)
    80007034:	77a2                	ld	a5,40(sp)
    80007036:	0e878793          	addi	a5,a5,232
    8000703a:	0007b023          	sd	zero,0(a5)
    8000703e:	77a2                	ld	a5,40(sp)
    80007040:	0f078793          	addi	a5,a5,240
    80007044:	0007b023          	sd	zero,0(a5)
    80007048:	77a2                	ld	a5,40(sp)
    8000704a:	0f878793          	addi	a5,a5,248
    8000704e:	6762                	ld	a4,24(sp)
    80007050:	e398                	sd	a4,0(a5)
    80007052:	77a2                	ld	a5,40(sp)
    80007054:	853e                	mv	a0,a5
    80007056:	6145                	addi	sp,sp,48
    80007058:	8082                	ret

000000008000705a <OSInitHookBegin>:
    8000705a:	00079797          	auipc	a5,0x79
    8000705e:	32678793          	addi	a5,a5,806 # 80080380 <__bss_start>
    80007062:	00079023          	sh	zero,0(a5)
    80007066:	0001                	nop
    80007068:	8082                	ret

000000008000706a <OSInitHookEnd>:
    8000706a:	0001                	nop
    8000706c:	8082                	ret

000000008000706e <OSTaskCreateHook>:
    8000706e:	1141                	addi	sp,sp,-16
    80007070:	e42a                	sd	a0,8(sp)
    80007072:	0001                	nop
    80007074:	0141                	addi	sp,sp,16
    80007076:	8082                	ret

0000000080007078 <OSTaskDelHook>:
    80007078:	1141                	addi	sp,sp,-16
    8000707a:	e42a                	sd	a0,8(sp)
    8000707c:	0001                	nop
    8000707e:	0141                	addi	sp,sp,16
    80007080:	8082                	ret

0000000080007082 <OSTaskIdleHook>:
    80007082:	0001                	nop
    80007084:	8082                	ret

0000000080007086 <OSTaskStatHook>:
    80007086:	0001                	nop
    80007088:	8082                	ret

000000008000708a <OSTaskSwHook>:
    8000708a:	0001                	nop
    8000708c:	8082                	ret

000000008000708e <OSTCBInitHook>:
    8000708e:	1141                	addi	sp,sp,-16
    80007090:	e42a                	sd	a0,8(sp)
    80007092:	0001                	nop
    80007094:	0141                	addi	sp,sp,16
    80007096:	8082                	ret

0000000080007098 <OSTimeTickHook>:
    80007098:	1101                	addi	sp,sp,-32
    8000709a:	ec06                	sd	ra,24(sp)
    8000709c:	e402                	sd	zero,8(sp)
    8000709e:	67a2                	ld	a5,8(sp)
    800070a0:	0785                	addi	a5,a5,1
    800070a2:	e43e                	sd	a5,8(sp)
    800070a4:	00079797          	auipc	a5,0x79
    800070a8:	2dc78793          	addi	a5,a5,732 # 80080380 <__bss_start>
    800070ac:	0007d783          	lhu	a5,0(a5)
    800070b0:	2785                	addiw	a5,a5,1
    800070b2:	03079713          	slli	a4,a5,0x30
    800070b6:	9341                	srli	a4,a4,0x30
    800070b8:	00079797          	auipc	a5,0x79
    800070bc:	2c878793          	addi	a5,a5,712 # 80080380 <__bss_start>
    800070c0:	00e79023          	sh	a4,0(a5)
    800070c4:	00079797          	auipc	a5,0x79
    800070c8:	2bc78793          	addi	a5,a5,700 # 80080380 <__bss_start>
    800070cc:	0007d783          	lhu	a5,0(a5)
    800070d0:	0007871b          	sext.w	a4,a5
    800070d4:	47a5                	li	a5,9
    800070d6:	00e7fa63          	bleu	a4,a5,800070ea <OSTimeTickHook+0x52>
    800070da:	00079797          	auipc	a5,0x79
    800070de:	2a678793          	addi	a5,a5,678 # 80080380 <__bss_start>
    800070e2:	00079023          	sh	zero,0(a5)
    800070e6:	ebeff0ef          	jal	ra,800067a4 <OSTmrSignal>
    800070ea:	0001                	nop
    800070ec:	60e2                	ld	ra,24(sp)
    800070ee:	6105                	addi	sp,sp,32
    800070f0:	8082                	ret

00000000800070f2 <OSTaskReturnHook>:
    800070f2:	1141                	addi	sp,sp,-16
    800070f4:	e42a                	sd	a0,8(sp)
    800070f6:	0001                	nop
    800070f8:	0141                	addi	sp,sp,16
    800070fa:	8082                	ret

00000000800070fc <get_time>:
    800070fc:	0200c7b7          	lui	a5,0x200c
    80007100:	17e1                	addi	a5,a5,-8
    80007102:	639c                	ld	a5,0(a5)
    80007104:	853e                	mv	a0,a5
    80007106:	8082                	ret

0000000080007108 <add_timecmp>:
    80007108:	1141                	addi	sp,sp,-16
    8000710a:	e42a                	sd	a0,8(sp)
    8000710c:	0200c7b7          	lui	a5,0x200c
    80007110:	17e1                	addi	a5,a5,-8
    80007112:	6394                	ld	a3,0(a5)
    80007114:	020047b7          	lui	a5,0x2004
    80007118:	6722                	ld	a4,8(sp)
    8000711a:	9736                	add	a4,a4,a3
    8000711c:	e398                	sd	a4,0(a5)
    8000711e:	0001                	nop
    80007120:	0141                	addi	sp,sp,16
    80007122:	8082                	ret

0000000080007124 <next_timecmp>:
    80007124:	1141                	addi	sp,sp,-16
    80007126:	e406                	sd	ra,8(sp)
    80007128:	6789                	lui	a5,0x2
    8000712a:	71078513          	addi	a0,a5,1808 # 2710 <RISCV_MIE_MSIE+0x2708>
    8000712e:	fdbff0ef          	jal	ra,80007108 <add_timecmp>
    80007132:	0001                	nop
    80007134:	60a2                	ld	ra,8(sp)
    80007136:	0141                	addi	sp,sp,16
    80007138:	8082                	ret

000000008000713a <delay>:
    8000713a:	7179                	addi	sp,sp,-48
    8000713c:	f406                	sd	ra,40(sp)
    8000713e:	e42a                	sd	a0,8(sp)
    80007140:	fbdff0ef          	jal	ra,800070fc <get_time>
    80007144:	ec2a                	sd	a0,24(sp)
    80007146:	0001                	nop
    80007148:	fb5ff0ef          	jal	ra,800070fc <get_time>
    8000714c:	872a                	mv	a4,a0
    8000714e:	67e2                	ld	a5,24(sp)
    80007150:	40f707b3          	sub	a5,a4,a5
    80007154:	6722                	ld	a4,8(sp)
    80007156:	fee7e9e3          	bltu	a5,a4,80007148 <delay+0xe>
    8000715a:	0001                	nop
    8000715c:	70a2                	ld	ra,40(sp)
    8000715e:	6145                	addi	sp,sp,48
    80007160:	8082                	ret

0000000080007162 <syscall>:
    80007162:	7135                	addi	sp,sp,-160
    80007164:	ec2a                	sd	a0,24(sp)
    80007166:	e82e                	sd	a1,16(sp)
    80007168:	e432                	sd	a2,8(sp)
    8000716a:	e036                	sd	a3,0(sp)
    8000716c:	111c                	addi	a5,sp,160
    8000716e:	f8078793          	addi	a5,a5,-128
    80007172:	03f78793          	addi	a5,a5,63
    80007176:	8399                	srli	a5,a5,0x6
    80007178:	079a                	slli	a5,a5,0x6
    8000717a:	6762                	ld	a4,24(sp)
    8000717c:	e398                	sd	a4,0(a5)
    8000717e:	6742                	ld	a4,16(sp)
    80007180:	e798                	sd	a4,8(a5)
    80007182:	6722                	ld	a4,8(sp)
    80007184:	eb98                	sd	a4,16(a5)
    80007186:	6702                	ld	a4,0(sp)
    80007188:	ef98                	sd	a4,24(a5)
    8000718a:	0ff0000f          	fence
    8000718e:	86be                	mv	a3,a5
    80007190:	0007b717          	auipc	a4,0x7b
    80007194:	6f070713          	addi	a4,a4,1776 # 80082880 <tohost>
    80007198:	e314                	sd	a3,0(a4)
    8000719a:	0001                	nop
    8000719c:	0007b717          	auipc	a4,0x7b
    800071a0:	6a470713          	addi	a4,a4,1700 # 80082840 <fromhost>
    800071a4:	6318                	ld	a4,0(a4)
    800071a6:	db7d                	beqz	a4,8000719c <syscall+0x3a>
    800071a8:	0007b717          	auipc	a4,0x7b
    800071ac:	69870713          	addi	a4,a4,1688 # 80082840 <fromhost>
    800071b0:	00073023          	sd	zero,0(a4)
    800071b4:	0ff0000f          	fence
    800071b8:	639c                	ld	a5,0(a5)
    800071ba:	853e                	mv	a0,a5
    800071bc:	610d                	addi	sp,sp,160
    800071be:	8082                	ret

00000000800071c0 <putchar>:
    800071c0:	1101                	addi	sp,sp,-32
    800071c2:	ec06                	sd	ra,24(sp)
    800071c4:	87aa                	mv	a5,a0
    800071c6:	c63e                	sw	a5,12(sp)
    800071c8:	00079797          	auipc	a5,0x79
    800071cc:	1f878793          	addi	a5,a5,504 # 800803c0 <buflen.1036>
    800071d0:	439c                	lw	a5,0(a5)
    800071d2:	0017871b          	addiw	a4,a5,1
    800071d6:	0007069b          	sext.w	a3,a4
    800071da:	00079717          	auipc	a4,0x79
    800071de:	1e670713          	addi	a4,a4,486 # 800803c0 <buflen.1036>
    800071e2:	c314                	sw	a3,0(a4)
    800071e4:	4732                	lw	a4,12(sp)
    800071e6:	0ff77713          	andi	a4,a4,255
    800071ea:	00079697          	auipc	a3,0x79
    800071ee:	21668693          	addi	a3,a3,534 # 80080400 <buf.1035>
    800071f2:	97b6                	add	a5,a5,a3
    800071f4:	00e78023          	sb	a4,0(a5)
    800071f8:	47b2                	lw	a5,12(sp)
    800071fa:	0007871b          	sext.w	a4,a5
    800071fe:	47a9                	li	a5,10
    80007200:	00f70c63          	beq	a4,a5,80007218 <putchar+0x58>
    80007204:	00079797          	auipc	a5,0x79
    80007208:	1bc78793          	addi	a5,a5,444 # 800803c0 <buflen.1036>
    8000720c:	439c                	lw	a5,0(a5)
    8000720e:	873e                	mv	a4,a5
    80007210:	04000793          	li	a5,64
    80007214:	02f71863          	bne	a4,a5,80007244 <putchar+0x84>
    80007218:	00079717          	auipc	a4,0x79
    8000721c:	1e870713          	addi	a4,a4,488 # 80080400 <buf.1035>
    80007220:	00079797          	auipc	a5,0x79
    80007224:	1a078793          	addi	a5,a5,416 # 800803c0 <buflen.1036>
    80007228:	439c                	lw	a5,0(a5)
    8000722a:	86be                	mv	a3,a5
    8000722c:	863a                	mv	a2,a4
    8000722e:	4585                	li	a1,1
    80007230:	04000513          	li	a0,64
    80007234:	f2fff0ef          	jal	ra,80007162 <syscall>
    80007238:	00079797          	auipc	a5,0x79
    8000723c:	18878793          	addi	a5,a5,392 # 800803c0 <buflen.1036>
    80007240:	0007a023          	sw	zero,0(a5)
    80007244:	4781                	li	a5,0
    80007246:	853e                	mv	a0,a5
    80007248:	60e2                	ld	ra,24(sp)
    8000724a:	6105                	addi	sp,sp,32
    8000724c:	8082                	ret

000000008000724e <printstr>:
    8000724e:	1101                	addi	sp,sp,-32
    80007250:	ec06                	sd	ra,24(sp)
    80007252:	e822                	sd	s0,16(sp)
    80007254:	e42a                	sd	a0,8(sp)
    80007256:	6422                	ld	s0,8(sp)
    80007258:	6522                	ld	a0,8(sp)
    8000725a:	682000ef          	jal	ra,800078dc <strlen>
    8000725e:	87aa                	mv	a5,a0
    80007260:	86be                	mv	a3,a5
    80007262:	8622                	mv	a2,s0
    80007264:	4585                	li	a1,1
    80007266:	04000513          	li	a0,64
    8000726a:	ef9ff0ef          	jal	ra,80007162 <syscall>
    8000726e:	0001                	nop
    80007270:	60e2                	ld	ra,24(sp)
    80007272:	6442                	ld	s0,16(sp)
    80007274:	6105                	addi	sp,sp,32
    80007276:	8082                	ret

0000000080007278 <printhex>:
    80007278:	7139                	addi	sp,sp,-64
    8000727a:	fc06                	sd	ra,56(sp)
    8000727c:	e42a                	sd	a0,8(sp)
    8000727e:	d602                	sw	zero,44(sp)
    80007280:	a0a1                	j	800072c8 <printhex+0x50>
    80007282:	67a2                	ld	a5,8(sp)
    80007284:	0ff7f793          	andi	a5,a5,255
    80007288:	8bbd                	andi	a5,a5,15
    8000728a:	0ff7f713          	andi	a4,a5,255
    8000728e:	67a2                	ld	a5,8(sp)
    80007290:	00f7f693          	andi	a3,a5,15
    80007294:	47a5                	li	a5,9
    80007296:	00d7e563          	bltu	a5,a3,800072a0 <printhex+0x28>
    8000729a:	03000793          	li	a5,48
    8000729e:	a019                	j	800072a4 <printhex+0x2c>
    800072a0:	05700793          	li	a5,87
    800072a4:	463d                	li	a2,15
    800072a6:	56b2                	lw	a3,44(sp)
    800072a8:	40d606bb          	subw	a3,a2,a3
    800072ac:	2681                	sext.w	a3,a3
    800072ae:	9fb9                	addw	a5,a5,a4
    800072b0:	0ff7f713          	andi	a4,a5,255
    800072b4:	181c                	addi	a5,sp,48
    800072b6:	97b6                	add	a5,a5,a3
    800072b8:	fee78423          	sb	a4,-24(a5)
    800072bc:	67a2                	ld	a5,8(sp)
    800072be:	8391                	srli	a5,a5,0x4
    800072c0:	e43e                	sd	a5,8(sp)
    800072c2:	57b2                	lw	a5,44(sp)
    800072c4:	2785                	addiw	a5,a5,1
    800072c6:	d63e                	sw	a5,44(sp)
    800072c8:	57b2                	lw	a5,44(sp)
    800072ca:	0007871b          	sext.w	a4,a5
    800072ce:	47bd                	li	a5,15
    800072d0:	fae7d9e3          	ble	a4,a5,80007282 <printhex+0xa>
    800072d4:	02010423          	sb	zero,40(sp)
    800072d8:	083c                	addi	a5,sp,24
    800072da:	853e                	mv	a0,a5
    800072dc:	f73ff0ef          	jal	ra,8000724e <printstr>
    800072e0:	0001                	nop
    800072e2:	70e2                	ld	ra,56(sp)
    800072e4:	6121                	addi	sp,sp,64
    800072e6:	8082                	ret

00000000800072e8 <printnum>:
    800072e8:	714d                	addi	sp,sp,-336
    800072ea:	e686                	sd	ra,328(sp)
    800072ec:	f42a                	sd	a0,40(sp)
    800072ee:	f02e                	sd	a1,32(sp)
    800072f0:	ec32                	sd	a2,24(sp)
    800072f2:	8636                	mv	a2,a3
    800072f4:	86ba                	mv	a3,a4
    800072f6:	873e                	mv	a4,a5
    800072f8:	87b2                	mv	a5,a2
    800072fa:	ca3e                	sw	a5,20(sp)
    800072fc:	87b6                	mv	a5,a3
    800072fe:	c83e                	sw	a5,16(sp)
    80007300:	87ba                	mv	a5,a4
    80007302:	c63e                	sw	a5,12(sp)
    80007304:	12012e23          	sw	zero,316(sp)
    80007308:	01416783          	lwu	a5,20(sp)
    8000730c:	6762                	ld	a4,24(sp)
    8000730e:	02f776b3          	remu	a3,a4,a5
    80007312:	13c12783          	lw	a5,316(sp)
    80007316:	0017871b          	addiw	a4,a5,1
    8000731a:	12e12e23          	sw	a4,316(sp)
    8000731e:	0006871b          	sext.w	a4,a3
    80007322:	078a                	slli	a5,a5,0x2
    80007324:	0294                	addi	a3,sp,320
    80007326:	97b6                	add	a5,a5,a3
    80007328:	eee7ac23          	sw	a4,-264(a5)
    8000732c:	01416783          	lwu	a5,20(sp)
    80007330:	6762                	ld	a4,24(sp)
    80007332:	00f76963          	bltu	a4,a5,80007344 <printnum+0x5c>
    80007336:	01416783          	lwu	a5,20(sp)
    8000733a:	6762                	ld	a4,24(sp)
    8000733c:	02f757b3          	divu	a5,a4,a5
    80007340:	ec3e                	sd	a5,24(sp)
    80007342:	b7d9                	j	80007308 <printnum+0x20>
    80007344:	0001                	nop
    80007346:	a031                	j	80007352 <printnum+0x6a>
    80007348:	47b2                	lw	a5,12(sp)
    8000734a:	7722                	ld	a4,40(sp)
    8000734c:	7582                	ld	a1,32(sp)
    8000734e:	853e                	mv	a0,a5
    80007350:	9702                	jalr	a4
    80007352:	47c2                	lw	a5,16(sp)
    80007354:	fff7871b          	addiw	a4,a5,-1
    80007358:	c83a                	sw	a4,16(sp)
    8000735a:	13c12703          	lw	a4,316(sp)
    8000735e:	2701                	sext.w	a4,a4
    80007360:	fef744e3          	blt	a4,a5,80007348 <printnum+0x60>
    80007364:	a83d                	j	800073a2 <printnum+0xba>
    80007366:	13c12783          	lw	a5,316(sp)
    8000736a:	078a                	slli	a5,a5,0x2
    8000736c:	0298                	addi	a4,sp,320
    8000736e:	97ba                	add	a5,a5,a4
    80007370:	ef87a703          	lw	a4,-264(a5)
    80007374:	13c12783          	lw	a5,316(sp)
    80007378:	078a                	slli	a5,a5,0x2
    8000737a:	0294                	addi	a3,sp,320
    8000737c:	97b6                	add	a5,a5,a3
    8000737e:	ef87a783          	lw	a5,-264(a5)
    80007382:	86be                	mv	a3,a5
    80007384:	47a5                	li	a5,9
    80007386:	00d7f563          	bleu	a3,a5,80007390 <printnum+0xa8>
    8000738a:	05700793          	li	a5,87
    8000738e:	a019                	j	80007394 <printnum+0xac>
    80007390:	03000793          	li	a5,48
    80007394:	9fb9                	addw	a5,a5,a4
    80007396:	2781                	sext.w	a5,a5
    80007398:	2781                	sext.w	a5,a5
    8000739a:	7722                	ld	a4,40(sp)
    8000739c:	7582                	ld	a1,32(sp)
    8000739e:	853e                	mv	a0,a5
    800073a0:	9702                	jalr	a4
    800073a2:	13c12783          	lw	a5,316(sp)
    800073a6:	fff7871b          	addiw	a4,a5,-1
    800073aa:	12e12e23          	sw	a4,316(sp)
    800073ae:	faf04ce3          	bgtz	a5,80007366 <printnum+0x7e>
    800073b2:	0001                	nop
    800073b4:	60b6                	ld	ra,328(sp)
    800073b6:	6171                	addi	sp,sp,336
    800073b8:	8082                	ret

00000000800073ba <getuint>:
    800073ba:	1141                	addi	sp,sp,-16
    800073bc:	e42a                	sd	a0,8(sp)
    800073be:	87ae                	mv	a5,a1
    800073c0:	c23e                	sw	a5,4(sp)
    800073c2:	4792                	lw	a5,4(sp)
    800073c4:	0007871b          	sext.w	a4,a5
    800073c8:	4785                	li	a5,1
    800073ca:	00e7da63          	ble	a4,a5,800073de <getuint+0x24>
    800073ce:	67a2                	ld	a5,8(sp)
    800073d0:	639c                	ld	a5,0(a5)
    800073d2:	00878693          	addi	a3,a5,8
    800073d6:	6722                	ld	a4,8(sp)
    800073d8:	e314                	sd	a3,0(a4)
    800073da:	639c                	ld	a5,0(a5)
    800073dc:	a02d                	j	80007406 <getuint+0x4c>
    800073de:	4792                	lw	a5,4(sp)
    800073e0:	2781                	sext.w	a5,a5
    800073e2:	cb89                	beqz	a5,800073f4 <getuint+0x3a>
    800073e4:	67a2                	ld	a5,8(sp)
    800073e6:	639c                	ld	a5,0(a5)
    800073e8:	00878693          	addi	a3,a5,8
    800073ec:	6722                	ld	a4,8(sp)
    800073ee:	e314                	sd	a3,0(a4)
    800073f0:	639c                	ld	a5,0(a5)
    800073f2:	a811                	j	80007406 <getuint+0x4c>
    800073f4:	67a2                	ld	a5,8(sp)
    800073f6:	639c                	ld	a5,0(a5)
    800073f8:	00878693          	addi	a3,a5,8
    800073fc:	6722                	ld	a4,8(sp)
    800073fe:	e314                	sd	a3,0(a4)
    80007400:	439c                	lw	a5,0(a5)
    80007402:	1782                	slli	a5,a5,0x20
    80007404:	9381                	srli	a5,a5,0x20
    80007406:	853e                	mv	a0,a5
    80007408:	0141                	addi	sp,sp,16
    8000740a:	8082                	ret

000000008000740c <getint>:
    8000740c:	1141                	addi	sp,sp,-16
    8000740e:	e42a                	sd	a0,8(sp)
    80007410:	87ae                	mv	a5,a1
    80007412:	c23e                	sw	a5,4(sp)
    80007414:	4792                	lw	a5,4(sp)
    80007416:	0007871b          	sext.w	a4,a5
    8000741a:	4785                	li	a5,1
    8000741c:	00e7da63          	ble	a4,a5,80007430 <getint+0x24>
    80007420:	67a2                	ld	a5,8(sp)
    80007422:	639c                	ld	a5,0(a5)
    80007424:	00878693          	addi	a3,a5,8
    80007428:	6722                	ld	a4,8(sp)
    8000742a:	e314                	sd	a3,0(a4)
    8000742c:	639c                	ld	a5,0(a5)
    8000742e:	a01d                	j	80007454 <getint+0x48>
    80007430:	4792                	lw	a5,4(sp)
    80007432:	2781                	sext.w	a5,a5
    80007434:	cb89                	beqz	a5,80007446 <getint+0x3a>
    80007436:	67a2                	ld	a5,8(sp)
    80007438:	639c                	ld	a5,0(a5)
    8000743a:	00878693          	addi	a3,a5,8
    8000743e:	6722                	ld	a4,8(sp)
    80007440:	e314                	sd	a3,0(a4)
    80007442:	639c                	ld	a5,0(a5)
    80007444:	a801                	j	80007454 <getint+0x48>
    80007446:	67a2                	ld	a5,8(sp)
    80007448:	639c                	ld	a5,0(a5)
    8000744a:	00878693          	addi	a3,a5,8
    8000744e:	6722                	ld	a4,8(sp)
    80007450:	e314                	sd	a3,0(a4)
    80007452:	439c                	lw	a5,0(a5)
    80007454:	853e                	mv	a0,a5
    80007456:	0141                	addi	sp,sp,16
    80007458:	8082                	ret

000000008000745a <vprintfmt>:
    8000745a:	7159                	addi	sp,sp,-112
    8000745c:	f486                	sd	ra,104(sp)
    8000745e:	f0a2                	sd	s0,96(sp)
    80007460:	eca6                	sd	s1,88(sp)
    80007462:	ec2a                	sd	a0,24(sp)
    80007464:	e82e                	sd	a1,16(sp)
    80007466:	e432                	sd	a2,8(sp)
    80007468:	e036                	sd	a3,0(sp)
    8000746a:	a811                	j	8000747e <vprintfmt+0x24>
    8000746c:	26040b63          	beqz	s0,800076e2 <vprintfmt+0x288>
    80007470:	67a2                	ld	a5,8(sp)
    80007472:	0785                	addi	a5,a5,1
    80007474:	e43e                	sd	a5,8(sp)
    80007476:	67e2                	ld	a5,24(sp)
    80007478:	65c2                	ld	a1,16(sp)
    8000747a:	8522                	mv	a0,s0
    8000747c:	9782                	jalr	a5
    8000747e:	67a2                	ld	a5,8(sp)
    80007480:	0007c783          	lbu	a5,0(a5)
    80007484:	0007841b          	sext.w	s0,a5
    80007488:	8722                	mv	a4,s0
    8000748a:	02500793          	li	a5,37
    8000748e:	fcf71fe3          	bne	a4,a5,8000746c <vprintfmt+0x12>
    80007492:	67a2                	ld	a5,8(sp)
    80007494:	0785                	addi	a5,a5,1
    80007496:	e43e                	sd	a5,8(sp)
    80007498:	67a2                	ld	a5,8(sp)
    8000749a:	f43e                	sd	a5,40(sp)
    8000749c:	02000793          	li	a5,32
    800074a0:	02f10ba3          	sb	a5,55(sp)
    800074a4:	57fd                	li	a5,-1
    800074a6:	de3e                	sw	a5,60(sp)
    800074a8:	57fd                	li	a5,-1
    800074aa:	dc3e                	sw	a5,56(sp)
    800074ac:	c082                	sw	zero,64(sp)
    800074ae:	d202                	sw	zero,36(sp)
    800074b0:	67a2                	ld	a5,8(sp)
    800074b2:	00178713          	addi	a4,a5,1
    800074b6:	e43a                	sd	a4,8(sp)
    800074b8:	0007c783          	lbu	a5,0(a5)
    800074bc:	0007841b          	sext.w	s0,a5
    800074c0:	fdd4069b          	addiw	a3,s0,-35
    800074c4:	0006871b          	sext.w	a4,a3
    800074c8:	05500793          	li	a5,85
    800074cc:	20e7e263          	bltu	a5,a4,800076d0 <vprintfmt+0x276>
    800074d0:	02069793          	slli	a5,a3,0x20
    800074d4:	9381                	srli	a5,a5,0x20
    800074d6:	00279713          	slli	a4,a5,0x2
    800074da:	00079797          	auipc	a5,0x79
    800074de:	c9e78793          	addi	a5,a5,-866 # 80080178 <OSUnMapTbl+0x170>
    800074e2:	97ba                	add	a5,a5,a4
    800074e4:	439c                	lw	a5,0(a5)
    800074e6:	0007871b          	sext.w	a4,a5
    800074ea:	00079797          	auipc	a5,0x79
    800074ee:	c8e78793          	addi	a5,a5,-882 # 80080178 <OSUnMapTbl+0x170>
    800074f2:	97ba                	add	a5,a5,a4
    800074f4:	8782                	jr	a5
    800074f6:	02d00793          	li	a5,45
    800074fa:	02f10ba3          	sb	a5,55(sp)
    800074fe:	bf4d                	j	800074b0 <vprintfmt+0x56>
    80007500:	03000793          	li	a5,48
    80007504:	02f10ba3          	sb	a5,55(sp)
    80007508:	b765                	j	800074b0 <vprintfmt+0x56>
    8000750a:	dc02                	sw	zero,56(sp)
    8000750c:	5762                	lw	a4,56(sp)
    8000750e:	87ba                	mv	a5,a4
    80007510:	0027979b          	slliw	a5,a5,0x2
    80007514:	9fb9                	addw	a5,a5,a4
    80007516:	0017979b          	slliw	a5,a5,0x1
    8000751a:	2781                	sext.w	a5,a5
    8000751c:	9fa1                	addw	a5,a5,s0
    8000751e:	2781                	sext.w	a5,a5
    80007520:	fd07879b          	addiw	a5,a5,-48
    80007524:	dc3e                	sw	a5,56(sp)
    80007526:	67a2                	ld	a5,8(sp)
    80007528:	0007c783          	lbu	a5,0(a5)
    8000752c:	0007841b          	sext.w	s0,a5
    80007530:	8722                	mv	a4,s0
    80007532:	02f00793          	li	a5,47
    80007536:	02e7db63          	ble	a4,a5,8000756c <vprintfmt+0x112>
    8000753a:	8722                	mv	a4,s0
    8000753c:	03900793          	li	a5,57
    80007540:	02e7c663          	blt	a5,a4,8000756c <vprintfmt+0x112>
    80007544:	67a2                	ld	a5,8(sp)
    80007546:	0785                	addi	a5,a5,1
    80007548:	e43e                	sd	a5,8(sp)
    8000754a:	b7c9                	j	8000750c <vprintfmt+0xb2>
    8000754c:	6782                	ld	a5,0(sp)
    8000754e:	00878713          	addi	a4,a5,8
    80007552:	e03a                	sd	a4,0(sp)
    80007554:	439c                	lw	a5,0(a5)
    80007556:	dc3e                	sw	a5,56(sp)
    80007558:	a819                	j	8000756e <vprintfmt+0x114>
    8000755a:	57f2                	lw	a5,60(sp)
    8000755c:	2781                	sext.w	a5,a5
    8000755e:	f407d9e3          	bgez	a5,800074b0 <vprintfmt+0x56>
    80007562:	de02                	sw	zero,60(sp)
    80007564:	b7b1                	j	800074b0 <vprintfmt+0x56>
    80007566:	4785                	li	a5,1
    80007568:	d23e                	sw	a5,36(sp)
    8000756a:	b799                	j	800074b0 <vprintfmt+0x56>
    8000756c:	0001                	nop
    8000756e:	57f2                	lw	a5,60(sp)
    80007570:	2781                	sext.w	a5,a5
    80007572:	f207dfe3          	bgez	a5,800074b0 <vprintfmt+0x56>
    80007576:	57e2                	lw	a5,56(sp)
    80007578:	de3e                	sw	a5,60(sp)
    8000757a:	57fd                	li	a5,-1
    8000757c:	dc3e                	sw	a5,56(sp)
    8000757e:	bf0d                	j	800074b0 <vprintfmt+0x56>
    80007580:	4786                	lw	a5,64(sp)
    80007582:	2785                	addiw	a5,a5,1
    80007584:	c0be                	sw	a5,64(sp)
    80007586:	b72d                	j	800074b0 <vprintfmt+0x56>
    80007588:	6782                	ld	a5,0(sp)
    8000758a:	00878713          	addi	a4,a5,8
    8000758e:	e03a                	sd	a4,0(sp)
    80007590:	439c                	lw	a5,0(a5)
    80007592:	6762                	ld	a4,24(sp)
    80007594:	65c2                	ld	a1,16(sp)
    80007596:	853e                	mv	a0,a5
    80007598:	9702                	jalr	a4
    8000759a:	a299                	j	800076e0 <vprintfmt+0x286>
    8000759c:	6782                	ld	a5,0(sp)
    8000759e:	00878713          	addi	a4,a5,8
    800075a2:	e03a                	sd	a4,0(sp)
    800075a4:	6384                	ld	s1,0(a5)
    800075a6:	e489                	bnez	s1,800075b0 <vprintfmt+0x156>
    800075a8:	00079497          	auipc	s1,0x79
    800075ac:	bc848493          	addi	s1,s1,-1080 # 80080170 <OSUnMapTbl+0x168>
    800075b0:	57f2                	lw	a5,60(sp)
    800075b2:	2781                	sext.w	a5,a5
    800075b4:	04f05e63          	blez	a5,80007610 <vprintfmt+0x1b6>
    800075b8:	03714783          	lbu	a5,55(sp)
    800075bc:	0ff7f713          	andi	a4,a5,255
    800075c0:	02d00793          	li	a5,45
    800075c4:	04f70663          	beq	a4,a5,80007610 <vprintfmt+0x1b6>
    800075c8:	57e2                	lw	a5,56(sp)
    800075ca:	85be                	mv	a1,a5
    800075cc:	8526                	mv	a0,s1
    800075ce:	334000ef          	jal	ra,80007902 <strnlen>
    800075d2:	87aa                	mv	a5,a0
    800075d4:	5772                	lw	a4,60(sp)
    800075d6:	2781                	sext.w	a5,a5
    800075d8:	40f707bb          	subw	a5,a4,a5
    800075dc:	2781                	sext.w	a5,a5
    800075de:	de3e                	sw	a5,60(sp)
    800075e0:	a819                	j	800075f6 <vprintfmt+0x19c>
    800075e2:	03714783          	lbu	a5,55(sp)
    800075e6:	2781                	sext.w	a5,a5
    800075e8:	6762                	ld	a4,24(sp)
    800075ea:	65c2                	ld	a1,16(sp)
    800075ec:	853e                	mv	a0,a5
    800075ee:	9702                	jalr	a4
    800075f0:	57f2                	lw	a5,60(sp)
    800075f2:	37fd                	addiw	a5,a5,-1
    800075f4:	de3e                	sw	a5,60(sp)
    800075f6:	57f2                	lw	a5,60(sp)
    800075f8:	2781                	sext.w	a5,a5
    800075fa:	fef044e3          	bgtz	a5,800075e2 <vprintfmt+0x188>
    800075fe:	a809                	j	80007610 <vprintfmt+0x1b6>
    80007600:	67e2                	ld	a5,24(sp)
    80007602:	65c2                	ld	a1,16(sp)
    80007604:	8522                	mv	a0,s0
    80007606:	9782                	jalr	a5
    80007608:	0485                	addi	s1,s1,1
    8000760a:	57f2                	lw	a5,60(sp)
    8000760c:	37fd                	addiw	a5,a5,-1
    8000760e:	de3e                	sw	a5,60(sp)
    80007610:	0004c783          	lbu	a5,0(s1)
    80007614:	0007841b          	sext.w	s0,a5
    80007618:	c40d                	beqz	s0,80007642 <vprintfmt+0x1e8>
    8000761a:	57e2                	lw	a5,56(sp)
    8000761c:	2781                	sext.w	a5,a5
    8000761e:	fe07c1e3          	bltz	a5,80007600 <vprintfmt+0x1a6>
    80007622:	57e2                	lw	a5,56(sp)
    80007624:	37fd                	addiw	a5,a5,-1
    80007626:	dc3e                	sw	a5,56(sp)
    80007628:	57e2                	lw	a5,56(sp)
    8000762a:	2781                	sext.w	a5,a5
    8000762c:	fc07dae3          	bgez	a5,80007600 <vprintfmt+0x1a6>
    80007630:	a809                	j	80007642 <vprintfmt+0x1e8>
    80007632:	67e2                	ld	a5,24(sp)
    80007634:	65c2                	ld	a1,16(sp)
    80007636:	02000513          	li	a0,32
    8000763a:	9782                	jalr	a5
    8000763c:	57f2                	lw	a5,60(sp)
    8000763e:	37fd                	addiw	a5,a5,-1
    80007640:	de3e                	sw	a5,60(sp)
    80007642:	57f2                	lw	a5,60(sp)
    80007644:	2781                	sext.w	a5,a5
    80007646:	fef046e3          	bgtz	a5,80007632 <vprintfmt+0x1d8>
    8000764a:	a859                	j	800076e0 <vprintfmt+0x286>
    8000764c:	4706                	lw	a4,64(sp)
    8000764e:	878a                	mv	a5,sp
    80007650:	85ba                	mv	a1,a4
    80007652:	853e                	mv	a0,a5
    80007654:	db9ff0ef          	jal	ra,8000740c <getint>
    80007658:	87aa                	mv	a5,a0
    8000765a:	e4be                	sd	a5,72(sp)
    8000765c:	67a6                	ld	a5,72(sp)
    8000765e:	0007db63          	bgez	a5,80007674 <vprintfmt+0x21a>
    80007662:	67e2                	ld	a5,24(sp)
    80007664:	65c2                	ld	a1,16(sp)
    80007666:	02d00513          	li	a0,45
    8000766a:	9782                	jalr	a5
    8000766c:	67a6                	ld	a5,72(sp)
    8000766e:	40f007b3          	neg	a5,a5
    80007672:	e4be                	sd	a5,72(sp)
    80007674:	47a9                	li	a5,10
    80007676:	c2be                	sw	a5,68(sp)
    80007678:	a825                	j	800076b0 <vprintfmt+0x256>
    8000767a:	47a9                	li	a5,10
    8000767c:	c2be                	sw	a5,68(sp)
    8000767e:	a015                	j	800076a2 <vprintfmt+0x248>
    80007680:	47a1                	li	a5,8
    80007682:	c2be                	sw	a5,68(sp)
    80007684:	a839                	j	800076a2 <vprintfmt+0x248>
    80007686:	4785                	li	a5,1
    80007688:	c0be                	sw	a5,64(sp)
    8000768a:	67e2                	ld	a5,24(sp)
    8000768c:	65c2                	ld	a1,16(sp)
    8000768e:	03000513          	li	a0,48
    80007692:	9782                	jalr	a5
    80007694:	67e2                	ld	a5,24(sp)
    80007696:	65c2                	ld	a1,16(sp)
    80007698:	07800513          	li	a0,120
    8000769c:	9782                	jalr	a5
    8000769e:	47c1                	li	a5,16
    800076a0:	c2be                	sw	a5,68(sp)
    800076a2:	4706                	lw	a4,64(sp)
    800076a4:	878a                	mv	a5,sp
    800076a6:	85ba                	mv	a1,a4
    800076a8:	853e                	mv	a0,a5
    800076aa:	d11ff0ef          	jal	ra,800073ba <getuint>
    800076ae:	e4aa                	sd	a0,72(sp)
    800076b0:	4696                	lw	a3,68(sp)
    800076b2:	03714783          	lbu	a5,55(sp)
    800076b6:	2781                	sext.w	a5,a5
    800076b8:	5772                	lw	a4,60(sp)
    800076ba:	6626                	ld	a2,72(sp)
    800076bc:	65c2                	ld	a1,16(sp)
    800076be:	6562                	ld	a0,24(sp)
    800076c0:	c29ff0ef          	jal	ra,800072e8 <printnum>
    800076c4:	a831                	j	800076e0 <vprintfmt+0x286>
    800076c6:	67e2                	ld	a5,24(sp)
    800076c8:	65c2                	ld	a1,16(sp)
    800076ca:	8522                	mv	a0,s0
    800076cc:	9782                	jalr	a5
    800076ce:	a809                	j	800076e0 <vprintfmt+0x286>
    800076d0:	67e2                	ld	a5,24(sp)
    800076d2:	65c2                	ld	a1,16(sp)
    800076d4:	02500513          	li	a0,37
    800076d8:	9782                	jalr	a5
    800076da:	77a2                	ld	a5,40(sp)
    800076dc:	e43e                	sd	a5,8(sp)
    800076de:	0001                	nop
    800076e0:	bb79                	j	8000747e <vprintfmt+0x24>
    800076e2:	0001                	nop
    800076e4:	70a6                	ld	ra,104(sp)
    800076e6:	7406                	ld	s0,96(sp)
    800076e8:	64e6                	ld	s1,88(sp)
    800076ea:	6165                	addi	sp,sp,112
    800076ec:	8082                	ret

00000000800076ee <printf>:
    800076ee:	7159                	addi	sp,sp,-112
    800076f0:	f406                	sd	ra,40(sp)
    800076f2:	e42a                	sd	a0,8(sp)
    800076f4:	fc2e                	sd	a1,56(sp)
    800076f6:	e0b2                	sd	a2,64(sp)
    800076f8:	e4b6                	sd	a3,72(sp)
    800076fa:	e8ba                	sd	a4,80(sp)
    800076fc:	ecbe                	sd	a5,88(sp)
    800076fe:	f0c2                	sd	a6,96(sp)
    80007700:	f4c6                	sd	a7,104(sp)
    80007702:	189c                	addi	a5,sp,112
    80007704:	fc878793          	addi	a5,a5,-56
    80007708:	ec3e                	sd	a5,24(sp)
    8000770a:	67e2                	ld	a5,24(sp)
    8000770c:	86be                	mv	a3,a5
    8000770e:	6622                	ld	a2,8(sp)
    80007710:	4581                	li	a1,0
    80007712:	00000517          	auipc	a0,0x0
    80007716:	aae50513          	addi	a0,a0,-1362 # 800071c0 <putchar>
    8000771a:	d41ff0ef          	jal	ra,8000745a <vprintfmt>
    8000771e:	4781                	li	a5,0
    80007720:	853e                	mv	a0,a5
    80007722:	70a2                	ld	ra,40(sp)
    80007724:	6165                	addi	sp,sp,112
    80007726:	8082                	ret

0000000080007728 <sprintf_putch.1158>:
    80007728:	7179                	addi	sp,sp,-48
    8000772a:	87aa                	mv	a5,a0
    8000772c:	e82e                	sd	a1,16(sp)
    8000772e:	ce3e                	sw	a5,28(sp)
    80007730:	e41e                	sd	t2,8(sp)
    80007732:	67c2                	ld	a5,16(sp)
    80007734:	f43e                	sd	a5,40(sp)
    80007736:	77a2                	ld	a5,40(sp)
    80007738:	639c                	ld	a5,0(a5)
    8000773a:	4772                	lw	a4,28(sp)
    8000773c:	0ff77713          	andi	a4,a4,255
    80007740:	00e78023          	sb	a4,0(a5)
    80007744:	77a2                	ld	a5,40(sp)
    80007746:	639c                	ld	a5,0(a5)
    80007748:	00178713          	addi	a4,a5,1
    8000774c:	77a2                	ld	a5,40(sp)
    8000774e:	e398                	sd	a4,0(a5)
    80007750:	0001                	nop
    80007752:	6145                	addi	sp,sp,48
    80007754:	8082                	ret

0000000080007756 <sprintf>:
    80007756:	7111                	addi	sp,sp,-256
    80007758:	e586                	sd	ra,200(sp)
    8000775a:	e42a                	sd	a0,8(sp)
    8000775c:	e02e                	sd	a1,0(sp)
    8000775e:	e9b2                	sd	a2,208(sp)
    80007760:	edb6                	sd	a3,216(sp)
    80007762:	f1ba                	sd	a4,224(sp)
    80007764:	f5be                	sd	a5,232(sp)
    80007766:	f9c2                	sd	a6,240(sp)
    80007768:	fdc6                	sd	a7,248(sp)
    8000776a:	021c                	addi	a5,sp,256
    8000776c:	f53e                	sd	a5,168(sp)
    8000776e:	083c                	addi	a5,sp,24
    80007770:	0838                	addi	a4,sp,24
    80007772:	39700693          	li	a3,919
    80007776:	c394                	sw	a3,0(a5)
    80007778:	0183b6b7          	lui	a3,0x183b
    8000777c:	3036869b          	addiw	a3,a3,771
    80007780:	c3d4                	sw	a3,4(a5)
    80007782:	0103b6b7          	lui	a3,0x103b
    80007786:	3836869b          	addiw	a3,a3,899
    8000778a:	c794                	sw	a3,8(a5)
    8000778c:	000306b7          	lui	a3,0x30
    80007790:	0676869b          	addiw	a3,a3,103
    80007794:	c7d4                	sw	a3,12(a5)
    80007796:	eb98                	sd	a4,16(a5)
    80007798:	00000717          	auipc	a4,0x0
    8000779c:	f9070713          	addi	a4,a4,-112 # 80007728 <sprintf_putch.1158>
    800077a0:	ef98                	sd	a4,24(a5)
    800077a2:	0000100f          	fence.i
    800077a6:	67a2                	ld	a5,8(sp)
    800077a8:	fd3e                	sd	a5,184(sp)
    800077aa:	021c                	addi	a5,sp,256
    800077ac:	fd078793          	addi	a5,a5,-48
    800077b0:	f93e                	sd	a5,176(sp)
    800077b2:	774a                	ld	a4,176(sp)
    800077b4:	083c                	addi	a5,sp,24
    800077b6:	853e                	mv	a0,a5
    800077b8:	003c                	addi	a5,sp,8
    800077ba:	86ba                	mv	a3,a4
    800077bc:	6602                	ld	a2,0(sp)
    800077be:	85be                	mv	a1,a5
    800077c0:	c9bff0ef          	jal	ra,8000745a <vprintfmt>
    800077c4:	67a2                	ld	a5,8(sp)
    800077c6:	00078023          	sb	zero,0(a5)
    800077ca:	67a2                	ld	a5,8(sp)
    800077cc:	873e                	mv	a4,a5
    800077ce:	77ea                	ld	a5,184(sp)
    800077d0:	40f707b3          	sub	a5,a4,a5
    800077d4:	2781                	sext.w	a5,a5
    800077d6:	853e                	mv	a0,a5
    800077d8:	60ae                	ld	ra,200(sp)
    800077da:	6111                	addi	sp,sp,256
    800077dc:	8082                	ret

00000000800077de <memcpy>:
    800077de:	7139                	addi	sp,sp,-64
    800077e0:	ec2a                	sd	a0,24(sp)
    800077e2:	e82e                	sd	a1,16(sp)
    800077e4:	e432                	sd	a2,8(sp)
    800077e6:	6762                	ld	a4,24(sp)
    800077e8:	67c2                	ld	a5,16(sp)
    800077ea:	8f5d                	or	a4,a4,a5
    800077ec:	67a2                	ld	a5,8(sp)
    800077ee:	8fd9                	or	a5,a5,a4
    800077f0:	8b9d                	andi	a5,a5,7
    800077f2:	e79d                	bnez	a5,80007820 <memcpy+0x42>
    800077f4:	67c2                	ld	a5,16(sp)
    800077f6:	fc3e                	sd	a5,56(sp)
    800077f8:	67e2                	ld	a5,24(sp)
    800077fa:	f83e                	sd	a5,48(sp)
    800077fc:	a819                	j	80007812 <memcpy+0x34>
    800077fe:	7762                	ld	a4,56(sp)
    80007800:	00870793          	addi	a5,a4,8
    80007804:	fc3e                	sd	a5,56(sp)
    80007806:	77c2                	ld	a5,48(sp)
    80007808:	00878693          	addi	a3,a5,8
    8000780c:	f836                	sd	a3,48(sp)
    8000780e:	6318                	ld	a4,0(a4)
    80007810:	e398                	sd	a4,0(a5)
    80007812:	6762                	ld	a4,24(sp)
    80007814:	67a2                	ld	a5,8(sp)
    80007816:	97ba                	add	a5,a5,a4
    80007818:	7742                	ld	a4,48(sp)
    8000781a:	fef762e3          	bltu	a4,a5,800077fe <memcpy+0x20>
    8000781e:	a805                	j	8000784e <memcpy+0x70>
    80007820:	67c2                	ld	a5,16(sp)
    80007822:	f43e                	sd	a5,40(sp)
    80007824:	67e2                	ld	a5,24(sp)
    80007826:	f03e                	sd	a5,32(sp)
    80007828:	a829                	j	80007842 <memcpy+0x64>
    8000782a:	7722                	ld	a4,40(sp)
    8000782c:	00170793          	addi	a5,a4,1
    80007830:	f43e                	sd	a5,40(sp)
    80007832:	7782                	ld	a5,32(sp)
    80007834:	00178693          	addi	a3,a5,1
    80007838:	f036                	sd	a3,32(sp)
    8000783a:	00074703          	lbu	a4,0(a4)
    8000783e:	00e78023          	sb	a4,0(a5)
    80007842:	6762                	ld	a4,24(sp)
    80007844:	67a2                	ld	a5,8(sp)
    80007846:	97ba                	add	a5,a5,a4
    80007848:	7702                	ld	a4,32(sp)
    8000784a:	fef760e3          	bltu	a4,a5,8000782a <memcpy+0x4c>
    8000784e:	67e2                	ld	a5,24(sp)
    80007850:	853e                	mv	a0,a5
    80007852:	6121                	addi	sp,sp,64
    80007854:	8082                	ret

0000000080007856 <memset>:
    80007856:	7139                	addi	sp,sp,-64
    80007858:	ec2a                	sd	a0,24(sp)
    8000785a:	87ae                	mv	a5,a1
    8000785c:	e432                	sd	a2,8(sp)
    8000785e:	ca3e                	sw	a5,20(sp)
    80007860:	6762                	ld	a4,24(sp)
    80007862:	67a2                	ld	a5,8(sp)
    80007864:	8fd9                	or	a5,a5,a4
    80007866:	8b9d                	andi	a5,a5,7
    80007868:	e7a1                	bnez	a5,800078b0 <memset+0x5a>
    8000786a:	47d2                	lw	a5,20(sp)
    8000786c:	0ff7f793          	andi	a5,a5,255
    80007870:	f43e                	sd	a5,40(sp)
    80007872:	77a2                	ld	a5,40(sp)
    80007874:	07a2                	slli	a5,a5,0x8
    80007876:	7722                	ld	a4,40(sp)
    80007878:	8fd9                	or	a5,a5,a4
    8000787a:	f43e                	sd	a5,40(sp)
    8000787c:	77a2                	ld	a5,40(sp)
    8000787e:	07c2                	slli	a5,a5,0x10
    80007880:	7722                	ld	a4,40(sp)
    80007882:	8fd9                	or	a5,a5,a4
    80007884:	f43e                	sd	a5,40(sp)
    80007886:	77a2                	ld	a5,40(sp)
    80007888:	1782                	slli	a5,a5,0x20
    8000788a:	7722                	ld	a4,40(sp)
    8000788c:	8fd9                	or	a5,a5,a4
    8000788e:	f43e                	sd	a5,40(sp)
    80007890:	67e2                	ld	a5,24(sp)
    80007892:	fc3e                	sd	a5,56(sp)
    80007894:	a039                	j	800078a2 <memset+0x4c>
    80007896:	77e2                	ld	a5,56(sp)
    80007898:	00878713          	addi	a4,a5,8
    8000789c:	fc3a                	sd	a4,56(sp)
    8000789e:	7722                	ld	a4,40(sp)
    800078a0:	e398                	sd	a4,0(a5)
    800078a2:	6762                	ld	a4,24(sp)
    800078a4:	67a2                	ld	a5,8(sp)
    800078a6:	97ba                	add	a5,a5,a4
    800078a8:	7762                	ld	a4,56(sp)
    800078aa:	fef766e3          	bltu	a4,a5,80007896 <memset+0x40>
    800078ae:	a01d                	j	800078d4 <memset+0x7e>
    800078b0:	67e2                	ld	a5,24(sp)
    800078b2:	f83e                	sd	a5,48(sp)
    800078b4:	a811                	j	800078c8 <memset+0x72>
    800078b6:	77c2                	ld	a5,48(sp)
    800078b8:	00178713          	addi	a4,a5,1
    800078bc:	f83a                	sd	a4,48(sp)
    800078be:	4752                	lw	a4,20(sp)
    800078c0:	0ff77713          	andi	a4,a4,255
    800078c4:	00e78023          	sb	a4,0(a5)
    800078c8:	6762                	ld	a4,24(sp)
    800078ca:	67a2                	ld	a5,8(sp)
    800078cc:	97ba                	add	a5,a5,a4
    800078ce:	7742                	ld	a4,48(sp)
    800078d0:	fef763e3          	bltu	a4,a5,800078b6 <memset+0x60>
    800078d4:	67e2                	ld	a5,24(sp)
    800078d6:	853e                	mv	a0,a5
    800078d8:	6121                	addi	sp,sp,64
    800078da:	8082                	ret

00000000800078dc <strlen>:
    800078dc:	1101                	addi	sp,sp,-32
    800078de:	e42a                	sd	a0,8(sp)
    800078e0:	67a2                	ld	a5,8(sp)
    800078e2:	ec3e                	sd	a5,24(sp)
    800078e4:	a021                	j	800078ec <strlen+0x10>
    800078e6:	67e2                	ld	a5,24(sp)
    800078e8:	0785                	addi	a5,a5,1
    800078ea:	ec3e                	sd	a5,24(sp)
    800078ec:	67e2                	ld	a5,24(sp)
    800078ee:	0007c783          	lbu	a5,0(a5)
    800078f2:	fbf5                	bnez	a5,800078e6 <strlen+0xa>
    800078f4:	6762                	ld	a4,24(sp)
    800078f6:	67a2                	ld	a5,8(sp)
    800078f8:	40f707b3          	sub	a5,a4,a5
    800078fc:	853e                	mv	a0,a5
    800078fe:	6105                	addi	sp,sp,32
    80007900:	8082                	ret

0000000080007902 <strnlen>:
    80007902:	1101                	addi	sp,sp,-32
    80007904:	e42a                	sd	a0,8(sp)
    80007906:	e02e                	sd	a1,0(sp)
    80007908:	67a2                	ld	a5,8(sp)
    8000790a:	ec3e                	sd	a5,24(sp)
    8000790c:	a021                	j	80007914 <strnlen+0x12>
    8000790e:	67e2                	ld	a5,24(sp)
    80007910:	0785                	addi	a5,a5,1
    80007912:	ec3e                	sd	a5,24(sp)
    80007914:	6782                	ld	a5,0(sp)
    80007916:	fff78713          	addi	a4,a5,-1
    8000791a:	e03a                	sd	a4,0(sp)
    8000791c:	c789                	beqz	a5,80007926 <strnlen+0x24>
    8000791e:	67e2                	ld	a5,24(sp)
    80007920:	0007c783          	lbu	a5,0(a5)
    80007924:	f7ed                	bnez	a5,8000790e <strnlen+0xc>
    80007926:	6762                	ld	a4,24(sp)
    80007928:	67a2                	ld	a5,8(sp)
    8000792a:	40f707b3          	sub	a5,a4,a5
    8000792e:	853e                	mv	a0,a5
    80007930:	6105                	addi	sp,sp,32
    80007932:	8082                	ret

0000000080007934 <strcmp>:
    80007934:	1101                	addi	sp,sp,-32
    80007936:	e42a                	sd	a0,8(sp)
    80007938:	e02e                	sd	a1,0(sp)
    8000793a:	67a2                	ld	a5,8(sp)
    8000793c:	00178713          	addi	a4,a5,1
    80007940:	e43a                	sd	a4,8(sp)
    80007942:	0007c783          	lbu	a5,0(a5)
    80007946:	00f10fa3          	sb	a5,31(sp)
    8000794a:	6782                	ld	a5,0(sp)
    8000794c:	00178713          	addi	a4,a5,1
    80007950:	e03a                	sd	a4,0(sp)
    80007952:	0007c783          	lbu	a5,0(a5)
    80007956:	00f10f23          	sb	a5,30(sp)
    8000795a:	01f14783          	lbu	a5,31(sp)
    8000795e:	0ff7f793          	andi	a5,a5,255
    80007962:	cb99                	beqz	a5,80007978 <strcmp+0x44>
    80007964:	01f14703          	lbu	a4,31(sp)
    80007968:	01e14783          	lbu	a5,30(sp)
    8000796c:	0ff77713          	andi	a4,a4,255
    80007970:	0ff7f793          	andi	a5,a5,255
    80007974:	fcf703e3          	beq	a4,a5,8000793a <strcmp+0x6>
    80007978:	01f14783          	lbu	a5,31(sp)
    8000797c:	0007871b          	sext.w	a4,a5
    80007980:	01e14783          	lbu	a5,30(sp)
    80007984:	2781                	sext.w	a5,a5
    80007986:	40f707bb          	subw	a5,a4,a5
    8000798a:	2781                	sext.w	a5,a5
    8000798c:	853e                	mv	a0,a5
    8000798e:	6105                	addi	sp,sp,32
    80007990:	8082                	ret

0000000080007992 <strcpy>:
    80007992:	1101                	addi	sp,sp,-32
    80007994:	e42a                	sd	a0,8(sp)
    80007996:	e02e                	sd	a1,0(sp)
    80007998:	67a2                	ld	a5,8(sp)
    8000799a:	ec3e                	sd	a5,24(sp)
    8000799c:	0001                	nop
    8000799e:	6702                	ld	a4,0(sp)
    800079a0:	00170793          	addi	a5,a4,1
    800079a4:	e03e                	sd	a5,0(sp)
    800079a6:	67e2                	ld	a5,24(sp)
    800079a8:	00178693          	addi	a3,a5,1
    800079ac:	ec36                	sd	a3,24(sp)
    800079ae:	00074703          	lbu	a4,0(a4)
    800079b2:	00e78023          	sb	a4,0(a5)
    800079b6:	0007c783          	lbu	a5,0(a5)
    800079ba:	f3f5                	bnez	a5,8000799e <strcpy+0xc>
    800079bc:	67a2                	ld	a5,8(sp)
    800079be:	853e                	mv	a0,a5
    800079c0:	6105                	addi	sp,sp,32
    800079c2:	8082                	ret

00000000800079c4 <atol>:
    800079c4:	1101                	addi	sp,sp,-32
    800079c6:	e42a                	sd	a0,8(sp)
    800079c8:	ec02                	sd	zero,24(sp)
    800079ca:	ca02                	sw	zero,20(sp)
    800079cc:	a021                	j	800079d4 <atol+0x10>
    800079ce:	67a2                	ld	a5,8(sp)
    800079d0:	0785                	addi	a5,a5,1
    800079d2:	e43e                	sd	a5,8(sp)
    800079d4:	67a2                	ld	a5,8(sp)
    800079d6:	0007c783          	lbu	a5,0(a5)
    800079da:	873e                	mv	a4,a5
    800079dc:	02000793          	li	a5,32
    800079e0:	fef707e3          	beq	a4,a5,800079ce <atol+0xa>
    800079e4:	67a2                	ld	a5,8(sp)
    800079e6:	0007c783          	lbu	a5,0(a5)
    800079ea:	873e                	mv	a4,a5
    800079ec:	02d00793          	li	a5,45
    800079f0:	00f70a63          	beq	a4,a5,80007a04 <atol+0x40>
    800079f4:	67a2                	ld	a5,8(sp)
    800079f6:	0007c783          	lbu	a5,0(a5)
    800079fa:	873e                	mv	a4,a5
    800079fc:	02b00793          	li	a5,43
    80007a00:	04f71863          	bne	a4,a5,80007a50 <atol+0x8c>
    80007a04:	67a2                	ld	a5,8(sp)
    80007a06:	0007c783          	lbu	a5,0(a5)
    80007a0a:	0007871b          	sext.w	a4,a5
    80007a0e:	02d00793          	li	a5,45
    80007a12:	40f707b3          	sub	a5,a4,a5
    80007a16:	0017b793          	seqz	a5,a5
    80007a1a:	0ff7f793          	andi	a5,a5,255
    80007a1e:	ca3e                	sw	a5,20(sp)
    80007a20:	67a2                	ld	a5,8(sp)
    80007a22:	0785                	addi	a5,a5,1
    80007a24:	e43e                	sd	a5,8(sp)
    80007a26:	a02d                	j	80007a50 <atol+0x8c>
    80007a28:	6762                	ld	a4,24(sp)
    80007a2a:	87ba                	mv	a5,a4
    80007a2c:	078a                	slli	a5,a5,0x2
    80007a2e:	97ba                	add	a5,a5,a4
    80007a30:	0786                	slli	a5,a5,0x1
    80007a32:	ec3e                	sd	a5,24(sp)
    80007a34:	67a2                	ld	a5,8(sp)
    80007a36:	00178713          	addi	a4,a5,1
    80007a3a:	e43a                	sd	a4,8(sp)
    80007a3c:	0007c783          	lbu	a5,0(a5)
    80007a40:	2781                	sext.w	a5,a5
    80007a42:	fd07879b          	addiw	a5,a5,-48
    80007a46:	2781                	sext.w	a5,a5
    80007a48:	873e                	mv	a4,a5
    80007a4a:	67e2                	ld	a5,24(sp)
    80007a4c:	97ba                	add	a5,a5,a4
    80007a4e:	ec3e                	sd	a5,24(sp)
    80007a50:	67a2                	ld	a5,8(sp)
    80007a52:	0007c783          	lbu	a5,0(a5)
    80007a56:	fbe9                	bnez	a5,80007a28 <atol+0x64>
    80007a58:	47d2                	lw	a5,20(sp)
    80007a5a:	2781                	sext.w	a5,a5
    80007a5c:	c789                	beqz	a5,80007a66 <atol+0xa2>
    80007a5e:	67e2                	ld	a5,24(sp)
    80007a60:	40f007b3          	neg	a5,a5
    80007a64:	a011                	j	80007a68 <atol+0xa4>
    80007a66:	67e2                	ld	a5,24(sp)
    80007a68:	853e                	mv	a0,a5
    80007a6a:	6105                	addi	sp,sp,32
    80007a6c:	8082                	ret

0000000080007a6e <syscall_handler>:
    80007a6e:	1101                	addi	sp,sp,-32
    80007a70:	ec06                	sd	ra,24(sp)
    80007a72:	e42a                	sd	a0,8(sp)
    80007a74:	6522                	ld	a0,8(sp)
    80007a76:	e90f80ef          	jal	ra,80000106 <task_switch>
    80007a7a:	0001                	nop
    80007a7c:	60e2                	ld	ra,24(sp)
    80007a7e:	6105                	addi	sp,sp,32
    80007a80:	8082                	ret

0000000080007a82 <time_handler>:
    80007a82:	1101                	addi	sp,sp,-32
    80007a84:	ec06                	sd	ra,24(sp)
    80007a86:	e42a                	sd	a0,8(sp)
    80007a88:	e9cff0ef          	jal	ra,80007124 <next_timecmp>
    80007a8c:	d45f80ef          	jal	ra,800007d0 <OSIntEnter>
    80007a90:	84ef90ef          	jal	ra,80000ade <OSTimeTick>
    80007a94:	d89f80ef          	jal	ra,8000081c <OSIntExit>
    80007a98:	6522                	ld	a0,8(sp)
    80007a9a:	e6cf80ef          	jal	ra,80000106 <task_switch>
    80007a9e:	0001                	nop
    80007aa0:	60e2                	ld	ra,24(sp)
    80007aa2:	6105                	addi	sp,sp,32
    80007aa4:	8082                	ret

0000000080007aa6 <trap_handler>:
    80007aa6:	7179                	addi	sp,sp,-48
    80007aa8:	f406                	sd	ra,40(sp)
    80007aaa:	ec2a                	sd	a0,24(sp)
    80007aac:	e82e                	sd	a1,16(sp)
    80007aae:	e432                	sd	a2,8(sp)
    80007ab0:	67e2                	ld	a5,24(sp)
    80007ab2:	0207db63          	bgez	a5,80007ae8 <trap_handler+0x42>
    80007ab6:	67e2                	ld	a5,24(sp)
    80007ab8:	0786                	slli	a5,a5,0x1
    80007aba:	ec3e                	sd	a5,24(sp)
    80007abc:	67e2                	ld	a5,24(sp)
    80007abe:	8785                	srai	a5,a5,0x1
    80007ac0:	ec3e                	sd	a5,24(sp)
    80007ac2:	6762                	ld	a4,24(sp)
    80007ac4:	479d                	li	a5,7
    80007ac6:	00f71b63          	bne	a4,a5,80007adc <trap_handler+0x36>
    80007aca:	67a2                	ld	a5,8(sp)
    80007acc:	0f878793          	addi	a5,a5,248
    80007ad0:	6742                	ld	a4,16(sp)
    80007ad2:	e398                	sd	a4,0(a5)
    80007ad4:	6522                	ld	a0,8(sp)
    80007ad6:	fadff0ef          	jal	ra,80007a82 <time_handler>
    80007ada:	a82d                	j	80007b14 <trap_handler+0x6e>
    80007adc:	65c2                	ld	a1,16(sp)
    80007ade:	6562                	ld	a0,24(sp)
    80007ae0:	03e000ef          	jal	ra,80007b1e <halt>
    80007ae4:	0001                	nop
    80007ae6:	a03d                	j	80007b14 <trap_handler+0x6e>
    80007ae8:	6762                	ld	a4,24(sp)
    80007aea:	47ad                	li	a5,11
    80007aec:	00f71f63          	bne	a4,a5,80007b0a <trap_handler+0x64>
    80007af0:	67a2                	ld	a5,8(sp)
    80007af2:	0f878793          	addi	a5,a5,248
    80007af6:	6742                	ld	a4,16(sp)
    80007af8:	0711                	addi	a4,a4,4
    80007afa:	e398                	sd	a4,0(a5)
    80007afc:	6522                	ld	a0,8(sp)
    80007afe:	f71ff0ef          	jal	ra,80007a6e <syscall_handler>
    80007b02:	67c2                	ld	a5,16(sp)
    80007b04:	0791                	addi	a5,a5,4
    80007b06:	e83e                	sd	a5,16(sp)
    80007b08:	a031                	j	80007b14 <trap_handler+0x6e>
    80007b0a:	65c2                	ld	a1,16(sp)
    80007b0c:	6562                	ld	a0,24(sp)
    80007b0e:	010000ef          	jal	ra,80007b1e <halt>
    80007b12:	0001                	nop
    80007b14:	67c2                	ld	a5,16(sp)
    80007b16:	853e                	mv	a0,a5
    80007b18:	70a2                	ld	ra,40(sp)
    80007b1a:	6145                	addi	sp,sp,48
    80007b1c:	8082                	ret

0000000080007b1e <halt>:
    80007b1e:	1101                	addi	sp,sp,-32
    80007b20:	ec06                	sd	ra,24(sp)
    80007b22:	e42a                	sd	a0,8(sp)
    80007b24:	e02e                	sd	a1,0(sp)
    80007b26:	30047073          	csrci	mstatus,8
    80007b2a:	6602                	ld	a2,0(sp)
    80007b2c:	65a2                	ld	a1,8(sp)
    80007b2e:	00078517          	auipc	a0,0x78
    80007b32:	7a250513          	addi	a0,a0,1954 # 800802d0 <OSUnMapTbl+0x2c8>
    80007b36:	bb9ff0ef          	jal	ra,800076ee <printf>
    80007b3a:	4501                	li	a0,0
    80007b3c:	eeef80ef          	jal	ra,8000022a <exit>
    80007b40:	0001                	nop
    80007b42:	60e2                	ld	ra,24(sp)
    80007b44:	6105                	addi	sp,sp,32
    80007b46:	8082                	ret

0000000080007b48 <task1>:
    80007b48:	7179                	addi	sp,sp,-48
    80007b4a:	f406                	sd	ra,40(sp)
    80007b4c:	e42a                	sd	a0,8(sp)
    80007b4e:	ce02                	sw	zero,28(sp)
    80007b50:	47f2                	lw	a5,28(sp)
    80007b52:	2785                	addiw	a5,a5,1
    80007b54:	ce3e                	sw	a5,28(sp)
    80007b56:	47f2                	lw	a5,28(sp)
    80007b58:	85be                	mv	a1,a5
    80007b5a:	00078517          	auipc	a0,0x78
    80007b5e:	79650513          	addi	a0,a0,1942 # 800802f0 <OSUnMapTbl+0x2e8>
    80007b62:	b8dff0ef          	jal	ra,800076ee <printf>
    80007b66:	4529                	li	a0,10
    80007b68:	b78fe0ef          	jal	ra,80005ee0 <OSTimeDly>
    80007b6c:	b7d5                	j	80007b50 <task1+0x8>

0000000080007b6e <task2>:
    80007b6e:	7179                	addi	sp,sp,-48
    80007b70:	f406                	sd	ra,40(sp)
    80007b72:	e42a                	sd	a0,8(sp)
    80007b74:	ce02                	sw	zero,28(sp)
    80007b76:	47f2                	lw	a5,28(sp)
    80007b78:	2785                	addiw	a5,a5,1
    80007b7a:	ce3e                	sw	a5,28(sp)
    80007b7c:	47f2                	lw	a5,28(sp)
    80007b7e:	85be                	mv	a1,a5
    80007b80:	00078517          	auipc	a0,0x78
    80007b84:	78850513          	addi	a0,a0,1928 # 80080308 <OSUnMapTbl+0x300>
    80007b88:	b67ff0ef          	jal	ra,800076ee <printf>
    80007b8c:	452d                	li	a0,11
    80007b8e:	b52fe0ef          	jal	ra,80005ee0 <OSTimeDly>
    80007b92:	b7d5                	j	80007b76 <task2+0x8>

0000000080007b94 <start_task>:
    80007b94:	1101                	addi	sp,sp,-32
    80007b96:	ec06                	sd	ra,24(sp)
    80007b98:	e42a                	sd	a0,8(sp)
    80007b9a:	00078517          	auipc	a0,0x78
    80007b9e:	78650513          	addi	a0,a0,1926 # 80080320 <OSUnMapTbl+0x318>
    80007ba2:	b4dff0ef          	jal	ra,800076ee <printf>
    80007ba6:	d7eff0ef          	jal	ra,80007124 <next_timecmp>
    80007baa:	08000293          	li	t0,128
    80007bae:	3042a073          	csrs	mie,t0
    80007bb2:	30046073          	csrsi	mstatus,8
    80007bb6:	46b5                	li	a3,13
    80007bb8:	00083617          	auipc	a2,0x83
    80007bbc:	cc860613          	addi	a2,a2,-824 # 8008a880 <task1_stk+0x3ff8>
    80007bc0:	4581                	li	a1,0
    80007bc2:	00000517          	auipc	a0,0x0
    80007bc6:	f8650513          	addi	a0,a0,-122 # 80007b48 <task1>
    80007bca:	f10fd0ef          	jal	ra,800052da <OSTaskCreate>
    80007bce:	46b1                	li	a3,12
    80007bd0:	00087617          	auipc	a2,0x87
    80007bd4:	cb060613          	addi	a2,a2,-848 # 8008e880 <task2_stk+0x3ff8>
    80007bd8:	4581                	li	a1,0
    80007bda:	00000517          	auipc	a0,0x0
    80007bde:	f9450513          	addi	a0,a0,-108 # 80007b6e <task2>
    80007be2:	ef8fd0ef          	jal	ra,800052da <OSTaskCreate>
    80007be6:	0ff00513          	li	a0,255
    80007bea:	8f3fd0ef          	jal	ra,800054dc <OSTaskDel>
    80007bee:	a001                	j	80007bee <start_task+0x5a>

0000000080007bf0 <main>:
    80007bf0:	1141                	addi	sp,sp,-16
    80007bf2:	e406                	sd	ra,8(sp)
    80007bf4:	00078517          	auipc	a0,0x78
    80007bf8:	74450513          	addi	a0,a0,1860 # 80080338 <OSUnMapTbl+0x330>
    80007bfc:	af3ff0ef          	jal	ra,800076ee <printf>
    80007c00:	b95f80ef          	jal	ra,80000794 <OSInit>
    80007c04:	46a9                	li	a3,10
    80007c06:	0007f617          	auipc	a2,0x7f
    80007c0a:	c7a60613          	addi	a2,a2,-902 # 80086880 <start_stk+0x3ff8>
    80007c0e:	4581                	li	a1,0
    80007c10:	00000517          	auipc	a0,0x0
    80007c14:	f8450513          	addi	a0,a0,-124 # 80007b94 <start_task>
    80007c18:	ec2fd0ef          	jal	ra,800052da <OSTaskCreate>
    80007c1c:	00078517          	auipc	a0,0x78
    80007c20:	72c50513          	addi	a0,a0,1836 # 80080348 <OSUnMapTbl+0x340>
    80007c24:	acbff0ef          	jal	ra,800076ee <printf>
    80007c28:	ddff80ef          	jal	ra,80000a06 <OSStart>
    80007c2c:	a001                	j	80007c2c <main+0x3c>
