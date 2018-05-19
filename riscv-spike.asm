
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
    8000005a:	b1a18193          	addi	gp,gp,-1254 # 80080b70 <_gp>
    8000005e:	00096117          	auipc	sp,0x96
    80000062:	7b210113          	addi	sp,sp,1970 # 80096810 <__stack>
    80000066:	1780006f          	j	800001de <init>
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
    800000ba:	694050ef          	jal	ra,8000574e <trap_handler>
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
    8000010c:	27828293          	addi	t0,t0,632 # 80081380 <OSTCBCur>
    80000110:	0002b303          	ld	t1,0(t0)
    80000114:	00233023          	sd	sp,0(t1)
    80000118:	78d040ef          	jal	ra,800050a4 <OSTaskSwHook>
    8000011c:	00081297          	auipc	t0,0x81
    80000120:	e3428293          	addi	t0,t0,-460 # 80080f50 <OSTCBHighRdy>
    80000124:	0002b303          	ld	t1,0(t0)
    80000128:	00081297          	auipc	t0,0x81
    8000012c:	25828293          	addi	t0,t0,600 # 80081380 <OSTCBCur>
    80000130:	0062b023          	sd	t1,0(t0)
    80000134:	00080297          	auipc	t0,0x80
    80000138:	32e28293          	addi	t0,t0,814 # 80080462 <OSPrioHighRdy>
    8000013c:	0002c303          	lbu	t1,0(t0)
    80000140:	00081297          	auipc	t0,0x81
    80000144:	84828293          	addi	t0,t0,-1976 # 80080988 <OSPrioCur>
    80000148:	00628023          	sb	t1,0(t0)
    8000014c:	00081297          	auipc	t0,0x81
    80000150:	e0428293          	addi	t0,t0,-508 # 80080f50 <OSTCBHighRdy>
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

00000000800001c6 <exit>:
    800001c6:	30047073          	csrci	mstatus,8
    800001ca:	0015179b          	slliw	a5,a0,0x1
    800001ce:	0017e793          	ori	a5,a5,1
    800001d2:	2781                	sext.w	a5,a5
    800001d4:	00082717          	auipc	a4,0x82
    800001d8:	62f73623          	sd	a5,1580(a4) # 80082800 <tohost>
    800001dc:	a001                	j	800001dc <exit+0x16>

00000000800001de <init>:
    800001de:	1101                	addi	sp,sp,-32
    800001e0:	ec06                	sd	ra,24(sp)
    800001e2:	00080797          	auipc	a5,0x80
    800001e6:	18678793          	addi	a5,a5,390 # 80080368 <__rodata_end>
    800001ea:	00080717          	auipc	a4,0x80
    800001ee:	18270713          	addi	a4,a4,386 # 8008036c <buflen.1036>
    800001f2:	00f76763          	bltu	a4,a5,80000200 <init+0x22>
    800001f6:	0007a023          	sw	zero,0(a5)
    800001fa:	0791                	addi	a5,a5,4
    800001fc:	fef77de3          	bleu	a5,a4,800001f6 <init+0x18>
    80000200:	00080797          	auipc	a5,0x80
    80000204:	18078793          	addi	a5,a5,384 # 80080380 <__bss_start>
    80000208:	0008e717          	auipc	a4,0x8e
    8000020c:	60470713          	addi	a4,a4,1540 # 8008e80c <mstatus_save+0x4>
    80000210:	00f76763          	bltu	a4,a5,8000021e <init+0x40>
    80000214:	0007a023          	sw	zero,0(a5)
    80000218:	0791                	addi	a5,a5,4
    8000021a:	fef77de3          	bleu	a5,a4,80000214 <init+0x36>
    8000021e:	858a                	mv	a1,sp
    80000220:	00080797          	auipc	a5,0x80
    80000224:	03878793          	addi	a5,a5,56 # 80080258 <OSUnMapTbl+0x258>
    80000228:	4505                	li	a0,1
    8000022a:	e03e                	sd	a5,0(sp)
    8000022c:	e402                	sd	zero,8(sp)
    8000022e:	674050ef          	jal	ra,800058a2 <main>
    80000232:	f95ff0ef          	jal	ra,800001c6 <exit>
    80000236:	60e2                	ld	ra,24(sp)
    80000238:	6105                	addi	sp,sp,32
    8000023a:	8082                	ret

000000008000023c <OS_FlagBlock>:
    8000023c:	00081897          	auipc	a7,0x81
    80000240:	14488893          	addi	a7,a7,324 # 80081380 <OSTCBCur>
    80000244:	0008b783          	ld	a5,0(a7)
    80000248:	0587c803          	lbu	a6,88(a5)
    8000024c:	04078ca3          	sb	zero,89(a5)
    80000250:	cbf8                	sw	a4,84(a5)
    80000252:	02086813          	ori	a6,a6,32
    80000256:	05078c23          	sb	a6,88(a5)
    8000025a:	e7ac                	sd	a1,72(a5)
    8000025c:	02c59023          	sh	a2,32(a1)
    80000260:	02d58123          	sb	a3,34(a1)
    80000264:	e99c                	sd	a5,16(a1)
    80000266:	651c                	ld	a5,8(a0)
    80000268:	0005b423          	sd	zero,8(a1)
    8000026c:	ed88                	sd	a0,24(a1)
    8000026e:	e19c                	sd	a5,0(a1)
    80000270:	651c                	ld	a5,8(a0)
    80000272:	c391                	beqz	a5,80000276 <OS_FlagBlock+0x3a>
    80000274:	e78c                	sd	a1,8(a5)
    80000276:	0008b683          	ld	a3,0(a7)
    8000027a:	e50c                	sd	a1,8(a0)
    8000027c:	00081717          	auipc	a4,0x81
    80000280:	cec70713          	addi	a4,a4,-788 # 80080f68 <OSRdyTbl>
    80000284:	05c6c603          	lbu	a2,92(a3)
    80000288:	05d6c783          	lbu	a5,93(a3)
    8000028c:	9732                	add	a4,a4,a2
    8000028e:	00074603          	lbu	a2,0(a4)
    80000292:	fff7c793          	not	a5,a5
    80000296:	8ff1                	and	a5,a5,a2
    80000298:	00f70023          	sb	a5,0(a4)
    8000029c:	ef91                	bnez	a5,800002b8 <OS_FlagBlock+0x7c>
    8000029e:	05e6c783          	lbu	a5,94(a3)
    800002a2:	00081717          	auipc	a4,0x81
    800002a6:	cbe74703          	lbu	a4,-834(a4) # 80080f60 <OSRdyGrp>
    800002aa:	fff7c793          	not	a5,a5
    800002ae:	8ff9                	and	a5,a5,a4
    800002b0:	00081717          	auipc	a4,0x81
    800002b4:	caf70823          	sb	a5,-848(a4) # 80080f60 <OSRdyGrp>
    800002b8:	8082                	ret

00000000800002ba <OS_FlagTaskRdy>:
    800002ba:	691c                	ld	a5,16(a0)
    800002bc:	872a                	mv	a4,a0
    800002be:	4501                	li	a0,0
    800002c0:	0587c683          	lbu	a3,88(a5)
    800002c4:	0407aa23          	sw	zero,84(a5)
    800002c8:	04b79823          	sh	a1,80(a5)
    800002cc:	0df6f693          	andi	a3,a3,223
    800002d0:	04d78c23          	sb	a3,88(a5)
    800002d4:	04078ca3          	sb	zero,89(a5)
    800002d8:	ea9d                	bnez	a3,8000030e <OS_FlagTaskRdy+0x54>
    800002da:	05c7c603          	lbu	a2,92(a5)
    800002de:	00081697          	auipc	a3,0x81
    800002e2:	c8a68693          	addi	a3,a3,-886 # 80080f68 <OSRdyTbl>
    800002e6:	05e7c583          	lbu	a1,94(a5)
    800002ea:	96b2                	add	a3,a3,a2
    800002ec:	0006c603          	lbu	a2,0(a3)
    800002f0:	05d7c783          	lbu	a5,93(a5)
    800002f4:	00081517          	auipc	a0,0x81
    800002f8:	c6c54503          	lbu	a0,-916(a0) # 80080f60 <OSRdyGrp>
    800002fc:	8dc9                	or	a1,a1,a0
    800002fe:	8fd1                	or	a5,a5,a2
    80000300:	00f68023          	sb	a5,0(a3)
    80000304:	00081617          	auipc	a2,0x81
    80000308:	c4b60e23          	sb	a1,-932(a2) # 80080f60 <OSRdyGrp>
    8000030c:	4505                	li	a0,1
    8000030e:	6714                	ld	a3,8(a4)
    80000310:	631c                	ld	a5,0(a4)
    80000312:	ca81                	beqz	a3,80000322 <OS_FlagTaskRdy+0x68>
    80000314:	e29c                	sd	a5,0(a3)
    80000316:	c391                	beqz	a5,8000031a <OS_FlagTaskRdy+0x60>
    80000318:	e794                	sd	a3,8(a5)
    8000031a:	6b1c                	ld	a5,16(a4)
    8000031c:	0407b423          	sd	zero,72(a5)
    80000320:	8082                	ret
    80000322:	6f14                	ld	a3,24(a4)
    80000324:	e69c                	sd	a5,8(a3)
    80000326:	dbf5                	beqz	a5,8000031a <OS_FlagTaskRdy+0x60>
    80000328:	0007b423          	sd	zero,8(a5)
    8000032c:	6b1c                	ld	a5,16(a4)
    8000032e:	0407b423          	sd	zero,72(a5)
    80000332:	8082                	ret

0000000080000334 <OSMutex_RdyAtPrio>:
    80000334:	05c54703          	lbu	a4,92(a0)
    80000338:	00081697          	auipc	a3,0x81
    8000033c:	c3068693          	addi	a3,a3,-976 # 80080f68 <OSRdyTbl>
    80000340:	05d54783          	lbu	a5,93(a0)
    80000344:	9736                	add	a4,a4,a3
    80000346:	00074603          	lbu	a2,0(a4)
    8000034a:	fff7c793          	not	a5,a5
    8000034e:	00081817          	auipc	a6,0x81
    80000352:	c1284803          	lbu	a6,-1006(a6) # 80080f60 <OSRdyGrp>
    80000356:	8ff1                	and	a5,a5,a2
    80000358:	00f70023          	sb	a5,0(a4)
    8000035c:	e799                	bnez	a5,8000036a <OSMutex_RdyAtPrio+0x36>
    8000035e:	05e54783          	lbu	a5,94(a0)
    80000362:	fff7c793          	not	a5,a5
    80000366:	00f87833          	and	a6,a6,a5
    8000036a:	0035d61b          	srliw	a2,a1,0x3
    8000036e:	8a1d                	andi	a2,a2,7
    80000370:	0006071b          	sext.w	a4,a2
    80000374:	96ba                	add	a3,a3,a4
    80000376:	0075f893          	andi	a7,a1,7
    8000037a:	4785                	li	a5,1
    8000037c:	0006ce03          	lbu	t3,0(a3)
    80000380:	00e79733          	sll	a4,a5,a4
    80000384:	011797b3          	sll	a5,a5,a7
    80000388:	0ff77713          	andi	a4,a4,255
    8000038c:	0ff7f793          	andi	a5,a5,255
    80000390:	00359313          	slli	t1,a1,0x3
    80000394:	04c50e23          	sb	a2,92(a0)
    80000398:	00082617          	auipc	a2,0x82
    8000039c:	20060613          	addi	a2,a2,512 # 80082598 <OSTCBPrioTbl>
    800003a0:	04b50d23          	sb	a1,90(a0)
    800003a4:	04e50f23          	sb	a4,94(a0)
    800003a8:	04f50ea3          	sb	a5,93(a0)
    800003ac:	01076733          	or	a4,a4,a6
    800003b0:	05150da3          	sb	a7,91(a0)
    800003b4:	01c7e7b3          	or	a5,a5,t3
    800003b8:	961a                	add	a2,a2,t1
    800003ba:	00080817          	auipc	a6,0x80
    800003be:	5cb80723          	sb	a1,1486(a6) # 80080988 <OSPrioCur>
    800003c2:	00f68023          	sb	a5,0(a3)
    800003c6:	00081597          	auipc	a1,0x81
    800003ca:	b8e58d23          	sb	a4,-1126(a1) # 80080f60 <OSRdyGrp>
    800003ce:	e208                	sd	a0,0(a2)
    800003d0:	8082                	ret

00000000800003d2 <OSTmr_Unlink>:
    800003d2:	02855783          	lhu	a5,40(a0)
    800003d6:	00080717          	auipc	a4,0x80
    800003da:	ff270713          	addi	a4,a4,-14 # 800803c8 <OSTmrWheelTbl>
    800003de:	8b9d                	andi	a5,a5,7
    800003e0:	0792                	slli	a5,a5,0x4
    800003e2:	00f706b3          	add	a3,a4,a5
    800003e6:	6290                	ld	a2,0(a3)
    800003e8:	02a60563          	beq	a2,a0,80000412 <OSTmr_Unlink+0x40>
    800003ec:	7110                	ld	a2,32(a0)
    800003ee:	6d14                	ld	a3,24(a0)
    800003f0:	ee14                	sd	a3,24(a2)
    800003f2:	c291                	beqz	a3,800003f6 <OSTmr_Unlink+0x24>
    800003f4:	f290                	sd	a2,32(a3)
    800003f6:	4685                	li	a3,1
    800003f8:	04d500a3          	sb	a3,65(a0)
    800003fc:	00053c23          	sd	zero,24(a0)
    80000400:	02053023          	sd	zero,32(a0)
    80000404:	97ba                	add	a5,a5,a4
    80000406:	0087d703          	lhu	a4,8(a5)
    8000040a:	377d                	addiw	a4,a4,-1
    8000040c:	00e79423          	sh	a4,8(a5)
    80000410:	8082                	ret
    80000412:	6d10                	ld	a2,24(a0)
    80000414:	e290                	sd	a2,0(a3)
    80000416:	d265                	beqz	a2,800003f6 <OSTmr_Unlink+0x24>
    80000418:	02063023          	sd	zero,32(a2)
    8000041c:	bfe9                	j	800003f6 <OSTmr_Unlink+0x24>

000000008000041e <OS_TaskIdle>:
    8000041e:	1141                	addi	sp,sp,-16
    80000420:	e022                	sd	s0,0(sp)
    80000422:	e406                	sd	ra,8(sp)
    80000424:	00080417          	auipc	s0,0x80
    80000428:	03840413          	addi	s0,s0,56 # 8008045c <OSIdleCtr>
    8000042c:	2d5040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80000430:	401c                	lw	a5,0(s0)
    80000432:	2785                	addiw	a5,a5,1
    80000434:	00080717          	auipc	a4,0x80
    80000438:	02f72423          	sw	a5,40(a4) # 8008045c <OSIdleCtr>
    8000043c:	2cf040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000440:	461040ef          	jal	ra,800050a0 <OSTaskIdleHook>
    80000444:	b7e5                	j	8000042c <OS_TaskIdle+0xe>

0000000080000446 <OSSchedLock.part.1>:
    80000446:	1141                	addi	sp,sp,-16
    80000448:	e406                	sd	ra,8(sp)
    8000044a:	2b7040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000044e:	00081797          	auipc	a5,0x81
    80000452:	f2a7c783          	lbu	a5,-214(a5) # 80081378 <OSIntNesting>
    80000456:	ef91                	bnez	a5,80000472 <OSSchedLock.part.1+0x2c>
    80000458:	00080797          	auipc	a5,0x80
    8000045c:	ff07c783          	lbu	a5,-16(a5) # 80080448 <OSLockNesting>
    80000460:	0ff00713          	li	a4,255
    80000464:	00e78763          	beq	a5,a4,80000472 <OSSchedLock.part.1+0x2c>
    80000468:	2785                	addiw	a5,a5,1
    8000046a:	00080717          	auipc	a4,0x80
    8000046e:	fcf70f23          	sb	a5,-34(a4) # 80080448 <OSLockNesting>
    80000472:	60a2                	ld	ra,8(sp)
    80000474:	0141                	addi	sp,sp,16
    80000476:	2950406f          	j	80004f0a <OS_CPU_SR_Restore>

000000008000047a <OSTaskNameSet.part.7>:
    8000047a:	1101                	addi	sp,sp,-32
    8000047c:	e822                	sd	s0,16(sp)
    8000047e:	e426                	sd	s1,8(sp)
    80000480:	e04a                	sd	s2,0(sp)
    80000482:	ec06                	sd	ra,24(sp)
    80000484:	842a                	mv	s0,a0
    80000486:	892e                	mv	s2,a1
    80000488:	84b2                	mv	s1,a2
    8000048a:	277040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000048e:	0ff00793          	li	a5,255
    80000492:	00f41963          	bne	s0,a5,800004a4 <OSTaskNameSet.part.7+0x2a>
    80000496:	00081797          	auipc	a5,0x81
    8000049a:	eea78793          	addi	a5,a5,-278 # 80081380 <OSTCBCur>
    8000049e:	639c                	ld	a5,0(a5)
    800004a0:	05a7c403          	lbu	s0,90(a5)
    800004a4:	00082797          	auipc	a5,0x82
    800004a8:	0f478793          	addi	a5,a5,244 # 80082598 <OSTCBPrioTbl>
    800004ac:	040e                	slli	s0,s0,0x3
    800004ae:	943e                	add	s0,s0,a5
    800004b0:	601c                	ld	a5,0(s0)
    800004b2:	c385                	beqz	a5,800004d2 <OSTaskNameSet.part.7+0x58>
    800004b4:	4705                	li	a4,1
    800004b6:	00e78e63          	beq	a5,a4,800004d2 <OSTaskNameSet.part.7+0x58>
    800004ba:	0927b023          	sd	s2,128(a5)
    800004be:	24d040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800004c2:	00048023          	sb	zero,0(s1)
    800004c6:	60e2                	ld	ra,24(sp)
    800004c8:	6442                	ld	s0,16(sp)
    800004ca:	64a2                	ld	s1,8(sp)
    800004cc:	6902                	ld	s2,0(sp)
    800004ce:	6105                	addi	sp,sp,32
    800004d0:	8082                	ret
    800004d2:	239040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800004d6:	04300793          	li	a5,67
    800004da:	00f48023          	sb	a5,0(s1)
    800004de:	60e2                	ld	ra,24(sp)
    800004e0:	6442                	ld	s0,16(sp)
    800004e2:	64a2                	ld	s1,8(sp)
    800004e4:	6902                	ld	s2,0(sp)
    800004e6:	6105                	addi	sp,sp,32
    800004e8:	8082                	ret

00000000800004ea <OSTmr_Link.constprop.10>:
    800004ea:	555c                	lw	a5,44(a0)
    800004ec:	470d                	li	a4,3
    800004ee:	04e500a3          	sb	a4,65(a0)
    800004f2:	00081717          	auipc	a4,0x81
    800004f6:	e9670713          	addi	a4,a4,-362 # 80081388 <OSTmrTime>
    800004fa:	4318                	lw	a4,0(a4)
    800004fc:	eb8d                	bnez	a5,8000052e <OSTmr_Link.constprop.10+0x44>
    800004fe:	591c                	lw	a5,48(a0)
    80000500:	9fb9                	addw	a5,a5,a4
    80000502:	d51c                	sw	a5,40(a0)
    80000504:	8b9d                	andi	a5,a5,7
    80000506:	00479713          	slli	a4,a5,0x4
    8000050a:	00080797          	auipc	a5,0x80
    8000050e:	ebe78793          	addi	a5,a5,-322 # 800803c8 <OSTmrWheelTbl>
    80000512:	97ba                	add	a5,a5,a4
    80000514:	6398                	ld	a4,0(a5)
    80000516:	e388                	sd	a0,0(a5)
    80000518:	cb05                	beqz	a4,80000548 <OSTmr_Link.constprop.10+0x5e>
    8000051a:	ed18                	sd	a4,24(a0)
    8000051c:	f308                	sd	a0,32(a4)
    8000051e:	0087d703          	lhu	a4,8(a5)
    80000522:	2705                	addiw	a4,a4,1
    80000524:	00e79423          	sh	a4,8(a5)
    80000528:	02053023          	sd	zero,32(a0)
    8000052c:	8082                	ret
    8000052e:	9fb9                	addw	a5,a5,a4
    80000530:	d51c                	sw	a5,40(a0)
    80000532:	8b9d                	andi	a5,a5,7
    80000534:	00479713          	slli	a4,a5,0x4
    80000538:	00080797          	auipc	a5,0x80
    8000053c:	e9078793          	addi	a5,a5,-368 # 800803c8 <OSTmrWheelTbl>
    80000540:	97ba                	add	a5,a5,a4
    80000542:	6398                	ld	a4,0(a5)
    80000544:	e388                	sd	a0,0(a5)
    80000546:	fb71                	bnez	a4,8000051a <OSTmr_Link.constprop.10+0x30>
    80000548:	00053c23          	sd	zero,24(a0)
    8000054c:	4705                	li	a4,1
    8000054e:	00e79423          	sh	a4,8(a5)
    80000552:	02053023          	sd	zero,32(a0)
    80000556:	8082                	ret

0000000080000558 <OSEventNameGet>:
    80000558:	7179                	addi	sp,sp,-48
    8000055a:	f022                	sd	s0,32(sp)
    8000055c:	f406                	sd	ra,40(sp)
    8000055e:	ec26                	sd	s1,24(sp)
    80000560:	e84a                	sd	s2,16(sp)
    80000562:	e44e                	sd	s3,8(sp)
    80000564:	00081417          	auipc	s0,0x81
    80000568:	e1444403          	lbu	s0,-492(s0) # 80081378 <OSIntNesting>
    8000056c:	e405                	bnez	s0,80000594 <OSEventNameGet+0x3c>
    8000056e:	00054783          	lbu	a5,0(a0)
    80000572:	470d                	li	a4,3
    80000574:	37fd                	addiw	a5,a5,-1
    80000576:	0ff7f793          	andi	a5,a5,255
    8000057a:	02f77963          	bleu	a5,a4,800005ac <OSEventNameGet+0x54>
    8000057e:	8522                	mv	a0,s0
    80000580:	70a2                	ld	ra,40(sp)
    80000582:	7402                	ld	s0,32(sp)
    80000584:	4785                	li	a5,1
    80000586:	00f60023          	sb	a5,0(a2)
    8000058a:	64e2                	ld	s1,24(sp)
    8000058c:	6942                	ld	s2,16(sp)
    8000058e:	69a2                	ld	s3,8(sp)
    80000590:	6145                	addi	sp,sp,48
    80000592:	8082                	ret
    80000594:	4401                	li	s0,0
    80000596:	8522                	mv	a0,s0
    80000598:	70a2                	ld	ra,40(sp)
    8000059a:	7402                	ld	s0,32(sp)
    8000059c:	47c5                	li	a5,17
    8000059e:	00f60023          	sb	a5,0(a2)
    800005a2:	64e2                	ld	s1,24(sp)
    800005a4:	6942                	ld	s2,16(sp)
    800005a6:	69a2                	ld	s3,8(sp)
    800005a8:	6145                	addi	sp,sp,48
    800005aa:	8082                	ret
    800005ac:	89ae                	mv	s3,a1
    800005ae:	892a                	mv	s2,a0
    800005b0:	84b2                	mv	s1,a2
    800005b2:	14f040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800005b6:	02093783          	ld	a5,32(s2)
    800005ba:	00f9b023          	sd	a5,0(s3)
    800005be:	0007c703          	lbu	a4,0(a5)
    800005c2:	cb01                	beqz	a4,800005d2 <OSEventNameGet+0x7a>
    800005c4:	0785                	addi	a5,a5,1
    800005c6:	0007c703          	lbu	a4,0(a5)
    800005ca:	2405                	addiw	s0,s0,1
    800005cc:	0ff47413          	andi	s0,s0,255
    800005d0:	fb75                	bnez	a4,800005c4 <OSEventNameGet+0x6c>
    800005d2:	139040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800005d6:	00048023          	sb	zero,0(s1)
    800005da:	8522                	mv	a0,s0
    800005dc:	70a2                	ld	ra,40(sp)
    800005de:	7402                	ld	s0,32(sp)
    800005e0:	64e2                	ld	s1,24(sp)
    800005e2:	6942                	ld	s2,16(sp)
    800005e4:	69a2                	ld	s3,8(sp)
    800005e6:	6145                	addi	sp,sp,48
    800005e8:	8082                	ret

00000000800005ea <OSEventNameSet>:
    800005ea:	00081797          	auipc	a5,0x81
    800005ee:	d8e7c783          	lbu	a5,-626(a5) # 80081378 <OSIntNesting>
    800005f2:	ef89                	bnez	a5,8000060c <OSEventNameSet+0x22>
    800005f4:	00054783          	lbu	a5,0(a0)
    800005f8:	470d                	li	a4,3
    800005fa:	37fd                	addiw	a5,a5,-1
    800005fc:	0ff7f793          	andi	a5,a5,255
    80000600:	00f77a63          	bleu	a5,a4,80000614 <OSEventNameSet+0x2a>
    80000604:	4785                	li	a5,1
    80000606:	00f60023          	sb	a5,0(a2)
    8000060a:	8082                	ret
    8000060c:	47c9                	li	a5,18
    8000060e:	00f60023          	sb	a5,0(a2)
    80000612:	8082                	ret
    80000614:	1101                	addi	sp,sp,-32
    80000616:	e426                	sd	s1,8(sp)
    80000618:	e04a                	sd	s2,0(sp)
    8000061a:	84aa                	mv	s1,a0
    8000061c:	892e                	mv	s2,a1
    8000061e:	ec06                	sd	ra,24(sp)
    80000620:	e822                	sd	s0,16(sp)
    80000622:	8432                	mv	s0,a2
    80000624:	0dd040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80000628:	0324b023          	sd	s2,32(s1)
    8000062c:	0df040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000630:	00040023          	sb	zero,0(s0)
    80000634:	60e2                	ld	ra,24(sp)
    80000636:	6442                	ld	s0,16(sp)
    80000638:	64a2                	ld	s1,8(sp)
    8000063a:	6902                	ld	s2,0(sp)
    8000063c:	6105                	addi	sp,sp,32
    8000063e:	8082                	ret

0000000080000640 <OSIntEnter>:
    80000640:	00080717          	auipc	a4,0x80
    80000644:	e1874703          	lbu	a4,-488(a4) # 80080458 <OSRunning>
    80000648:	4785                	li	a5,1
    8000064a:	00f70363          	beq	a4,a5,80000650 <OSIntEnter+0x10>
    8000064e:	8082                	ret
    80000650:	00081797          	auipc	a5,0x81
    80000654:	d287c783          	lbu	a5,-728(a5) # 80081378 <OSIntNesting>
    80000658:	0ff00713          	li	a4,255
    8000065c:	fee789e3          	beq	a5,a4,8000064e <OSIntEnter+0xe>
    80000660:	2785                	addiw	a5,a5,1
    80000662:	00081717          	auipc	a4,0x81
    80000666:	d0f70b23          	sb	a5,-746(a4) # 80081378 <OSIntNesting>
    8000066a:	8082                	ret

000000008000066c <OSIntExit>:
    8000066c:	00080717          	auipc	a4,0x80
    80000670:	dec74703          	lbu	a4,-532(a4) # 80080458 <OSRunning>
    80000674:	4785                	li	a5,1
    80000676:	00f70363          	beq	a4,a5,8000067c <OSIntExit+0x10>
    8000067a:	8082                	ret
    8000067c:	1141                	addi	sp,sp,-16
    8000067e:	e406                	sd	ra,8(sp)
    80000680:	081040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80000684:	00081797          	auipc	a5,0x81
    80000688:	cf47c783          	lbu	a5,-780(a5) # 80081378 <OSIntNesting>
    8000068c:	cf89                	beqz	a5,800006a6 <OSIntExit+0x3a>
    8000068e:	37fd                	addiw	a5,a5,-1
    80000690:	0ff7f793          	andi	a5,a5,255
    80000694:	00081717          	auipc	a4,0x81
    80000698:	cef70223          	sb	a5,-796(a4) # 80081378 <OSIntNesting>
    8000069c:	c789                	beqz	a5,800006a6 <OSIntExit+0x3a>
    8000069e:	60a2                	ld	ra,8(sp)
    800006a0:	0141                	addi	sp,sp,16
    800006a2:	0690406f          	j	80004f0a <OS_CPU_SR_Restore>
    800006a6:	00080797          	auipc	a5,0x80
    800006aa:	da27c783          	lbu	a5,-606(a5) # 80080448 <OSLockNesting>
    800006ae:	fbe5                	bnez	a5,8000069e <OSIntExit+0x32>
    800006b0:	00080717          	auipc	a4,0x80
    800006b4:	95070713          	addi	a4,a4,-1712 # 80080000 <OSUnMapTbl>
    800006b8:	00081797          	auipc	a5,0x81
    800006bc:	8a87c783          	lbu	a5,-1880(a5) # 80080f60 <OSRdyGrp>
    800006c0:	97ba                	add	a5,a5,a4
    800006c2:	0007c783          	lbu	a5,0(a5)
    800006c6:	00081697          	auipc	a3,0x81
    800006ca:	8a268693          	addi	a3,a3,-1886 # 80080f68 <OSRdyTbl>
    800006ce:	96be                	add	a3,a3,a5
    800006d0:	0006c603          	lbu	a2,0(a3)
    800006d4:	0037979b          	slliw	a5,a5,0x3
    800006d8:	00080697          	auipc	a3,0x80
    800006dc:	2b06c683          	lbu	a3,688(a3) # 80080988 <OSPrioCur>
    800006e0:	9732                	add	a4,a4,a2
    800006e2:	00074703          	lbu	a4,0(a4)
    800006e6:	9fb9                	addw	a5,a5,a4
    800006e8:	0ff7f793          	andi	a5,a5,255
    800006ec:	00379613          	slli	a2,a5,0x3
    800006f0:	00082717          	auipc	a4,0x82
    800006f4:	ea870713          	addi	a4,a4,-344 # 80082598 <OSTCBPrioTbl>
    800006f8:	9732                	add	a4,a4,a2
    800006fa:	6318                	ld	a4,0(a4)
    800006fc:	00080617          	auipc	a2,0x80
    80000700:	d6f60323          	sb	a5,-666(a2) # 80080462 <OSPrioHighRdy>
    80000704:	00081617          	auipc	a2,0x81
    80000708:	84e63623          	sd	a4,-1972(a2) # 80080f50 <OSTCBHighRdy>
    8000070c:	f8f689e3          	beq	a3,a5,8000069e <OSIntExit+0x32>
    80000710:	00080797          	auipc	a5,0x80
    80000714:	75878793          	addi	a5,a5,1880 # 80080e68 <OSCtxSwCtr>
    80000718:	5334                	lw	a3,96(a4)
    8000071a:	439c                	lw	a5,0(a5)
    8000071c:	2685                	addiw	a3,a3,1
    8000071e:	2785                	addiw	a5,a5,1
    80000720:	d334                	sw	a3,96(a4)
    80000722:	00080717          	auipc	a4,0x80
    80000726:	74f72323          	sw	a5,1862(a4) # 80080e68 <OSCtxSwCtr>
    8000072a:	bf95                	j	8000069e <OSIntExit+0x32>

000000008000072c <OSSchedLock>:
    8000072c:	00080717          	auipc	a4,0x80
    80000730:	d2c74703          	lbu	a4,-724(a4) # 80080458 <OSRunning>
    80000734:	4785                	li	a5,1
    80000736:	00f70363          	beq	a4,a5,8000073c <OSSchedLock+0x10>
    8000073a:	8082                	ret
    8000073c:	d0bff06f          	j	80000446 <OSSchedLock.part.1>

0000000080000740 <OSStart>:
    80000740:	00080797          	auipc	a5,0x80
    80000744:	d187c783          	lbu	a5,-744(a5) # 80080458 <OSRunning>
    80000748:	c391                	beqz	a5,8000074c <OSStart+0xc>
    8000074a:	8082                	ret
    8000074c:	00080717          	auipc	a4,0x80
    80000750:	8b470713          	addi	a4,a4,-1868 # 80080000 <OSUnMapTbl>
    80000754:	00081797          	auipc	a5,0x81
    80000758:	80c7c783          	lbu	a5,-2036(a5) # 80080f60 <OSRdyGrp>
    8000075c:	97ba                	add	a5,a5,a4
    8000075e:	0007c783          	lbu	a5,0(a5)
    80000762:	00081697          	auipc	a3,0x81
    80000766:	80668693          	addi	a3,a3,-2042 # 80080f68 <OSRdyTbl>
    8000076a:	96be                	add	a3,a3,a5
    8000076c:	0006c683          	lbu	a3,0(a3)
    80000770:	0037979b          	slliw	a5,a5,0x3
    80000774:	9736                	add	a4,a4,a3
    80000776:	00074703          	lbu	a4,0(a4)
    8000077a:	9fb9                	addw	a5,a5,a4
    8000077c:	0ff7f793          	andi	a5,a5,255
    80000780:	00379693          	slli	a3,a5,0x3
    80000784:	00082717          	auipc	a4,0x82
    80000788:	e1470713          	addi	a4,a4,-492 # 80082598 <OSTCBPrioTbl>
    8000078c:	9736                	add	a4,a4,a3
    8000078e:	6318                	ld	a4,0(a4)
    80000790:	00080697          	auipc	a3,0x80
    80000794:	ccf68923          	sb	a5,-814(a3) # 80080462 <OSPrioHighRdy>
    80000798:	00080697          	auipc	a3,0x80
    8000079c:	1ef68823          	sb	a5,496(a3) # 80080988 <OSPrioCur>
    800007a0:	00080797          	auipc	a5,0x80
    800007a4:	7ae7b823          	sd	a4,1968(a5) # 80080f50 <OSTCBHighRdy>
    800007a8:	00081797          	auipc	a5,0x81
    800007ac:	bce7bc23          	sd	a4,-1064(a5) # 80081380 <OSTCBCur>
    800007b0:	7600406f          	j	80004f10 <OSStartHighRdy>

00000000800007b4 <OSTimeTick>:
    800007b4:	7179                	addi	sp,sp,-48
    800007b6:	f406                	sd	ra,40(sp)
    800007b8:	f022                	sd	s0,32(sp)
    800007ba:	ec26                	sd	s1,24(sp)
    800007bc:	e84a                	sd	s2,16(sp)
    800007be:	e44e                	sd	s3,8(sp)
    800007c0:	e052                	sd	s4,0(sp)
    800007c2:	0e7040ef          	jal	ra,800050a8 <OSTimeTickHook>
    800007c6:	73a040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800007ca:	00081797          	auipc	a5,0x81
    800007ce:	bc278793          	addi	a5,a5,-1086 # 8008138c <OSTime>
    800007d2:	439c                	lw	a5,0(a5)
    800007d4:	2785                	addiw	a5,a5,1
    800007d6:	00081717          	auipc	a4,0x81
    800007da:	baf72b23          	sw	a5,-1098(a4) # 8008138c <OSTime>
    800007de:	72c040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800007e2:	00080797          	auipc	a5,0x80
    800007e6:	c767c783          	lbu	a5,-906(a5) # 80080458 <OSRunning>
    800007ea:	4705                	li	a4,1
    800007ec:	00e78a63          	beq	a5,a4,80000800 <OSTimeTick+0x4c>
    800007f0:	70a2                	ld	ra,40(sp)
    800007f2:	7402                	ld	s0,32(sp)
    800007f4:	64e2                	ld	s1,24(sp)
    800007f6:	6942                	ld	s2,16(sp)
    800007f8:	69a2                	ld	s3,8(sp)
    800007fa:	6a02                	ld	s4,0(sp)
    800007fc:	6145                	addi	sp,sp,48
    800007fe:	8082                	ret
    80000800:	00080717          	auipc	a4,0x80
    80000804:	26074703          	lbu	a4,608(a4) # 80080a60 <OSTickStepState>
    80000808:	fef704e3          	beq	a4,a5,800007f0 <OSTimeTick+0x3c>
    8000080c:	cb01                	beqz	a4,8000081c <OSTimeTick+0x68>
    8000080e:	4689                	li	a3,2
    80000810:	08d71f63          	bne	a4,a3,800008ae <OSTimeTick+0xfa>
    80000814:	00080717          	auipc	a4,0x80
    80000818:	24f70623          	sb	a5,588(a4) # 80080a60 <OSTickStepState>
    8000081c:	00080797          	auipc	a5,0x80
    80000820:	17478793          	addi	a5,a5,372 # 80080990 <OSTCBList>
    80000824:	6380                	ld	s0,0(a5)
    80000826:	03f00793          	li	a5,63
    8000082a:	05a44703          	lbu	a4,90(s0)
    8000082e:	fcf701e3          	beq	a4,a5,800007f0 <OSTimeTick+0x3c>
    80000832:	00080a17          	auipc	s4,0x80
    80000836:	72ea0a13          	addi	s4,s4,1838 # 80080f60 <OSRdyGrp>
    8000083a:	00080997          	auipc	s3,0x80
    8000083e:	72e98993          	addi	s3,s3,1838 # 80080f68 <OSRdyTbl>
    80000842:	4905                	li	s2,1
    80000844:	03f00493          	li	s1,63
    80000848:	a099                	j	8000088e <OSTimeTick+0xda>
    8000084a:	0c87f793          	andi	a5,a5,200
    8000084e:	04f40c23          	sb	a5,88(s0)
    80000852:	05240ca3          	sb	s2,89(s0)
    80000856:	8ba1                	andi	a5,a5,8
    80000858:	e785                	bnez	a5,80000880 <OSTimeTick+0xcc>
    8000085a:	05c44783          	lbu	a5,92(s0)
    8000085e:	000a4583          	lbu	a1,0(s4)
    80000862:	05e44683          	lbu	a3,94(s0)
    80000866:	97ce                	add	a5,a5,s3
    80000868:	0007c703          	lbu	a4,0(a5)
    8000086c:	05d44603          	lbu	a2,93(s0)
    80000870:	8ecd                	or	a3,a3,a1
    80000872:	00080597          	auipc	a1,0x80
    80000876:	6ed58723          	sb	a3,1774(a1) # 80080f60 <OSRdyGrp>
    8000087a:	8f51                	or	a4,a4,a2
    8000087c:	00e78023          	sb	a4,0(a5)
    80000880:	7000                	ld	s0,32(s0)
    80000882:	688040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000886:	05a44783          	lbu	a5,90(s0)
    8000088a:	f69783e3          	beq	a5,s1,800007f0 <OSTimeTick+0x3c>
    8000088e:	672040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80000892:	487c                	lw	a5,84(s0)
    80000894:	fff7869b          	addiw	a3,a5,-1
    80000898:	d7e5                	beqz	a5,80000880 <OSTimeTick+0xcc>
    8000089a:	c874                	sw	a3,84(s0)
    8000089c:	f2f5                	bnez	a3,80000880 <OSTimeTick+0xcc>
    8000089e:	05844783          	lbu	a5,88(s0)
    800008a2:	0377f713          	andi	a4,a5,55
    800008a6:	f355                	bnez	a4,8000084a <OSTimeTick+0x96>
    800008a8:	04040ca3          	sb	zero,89(s0)
    800008ac:	b76d                	j	80000856 <OSTimeTick+0xa2>
    800008ae:	00080797          	auipc	a5,0x80
    800008b2:	1a078923          	sb	zero,434(a5) # 80080a60 <OSTickStepState>
    800008b6:	b79d                	j	8000081c <OSTimeTick+0x68>

00000000800008b8 <OSVersion>:
    800008b8:	12300513          	li	a0,291
    800008bc:	8082                	ret

00000000800008be <OS_Dummy>:
    800008be:	8082                	ret

00000000800008c0 <OS_EventTaskRdy>:
    800008c0:	01254783          	lbu	a5,18(a0)
    800008c4:	0007f717          	auipc	a4,0x7f
    800008c8:	73c70713          	addi	a4,a4,1852 # 80080000 <OSUnMapTbl>
    800008cc:	832a                	mv	t1,a0
    800008ce:	97ba                	add	a5,a5,a4
    800008d0:	0007c783          	lbu	a5,0(a5)
    800008d4:	fff64613          	not	a2,a2
    800008d8:	0007889b          	sext.w	a7,a5
    800008dc:	9546                	add	a0,a0,a7
    800008de:	01354503          	lbu	a0,19(a0)
    800008e2:	0037979b          	slliw	a5,a5,0x3
    800008e6:	972a                	add	a4,a4,a0
    800008e8:	00074503          	lbu	a0,0(a4)
    800008ec:	9fa9                	addw	a5,a5,a0
    800008ee:	0ff7f513          	andi	a0,a5,255
    800008f2:	00351713          	slli	a4,a0,0x3
    800008f6:	00082797          	auipc	a5,0x82
    800008fa:	ca278793          	addi	a5,a5,-862 # 80082598 <OSTCBPrioTbl>
    800008fe:	97ba                	add	a5,a5,a4
    80000900:	0007b803          	ld	a6,0(a5)
    80000904:	05884783          	lbu	a5,88(a6)
    80000908:	04082a23          	sw	zero,84(a6)
    8000090c:	04b83023          	sd	a1,64(a6)
    80000910:	8e7d                	and	a2,a2,a5
    80000912:	04c80c23          	sb	a2,88(a6)
    80000916:	04d80ca3          	sb	a3,89(a6)
    8000091a:	8a21                	andi	a2,a2,8
    8000091c:	05d84783          	lbu	a5,93(a6)
    80000920:	e615                	bnez	a2,8000094c <OS_EventTaskRdy+0x8c>
    80000922:	00080717          	auipc	a4,0x80
    80000926:	64670713          	addi	a4,a4,1606 # 80080f68 <OSRdyTbl>
    8000092a:	9746                	add	a4,a4,a7
    8000092c:	00074683          	lbu	a3,0(a4)
    80000930:	05e84603          	lbu	a2,94(a6)
    80000934:	00080597          	auipc	a1,0x80
    80000938:	62c5c583          	lbu	a1,1580(a1) # 80080f60 <OSRdyGrp>
    8000093c:	8edd                	or	a3,a3,a5
    8000093e:	8e4d                	or	a2,a2,a1
    80000940:	00080597          	auipc	a1,0x80
    80000944:	62c58023          	sb	a2,1568(a1) # 80080f60 <OSRdyGrp>
    80000948:	00d70023          	sb	a3,0(a4)
    8000094c:	05c84703          	lbu	a4,92(a6)
    80000950:	fff7c793          	not	a5,a5
    80000954:	971a                	add	a4,a4,t1
    80000956:	01374683          	lbu	a3,19(a4)
    8000095a:	8ff5                	and	a5,a5,a3
    8000095c:	00f709a3          	sb	a5,19(a4)
    80000960:	c7b9                	beqz	a5,800009ae <OS_EventTaskRdy+0xee>
    80000962:	03883683          	ld	a3,56(a6)
    80000966:	c2b9                	beqz	a3,800009ac <OS_EventTaskRdy+0xec>
    80000968:	6298                	ld	a4,0(a3)
    8000096a:	05c84883          	lbu	a7,92(a6)
    8000096e:	05e84e03          	lbu	t3,94(a6)
    80000972:	05d84583          	lbu	a1,93(a6)
    80000976:	cb0d                	beqz	a4,800009a8 <OS_EventTaskRdy+0xe8>
    80000978:	fff5c593          	not	a1,a1
    8000097c:	2881                	sext.w	a7,a7
    8000097e:	0ff5f593          	andi	a1,a1,255
    80000982:	fffe4e13          	not	t3,t3
    80000986:	01170633          	add	a2,a4,a7
    8000098a:	01364783          	lbu	a5,19(a2)
    8000098e:	06a1                	addi	a3,a3,8
    80000990:	8fed                	and	a5,a5,a1
    80000992:	00f609a3          	sb	a5,19(a2)
    80000996:	e799                	bnez	a5,800009a4 <OS_EventTaskRdy+0xe4>
    80000998:	01274783          	lbu	a5,18(a4)
    8000099c:	00fe77b3          	and	a5,t3,a5
    800009a0:	00f70923          	sb	a5,18(a4)
    800009a4:	6298                	ld	a4,0(a3)
    800009a6:	f365                	bnez	a4,80000986 <OS_EventTaskRdy+0xc6>
    800009a8:	02683823          	sd	t1,48(a6)
    800009ac:	8082                	ret
    800009ae:	05e84783          	lbu	a5,94(a6)
    800009b2:	01234703          	lbu	a4,18(t1)
    800009b6:	fff7c793          	not	a5,a5
    800009ba:	8ff9                	and	a5,a5,a4
    800009bc:	00f30923          	sb	a5,18(t1)
    800009c0:	b74d                	j	80000962 <OS_EventTaskRdy+0xa2>

00000000800009c2 <OS_EventTaskWait>:
    800009c2:	00081797          	auipc	a5,0x81
    800009c6:	9be78793          	addi	a5,a5,-1602 # 80081380 <OSTCBCur>
    800009ca:	639c                	ld	a5,0(a5)
    800009cc:	05c7c703          	lbu	a4,92(a5)
    800009d0:	fb88                	sd	a0,48(a5)
    800009d2:	05d7c603          	lbu	a2,93(a5)
    800009d6:	972a                	add	a4,a4,a0
    800009d8:	01374683          	lbu	a3,19(a4)
    800009dc:	8ed1                	or	a3,a3,a2
    800009de:	00d709a3          	sb	a3,19(a4)
    800009e2:	05e7c683          	lbu	a3,94(a5)
    800009e6:	01254703          	lbu	a4,18(a0)
    800009ea:	8f55                	or	a4,a4,a3
    800009ec:	00e50923          	sb	a4,18(a0)
    800009f0:	05c7c603          	lbu	a2,92(a5)
    800009f4:	00080697          	auipc	a3,0x80
    800009f8:	57468693          	addi	a3,a3,1396 # 80080f68 <OSRdyTbl>
    800009fc:	05d7c703          	lbu	a4,93(a5)
    80000a00:	96b2                	add	a3,a3,a2
    80000a02:	0006c603          	lbu	a2,0(a3)
    80000a06:	fff74713          	not	a4,a4
    80000a0a:	8f71                	and	a4,a4,a2
    80000a0c:	00e68023          	sb	a4,0(a3)
    80000a10:	ef11                	bnez	a4,80000a2c <OS_EventTaskWait+0x6a>
    80000a12:	05e7c783          	lbu	a5,94(a5)
    80000a16:	00080717          	auipc	a4,0x80
    80000a1a:	54a74703          	lbu	a4,1354(a4) # 80080f60 <OSRdyGrp>
    80000a1e:	fff7c793          	not	a5,a5
    80000a22:	8ff9                	and	a5,a5,a4
    80000a24:	00080717          	auipc	a4,0x80
    80000a28:	52f70e23          	sb	a5,1340(a4) # 80080f60 <OSRdyGrp>
    80000a2c:	8082                	ret

0000000080000a2e <OS_EventTaskWaitMulti>:
    80000a2e:	00081797          	auipc	a5,0x81
    80000a32:	95278793          	addi	a5,a5,-1710 # 80081380 <OSTCBCur>
    80000a36:	6390                	ld	a2,0(a5)
    80000a38:	02063823          	sd	zero,48(a2)
    80000a3c:	fe08                	sd	a0,56(a2)
    80000a3e:	611c                	ld	a5,0(a0)
    80000a40:	c78d                	beqz	a5,80000a6a <OS_EventTaskWaitMulti+0x3c>
    80000a42:	05c64703          	lbu	a4,92(a2)
    80000a46:	05d64583          	lbu	a1,93(a2)
    80000a4a:	0521                	addi	a0,a0,8
    80000a4c:	973e                	add	a4,a4,a5
    80000a4e:	01374683          	lbu	a3,19(a4)
    80000a52:	8ecd                	or	a3,a3,a1
    80000a54:	00d709a3          	sb	a3,19(a4)
    80000a58:	0127c703          	lbu	a4,18(a5)
    80000a5c:	05e64683          	lbu	a3,94(a2)
    80000a60:	8f55                	or	a4,a4,a3
    80000a62:	00e78923          	sb	a4,18(a5)
    80000a66:	611c                	ld	a5,0(a0)
    80000a68:	ffe9                	bnez	a5,80000a42 <OS_EventTaskWaitMulti+0x14>
    80000a6a:	05c64683          	lbu	a3,92(a2)
    80000a6e:	00080717          	auipc	a4,0x80
    80000a72:	4fa70713          	addi	a4,a4,1274 # 80080f68 <OSRdyTbl>
    80000a76:	05d64783          	lbu	a5,93(a2)
    80000a7a:	9736                	add	a4,a4,a3
    80000a7c:	00074683          	lbu	a3,0(a4)
    80000a80:	fff7c793          	not	a5,a5
    80000a84:	8ff5                	and	a5,a5,a3
    80000a86:	00f70023          	sb	a5,0(a4)
    80000a8a:	ef91                	bnez	a5,80000aa6 <OS_EventTaskWaitMulti+0x78>
    80000a8c:	05e64783          	lbu	a5,94(a2)
    80000a90:	00080717          	auipc	a4,0x80
    80000a94:	4d074703          	lbu	a4,1232(a4) # 80080f60 <OSRdyGrp>
    80000a98:	fff7c793          	not	a5,a5
    80000a9c:	8ff9                	and	a5,a5,a4
    80000a9e:	00080717          	auipc	a4,0x80
    80000aa2:	4cf70123          	sb	a5,1218(a4) # 80080f60 <OSRdyGrp>
    80000aa6:	8082                	ret

0000000080000aa8 <OS_EventTaskRemove>:
    80000aa8:	05c54703          	lbu	a4,92(a0)
    80000aac:	05d54783          	lbu	a5,93(a0)
    80000ab0:	972e                	add	a4,a4,a1
    80000ab2:	01374683          	lbu	a3,19(a4)
    80000ab6:	fff7c793          	not	a5,a5
    80000aba:	8ff5                	and	a5,a5,a3
    80000abc:	00f709a3          	sb	a5,19(a4)
    80000ac0:	eb91                	bnez	a5,80000ad4 <OS_EventTaskRemove+0x2c>
    80000ac2:	05e54783          	lbu	a5,94(a0)
    80000ac6:	0125c703          	lbu	a4,18(a1)
    80000aca:	fff7c793          	not	a5,a5
    80000ace:	8ff9                	and	a5,a5,a4
    80000ad0:	00f58923          	sb	a5,18(a1)
    80000ad4:	8082                	ret

0000000080000ad6 <OS_EventTaskRemoveMulti>:
    80000ad6:	6198                	ld	a4,0(a1)
    80000ad8:	05c54783          	lbu	a5,92(a0)
    80000adc:	05e54803          	lbu	a6,94(a0)
    80000ae0:	05d54603          	lbu	a2,93(a0)
    80000ae4:	cb15                	beqz	a4,80000b18 <OS_EventTaskRemoveMulti+0x42>
    80000ae6:	fff64613          	not	a2,a2
    80000aea:	0007851b          	sext.w	a0,a5
    80000aee:	0ff67613          	andi	a2,a2,255
    80000af2:	fff84813          	not	a6,a6
    80000af6:	00a706b3          	add	a3,a4,a0
    80000afa:	0136c783          	lbu	a5,19(a3)
    80000afe:	05a1                	addi	a1,a1,8
    80000b00:	8ff1                	and	a5,a5,a2
    80000b02:	00f689a3          	sb	a5,19(a3)
    80000b06:	e799                	bnez	a5,80000b14 <OS_EventTaskRemoveMulti+0x3e>
    80000b08:	01274783          	lbu	a5,18(a4)
    80000b0c:	00f877b3          	and	a5,a6,a5
    80000b10:	00f70923          	sb	a5,18(a4)
    80000b14:	6198                	ld	a4,0(a1)
    80000b16:	f365                	bnez	a4,80000af6 <OS_EventTaskRemoveMulti+0x20>
    80000b18:	8082                	ret

0000000080000b1a <OS_EventWaitListInit>:
    80000b1a:	00051923          	sh	zero,18(a0)
    80000b1e:	00051a23          	sh	zero,20(a0)
    80000b22:	00051b23          	sh	zero,22(a0)
    80000b26:	00051c23          	sh	zero,24(a0)
    80000b2a:	00050d23          	sb	zero,26(a0)
    80000b2e:	8082                	ret

0000000080000b30 <OS_MemClr>:
    80000b30:	cd81                	beqz	a1,80000b48 <OS_MemClr+0x18>
    80000b32:	fff5879b          	addiw	a5,a1,-1
    80000b36:	17c2                	slli	a5,a5,0x30
    80000b38:	93c1                	srli	a5,a5,0x30
    80000b3a:	0785                	addi	a5,a5,1
    80000b3c:	97aa                	add	a5,a5,a0
    80000b3e:	0505                	addi	a0,a0,1
    80000b40:	fe050fa3          	sb	zero,-1(a0)
    80000b44:	fef51de3          	bne	a0,a5,80000b3e <OS_MemClr+0xe>
    80000b48:	8082                	ret

0000000080000b4a <OS_MemCopy>:
    80000b4a:	ce19                	beqz	a2,80000b68 <OS_MemCopy+0x1e>
    80000b4c:	fff6079b          	addiw	a5,a2,-1
    80000b50:	17c2                	slli	a5,a5,0x30
    80000b52:	93c1                	srli	a5,a5,0x30
    80000b54:	0785                	addi	a5,a5,1
    80000b56:	97aa                	add	a5,a5,a0
    80000b58:	0585                	addi	a1,a1,1
    80000b5a:	fff5c703          	lbu	a4,-1(a1)
    80000b5e:	0505                	addi	a0,a0,1
    80000b60:	fee50fa3          	sb	a4,-1(a0)
    80000b64:	fea79ae3          	bne	a5,a0,80000b58 <OS_MemCopy+0xe>
    80000b68:	8082                	ret

0000000080000b6a <OS_Sched>:
    80000b6a:	1101                	addi	sp,sp,-32
    80000b6c:	ec06                	sd	ra,24(sp)
    80000b6e:	392040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80000b72:	00081797          	auipc	a5,0x81
    80000b76:	8067c783          	lbu	a5,-2042(a5) # 80081378 <OSIntNesting>
    80000b7a:	e7d9                	bnez	a5,80000c08 <OS_Sched+0x9e>
    80000b7c:	00080797          	auipc	a5,0x80
    80000b80:	8cc7c783          	lbu	a5,-1844(a5) # 80080448 <OSLockNesting>
    80000b84:	e3d1                	bnez	a5,80000c08 <OS_Sched+0x9e>
    80000b86:	0007f717          	auipc	a4,0x7f
    80000b8a:	47a70713          	addi	a4,a4,1146 # 80080000 <OSUnMapTbl>
    80000b8e:	00080797          	auipc	a5,0x80
    80000b92:	3d27c783          	lbu	a5,978(a5) # 80080f60 <OSRdyGrp>
    80000b96:	97ba                	add	a5,a5,a4
    80000b98:	0007c783          	lbu	a5,0(a5)
    80000b9c:	00080697          	auipc	a3,0x80
    80000ba0:	3cc68693          	addi	a3,a3,972 # 80080f68 <OSRdyTbl>
    80000ba4:	96be                	add	a3,a3,a5
    80000ba6:	0006c603          	lbu	a2,0(a3)
    80000baa:	0037979b          	slliw	a5,a5,0x3
    80000bae:	00080697          	auipc	a3,0x80
    80000bb2:	dda6c683          	lbu	a3,-550(a3) # 80080988 <OSPrioCur>
    80000bb6:	9732                	add	a4,a4,a2
    80000bb8:	00074703          	lbu	a4,0(a4)
    80000bbc:	9fb9                	addw	a5,a5,a4
    80000bbe:	0ff7f793          	andi	a5,a5,255
    80000bc2:	00379613          	slli	a2,a5,0x3
    80000bc6:	00082717          	auipc	a4,0x82
    80000bca:	9d270713          	addi	a4,a4,-1582 # 80082598 <OSTCBPrioTbl>
    80000bce:	9732                	add	a4,a4,a2
    80000bd0:	6318                	ld	a4,0(a4)
    80000bd2:	00080617          	auipc	a2,0x80
    80000bd6:	88f60823          	sb	a5,-1904(a2) # 80080462 <OSPrioHighRdy>
    80000bda:	00080617          	auipc	a2,0x80
    80000bde:	36e63b23          	sd	a4,886(a2) # 80080f50 <OSTCBHighRdy>
    80000be2:	02f68363          	beq	a3,a5,80000c08 <OS_Sched+0x9e>
    80000be6:	5334                	lw	a3,96(a4)
    80000be8:	00080797          	auipc	a5,0x80
    80000bec:	28078793          	addi	a5,a5,640 # 80080e68 <OSCtxSwCtr>
    80000bf0:	439c                	lw	a5,0(a5)
    80000bf2:	2685                	addiw	a3,a3,1
    80000bf4:	d334                	sw	a3,96(a4)
    80000bf6:	2785                	addiw	a5,a5,1
    80000bf8:	e42a                	sd	a0,8(sp)
    80000bfa:	00080717          	auipc	a4,0x80
    80000bfe:	26f72723          	sw	a5,622(a4) # 80080e68 <OSCtxSwCtr>
    80000c02:	37e040ef          	jal	ra,80004f80 <OSCtxSw>
    80000c06:	6522                	ld	a0,8(sp)
    80000c08:	60e2                	ld	ra,24(sp)
    80000c0a:	6105                	addi	sp,sp,32
    80000c0c:	2fe0406f          	j	80004f0a <OS_CPU_SR_Restore>

0000000080000c10 <OSEventPendMulti>:
    80000c10:	715d                	addi	sp,sp,-80
    80000c12:	e0a2                	sd	s0,64(sp)
    80000c14:	e486                	sd	ra,72(sp)
    80000c16:	fc26                	sd	s1,56(sp)
    80000c18:	f84a                	sd	s2,48(sp)
    80000c1a:	f44e                	sd	s3,40(sp)
    80000c1c:	f052                	sd	s4,32(sp)
    80000c1e:	0005b023          	sd	zero,0(a1)
    80000c22:	611c                	ld	a5,0(a0)
    80000c24:	842a                	mv	s0,a0
    80000c26:	cb95                	beqz	a5,80000c5a <OSEventPendMulti+0x4a>
    80000c28:	4809                	li	a6,2
    80000c2a:	a019                	j	80000c30 <OSEventPendMulti+0x20>
    80000c2c:	611c                	ld	a5,0(a0)
    80000c2e:	c795                	beqz	a5,80000c5a <OSEventPendMulti+0x4a>
    80000c30:	0007c783          	lbu	a5,0(a5)
    80000c34:	0521                	addi	a0,a0,8
    80000c36:	37fd                	addiw	a5,a5,-1
    80000c38:	0ff7f793          	andi	a5,a5,255
    80000c3c:	fef878e3          	bleu	a5,a6,80000c2c <OSEventPendMulti+0x1c>
    80000c40:	4785                	li	a5,1
    80000c42:	00f70023          	sb	a5,0(a4)
    80000c46:	4481                	li	s1,0
    80000c48:	60a6                	ld	ra,72(sp)
    80000c4a:	6406                	ld	s0,64(sp)
    80000c4c:	8526                	mv	a0,s1
    80000c4e:	7942                	ld	s2,48(sp)
    80000c50:	74e2                	ld	s1,56(sp)
    80000c52:	79a2                	ld	s3,40(sp)
    80000c54:	7a02                	ld	s4,32(sp)
    80000c56:	6161                	addi	sp,sp,80
    80000c58:	8082                	ret
    80000c5a:	00080797          	auipc	a5,0x80
    80000c5e:	71e7c783          	lbu	a5,1822(a5) # 80081378 <OSIntNesting>
    80000c62:	ef81                	bnez	a5,80000c7a <OSEventPendMulti+0x6a>
    80000c64:	0007f917          	auipc	s2,0x7f
    80000c68:	7e494903          	lbu	s2,2020(s2) # 80080448 <OSLockNesting>
    80000c6c:	00090c63          	beqz	s2,80000c84 <OSEventPendMulti+0x74>
    80000c70:	47b5                	li	a5,13
    80000c72:	00f70023          	sb	a5,0(a4)
    80000c76:	4481                	li	s1,0
    80000c78:	bfc1                	j	80000c48 <OSEventPendMulti+0x38>
    80000c7a:	4789                	li	a5,2
    80000c7c:	00f70023          	sb	a5,0(a4)
    80000c80:	4481                	li	s1,0
    80000c82:	b7d9                	j	80000c48 <OSEventPendMulti+0x38>
    80000c84:	ec3a                	sd	a4,24(sp)
    80000c86:	e836                	sd	a3,16(sp)
    80000c88:	e432                	sd	a2,8(sp)
    80000c8a:	e02e                	sd	a1,0(sp)
    80000c8c:	274040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80000c90:	601c                	ld	a5,0(s0)
    80000c92:	8a2a                	mv	s4,a0
    80000c94:	6582                	ld	a1,0(sp)
    80000c96:	6622                	ld	a2,8(sp)
    80000c98:	66c2                	ld	a3,16(sp)
    80000c9a:	6762                	ld	a4,24(sp)
    80000c9c:	cff1                	beqz	a5,80000d78 <OSEventPendMulti+0x168>
    80000c9e:	8822                	mv	a6,s0
    80000ca0:	4481                	li	s1,0
    80000ca2:	4e01                	li	t3,0
    80000ca4:	4889                	li	a7,2
    80000ca6:	4985                	li	s3,1
    80000ca8:	430d                	li	t1,3
    80000caa:	0007c503          	lbu	a0,0(a5)
    80000cae:	03150263          	beq	a0,a7,80000cd2 <OSEventPendMulti+0xc2>
    80000cb2:	08650f63          	beq	a0,t1,80000d50 <OSEventPendMulti+0x140>
    80000cb6:	07350163          	beq	a0,s3,80000d18 <OSEventPendMulti+0x108>
    80000cba:	8552                	mv	a0,s4
    80000cbc:	e43a                	sd	a4,8(sp)
    80000cbe:	e02e                	sd	a1,0(sp)
    80000cc0:	24a040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000cc4:	6582                	ld	a1,0(sp)
    80000cc6:	6722                	ld	a4,8(sp)
    80000cc8:	0005b023          	sd	zero,0(a1)
    80000ccc:	01370023          	sb	s3,0(a4)
    80000cd0:	bfa5                	j	80000c48 <OSEventPendMulti+0x38>
    80000cd2:	6788                	ld	a0,8(a5)
    80000cd4:	02a55e83          	lhu	t4,42(a0)
    80000cd8:	080e8a63          	beqz	t4,80000d6c <OSEventPendMulti+0x15c>
    80000cdc:	02053e03          	ld	t3,32(a0)
    80000ce0:	00860e93          	addi	t4,a2,8
    80000ce4:	008e0f13          	addi	t5,t3,8
    80000ce8:	03e53023          	sd	t5,32(a0)
    80000cec:	000e3e03          	ld	t3,0(t3)
    80000cf0:	01c63023          	sd	t3,0(a2)
    80000cf4:	02053e03          	ld	t3,32(a0)
    80000cf8:	6910                	ld	a2,16(a0)
    80000cfa:	14ce0263          	beq	t3,a2,80000e3e <OSEventPendMulti+0x22e>
    80000cfe:	02a55603          	lhu	a2,42(a0)
    80000d02:	2485                	addiw	s1,s1,1
    80000d04:	14c2                	slli	s1,s1,0x30
    80000d06:	367d                	addiw	a2,a2,-1
    80000d08:	02c51523          	sh	a2,42(a0)
    80000d0c:	e19c                	sd	a5,0(a1)
    80000d0e:	90c1                	srli	s1,s1,0x30
    80000d10:	8676                	mv	a2,t4
    80000d12:	05a1                	addi	a1,a1,8
    80000d14:	4e05                	li	t3,1
    80000d16:	a829                	j	80000d30 <OSEventPendMulti+0x120>
    80000d18:	6788                	ld	a0,8(a5)
    80000d1a:	cd21                	beqz	a0,80000d72 <OSEventPendMulti+0x162>
    80000d1c:	e208                	sd	a0,0(a2)
    80000d1e:	0007b423          	sd	zero,8(a5)
    80000d22:	2485                	addiw	s1,s1,1
    80000d24:	e19c                	sd	a5,0(a1)
    80000d26:	14c2                	slli	s1,s1,0x30
    80000d28:	90c1                	srli	s1,s1,0x30
    80000d2a:	0621                	addi	a2,a2,8
    80000d2c:	05a1                	addi	a1,a1,8
    80000d2e:	4e05                	li	t3,1
    80000d30:	0821                	addi	a6,a6,8
    80000d32:	00083783          	ld	a5,0(a6)
    80000d36:	fbb5                	bnez	a5,80000caa <OSEventPendMulti+0x9a>
    80000d38:	040e0163          	beqz	t3,80000d7a <OSEventPendMulti+0x16a>
    80000d3c:	0005b023          	sd	zero,0(a1)
    80000d40:	8552                	mv	a0,s4
    80000d42:	e03a                	sd	a4,0(sp)
    80000d44:	1c6040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000d48:	6702                	ld	a4,0(sp)
    80000d4a:	00070023          	sb	zero,0(a4)
    80000d4e:	bded                	j	80000c48 <OSEventPendMulti+0x38>
    80000d50:	0107d503          	lhu	a0,16(a5)
    80000d54:	c909                	beqz	a0,80000d66 <OSEventPendMulti+0x156>
    80000d56:	357d                	addiw	a0,a0,-1
    80000d58:	00a79823          	sh	a0,16(a5)
    80000d5c:	e19c                	sd	a5,0(a1)
    80000d5e:	2485                	addiw	s1,s1,1
    80000d60:	00063023          	sd	zero,0(a2)
    80000d64:	b7c9                	j	80000d26 <OSEventPendMulti+0x116>
    80000d66:	00196913          	ori	s2,s2,1
    80000d6a:	b7d9                	j	80000d30 <OSEventPendMulti+0x120>
    80000d6c:	00496913          	ori	s2,s2,4
    80000d70:	b7c1                	j	80000d30 <OSEventPendMulti+0x120>
    80000d72:	00296913          	ori	s2,s2,2
    80000d76:	bf6d                	j	80000d30 <OSEventPendMulti+0x120>
    80000d78:	4481                	li	s1,0
    80000d7a:	00080997          	auipc	s3,0x80
    80000d7e:	60698993          	addi	s3,s3,1542 # 80081380 <OSTCBCur>
    80000d82:	0009b783          	ld	a5,0(s3)
    80000d86:	8522                	mv	a0,s0
    80000d88:	e83a                	sd	a4,16(sp)
    80000d8a:	0587c803          	lbu	a6,88(a5)
    80000d8e:	cbf4                	sw	a3,84(a5)
    80000d90:	04078ca3          	sb	zero,89(a5)
    80000d94:	f8086693          	ori	a3,a6,-128
    80000d98:	00d96933          	or	s2,s2,a3
    80000d9c:	05278c23          	sb	s2,88(a5)
    80000da0:	e432                	sd	a2,8(sp)
    80000da2:	e02e                	sd	a1,0(sp)
    80000da4:	c8bff0ef          	jal	ra,80000a2e <OS_EventTaskWaitMulti>
    80000da8:	8552                	mv	a0,s4
    80000daa:	160040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000dae:	dbdff0ef          	jal	ra,80000b6a <OS_Sched>
    80000db2:	14e040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80000db6:	0009b883          	ld	a7,0(s3)
    80000dba:	6582                	ld	a1,0(sp)
    80000dbc:	6622                	ld	a2,8(sp)
    80000dbe:	0598c683          	lbu	a3,89(a7)
    80000dc2:	6742                	ld	a4,16(sp)
    80000dc4:	c2c1                	beqz	a3,80000e44 <OSEventPendMulti+0x234>
    80000dc6:	4789                	li	a5,2
    80000dc8:	06f68e63          	beq	a3,a5,80000e44 <OSEventPendMulti+0x234>
    80000dcc:	601c                	ld	a5,0(s0)
    80000dce:	05c8ce03          	lbu	t3,92(a7)
    80000dd2:	05e8ce83          	lbu	t4,94(a7)
    80000dd6:	05d8c303          	lbu	t1,93(a7)
    80000dda:	cf85                	beqz	a5,80000e12 <OSEventPendMulti+0x202>
    80000ddc:	fff34313          	not	t1,t1
    80000de0:	2e01                	sext.w	t3,t3
    80000de2:	0ff37313          	andi	t1,t1,255
    80000de6:	fffece93          	not	t4,t4
    80000dea:	01c78833          	add	a6,a5,t3
    80000dee:	01384683          	lbu	a3,19(a6)
    80000df2:	0421                	addi	s0,s0,8
    80000df4:	00d376b3          	and	a3,t1,a3
    80000df8:	00d809a3          	sb	a3,19(a6)
    80000dfc:	e699                	bnez	a3,80000e0a <OSEventPendMulti+0x1fa>
    80000dfe:	0127c683          	lbu	a3,18(a5)
    80000e02:	00def6b3          	and	a3,t4,a3
    80000e06:	00d78923          	sb	a3,18(a5)
    80000e0a:	601c                	ld	a5,0(s0)
    80000e0c:	fff9                	bnez	a5,80000dea <OSEventPendMulti+0x1da>
    80000e0e:	0598c683          	lbu	a3,89(a7)
    80000e12:	ceb1                	beqz	a3,80000e6e <OSEventPendMulti+0x25e>
    80000e14:	4789                	li	a5,2
    80000e16:	04f69663          	bne	a3,a5,80000e62 <OSEventPendMulti+0x252>
    80000e1a:	00063023          	sd	zero,0(a2)
    80000e1e:	47b9                	li	a5,14
    80000e20:	00f70023          	sb	a5,0(a4)
    80000e24:	0009b783          	ld	a5,0(s3)
    80000e28:	04079c23          	sh	zero,88(a5)
    80000e2c:	0207b823          	sd	zero,48(a5)
    80000e30:	0207bc23          	sd	zero,56(a5)
    80000e34:	0407b023          	sd	zero,64(a5)
    80000e38:	0d2040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000e3c:	b531                	j	80000c48 <OSEventPendMulti+0x38>
    80000e3e:	6510                	ld	a2,8(a0)
    80000e40:	f110                	sd	a2,32(a0)
    80000e42:	bd75                	j	80000cfe <OSEventPendMulti+0xee>
    80000e44:	0308b783          	ld	a5,48(a7)
    80000e48:	c3a9                	beqz	a5,80000e8a <OSEventPendMulti+0x27a>
    80000e4a:	e19c                	sd	a5,0(a1)
    80000e4c:	0009b883          	ld	a7,0(s3)
    80000e50:	2485                	addiw	s1,s1,1
    80000e52:	0005b423          	sd	zero,8(a1)
    80000e56:	14c2                	slli	s1,s1,0x30
    80000e58:	90c1                	srli	s1,s1,0x30
    80000e5a:	0598c683          	lbu	a3,89(a7)
    80000e5e:	05a1                	addi	a1,a1,8
    80000e60:	bf4d                	j	80000e12 <OSEventPendMulti+0x202>
    80000e62:	00063023          	sd	zero,0(a2)
    80000e66:	47a9                	li	a5,10
    80000e68:	00f70023          	sb	a5,0(a4)
    80000e6c:	bf65                	j	80000e24 <OSEventPendMulti+0x214>
    80000e6e:	0007c783          	lbu	a5,0(a5)
    80000e72:	cba5                	beqz	a5,80000ee2 <OSEventPendMulti+0x2d2>
    80000e74:	4689                	li	a3,2
    80000e76:	06f6f063          	bleu	a5,a3,80000ed6 <OSEventPendMulti+0x2c6>
    80000e7a:	468d                	li	a3,3
    80000e7c:	06d79363          	bne	a5,a3,80000ee2 <OSEventPendMulti+0x2d2>
    80000e80:	00063023          	sd	zero,0(a2)
    80000e84:	00070023          	sb	zero,0(a4)
    80000e88:	bf71                	j	80000e24 <OSEventPendMulti+0x214>
    80000e8a:	4785                	li	a5,1
    80000e8c:	04f88ca3          	sb	a5,89(a7)
    80000e90:	601c                	ld	a5,0(s0)
    80000e92:	dbe1                	beqz	a5,80000e62 <OSEventPendMulti+0x252>
    80000e94:	05d8c803          	lbu	a6,93(a7)
    80000e98:	05e8ce03          	lbu	t3,94(a7)
    80000e9c:	05c8ce83          	lbu	t4,92(a7)
    80000ea0:	fff84813          	not	a6,a6
    80000ea4:	0ff87813          	andi	a6,a6,255
    80000ea8:	fffe4e13          	not	t3,t3
    80000eac:	01d78333          	add	t1,a5,t4
    80000eb0:	01334683          	lbu	a3,19(t1)
    80000eb4:	0421                	addi	s0,s0,8
    80000eb6:	00d876b3          	and	a3,a6,a3
    80000eba:	00d309a3          	sb	a3,19(t1)
    80000ebe:	e699                	bnez	a3,80000ecc <OSEventPendMulti+0x2bc>
    80000ec0:	0127c683          	lbu	a3,18(a5)
    80000ec4:	00de76b3          	and	a3,t3,a3
    80000ec8:	00d78923          	sb	a3,18(a5)
    80000ecc:	601c                	ld	a5,0(s0)
    80000ece:	fff9                	bnez	a5,80000eac <OSEventPendMulti+0x29c>
    80000ed0:	0598c683          	lbu	a3,89(a7)
    80000ed4:	bf3d                	j	80000e12 <OSEventPendMulti+0x202>
    80000ed6:	0408b783          	ld	a5,64(a7)
    80000eda:	e21c                	sd	a5,0(a2)
    80000edc:	00070023          	sb	zero,0(a4)
    80000ee0:	b791                	j	80000e24 <OSEventPendMulti+0x214>
    80000ee2:	e43a                	sd	a4,8(sp)
    80000ee4:	e02e                	sd	a1,0(sp)
    80000ee6:	024040ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000eea:	6582                	ld	a1,0(sp)
    80000eec:	6722                	ld	a4,8(sp)
    80000eee:	4785                	li	a5,1
    80000ef0:	0005b023          	sd	zero,0(a1)
    80000ef4:	00f70023          	sb	a5,0(a4)
    80000ef8:	bb81                	j	80000c48 <OSEventPendMulti+0x38>

0000000080000efa <OSSchedUnlock.part.3>:
    80000efa:	1141                	addi	sp,sp,-16
    80000efc:	e406                	sd	ra,8(sp)
    80000efe:	002040ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80000f02:	0007f797          	auipc	a5,0x7f
    80000f06:	5467c783          	lbu	a5,1350(a5) # 80080448 <OSLockNesting>
    80000f0a:	c785                	beqz	a5,80000f32 <OSSchedUnlock.part.3+0x38>
    80000f0c:	37fd                	addiw	a5,a5,-1
    80000f0e:	0ff7f793          	andi	a5,a5,255
    80000f12:	0007f717          	auipc	a4,0x7f
    80000f16:	52f70b23          	sb	a5,1334(a4) # 80080448 <OSLockNesting>
    80000f1a:	ef81                	bnez	a5,80000f32 <OSSchedUnlock.part.3+0x38>
    80000f1c:	00080797          	auipc	a5,0x80
    80000f20:	45c7c783          	lbu	a5,1116(a5) # 80081378 <OSIntNesting>
    80000f24:	e799                	bnez	a5,80000f32 <OSSchedUnlock.part.3+0x38>
    80000f26:	7e5030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000f2a:	60a2                	ld	ra,8(sp)
    80000f2c:	0141                	addi	sp,sp,16
    80000f2e:	c3dff06f          	j	80000b6a <OS_Sched>
    80000f32:	60a2                	ld	ra,8(sp)
    80000f34:	0141                	addi	sp,sp,16
    80000f36:	7d50306f          	j	80004f0a <OS_CPU_SR_Restore>

0000000080000f3a <OSSchedUnlock>:
    80000f3a:	0007f717          	auipc	a4,0x7f
    80000f3e:	51e74703          	lbu	a4,1310(a4) # 80080458 <OSRunning>
    80000f42:	4785                	li	a5,1
    80000f44:	00f70363          	beq	a4,a5,80000f4a <OSSchedUnlock+0x10>
    80000f48:	8082                	ret
    80000f4a:	fb1ff06f          	j	80000efa <OSSchedUnlock.part.3>

0000000080000f4e <OSSemPost.part.5>:
    80000f4e:	1101                	addi	sp,sp,-32
    80000f50:	e822                	sd	s0,16(sp)
    80000f52:	ec06                	sd	ra,24(sp)
    80000f54:	842a                	mv	s0,a0
    80000f56:	e426                	sd	s1,8(sp)
    80000f58:	7a9030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80000f5c:	01244783          	lbu	a5,18(s0)
    80000f60:	e395                	bnez	a5,80000f84 <OSSemPost.part.5+0x36>
    80000f62:	01045783          	lhu	a5,16(s0)
    80000f66:	6741                	lui	a4,0x10
    80000f68:	177d                	addi	a4,a4,-1
    80000f6a:	02e78f63          	beq	a5,a4,80000fa8 <OSSemPost.part.5+0x5a>
    80000f6e:	2785                	addiw	a5,a5,1
    80000f70:	00f41823          	sh	a5,16(s0)
    80000f74:	797030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000f78:	60e2                	ld	ra,24(sp)
    80000f7a:	6442                	ld	s0,16(sp)
    80000f7c:	64a2                	ld	s1,8(sp)
    80000f7e:	4501                	li	a0,0
    80000f80:	6105                	addi	sp,sp,32
    80000f82:	8082                	ret
    80000f84:	84aa                	mv	s1,a0
    80000f86:	4681                	li	a3,0
    80000f88:	4605                	li	a2,1
    80000f8a:	4581                	li	a1,0
    80000f8c:	8522                	mv	a0,s0
    80000f8e:	933ff0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80000f92:	8526                	mv	a0,s1
    80000f94:	777030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000f98:	bd3ff0ef          	jal	ra,80000b6a <OS_Sched>
    80000f9c:	60e2                	ld	ra,24(sp)
    80000f9e:	6442                	ld	s0,16(sp)
    80000fa0:	64a2                	ld	s1,8(sp)
    80000fa2:	4501                	li	a0,0
    80000fa4:	6105                	addi	sp,sp,32
    80000fa6:	8082                	ret
    80000fa8:	763030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80000fac:	60e2                	ld	ra,24(sp)
    80000fae:	6442                	ld	s0,16(sp)
    80000fb0:	64a2                	ld	s1,8(sp)
    80000fb2:	03300513          	li	a0,51
    80000fb6:	6105                	addi	sp,sp,32
    80000fb8:	8082                	ret

0000000080000fba <OSTaskDel.part.6>:
    80000fba:	7139                	addi	sp,sp,-64
    80000fbc:	f426                	sd	s1,40(sp)
    80000fbe:	fc06                	sd	ra,56(sp)
    80000fc0:	f822                	sd	s0,48(sp)
    80000fc2:	f04a                	sd	s2,32(sp)
    80000fc4:	ec4e                	sd	s3,24(sp)
    80000fc6:	84aa                	mv	s1,a0
    80000fc8:	739030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80000fcc:	0ff00793          	li	a5,255
    80000fd0:	00f49963          	bne	s1,a5,80000fe2 <OSTaskDel.part.6+0x28>
    80000fd4:	00080797          	auipc	a5,0x80
    80000fd8:	3ac78793          	addi	a5,a5,940 # 80081380 <OSTCBCur>
    80000fdc:	639c                	ld	a5,0(a5)
    80000fde:	05a7c483          	lbu	s1,90(a5)
    80000fe2:	00081917          	auipc	s2,0x81
    80000fe6:	5b690913          	addi	s2,s2,1462 # 80082598 <OSTCBPrioTbl>
    80000fea:	048e                	slli	s1,s1,0x3
    80000fec:	009907b3          	add	a5,s2,s1
    80000ff0:	6380                	ld	s0,0(a5)
    80000ff2:	1a040b63          	beqz	s0,800011a8 <OSTaskDel.part.6+0x1ee>
    80000ff6:	4785                	li	a5,1
    80000ff8:	1af40d63          	beq	s0,a5,800011b2 <OSTaskDel.part.6+0x1f8>
    80000ffc:	05c44603          	lbu	a2,92(s0)
    80001000:	05d44783          	lbu	a5,93(s0)
    80001004:	00080697          	auipc	a3,0x80
    80001008:	f6468693          	addi	a3,a3,-156 # 80080f68 <OSRdyTbl>
    8000100c:	96b2                	add	a3,a3,a2
    8000100e:	0006c703          	lbu	a4,0(a3)
    80001012:	fff7c793          	not	a5,a5
    80001016:	0ff7f793          	andi	a5,a5,255
    8000101a:	8f7d                	and	a4,a4,a5
    8000101c:	00e68023          	sb	a4,0(a3)
    80001020:	10070c63          	beqz	a4,80001138 <OSTaskDel.part.6+0x17e>
    80001024:	7818                	ld	a4,48(s0)
    80001026:	cb09                	beqz	a4,80001038 <OSTaskDel.part.6+0x7e>
    80001028:	963a                	add	a2,a2,a4
    8000102a:	01364683          	lbu	a3,19(a2)
    8000102e:	8ff5                	and	a5,a5,a3
    80001030:	00f609a3          	sb	a5,19(a2)
    80001034:	12078e63          	beqz	a5,80001170 <OSTaskDel.part.6+0x1b6>
    80001038:	7c14                	ld	a3,56(s0)
    8000103a:	c2a9                	beqz	a3,8000107c <OSTaskDel.part.6+0xc2>
    8000103c:	6298                	ld	a4,0(a3)
    8000103e:	05c44803          	lbu	a6,92(s0)
    80001042:	05e44883          	lbu	a7,94(s0)
    80001046:	05d44583          	lbu	a1,93(s0)
    8000104a:	cb0d                	beqz	a4,8000107c <OSTaskDel.part.6+0xc2>
    8000104c:	fff5c593          	not	a1,a1
    80001050:	2801                	sext.w	a6,a6
    80001052:	0ff5f593          	andi	a1,a1,255
    80001056:	fff8c893          	not	a7,a7
    8000105a:	01070633          	add	a2,a4,a6
    8000105e:	01364783          	lbu	a5,19(a2)
    80001062:	06a1                	addi	a3,a3,8
    80001064:	8fed                	and	a5,a5,a1
    80001066:	00f609a3          	sb	a5,19(a2)
    8000106a:	e799                	bnez	a5,80001078 <OSTaskDel.part.6+0xbe>
    8000106c:	01274783          	lbu	a5,18(a4) # 10012 <_HEAP_SIZE+0xc012>
    80001070:	00f8f7b3          	and	a5,a7,a5
    80001074:	00f70923          	sb	a5,18(a4)
    80001078:	6298                	ld	a4,0(a3)
    8000107a:	f365                	bnez	a4,8000105a <OSTaskDel.part.6+0xa0>
    8000107c:	643c                	ld	a5,72(s0)
    8000107e:	cb99                	beqz	a5,80001094 <OSTaskDel.part.6+0xda>
    80001080:	6794                	ld	a3,8(a5)
    80001082:	6398                	ld	a4,0(a5)
    80001084:	10068063          	beqz	a3,80001184 <OSTaskDel.part.6+0x1ca>
    80001088:	e298                	sd	a4,0(a3)
    8000108a:	c311                	beqz	a4,8000108e <OSTaskDel.part.6+0xd4>
    8000108c:	e714                	sd	a3,8(a4)
    8000108e:	6b9c                	ld	a5,16(a5)
    80001090:	0407b423          	sd	zero,72(a5)
    80001094:	04042a23          	sw	zero,84(s0)
    80001098:	04041c23          	sh	zero,88(s0)
    8000109c:	0007f797          	auipc	a5,0x7f
    800010a0:	3ac7c783          	lbu	a5,940(a5) # 80080448 <OSLockNesting>
    800010a4:	0ff00713          	li	a4,255
    800010a8:	00e78763          	beq	a5,a4,800010b6 <OSTaskDel.part.6+0xfc>
    800010ac:	2785                	addiw	a5,a5,1
    800010ae:	0007f717          	auipc	a4,0x7f
    800010b2:	38f70d23          	sb	a5,922(a4) # 80080448 <OSLockNesting>
    800010b6:	655030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800010ba:	647030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800010be:	0007f797          	auipc	a5,0x7f
    800010c2:	38a7c783          	lbu	a5,906(a5) # 80080448 <OSLockNesting>
    800010c6:	89aa                	mv	s3,a0
    800010c8:	e7d1                	bnez	a5,80001154 <OSTaskDel.part.6+0x19a>
    800010ca:	8522                	mv	a0,s0
    800010cc:	94ca                	add	s1,s1,s2
    800010ce:	7d1030ef          	jal	ra,8000509e <OSTaskDelHook>
    800010d2:	0004b023          	sd	zero,0(s1)
    800010d6:	00080797          	auipc	a5,0x80
    800010da:	dab7c783          	lbu	a5,-597(a5) # 80080e81 <OSTaskCtr>
    800010de:	7418                	ld	a4,40(s0)
    800010e0:	37fd                	addiw	a5,a5,-1
    800010e2:	00080697          	auipc	a3,0x80
    800010e6:	d8f68fa3          	sb	a5,-609(a3) # 80080e81 <OSTaskCtr>
    800010ea:	701c                	ld	a5,32(s0)
    800010ec:	cb35                	beqz	a4,80001160 <OSTaskDel.part.6+0x1a6>
    800010ee:	f31c                	sd	a5,32(a4)
    800010f0:	701c                	ld	a5,32(s0)
    800010f2:	7418                	ld	a4,40(s0)
    800010f4:	f798                	sd	a4,40(a5)
    800010f6:	00080797          	auipc	a5,0x80
    800010fa:	d8278793          	addi	a5,a5,-638 # 80080e78 <OSTCBFreeList>
    800010fe:	639c                	ld	a5,0(a5)
    80001100:	0007f717          	auipc	a4,0x7f
    80001104:	16070713          	addi	a4,a4,352 # 80080260 <OSUnMapTbl+0x260>
    80001108:	e058                	sd	a4,128(s0)
    8000110a:	f01c                	sd	a5,32(s0)
    8000110c:	854e                	mv	a0,s3
    8000110e:	00080797          	auipc	a5,0x80
    80001112:	d687b523          	sd	s0,-662(a5) # 80080e78 <OSTCBFreeList>
    80001116:	5f5030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000111a:	0007f717          	auipc	a4,0x7f
    8000111e:	33e74703          	lbu	a4,830(a4) # 80080458 <OSRunning>
    80001122:	4785                	li	a5,1
    80001124:	4501                	li	a0,0
    80001126:	06f70663          	beq	a4,a5,80001192 <OSTaskDel.part.6+0x1d8>
    8000112a:	70e2                	ld	ra,56(sp)
    8000112c:	7442                	ld	s0,48(sp)
    8000112e:	74a2                	ld	s1,40(sp)
    80001130:	7902                	ld	s2,32(sp)
    80001132:	69e2                	ld	s3,24(sp)
    80001134:	6121                	addi	sp,sp,64
    80001136:	8082                	ret
    80001138:	05e44703          	lbu	a4,94(s0)
    8000113c:	00080697          	auipc	a3,0x80
    80001140:	e246c683          	lbu	a3,-476(a3) # 80080f60 <OSRdyGrp>
    80001144:	fff74713          	not	a4,a4
    80001148:	8f75                	and	a4,a4,a3
    8000114a:	00080697          	auipc	a3,0x80
    8000114e:	e0e68b23          	sb	a4,-490(a3) # 80080f60 <OSRdyGrp>
    80001152:	bdc9                	j	80001024 <OSTaskDel.part.6+0x6a>
    80001154:	37fd                	addiw	a5,a5,-1
    80001156:	0007f717          	auipc	a4,0x7f
    8000115a:	2ef70923          	sb	a5,754(a4) # 80080448 <OSLockNesting>
    8000115e:	b7b5                	j	800010ca <OSTaskDel.part.6+0x110>
    80001160:	0207b423          	sd	zero,40(a5)
    80001164:	701c                	ld	a5,32(s0)
    80001166:	00080717          	auipc	a4,0x80
    8000116a:	82f73523          	sd	a5,-2006(a4) # 80080990 <OSTCBList>
    8000116e:	b761                	j	800010f6 <OSTaskDel.part.6+0x13c>
    80001170:	05e44783          	lbu	a5,94(s0)
    80001174:	01274683          	lbu	a3,18(a4)
    80001178:	fff7c793          	not	a5,a5
    8000117c:	8ff5                	and	a5,a5,a3
    8000117e:	00f70923          	sb	a5,18(a4)
    80001182:	bd5d                	j	80001038 <OSTaskDel.part.6+0x7e>
    80001184:	6f94                	ld	a3,24(a5)
    80001186:	e698                	sd	a4,8(a3)
    80001188:	f00703e3          	beqz	a4,8000108e <OSTaskDel.part.6+0xd4>
    8000118c:	00073423          	sd	zero,8(a4)
    80001190:	bdfd                	j	8000108e <OSTaskDel.part.6+0xd4>
    80001192:	e42a                	sd	a0,8(sp)
    80001194:	9d7ff0ef          	jal	ra,80000b6a <OS_Sched>
    80001198:	70e2                	ld	ra,56(sp)
    8000119a:	7442                	ld	s0,48(sp)
    8000119c:	6522                	ld	a0,8(sp)
    8000119e:	74a2                	ld	s1,40(sp)
    800011a0:	7902                	ld	s2,32(sp)
    800011a2:	69e2                	ld	s3,24(sp)
    800011a4:	6121                	addi	sp,sp,64
    800011a6:	8082                	ret
    800011a8:	563030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800011ac:	04300513          	li	a0,67
    800011b0:	bfad                	j	8000112a <OSTaskDel.part.6+0x170>
    800011b2:	559030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800011b6:	03d00513          	li	a0,61
    800011ba:	bf85                	j	8000112a <OSTaskDel.part.6+0x170>

00000000800011bc <OSTimeDly.part.9>:
    800011bc:	1141                	addi	sp,sp,-16
    800011be:	e022                	sd	s0,0(sp)
    800011c0:	e406                	sd	ra,8(sp)
    800011c2:	842a                	mv	s0,a0
    800011c4:	53d030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800011c8:	00080797          	auipc	a5,0x80
    800011cc:	1b878793          	addi	a5,a5,440 # 80081380 <OSTCBCur>
    800011d0:	6394                	ld	a3,0(a5)
    800011d2:	00080717          	auipc	a4,0x80
    800011d6:	d9670713          	addi	a4,a4,-618 # 80080f68 <OSRdyTbl>
    800011da:	05c6c603          	lbu	a2,92(a3)
    800011de:	05d6c783          	lbu	a5,93(a3)
    800011e2:	9732                	add	a4,a4,a2
    800011e4:	00074603          	lbu	a2,0(a4)
    800011e8:	fff7c793          	not	a5,a5
    800011ec:	8ff1                	and	a5,a5,a2
    800011ee:	00f70023          	sb	a5,0(a4)
    800011f2:	ef91                	bnez	a5,8000120e <OSTimeDly.part.9+0x52>
    800011f4:	05e6c783          	lbu	a5,94(a3)
    800011f8:	00080717          	auipc	a4,0x80
    800011fc:	d6874703          	lbu	a4,-664(a4) # 80080f60 <OSRdyGrp>
    80001200:	fff7c793          	not	a5,a5
    80001204:	8ff9                	and	a5,a5,a4
    80001206:	00080717          	auipc	a4,0x80
    8000120a:	d4f70d23          	sb	a5,-678(a4) # 80080f60 <OSRdyGrp>
    8000120e:	cae0                	sw	s0,84(a3)
    80001210:	4fb030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001214:	6402                	ld	s0,0(sp)
    80001216:	60a2                	ld	ra,8(sp)
    80001218:	0141                	addi	sp,sp,16
    8000121a:	951ff06f          	j	80000b6a <OS_Sched>

000000008000121e <OSStatInit>:
    8000121e:	1141                	addi	sp,sp,-16
    80001220:	e022                	sd	s0,0(sp)
    80001222:	e406                	sd	ra,8(sp)
    80001224:	00080417          	auipc	s0,0x80
    80001228:	15440413          	addi	s0,s0,340 # 80081378 <OSIntNesting>
    8000122c:	00044783          	lbu	a5,0(s0)
    80001230:	e791                	bnez	a5,8000123c <OSStatInit+0x1e>
    80001232:	0007f797          	auipc	a5,0x7f
    80001236:	2167c783          	lbu	a5,534(a5) # 80080448 <OSLockNesting>
    8000123a:	cbb1                	beqz	a5,8000128e <OSStatInit+0x70>
    8000123c:	4c5030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001240:	0007f797          	auipc	a5,0x7f
    80001244:	2007ae23          	sw	zero,540(a5) # 8008045c <OSIdleCtr>
    80001248:	4c3030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000124c:	00044783          	lbu	a5,0(s0)
    80001250:	e791                	bnez	a5,8000125c <OSStatInit+0x3e>
    80001252:	0007f797          	auipc	a5,0x7f
    80001256:	1f67c783          	lbu	a5,502(a5) # 80080448 <OSLockNesting>
    8000125a:	c795                	beqz	a5,80001286 <OSStatInit+0x68>
    8000125c:	4a5030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001260:	0007f797          	auipc	a5,0x7f
    80001264:	1fc78793          	addi	a5,a5,508 # 8008045c <OSIdleCtr>
    80001268:	439c                	lw	a5,0(a5)
    8000126a:	6402                	ld	s0,0(sp)
    8000126c:	4705                	li	a4,1
    8000126e:	60a2                	ld	ra,8(sp)
    80001270:	00081697          	auipc	a3,0x81
    80001274:	32e68023          	sb	a4,800(a3) # 80082590 <OSStatRdy>
    80001278:	00080717          	auipc	a4,0x80
    8000127c:	bef72c23          	sw	a5,-1032(a4) # 80080e70 <OSIdleCtrMax>
    80001280:	0141                	addi	sp,sp,16
    80001282:	4890306f          	j	80004f0a <OS_CPU_SR_Restore>
    80001286:	4529                	li	a0,10
    80001288:	f35ff0ef          	jal	ra,800011bc <OSTimeDly.part.9>
    8000128c:	bfc1                	j	8000125c <OSStatInit+0x3e>
    8000128e:	4509                	li	a0,2
    80001290:	f2dff0ef          	jal	ra,800011bc <OSTimeDly.part.9>
    80001294:	b765                	j	8000123c <OSStatInit+0x1e>

0000000080001296 <OS_StrLen>:
    80001296:	00054783          	lbu	a5,0(a0)
    8000129a:	cb89                	beqz	a5,800012ac <OS_StrLen+0x16>
    8000129c:	4781                	li	a5,0
    8000129e:	0505                	addi	a0,a0,1
    800012a0:	00054703          	lbu	a4,0(a0)
    800012a4:	2785                	addiw	a5,a5,1
    800012a6:	0ff7f793          	andi	a5,a5,255
    800012aa:	fb75                	bnez	a4,8000129e <OS_StrLen+0x8>
    800012ac:	853e                	mv	a0,a5
    800012ae:	8082                	ret

00000000800012b0 <OS_TCBInit>:
    800012b0:	715d                	addi	sp,sp,-80
    800012b2:	e0a2                	sd	s0,64(sp)
    800012b4:	fc26                	sd	s1,56(sp)
    800012b6:	f84a                	sd	s2,48(sp)
    800012b8:	f44e                	sd	s3,40(sp)
    800012ba:	f052                	sd	s4,32(sp)
    800012bc:	ec56                	sd	s5,24(sp)
    800012be:	e85a                	sd	s6,16(sp)
    800012c0:	e45e                	sd	s7,8(sp)
    800012c2:	8b3e                	mv	s6,a5
    800012c4:	e486                	sd	ra,72(sp)
    800012c6:	84aa                	mv	s1,a0
    800012c8:	8bae                	mv	s7,a1
    800012ca:	8a32                	mv	s4,a2
    800012cc:	8936                	mv	s2,a3
    800012ce:	8aba                	mv	s5,a4
    800012d0:	89c2                	mv	s3,a6
    800012d2:	42f030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800012d6:	00080797          	auipc	a5,0x80
    800012da:	ba278793          	addi	a5,a5,-1118 # 80080e78 <OSTCBFreeList>
    800012de:	6380                	ld	s0,0(a5)
    800012e0:	e005                	bnez	s0,80001300 <OS_TCBInit+0x50>
    800012e2:	429030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800012e6:	04200513          	li	a0,66
    800012ea:	60a6                	ld	ra,72(sp)
    800012ec:	6406                	ld	s0,64(sp)
    800012ee:	74e2                	ld	s1,56(sp)
    800012f0:	7942                	ld	s2,48(sp)
    800012f2:	79a2                	ld	s3,40(sp)
    800012f4:	7a02                	ld	s4,32(sp)
    800012f6:	6ae2                	ld	s5,24(sp)
    800012f8:	6b42                	ld	s6,16(sp)
    800012fa:	6ba2                	ld	s7,8(sp)
    800012fc:	6161                	addi	sp,sp,80
    800012fe:	8082                	ret
    80001300:	701c                	ld	a5,32(s0)
    80001302:	00080717          	auipc	a4,0x80
    80001306:	b6f73b23          	sd	a5,-1162(a4) # 80080e78 <OSTCBFreeList>
    8000130a:	401030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000130e:	0074f713          	andi	a4,s1,7
    80001312:	0034d693          	srli	a3,s1,0x3
    80001316:	4785                	li	a5,1
    80001318:	00d79633          	sll	a2,a5,a3
    8000131c:	00e797b3          	sll	a5,a5,a4
    80001320:	04f40ea3          	sb	a5,93(s0)
    80001324:	0007f797          	auipc	a5,0x7f
    80001328:	f3c78793          	addi	a5,a5,-196 # 80080260 <OSUnMapTbl+0x260>
    8000132c:	04e40da3          	sb	a4,91(s0)
    80001330:	e05c                	sd	a5,128(s0)
    80001332:	04d40e23          	sb	a3,92(s0)
    80001336:	04c40f23          	sb	a2,94(s0)
    8000133a:	04940d23          	sb	s1,90(s0)
    8000133e:	8522                	mv	a0,s0
    80001340:	01743023          	sd	s7,0(s0)
    80001344:	04042a23          	sw	zero,84(s0)
    80001348:	04041c23          	sh	zero,88(s0)
    8000134c:	01643423          	sd	s6,8(s0)
    80001350:	01542c23          	sw	s5,24(s0)
    80001354:	01443823          	sd	s4,16(s0)
    80001358:	01341e23          	sh	s3,28(s0)
    8000135c:	01241f23          	sh	s2,30(s0)
    80001360:	04040fa3          	sb	zero,95(s0)
    80001364:	02043823          	sd	zero,48(s0)
    80001368:	02043c23          	sd	zero,56(s0)
    8000136c:	04043423          	sd	zero,72(s0)
    80001370:	04043023          	sd	zero,64(s0)
    80001374:	06042023          	sw	zero,96(s0)
    80001378:	06042423          	sw	zero,104(s0)
    8000137c:	06042223          	sw	zero,100(s0)
    80001380:	06043823          	sd	zero,112(s0)
    80001384:	06042c23          	sw	zero,120(s0)
    80001388:	08042423          	sw	zero,136(s0)
    8000138c:	51b030ef          	jal	ra,800050a6 <OSTCBInitHook>
    80001390:	8522                	mv	a0,s0
    80001392:	50b030ef          	jal	ra,8000509c <OSTaskCreateHook>
    80001396:	36b030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000139a:	0007f797          	auipc	a5,0x7f
    8000139e:	5f678793          	addi	a5,a5,1526 # 80080990 <OSTCBList>
    800013a2:	6398                	ld	a4,0(a5)
    800013a4:	048e                	slli	s1,s1,0x3
    800013a6:	00081797          	auipc	a5,0x81
    800013aa:	1f278793          	addi	a5,a5,498 # 80082598 <OSTCBPrioTbl>
    800013ae:	94be                	add	s1,s1,a5
    800013b0:	e080                	sd	s0,0(s1)
    800013b2:	f018                	sd	a4,32(s0)
    800013b4:	02043423          	sd	zero,40(s0)
    800013b8:	c311                	beqz	a4,800013bc <OS_TCBInit+0x10c>
    800013ba:	f700                	sd	s0,40(a4)
    800013bc:	05c44703          	lbu	a4,92(s0)
    800013c0:	00080797          	auipc	a5,0x80
    800013c4:	ba878793          	addi	a5,a5,-1112 # 80080f68 <OSRdyTbl>
    800013c8:	05d44583          	lbu	a1,93(s0)
    800013cc:	97ba                	add	a5,a5,a4
    800013ce:	0007c683          	lbu	a3,0(a5)
    800013d2:	05e44603          	lbu	a2,94(s0)
    800013d6:	00080817          	auipc	a6,0x80
    800013da:	b8a84803          	lbu	a6,-1142(a6) # 80080f60 <OSRdyGrp>
    800013de:	00080717          	auipc	a4,0x80
    800013e2:	aa374703          	lbu	a4,-1373(a4) # 80080e81 <OSTaskCtr>
    800013e6:	8ecd                	or	a3,a3,a1
    800013e8:	01066633          	or	a2,a2,a6
    800013ec:	2705                	addiw	a4,a4,1
    800013ee:	00d78023          	sb	a3,0(a5)
    800013f2:	0007f597          	auipc	a1,0x7f
    800013f6:	5885bf23          	sd	s0,1438(a1) # 80080990 <OSTCBList>
    800013fa:	00080597          	auipc	a1,0x80
    800013fe:	b6c58323          	sb	a2,-1178(a1) # 80080f60 <OSRdyGrp>
    80001402:	00080797          	auipc	a5,0x80
    80001406:	a6e78fa3          	sb	a4,-1409(a5) # 80080e81 <OSTaskCtr>
    8000140a:	301030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000140e:	4501                	li	a0,0
    80001410:	bde9                	j	800012ea <OS_TCBInit+0x3a>

0000000080001412 <OSFlagAccept>:
    80001412:	7139                	addi	sp,sp,-64
    80001414:	f04a                	sd	s2,32(sp)
    80001416:	fc06                	sd	ra,56(sp)
    80001418:	f822                	sd	s0,48(sp)
    8000141a:	f426                	sd	s1,40(sp)
    8000141c:	ec4e                	sd	s3,24(sp)
    8000141e:	00054703          	lbu	a4,0(a0)
    80001422:	4795                	li	a5,5
    80001424:	8936                	mv	s2,a3
    80001426:	00f70e63          	beq	a4,a5,80001442 <OSFlagAccept+0x30>
    8000142a:	4785                	li	a5,1
    8000142c:	00f68023          	sb	a5,0(a3)
    80001430:	4401                	li	s0,0
    80001432:	8522                	mv	a0,s0
    80001434:	70e2                	ld	ra,56(sp)
    80001436:	7442                	ld	s0,48(sp)
    80001438:	74a2                	ld	s1,40(sp)
    8000143a:	7902                	ld	s2,32(sp)
    8000143c:	69e2                	ld	s3,24(sp)
    8000143e:	6121                	addi	sp,sp,64
    80001440:	8082                	ret
    80001442:	0186179b          	slliw	a5,a2,0x18
    80001446:	4187d79b          	sraiw	a5,a5,0x18
    8000144a:	84aa                	mv	s1,a0
    8000144c:	4981                	li	s3,0
    8000144e:	0007d563          	bgez	a5,80001458 <OSFlagAccept+0x46>
    80001452:	07f67613          	andi	a2,a2,127
    80001456:	4985                	li	s3,1
    80001458:	00090023          	sb	zero,0(s2)
    8000145c:	e432                	sd	a2,8(sp)
    8000145e:	e02e                	sd	a1,0(sp)
    80001460:	2a1030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001464:	6622                	ld	a2,8(sp)
    80001466:	4785                	li	a5,1
    80001468:	872a                	mv	a4,a0
    8000146a:	6582                	ld	a1,0(sp)
    8000146c:	08f60063          	beq	a2,a5,800014ec <OSFlagAccept+0xda>
    80001470:	c22d                	beqz	a2,800014d2 <OSFlagAccept+0xc0>
    80001472:	4689                	li	a3,2
    80001474:	02d60963          	beq	a2,a3,800014a6 <OSFlagAccept+0x94>
    80001478:	468d                	li	a3,3
    8000147a:	04d61463          	bne	a2,a3,800014c2 <OSFlagAccept+0xb0>
    8000147e:	0104d683          	lhu	a3,16(s1)
    80001482:	00b6f433          	and	s0,a3,a1
    80001486:	e415                	bnez	s0,800014b2 <OSFlagAccept+0xa0>
    80001488:	07000793          	li	a5,112
    8000148c:	00f90023          	sb	a5,0(s2)
    80001490:	853a                	mv	a0,a4
    80001492:	279030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001496:	8522                	mv	a0,s0
    80001498:	70e2                	ld	ra,56(sp)
    8000149a:	7442                	ld	s0,48(sp)
    8000149c:	74a2                	ld	s1,40(sp)
    8000149e:	7902                	ld	s2,32(sp)
    800014a0:	69e2                	ld	s3,24(sp)
    800014a2:	6121                	addi	sp,sp,64
    800014a4:	8082                	ret
    800014a6:	0104d683          	lhu	a3,16(s1)
    800014aa:	00b6f433          	and	s0,a3,a1
    800014ae:	fc859de3          	bne	a1,s0,80001488 <OSFlagAccept+0x76>
    800014b2:	fcf99fe3          	bne	s3,a5,80001490 <OSFlagAccept+0x7e>
    800014b6:	fff44793          	not	a5,s0
    800014ba:	8efd                	and	a3,a3,a5
    800014bc:	00d49823          	sh	a3,16(s1)
    800014c0:	bfc1                	j	80001490 <OSFlagAccept+0x7e>
    800014c2:	249030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800014c6:	06f00793          	li	a5,111
    800014ca:	00f90023          	sb	a5,0(s2)
    800014ce:	4401                	li	s0,0
    800014d0:	b78d                	j	80001432 <OSFlagAccept+0x20>
    800014d2:	0104d683          	lhu	a3,16(s1)
    800014d6:	fff6c413          	not	s0,a3
    800014da:	8c6d                	and	s0,s0,a1
    800014dc:	fa8596e3          	bne	a1,s0,80001488 <OSFlagAccept+0x76>
    800014e0:	faf998e3          	bne	s3,a5,80001490 <OSFlagAccept+0x7e>
    800014e4:	8ecd                	or	a3,a3,a1
    800014e6:	00d49823          	sh	a3,16(s1)
    800014ea:	b75d                	j	80001490 <OSFlagAccept+0x7e>
    800014ec:	0104d783          	lhu	a5,16(s1)
    800014f0:	fff7c413          	not	s0,a5
    800014f4:	8c6d                	and	s0,s0,a1
    800014f6:	d849                	beqz	s0,80001488 <OSFlagAccept+0x76>
    800014f8:	f8c99ce3          	bne	s3,a2,80001490 <OSFlagAccept+0x7e>
    800014fc:	8fcd                	or	a5,a5,a1
    800014fe:	00f49823          	sh	a5,16(s1)
    80001502:	b779                	j	80001490 <OSFlagAccept+0x7e>

0000000080001504 <OSFlagCreate>:
    80001504:	1101                	addi	sp,sp,-32
    80001506:	ec06                	sd	ra,24(sp)
    80001508:	e822                	sd	s0,16(sp)
    8000150a:	e426                	sd	s1,8(sp)
    8000150c:	e04a                	sd	s2,0(sp)
    8000150e:	00080797          	auipc	a5,0x80
    80001512:	e6a7c783          	lbu	a5,-406(a5) # 80081378 <OSIntNesting>
    80001516:	e7a5                	bnez	a5,8000157e <OSFlagCreate+0x7a>
    80001518:	84ae                	mv	s1,a1
    8000151a:	892a                	mv	s2,a0
    8000151c:	1e5030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001520:	00081797          	auipc	a5,0x81
    80001524:	06878793          	addi	a5,a5,104 # 80082588 <OSFlagFreeList>
    80001528:	6380                	ld	s0,0(a5)
    8000152a:	cc0d                	beqz	s0,80001564 <OSFlagCreate+0x60>
    8000152c:	641c                	ld	a5,8(s0)
    8000152e:	01241823          	sh	s2,16(s0)
    80001532:	00043423          	sd	zero,8(s0)
    80001536:	00081717          	auipc	a4,0x81
    8000153a:	04f73923          	sd	a5,82(a4) # 80082588 <OSFlagFreeList>
    8000153e:	4795                	li	a5,5
    80001540:	00f40023          	sb	a5,0(s0)
    80001544:	0007f797          	auipc	a5,0x7f
    80001548:	d1c78793          	addi	a5,a5,-740 # 80080260 <OSUnMapTbl+0x260>
    8000154c:	ec1c                	sd	a5,24(s0)
    8000154e:	1bd030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001552:	00048023          	sb	zero,0(s1)
    80001556:	8522                	mv	a0,s0
    80001558:	60e2                	ld	ra,24(sp)
    8000155a:	6442                	ld	s0,16(sp)
    8000155c:	64a2                	ld	s1,8(sp)
    8000155e:	6902                	ld	s2,0(sp)
    80001560:	6105                	addi	sp,sp,32
    80001562:	8082                	ret
    80001564:	1a7030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001568:	07200793          	li	a5,114
    8000156c:	00f48023          	sb	a5,0(s1)
    80001570:	8522                	mv	a0,s0
    80001572:	60e2                	ld	ra,24(sp)
    80001574:	6442                	ld	s0,16(sp)
    80001576:	64a2                	ld	s1,8(sp)
    80001578:	6902                	ld	s2,0(sp)
    8000157a:	6105                	addi	sp,sp,32
    8000157c:	8082                	ret
    8000157e:	4401                	li	s0,0
    80001580:	8522                	mv	a0,s0
    80001582:	60e2                	ld	ra,24(sp)
    80001584:	6442                	ld	s0,16(sp)
    80001586:	47c1                	li	a5,16
    80001588:	00f58023          	sb	a5,0(a1)
    8000158c:	64a2                	ld	s1,8(sp)
    8000158e:	6902                	ld	s2,0(sp)
    80001590:	6105                	addi	sp,sp,32
    80001592:	8082                	ret

0000000080001594 <OSFlagDel>:
    80001594:	00080797          	auipc	a5,0x80
    80001598:	de47c783          	lbu	a5,-540(a5) # 80081378 <OSIntNesting>
    8000159c:	eb91                	bnez	a5,800015b0 <OSFlagDel+0x1c>
    8000159e:	00054703          	lbu	a4,0(a0)
    800015a2:	4795                	li	a5,5
    800015a4:	00f70a63          	beq	a4,a5,800015b8 <OSFlagDel+0x24>
    800015a8:	4785                	li	a5,1
    800015aa:	00f60023          	sb	a5,0(a2)
    800015ae:	8082                	ret
    800015b0:	47bd                	li	a5,15
    800015b2:	00f60023          	sb	a5,0(a2)
    800015b6:	8082                	ret
    800015b8:	7179                	addi	sp,sp,-48
    800015ba:	f022                	sd	s0,32(sp)
    800015bc:	842a                	mv	s0,a0
    800015be:	ec26                	sd	s1,24(sp)
    800015c0:	e84a                	sd	s2,16(sp)
    800015c2:	e44e                	sd	s3,8(sp)
    800015c4:	e052                	sd	s4,0(sp)
    800015c6:	f406                	sd	ra,40(sp)
    800015c8:	84b2                	mv	s1,a2
    800015ca:	892e                	mv	s2,a1
    800015cc:	135030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800015d0:	00843983          	ld	s3,8(s0)
    800015d4:	8a2a                	mv	s4,a0
    800015d6:	08098263          	beqz	s3,8000165a <OSFlagDel+0xc6>
    800015da:	06090863          	beqz	s2,8000164a <OSFlagDel+0xb6>
    800015de:	4785                	li	a5,1
    800015e0:	02f90163          	beq	s2,a5,80001602 <OSFlagDel+0x6e>
    800015e4:	8552                	mv	a0,s4
    800015e6:	125030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800015ea:	479d                	li	a5,7
    800015ec:	00f48023          	sb	a5,0(s1)
    800015f0:	8522                	mv	a0,s0
    800015f2:	70a2                	ld	ra,40(sp)
    800015f4:	7402                	ld	s0,32(sp)
    800015f6:	64e2                	ld	s1,24(sp)
    800015f8:	6942                	ld	s2,16(sp)
    800015fa:	69a2                	ld	s3,8(sp)
    800015fc:	6a02                	ld	s4,0(sp)
    800015fe:	6145                	addi	sp,sp,48
    80001600:	8082                	ret
    80001602:	854e                	mv	a0,s3
    80001604:	4581                	li	a1,0
    80001606:	cb5fe0ef          	jal	ra,800002ba <OS_FlagTaskRdy>
    8000160a:	0009b983          	ld	s3,0(s3)
    8000160e:	fe099ae3          	bnez	s3,80001602 <OSFlagDel+0x6e>
    80001612:	00040023          	sb	zero,0(s0)
    80001616:	00081797          	auipc	a5,0x81
    8000161a:	f7278793          	addi	a5,a5,-142 # 80082588 <OSFlagFreeList>
    8000161e:	639c                	ld	a5,0(a5)
    80001620:	0007f717          	auipc	a4,0x7f
    80001624:	c4070713          	addi	a4,a4,-960 # 80080260 <OSUnMapTbl+0x260>
    80001628:	8552                	mv	a0,s4
    8000162a:	e41c                	sd	a5,8(s0)
    8000162c:	ec18                	sd	a4,24(s0)
    8000162e:	00041823          	sh	zero,16(s0)
    80001632:	00081797          	auipc	a5,0x81
    80001636:	f487bb23          	sd	s0,-170(a5) # 80082588 <OSFlagFreeList>
    8000163a:	0d1030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000163e:	d2cff0ef          	jal	ra,80000b6a <OS_Sched>
    80001642:	00048023          	sb	zero,0(s1)
    80001646:	4501                	li	a0,0
    80001648:	b76d                	j	800015f2 <OSFlagDel+0x5e>
    8000164a:	0c1030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000164e:	04900793          	li	a5,73
    80001652:	00f48023          	sb	a5,0(s1)
    80001656:	8522                	mv	a0,s0
    80001658:	bf69                	j	800015f2 <OSFlagDel+0x5e>
    8000165a:	02090b63          	beqz	s2,80001690 <OSFlagDel+0xfc>
    8000165e:	4785                	li	a5,1
    80001660:	f8f912e3          	bne	s2,a5,800015e4 <OSFlagDel+0x50>
    80001664:	00040023          	sb	zero,0(s0)
    80001668:	00081797          	auipc	a5,0x81
    8000166c:	f2078793          	addi	a5,a5,-224 # 80082588 <OSFlagFreeList>
    80001670:	639c                	ld	a5,0(a5)
    80001672:	0007f717          	auipc	a4,0x7f
    80001676:	bee70713          	addi	a4,a4,-1042 # 80080260 <OSUnMapTbl+0x260>
    8000167a:	ec18                	sd	a4,24(s0)
    8000167c:	e41c                	sd	a5,8(s0)
    8000167e:	00041823          	sh	zero,16(s0)
    80001682:	00081797          	auipc	a5,0x81
    80001686:	f087b323          	sd	s0,-250(a5) # 80082588 <OSFlagFreeList>
    8000168a:	081030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000168e:	bf55                	j	80001642 <OSFlagDel+0xae>
    80001690:	00040023          	sb	zero,0(s0)
    80001694:	00081797          	auipc	a5,0x81
    80001698:	ef478793          	addi	a5,a5,-268 # 80082588 <OSFlagFreeList>
    8000169c:	639c                	ld	a5,0(a5)
    8000169e:	0007f717          	auipc	a4,0x7f
    800016a2:	bc270713          	addi	a4,a4,-1086 # 80080260 <OSUnMapTbl+0x260>
    800016a6:	ec18                	sd	a4,24(s0)
    800016a8:	e41c                	sd	a5,8(s0)
    800016aa:	00041823          	sh	zero,16(s0)
    800016ae:	00081797          	auipc	a5,0x81
    800016b2:	ec87bd23          	sd	s0,-294(a5) # 80082588 <OSFlagFreeList>
    800016b6:	055030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800016ba:	4501                	li	a0,0
    800016bc:	00048023          	sb	zero,0(s1)
    800016c0:	bf0d                	j	800015f2 <OSFlagDel+0x5e>

00000000800016c2 <OSFlagNameGet>:
    800016c2:	7179                	addi	sp,sp,-48
    800016c4:	f022                	sd	s0,32(sp)
    800016c6:	f406                	sd	ra,40(sp)
    800016c8:	ec26                	sd	s1,24(sp)
    800016ca:	e84a                	sd	s2,16(sp)
    800016cc:	e44e                	sd	s3,8(sp)
    800016ce:	00080417          	auipc	s0,0x80
    800016d2:	caa44403          	lbu	s0,-854(s0) # 80081378 <OSIntNesting>
    800016d6:	cc09                	beqz	s0,800016f0 <OSFlagNameGet+0x2e>
    800016d8:	4401                	li	s0,0
    800016da:	8522                	mv	a0,s0
    800016dc:	70a2                	ld	ra,40(sp)
    800016de:	7402                	ld	s0,32(sp)
    800016e0:	47c5                	li	a5,17
    800016e2:	00f60023          	sb	a5,0(a2)
    800016e6:	64e2                	ld	s1,24(sp)
    800016e8:	6942                	ld	s2,16(sp)
    800016ea:	69a2                	ld	s3,8(sp)
    800016ec:	6145                	addi	sp,sp,48
    800016ee:	8082                	ret
    800016f0:	84aa                	mv	s1,a0
    800016f2:	8932                	mv	s2,a2
    800016f4:	89ae                	mv	s3,a1
    800016f6:	00b030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800016fa:	0004c703          	lbu	a4,0(s1)
    800016fe:	4795                	li	a5,5
    80001700:	86aa                	mv	a3,a0
    80001702:	02f71c63          	bne	a4,a5,8000173a <OSFlagNameGet+0x78>
    80001706:	6c9c                	ld	a5,24(s1)
    80001708:	00f9b023          	sd	a5,0(s3)
    8000170c:	0007c703          	lbu	a4,0(a5)
    80001710:	cb01                	beqz	a4,80001720 <OSFlagNameGet+0x5e>
    80001712:	0785                	addi	a5,a5,1
    80001714:	0007c703          	lbu	a4,0(a5)
    80001718:	2405                	addiw	s0,s0,1
    8000171a:	0ff47413          	andi	s0,s0,255
    8000171e:	fb75                	bnez	a4,80001712 <OSFlagNameGet+0x50>
    80001720:	8536                	mv	a0,a3
    80001722:	7e8030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001726:	00090023          	sb	zero,0(s2)
    8000172a:	8522                	mv	a0,s0
    8000172c:	70a2                	ld	ra,40(sp)
    8000172e:	7402                	ld	s0,32(sp)
    80001730:	64e2                	ld	s1,24(sp)
    80001732:	6942                	ld	s2,16(sp)
    80001734:	69a2                	ld	s3,8(sp)
    80001736:	6145                	addi	sp,sp,48
    80001738:	8082                	ret
    8000173a:	7d0030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000173e:	4785                	li	a5,1
    80001740:	00f90023          	sb	a5,0(s2)
    80001744:	8522                	mv	a0,s0
    80001746:	70a2                	ld	ra,40(sp)
    80001748:	7402                	ld	s0,32(sp)
    8000174a:	64e2                	ld	s1,24(sp)
    8000174c:	6942                	ld	s2,16(sp)
    8000174e:	69a2                	ld	s3,8(sp)
    80001750:	6145                	addi	sp,sp,48
    80001752:	8082                	ret

0000000080001754 <OSFlagNameSet>:
    80001754:	00080797          	auipc	a5,0x80
    80001758:	c247c783          	lbu	a5,-988(a5) # 80081378 <OSIntNesting>
    8000175c:	c789                	beqz	a5,80001766 <OSFlagNameSet+0x12>
    8000175e:	47c9                	li	a5,18
    80001760:	00f60023          	sb	a5,0(a2)
    80001764:	8082                	ret
    80001766:	1101                	addi	sp,sp,-32
    80001768:	e822                	sd	s0,16(sp)
    8000176a:	e426                	sd	s1,8(sp)
    8000176c:	e04a                	sd	s2,0(sp)
    8000176e:	84aa                	mv	s1,a0
    80001770:	ec06                	sd	ra,24(sp)
    80001772:	8432                	mv	s0,a2
    80001774:	892e                	mv	s2,a1
    80001776:	78a030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000177a:	0004c703          	lbu	a4,0(s1)
    8000177e:	4795                	li	a5,5
    80001780:	00f70d63          	beq	a4,a5,8000179a <OSFlagNameSet+0x46>
    80001784:	786030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001788:	4785                	li	a5,1
    8000178a:	00f40023          	sb	a5,0(s0)
    8000178e:	60e2                	ld	ra,24(sp)
    80001790:	6442                	ld	s0,16(sp)
    80001792:	64a2                	ld	s1,8(sp)
    80001794:	6902                	ld	s2,0(sp)
    80001796:	6105                	addi	sp,sp,32
    80001798:	8082                	ret
    8000179a:	0124bc23          	sd	s2,24(s1)
    8000179e:	76c030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800017a2:	00040023          	sb	zero,0(s0)
    800017a6:	60e2                	ld	ra,24(sp)
    800017a8:	6442                	ld	s0,16(sp)
    800017aa:	64a2                	ld	s1,8(sp)
    800017ac:	6902                	ld	s2,0(sp)
    800017ae:	6105                	addi	sp,sp,32
    800017b0:	8082                	ret

00000000800017b2 <OSFlagPend>:
    800017b2:	7119                	addi	sp,sp,-128
    800017b4:	f4a6                	sd	s1,104(sp)
    800017b6:	fc86                	sd	ra,120(sp)
    800017b8:	f8a2                	sd	s0,112(sp)
    800017ba:	f0ca                	sd	s2,96(sp)
    800017bc:	ecce                	sd	s3,88(sp)
    800017be:	e8d2                	sd	s4,80(sp)
    800017c0:	e4d6                	sd	s5,72(sp)
    800017c2:	00080797          	auipc	a5,0x80
    800017c6:	bb67c783          	lbu	a5,-1098(a5) # 80081378 <OSIntNesting>
    800017ca:	84ba                	mv	s1,a4
    800017cc:	ef9d                	bnez	a5,8000180a <OSFlagPend+0x58>
    800017ce:	0007f797          	auipc	a5,0x7f
    800017d2:	c7a7c783          	lbu	a5,-902(a5) # 80080448 <OSLockNesting>
    800017d6:	ef81                	bnez	a5,800017ee <OSFlagPend+0x3c>
    800017d8:	00054703          	lbu	a4,0(a0)
    800017dc:	4795                	li	a5,5
    800017de:	89aa                	mv	s3,a0
    800017e0:	02f70a63          	beq	a4,a5,80001814 <OSFlagPend+0x62>
    800017e4:	4785                	li	a5,1
    800017e6:	00f48023          	sb	a5,0(s1)
    800017ea:	4401                	li	s0,0
    800017ec:	a029                	j	800017f6 <OSFlagPend+0x44>
    800017ee:	47b5                	li	a5,13
    800017f0:	00f70023          	sb	a5,0(a4)
    800017f4:	4401                	li	s0,0
    800017f6:	8522                	mv	a0,s0
    800017f8:	70e6                	ld	ra,120(sp)
    800017fa:	7446                	ld	s0,112(sp)
    800017fc:	74a6                	ld	s1,104(sp)
    800017fe:	7906                	ld	s2,96(sp)
    80001800:	69e6                	ld	s3,88(sp)
    80001802:	6a46                	ld	s4,80(sp)
    80001804:	6aa6                	ld	s5,72(sp)
    80001806:	6109                	addi	sp,sp,128
    80001808:	8082                	ret
    8000180a:	4789                	li	a5,2
    8000180c:	00f70023          	sb	a5,0(a4)
    80001810:	4401                	li	s0,0
    80001812:	b7d5                	j	800017f6 <OSFlagPend+0x44>
    80001814:	0186179b          	slliw	a5,a2,0x18
    80001818:	4187d79b          	sraiw	a5,a5,0x18
    8000181c:	8932                	mv	s2,a2
    8000181e:	4a01                	li	s4,0
    80001820:	0007d563          	bgez	a5,8000182a <OSFlagPend+0x78>
    80001824:	07f67913          	andi	s2,a2,127
    80001828:	4a05                	li	s4,1
    8000182a:	e436                	sd	a3,8(sp)
    8000182c:	e02e                	sd	a1,0(sp)
    8000182e:	6d2030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001832:	4785                	li	a5,1
    80001834:	8aaa                	mv	s5,a0
    80001836:	6582                	ld	a1,0(sp)
    80001838:	66a2                	ld	a3,8(sp)
    8000183a:	0af90263          	beq	s2,a5,800018de <OSFlagPend+0x12c>
    8000183e:	08090563          	beqz	s2,800018c8 <OSFlagPend+0x116>
    80001842:	4709                	li	a4,2
    80001844:	02e90f63          	beq	s2,a4,80001882 <OSFlagPend+0xd0>
    80001848:	470d                	li	a4,3
    8000184a:	06e91763          	bne	s2,a4,800018b8 <OSFlagPend+0x106>
    8000184e:	0109d703          	lhu	a4,16(s3)
    80001852:	00b77433          	and	s0,a4,a1
    80001856:	12040e63          	beqz	s0,80001992 <OSFlagPend+0x1e0>
    8000185a:	00fa1763          	bne	s4,a5,80001868 <OSFlagPend+0xb6>
    8000185e:	fff44793          	not	a5,s0
    80001862:	8f7d                	and	a4,a4,a5
    80001864:	00e99823          	sh	a4,16(s3)
    80001868:	00080797          	auipc	a5,0x80
    8000186c:	b1878793          	addi	a5,a5,-1256 # 80081380 <OSTCBCur>
    80001870:	639c                	ld	a5,0(a5)
    80001872:	8556                	mv	a0,s5
    80001874:	04879823          	sh	s0,80(a5)
    80001878:	692030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000187c:	00048023          	sb	zero,0(s1)
    80001880:	bf9d                	j	800017f6 <OSFlagPend+0x44>
    80001882:	0109d703          	lhu	a4,16(s3)
    80001886:	00b77633          	and	a2,a4,a1
    8000188a:	0ec59c63          	bne	a1,a2,80001982 <OSFlagPend+0x1d0>
    8000188e:	00fa1763          	bne	s4,a5,8000189c <OSFlagPend+0xea>
    80001892:	fff5c793          	not	a5,a1
    80001896:	8f7d                	and	a4,a4,a5
    80001898:	00e99823          	sh	a4,16(s3)
    8000189c:	00080797          	auipc	a5,0x80
    800018a0:	ae478793          	addi	a5,a5,-1308 # 80081380 <OSTCBCur>
    800018a4:	639c                	ld	a5,0(a5)
    800018a6:	8556                	mv	a0,s5
    800018a8:	842e                	mv	s0,a1
    800018aa:	04b79823          	sh	a1,80(a5)
    800018ae:	65c030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800018b2:	00048023          	sb	zero,0(s1)
    800018b6:	b781                	j	800017f6 <OSFlagPend+0x44>
    800018b8:	652030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800018bc:	06f00793          	li	a5,111
    800018c0:	00f48023          	sb	a5,0(s1)
    800018c4:	4401                	li	s0,0
    800018c6:	bf05                	j	800017f6 <OSFlagPend+0x44>
    800018c8:	0109d703          	lhu	a4,16(s3)
    800018cc:	00b77633          	and	a2,a4,a1
    800018d0:	e21d                	bnez	a2,800018f6 <OSFlagPend+0x144>
    800018d2:	fcfa15e3          	bne	s4,a5,8000189c <OSFlagPend+0xea>
    800018d6:	8f4d                	or	a4,a4,a1
    800018d8:	00e99823          	sh	a4,16(s3)
    800018dc:	b7c1                	j	8000189c <OSFlagPend+0xea>
    800018de:	0109d783          	lhu	a5,16(s3)
    800018e2:	fff7c413          	not	s0,a5
    800018e6:	8c6d                	and	s0,s0,a1
    800018e8:	c845                	beqz	s0,80001998 <OSFlagPend+0x1e6>
    800018ea:	f72a1fe3          	bne	s4,s2,80001868 <OSFlagPend+0xb6>
    800018ee:	8fcd                	or	a5,a5,a1
    800018f0:	00f99823          	sh	a5,16(s3)
    800018f4:	bf95                	j	80001868 <OSFlagPend+0xb6>
    800018f6:	8736                	mv	a4,a3
    800018f8:	4681                	li	a3,0
    800018fa:	862e                	mv	a2,a1
    800018fc:	854e                	mv	a0,s3
    800018fe:	082c                	addi	a1,sp,24
    80001900:	93dfe0ef          	jal	ra,8000023c <OS_FlagBlock>
    80001904:	8556                	mv	a0,s5
    80001906:	604030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000190a:	a60ff0ef          	jal	ra,80000b6a <OS_Sched>
    8000190e:	5f2030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001912:	00080717          	auipc	a4,0x80
    80001916:	a6e70713          	addi	a4,a4,-1426 # 80081380 <OSTCBCur>
    8000191a:	631c                	ld	a5,0(a4)
    8000191c:	86aa                	mv	a3,a0
    8000191e:	0597c403          	lbu	s0,89(a5)
    80001922:	c815                	beqz	s0,80001956 <OSFlagPend+0x1a4>
    80001924:	7582                	ld	a1,32(sp)
    80001926:	04078ca3          	sb	zero,89(a5)
    8000192a:	6662                	ld	a2,24(sp)
    8000192c:	c9ad                	beqz	a1,8000199e <OSFlagPend+0x1ec>
    8000192e:	e190                	sd	a2,0(a1)
    80001930:	631c                	ld	a5,0(a4)
    80001932:	c211                	beqz	a2,80001936 <OSFlagPend+0x184>
    80001934:	e60c                	sd	a1,8(a2)
    80001936:	7722                	ld	a4,40(sp)
    80001938:	8536                	mv	a0,a3
    8000193a:	04073423          	sd	zero,72(a4)
    8000193e:	04078c23          	sb	zero,88(a5)
    80001942:	5c8030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001946:	4789                	li	a5,2
    80001948:	04f41063          	bne	s0,a5,80001988 <OSFlagPend+0x1d6>
    8000194c:	47b9                	li	a5,14
    8000194e:	00f48023          	sb	a5,0(s1)
    80001952:	4401                	li	s0,0
    80001954:	b54d                	j	800017f6 <OSFlagPend+0x44>
    80001956:	0507d403          	lhu	s0,80(a5)
    8000195a:	000a0e63          	beqz	s4,80001976 <OSFlagPend+0x1c4>
    8000195e:	052a7663          	bleu	s2,s4,800019aa <OSFlagPend+0x1f8>
    80001962:	478d                	li	a5,3
    80001964:	f527eae3          	bltu	a5,s2,800018b8 <OSFlagPend+0x106>
    80001968:	0109d703          	lhu	a4,16(s3)
    8000196c:	fff44793          	not	a5,s0
    80001970:	8ff9                	and	a5,a5,a4
    80001972:	00f99823          	sh	a5,16(s3)
    80001976:	8536                	mv	a0,a3
    80001978:	592030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000197c:	00048023          	sb	zero,0(s1)
    80001980:	bd9d                	j	800017f6 <OSFlagPend+0x44>
    80001982:	8736                	mv	a4,a3
    80001984:	4689                	li	a3,2
    80001986:	bf95                	j	800018fa <OSFlagPend+0x148>
    80001988:	47a9                	li	a5,10
    8000198a:	00f48023          	sb	a5,0(s1)
    8000198e:	4401                	li	s0,0
    80001990:	b59d                	j	800017f6 <OSFlagPend+0x44>
    80001992:	8736                	mv	a4,a3
    80001994:	468d                	li	a3,3
    80001996:	b795                	j	800018fa <OSFlagPend+0x148>
    80001998:	8736                	mv	a4,a3
    8000199a:	4685                	li	a3,1
    8000199c:	bfb9                	j	800018fa <OSFlagPend+0x148>
    8000199e:	7742                	ld	a4,48(sp)
    800019a0:	e710                	sd	a2,8(a4)
    800019a2:	da51                	beqz	a2,80001936 <OSFlagPend+0x184>
    800019a4:	00063423          	sd	zero,8(a2)
    800019a8:	b779                	j	80001936 <OSFlagPend+0x184>
    800019aa:	0109d783          	lhu	a5,16(s3)
    800019ae:	8fc1                	or	a5,a5,s0
    800019b0:	00f99823          	sh	a5,16(s3)
    800019b4:	b7c9                	j	80001976 <OSFlagPend+0x1c4>

00000000800019b6 <OSFlagPendGetFlagsRdy>:
    800019b6:	1141                	addi	sp,sp,-16
    800019b8:	e406                	sd	ra,8(sp)
    800019ba:	e022                	sd	s0,0(sp)
    800019bc:	544030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800019c0:	00080797          	auipc	a5,0x80
    800019c4:	9c078793          	addi	a5,a5,-1600 # 80081380 <OSTCBCur>
    800019c8:	639c                	ld	a5,0(a5)
    800019ca:	0507d403          	lhu	s0,80(a5)
    800019ce:	53c030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800019d2:	60a2                	ld	ra,8(sp)
    800019d4:	8522                	mv	a0,s0
    800019d6:	6402                	ld	s0,0(sp)
    800019d8:	0141                	addi	sp,sp,16
    800019da:	8082                	ret

00000000800019dc <OSFlagPost>:
    800019dc:	715d                	addi	sp,sp,-80
    800019de:	e486                	sd	ra,72(sp)
    800019e0:	e0a2                	sd	s0,64(sp)
    800019e2:	fc26                	sd	s1,56(sp)
    800019e4:	f84a                	sd	s2,48(sp)
    800019e6:	f44e                	sd	s3,40(sp)
    800019e8:	f052                	sd	s4,32(sp)
    800019ea:	ec56                	sd	s5,24(sp)
    800019ec:	e85a                	sd	s6,16(sp)
    800019ee:	e45e                	sd	s7,8(sp)
    800019f0:	00054703          	lbu	a4,0(a0)
    800019f4:	4795                	li	a5,5
    800019f6:	02f70263          	beq	a4,a5,80001a1a <OSFlagPost+0x3e>
    800019fa:	4785                	li	a5,1
    800019fc:	00f68023          	sb	a5,0(a3)
    80001a00:	4401                	li	s0,0
    80001a02:	8522                	mv	a0,s0
    80001a04:	60a6                	ld	ra,72(sp)
    80001a06:	6406                	ld	s0,64(sp)
    80001a08:	74e2                	ld	s1,56(sp)
    80001a0a:	7942                	ld	s2,48(sp)
    80001a0c:	79a2                	ld	s3,40(sp)
    80001a0e:	7a02                	ld	s4,32(sp)
    80001a10:	6ae2                	ld	s5,24(sp)
    80001a12:	6b42                	ld	s6,16(sp)
    80001a14:	6ba2                	ld	s7,8(sp)
    80001a16:	6161                	addi	sp,sp,80
    80001a18:	8082                	ret
    80001a1a:	8936                	mv	s2,a3
    80001a1c:	89b2                	mv	s3,a2
    80001a1e:	842e                	mv	s0,a1
    80001a20:	84aa                	mv	s1,a0
    80001a22:	4de030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001a26:	8b2a                	mv	s6,a0
    80001a28:	04098f63          	beqz	s3,80001a86 <OSFlagPost+0xaa>
    80001a2c:	4785                	li	a5,1
    80001a2e:	0af99b63          	bne	s3,a5,80001ae4 <OSFlagPost+0x108>
    80001a32:	0104d583          	lhu	a1,16(s1)
    80001a36:	8dc1                	or	a1,a1,s0
    80001a38:	00b49823          	sh	a1,16(s1)
    80001a3c:	6480                	ld	s0,8(s1)
    80001a3e:	c85d                	beqz	s0,80001af4 <OSFlagPost+0x118>
    80001a40:	4a81                	li	s5,0
    80001a42:	4985                	li	s3,1
    80001a44:	4a09                	li	s4,2
    80001a46:	4b8d                	li	s7,3
    80001a48:	02244783          	lbu	a5,34(s0)
    80001a4c:	05378563          	beq	a5,s3,80001a96 <OSFlagPost+0xba>
    80001a50:	c3d9                	beqz	a5,80001ad6 <OSFlagPost+0xfa>
    80001a52:	07478a63          	beq	a5,s4,80001ac6 <OSFlagPost+0xea>
    80001a56:	05779f63          	bne	a5,s7,80001ab4 <OSFlagPost+0xd8>
    80001a5a:	0104d583          	lhu	a1,16(s1)
    80001a5e:	02045783          	lhu	a5,32(s0)
    80001a62:	8dfd                	and	a1,a1,a5
    80001a64:	e1a9                	bnez	a1,80001aa6 <OSFlagPost+0xca>
    80001a66:	6000                	ld	s0,0(s0)
    80001a68:	f065                	bnez	s0,80001a48 <OSFlagPost+0x6c>
    80001a6a:	855a                	mv	a0,s6
    80001a6c:	49e030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001a70:	080a9663          	bnez	s5,80001afc <OSFlagPost+0x120>
    80001a74:	48c030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001a78:	0104d403          	lhu	s0,16(s1)
    80001a7c:	48e030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001a80:	00090023          	sb	zero,0(s2)
    80001a84:	bfbd                	j	80001a02 <OSFlagPost+0x26>
    80001a86:	0104d783          	lhu	a5,16(s1)
    80001a8a:	fff44593          	not	a1,s0
    80001a8e:	8dfd                	and	a1,a1,a5
    80001a90:	00b49823          	sh	a1,16(s1)
    80001a94:	b765                	j	80001a3c <OSFlagPost+0x60>
    80001a96:	0104d583          	lhu	a1,16(s1)
    80001a9a:	02045783          	lhu	a5,32(s0)
    80001a9e:	fff5c593          	not	a1,a1
    80001aa2:	8dfd                	and	a1,a1,a5
    80001aa4:	d1e9                	beqz	a1,80001a66 <OSFlagPost+0x8a>
    80001aa6:	8522                	mv	a0,s0
    80001aa8:	813fe0ef          	jal	ra,800002ba <OS_FlagTaskRdy>
    80001aac:	fb351de3          	bne	a0,s3,80001a66 <OSFlagPost+0x8a>
    80001ab0:	4a85                	li	s5,1
    80001ab2:	bf55                	j	80001a66 <OSFlagPost+0x8a>
    80001ab4:	855a                	mv	a0,s6
    80001ab6:	454030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001aba:	06f00793          	li	a5,111
    80001abe:	00f90023          	sb	a5,0(s2)
    80001ac2:	4401                	li	s0,0
    80001ac4:	bf3d                	j	80001a02 <OSFlagPost+0x26>
    80001ac6:	02045583          	lhu	a1,32(s0)
    80001aca:	0104d783          	lhu	a5,16(s1)
    80001ace:	8fed                	and	a5,a5,a1
    80001ad0:	f8f59be3          	bne	a1,a5,80001a66 <OSFlagPost+0x8a>
    80001ad4:	bfc9                	j	80001aa6 <OSFlagPost+0xca>
    80001ad6:	02045583          	lhu	a1,32(s0)
    80001ada:	0104d783          	lhu	a5,16(s1)
    80001ade:	8fed                	and	a5,a5,a1
    80001ae0:	f3d9                	bnez	a5,80001a66 <OSFlagPost+0x8a>
    80001ae2:	b7d1                	j	80001aa6 <OSFlagPost+0xca>
    80001ae4:	426030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001ae8:	07100793          	li	a5,113
    80001aec:	00f90023          	sb	a5,0(s2)
    80001af0:	4401                	li	s0,0
    80001af2:	bf01                	j	80001a02 <OSFlagPost+0x26>
    80001af4:	855a                	mv	a0,s6
    80001af6:	414030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001afa:	bfad                	j	80001a74 <OSFlagPost+0x98>
    80001afc:	86eff0ef          	jal	ra,80000b6a <OS_Sched>
    80001b00:	bf95                	j	80001a74 <OSFlagPost+0x98>

0000000080001b02 <OSFlagQuery>:
    80001b02:	1101                	addi	sp,sp,-32
    80001b04:	ec06                	sd	ra,24(sp)
    80001b06:	e822                	sd	s0,16(sp)
    80001b08:	e426                	sd	s1,8(sp)
    80001b0a:	00054703          	lbu	a4,0(a0)
    80001b0e:	4795                	li	a5,5
    80001b10:	00f70c63          	beq	a4,a5,80001b28 <OSFlagQuery+0x26>
    80001b14:	4401                	li	s0,0
    80001b16:	8522                	mv	a0,s0
    80001b18:	60e2                	ld	ra,24(sp)
    80001b1a:	6442                	ld	s0,16(sp)
    80001b1c:	4785                	li	a5,1
    80001b1e:	00f58023          	sb	a5,0(a1)
    80001b22:	64a2                	ld	s1,8(sp)
    80001b24:	6105                	addi	sp,sp,32
    80001b26:	8082                	ret
    80001b28:	842a                	mv	s0,a0
    80001b2a:	84ae                	mv	s1,a1
    80001b2c:	3d4030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001b30:	01045403          	lhu	s0,16(s0)
    80001b34:	3d6030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001b38:	00048023          	sb	zero,0(s1)
    80001b3c:	8522                	mv	a0,s0
    80001b3e:	60e2                	ld	ra,24(sp)
    80001b40:	6442                	ld	s0,16(sp)
    80001b42:	64a2                	ld	s1,8(sp)
    80001b44:	6105                	addi	sp,sp,32
    80001b46:	8082                	ret

0000000080001b48 <OS_FlagInit>:
    80001b48:	0007f697          	auipc	a3,0x7f
    80001b4c:	92068693          	addi	a3,a3,-1760 # 80080468 <OSFlagTbl>
    80001b50:	87b6                	mv	a5,a3
    80001b52:	0007f717          	auipc	a4,0x7f
    80001b56:	9b670713          	addi	a4,a4,-1610 # 80080508 <OSTmrTbl>
    80001b5a:	0785                	addi	a5,a5,1
    80001b5c:	fe078fa3          	sb	zero,-1(a5)
    80001b60:	fee79de3          	bne	a5,a4,80001b5a <OS_FlagInit+0x12>
    80001b64:	0007f717          	auipc	a4,0x7f
    80001b68:	90070223          	sb	zero,-1788(a4) # 80080468 <OSFlagTbl>
    80001b6c:	0007e797          	auipc	a5,0x7e
    80001b70:	6f478793          	addi	a5,a5,1780 # 80080260 <OSUnMapTbl+0x260>
    80001b74:	0007f717          	auipc	a4,0x7f
    80001b78:	91470713          	addi	a4,a4,-1772 # 80080488 <OSFlagTbl+0x20>
    80001b7c:	0007f617          	auipc	a2,0x7f
    80001b80:	8ee63a23          	sd	a4,-1804(a2) # 80080470 <OSFlagTbl+0x8>
    80001b84:	0007f717          	auipc	a4,0x7f
    80001b88:	8ef73e23          	sd	a5,-1796(a4) # 80080480 <OSFlagTbl+0x18>
    80001b8c:	0007f717          	auipc	a4,0x7f
    80001b90:	8e070e23          	sb	zero,-1796(a4) # 80080488 <OSFlagTbl+0x20>
    80001b94:	0007f717          	auipc	a4,0x7f
    80001b98:	91470713          	addi	a4,a4,-1772 # 800804a8 <OSFlagTbl+0x40>
    80001b9c:	0007f617          	auipc	a2,0x7f
    80001ba0:	8ee63a23          	sd	a4,-1804(a2) # 80080490 <OSFlagTbl+0x28>
    80001ba4:	0007f717          	auipc	a4,0x7f
    80001ba8:	8ef73e23          	sd	a5,-1796(a4) # 800804a0 <OSFlagTbl+0x38>
    80001bac:	0007f717          	auipc	a4,0x7f
    80001bb0:	8e070e23          	sb	zero,-1796(a4) # 800804a8 <OSFlagTbl+0x40>
    80001bb4:	0007f717          	auipc	a4,0x7f
    80001bb8:	91470713          	addi	a4,a4,-1772 # 800804c8 <OSFlagTbl+0x60>
    80001bbc:	0007f617          	auipc	a2,0x7f
    80001bc0:	8ee63a23          	sd	a4,-1804(a2) # 800804b0 <OSFlagTbl+0x48>
    80001bc4:	0007f717          	auipc	a4,0x7f
    80001bc8:	8ef73e23          	sd	a5,-1796(a4) # 800804c0 <OSFlagTbl+0x58>
    80001bcc:	0007f717          	auipc	a4,0x7f
    80001bd0:	8e070e23          	sb	zero,-1796(a4) # 800804c8 <OSFlagTbl+0x60>
    80001bd4:	0007f717          	auipc	a4,0x7f
    80001bd8:	91470713          	addi	a4,a4,-1772 # 800804e8 <OSFlagTbl+0x80>
    80001bdc:	0007f617          	auipc	a2,0x7f
    80001be0:	8ee63a23          	sd	a4,-1804(a2) # 800804d0 <OSFlagTbl+0x68>
    80001be4:	0007f717          	auipc	a4,0x7f
    80001be8:	8ef73e23          	sd	a5,-1796(a4) # 800804e0 <OSFlagTbl+0x78>
    80001bec:	0007f717          	auipc	a4,0x7f
    80001bf0:	90f73a23          	sd	a5,-1772(a4) # 80080500 <OSFlagTbl+0x98>
    80001bf4:	0007f717          	auipc	a4,0x7f
    80001bf8:	8e070a23          	sb	zero,-1804(a4) # 800804e8 <OSFlagTbl+0x80>
    80001bfc:	0007f717          	auipc	a4,0x7f
    80001c00:	8e073a23          	sd	zero,-1804(a4) # 800804f0 <OSFlagTbl+0x88>
    80001c04:	00081797          	auipc	a5,0x81
    80001c08:	98d7b223          	sd	a3,-1660(a5) # 80082588 <OSFlagFreeList>
    80001c0c:	8082                	ret

0000000080001c0e <OS_FlagUnlink>:
    80001c0e:	6518                	ld	a4,8(a0)
    80001c10:	611c                	ld	a5,0(a0)
    80001c12:	cb01                	beqz	a4,80001c22 <OS_FlagUnlink+0x14>
    80001c14:	e31c                	sd	a5,0(a4)
    80001c16:	c391                	beqz	a5,80001c1a <OS_FlagUnlink+0xc>
    80001c18:	e798                	sd	a4,8(a5)
    80001c1a:	691c                	ld	a5,16(a0)
    80001c1c:	0407b423          	sd	zero,72(a5)
    80001c20:	8082                	ret
    80001c22:	6d18                	ld	a4,24(a0)
    80001c24:	e71c                	sd	a5,8(a4)
    80001c26:	dbf5                	beqz	a5,80001c1a <OS_FlagUnlink+0xc>
    80001c28:	0007b423          	sd	zero,8(a5)
    80001c2c:	691c                	ld	a5,16(a0)
    80001c2e:	0407b423          	sd	zero,72(a5)
    80001c32:	8082                	ret

0000000080001c34 <OSMboxAccept>:
    80001c34:	1101                	addi	sp,sp,-32
    80001c36:	e426                	sd	s1,8(sp)
    80001c38:	ec06                	sd	ra,24(sp)
    80001c3a:	e822                	sd	s0,16(sp)
    80001c3c:	00054703          	lbu	a4,0(a0)
    80001c40:	4785                	li	a5,1
    80001c42:	4481                	li	s1,0
    80001c44:	00f71a63          	bne	a4,a5,80001c58 <OSMboxAccept+0x24>
    80001c48:	842a                	mv	s0,a0
    80001c4a:	2b6030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001c4e:	6404                	ld	s1,8(s0)
    80001c50:	00043423          	sd	zero,8(s0)
    80001c54:	2b6030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001c58:	60e2                	ld	ra,24(sp)
    80001c5a:	6442                	ld	s0,16(sp)
    80001c5c:	8526                	mv	a0,s1
    80001c5e:	64a2                	ld	s1,8(sp)
    80001c60:	6105                	addi	sp,sp,32
    80001c62:	8082                	ret

0000000080001c64 <OSMboxCreate>:
    80001c64:	1101                	addi	sp,sp,-32
    80001c66:	ec06                	sd	ra,24(sp)
    80001c68:	e822                	sd	s0,16(sp)
    80001c6a:	e426                	sd	s1,8(sp)
    80001c6c:	0007f797          	auipc	a5,0x7f
    80001c70:	70c7c783          	lbu	a5,1804(a5) # 80081378 <OSIntNesting>
    80001c74:	efb1                	bnez	a5,80001cd0 <OSMboxCreate+0x6c>
    80001c76:	84aa                	mv	s1,a0
    80001c78:	288030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001c7c:	0007f797          	auipc	a5,0x7f
    80001c80:	6f478793          	addi	a5,a5,1780 # 80081370 <OSEventFreeList>
    80001c84:	6380                	ld	s0,0(a5)
    80001c86:	cc0d                	beqz	s0,80001cc0 <OSMboxCreate+0x5c>
    80001c88:	641c                	ld	a5,8(s0)
    80001c8a:	0007f717          	auipc	a4,0x7f
    80001c8e:	6ef73323          	sd	a5,1766(a4) # 80081370 <OSEventFreeList>
    80001c92:	278030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001c96:	4785                	li	a5,1
    80001c98:	00f40023          	sb	a5,0(s0)
    80001c9c:	0007e797          	auipc	a5,0x7e
    80001ca0:	5c478793          	addi	a5,a5,1476 # 80080260 <OSUnMapTbl+0x260>
    80001ca4:	e404                	sd	s1,8(s0)
    80001ca6:	f01c                	sd	a5,32(s0)
    80001ca8:	00043823          	sd	zero,16(s0)
    80001cac:	00041c23          	sh	zero,24(s0)
    80001cb0:	00040d23          	sb	zero,26(s0)
    80001cb4:	8522                	mv	a0,s0
    80001cb6:	60e2                	ld	ra,24(sp)
    80001cb8:	6442                	ld	s0,16(sp)
    80001cba:	64a2                	ld	s1,8(sp)
    80001cbc:	6105                	addi	sp,sp,32
    80001cbe:	8082                	ret
    80001cc0:	24a030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001cc4:	8522                	mv	a0,s0
    80001cc6:	60e2                	ld	ra,24(sp)
    80001cc8:	6442                	ld	s0,16(sp)
    80001cca:	64a2                	ld	s1,8(sp)
    80001ccc:	6105                	addi	sp,sp,32
    80001cce:	8082                	ret
    80001cd0:	4401                	li	s0,0
    80001cd2:	8522                	mv	a0,s0
    80001cd4:	60e2                	ld	ra,24(sp)
    80001cd6:	6442                	ld	s0,16(sp)
    80001cd8:	64a2                	ld	s1,8(sp)
    80001cda:	6105                	addi	sp,sp,32
    80001cdc:	8082                	ret

0000000080001cde <OSMboxDel>:
    80001cde:	7179                	addi	sp,sp,-48
    80001ce0:	f406                	sd	ra,40(sp)
    80001ce2:	f022                	sd	s0,32(sp)
    80001ce4:	ec26                	sd	s1,24(sp)
    80001ce6:	e84a                	sd	s2,16(sp)
    80001ce8:	e44e                	sd	s3,8(sp)
    80001cea:	e052                	sd	s4,0(sp)
    80001cec:	00054483          	lbu	s1,0(a0)
    80001cf0:	4785                	li	a5,1
    80001cf2:	00f48c63          	beq	s1,a5,80001d0a <OSMboxDel+0x2c>
    80001cf6:	00f60023          	sb	a5,0(a2)
    80001cfa:	70a2                	ld	ra,40(sp)
    80001cfc:	7402                	ld	s0,32(sp)
    80001cfe:	64e2                	ld	s1,24(sp)
    80001d00:	6942                	ld	s2,16(sp)
    80001d02:	69a2                	ld	s3,8(sp)
    80001d04:	6a02                	ld	s4,0(sp)
    80001d06:	6145                	addi	sp,sp,48
    80001d08:	8082                	ret
    80001d0a:	0007f797          	auipc	a5,0x7f
    80001d0e:	66e7c783          	lbu	a5,1646(a5) # 80081378 <OSIntNesting>
    80001d12:	c399                	beqz	a5,80001d18 <OSMboxDel+0x3a>
    80001d14:	47bd                	li	a5,15
    80001d16:	b7c5                	j	80001cf6 <OSMboxDel+0x18>
    80001d18:	842a                	mv	s0,a0
    80001d1a:	8932                	mv	s2,a2
    80001d1c:	89ae                	mv	s3,a1
    80001d1e:	1e2030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001d22:	01244783          	lbu	a5,18(s0)
    80001d26:	8a2a                	mv	s4,a0
    80001d28:	cb99                	beqz	a5,80001d3e <OSMboxDel+0x60>
    80001d2a:	06099263          	bnez	s3,80001d8e <OSMboxDel+0xb0>
    80001d2e:	1dc030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001d32:	04900793          	li	a5,73
    80001d36:	00f90023          	sb	a5,0(s2)
    80001d3a:	8522                	mv	a0,s0
    80001d3c:	bf7d                	j	80001cfa <OSMboxDel+0x1c>
    80001d3e:	06098863          	beqz	s3,80001dae <OSMboxDel+0xd0>
    80001d42:	02999e63          	bne	s3,s1,80001d7e <OSMboxDel+0xa0>
    80001d46:	4481                	li	s1,0
    80001d48:	00040023          	sb	zero,0(s0)
    80001d4c:	0007f797          	auipc	a5,0x7f
    80001d50:	62478793          	addi	a5,a5,1572 # 80081370 <OSEventFreeList>
    80001d54:	639c                	ld	a5,0(a5)
    80001d56:	0007e717          	auipc	a4,0x7e
    80001d5a:	50a70713          	addi	a4,a4,1290 # 80080260 <OSUnMapTbl+0x260>
    80001d5e:	f018                	sd	a4,32(s0)
    80001d60:	e41c                	sd	a5,8(s0)
    80001d62:	00041823          	sh	zero,16(s0)
    80001d66:	8552                	mv	a0,s4
    80001d68:	0007f797          	auipc	a5,0x7f
    80001d6c:	6087b423          	sd	s0,1544(a5) # 80081370 <OSEventFreeList>
    80001d70:	19a030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001d74:	e895                	bnez	s1,80001da8 <OSMboxDel+0xca>
    80001d76:	00090023          	sb	zero,0(s2)
    80001d7a:	4501                	li	a0,0
    80001d7c:	bfbd                	j	80001cfa <OSMboxDel+0x1c>
    80001d7e:	8552                	mv	a0,s4
    80001d80:	18a030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001d84:	479d                	li	a5,7
    80001d86:	00f90023          	sb	a5,0(s2)
    80001d8a:	8522                	mv	a0,s0
    80001d8c:	b7bd                	j	80001cfa <OSMboxDel+0x1c>
    80001d8e:	fe9998e3          	bne	s3,s1,80001d7e <OSMboxDel+0xa0>
    80001d92:	4485                	li	s1,1
    80001d94:	4681                	li	a3,0
    80001d96:	4609                	li	a2,2
    80001d98:	4581                	li	a1,0
    80001d9a:	8522                	mv	a0,s0
    80001d9c:	b25fe0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80001da0:	01244783          	lbu	a5,18(s0)
    80001da4:	fbe5                	bnez	a5,80001d94 <OSMboxDel+0xb6>
    80001da6:	b74d                	j	80001d48 <OSMboxDel+0x6a>
    80001da8:	dc3fe0ef          	jal	ra,80000b6a <OS_Sched>
    80001dac:	b7e9                	j	80001d76 <OSMboxDel+0x98>
    80001dae:	00040023          	sb	zero,0(s0)
    80001db2:	0007f797          	auipc	a5,0x7f
    80001db6:	5be78793          	addi	a5,a5,1470 # 80081370 <OSEventFreeList>
    80001dba:	639c                	ld	a5,0(a5)
    80001dbc:	0007e717          	auipc	a4,0x7e
    80001dc0:	4a470713          	addi	a4,a4,1188 # 80080260 <OSUnMapTbl+0x260>
    80001dc4:	f018                	sd	a4,32(s0)
    80001dc6:	e41c                	sd	a5,8(s0)
    80001dc8:	00041823          	sh	zero,16(s0)
    80001dcc:	0007f797          	auipc	a5,0x7f
    80001dd0:	5a87b223          	sd	s0,1444(a5) # 80081370 <OSEventFreeList>
    80001dd4:	136030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001dd8:	4501                	li	a0,0
    80001dda:	00090023          	sb	zero,0(s2)
    80001dde:	bf31                	j	80001cfa <OSMboxDel+0x1c>

0000000080001de0 <OSMboxPend>:
    80001de0:	7139                	addi	sp,sp,-64
    80001de2:	fc06                	sd	ra,56(sp)
    80001de4:	f822                	sd	s0,48(sp)
    80001de6:	f426                	sd	s1,40(sp)
    80001de8:	f04a                	sd	s2,32(sp)
    80001dea:	ec4e                	sd	s3,24(sp)
    80001dec:	e852                	sd	s4,16(sp)
    80001dee:	e456                	sd	s5,8(sp)
    80001df0:	00054703          	lbu	a4,0(a0)
    80001df4:	4785                	li	a5,1
    80001df6:	0af71763          	bne	a4,a5,80001ea4 <OSMboxPend+0xc4>
    80001dfa:	0007f797          	auipc	a5,0x7f
    80001dfe:	57e7c783          	lbu	a5,1406(a5) # 80081378 <OSIntNesting>
    80001e02:	ebcd                	bnez	a5,80001eb4 <OSMboxPend+0xd4>
    80001e04:	0007e797          	auipc	a5,0x7e
    80001e08:	6447c783          	lbu	a5,1604(a5) # 80080448 <OSLockNesting>
    80001e0c:	ebd9                	bnez	a5,80001ea2 <OSMboxPend+0xc2>
    80001e0e:	842a                	mv	s0,a0
    80001e10:	89b2                	mv	s3,a2
    80001e12:	892e                	mv	s2,a1
    80001e14:	0ec030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001e18:	6404                	ld	s1,8(s0)
    80001e1a:	8aaa                	mv	s5,a0
    80001e1c:	c08d                	beqz	s1,80001e3e <OSMboxPend+0x5e>
    80001e1e:	00043423          	sd	zero,8(s0)
    80001e22:	0e8030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001e26:	00098023          	sb	zero,0(s3)
    80001e2a:	70e2                	ld	ra,56(sp)
    80001e2c:	7442                	ld	s0,48(sp)
    80001e2e:	8526                	mv	a0,s1
    80001e30:	7902                	ld	s2,32(sp)
    80001e32:	74a2                	ld	s1,40(sp)
    80001e34:	69e2                	ld	s3,24(sp)
    80001e36:	6a42                	ld	s4,16(sp)
    80001e38:	6aa2                	ld	s5,8(sp)
    80001e3a:	6121                	addi	sp,sp,64
    80001e3c:	8082                	ret
    80001e3e:	0007fa17          	auipc	s4,0x7f
    80001e42:	542a0a13          	addi	s4,s4,1346 # 80081380 <OSTCBCur>
    80001e46:	000a3783          	ld	a5,0(s4)
    80001e4a:	8522                	mv	a0,s0
    80001e4c:	0587c703          	lbu	a4,88(a5)
    80001e50:	04078ca3          	sb	zero,89(a5)
    80001e54:	0527aa23          	sw	s2,84(a5)
    80001e58:	00276713          	ori	a4,a4,2
    80001e5c:	04e78c23          	sb	a4,88(a5)
    80001e60:	b63fe0ef          	jal	ra,800009c2 <OS_EventTaskWait>
    80001e64:	8556                	mv	a0,s5
    80001e66:	0a4030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001e6a:	d01fe0ef          	jal	ra,80000b6a <OS_Sched>
    80001e6e:	092030ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001e72:	000a3783          	ld	a5,0(s4)
    80001e76:	0597c703          	lbu	a4,89(a5)
    80001e7a:	cb0d                	beqz	a4,80001eac <OSMboxPend+0xcc>
    80001e7c:	4689                	li	a3,2
    80001e7e:	04d71063          	bne	a4,a3,80001ebe <OSMboxPend+0xde>
    80001e82:	47b9                	li	a5,14
    80001e84:	00f98023          	sb	a5,0(s3)
    80001e88:	000a3783          	ld	a5,0(s4)
    80001e8c:	04079c23          	sh	zero,88(a5)
    80001e90:	0207b823          	sd	zero,48(a5)
    80001e94:	0207bc23          	sd	zero,56(a5)
    80001e98:	0407b023          	sd	zero,64(a5)
    80001e9c:	06e030ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001ea0:	b769                	j	80001e2a <OSMboxPend+0x4a>
    80001ea2:	47b5                	li	a5,13
    80001ea4:	00f60023          	sb	a5,0(a2)
    80001ea8:	4481                	li	s1,0
    80001eaa:	b741                	j	80001e2a <OSMboxPend+0x4a>
    80001eac:	63a4                	ld	s1,64(a5)
    80001eae:	00098023          	sb	zero,0(s3)
    80001eb2:	bfd9                	j	80001e88 <OSMboxPend+0xa8>
    80001eb4:	4789                	li	a5,2
    80001eb6:	00f60023          	sb	a5,0(a2)
    80001eba:	4481                	li	s1,0
    80001ebc:	b7bd                	j	80001e2a <OSMboxPend+0x4a>
    80001ebe:	05c7c683          	lbu	a3,92(a5)
    80001ec2:	05d7c703          	lbu	a4,93(a5)
    80001ec6:	96a2                	add	a3,a3,s0
    80001ec8:	0136c603          	lbu	a2,19(a3)
    80001ecc:	fff74713          	not	a4,a4
    80001ed0:	8f71                	and	a4,a4,a2
    80001ed2:	00e689a3          	sb	a4,19(a3)
    80001ed6:	c709                	beqz	a4,80001ee0 <OSMboxPend+0x100>
    80001ed8:	47a9                	li	a5,10
    80001eda:	00f98023          	sb	a5,0(s3)
    80001ede:	b76d                	j	80001e88 <OSMboxPend+0xa8>
    80001ee0:	05e7c783          	lbu	a5,94(a5)
    80001ee4:	01244703          	lbu	a4,18(s0)
    80001ee8:	fff7c793          	not	a5,a5
    80001eec:	8ff9                	and	a5,a5,a4
    80001eee:	00f40923          	sb	a5,18(s0)
    80001ef2:	b7dd                	j	80001ed8 <OSMboxPend+0xf8>

0000000080001ef4 <OSMboxPendAbort>:
    80001ef4:	7179                	addi	sp,sp,-48
    80001ef6:	f406                	sd	ra,40(sp)
    80001ef8:	f022                	sd	s0,32(sp)
    80001efa:	ec26                	sd	s1,24(sp)
    80001efc:	e84a                	sd	s2,16(sp)
    80001efe:	e44e                	sd	s3,8(sp)
    80001f00:	e052                	sd	s4,0(sp)
    80001f02:	00054403          	lbu	s0,0(a0)
    80001f06:	4785                	li	a5,1
    80001f08:	00f40e63          	beq	s0,a5,80001f24 <OSMboxPendAbort+0x30>
    80001f0c:	00f60023          	sb	a5,0(a2)
    80001f10:	4401                	li	s0,0
    80001f12:	8522                	mv	a0,s0
    80001f14:	70a2                	ld	ra,40(sp)
    80001f16:	7402                	ld	s0,32(sp)
    80001f18:	64e2                	ld	s1,24(sp)
    80001f1a:	6942                	ld	s2,16(sp)
    80001f1c:	69a2                	ld	s3,8(sp)
    80001f1e:	6a02                	ld	s4,0(sp)
    80001f20:	6145                	addi	sp,sp,48
    80001f22:	8082                	ret
    80001f24:	84aa                	mv	s1,a0
    80001f26:	8932                	mv	s2,a2
    80001f28:	89ae                	mv	s3,a1
    80001f2a:	7d7020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001f2e:	0124c783          	lbu	a5,18(s1)
    80001f32:	8a2a                	mv	s4,a0
    80001f34:	cb8d                	beqz	a5,80001f66 <OSMboxPendAbort+0x72>
    80001f36:	02899e63          	bne	s3,s0,80001f72 <OSMboxPendAbort+0x7e>
    80001f3a:	4401                	li	s0,0
    80001f3c:	4689                	li	a3,2
    80001f3e:	4609                	li	a2,2
    80001f40:	4581                	li	a1,0
    80001f42:	8526                	mv	a0,s1
    80001f44:	97dfe0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80001f48:	0124c783          	lbu	a5,18(s1)
    80001f4c:	2405                	addiw	s0,s0,1
    80001f4e:	0ff47413          	andi	s0,s0,255
    80001f52:	f7ed                	bnez	a5,80001f3c <OSMboxPendAbort+0x48>
    80001f54:	8552                	mv	a0,s4
    80001f56:	7b5020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001f5a:	c11fe0ef          	jal	ra,80000b6a <OS_Sched>
    80001f5e:	47b9                	li	a5,14
    80001f60:	00f90023          	sb	a5,0(s2)
    80001f64:	b77d                	j	80001f12 <OSMboxPendAbort+0x1e>
    80001f66:	7a5020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001f6a:	4401                	li	s0,0
    80001f6c:	00090023          	sb	zero,0(s2)
    80001f70:	b74d                	j	80001f12 <OSMboxPendAbort+0x1e>
    80001f72:	4689                	li	a3,2
    80001f74:	4609                	li	a2,2
    80001f76:	4581                	li	a1,0
    80001f78:	8526                	mv	a0,s1
    80001f7a:	947fe0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80001f7e:	bfd9                	j	80001f54 <OSMboxPendAbort+0x60>

0000000080001f80 <OSMboxPost>:
    80001f80:	00054703          	lbu	a4,0(a0)
    80001f84:	4785                	li	a5,1
    80001f86:	00f70463          	beq	a4,a5,80001f8e <OSMboxPost+0xe>
    80001f8a:	4505                	li	a0,1
    80001f8c:	8082                	ret
    80001f8e:	1101                	addi	sp,sp,-32
    80001f90:	e822                	sd	s0,16(sp)
    80001f92:	e426                	sd	s1,8(sp)
    80001f94:	e04a                	sd	s2,0(sp)
    80001f96:	842a                	mv	s0,a0
    80001f98:	ec06                	sd	ra,24(sp)
    80001f9a:	84ae                	mv	s1,a1
    80001f9c:	765020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80001fa0:	01244783          	lbu	a5,18(s0)
    80001fa4:	892a                	mv	s2,a0
    80001fa6:	ef81                	bnez	a5,80001fbe <OSMboxPost+0x3e>
    80001fa8:	641c                	ld	a5,8(s0)
    80001faa:	c79d                	beqz	a5,80001fd8 <OSMboxPost+0x58>
    80001fac:	75f020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001fb0:	4551                	li	a0,20
    80001fb2:	60e2                	ld	ra,24(sp)
    80001fb4:	6442                	ld	s0,16(sp)
    80001fb6:	64a2                	ld	s1,8(sp)
    80001fb8:	6902                	ld	s2,0(sp)
    80001fba:	6105                	addi	sp,sp,32
    80001fbc:	8082                	ret
    80001fbe:	4681                	li	a3,0
    80001fc0:	4609                	li	a2,2
    80001fc2:	85a6                	mv	a1,s1
    80001fc4:	8522                	mv	a0,s0
    80001fc6:	8fbfe0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80001fca:	854a                	mv	a0,s2
    80001fcc:	73f020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001fd0:	b9bfe0ef          	jal	ra,80000b6a <OS_Sched>
    80001fd4:	4501                	li	a0,0
    80001fd6:	bff1                	j	80001fb2 <OSMboxPost+0x32>
    80001fd8:	e404                	sd	s1,8(s0)
    80001fda:	731020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80001fde:	4501                	li	a0,0
    80001fe0:	bfc9                	j	80001fb2 <OSMboxPost+0x32>

0000000080001fe2 <OSMboxPostOpt>:
    80001fe2:	00054703          	lbu	a4,0(a0)
    80001fe6:	4785                	li	a5,1
    80001fe8:	00f70463          	beq	a4,a5,80001ff0 <OSMboxPostOpt+0xe>
    80001fec:	4505                	li	a0,1
    80001fee:	8082                	ret
    80001ff0:	7139                	addi	sp,sp,-64
    80001ff2:	f822                	sd	s0,48(sp)
    80001ff4:	f426                	sd	s1,40(sp)
    80001ff6:	f04a                	sd	s2,32(sp)
    80001ff8:	ec4e                	sd	s3,24(sp)
    80001ffa:	842a                	mv	s0,a0
    80001ffc:	fc06                	sd	ra,56(sp)
    80001ffe:	8932                	mv	s2,a2
    80002000:	84ae                	mv	s1,a1
    80002002:	6ff020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002006:	01244783          	lbu	a5,18(s0)
    8000200a:	89aa                	mv	s3,a0
    8000200c:	ef89                	bnez	a5,80002026 <OSMboxPostOpt+0x44>
    8000200e:	641c                	ld	a5,8(s0)
    80002010:	c3b9                	beqz	a5,80002056 <OSMboxPostOpt+0x74>
    80002012:	6f9020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002016:	4551                	li	a0,20
    80002018:	70e2                	ld	ra,56(sp)
    8000201a:	7442                	ld	s0,48(sp)
    8000201c:	74a2                	ld	s1,40(sp)
    8000201e:	7902                	ld	s2,32(sp)
    80002020:	69e2                	ld	s3,24(sp)
    80002022:	6121                	addi	sp,sp,64
    80002024:	8082                	ret
    80002026:	00197793          	andi	a5,s2,1
    8000202a:	cb9d                	beqz	a5,80002060 <OSMboxPostOpt+0x7e>
    8000202c:	4681                	li	a3,0
    8000202e:	4609                	li	a2,2
    80002030:	85a6                	mv	a1,s1
    80002032:	8522                	mv	a0,s0
    80002034:	88dfe0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80002038:	01244783          	lbu	a5,18(s0)
    8000203c:	fbe5                	bnez	a5,8000202c <OSMboxPostOpt+0x4a>
    8000203e:	854e                	mv	a0,s3
    80002040:	6cb020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002044:	00497613          	andi	a2,s2,4
    80002048:	4501                	li	a0,0
    8000204a:	f679                	bnez	a2,80002018 <OSMboxPostOpt+0x36>
    8000204c:	e42a                	sd	a0,8(sp)
    8000204e:	b1dfe0ef          	jal	ra,80000b6a <OS_Sched>
    80002052:	6522                	ld	a0,8(sp)
    80002054:	b7d1                	j	80002018 <OSMboxPostOpt+0x36>
    80002056:	e404                	sd	s1,8(s0)
    80002058:	6b3020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000205c:	4501                	li	a0,0
    8000205e:	bf6d                	j	80002018 <OSMboxPostOpt+0x36>
    80002060:	4681                	li	a3,0
    80002062:	4609                	li	a2,2
    80002064:	85a6                	mv	a1,s1
    80002066:	8522                	mv	a0,s0
    80002068:	859fe0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    8000206c:	bfc9                	j	8000203e <OSMboxPostOpt+0x5c>

000000008000206e <OSMboxQuery>:
    8000206e:	00054703          	lbu	a4,0(a0)
    80002072:	4785                	li	a5,1
    80002074:	00f70463          	beq	a4,a5,8000207c <OSMboxQuery+0xe>
    80002078:	4505                	li	a0,1
    8000207a:	8082                	ret
    8000207c:	1101                	addi	sp,sp,-32
    8000207e:	e822                	sd	s0,16(sp)
    80002080:	e426                	sd	s1,8(sp)
    80002082:	842a                	mv	s0,a0
    80002084:	84ae                	mv	s1,a1
    80002086:	ec06                	sd	ra,24(sp)
    80002088:	679020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000208c:	01244683          	lbu	a3,18(s0)
    80002090:	01340793          	addi	a5,s0,19
    80002094:	00848713          	addi	a4,s1,8
    80002098:	00d48823          	sb	a3,16(s1)
    8000209c:	01b40613          	addi	a2,s0,27
    800020a0:	0785                	addi	a5,a5,1
    800020a2:	fff7c683          	lbu	a3,-1(a5)
    800020a6:	0705                	addi	a4,a4,1
    800020a8:	fed70fa3          	sb	a3,-1(a4)
    800020ac:	fef61ae3          	bne	a2,a5,800020a0 <OSMboxQuery+0x32>
    800020b0:	641c                	ld	a5,8(s0)
    800020b2:	e09c                	sd	a5,0(s1)
    800020b4:	657020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800020b8:	60e2                	ld	ra,24(sp)
    800020ba:	6442                	ld	s0,16(sp)
    800020bc:	64a2                	ld	s1,8(sp)
    800020be:	4501                	li	a0,0
    800020c0:	6105                	addi	sp,sp,32
    800020c2:	8082                	ret

00000000800020c4 <OSMemCreate>:
    800020c4:	7179                	addi	sp,sp,-48
    800020c6:	f022                	sd	s0,32(sp)
    800020c8:	ec26                	sd	s1,24(sp)
    800020ca:	e84a                	sd	s2,16(sp)
    800020cc:	e44e                	sd	s3,8(sp)
    800020ce:	e052                	sd	s4,0(sp)
    800020d0:	f406                	sd	ra,40(sp)
    800020d2:	8a2a                	mv	s4,a0
    800020d4:	89ae                	mv	s3,a1
    800020d6:	84b2                	mv	s1,a2
    800020d8:	8936                	mv	s2,a3
    800020da:	627020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800020de:	0007f797          	auipc	a5,0x7f
    800020e2:	daa78793          	addi	a5,a5,-598 # 80080e88 <OSMemFreeList>
    800020e6:	6380                	ld	s0,0(a5)
    800020e8:	c42d                	beqz	s0,80002152 <OSMemCreate+0x8e>
    800020ea:	641c                	ld	a5,8(s0)
    800020ec:	0007f717          	auipc	a4,0x7f
    800020f0:	d8f73e23          	sd	a5,-612(a4) # 80080e88 <OSMemFreeList>
    800020f4:	617020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800020f8:	fff9861b          	addiw	a2,s3,-1
    800020fc:	c235                	beqz	a2,80002160 <OSMemCreate+0x9c>
    800020fe:	02049513          	slli	a0,s1,0x20
    80002102:	9101                	srli	a0,a0,0x20
    80002104:	8752                	mv	a4,s4
    80002106:	4781                	li	a5,0
    80002108:	00a706b3          	add	a3,a4,a0
    8000210c:	e314                	sd	a3,0(a4)
    8000210e:	2785                	addiw	a5,a5,1
    80002110:	8736                	mv	a4,a3
    80002112:	fef61be3          	bne	a2,a5,80002108 <OSMemCreate+0x44>
    80002116:	ffe9879b          	addiw	a5,s3,-2
    8000211a:	1782                	slli	a5,a5,0x20
    8000211c:	9381                	srli	a5,a5,0x20
    8000211e:	0785                	addi	a5,a5,1
    80002120:	02a787b3          	mul	a5,a5,a0
    80002124:	97d2                	add	a5,a5,s4
    80002126:	0007b023          	sd	zero,0(a5)
    8000212a:	01443023          	sd	s4,0(s0)
    8000212e:	01443423          	sd	s4,8(s0)
    80002132:	01342c23          	sw	s3,24(s0)
    80002136:	01342a23          	sw	s3,20(s0)
    8000213a:	c804                	sw	s1,16(s0)
    8000213c:	00090023          	sb	zero,0(s2)
    80002140:	8522                	mv	a0,s0
    80002142:	70a2                	ld	ra,40(sp)
    80002144:	7402                	ld	s0,32(sp)
    80002146:	64e2                	ld	s1,24(sp)
    80002148:	6942                	ld	s2,16(sp)
    8000214a:	69a2                	ld	s3,8(sp)
    8000214c:	6a02                	ld	s4,0(sp)
    8000214e:	6145                	addi	sp,sp,48
    80002150:	8082                	ret
    80002152:	5b9020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002156:	05a00793          	li	a5,90
    8000215a:	00f90023          	sb	a5,0(s2)
    8000215e:	b7cd                	j	80002140 <OSMemCreate+0x7c>
    80002160:	87d2                	mv	a5,s4
    80002162:	b7d1                	j	80002126 <OSMemCreate+0x62>

0000000080002164 <OSMemGet>:
    80002164:	1101                	addi	sp,sp,-32
    80002166:	e822                	sd	s0,16(sp)
    80002168:	e04a                	sd	s2,0(sp)
    8000216a:	842a                	mv	s0,a0
    8000216c:	ec06                	sd	ra,24(sp)
    8000216e:	e426                	sd	s1,8(sp)
    80002170:	892e                	mv	s2,a1
    80002172:	58f020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002176:	4c1c                	lw	a5,24(s0)
    80002178:	c38d                	beqz	a5,8000219a <OSMemGet+0x36>
    8000217a:	6404                	ld	s1,8(s0)
    8000217c:	37fd                	addiw	a5,a5,-1
    8000217e:	6098                	ld	a4,0(s1)
    80002180:	cc1c                	sw	a5,24(s0)
    80002182:	e418                	sd	a4,8(s0)
    80002184:	587020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002188:	00090023          	sb	zero,0(s2)
    8000218c:	60e2                	ld	ra,24(sp)
    8000218e:	6442                	ld	s0,16(sp)
    80002190:	8526                	mv	a0,s1
    80002192:	6902                	ld	s2,0(sp)
    80002194:	64a2                	ld	s1,8(sp)
    80002196:	6105                	addi	sp,sp,32
    80002198:	8082                	ret
    8000219a:	571020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000219e:	05d00793          	li	a5,93
    800021a2:	00f90023          	sb	a5,0(s2)
    800021a6:	4481                	li	s1,0
    800021a8:	b7d5                	j	8000218c <OSMemGet+0x28>

00000000800021aa <OSMemNameGet>:
    800021aa:	7179                	addi	sp,sp,-48
    800021ac:	f022                	sd	s0,32(sp)
    800021ae:	f406                	sd	ra,40(sp)
    800021b0:	ec26                	sd	s1,24(sp)
    800021b2:	e84a                	sd	s2,16(sp)
    800021b4:	e44e                	sd	s3,8(sp)
    800021b6:	0007f417          	auipc	s0,0x7f
    800021ba:	1c244403          	lbu	s0,450(s0) # 80081378 <OSIntNesting>
    800021be:	cc09                	beqz	s0,800021d8 <OSMemNameGet+0x2e>
    800021c0:	4401                	li	s0,0
    800021c2:	8522                	mv	a0,s0
    800021c4:	70a2                	ld	ra,40(sp)
    800021c6:	7402                	ld	s0,32(sp)
    800021c8:	47c5                	li	a5,17
    800021ca:	00f60023          	sb	a5,0(a2)
    800021ce:	64e2                	ld	s1,24(sp)
    800021d0:	6942                	ld	s2,16(sp)
    800021d2:	69a2                	ld	s3,8(sp)
    800021d4:	6145                	addi	sp,sp,48
    800021d6:	8082                	ret
    800021d8:	892e                	mv	s2,a1
    800021da:	89aa                	mv	s3,a0
    800021dc:	84b2                	mv	s1,a2
    800021de:	523020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800021e2:	0209b783          	ld	a5,32(s3)
    800021e6:	00f93023          	sd	a5,0(s2)
    800021ea:	0007c703          	lbu	a4,0(a5)
    800021ee:	cb01                	beqz	a4,800021fe <OSMemNameGet+0x54>
    800021f0:	0785                	addi	a5,a5,1
    800021f2:	0007c703          	lbu	a4,0(a5)
    800021f6:	2405                	addiw	s0,s0,1
    800021f8:	0ff47413          	andi	s0,s0,255
    800021fc:	fb75                	bnez	a4,800021f0 <OSMemNameGet+0x46>
    800021fe:	50d020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002202:	00048023          	sb	zero,0(s1)
    80002206:	8522                	mv	a0,s0
    80002208:	70a2                	ld	ra,40(sp)
    8000220a:	7402                	ld	s0,32(sp)
    8000220c:	64e2                	ld	s1,24(sp)
    8000220e:	6942                	ld	s2,16(sp)
    80002210:	69a2                	ld	s3,8(sp)
    80002212:	6145                	addi	sp,sp,48
    80002214:	8082                	ret

0000000080002216 <OSMemNameSet>:
    80002216:	0007f797          	auipc	a5,0x7f
    8000221a:	1627c783          	lbu	a5,354(a5) # 80081378 <OSIntNesting>
    8000221e:	c789                	beqz	a5,80002228 <OSMemNameSet+0x12>
    80002220:	47c9                	li	a5,18
    80002222:	00f60023          	sb	a5,0(a2)
    80002226:	8082                	ret
    80002228:	1101                	addi	sp,sp,-32
    8000222a:	e426                	sd	s1,8(sp)
    8000222c:	e04a                	sd	s2,0(sp)
    8000222e:	84aa                	mv	s1,a0
    80002230:	892e                	mv	s2,a1
    80002232:	ec06                	sd	ra,24(sp)
    80002234:	e822                	sd	s0,16(sp)
    80002236:	8432                	mv	s0,a2
    80002238:	4c9020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000223c:	0324b023          	sd	s2,32(s1)
    80002240:	4cb020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002244:	00040023          	sb	zero,0(s0)
    80002248:	60e2                	ld	ra,24(sp)
    8000224a:	6442                	ld	s0,16(sp)
    8000224c:	64a2                	ld	s1,8(sp)
    8000224e:	6902                	ld	s2,0(sp)
    80002250:	6105                	addi	sp,sp,32
    80002252:	8082                	ret

0000000080002254 <OSMemPut>:
    80002254:	1101                	addi	sp,sp,-32
    80002256:	e822                	sd	s0,16(sp)
    80002258:	e426                	sd	s1,8(sp)
    8000225a:	842a                	mv	s0,a0
    8000225c:	ec06                	sd	ra,24(sp)
    8000225e:	84ae                	mv	s1,a1
    80002260:	4a1020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002264:	4c18                	lw	a4,24(s0)
    80002266:	485c                	lw	a5,20(s0)
    80002268:	02f77063          	bleu	a5,a4,80002288 <OSMemPut+0x34>
    8000226c:	641c                	ld	a5,8(s0)
    8000226e:	e09c                	sd	a5,0(s1)
    80002270:	4c1c                	lw	a5,24(s0)
    80002272:	e404                	sd	s1,8(s0)
    80002274:	2785                	addiw	a5,a5,1
    80002276:	cc1c                	sw	a5,24(s0)
    80002278:	493020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000227c:	60e2                	ld	ra,24(sp)
    8000227e:	6442                	ld	s0,16(sp)
    80002280:	64a2                	ld	s1,8(sp)
    80002282:	4501                	li	a0,0
    80002284:	6105                	addi	sp,sp,32
    80002286:	8082                	ret
    80002288:	483020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000228c:	60e2                	ld	ra,24(sp)
    8000228e:	6442                	ld	s0,16(sp)
    80002290:	64a2                	ld	s1,8(sp)
    80002292:	05e00513          	li	a0,94
    80002296:	6105                	addi	sp,sp,32
    80002298:	8082                	ret

000000008000229a <OSMemQuery>:
    8000229a:	1101                	addi	sp,sp,-32
    8000229c:	ec06                	sd	ra,24(sp)
    8000229e:	e822                	sd	s0,16(sp)
    800022a0:	e426                	sd	s1,8(sp)
    800022a2:	842e                	mv	s0,a1
    800022a4:	84aa                	mv	s1,a0
    800022a6:	45b020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800022aa:	609c                	ld	a5,0(s1)
    800022ac:	e01c                	sd	a5,0(s0)
    800022ae:	649c                	ld	a5,8(s1)
    800022b0:	e41c                	sd	a5,8(s0)
    800022b2:	489c                	lw	a5,16(s1)
    800022b4:	c81c                	sw	a5,16(s0)
    800022b6:	48dc                	lw	a5,20(s1)
    800022b8:	c85c                	sw	a5,20(s0)
    800022ba:	4c9c                	lw	a5,24(s1)
    800022bc:	cc1c                	sw	a5,24(s0)
    800022be:	44d020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800022c2:	485c                	lw	a5,20(s0)
    800022c4:	4c18                	lw	a4,24(s0)
    800022c6:	4501                	li	a0,0
    800022c8:	9f99                	subw	a5,a5,a4
    800022ca:	cc5c                	sw	a5,28(s0)
    800022cc:	60e2                	ld	ra,24(sp)
    800022ce:	6442                	ld	s0,16(sp)
    800022d0:	64a2                	ld	s1,8(sp)
    800022d2:	6105                	addi	sp,sp,32
    800022d4:	8082                	ret

00000000800022d6 <OS_MemInit>:
    800022d6:	0007e697          	auipc	a3,0x7e
    800022da:	6c268693          	addi	a3,a3,1730 # 80080998 <OSMemTbl>
    800022de:	87b6                	mv	a5,a3
    800022e0:	0007e717          	auipc	a4,0x7e
    800022e4:	78070713          	addi	a4,a4,1920 # 80080a60 <OSTickStepState>
    800022e8:	0785                	addi	a5,a5,1
    800022ea:	fe078fa3          	sb	zero,-1(a5)
    800022ee:	fee79de3          	bne	a5,a4,800022e8 <OS_MemInit+0x12>
    800022f2:	0007e797          	auipc	a5,0x7e
    800022f6:	f6e78793          	addi	a5,a5,-146 # 80080260 <OSUnMapTbl+0x260>
    800022fa:	0007e717          	auipc	a4,0x7e
    800022fe:	6c670713          	addi	a4,a4,1734 # 800809c0 <OSMemTbl+0x28>
    80002302:	0007e617          	auipc	a2,0x7e
    80002306:	68e63f23          	sd	a4,1694(a2) # 800809a0 <OSMemTbl+0x8>
    8000230a:	0007e717          	auipc	a4,0x7e
    8000230e:	6af73723          	sd	a5,1710(a4) # 800809b8 <OSMemTbl+0x20>
    80002312:	0007e717          	auipc	a4,0x7e
    80002316:	6d670713          	addi	a4,a4,1750 # 800809e8 <OSMemTbl+0x50>
    8000231a:	0007e617          	auipc	a2,0x7e
    8000231e:	6ae63723          	sd	a4,1710(a2) # 800809c8 <OSMemTbl+0x30>
    80002322:	0007e717          	auipc	a4,0x7e
    80002326:	6af73f23          	sd	a5,1726(a4) # 800809e0 <OSMemTbl+0x48>
    8000232a:	0007e717          	auipc	a4,0x7e
    8000232e:	6e670713          	addi	a4,a4,1766 # 80080a10 <OSMemTbl+0x78>
    80002332:	0007e617          	auipc	a2,0x7e
    80002336:	6ae63f23          	sd	a4,1726(a2) # 800809f0 <OSMemTbl+0x58>
    8000233a:	0007e717          	auipc	a4,0x7e
    8000233e:	6cf73723          	sd	a5,1742(a4) # 80080a08 <OSMemTbl+0x70>
    80002342:	0007e717          	auipc	a4,0x7e
    80002346:	6f670713          	addi	a4,a4,1782 # 80080a38 <OSMemTbl+0xa0>
    8000234a:	0007e617          	auipc	a2,0x7e
    8000234e:	6ce63723          	sd	a4,1742(a2) # 80080a18 <OSMemTbl+0x80>
    80002352:	0007e717          	auipc	a4,0x7e
    80002356:	6cf73f23          	sd	a5,1758(a4) # 80080a30 <OSMemTbl+0x98>
    8000235a:	0007e717          	auipc	a4,0x7e
    8000235e:	6ef73f23          	sd	a5,1790(a4) # 80080a58 <OSMemTbl+0xc0>
    80002362:	0007e717          	auipc	a4,0x7e
    80002366:	6c073f23          	sd	zero,1758(a4) # 80080a40 <OSMemTbl+0xa8>
    8000236a:	0007f797          	auipc	a5,0x7f
    8000236e:	b0d7bf23          	sd	a3,-1250(a5) # 80080e88 <OSMemFreeList>
    80002372:	8082                	ret

0000000080002374 <OSMutexAccept>:
    80002374:	00054703          	lbu	a4,0(a0)
    80002378:	4791                	li	a5,4
    8000237a:	00f70763          	beq	a4,a5,80002388 <OSMutexAccept+0x14>
    8000237e:	4785                	li	a5,1
    80002380:	00f58023          	sb	a5,0(a1)
    80002384:	4501                	li	a0,0
    80002386:	8082                	ret
    80002388:	0007f797          	auipc	a5,0x7f
    8000238c:	ff07c783          	lbu	a5,-16(a5) # 80081378 <OSIntNesting>
    80002390:	c791                	beqz	a5,8000239c <OSMutexAccept+0x28>
    80002392:	4789                	li	a5,2
    80002394:	00f58023          	sb	a5,0(a1)
    80002398:	4501                	li	a0,0
    8000239a:	8082                	ret
    8000239c:	1101                	addi	sp,sp,-32
    8000239e:	e822                	sd	s0,16(sp)
    800023a0:	e426                	sd	s1,8(sp)
    800023a2:	842a                	mv	s0,a0
    800023a4:	ec06                	sd	ra,24(sp)
    800023a6:	84ae                	mv	s1,a1
    800023a8:	359020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800023ac:	01045783          	lhu	a5,16(s0)
    800023b0:	0ff00713          	li	a4,255
    800023b4:	0ff7f693          	andi	a3,a5,255
    800023b8:	04e69063          	bne	a3,a4,800023f8 <OSMutexAccept+0x84>
    800023bc:	0007f717          	auipc	a4,0x7f
    800023c0:	fc470713          	addi	a4,a4,-60 # 80081380 <OSTCBCur>
    800023c4:	6314                	ld	a3,0(a4)
    800023c6:	f007f713          	andi	a4,a5,-256
    800023ca:	1742                	slli	a4,a4,0x30
    800023cc:	9341                	srli	a4,a4,0x30
    800023ce:	00e41823          	sh	a4,16(s0)
    800023d2:	05a6c603          	lbu	a2,90(a3)
    800023d6:	e414                	sd	a3,8(s0)
    800023d8:	83a1                	srli	a5,a5,0x8
    800023da:	8f51                	or	a4,a4,a2
    800023dc:	00e41823          	sh	a4,16(s0)
    800023e0:	05a6c703          	lbu	a4,90(a3)
    800023e4:	02e7e463          	bltu	a5,a4,8000240c <OSMutexAccept+0x98>
    800023e8:	323020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800023ec:	07800793          	li	a5,120
    800023f0:	00f48023          	sb	a5,0(s1)
    800023f4:	4505                	li	a0,1
    800023f6:	a031                	j	80002402 <OSMutexAccept+0x8e>
    800023f8:	313020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800023fc:	4501                	li	a0,0
    800023fe:	00048023          	sb	zero,0(s1)
    80002402:	60e2                	ld	ra,24(sp)
    80002404:	6442                	ld	s0,16(sp)
    80002406:	64a2                	ld	s1,8(sp)
    80002408:	6105                	addi	sp,sp,32
    8000240a:	8082                	ret
    8000240c:	2ff020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002410:	4505                	li	a0,1
    80002412:	00048023          	sb	zero,0(s1)
    80002416:	b7f5                	j	80002402 <OSMutexAccept+0x8e>

0000000080002418 <OSMutexCreate>:
    80002418:	1101                	addi	sp,sp,-32
    8000241a:	ec06                	sd	ra,24(sp)
    8000241c:	e822                	sd	s0,16(sp)
    8000241e:	e426                	sd	s1,8(sp)
    80002420:	e04a                	sd	s2,0(sp)
    80002422:	0007f797          	auipc	a5,0x7f
    80002426:	f567c783          	lbu	a5,-170(a5) # 80081378 <OSIntNesting>
    8000242a:	efbd                	bnez	a5,800024a8 <OSMutexCreate+0x90>
    8000242c:	84aa                	mv	s1,a0
    8000242e:	892e                	mv	s2,a1
    80002430:	2d1020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002434:	00349713          	slli	a4,s1,0x3
    80002438:	00080797          	auipc	a5,0x80
    8000243c:	16078793          	addi	a5,a5,352 # 80082598 <OSTCBPrioTbl>
    80002440:	97ba                	add	a5,a5,a4
    80002442:	6398                	ld	a4,0(a5)
    80002444:	ef2d                	bnez	a4,800024be <OSMutexCreate+0xa6>
    80002446:	0007f717          	auipc	a4,0x7f
    8000244a:	f2a70713          	addi	a4,a4,-214 # 80081370 <OSEventFreeList>
    8000244e:	6300                	ld	s0,0(a4)
    80002450:	4705                	li	a4,1
    80002452:	e398                	sd	a4,0(a5)
    80002454:	cc2d                	beqz	s0,800024ce <OSMutexCreate+0xb6>
    80002456:	641c                	ld	a5,8(s0)
    80002458:	04a2                	slli	s1,s1,0x8
    8000245a:	0ff4e493          	ori	s1,s1,255
    8000245e:	0007f717          	auipc	a4,0x7f
    80002462:	f0f73923          	sd	a5,-238(a4) # 80081370 <OSEventFreeList>
    80002466:	2a5020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000246a:	4791                	li	a5,4
    8000246c:	00f40023          	sb	a5,0(s0)
    80002470:	0007e797          	auipc	a5,0x7e
    80002474:	df078793          	addi	a5,a5,-528 # 80080260 <OSUnMapTbl+0x260>
    80002478:	00941823          	sh	s1,16(s0)
    8000247c:	00043423          	sd	zero,8(s0)
    80002480:	f01c                	sd	a5,32(s0)
    80002482:	00041923          	sh	zero,18(s0)
    80002486:	00041a23          	sh	zero,20(s0)
    8000248a:	00041b23          	sh	zero,22(s0)
    8000248e:	00041c23          	sh	zero,24(s0)
    80002492:	00040d23          	sb	zero,26(s0)
    80002496:	00090023          	sb	zero,0(s2)
    8000249a:	8522                	mv	a0,s0
    8000249c:	60e2                	ld	ra,24(sp)
    8000249e:	6442                	ld	s0,16(sp)
    800024a0:	64a2                	ld	s1,8(sp)
    800024a2:	6902                	ld	s2,0(sp)
    800024a4:	6105                	addi	sp,sp,32
    800024a6:	8082                	ret
    800024a8:	4401                	li	s0,0
    800024aa:	8522                	mv	a0,s0
    800024ac:	60e2                	ld	ra,24(sp)
    800024ae:	6442                	ld	s0,16(sp)
    800024b0:	47c1                	li	a5,16
    800024b2:	00f58023          	sb	a5,0(a1)
    800024b6:	64a2                	ld	s1,8(sp)
    800024b8:	6902                	ld	s2,0(sp)
    800024ba:	6105                	addi	sp,sp,32
    800024bc:	8082                	ret
    800024be:	24d020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800024c2:	02800793          	li	a5,40
    800024c6:	00f90023          	sb	a5,0(s2)
    800024ca:	4401                	li	s0,0
    800024cc:	b7f9                	j	8000249a <OSMutexCreate+0x82>
    800024ce:	0007b023          	sd	zero,0(a5)
    800024d2:	239020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800024d6:	4791                	li	a5,4
    800024d8:	00f90023          	sb	a5,0(s2)
    800024dc:	bf7d                	j	8000249a <OSMutexCreate+0x82>

00000000800024de <OSMutexDel>:
    800024de:	00054703          	lbu	a4,0(a0)
    800024e2:	4791                	li	a5,4
    800024e4:	00f70663          	beq	a4,a5,800024f0 <OSMutexDel+0x12>
    800024e8:	4785                	li	a5,1
    800024ea:	00f60023          	sb	a5,0(a2)
    800024ee:	8082                	ret
    800024f0:	0007f797          	auipc	a5,0x7f
    800024f4:	e887c783          	lbu	a5,-376(a5) # 80081378 <OSIntNesting>
    800024f8:	c789                	beqz	a5,80002502 <OSMutexDel+0x24>
    800024fa:	47bd                	li	a5,15
    800024fc:	00f60023          	sb	a5,0(a2)
    80002500:	8082                	ret
    80002502:	7179                	addi	sp,sp,-48
    80002504:	f022                	sd	s0,32(sp)
    80002506:	ec26                	sd	s1,24(sp)
    80002508:	e84a                	sd	s2,16(sp)
    8000250a:	e44e                	sd	s3,8(sp)
    8000250c:	842a                	mv	s0,a0
    8000250e:	f406                	sd	ra,40(sp)
    80002510:	84b2                	mv	s1,a2
    80002512:	892e                	mv	s2,a1
    80002514:	1ed020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002518:	01244783          	lbu	a5,18(s0)
    8000251c:	89aa                	mv	s3,a0
    8000251e:	c38d                	beqz	a5,80002540 <OSMutexDel+0x62>
    80002520:	06091263          	bnez	s2,80002584 <OSMutexDel+0xa6>
    80002524:	1e7020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002528:	04900793          	li	a5,73
    8000252c:	00f48023          	sb	a5,0(s1)
    80002530:	8522                	mv	a0,s0
    80002532:	70a2                	ld	ra,40(sp)
    80002534:	7402                	ld	s0,32(sp)
    80002536:	64e2                	ld	s1,24(sp)
    80002538:	6942                	ld	s2,16(sp)
    8000253a:	69a2                	ld	s3,8(sp)
    8000253c:	6145                	addi	sp,sp,48
    8000253e:	8082                	ret
    80002540:	0a090863          	beqz	s2,800025f0 <OSMutexDel+0x112>
    80002544:	4705                	li	a4,1
    80002546:	02e91763          	bne	s2,a4,80002574 <OSMutexDel+0x96>
    8000254a:	4901                	li	s2,0
    8000254c:	6408                	ld	a0,8(s0)
    8000254e:	c909                	beqz	a0,80002560 <OSMutexDel+0x82>
    80002550:	01045583          	lhu	a1,16(s0)
    80002554:	05a54683          	lbu	a3,90(a0)
    80002558:	0085d713          	srli	a4,a1,0x8
    8000255c:	02e68963          	beq	a3,a4,8000258e <OSMutexDel+0xb0>
    80002560:	cf95                	beqz	a5,8000259c <OSMutexDel+0xbe>
    80002562:	4681                	li	a3,0
    80002564:	4641                	li	a2,16
    80002566:	4581                	li	a1,0
    80002568:	8522                	mv	a0,s0
    8000256a:	b56fe0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    8000256e:	01244783          	lbu	a5,18(s0)
    80002572:	b7fd                	j	80002560 <OSMutexDel+0x82>
    80002574:	854e                	mv	a0,s3
    80002576:	195020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000257a:	479d                	li	a5,7
    8000257c:	00f48023          	sb	a5,0(s1)
    80002580:	8522                	mv	a0,s0
    80002582:	bf45                	j	80002532 <OSMutexDel+0x54>
    80002584:	4705                	li	a4,1
    80002586:	fee917e3          	bne	s2,a4,80002574 <OSMutexDel+0x96>
    8000258a:	4905                	li	s2,1
    8000258c:	b7c1                	j	8000254c <OSMutexDel+0x6e>
    8000258e:	0ff5f593          	andi	a1,a1,255
    80002592:	da3fd0ef          	jal	ra,80000334 <OSMutex_RdyAtPrio>
    80002596:	01244783          	lbu	a5,18(s0)
    8000259a:	b7d9                	j	80002560 <OSMutexDel+0x82>
    8000259c:	01045783          	lhu	a5,16(s0)
    800025a0:	0007e717          	auipc	a4,0x7e
    800025a4:	cc070713          	addi	a4,a4,-832 # 80080260 <OSUnMapTbl+0x260>
    800025a8:	f018                	sd	a4,32(s0)
    800025aa:	83a1                	srli	a5,a5,0x8
    800025ac:	078e                	slli	a5,a5,0x3
    800025ae:	00080717          	auipc	a4,0x80
    800025b2:	fea70713          	addi	a4,a4,-22 # 80082598 <OSTCBPrioTbl>
    800025b6:	97ba                	add	a5,a5,a4
    800025b8:	0007b023          	sd	zero,0(a5)
    800025bc:	00040023          	sb	zero,0(s0)
    800025c0:	0007f797          	auipc	a5,0x7f
    800025c4:	db078793          	addi	a5,a5,-592 # 80081370 <OSEventFreeList>
    800025c8:	639c                	ld	a5,0(a5)
    800025ca:	00041823          	sh	zero,16(s0)
    800025ce:	854e                	mv	a0,s3
    800025d0:	e41c                	sd	a5,8(s0)
    800025d2:	0007f797          	auipc	a5,0x7f
    800025d6:	d887bf23          	sd	s0,-610(a5) # 80081370 <OSEventFreeList>
    800025da:	131020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800025de:	00091663          	bnez	s2,800025ea <OSMutexDel+0x10c>
    800025e2:	00048023          	sb	zero,0(s1)
    800025e6:	4501                	li	a0,0
    800025e8:	b7a9                	j	80002532 <OSMutexDel+0x54>
    800025ea:	d80fe0ef          	jal	ra,80000b6a <OS_Sched>
    800025ee:	bfd5                	j	800025e2 <OSMutexDel+0x104>
    800025f0:	01045783          	lhu	a5,16(s0)
    800025f4:	0007e717          	auipc	a4,0x7e
    800025f8:	c6c70713          	addi	a4,a4,-916 # 80080260 <OSUnMapTbl+0x260>
    800025fc:	f018                	sd	a4,32(s0)
    800025fe:	83a1                	srli	a5,a5,0x8
    80002600:	00080717          	auipc	a4,0x80
    80002604:	f9870713          	addi	a4,a4,-104 # 80082598 <OSTCBPrioTbl>
    80002608:	078e                	slli	a5,a5,0x3
    8000260a:	97ba                	add	a5,a5,a4
    8000260c:	0007b023          	sd	zero,0(a5)
    80002610:	00040023          	sb	zero,0(s0)
    80002614:	0007f797          	auipc	a5,0x7f
    80002618:	d5c78793          	addi	a5,a5,-676 # 80081370 <OSEventFreeList>
    8000261c:	639c                	ld	a5,0(a5)
    8000261e:	00041823          	sh	zero,16(s0)
    80002622:	0007f717          	auipc	a4,0x7f
    80002626:	d4873723          	sd	s0,-690(a4) # 80081370 <OSEventFreeList>
    8000262a:	e41c                	sd	a5,8(s0)
    8000262c:	0df020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002630:	4501                	li	a0,0
    80002632:	00048023          	sb	zero,0(s1)
    80002636:	bdf5                	j	80002532 <OSMutexDel+0x54>

0000000080002638 <OSMutexPend>:
    80002638:	00054703          	lbu	a4,0(a0)
    8000263c:	4791                	li	a5,4
    8000263e:	00f70663          	beq	a4,a5,8000264a <OSMutexPend+0x12>
    80002642:	4785                	li	a5,1
    80002644:	00f60023          	sb	a5,0(a2)
    80002648:	8082                	ret
    8000264a:	0007f797          	auipc	a5,0x7f
    8000264e:	d2e7c783          	lbu	a5,-722(a5) # 80081378 <OSIntNesting>
    80002652:	16079163          	bnez	a5,800027b4 <OSMutexPend+0x17c>
    80002656:	0007e797          	auipc	a5,0x7e
    8000265a:	df27c783          	lbu	a5,-526(a5) # 80080448 <OSLockNesting>
    8000265e:	c789                	beqz	a5,80002668 <OSMutexPend+0x30>
    80002660:	47b5                	li	a5,13
    80002662:	00f60023          	sb	a5,0(a2)
    80002666:	8082                	ret
    80002668:	7179                	addi	sp,sp,-48
    8000266a:	f022                	sd	s0,32(sp)
    8000266c:	ec26                	sd	s1,24(sp)
    8000266e:	e84a                	sd	s2,16(sp)
    80002670:	e052                	sd	s4,0(sp)
    80002672:	84b2                	mv	s1,a2
    80002674:	892e                	mv	s2,a1
    80002676:	842a                	mv	s0,a0
    80002678:	f406                	sd	ra,40(sp)
    8000267a:	e44e                	sd	s3,8(sp)
    8000267c:	085020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002680:	01045783          	lhu	a5,16(s0)
    80002684:	0ff00713          	li	a4,255
    80002688:	8a2a                	mv	s4,a0
    8000268a:	0087d59b          	srliw	a1,a5,0x8
    8000268e:	0ff7f613          	andi	a2,a5,255
    80002692:	86ae                	mv	a3,a1
    80002694:	12e60463          	beq	a2,a4,800027bc <OSMutexPend+0x184>
    80002698:	6418                	ld	a4,8(s0)
    8000269a:	0007f997          	auipc	s3,0x7f
    8000269e:	ce698993          	addi	s3,s3,-794 # 80081380 <OSTCBCur>
    800026a2:	0009b783          	ld	a5,0(s3)
    800026a6:	05a74503          	lbu	a0,90(a4)
    800026aa:	0aa6f563          	bleu	a0,a3,80002754 <OSMutexPend+0x11c>
    800026ae:	05a7c503          	lbu	a0,90(a5)
    800026b2:	0ac57163          	bleu	a2,a0,80002754 <OSMutexPend+0x11c>
    800026b6:	05c74883          	lbu	a7,92(a4)
    800026ba:	0007f517          	auipc	a0,0x7f
    800026be:	8ae50513          	addi	a0,a0,-1874 # 80080f68 <OSRdyTbl>
    800026c2:	05d74603          	lbu	a2,93(a4)
    800026c6:	01150333          	add	t1,a0,a7
    800026ca:	00034803          	lbu	a6,0(t1)
    800026ce:	00c87e33          	and	t3,a6,a2
    800026d2:	160e0163          	beqz	t3,80002834 <OSMutexPend+0x1fc>
    800026d6:	fff64613          	not	a2,a2
    800026da:	00c87633          	and	a2,a6,a2
    800026de:	00c30023          	sb	a2,0(t1)
    800026e2:	0007f897          	auipc	a7,0x7f
    800026e6:	87e8c883          	lbu	a7,-1922(a7) # 80080f60 <OSRdyGrp>
    800026ea:	e619                	bnez	a2,800026f8 <OSMutexPend+0xc0>
    800026ec:	05e74603          	lbu	a2,94(a4)
    800026f0:	fff64613          	not	a2,a2
    800026f4:	00c8f8b3          	and	a7,a7,a2
    800026f8:	0036de93          	srli	t4,a3,0x3
    800026fc:	000e881b          	sext.w	a6,t4
    80002700:	9542                	add	a0,a0,a6
    80002702:	0076fe13          	andi	t3,a3,7
    80002706:	4605                	li	a2,1
    80002708:	00054303          	lbu	t1,0(a0)
    8000270c:	01061833          	sll	a6,a2,a6
    80002710:	01c61633          	sll	a2,a2,t3
    80002714:	0ff67613          	andi	a2,a2,255
    80002718:	0ff87813          	andi	a6,a6,255
    8000271c:	00666333          	or	t1,a2,t1
    80002720:	0108e8b3          	or	a7,a7,a6
    80002724:	04c70ea3          	sb	a2,93(a4)
    80002728:	04b70d23          	sb	a1,90(a4)
    8000272c:	05d70e23          	sb	t4,92(a4)
    80002730:	05c70da3          	sb	t3,91(a4)
    80002734:	05070f23          	sb	a6,94(a4)
    80002738:	0007f617          	auipc	a2,0x7f
    8000273c:	83160423          	sb	a7,-2008(a2) # 80080f60 <OSRdyGrp>
    80002740:	00650023          	sb	t1,0(a0)
    80002744:	00369613          	slli	a2,a3,0x3
    80002748:	00080697          	auipc	a3,0x80
    8000274c:	e5068693          	addi	a3,a3,-432 # 80082598 <OSTCBPrioTbl>
    80002750:	96b2                	add	a3,a3,a2
    80002752:	e298                	sd	a4,0(a3)
    80002754:	0587c703          	lbu	a4,88(a5)
    80002758:	04078ca3          	sb	zero,89(a5)
    8000275c:	0527aa23          	sw	s2,84(a5)
    80002760:	01076713          	ori	a4,a4,16
    80002764:	04e78c23          	sb	a4,88(a5)
    80002768:	8522                	mv	a0,s0
    8000276a:	a58fe0ef          	jal	ra,800009c2 <OS_EventTaskWait>
    8000276e:	8552                	mv	a0,s4
    80002770:	79a020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002774:	bf6fe0ef          	jal	ra,80000b6a <OS_Sched>
    80002778:	788020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000277c:	0009b783          	ld	a5,0(s3)
    80002780:	0597c703          	lbu	a4,89(a5)
    80002784:	c345                	beqz	a4,80002824 <OSMutexPend+0x1ec>
    80002786:	4689                	li	a3,2
    80002788:	06d71d63          	bne	a4,a3,80002802 <OSMutexPend+0x1ca>
    8000278c:	47b9                	li	a5,14
    8000278e:	00f48023          	sb	a5,0(s1)
    80002792:	0009b783          	ld	a5,0(s3)
    80002796:	04079c23          	sh	zero,88(a5)
    8000279a:	0207b823          	sd	zero,48(a5)
    8000279e:	0207bc23          	sd	zero,56(a5)
    800027a2:	7402                	ld	s0,32(sp)
    800027a4:	70a2                	ld	ra,40(sp)
    800027a6:	64e2                	ld	s1,24(sp)
    800027a8:	6942                	ld	s2,16(sp)
    800027aa:	69a2                	ld	s3,8(sp)
    800027ac:	6a02                	ld	s4,0(sp)
    800027ae:	6145                	addi	sp,sp,48
    800027b0:	75a0206f          	j	80004f0a <OS_CPU_SR_Restore>
    800027b4:	4789                	li	a5,2
    800027b6:	00f60023          	sb	a5,0(a2)
    800027ba:	8082                	ret
    800027bc:	0007f717          	auipc	a4,0x7f
    800027c0:	bc470713          	addi	a4,a4,-1084 # 80081380 <OSTCBCur>
    800027c4:	f007f793          	andi	a5,a5,-256
    800027c8:	6318                	ld	a4,0(a4)
    800027ca:	17c2                	slli	a5,a5,0x30
    800027cc:	93c1                	srli	a5,a5,0x30
    800027ce:	00f41823          	sh	a5,16(s0)
    800027d2:	05a74603          	lbu	a2,90(a4)
    800027d6:	e418                	sd	a4,8(s0)
    800027d8:	8fd1                	or	a5,a5,a2
    800027da:	00f41823          	sh	a5,16(s0)
    800027de:	05a74783          	lbu	a5,90(a4)
    800027e2:	04f6e463          	bltu	a3,a5,8000282a <OSMutexPend+0x1f2>
    800027e6:	724020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800027ea:	07800793          	li	a5,120
    800027ee:	00f48023          	sb	a5,0(s1)
    800027f2:	70a2                	ld	ra,40(sp)
    800027f4:	7402                	ld	s0,32(sp)
    800027f6:	64e2                	ld	s1,24(sp)
    800027f8:	6942                	ld	s2,16(sp)
    800027fa:	69a2                	ld	s3,8(sp)
    800027fc:	6a02                	ld	s4,0(sp)
    800027fe:	6145                	addi	sp,sp,48
    80002800:	8082                	ret
    80002802:	05c7c683          	lbu	a3,92(a5)
    80002806:	05d7c703          	lbu	a4,93(a5)
    8000280a:	96a2                	add	a3,a3,s0
    8000280c:	0136c603          	lbu	a2,19(a3)
    80002810:	fff74713          	not	a4,a4
    80002814:	8f71                	and	a4,a4,a2
    80002816:	00e689a3          	sb	a4,19(a3)
    8000281a:	cb59                	beqz	a4,800028b0 <OSMutexPend+0x278>
    8000281c:	47a9                	li	a5,10
    8000281e:	00f48023          	sb	a5,0(s1)
    80002822:	bf85                	j	80002792 <OSMutexPend+0x15a>
    80002824:	00048023          	sb	zero,0(s1)
    80002828:	b7ad                	j	80002792 <OSMutexPend+0x15a>
    8000282a:	6e0020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000282e:	00048023          	sb	zero,0(s1)
    80002832:	b7c1                	j	800027f2 <OSMutexPend+0x1ba>
    80002834:	7b08                	ld	a0,48(a4)
    80002836:	c559                	beqz	a0,800028c4 <OSMutexPend+0x28c>
    80002838:	98aa                	add	a7,a7,a0
    8000283a:	0138c803          	lbu	a6,19(a7)
    8000283e:	fff64613          	not	a2,a2
    80002842:	01067633          	and	a2,a2,a6
    80002846:	00c889a3          	sb	a2,19(a7)
    8000284a:	ea19                	bnez	a2,80002860 <OSMutexPend+0x228>
    8000284c:	05e74603          	lbu	a2,94(a4)
    80002850:	01254803          	lbu	a6,18(a0)
    80002854:	fff64613          	not	a2,a2
    80002858:	01067633          	and	a2,a2,a6
    8000285c:	00c50923          	sb	a2,18(a0)
    80002860:	0036d313          	srli	t1,a3,0x3
    80002864:	4805                	li	a6,1
    80002866:	0076f893          	andi	a7,a3,7
    8000286a:	00681533          	sll	a0,a6,t1
    8000286e:	7b10                	ld	a2,48(a4)
    80002870:	0ff57513          	andi	a0,a0,255
    80002874:	01181833          	sll	a6,a6,a7
    80002878:	04b70d23          	sb	a1,90(a4)
    8000287c:	04670e23          	sb	t1,92(a4)
    80002880:	05170da3          	sb	a7,91(a4)
    80002884:	04a70f23          	sb	a0,94(a4)
    80002888:	05070ea3          	sb	a6,93(a4)
    8000288c:	ea060ce3          	beqz	a2,80002744 <OSMutexPend+0x10c>
    80002890:	01264583          	lbu	a1,18(a2)
    80002894:	8d4d                	or	a0,a0,a1
    80002896:	00a60923          	sb	a0,18(a2)
    8000289a:	05c74583          	lbu	a1,92(a4)
    8000289e:	05d74503          	lbu	a0,93(a4)
    800028a2:	962e                	add	a2,a2,a1
    800028a4:	01364583          	lbu	a1,19(a2)
    800028a8:	8dc9                	or	a1,a1,a0
    800028aa:	00b609a3          	sb	a1,19(a2)
    800028ae:	bd59                	j	80002744 <OSMutexPend+0x10c>
    800028b0:	05e7c783          	lbu	a5,94(a5)
    800028b4:	01244703          	lbu	a4,18(s0)
    800028b8:	fff7c793          	not	a5,a5
    800028bc:	8ff9                	and	a5,a5,a4
    800028be:	00f40923          	sb	a5,18(s0)
    800028c2:	bfa9                	j	8000281c <OSMutexPend+0x1e4>
    800028c4:	0036d813          	srli	a6,a3,0x3
    800028c8:	0076f513          	andi	a0,a3,7
    800028cc:	4605                	li	a2,1
    800028ce:	010618b3          	sll	a7,a2,a6
    800028d2:	00a61633          	sll	a2,a2,a0
    800028d6:	04b70d23          	sb	a1,90(a4)
    800028da:	05070e23          	sb	a6,92(a4)
    800028de:	04a70da3          	sb	a0,91(a4)
    800028e2:	05170f23          	sb	a7,94(a4)
    800028e6:	04c70ea3          	sb	a2,93(a4)
    800028ea:	bda9                	j	80002744 <OSMutexPend+0x10c>

00000000800028ec <OSMutexPost>:
    800028ec:	7139                	addi	sp,sp,-64
    800028ee:	f822                	sd	s0,48(sp)
    800028f0:	fc06                	sd	ra,56(sp)
    800028f2:	f426                	sd	s1,40(sp)
    800028f4:	f04a                	sd	s2,32(sp)
    800028f6:	ec4e                	sd	s3,24(sp)
    800028f8:	e852                	sd	s4,16(sp)
    800028fa:	e456                	sd	s5,8(sp)
    800028fc:	0007f417          	auipc	s0,0x7f
    80002900:	a7c44403          	lbu	s0,-1412(s0) # 80081378 <OSIntNesting>
    80002904:	e00d                	bnez	s0,80002926 <OSMutexPost+0x3a>
    80002906:	00054703          	lbu	a4,0(a0)
    8000290a:	4791                	li	a5,4
    8000290c:	00f70f63          	beq	a4,a5,8000292a <OSMutexPost+0x3e>
    80002910:	4405                	li	s0,1
    80002912:	8522                	mv	a0,s0
    80002914:	70e2                	ld	ra,56(sp)
    80002916:	7442                	ld	s0,48(sp)
    80002918:	74a2                	ld	s1,40(sp)
    8000291a:	7902                	ld	s2,32(sp)
    8000291c:	69e2                	ld	s3,24(sp)
    8000291e:	6a42                	ld	s4,16(sp)
    80002920:	6aa2                	ld	s5,8(sp)
    80002922:	6121                	addi	sp,sp,64
    80002924:	8082                	ret
    80002926:	4415                	li	s0,5
    80002928:	b7ed                	j	80002912 <OSMutexPost+0x26>
    8000292a:	84aa                	mv	s1,a0
    8000292c:	5d4020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002930:	0007f717          	auipc	a4,0x7f
    80002934:	a5070713          	addi	a4,a4,-1456 # 80081380 <OSTCBCur>
    80002938:	649c                	ld	a5,8(s1)
    8000293a:	6318                	ld	a4,0(a4)
    8000293c:	8a2a                	mv	s4,a0
    8000293e:	06e79463          	bne	a5,a4,800029a6 <OSMutexPost+0xba>
    80002942:	0104d583          	lhu	a1,16(s1)
    80002946:	05a7c703          	lbu	a4,90(a5)
    8000294a:	0085d913          	srli	s2,a1,0x8
    8000294e:	0ff97a93          	andi	s5,s2,255
    80002952:	09570363          	beq	a4,s5,800029d8 <OSMutexPost+0xec>
    80002956:	00080997          	auipc	s3,0x80
    8000295a:	c4298993          	addi	s3,s3,-958 # 80082598 <OSTCBPrioTbl>
    8000295e:	090e                	slli	s2,s2,0x3
    80002960:	4785                	li	a5,1
    80002962:	994e                	add	s2,s2,s3
    80002964:	00f93023          	sd	a5,0(s2)
    80002968:	0124c783          	lbu	a5,18(s1)
    8000296c:	c3b1                	beqz	a5,800029b0 <OSMutexPost+0xc4>
    8000296e:	4681                	li	a3,0
    80002970:	4641                	li	a2,16
    80002972:	4581                	li	a1,0
    80002974:	8526                	mv	a0,s1
    80002976:	f4bfd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    8000297a:	0104d783          	lhu	a5,16(s1)
    8000297e:	0005071b          	sext.w	a4,a0
    80002982:	070e                	slli	a4,a4,0x3
    80002984:	f007f793          	andi	a5,a5,-256
    80002988:	8fc9                	or	a5,a5,a0
    8000298a:	00f49823          	sh	a5,16(s1)
    8000298e:	99ba                	add	s3,s3,a4
    80002990:	0009b783          	ld	a5,0(s3)
    80002994:	e49c                	sd	a5,8(s1)
    80002996:	02aaf963          	bleu	a0,s5,800029c8 <OSMutexPost+0xdc>
    8000299a:	8552                	mv	a0,s4
    8000299c:	56e020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800029a0:	9cafe0ef          	jal	ra,80000b6a <OS_Sched>
    800029a4:	b7bd                	j	80002912 <OSMutexPost+0x26>
    800029a6:	564020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800029aa:	06400413          	li	s0,100
    800029ae:	b795                	j	80002912 <OSMutexPost+0x26>
    800029b0:	0104d783          	lhu	a5,16(s1)
    800029b4:	0004b423          	sd	zero,8(s1)
    800029b8:	8552                	mv	a0,s4
    800029ba:	0ff7e793          	ori	a5,a5,255
    800029be:	00f49823          	sh	a5,16(s1)
    800029c2:	548020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800029c6:	b7b1                	j	80002912 <OSMutexPost+0x26>
    800029c8:	8552                	mv	a0,s4
    800029ca:	540020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800029ce:	07800413          	li	s0,120
    800029d2:	998fe0ef          	jal	ra,80000b6a <OS_Sched>
    800029d6:	bf35                	j	80002912 <OSMutexPost+0x26>
    800029d8:	0ff5f593          	andi	a1,a1,255
    800029dc:	853e                	mv	a0,a5
    800029de:	957fd0ef          	jal	ra,80000334 <OSMutex_RdyAtPrio>
    800029e2:	bf95                	j	80002956 <OSMutexPost+0x6a>

00000000800029e4 <OSMutexQuery>:
    800029e4:	1101                	addi	sp,sp,-32
    800029e6:	e426                	sd	s1,8(sp)
    800029e8:	ec06                	sd	ra,24(sp)
    800029ea:	e822                	sd	s0,16(sp)
    800029ec:	e04a                	sd	s2,0(sp)
    800029ee:	0007f497          	auipc	s1,0x7f
    800029f2:	98a4c483          	lbu	s1,-1654(s1) # 80081378 <OSIntNesting>
    800029f6:	ec91                	bnez	s1,80002a12 <OSMutexQuery+0x2e>
    800029f8:	00054703          	lbu	a4,0(a0)
    800029fc:	4791                	li	a5,4
    800029fe:	02f70263          	beq	a4,a5,80002a22 <OSMutexQuery+0x3e>
    80002a02:	60e2                	ld	ra,24(sp)
    80002a04:	6442                	ld	s0,16(sp)
    80002a06:	4485                	li	s1,1
    80002a08:	8526                	mv	a0,s1
    80002a0a:	6902                	ld	s2,0(sp)
    80002a0c:	64a2                	ld	s1,8(sp)
    80002a0e:	6105                	addi	sp,sp,32
    80002a10:	8082                	ret
    80002a12:	60e2                	ld	ra,24(sp)
    80002a14:	6442                	ld	s0,16(sp)
    80002a16:	4499                	li	s1,6
    80002a18:	8526                	mv	a0,s1
    80002a1a:	6902                	ld	s2,0(sp)
    80002a1c:	64a2                	ld	s1,8(sp)
    80002a1e:	6105                	addi	sp,sp,32
    80002a20:	8082                	ret
    80002a22:	892e                	mv	s2,a1
    80002a24:	842a                	mv	s0,a0
    80002a26:	4da020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002a2a:	01045783          	lhu	a5,16(s0)
    80002a2e:	0ff00713          	li	a4,255
    80002a32:	0087d79b          	srliw	a5,a5,0x8
    80002a36:	00f905a3          	sb	a5,11(s2)
    80002a3a:	01044783          	lbu	a5,16(s0)
    80002a3e:	00f90523          	sb	a5,10(s2)
    80002a42:	02e78e63          	beq	a5,a4,80002a7e <OSMutexQuery+0x9a>
    80002a46:	000904a3          	sb	zero,9(s2)
    80002a4a:	01244703          	lbu	a4,18(s0)
    80002a4e:	01340793          	addi	a5,s0,19
    80002a52:	86ca                	mv	a3,s2
    80002a54:	00e90423          	sb	a4,8(s2)
    80002a58:	01b40713          	addi	a4,s0,27
    80002a5c:	0785                	addi	a5,a5,1
    80002a5e:	fff7c603          	lbu	a2,-1(a5)
    80002a62:	0685                	addi	a3,a3,1
    80002a64:	fec68fa3          	sb	a2,-1(a3)
    80002a68:	fef71ae3          	bne	a4,a5,80002a5c <OSMutexQuery+0x78>
    80002a6c:	49e020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002a70:	60e2                	ld	ra,24(sp)
    80002a72:	6442                	ld	s0,16(sp)
    80002a74:	8526                	mv	a0,s1
    80002a76:	6902                	ld	s2,0(sp)
    80002a78:	64a2                	ld	s1,8(sp)
    80002a7a:	6105                	addi	sp,sp,32
    80002a7c:	8082                	ret
    80002a7e:	4785                	li	a5,1
    80002a80:	00f904a3          	sb	a5,9(s2)
    80002a84:	b7d9                	j	80002a4a <OSMutexQuery+0x66>

0000000080002a86 <OSQAccept>:
    80002a86:	1101                	addi	sp,sp,-32
    80002a88:	ec06                	sd	ra,24(sp)
    80002a8a:	e822                	sd	s0,16(sp)
    80002a8c:	e426                	sd	s1,8(sp)
    80002a8e:	00054703          	lbu	a4,0(a0)
    80002a92:	4789                	li	a5,2
    80002a94:	04f71463          	bne	a4,a5,80002adc <OSQAccept+0x56>
    80002a98:	842a                	mv	s0,a0
    80002a9a:	84ae                	mv	s1,a1
    80002a9c:	464020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002aa0:	641c                	ld	a5,8(s0)
    80002aa2:	02a7d703          	lhu	a4,42(a5)
    80002aa6:	ef09                	bnez	a4,80002ac0 <OSQAccept+0x3a>
    80002aa8:	47fd                	li	a5,31
    80002aaa:	00f48023          	sb	a5,0(s1)
    80002aae:	4401                	li	s0,0
    80002ab0:	45a020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002ab4:	8522                	mv	a0,s0
    80002ab6:	60e2                	ld	ra,24(sp)
    80002ab8:	6442                	ld	s0,16(sp)
    80002aba:	64a2                	ld	s1,8(sp)
    80002abc:	6105                	addi	sp,sp,32
    80002abe:	8082                	ret
    80002ac0:	7390                	ld	a2,32(a5)
    80002ac2:	6b8c                	ld	a1,16(a5)
    80002ac4:	377d                	addiw	a4,a4,-1
    80002ac6:	00860693          	addi	a3,a2,8
    80002aca:	f394                	sd	a3,32(a5)
    80002acc:	6200                	ld	s0,0(a2)
    80002ace:	02e79523          	sh	a4,42(a5)
    80002ad2:	00b68f63          	beq	a3,a1,80002af0 <OSQAccept+0x6a>
    80002ad6:	00048023          	sb	zero,0(s1)
    80002ada:	bfd9                	j	80002ab0 <OSQAccept+0x2a>
    80002adc:	4785                	li	a5,1
    80002ade:	00f58023          	sb	a5,0(a1)
    80002ae2:	4401                	li	s0,0
    80002ae4:	8522                	mv	a0,s0
    80002ae6:	60e2                	ld	ra,24(sp)
    80002ae8:	6442                	ld	s0,16(sp)
    80002aea:	64a2                	ld	s1,8(sp)
    80002aec:	6105                	addi	sp,sp,32
    80002aee:	8082                	ret
    80002af0:	6798                	ld	a4,8(a5)
    80002af2:	f398                	sd	a4,32(a5)
    80002af4:	00048023          	sb	zero,0(s1)
    80002af8:	bf65                	j	80002ab0 <OSQAccept+0x2a>

0000000080002afa <OSQCreate>:
    80002afa:	7179                	addi	sp,sp,-48
    80002afc:	f406                	sd	ra,40(sp)
    80002afe:	f022                	sd	s0,32(sp)
    80002b00:	ec26                	sd	s1,24(sp)
    80002b02:	e84a                	sd	s2,16(sp)
    80002b04:	e44e                	sd	s3,8(sp)
    80002b06:	e052                	sd	s4,0(sp)
    80002b08:	0007f797          	auipc	a5,0x7f
    80002b0c:	8707c783          	lbu	a5,-1936(a5) # 80081378 <OSIntNesting>
    80002b10:	ebd9                	bnez	a5,80002ba6 <OSQCreate+0xac>
    80002b12:	0007fa17          	auipc	s4,0x7f
    80002b16:	85ea0a13          	addi	s4,s4,-1954 # 80081370 <OSEventFreeList>
    80002b1a:	89ae                	mv	s3,a1
    80002b1c:	892a                	mv	s2,a0
    80002b1e:	3e2020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002b22:	000a3403          	ld	s0,0(s4)
    80002b26:	cc2d                	beqz	s0,80002ba0 <OSQCreate+0xa6>
    80002b28:	641c                	ld	a5,8(s0)
    80002b2a:	0007f717          	auipc	a4,0x7f
    80002b2e:	84f73323          	sd	a5,-1978(a4) # 80081370 <OSEventFreeList>
    80002b32:	3d8020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002b36:	3ca020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002b3a:	0007e797          	auipc	a5,0x7e
    80002b3e:	41e78793          	addi	a5,a5,1054 # 80080f58 <OSQFreeList>
    80002b42:	6384                	ld	s1,0(a5)
    80002b44:	c0bd                	beqz	s1,80002baa <OSQCreate+0xb0>
    80002b46:	609c                	ld	a5,0(s1)
    80002b48:	0007e717          	auipc	a4,0x7e
    80002b4c:	40f73823          	sd	a5,1040(a4) # 80080f58 <OSQFreeList>
    80002b50:	3ba020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002b54:	00399793          	slli	a5,s3,0x3
    80002b58:	97ca                	add	a5,a5,s2
    80002b5a:	e89c                	sd	a5,16(s1)
    80002b5c:	0124b423          	sd	s2,8(s1)
    80002b60:	0124bc23          	sd	s2,24(s1)
    80002b64:	0324b023          	sd	s2,32(s1)
    80002b68:	03349423          	sh	s3,40(s1)
    80002b6c:	02049523          	sh	zero,42(s1)
    80002b70:	4789                	li	a5,2
    80002b72:	00f40023          	sb	a5,0(s0)
    80002b76:	0007d797          	auipc	a5,0x7d
    80002b7a:	6ea78793          	addi	a5,a5,1770 # 80080260 <OSUnMapTbl+0x260>
    80002b7e:	e404                	sd	s1,8(s0)
    80002b80:	f01c                	sd	a5,32(s0)
    80002b82:	00043823          	sd	zero,16(s0)
    80002b86:	00041c23          	sh	zero,24(s0)
    80002b8a:	00040d23          	sb	zero,26(s0)
    80002b8e:	8522                	mv	a0,s0
    80002b90:	70a2                	ld	ra,40(sp)
    80002b92:	7402                	ld	s0,32(sp)
    80002b94:	64e2                	ld	s1,24(sp)
    80002b96:	6942                	ld	s2,16(sp)
    80002b98:	69a2                	ld	s3,8(sp)
    80002b9a:	6a02                	ld	s4,0(sp)
    80002b9c:	6145                	addi	sp,sp,48
    80002b9e:	8082                	ret
    80002ba0:	36a020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002ba4:	b7ed                	j	80002b8e <OSQCreate+0x94>
    80002ba6:	4401                	li	s0,0
    80002ba8:	b7dd                	j	80002b8e <OSQCreate+0x94>
    80002baa:	000a3783          	ld	a5,0(s4)
    80002bae:	0007e717          	auipc	a4,0x7e
    80002bb2:	7c873123          	sd	s0,1986(a4) # 80081370 <OSEventFreeList>
    80002bb6:	e41c                	sd	a5,8(s0)
    80002bb8:	352020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002bbc:	4401                	li	s0,0
    80002bbe:	bfc1                	j	80002b8e <OSQCreate+0x94>

0000000080002bc0 <OSQDel>:
    80002bc0:	00054703          	lbu	a4,0(a0)
    80002bc4:	4789                	li	a5,2
    80002bc6:	00f70663          	beq	a4,a5,80002bd2 <OSQDel+0x12>
    80002bca:	4785                	li	a5,1
    80002bcc:	00f60023          	sb	a5,0(a2)
    80002bd0:	8082                	ret
    80002bd2:	0007e797          	auipc	a5,0x7e
    80002bd6:	7a67c783          	lbu	a5,1958(a5) # 80081378 <OSIntNesting>
    80002bda:	c789                	beqz	a5,80002be4 <OSQDel+0x24>
    80002bdc:	47bd                	li	a5,15
    80002bde:	00f60023          	sb	a5,0(a2)
    80002be2:	8082                	ret
    80002be4:	7179                	addi	sp,sp,-48
    80002be6:	f022                	sd	s0,32(sp)
    80002be8:	ec26                	sd	s1,24(sp)
    80002bea:	e84a                	sd	s2,16(sp)
    80002bec:	e44e                	sd	s3,8(sp)
    80002bee:	842a                	mv	s0,a0
    80002bf0:	f406                	sd	ra,40(sp)
    80002bf2:	84b2                	mv	s1,a2
    80002bf4:	892e                	mv	s2,a1
    80002bf6:	30a020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002bfa:	01244783          	lbu	a5,18(s0)
    80002bfe:	89aa                	mv	s3,a0
    80002c00:	c38d                	beqz	a5,80002c22 <OSQDel+0x62>
    80002c02:	08091563          	bnez	s2,80002c8c <OSQDel+0xcc>
    80002c06:	304020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002c0a:	04900793          	li	a5,73
    80002c0e:	00f48023          	sb	a5,0(s1)
    80002c12:	8522                	mv	a0,s0
    80002c14:	70a2                	ld	ra,40(sp)
    80002c16:	7402                	ld	s0,32(sp)
    80002c18:	64e2                	ld	s1,24(sp)
    80002c1a:	6942                	ld	s2,16(sp)
    80002c1c:	69a2                	ld	s3,8(sp)
    80002c1e:	6145                	addi	sp,sp,48
    80002c20:	8082                	ret
    80002c22:	08090663          	beqz	s2,80002cae <OSQDel+0xee>
    80002c26:	4785                	li	a5,1
    80002c28:	04f91a63          	bne	s2,a5,80002c7c <OSQDel+0xbc>
    80002c2c:	4901                	li	s2,0
    80002c2e:	0007e717          	auipc	a4,0x7e
    80002c32:	32a70713          	addi	a4,a4,810 # 80080f58 <OSQFreeList>
    80002c36:	641c                	ld	a5,8(s0)
    80002c38:	6318                	ld	a4,0(a4)
    80002c3a:	0007d697          	auipc	a3,0x7d
    80002c3e:	62668693          	addi	a3,a3,1574 # 80080260 <OSUnMapTbl+0x260>
    80002c42:	f014                	sd	a3,32(s0)
    80002c44:	e398                	sd	a4,0(a5)
    80002c46:	0007e717          	auipc	a4,0x7e
    80002c4a:	30f73923          	sd	a5,786(a4) # 80080f58 <OSQFreeList>
    80002c4e:	00040023          	sb	zero,0(s0)
    80002c52:	0007e797          	auipc	a5,0x7e
    80002c56:	71e78793          	addi	a5,a5,1822 # 80081370 <OSEventFreeList>
    80002c5a:	639c                	ld	a5,0(a5)
    80002c5c:	00041823          	sh	zero,16(s0)
    80002c60:	854e                	mv	a0,s3
    80002c62:	e41c                	sd	a5,8(s0)
    80002c64:	0007e797          	auipc	a5,0x7e
    80002c68:	7087b623          	sd	s0,1804(a5) # 80081370 <OSEventFreeList>
    80002c6c:	29e020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002c70:	02091c63          	bnez	s2,80002ca8 <OSQDel+0xe8>
    80002c74:	00048023          	sb	zero,0(s1)
    80002c78:	4501                	li	a0,0
    80002c7a:	bf69                	j	80002c14 <OSQDel+0x54>
    80002c7c:	854e                	mv	a0,s3
    80002c7e:	28c020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002c82:	479d                	li	a5,7
    80002c84:	00f48023          	sb	a5,0(s1)
    80002c88:	8522                	mv	a0,s0
    80002c8a:	b769                	j	80002c14 <OSQDel+0x54>
    80002c8c:	4785                	li	a5,1
    80002c8e:	fef917e3          	bne	s2,a5,80002c7c <OSQDel+0xbc>
    80002c92:	4905                	li	s2,1
    80002c94:	4681                	li	a3,0
    80002c96:	4611                	li	a2,4
    80002c98:	4581                	li	a1,0
    80002c9a:	8522                	mv	a0,s0
    80002c9c:	c25fd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80002ca0:	01244783          	lbu	a5,18(s0)
    80002ca4:	fbe5                	bnez	a5,80002c94 <OSQDel+0xd4>
    80002ca6:	b761                	j	80002c2e <OSQDel+0x6e>
    80002ca8:	ec3fd0ef          	jal	ra,80000b6a <OS_Sched>
    80002cac:	b7e1                	j	80002c74 <OSQDel+0xb4>
    80002cae:	0007e717          	auipc	a4,0x7e
    80002cb2:	2aa70713          	addi	a4,a4,682 # 80080f58 <OSQFreeList>
    80002cb6:	641c                	ld	a5,8(s0)
    80002cb8:	6318                	ld	a4,0(a4)
    80002cba:	0007d697          	auipc	a3,0x7d
    80002cbe:	5a668693          	addi	a3,a3,1446 # 80080260 <OSUnMapTbl+0x260>
    80002cc2:	f014                	sd	a3,32(s0)
    80002cc4:	e398                	sd	a4,0(a5)
    80002cc6:	0007e717          	auipc	a4,0x7e
    80002cca:	28f73923          	sd	a5,658(a4) # 80080f58 <OSQFreeList>
    80002cce:	00040023          	sb	zero,0(s0)
    80002cd2:	0007e797          	auipc	a5,0x7e
    80002cd6:	69e78793          	addi	a5,a5,1694 # 80081370 <OSEventFreeList>
    80002cda:	639c                	ld	a5,0(a5)
    80002cdc:	00041823          	sh	zero,16(s0)
    80002ce0:	0007e717          	auipc	a4,0x7e
    80002ce4:	68873823          	sd	s0,1680(a4) # 80081370 <OSEventFreeList>
    80002ce8:	e41c                	sd	a5,8(s0)
    80002cea:	220020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002cee:	4501                	li	a0,0
    80002cf0:	00048023          	sb	zero,0(s1)
    80002cf4:	b705                	j	80002c14 <OSQDel+0x54>

0000000080002cf6 <OSQFlush>:
    80002cf6:	1141                	addi	sp,sp,-16
    80002cf8:	e406                	sd	ra,8(sp)
    80002cfa:	e022                	sd	s0,0(sp)
    80002cfc:	842a                	mv	s0,a0
    80002cfe:	202020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002d02:	641c                	ld	a5,8(s0)
    80002d04:	6798                	ld	a4,8(a5)
    80002d06:	02079523          	sh	zero,42(a5)
    80002d0a:	ef98                	sd	a4,24(a5)
    80002d0c:	f398                	sd	a4,32(a5)
    80002d0e:	1fc020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002d12:	60a2                	ld	ra,8(sp)
    80002d14:	6402                	ld	s0,0(sp)
    80002d16:	4501                	li	a0,0
    80002d18:	0141                	addi	sp,sp,16
    80002d1a:	8082                	ret

0000000080002d1c <OSQPend>:
    80002d1c:	7139                	addi	sp,sp,-64
    80002d1e:	fc06                	sd	ra,56(sp)
    80002d20:	f822                	sd	s0,48(sp)
    80002d22:	f426                	sd	s1,40(sp)
    80002d24:	f04a                	sd	s2,32(sp)
    80002d26:	ec4e                	sd	s3,24(sp)
    80002d28:	e852                	sd	s4,16(sp)
    80002d2a:	e456                	sd	s5,8(sp)
    80002d2c:	00054903          	lbu	s2,0(a0)
    80002d30:	4789                	li	a5,2
    80002d32:	0cf91763          	bne	s2,a5,80002e00 <OSQPend+0xe4>
    80002d36:	0007e797          	auipc	a5,0x7e
    80002d3a:	6427c783          	lbu	a5,1602(a5) # 80081378 <OSIntNesting>
    80002d3e:	ebf9                	bnez	a5,80002e14 <OSQPend+0xf8>
    80002d40:	0007d797          	auipc	a5,0x7d
    80002d44:	7087c783          	lbu	a5,1800(a5) # 80080448 <OSLockNesting>
    80002d48:	e3e9                	bnez	a5,80002e0a <OSQPend+0xee>
    80002d4a:	842a                	mv	s0,a0
    80002d4c:	89b2                	mv	s3,a2
    80002d4e:	84ae                	mv	s1,a1
    80002d50:	1b0020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002d54:	641c                	ld	a5,8(s0)
    80002d56:	8a2a                	mv	s4,a0
    80002d58:	02a7d703          	lhu	a4,42(a5)
    80002d5c:	cf0d                	beqz	a4,80002d96 <OSQPend+0x7a>
    80002d5e:	7390                	ld	a2,32(a5)
    80002d60:	6b8c                	ld	a1,16(a5)
    80002d62:	377d                	addiw	a4,a4,-1
    80002d64:	00860693          	addi	a3,a2,8
    80002d68:	f394                	sd	a3,32(a5)
    80002d6a:	6200                	ld	s0,0(a2)
    80002d6c:	02e79523          	sh	a4,42(a5)
    80002d70:	00b69463          	bne	a3,a1,80002d78 <OSQPend+0x5c>
    80002d74:	6798                	ld	a4,8(a5)
    80002d76:	f398                	sd	a4,32(a5)
    80002d78:	8552                	mv	a0,s4
    80002d7a:	190020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002d7e:	00098023          	sb	zero,0(s3)
    80002d82:	8522                	mv	a0,s0
    80002d84:	70e2                	ld	ra,56(sp)
    80002d86:	7442                	ld	s0,48(sp)
    80002d88:	74a2                	ld	s1,40(sp)
    80002d8a:	7902                	ld	s2,32(sp)
    80002d8c:	69e2                	ld	s3,24(sp)
    80002d8e:	6a42                	ld	s4,16(sp)
    80002d90:	6aa2                	ld	s5,8(sp)
    80002d92:	6121                	addi	sp,sp,64
    80002d94:	8082                	ret
    80002d96:	0007ea97          	auipc	s5,0x7e
    80002d9a:	5eaa8a93          	addi	s5,s5,1514 # 80081380 <OSTCBCur>
    80002d9e:	000ab783          	ld	a5,0(s5)
    80002da2:	8522                	mv	a0,s0
    80002da4:	0587c703          	lbu	a4,88(a5)
    80002da8:	04078ca3          	sb	zero,89(a5)
    80002dac:	cbe4                	sw	s1,84(a5)
    80002dae:	00476713          	ori	a4,a4,4
    80002db2:	04e78c23          	sb	a4,88(a5)
    80002db6:	c0dfd0ef          	jal	ra,800009c2 <OS_EventTaskWait>
    80002dba:	8552                	mv	a0,s4
    80002dbc:	14e020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002dc0:	dabfd0ef          	jal	ra,80000b6a <OS_Sched>
    80002dc4:	13c020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002dc8:	000ab783          	ld	a5,0(s5)
    80002dcc:	0597c703          	lbu	a4,89(a5)
    80002dd0:	c705                	beqz	a4,80002df8 <OSQPend+0xdc>
    80002dd2:	05271563          	bne	a4,s2,80002e1c <OSQPend+0x100>
    80002dd6:	47b9                	li	a5,14
    80002dd8:	00f98023          	sb	a5,0(s3)
    80002ddc:	4401                	li	s0,0
    80002dde:	000ab783          	ld	a5,0(s5)
    80002de2:	04079c23          	sh	zero,88(a5)
    80002de6:	0207b823          	sd	zero,48(a5)
    80002dea:	0207bc23          	sd	zero,56(a5)
    80002dee:	0407b023          	sd	zero,64(a5)
    80002df2:	118020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002df6:	b771                	j	80002d82 <OSQPend+0x66>
    80002df8:	63a0                	ld	s0,64(a5)
    80002dfa:	00098023          	sb	zero,0(s3)
    80002dfe:	b7c5                	j	80002dde <OSQPend+0xc2>
    80002e00:	4785                	li	a5,1
    80002e02:	00f60023          	sb	a5,0(a2)
    80002e06:	4401                	li	s0,0
    80002e08:	bfad                	j	80002d82 <OSQPend+0x66>
    80002e0a:	47b5                	li	a5,13
    80002e0c:	00f60023          	sb	a5,0(a2)
    80002e10:	4401                	li	s0,0
    80002e12:	bf85                	j	80002d82 <OSQPend+0x66>
    80002e14:	01260023          	sb	s2,0(a2)
    80002e18:	4401                	li	s0,0
    80002e1a:	b7a5                	j	80002d82 <OSQPend+0x66>
    80002e1c:	05c7c683          	lbu	a3,92(a5)
    80002e20:	05d7c703          	lbu	a4,93(a5)
    80002e24:	96a2                	add	a3,a3,s0
    80002e26:	0136c603          	lbu	a2,19(a3)
    80002e2a:	fff74713          	not	a4,a4
    80002e2e:	8f71                	and	a4,a4,a2
    80002e30:	00e689a3          	sb	a4,19(a3)
    80002e34:	c711                	beqz	a4,80002e40 <OSQPend+0x124>
    80002e36:	47a9                	li	a5,10
    80002e38:	00f98023          	sb	a5,0(s3)
    80002e3c:	4401                	li	s0,0
    80002e3e:	b745                	j	80002dde <OSQPend+0xc2>
    80002e40:	05e7c783          	lbu	a5,94(a5)
    80002e44:	01244703          	lbu	a4,18(s0)
    80002e48:	fff7c793          	not	a5,a5
    80002e4c:	8ff9                	and	a5,a5,a4
    80002e4e:	00f40923          	sb	a5,18(s0)
    80002e52:	b7d5                	j	80002e36 <OSQPend+0x11a>

0000000080002e54 <OSQPendAbort>:
    80002e54:	7179                	addi	sp,sp,-48
    80002e56:	f406                	sd	ra,40(sp)
    80002e58:	f022                	sd	s0,32(sp)
    80002e5a:	ec26                	sd	s1,24(sp)
    80002e5c:	e84a                	sd	s2,16(sp)
    80002e5e:	e44e                	sd	s3,8(sp)
    80002e60:	e052                	sd	s4,0(sp)
    80002e62:	00054703          	lbu	a4,0(a0)
    80002e66:	4789                	li	a5,2
    80002e68:	00f70f63          	beq	a4,a5,80002e86 <OSQPendAbort+0x32>
    80002e6c:	4785                	li	a5,1
    80002e6e:	00f60023          	sb	a5,0(a2)
    80002e72:	4401                	li	s0,0
    80002e74:	8522                	mv	a0,s0
    80002e76:	70a2                	ld	ra,40(sp)
    80002e78:	7402                	ld	s0,32(sp)
    80002e7a:	64e2                	ld	s1,24(sp)
    80002e7c:	6942                	ld	s2,16(sp)
    80002e7e:	69a2                	ld	s3,8(sp)
    80002e80:	6a02                	ld	s4,0(sp)
    80002e82:	6145                	addi	sp,sp,48
    80002e84:	8082                	ret
    80002e86:	84aa                	mv	s1,a0
    80002e88:	8932                	mv	s2,a2
    80002e8a:	89ae                	mv	s3,a1
    80002e8c:	074020ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002e90:	0124c783          	lbu	a5,18(s1)
    80002e94:	8a2a                	mv	s4,a0
    80002e96:	cb95                	beqz	a5,80002eca <OSQPendAbort+0x76>
    80002e98:	4785                	li	a5,1
    80002e9a:	4401                	li	s0,0
    80002e9c:	02f99d63          	bne	s3,a5,80002ed6 <OSQPendAbort+0x82>
    80002ea0:	4689                	li	a3,2
    80002ea2:	4611                	li	a2,4
    80002ea4:	4581                	li	a1,0
    80002ea6:	8526                	mv	a0,s1
    80002ea8:	a19fd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80002eac:	0124c783          	lbu	a5,18(s1)
    80002eb0:	2405                	addiw	s0,s0,1
    80002eb2:	0ff47413          	andi	s0,s0,255
    80002eb6:	f7ed                	bnez	a5,80002ea0 <OSQPendAbort+0x4c>
    80002eb8:	8552                	mv	a0,s4
    80002eba:	050020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002ebe:	cadfd0ef          	jal	ra,80000b6a <OS_Sched>
    80002ec2:	47b9                	li	a5,14
    80002ec4:	00f90023          	sb	a5,0(s2)
    80002ec8:	b775                	j	80002e74 <OSQPendAbort+0x20>
    80002eca:	040020ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002ece:	4401                	li	s0,0
    80002ed0:	00090023          	sb	zero,0(s2)
    80002ed4:	b745                	j	80002e74 <OSQPendAbort+0x20>
    80002ed6:	4689                	li	a3,2
    80002ed8:	4611                	li	a2,4
    80002eda:	4581                	li	a1,0
    80002edc:	8526                	mv	a0,s1
    80002ede:	9e3fd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80002ee2:	4405                	li	s0,1
    80002ee4:	bfd1                	j	80002eb8 <OSQPendAbort+0x64>

0000000080002ee6 <OSQPost>:
    80002ee6:	00054703          	lbu	a4,0(a0)
    80002eea:	4789                	li	a5,2
    80002eec:	00f70463          	beq	a4,a5,80002ef4 <OSQPost+0xe>
    80002ef0:	4505                	li	a0,1
    80002ef2:	8082                	ret
    80002ef4:	1101                	addi	sp,sp,-32
    80002ef6:	e822                	sd	s0,16(sp)
    80002ef8:	e426                	sd	s1,8(sp)
    80002efa:	e04a                	sd	s2,0(sp)
    80002efc:	842a                	mv	s0,a0
    80002efe:	ec06                	sd	ra,24(sp)
    80002f00:	84ae                	mv	s1,a1
    80002f02:	7ff010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002f06:	01244783          	lbu	a5,18(s0)
    80002f0a:	892a                	mv	s2,a0
    80002f0c:	e3a1                	bnez	a5,80002f4c <OSQPost+0x66>
    80002f0e:	641c                	ld	a5,8(s0)
    80002f10:	02a7d683          	lhu	a3,42(a5)
    80002f14:	0287d703          	lhu	a4,40(a5)
    80002f18:	04e6fa63          	bleu	a4,a3,80002f6c <OSQPost+0x86>
    80002f1c:	6f98                	ld	a4,24(a5)
    80002f1e:	00870693          	addi	a3,a4,8
    80002f22:	ef94                	sd	a3,24(a5)
    80002f24:	e304                	sd	s1,0(a4)
    80002f26:	02a7d703          	lhu	a4,42(a5)
    80002f2a:	6f90                	ld	a2,24(a5)
    80002f2c:	6b94                	ld	a3,16(a5)
    80002f2e:	2705                	addiw	a4,a4,1
    80002f30:	02e79523          	sh	a4,42(a5)
    80002f34:	02d60963          	beq	a2,a3,80002f66 <OSQPost+0x80>
    80002f38:	854a                	mv	a0,s2
    80002f3a:	7d1010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002f3e:	4501                	li	a0,0
    80002f40:	60e2                	ld	ra,24(sp)
    80002f42:	6442                	ld	s0,16(sp)
    80002f44:	64a2                	ld	s1,8(sp)
    80002f46:	6902                	ld	s2,0(sp)
    80002f48:	6105                	addi	sp,sp,32
    80002f4a:	8082                	ret
    80002f4c:	4681                	li	a3,0
    80002f4e:	4611                	li	a2,4
    80002f50:	85a6                	mv	a1,s1
    80002f52:	8522                	mv	a0,s0
    80002f54:	96dfd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80002f58:	854a                	mv	a0,s2
    80002f5a:	7b1010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002f5e:	c0dfd0ef          	jal	ra,80000b6a <OS_Sched>
    80002f62:	4501                	li	a0,0
    80002f64:	bff1                	j	80002f40 <OSQPost+0x5a>
    80002f66:	6798                	ld	a4,8(a5)
    80002f68:	ef98                	sd	a4,24(a5)
    80002f6a:	b7f9                	j	80002f38 <OSQPost+0x52>
    80002f6c:	79f010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002f70:	4579                	li	a0,30
    80002f72:	b7f9                	j	80002f40 <OSQPost+0x5a>

0000000080002f74 <OSQPostFront>:
    80002f74:	00054703          	lbu	a4,0(a0)
    80002f78:	4789                	li	a5,2
    80002f7a:	00f70463          	beq	a4,a5,80002f82 <OSQPostFront+0xe>
    80002f7e:	4505                	li	a0,1
    80002f80:	8082                	ret
    80002f82:	1101                	addi	sp,sp,-32
    80002f84:	e822                	sd	s0,16(sp)
    80002f86:	e426                	sd	s1,8(sp)
    80002f88:	e04a                	sd	s2,0(sp)
    80002f8a:	842a                	mv	s0,a0
    80002f8c:	ec06                	sd	ra,24(sp)
    80002f8e:	84ae                	mv	s1,a1
    80002f90:	771010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80002f94:	01244783          	lbu	a5,18(s0)
    80002f98:	892a                	mv	s2,a0
    80002f9a:	e3a1                	bnez	a5,80002fda <OSQPostFront+0x66>
    80002f9c:	641c                	ld	a5,8(s0)
    80002f9e:	02a7d683          	lhu	a3,42(a5)
    80002fa2:	0287d703          	lhu	a4,40(a5)
    80002fa6:	04e6f963          	bleu	a4,a3,80002ff8 <OSQPostFront+0x84>
    80002faa:	7398                	ld	a4,32(a5)
    80002fac:	6794                	ld	a3,8(a5)
    80002fae:	04d70363          	beq	a4,a3,80002ff4 <OSQPostFront+0x80>
    80002fb2:	ff870693          	addi	a3,a4,-8
    80002fb6:	f394                	sd	a3,32(a5)
    80002fb8:	fe973c23          	sd	s1,-8(a4)
    80002fbc:	02a7d703          	lhu	a4,42(a5)
    80002fc0:	854a                	mv	a0,s2
    80002fc2:	2705                	addiw	a4,a4,1
    80002fc4:	02e79523          	sh	a4,42(a5)
    80002fc8:	743010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002fcc:	4501                	li	a0,0
    80002fce:	60e2                	ld	ra,24(sp)
    80002fd0:	6442                	ld	s0,16(sp)
    80002fd2:	64a2                	ld	s1,8(sp)
    80002fd4:	6902                	ld	s2,0(sp)
    80002fd6:	6105                	addi	sp,sp,32
    80002fd8:	8082                	ret
    80002fda:	4681                	li	a3,0
    80002fdc:	4611                	li	a2,4
    80002fde:	85a6                	mv	a1,s1
    80002fe0:	8522                	mv	a0,s0
    80002fe2:	8dffd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80002fe6:	854a                	mv	a0,s2
    80002fe8:	723010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002fec:	b7ffd0ef          	jal	ra,80000b6a <OS_Sched>
    80002ff0:	4501                	li	a0,0
    80002ff2:	bff1                	j	80002fce <OSQPostFront+0x5a>
    80002ff4:	6b98                	ld	a4,16(a5)
    80002ff6:	bf75                	j	80002fb2 <OSQPostFront+0x3e>
    80002ff8:	713010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80002ffc:	4579                	li	a0,30
    80002ffe:	bfc1                	j	80002fce <OSQPostFront+0x5a>

0000000080003000 <OSQPostOpt>:
    80003000:	7179                	addi	sp,sp,-48
    80003002:	f022                	sd	s0,32(sp)
    80003004:	f406                	sd	ra,40(sp)
    80003006:	ec26                	sd	s1,24(sp)
    80003008:	e84a                	sd	s2,16(sp)
    8000300a:	e44e                	sd	s3,8(sp)
    8000300c:	00054703          	lbu	a4,0(a0)
    80003010:	4789                	li	a5,2
    80003012:	4405                	li	s0,1
    80003014:	00f70a63          	beq	a4,a5,80003028 <OSQPostOpt+0x28>
    80003018:	8522                	mv	a0,s0
    8000301a:	70a2                	ld	ra,40(sp)
    8000301c:	7402                	ld	s0,32(sp)
    8000301e:	64e2                	ld	s1,24(sp)
    80003020:	6942                	ld	s2,16(sp)
    80003022:	69a2                	ld	s3,8(sp)
    80003024:	6145                	addi	sp,sp,48
    80003026:	8082                	ret
    80003028:	842a                	mv	s0,a0
    8000302a:	84b2                	mv	s1,a2
    8000302c:	892e                	mv	s2,a1
    8000302e:	6d3010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003032:	01244783          	lbu	a5,18(s0)
    80003036:	89aa                	mv	s3,a0
    80003038:	c79d                	beqz	a5,80003066 <OSQPostOpt+0x66>
    8000303a:	0014f793          	andi	a5,s1,1
    8000303e:	cfa5                	beqz	a5,800030b6 <OSQPostOpt+0xb6>
    80003040:	4681                	li	a3,0
    80003042:	4611                	li	a2,4
    80003044:	85ca                	mv	a1,s2
    80003046:	8522                	mv	a0,s0
    80003048:	879fd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    8000304c:	01244783          	lbu	a5,18(s0)
    80003050:	fbe5                	bnez	a5,80003040 <OSQPostOpt+0x40>
    80003052:	854e                	mv	a0,s3
    80003054:	6b7010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003058:	0044f613          	andi	a2,s1,4
    8000305c:	4401                	li	s0,0
    8000305e:	fe4d                	bnez	a2,80003018 <OSQPostOpt+0x18>
    80003060:	b0bfd0ef          	jal	ra,80000b6a <OS_Sched>
    80003064:	bf55                	j	80003018 <OSQPostOpt+0x18>
    80003066:	641c                	ld	a5,8(s0)
    80003068:	02a7d683          	lhu	a3,42(a5)
    8000306c:	0287d703          	lhu	a4,40(a5)
    80003070:	04e6fa63          	bleu	a4,a3,800030c4 <OSQPostOpt+0xc4>
    80003074:	0024f613          	andi	a2,s1,2
    80003078:	ca19                	beqz	a2,8000308e <OSQPostOpt+0x8e>
    8000307a:	7398                	ld	a4,32(a5)
    8000307c:	6794                	ld	a3,8(a5)
    8000307e:	04d70763          	beq	a4,a3,800030cc <OSQPostOpt+0xcc>
    80003082:	ff870693          	addi	a3,a4,-8
    80003086:	f394                	sd	a3,32(a5)
    80003088:	ff273c23          	sd	s2,-8(a4)
    8000308c:	a819                	j	800030a2 <OSQPostOpt+0xa2>
    8000308e:	6f98                	ld	a4,24(a5)
    80003090:	00870693          	addi	a3,a4,8
    80003094:	ef94                	sd	a3,24(a5)
    80003096:	01273023          	sd	s2,0(a4)
    8000309a:	6f94                	ld	a3,24(a5)
    8000309c:	6b98                	ld	a4,16(a5)
    8000309e:	02e68963          	beq	a3,a4,800030d0 <OSQPostOpt+0xd0>
    800030a2:	02a7d703          	lhu	a4,42(a5)
    800030a6:	854e                	mv	a0,s3
    800030a8:	4401                	li	s0,0
    800030aa:	2705                	addiw	a4,a4,1
    800030ac:	02e79523          	sh	a4,42(a5)
    800030b0:	65b010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800030b4:	b795                	j	80003018 <OSQPostOpt+0x18>
    800030b6:	4681                	li	a3,0
    800030b8:	4611                	li	a2,4
    800030ba:	85ca                	mv	a1,s2
    800030bc:	8522                	mv	a0,s0
    800030be:	803fd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    800030c2:	bf41                	j	80003052 <OSQPostOpt+0x52>
    800030c4:	647010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800030c8:	4479                	li	s0,30
    800030ca:	b7b9                	j	80003018 <OSQPostOpt+0x18>
    800030cc:	6b98                	ld	a4,16(a5)
    800030ce:	bf55                	j	80003082 <OSQPostOpt+0x82>
    800030d0:	6798                	ld	a4,8(a5)
    800030d2:	ef98                	sd	a4,24(a5)
    800030d4:	b7f9                	j	800030a2 <OSQPostOpt+0xa2>

00000000800030d6 <OSQQuery>:
    800030d6:	00054703          	lbu	a4,0(a0)
    800030da:	4789                	li	a5,2
    800030dc:	00f70463          	beq	a4,a5,800030e4 <OSQQuery+0xe>
    800030e0:	4505                	li	a0,1
    800030e2:	8082                	ret
    800030e4:	1101                	addi	sp,sp,-32
    800030e6:	e822                	sd	s0,16(sp)
    800030e8:	e426                	sd	s1,8(sp)
    800030ea:	842a                	mv	s0,a0
    800030ec:	84ae                	mv	s1,a1
    800030ee:	ec06                	sd	ra,24(sp)
    800030f0:	611010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800030f4:	01244683          	lbu	a3,18(s0)
    800030f8:	01340793          	addi	a5,s0,19
    800030fc:	00c48713          	addi	a4,s1,12
    80003100:	00d48a23          	sb	a3,20(s1)
    80003104:	01b40613          	addi	a2,s0,27
    80003108:	0785                	addi	a5,a5,1
    8000310a:	fff7c683          	lbu	a3,-1(a5)
    8000310e:	0705                	addi	a4,a4,1
    80003110:	fed70fa3          	sb	a3,-1(a4)
    80003114:	fef61ae3          	bne	a2,a5,80003108 <OSQQuery+0x32>
    80003118:	641c                	ld	a5,8(s0)
    8000311a:	02a7d703          	lhu	a4,42(a5)
    8000311e:	e31d                	bnez	a4,80003144 <OSQQuery+0x6e>
    80003120:	0004b023          	sd	zero,0(s1)
    80003124:	02a7d703          	lhu	a4,42(a5)
    80003128:	00e49423          	sh	a4,8(s1)
    8000312c:	0287d783          	lhu	a5,40(a5)
    80003130:	00f49523          	sh	a5,10(s1)
    80003134:	5d7010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003138:	60e2                	ld	ra,24(sp)
    8000313a:	6442                	ld	s0,16(sp)
    8000313c:	64a2                	ld	s1,8(sp)
    8000313e:	4501                	li	a0,0
    80003140:	6105                	addi	sp,sp,32
    80003142:	8082                	ret
    80003144:	7398                	ld	a4,32(a5)
    80003146:	6318                	ld	a4,0(a4)
    80003148:	e098                	sd	a4,0(s1)
    8000314a:	bfe9                	j	80003124 <OSQQuery+0x4e>

000000008000314c <OS_QInit>:
    8000314c:	0007e697          	auipc	a3,0x7e
    80003150:	d4468693          	addi	a3,a3,-700 # 80080e90 <OSQTbl>
    80003154:	87b6                	mv	a5,a3
    80003156:	0007e717          	auipc	a4,0x7e
    8000315a:	dfa70713          	addi	a4,a4,-518 # 80080f50 <OSTCBHighRdy>
    8000315e:	0785                	addi	a5,a5,1
    80003160:	fe078fa3          	sb	zero,-1(a5)
    80003164:	fee79de3          	bne	a5,a4,8000315e <OS_QInit+0x12>
    80003168:	0007e797          	auipc	a5,0x7e
    8000316c:	d5878793          	addi	a5,a5,-680 # 80080ec0 <OSQTbl+0x30>
    80003170:	0007e717          	auipc	a4,0x7e
    80003174:	d2f73023          	sd	a5,-736(a4) # 80080e90 <OSQTbl>
    80003178:	0007e797          	auipc	a5,0x7e
    8000317c:	d7878793          	addi	a5,a5,-648 # 80080ef0 <OSQTbl+0x60>
    80003180:	0007e717          	auipc	a4,0x7e
    80003184:	d4f73023          	sd	a5,-704(a4) # 80080ec0 <OSQTbl+0x30>
    80003188:	0007e797          	auipc	a5,0x7e
    8000318c:	d9878793          	addi	a5,a5,-616 # 80080f20 <OSQTbl+0x90>
    80003190:	0007e717          	auipc	a4,0x7e
    80003194:	d6f73023          	sd	a5,-672(a4) # 80080ef0 <OSQTbl+0x60>
    80003198:	0007e797          	auipc	a5,0x7e
    8000319c:	d807b423          	sd	zero,-632(a5) # 80080f20 <OSQTbl+0x90>
    800031a0:	0007e797          	auipc	a5,0x7e
    800031a4:	dad7bc23          	sd	a3,-584(a5) # 80080f58 <OSQFreeList>
    800031a8:	8082                	ret

00000000800031aa <OSSemAccept>:
    800031aa:	1101                	addi	sp,sp,-32
    800031ac:	e426                	sd	s1,8(sp)
    800031ae:	ec06                	sd	ra,24(sp)
    800031b0:	e822                	sd	s0,16(sp)
    800031b2:	00054703          	lbu	a4,0(a0)
    800031b6:	478d                	li	a5,3
    800031b8:	4481                	li	s1,0
    800031ba:	00f70863          	beq	a4,a5,800031ca <OSSemAccept+0x20>
    800031be:	60e2                	ld	ra,24(sp)
    800031c0:	6442                	ld	s0,16(sp)
    800031c2:	8526                	mv	a0,s1
    800031c4:	64a2                	ld	s1,8(sp)
    800031c6:	6105                	addi	sp,sp,32
    800031c8:	8082                	ret
    800031ca:	842a                	mv	s0,a0
    800031cc:	535010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800031d0:	01045483          	lhu	s1,16(s0)
    800031d4:	c489                	beqz	s1,800031de <OSSemAccept+0x34>
    800031d6:	fff4879b          	addiw	a5,s1,-1
    800031da:	00f41823          	sh	a5,16(s0)
    800031de:	52d010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800031e2:	60e2                	ld	ra,24(sp)
    800031e4:	6442                	ld	s0,16(sp)
    800031e6:	8526                	mv	a0,s1
    800031e8:	64a2                	ld	s1,8(sp)
    800031ea:	6105                	addi	sp,sp,32
    800031ec:	8082                	ret

00000000800031ee <OSSemCreate>:
    800031ee:	1101                	addi	sp,sp,-32
    800031f0:	ec06                	sd	ra,24(sp)
    800031f2:	e822                	sd	s0,16(sp)
    800031f4:	e426                	sd	s1,8(sp)
    800031f6:	0007e797          	auipc	a5,0x7e
    800031fa:	1827c783          	lbu	a5,386(a5) # 80081378 <OSIntNesting>
    800031fe:	e7ad                	bnez	a5,80003268 <OSSemCreate+0x7a>
    80003200:	84aa                	mv	s1,a0
    80003202:	4ff010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003206:	0007e797          	auipc	a5,0x7e
    8000320a:	16a78793          	addi	a5,a5,362 # 80081370 <OSEventFreeList>
    8000320e:	6380                	ld	s0,0(a5)
    80003210:	c421                	beqz	s0,80003258 <OSSemCreate+0x6a>
    80003212:	641c                	ld	a5,8(s0)
    80003214:	0007e717          	auipc	a4,0x7e
    80003218:	14f73e23          	sd	a5,348(a4) # 80081370 <OSEventFreeList>
    8000321c:	4ef010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003220:	478d                	li	a5,3
    80003222:	00f40023          	sb	a5,0(s0)
    80003226:	0007d797          	auipc	a5,0x7d
    8000322a:	03a78793          	addi	a5,a5,58 # 80080260 <OSUnMapTbl+0x260>
    8000322e:	00941823          	sh	s1,16(s0)
    80003232:	00043423          	sd	zero,8(s0)
    80003236:	f01c                	sd	a5,32(s0)
    80003238:	00041923          	sh	zero,18(s0)
    8000323c:	00041a23          	sh	zero,20(s0)
    80003240:	00041b23          	sh	zero,22(s0)
    80003244:	00041c23          	sh	zero,24(s0)
    80003248:	00040d23          	sb	zero,26(s0)
    8000324c:	8522                	mv	a0,s0
    8000324e:	60e2                	ld	ra,24(sp)
    80003250:	6442                	ld	s0,16(sp)
    80003252:	64a2                	ld	s1,8(sp)
    80003254:	6105                	addi	sp,sp,32
    80003256:	8082                	ret
    80003258:	4b3010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000325c:	8522                	mv	a0,s0
    8000325e:	60e2                	ld	ra,24(sp)
    80003260:	6442                	ld	s0,16(sp)
    80003262:	64a2                	ld	s1,8(sp)
    80003264:	6105                	addi	sp,sp,32
    80003266:	8082                	ret
    80003268:	4401                	li	s0,0
    8000326a:	8522                	mv	a0,s0
    8000326c:	60e2                	ld	ra,24(sp)
    8000326e:	6442                	ld	s0,16(sp)
    80003270:	64a2                	ld	s1,8(sp)
    80003272:	6105                	addi	sp,sp,32
    80003274:	8082                	ret

0000000080003276 <OSSemDel>:
    80003276:	00054703          	lbu	a4,0(a0)
    8000327a:	478d                	li	a5,3
    8000327c:	00f70663          	beq	a4,a5,80003288 <OSSemDel+0x12>
    80003280:	4785                	li	a5,1
    80003282:	00f60023          	sb	a5,0(a2)
    80003286:	8082                	ret
    80003288:	0007e797          	auipc	a5,0x7e
    8000328c:	0f07c783          	lbu	a5,240(a5) # 80081378 <OSIntNesting>
    80003290:	c789                	beqz	a5,8000329a <OSSemDel+0x24>
    80003292:	47bd                	li	a5,15
    80003294:	00f60023          	sb	a5,0(a2)
    80003298:	8082                	ret
    8000329a:	7179                	addi	sp,sp,-48
    8000329c:	f022                	sd	s0,32(sp)
    8000329e:	ec26                	sd	s1,24(sp)
    800032a0:	e84a                	sd	s2,16(sp)
    800032a2:	e44e                	sd	s3,8(sp)
    800032a4:	842a                	mv	s0,a0
    800032a6:	f406                	sd	ra,40(sp)
    800032a8:	84b2                	mv	s1,a2
    800032aa:	892e                	mv	s2,a1
    800032ac:	455010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800032b0:	01244783          	lbu	a5,18(s0)
    800032b4:	89aa                	mv	s3,a0
    800032b6:	c38d                	beqz	a5,800032d8 <OSSemDel+0x62>
    800032b8:	06091a63          	bnez	s2,8000332c <OSSemDel+0xb6>
    800032bc:	44f010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800032c0:	04900793          	li	a5,73
    800032c4:	00f48023          	sb	a5,0(s1)
    800032c8:	8522                	mv	a0,s0
    800032ca:	70a2                	ld	ra,40(sp)
    800032cc:	7402                	ld	s0,32(sp)
    800032ce:	64e2                	ld	s1,24(sp)
    800032d0:	6942                	ld	s2,16(sp)
    800032d2:	69a2                	ld	s3,8(sp)
    800032d4:	6145                	addi	sp,sp,48
    800032d6:	8082                	ret
    800032d8:	06090b63          	beqz	s2,8000334e <OSSemDel+0xd8>
    800032dc:	4785                	li	a5,1
    800032de:	02f91f63          	bne	s2,a5,8000331c <OSSemDel+0xa6>
    800032e2:	4901                	li	s2,0
    800032e4:	00040023          	sb	zero,0(s0)
    800032e8:	0007e797          	auipc	a5,0x7e
    800032ec:	08878793          	addi	a5,a5,136 # 80081370 <OSEventFreeList>
    800032f0:	639c                	ld	a5,0(a5)
    800032f2:	0007d717          	auipc	a4,0x7d
    800032f6:	f6e70713          	addi	a4,a4,-146 # 80080260 <OSUnMapTbl+0x260>
    800032fa:	f018                	sd	a4,32(s0)
    800032fc:	e41c                	sd	a5,8(s0)
    800032fe:	00041823          	sh	zero,16(s0)
    80003302:	854e                	mv	a0,s3
    80003304:	0007e797          	auipc	a5,0x7e
    80003308:	0687b623          	sd	s0,108(a5) # 80081370 <OSEventFreeList>
    8000330c:	3ff010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003310:	02091c63          	bnez	s2,80003348 <OSSemDel+0xd2>
    80003314:	00048023          	sb	zero,0(s1)
    80003318:	4501                	li	a0,0
    8000331a:	bf45                	j	800032ca <OSSemDel+0x54>
    8000331c:	854e                	mv	a0,s3
    8000331e:	3ed010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003322:	479d                	li	a5,7
    80003324:	00f48023          	sb	a5,0(s1)
    80003328:	8522                	mv	a0,s0
    8000332a:	b745                	j	800032ca <OSSemDel+0x54>
    8000332c:	4785                	li	a5,1
    8000332e:	fef917e3          	bne	s2,a5,8000331c <OSSemDel+0xa6>
    80003332:	4905                	li	s2,1
    80003334:	4681                	li	a3,0
    80003336:	4605                	li	a2,1
    80003338:	4581                	li	a1,0
    8000333a:	8522                	mv	a0,s0
    8000333c:	d84fd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80003340:	01244783          	lbu	a5,18(s0)
    80003344:	fbe5                	bnez	a5,80003334 <OSSemDel+0xbe>
    80003346:	bf79                	j	800032e4 <OSSemDel+0x6e>
    80003348:	823fd0ef          	jal	ra,80000b6a <OS_Sched>
    8000334c:	b7e1                	j	80003314 <OSSemDel+0x9e>
    8000334e:	00040023          	sb	zero,0(s0)
    80003352:	0007e797          	auipc	a5,0x7e
    80003356:	01e78793          	addi	a5,a5,30 # 80081370 <OSEventFreeList>
    8000335a:	639c                	ld	a5,0(a5)
    8000335c:	0007d717          	auipc	a4,0x7d
    80003360:	f0470713          	addi	a4,a4,-252 # 80080260 <OSUnMapTbl+0x260>
    80003364:	f018                	sd	a4,32(s0)
    80003366:	e41c                	sd	a5,8(s0)
    80003368:	00041823          	sh	zero,16(s0)
    8000336c:	0007e797          	auipc	a5,0x7e
    80003370:	0087b223          	sd	s0,4(a5) # 80081370 <OSEventFreeList>
    80003374:	397010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003378:	4501                	li	a0,0
    8000337a:	00048023          	sb	zero,0(s1)
    8000337e:	b7b1                	j	800032ca <OSSemDel+0x54>

0000000080003380 <OSSemPend>:
    80003380:	00054703          	lbu	a4,0(a0)
    80003384:	478d                	li	a5,3
    80003386:	00f70663          	beq	a4,a5,80003392 <OSSemPend+0x12>
    8000338a:	4785                	li	a5,1
    8000338c:	00f60023          	sb	a5,0(a2)
    80003390:	8082                	ret
    80003392:	0007e797          	auipc	a5,0x7e
    80003396:	fe67c783          	lbu	a5,-26(a5) # 80081378 <OSIntNesting>
    8000339a:	e3c5                	bnez	a5,8000343a <OSSemPend+0xba>
    8000339c:	0007d797          	auipc	a5,0x7d
    800033a0:	0ac7c783          	lbu	a5,172(a5) # 80080448 <OSLockNesting>
    800033a4:	c789                	beqz	a5,800033ae <OSSemPend+0x2e>
    800033a6:	47b5                	li	a5,13
    800033a8:	00f60023          	sb	a5,0(a2)
    800033ac:	8082                	ret
    800033ae:	7179                	addi	sp,sp,-48
    800033b0:	f022                	sd	s0,32(sp)
    800033b2:	ec26                	sd	s1,24(sp)
    800033b4:	e84a                	sd	s2,16(sp)
    800033b6:	e052                	sd	s4,0(sp)
    800033b8:	842a                	mv	s0,a0
    800033ba:	f406                	sd	ra,40(sp)
    800033bc:	e44e                	sd	s3,8(sp)
    800033be:	84b2                	mv	s1,a2
    800033c0:	892e                	mv	s2,a1
    800033c2:	33f010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800033c6:	01045783          	lhu	a5,16(s0)
    800033ca:	8a2a                	mv	s4,a0
    800033cc:	ebbd                	bnez	a5,80003442 <OSSemPend+0xc2>
    800033ce:	0007e997          	auipc	s3,0x7e
    800033d2:	fb298993          	addi	s3,s3,-78 # 80081380 <OSTCBCur>
    800033d6:	0009b783          	ld	a5,0(s3)
    800033da:	8522                	mv	a0,s0
    800033dc:	0587c703          	lbu	a4,88(a5)
    800033e0:	04078ca3          	sb	zero,89(a5)
    800033e4:	0527aa23          	sw	s2,84(a5)
    800033e8:	00176713          	ori	a4,a4,1
    800033ec:	04e78c23          	sb	a4,88(a5)
    800033f0:	dd2fd0ef          	jal	ra,800009c2 <OS_EventTaskWait>
    800033f4:	8552                	mv	a0,s4
    800033f6:	315010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800033fa:	f70fd0ef          	jal	ra,80000b6a <OS_Sched>
    800033fe:	303010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003402:	0009b783          	ld	a5,0(s3)
    80003406:	0597c703          	lbu	a4,89(a5)
    8000340a:	cf25                	beqz	a4,80003482 <OSSemPend+0x102>
    8000340c:	4689                	li	a3,2
    8000340e:	04d71963          	bne	a4,a3,80003460 <OSSemPend+0xe0>
    80003412:	47b9                	li	a5,14
    80003414:	00f48023          	sb	a5,0(s1)
    80003418:	0009b783          	ld	a5,0(s3)
    8000341c:	04079c23          	sh	zero,88(a5)
    80003420:	0207b823          	sd	zero,48(a5)
    80003424:	0207bc23          	sd	zero,56(a5)
    80003428:	7402                	ld	s0,32(sp)
    8000342a:	70a2                	ld	ra,40(sp)
    8000342c:	64e2                	ld	s1,24(sp)
    8000342e:	6942                	ld	s2,16(sp)
    80003430:	69a2                	ld	s3,8(sp)
    80003432:	6a02                	ld	s4,0(sp)
    80003434:	6145                	addi	sp,sp,48
    80003436:	2d50106f          	j	80004f0a <OS_CPU_SR_Restore>
    8000343a:	4789                	li	a5,2
    8000343c:	00f60023          	sb	a5,0(a2)
    80003440:	8082                	ret
    80003442:	37fd                	addiw	a5,a5,-1
    80003444:	00f41823          	sh	a5,16(s0)
    80003448:	2c3010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000344c:	00048023          	sb	zero,0(s1)
    80003450:	70a2                	ld	ra,40(sp)
    80003452:	7402                	ld	s0,32(sp)
    80003454:	64e2                	ld	s1,24(sp)
    80003456:	6942                	ld	s2,16(sp)
    80003458:	69a2                	ld	s3,8(sp)
    8000345a:	6a02                	ld	s4,0(sp)
    8000345c:	6145                	addi	sp,sp,48
    8000345e:	8082                	ret
    80003460:	05c7c683          	lbu	a3,92(a5)
    80003464:	05d7c703          	lbu	a4,93(a5)
    80003468:	96a2                	add	a3,a3,s0
    8000346a:	0136c603          	lbu	a2,19(a3)
    8000346e:	fff74713          	not	a4,a4
    80003472:	8f71                	and	a4,a4,a2
    80003474:	00e689a3          	sb	a4,19(a3)
    80003478:	cb01                	beqz	a4,80003488 <OSSemPend+0x108>
    8000347a:	47a9                	li	a5,10
    8000347c:	00f48023          	sb	a5,0(s1)
    80003480:	bf61                	j	80003418 <OSSemPend+0x98>
    80003482:	00048023          	sb	zero,0(s1)
    80003486:	bf49                	j	80003418 <OSSemPend+0x98>
    80003488:	05e7c783          	lbu	a5,94(a5)
    8000348c:	01244703          	lbu	a4,18(s0)
    80003490:	fff7c793          	not	a5,a5
    80003494:	8ff9                	and	a5,a5,a4
    80003496:	00f40923          	sb	a5,18(s0)
    8000349a:	b7c5                	j	8000347a <OSSemPend+0xfa>

000000008000349c <OSTmr_Task>:
    8000349c:	7159                	addi	sp,sp,-112
    8000349e:	e8ca                	sd	s2,80(sp)
    800034a0:	e4ce                	sd	s3,72(sp)
    800034a2:	e0d2                	sd	s4,64(sp)
    800034a4:	fc56                	sd	s5,56(sp)
    800034a6:	f85a                	sd	s6,48(sp)
    800034a8:	f45e                	sd	s7,40(sp)
    800034aa:	f062                	sd	s8,32(sp)
    800034ac:	ec66                	sd	s9,24(sp)
    800034ae:	f486                	sd	ra,104(sp)
    800034b0:	f0a2                	sd	s0,96(sp)
    800034b2:	eca6                	sd	s1,88(sp)
    800034b4:	0007db97          	auipc	s7,0x7d
    800034b8:	f9cb8b93          	addi	s7,s7,-100 # 80080450 <OSTmrSemSignal>
    800034bc:	0007da17          	auipc	s4,0x7d
    800034c0:	f9ca0a13          	addi	s4,s4,-100 # 80080458 <OSRunning>
    800034c4:	0007e917          	auipc	s2,0x7e
    800034c8:	ec490913          	addi	s2,s2,-316 # 80081388 <OSTmrTime>
    800034cc:	0007db17          	auipc	s6,0x7d
    800034d0:	efcb0b13          	addi	s6,s6,-260 # 800803c8 <OSTmrWheelTbl>
    800034d4:	4985                	li	s3,1
    800034d6:	4a89                	li	s5,2
    800034d8:	4c0d                	li	s8,3
    800034da:	4c85                	li	s9,1
    800034dc:	000bb503          	ld	a0,0(s7)
    800034e0:	00f10613          	addi	a2,sp,15
    800034e4:	4581                	li	a1,0
    800034e6:	e9bff0ef          	jal	ra,80003380 <OSSemPend>
    800034ea:	000a4783          	lbu	a5,0(s4)
    800034ee:	07378c63          	beq	a5,s3,80003566 <OSTmr_Task+0xca>
    800034f2:	00092683          	lw	a3,0(s2)
    800034f6:	0016879b          	addiw	a5,a3,1
    800034fa:	0077f713          	andi	a4,a5,7
    800034fe:	0712                	slli	a4,a4,0x4
    80003500:	975a                	add	a4,a4,s6
    80003502:	6300                	ld	s0,0(a4)
    80003504:	0007e717          	auipc	a4,0x7e
    80003508:	e8f72223          	sw	a5,-380(a4) # 80081388 <OSTmrTime>
    8000350c:	cc05                	beqz	s0,80003544 <OSTmr_Task+0xa8>
    8000350e:	5418                	lw	a4,40(s0)
    80003510:	6c04                	ld	s1,24(s0)
    80003512:	00f70a63          	beq	a4,a5,80003526 <OSTmr_Task+0x8a>
    80003516:	c49d                	beqz	s1,80003544 <OSTmr_Task+0xa8>
    80003518:	8426                	mv	s0,s1
    8000351a:	00092783          	lw	a5,0(s2)
    8000351e:	5418                	lw	a4,40(s0)
    80003520:	6c04                	ld	s1,24(s0)
    80003522:	fef71ae3          	bne	a4,a5,80003516 <OSTmr_Task+0x7a>
    80003526:	8522                	mv	a0,s0
    80003528:	eabfc0ef          	jal	ra,800003d2 <OSTmr_Unlink>
    8000352c:	04044783          	lbu	a5,64(s0)
    80003530:	03578e63          	beq	a5,s5,8000356c <OSTmr_Task+0xd0>
    80003534:	055400a3          	sb	s5,65(s0)
    80003538:	641c                	ld	a5,8(s0)
    8000353a:	dff1                	beqz	a5,80003516 <OSTmr_Task+0x7a>
    8000353c:	680c                	ld	a1,16(s0)
    8000353e:	8522                	mv	a0,s0
    80003540:	9782                	jalr	a5
    80003542:	f8f9                	bnez	s1,80003518 <OSTmr_Task+0x7c>
    80003544:	000a4783          	lbu	a5,0(s4)
    80003548:	f9379ae3          	bne	a5,s3,800034dc <OSTmr_Task+0x40>
    8000354c:	9affd0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    80003550:	000bb503          	ld	a0,0(s7)
    80003554:	00f10613          	addi	a2,sp,15
    80003558:	4581                	li	a1,0
    8000355a:	e27ff0ef          	jal	ra,80003380 <OSSemPend>
    8000355e:	000a4783          	lbu	a5,0(s4)
    80003562:	f93798e3          	bne	a5,s3,800034f2 <OSTmr_Task+0x56>
    80003566:	ee1fc0ef          	jal	ra,80000446 <OSSchedLock.part.1>
    8000356a:	b761                	j	800034f2 <OSTmr_Task+0x56>
    8000356c:	5818                	lw	a4,48(s0)
    8000356e:	00092783          	lw	a5,0(s2)
    80003572:	058400a3          	sb	s8,65(s0)
    80003576:	9f3d                	addw	a4,a4,a5
    80003578:	00777793          	andi	a5,a4,7
    8000357c:	0792                	slli	a5,a5,0x4
    8000357e:	d418                	sw	a4,40(s0)
    80003580:	97da                	add	a5,a5,s6
    80003582:	6398                	ld	a4,0(a5)
    80003584:	e380                	sd	s0,0(a5)
    80003586:	cb19                	beqz	a4,8000359c <OSTmr_Task+0x100>
    80003588:	ec18                	sd	a4,24(s0)
    8000358a:	f300                	sd	s0,32(a4)
    8000358c:	0087d703          	lhu	a4,8(a5)
    80003590:	2705                	addiw	a4,a4,1
    80003592:	00e79423          	sh	a4,8(a5)
    80003596:	02043023          	sd	zero,32(s0)
    8000359a:	bf79                	j	80003538 <OSTmr_Task+0x9c>
    8000359c:	00043c23          	sd	zero,24(s0)
    800035a0:	01979423          	sh	s9,8(a5)
    800035a4:	02043023          	sd	zero,32(s0)
    800035a8:	bf41                	j	80003538 <OSTmr_Task+0x9c>

00000000800035aa <OSSemPendAbort>:
    800035aa:	7179                	addi	sp,sp,-48
    800035ac:	f406                	sd	ra,40(sp)
    800035ae:	f022                	sd	s0,32(sp)
    800035b0:	ec26                	sd	s1,24(sp)
    800035b2:	e84a                	sd	s2,16(sp)
    800035b4:	e44e                	sd	s3,8(sp)
    800035b6:	e052                	sd	s4,0(sp)
    800035b8:	00054703          	lbu	a4,0(a0)
    800035bc:	478d                	li	a5,3
    800035be:	00f70f63          	beq	a4,a5,800035dc <OSSemPendAbort+0x32>
    800035c2:	4785                	li	a5,1
    800035c4:	00f60023          	sb	a5,0(a2)
    800035c8:	4401                	li	s0,0
    800035ca:	8522                	mv	a0,s0
    800035cc:	70a2                	ld	ra,40(sp)
    800035ce:	7402                	ld	s0,32(sp)
    800035d0:	64e2                	ld	s1,24(sp)
    800035d2:	6942                	ld	s2,16(sp)
    800035d4:	69a2                	ld	s3,8(sp)
    800035d6:	6a02                	ld	s4,0(sp)
    800035d8:	6145                	addi	sp,sp,48
    800035da:	8082                	ret
    800035dc:	84aa                	mv	s1,a0
    800035de:	8932                	mv	s2,a2
    800035e0:	89ae                	mv	s3,a1
    800035e2:	11f010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800035e6:	0124c783          	lbu	a5,18(s1)
    800035ea:	8a2a                	mv	s4,a0
    800035ec:	cb95                	beqz	a5,80003620 <OSSemPendAbort+0x76>
    800035ee:	4785                	li	a5,1
    800035f0:	4401                	li	s0,0
    800035f2:	02f99d63          	bne	s3,a5,8000362c <OSSemPendAbort+0x82>
    800035f6:	4689                	li	a3,2
    800035f8:	4605                	li	a2,1
    800035fa:	4581                	li	a1,0
    800035fc:	8526                	mv	a0,s1
    800035fe:	ac2fd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80003602:	0124c783          	lbu	a5,18(s1)
    80003606:	2405                	addiw	s0,s0,1
    80003608:	0ff47413          	andi	s0,s0,255
    8000360c:	f7ed                	bnez	a5,800035f6 <OSSemPendAbort+0x4c>
    8000360e:	8552                	mv	a0,s4
    80003610:	0fb010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003614:	d56fd0ef          	jal	ra,80000b6a <OS_Sched>
    80003618:	47b9                	li	a5,14
    8000361a:	00f90023          	sb	a5,0(s2)
    8000361e:	b775                	j	800035ca <OSSemPendAbort+0x20>
    80003620:	0eb010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003624:	4401                	li	s0,0
    80003626:	00090023          	sb	zero,0(s2)
    8000362a:	b745                	j	800035ca <OSSemPendAbort+0x20>
    8000362c:	4689                	li	a3,2
    8000362e:	4605                	li	a2,1
    80003630:	4581                	li	a1,0
    80003632:	8526                	mv	a0,s1
    80003634:	a8cfd0ef          	jal	ra,800008c0 <OS_EventTaskRdy>
    80003638:	4405                	li	s0,1
    8000363a:	bfd1                	j	8000360e <OSSemPendAbort+0x64>

000000008000363c <OSSemPost>:
    8000363c:	00054703          	lbu	a4,0(a0)
    80003640:	478d                	li	a5,3
    80003642:	00f70463          	beq	a4,a5,8000364a <OSSemPost+0xe>
    80003646:	4505                	li	a0,1
    80003648:	8082                	ret
    8000364a:	905fd06f          	j	80000f4e <OSSemPost.part.5>

000000008000364e <OSSemQuery>:
    8000364e:	00054703          	lbu	a4,0(a0)
    80003652:	478d                	li	a5,3
    80003654:	00f70463          	beq	a4,a5,8000365c <OSSemQuery+0xe>
    80003658:	4505                	li	a0,1
    8000365a:	8082                	ret
    8000365c:	1101                	addi	sp,sp,-32
    8000365e:	e822                	sd	s0,16(sp)
    80003660:	e426                	sd	s1,8(sp)
    80003662:	842a                	mv	s0,a0
    80003664:	84ae                	mv	s1,a1
    80003666:	ec06                	sd	ra,24(sp)
    80003668:	099010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000366c:	01244683          	lbu	a3,18(s0)
    80003670:	01340793          	addi	a5,s0,19
    80003674:	00248713          	addi	a4,s1,2
    80003678:	00d48523          	sb	a3,10(s1)
    8000367c:	01b40613          	addi	a2,s0,27
    80003680:	0785                	addi	a5,a5,1
    80003682:	fff7c683          	lbu	a3,-1(a5)
    80003686:	0705                	addi	a4,a4,1
    80003688:	fed70fa3          	sb	a3,-1(a4)
    8000368c:	fef61ae3          	bne	a2,a5,80003680 <OSSemQuery+0x32>
    80003690:	01045783          	lhu	a5,16(s0)
    80003694:	00f49023          	sh	a5,0(s1)
    80003698:	073010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000369c:	60e2                	ld	ra,24(sp)
    8000369e:	6442                	ld	s0,16(sp)
    800036a0:	64a2                	ld	s1,8(sp)
    800036a2:	4501                	li	a0,0
    800036a4:	6105                	addi	sp,sp,32
    800036a6:	8082                	ret

00000000800036a8 <OSSemSet>:
    800036a8:	00054703          	lbu	a4,0(a0)
    800036ac:	478d                	li	a5,3
    800036ae:	00f70663          	beq	a4,a5,800036ba <OSSemSet+0x12>
    800036b2:	4785                	li	a5,1
    800036b4:	00f60023          	sb	a5,0(a2)
    800036b8:	8082                	ret
    800036ba:	1101                	addi	sp,sp,-32
    800036bc:	e426                	sd	s1,8(sp)
    800036be:	84b2                	mv	s1,a2
    800036c0:	e822                	sd	s0,16(sp)
    800036c2:	e04a                	sd	s2,0(sp)
    800036c4:	842a                	mv	s0,a0
    800036c6:	ec06                	sd	ra,24(sp)
    800036c8:	892e                	mv	s2,a1
    800036ca:	037010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800036ce:	00048023          	sb	zero,0(s1)
    800036d2:	01045783          	lhu	a5,16(s0)
    800036d6:	cb91                	beqz	a5,800036ea <OSSemSet+0x42>
    800036d8:	01241823          	sh	s2,16(s0)
    800036dc:	6442                	ld	s0,16(sp)
    800036de:	60e2                	ld	ra,24(sp)
    800036e0:	64a2                	ld	s1,8(sp)
    800036e2:	6902                	ld	s2,0(sp)
    800036e4:	6105                	addi	sp,sp,32
    800036e6:	0250106f          	j	80004f0a <OS_CPU_SR_Restore>
    800036ea:	01244783          	lbu	a5,18(s0)
    800036ee:	d7ed                	beqz	a5,800036d8 <OSSemSet+0x30>
    800036f0:	04900793          	li	a5,73
    800036f4:	00f48023          	sb	a5,0(s1)
    800036f8:	b7d5                	j	800036dc <OSSemSet+0x34>

00000000800036fa <OSTaskChangePrio>:
    800036fa:	7179                	addi	sp,sp,-48
    800036fc:	f022                	sd	s0,32(sp)
    800036fe:	ec26                	sd	s1,24(sp)
    80003700:	f406                	sd	ra,40(sp)
    80003702:	84ae                	mv	s1,a1
    80003704:	842a                	mv	s0,a0
    80003706:	7fa010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000370a:	0007f797          	auipc	a5,0x7f
    8000370e:	e8e78793          	addi	a5,a5,-370 # 80082598 <OSTCBPrioTbl>
    80003712:	00349713          	slli	a4,s1,0x3
    80003716:	00e786b3          	add	a3,a5,a4
    8000371a:	6294                	ld	a3,0(a3)
    8000371c:	16069163          	bnez	a3,8000387e <OSTaskChangePrio+0x184>
    80003720:	0ff00693          	li	a3,255
    80003724:	85aa                	mv	a1,a0
    80003726:	14d40463          	beq	s0,a3,8000386e <OSTaskChangePrio+0x174>
    8000372a:	040e                	slli	s0,s0,0x3
    8000372c:	943e                	add	s0,s0,a5
    8000372e:	00043803          	ld	a6,0(s0)
    80003732:	16080863          	beqz	a6,800038a2 <OSTaskChangePrio+0x1a8>
    80003736:	4505                	li	a0,1
    80003738:	16a80b63          	beq	a6,a0,800038ae <OSTaskChangePrio+0x1b4>
    8000373c:	00043023          	sd	zero,0(s0)
    80003740:	97ba                	add	a5,a5,a4
    80003742:	0107b023          	sd	a6,0(a5)
    80003746:	05c84f03          	lbu	t5,92(a6)
    8000374a:	0007e797          	auipc	a5,0x7e
    8000374e:	81e78793          	addi	a5,a5,-2018 # 80080f68 <OSRdyTbl>
    80003752:	05d84303          	lbu	t1,93(a6)
    80003756:	01e786b3          	add	a3,a5,t5
    8000375a:	0006c703          	lbu	a4,0(a3)
    8000375e:	0034d393          	srli	t2,s1,0x3
    80003762:	0074f293          	andi	t0,s1,7
    80003766:	00038e9b          	sext.w	t4,t2
    8000376a:	01d51e33          	sll	t3,a0,t4
    8000376e:	00677633          	and	a2,a4,t1
    80003772:	00551533          	sll	a0,a0,t0
    80003776:	0ffe7e13          	andi	t3,t3,255
    8000377a:	0ff57513          	andi	a0,a0,255
    8000377e:	05e84f83          	lbu	t6,94(a6)
    80003782:	ca15                	beqz	a2,800037b6 <OSTaskChangePrio+0xbc>
    80003784:	fff34613          	not	a2,t1
    80003788:	8f71                	and	a4,a4,a2
    8000378a:	00e68023          	sb	a4,0(a3)
    8000378e:	0007d697          	auipc	a3,0x7d
    80003792:	7d26c683          	lbu	a3,2002(a3) # 80080f60 <OSRdyGrp>
    80003796:	e701                	bnez	a4,8000379e <OSTaskChangePrio+0xa4>
    80003798:	ffffc713          	not	a4,t6
    8000379c:	8ef9                	and	a3,a3,a4
    8000379e:	97f6                	add	a5,a5,t4
    800037a0:	0007c703          	lbu	a4,0(a5)
    800037a4:	00de66b3          	or	a3,t3,a3
    800037a8:	0007d617          	auipc	a2,0x7d
    800037ac:	7ad60c23          	sb	a3,1976(a2) # 80080f60 <OSRdyGrp>
    800037b0:	8f49                	or	a4,a4,a0
    800037b2:	00e78023          	sb	a4,0(a5)
    800037b6:	03083783          	ld	a5,48(a6)
    800037ba:	cb95                	beqz	a5,800037ee <OSTaskChangePrio+0xf4>
    800037bc:	01e78733          	add	a4,a5,t5
    800037c0:	01374603          	lbu	a2,19(a4)
    800037c4:	fff34693          	not	a3,t1
    800037c8:	8ef1                	and	a3,a3,a2
    800037ca:	00d709a3          	sb	a3,19(a4)
    800037ce:	0127c703          	lbu	a4,18(a5)
    800037d2:	e681                	bnez	a3,800037da <OSTaskChangePrio+0xe0>
    800037d4:	ffffc693          	not	a3,t6
    800037d8:	8f75                	and	a4,a4,a3
    800037da:	00ee6733          	or	a4,t3,a4
    800037de:	00e78923          	sb	a4,18(a5)
    800037e2:	97f6                	add	a5,a5,t4
    800037e4:	0137c703          	lbu	a4,19(a5)
    800037e8:	8f49                	or	a4,a4,a0
    800037ea:	00e789a3          	sb	a4,19(a5)
    800037ee:	03883603          	ld	a2,56(a6)
    800037f2:	c621                	beqz	a2,8000383a <OSTaskChangePrio+0x140>
    800037f4:	621c                	ld	a5,0(a2)
    800037f6:	c3b1                	beqz	a5,8000383a <OSTaskChangePrio+0x140>
    800037f8:	fff34313          	not	t1,t1
    800037fc:	0ff37313          	andi	t1,t1,255
    80003800:	ffffcf93          	not	t6,t6
    80003804:	01e78733          	add	a4,a5,t5
    80003808:	01374683          	lbu	a3,19(a4)
    8000380c:	01d788b3          	add	a7,a5,t4
    80003810:	0621                	addi	a2,a2,8
    80003812:	00d376b3          	and	a3,t1,a3
    80003816:	00d709a3          	sb	a3,19(a4)
    8000381a:	0127c703          	lbu	a4,18(a5)
    8000381e:	e299                	bnez	a3,80003824 <OSTaskChangePrio+0x12a>
    80003820:	01f77733          	and	a4,a4,t6
    80003824:	00ee6733          	or	a4,t3,a4
    80003828:	00e78923          	sb	a4,18(a5)
    8000382c:	0138c783          	lbu	a5,19(a7)
    80003830:	8fc9                	or	a5,a5,a0
    80003832:	00f889a3          	sb	a5,19(a7)
    80003836:	621c                	ld	a5,0(a2)
    80003838:	f7f1                	bnez	a5,80003804 <OSTaskChangePrio+0x10a>
    8000383a:	04a80ea3          	sb	a0,93(a6)
    8000383e:	04980d23          	sb	s1,90(a6)
    80003842:	852e                	mv	a0,a1
    80003844:	04780e23          	sb	t2,92(a6)
    80003848:	04580da3          	sb	t0,91(a6)
    8000384c:	05c80f23          	sb	t3,94(a6)
    80003850:	6ba010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003854:	0007d717          	auipc	a4,0x7d
    80003858:	c0474703          	lbu	a4,-1020(a4) # 80080458 <OSRunning>
    8000385c:	4785                	li	a5,1
    8000385e:	4501                	li	a0,0
    80003860:	02f70863          	beq	a4,a5,80003890 <OSTaskChangePrio+0x196>
    80003864:	70a2                	ld	ra,40(sp)
    80003866:	7402                	ld	s0,32(sp)
    80003868:	64e2                	ld	s1,24(sp)
    8000386a:	6145                	addi	sp,sp,48
    8000386c:	8082                	ret
    8000386e:	0007e697          	auipc	a3,0x7e
    80003872:	b1268693          	addi	a3,a3,-1262 # 80081380 <OSTCBCur>
    80003876:	6294                	ld	a3,0(a3)
    80003878:	05a6c403          	lbu	s0,90(a3)
    8000387c:	b57d                	j	8000372a <OSTaskChangePrio+0x30>
    8000387e:	68c010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003882:	70a2                	ld	ra,40(sp)
    80003884:	7402                	ld	s0,32(sp)
    80003886:	64e2                	ld	s1,24(sp)
    80003888:	02800513          	li	a0,40
    8000388c:	6145                	addi	sp,sp,48
    8000388e:	8082                	ret
    80003890:	e42a                	sd	a0,8(sp)
    80003892:	ad8fd0ef          	jal	ra,80000b6a <OS_Sched>
    80003896:	70a2                	ld	ra,40(sp)
    80003898:	7402                	ld	s0,32(sp)
    8000389a:	6522                	ld	a0,8(sp)
    8000389c:	64e2                	ld	s1,24(sp)
    8000389e:	6145                	addi	sp,sp,48
    800038a0:	8082                	ret
    800038a2:	852e                	mv	a0,a1
    800038a4:	666010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800038a8:	02900513          	li	a0,41
    800038ac:	bf65                	j	80003864 <OSTaskChangePrio+0x16a>
    800038ae:	852e                	mv	a0,a1
    800038b0:	65a010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800038b4:	04300513          	li	a0,67
    800038b8:	b775                	j	80003864 <OSTaskChangePrio+0x16a>

00000000800038ba <OSTaskCreate>:
    800038ba:	7139                	addi	sp,sp,-64
    800038bc:	f426                	sd	s1,40(sp)
    800038be:	f04a                	sd	s2,32(sp)
    800038c0:	ec4e                	sd	s3,24(sp)
    800038c2:	e852                	sd	s4,16(sp)
    800038c4:	fc06                	sd	ra,56(sp)
    800038c6:	f822                	sd	s0,48(sp)
    800038c8:	e456                	sd	s5,8(sp)
    800038ca:	892a                	mv	s2,a0
    800038cc:	89ae                	mv	s3,a1
    800038ce:	8a32                	mv	s4,a2
    800038d0:	84b6                	mv	s1,a3
    800038d2:	62e010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    800038d6:	0007e797          	auipc	a5,0x7e
    800038da:	aa27c783          	lbu	a5,-1374(a5) # 80081378 <OSIntNesting>
    800038de:	e7bd                	bnez	a5,8000394c <OSTaskCreate+0x92>
    800038e0:	00349793          	slli	a5,s1,0x3
    800038e4:	0007f417          	auipc	s0,0x7f
    800038e8:	cb440413          	addi	s0,s0,-844 # 80082598 <OSTCBPrioTbl>
    800038ec:	943e                	add	s0,s0,a5
    800038ee:	601c                	ld	a5,0(s0)
    800038f0:	cf99                	beqz	a5,8000390e <OSTaskCreate+0x54>
    800038f2:	618010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800038f6:	02800493          	li	s1,40
    800038fa:	70e2                	ld	ra,56(sp)
    800038fc:	7442                	ld	s0,48(sp)
    800038fe:	8526                	mv	a0,s1
    80003900:	7902                	ld	s2,32(sp)
    80003902:	74a2                	ld	s1,40(sp)
    80003904:	69e2                	ld	s3,24(sp)
    80003906:	6a42                	ld	s4,16(sp)
    80003908:	6aa2                	ld	s5,8(sp)
    8000390a:	6121                	addi	sp,sp,64
    8000390c:	8082                	ret
    8000390e:	4a85                	li	s5,1
    80003910:	01543023          	sd	s5,0(s0)
    80003914:	5f6010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003918:	4681                	li	a3,0
    8000391a:	8652                	mv	a2,s4
    8000391c:	85ce                	mv	a1,s3
    8000391e:	854a                	mv	a0,s2
    80003920:	6de010ef          	jal	ra,80004ffe <OSTaskStkInit>
    80003924:	85aa                	mv	a1,a0
    80003926:	4801                	li	a6,0
    80003928:	8526                	mv	a0,s1
    8000392a:	4781                	li	a5,0
    8000392c:	4701                	li	a4,0
    8000392e:	4681                	li	a3,0
    80003930:	4601                	li	a2,0
    80003932:	97ffd0ef          	jal	ra,800012b0 <OS_TCBInit>
    80003936:	84aa                	mv	s1,a0
    80003938:	ed19                	bnez	a0,80003956 <OSTaskCreate+0x9c>
    8000393a:	0007d797          	auipc	a5,0x7d
    8000393e:	b1e7c783          	lbu	a5,-1250(a5) # 80080458 <OSRunning>
    80003942:	fb579ce3          	bne	a5,s5,800038fa <OSTaskCreate+0x40>
    80003946:	a24fd0ef          	jal	ra,80000b6a <OS_Sched>
    8000394a:	bf45                	j	800038fa <OSTaskCreate+0x40>
    8000394c:	5be010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003950:	03c00493          	li	s1,60
    80003954:	b75d                	j	800038fa <OSTaskCreate+0x40>
    80003956:	5aa010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000395a:	00043023          	sd	zero,0(s0)
    8000395e:	5ac010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003962:	bf61                	j	800038fa <OSTaskCreate+0x40>

0000000080003964 <OSTaskCreateExt>:
    80003964:	711d                	addi	sp,sp,-96
    80003966:	e8a2                	sd	s0,80(sp)
    80003968:	e4a6                	sd	s1,72(sp)
    8000396a:	f852                	sd	s4,48(sp)
    8000396c:	f456                	sd	s5,40(sp)
    8000396e:	f05a                	sd	s6,32(sp)
    80003970:	ec5e                	sd	s7,24(sp)
    80003972:	e862                	sd	s8,16(sp)
    80003974:	e466                	sd	s9,8(sp)
    80003976:	e06a                	sd	s10,0(sp)
    80003978:	8abe                	mv	s5,a5
    8000397a:	ec86                	sd	ra,88(sp)
    8000397c:	e0ca                	sd	s2,64(sp)
    8000397e:	fc4e                	sd	s3,56(sp)
    80003980:	8c2a                	mv	s8,a0
    80003982:	8cae                	mv	s9,a1
    80003984:	8d32                	mv	s10,a2
    80003986:	8436                	mv	s0,a3
    80003988:	8b3a                	mv	s6,a4
    8000398a:	8a42                	mv	s4,a6
    8000398c:	8bc6                	mv	s7,a7
    8000398e:	06015483          	lhu	s1,96(sp)
    80003992:	56e010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003996:	0007e797          	auipc	a5,0x7e
    8000399a:	9e27c783          	lbu	a5,-1566(a5) # 80081378 <OSIntNesting>
    8000399e:	e3d1                	bnez	a5,80003a22 <OSTaskCreateExt+0xbe>
    800039a0:	0007f917          	auipc	s2,0x7f
    800039a4:	bf890913          	addi	s2,s2,-1032 # 80082598 <OSTCBPrioTbl>
    800039a8:	00341993          	slli	s3,s0,0x3
    800039ac:	013907b3          	add	a5,s2,s3
    800039b0:	6398                	ld	a4,0(a5)
    800039b2:	c705                	beqz	a4,800039da <OSTaskCreateExt+0x76>
    800039b4:	556010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800039b8:	02800413          	li	s0,40
    800039bc:	8522                	mv	a0,s0
    800039be:	60e6                	ld	ra,88(sp)
    800039c0:	6446                	ld	s0,80(sp)
    800039c2:	64a6                	ld	s1,72(sp)
    800039c4:	6906                	ld	s2,64(sp)
    800039c6:	79e2                	ld	s3,56(sp)
    800039c8:	7a42                	ld	s4,48(sp)
    800039ca:	7aa2                	ld	s5,40(sp)
    800039cc:	7b02                	ld	s6,32(sp)
    800039ce:	6be2                	ld	s7,24(sp)
    800039d0:	6c42                	ld	s8,16(sp)
    800039d2:	6ca2                	ld	s9,8(sp)
    800039d4:	6d02                	ld	s10,0(sp)
    800039d6:	6125                	addi	sp,sp,96
    800039d8:	8082                	ret
    800039da:	4705                	li	a4,1
    800039dc:	e398                	sd	a4,0(a5)
    800039de:	52c010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800039e2:	0034f793          	andi	a5,s1,3
    800039e6:	470d                	li	a4,3
    800039e8:	04e78a63          	beq	a5,a4,80003a3c <OSTaskCreateExt+0xd8>
    800039ec:	86a6                	mv	a3,s1
    800039ee:	866a                	mv	a2,s10
    800039f0:	85e6                	mv	a1,s9
    800039f2:	8562                	mv	a0,s8
    800039f4:	60a010ef          	jal	ra,80004ffe <OSTaskStkInit>
    800039f8:	85aa                	mv	a1,a0
    800039fa:	8826                	mv	a6,s1
    800039fc:	8522                	mv	a0,s0
    800039fe:	87de                	mv	a5,s7
    80003a00:	8752                	mv	a4,s4
    80003a02:	86da                	mv	a3,s6
    80003a04:	8656                	mv	a2,s5
    80003a06:	8abfd0ef          	jal	ra,800012b0 <OS_TCBInit>
    80003a0a:	842a                	mv	s0,a0
    80003a0c:	e105                	bnez	a0,80003a2c <OSTaskCreateExt+0xc8>
    80003a0e:	0007d717          	auipc	a4,0x7d
    80003a12:	a4a74703          	lbu	a4,-1462(a4) # 80080458 <OSRunning>
    80003a16:	4785                	li	a5,1
    80003a18:	faf712e3          	bne	a4,a5,800039bc <OSTaskCreateExt+0x58>
    80003a1c:	94efd0ef          	jal	ra,80000b6a <OS_Sched>
    80003a20:	bf71                	j	800039bc <OSTaskCreateExt+0x58>
    80003a22:	4e8010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003a26:	03c00413          	li	s0,60
    80003a2a:	bf49                	j	800039bc <OSTaskCreateExt+0x58>
    80003a2c:	4d4010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003a30:	994e                	add	s2,s2,s3
    80003a32:	00093023          	sd	zero,0(s2)
    80003a36:	4d4010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003a3a:	b749                	j	800039bc <OSTaskCreateExt+0x58>
    80003a3c:	fa0a08e3          	beqz	s4,800039ec <OSTaskCreateExt+0x88>
    80003a40:	fffa071b          	addiw	a4,s4,-1
    80003a44:	1702                	slli	a4,a4,0x20
    80003a46:	9301                	srli	a4,a4,0x20
    80003a48:	0705                	addi	a4,a4,1
    80003a4a:	070e                	slli	a4,a4,0x3
    80003a4c:	9756                	add	a4,a4,s5
    80003a4e:	87d6                	mv	a5,s5
    80003a50:	07a1                	addi	a5,a5,8
    80003a52:	fe07bc23          	sd	zero,-8(a5)
    80003a56:	fee79de3          	bne	a5,a4,80003a50 <OSTaskCreateExt+0xec>
    80003a5a:	bf49                	j	800039ec <OSTaskCreateExt+0x88>

0000000080003a5c <OSTaskDel>:
    80003a5c:	0007e797          	auipc	a5,0x7e
    80003a60:	91c7c783          	lbu	a5,-1764(a5) # 80081378 <OSIntNesting>
    80003a64:	eb91                	bnez	a5,80003a78 <OSTaskDel+0x1c>
    80003a66:	03f00793          	li	a5,63
    80003a6a:	00f50463          	beq	a0,a5,80003a72 <OSTaskDel+0x16>
    80003a6e:	d4cfd06f          	j	80000fba <OSTaskDel.part.6>
    80003a72:	03e00513          	li	a0,62
    80003a76:	8082                	ret
    80003a78:	04000513          	li	a0,64
    80003a7c:	8082                	ret

0000000080003a7e <OSTaskDelReq>:
    80003a7e:	1101                	addi	sp,sp,-32
    80003a80:	e426                	sd	s1,8(sp)
    80003a82:	ec06                	sd	ra,24(sp)
    80003a84:	e822                	sd	s0,16(sp)
    80003a86:	03f00493          	li	s1,63
    80003a8a:	06950563          	beq	a0,s1,80003af4 <OSTaskDelReq+0x76>
    80003a8e:	0ff00793          	li	a5,255
    80003a92:	842a                	mv	s0,a0
    80003a94:	02f50a63          	beq	a0,a5,80003ac8 <OSTaskDelReq+0x4a>
    80003a98:	468010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003a9c:	0007f797          	auipc	a5,0x7f
    80003aa0:	afc78793          	addi	a5,a5,-1284 # 80082598 <OSTCBPrioTbl>
    80003aa4:	040e                	slli	s0,s0,0x3
    80003aa6:	943e                	add	s0,s0,a5
    80003aa8:	601c                	ld	a5,0(s0)
    80003aaa:	cfa9                	beqz	a5,80003b04 <OSTaskDelReq+0x86>
    80003aac:	4705                	li	a4,1
    80003aae:	02e78e63          	beq	a5,a4,80003aea <OSTaskDelReq+0x6c>
    80003ab2:	04978fa3          	sb	s1,95(a5)
    80003ab6:	454010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003aba:	4401                	li	s0,0
    80003abc:	8522                	mv	a0,s0
    80003abe:	60e2                	ld	ra,24(sp)
    80003ac0:	6442                	ld	s0,16(sp)
    80003ac2:	64a2                	ld	s1,8(sp)
    80003ac4:	6105                	addi	sp,sp,32
    80003ac6:	8082                	ret
    80003ac8:	438010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003acc:	0007e797          	auipc	a5,0x7e
    80003ad0:	8b478793          	addi	a5,a5,-1868 # 80081380 <OSTCBCur>
    80003ad4:	639c                	ld	a5,0(a5)
    80003ad6:	05f7c403          	lbu	s0,95(a5)
    80003ada:	430010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003ade:	60e2                	ld	ra,24(sp)
    80003ae0:	8522                	mv	a0,s0
    80003ae2:	6442                	ld	s0,16(sp)
    80003ae4:	64a2                	ld	s1,8(sp)
    80003ae6:	6105                	addi	sp,sp,32
    80003ae8:	8082                	ret
    80003aea:	420010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003aee:	03d00413          	li	s0,61
    80003af2:	b7e9                	j	80003abc <OSTaskDelReq+0x3e>
    80003af4:	03e00413          	li	s0,62
    80003af8:	8522                	mv	a0,s0
    80003afa:	60e2                	ld	ra,24(sp)
    80003afc:	6442                	ld	s0,16(sp)
    80003afe:	64a2                	ld	s1,8(sp)
    80003b00:	6105                	addi	sp,sp,32
    80003b02:	8082                	ret
    80003b04:	406010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003b08:	04300413          	li	s0,67
    80003b0c:	bf45                	j	80003abc <OSTaskDelReq+0x3e>

0000000080003b0e <OSTaskNameGet>:
    80003b0e:	7179                	addi	sp,sp,-48
    80003b10:	f022                	sd	s0,32(sp)
    80003b12:	e84a                	sd	s2,16(sp)
    80003b14:	f406                	sd	ra,40(sp)
    80003b16:	ec26                	sd	s1,24(sp)
    80003b18:	0007e417          	auipc	s0,0x7e
    80003b1c:	86044403          	lbu	s0,-1952(s0) # 80081378 <OSIntNesting>
    80003b20:	8932                	mv	s2,a2
    80003b22:	cc01                	beqz	s0,80003b3a <OSTaskNameGet+0x2c>
    80003b24:	4401                	li	s0,0
    80003b26:	8522                	mv	a0,s0
    80003b28:	70a2                	ld	ra,40(sp)
    80003b2a:	7402                	ld	s0,32(sp)
    80003b2c:	47c5                	li	a5,17
    80003b2e:	00f60023          	sb	a5,0(a2)
    80003b32:	64e2                	ld	s1,24(sp)
    80003b34:	6942                	ld	s2,16(sp)
    80003b36:	6145                	addi	sp,sp,48
    80003b38:	8082                	ret
    80003b3a:	e42e                	sd	a1,8(sp)
    80003b3c:	84aa                	mv	s1,a0
    80003b3e:	3c2010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003b42:	0ff00793          	li	a5,255
    80003b46:	65a2                	ld	a1,8(sp)
    80003b48:	00f49963          	bne	s1,a5,80003b5a <OSTaskNameGet+0x4c>
    80003b4c:	0007e797          	auipc	a5,0x7e
    80003b50:	83478793          	addi	a5,a5,-1996 # 80081380 <OSTCBCur>
    80003b54:	639c                	ld	a5,0(a5)
    80003b56:	05a7c483          	lbu	s1,90(a5)
    80003b5a:	0007f797          	auipc	a5,0x7f
    80003b5e:	a3e78793          	addi	a5,a5,-1474 # 80082598 <OSTCBPrioTbl>
    80003b62:	048e                	slli	s1,s1,0x3
    80003b64:	94be                	add	s1,s1,a5
    80003b66:	609c                	ld	a5,0(s1)
    80003b68:	cb9d                	beqz	a5,80003b9e <OSTaskNameGet+0x90>
    80003b6a:	4705                	li	a4,1
    80003b6c:	02e78963          	beq	a5,a4,80003b9e <OSTaskNameGet+0x90>
    80003b70:	63dc                	ld	a5,128(a5)
    80003b72:	e19c                	sd	a5,0(a1)
    80003b74:	0007c703          	lbu	a4,0(a5)
    80003b78:	c321                	beqz	a4,80003bb8 <OSTaskNameGet+0xaa>
    80003b7a:	0785                	addi	a5,a5,1
    80003b7c:	0007c703          	lbu	a4,0(a5)
    80003b80:	2405                	addiw	s0,s0,1
    80003b82:	0ff47413          	andi	s0,s0,255
    80003b86:	fb75                	bnez	a4,80003b7a <OSTaskNameGet+0x6c>
    80003b88:	382010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003b8c:	00090023          	sb	zero,0(s2)
    80003b90:	8522                	mv	a0,s0
    80003b92:	70a2                	ld	ra,40(sp)
    80003b94:	7402                	ld	s0,32(sp)
    80003b96:	64e2                	ld	s1,24(sp)
    80003b98:	6942                	ld	s2,16(sp)
    80003b9a:	6145                	addi	sp,sp,48
    80003b9c:	8082                	ret
    80003b9e:	36c010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003ba2:	04300793          	li	a5,67
    80003ba6:	00f90023          	sb	a5,0(s2)
    80003baa:	8522                	mv	a0,s0
    80003bac:	70a2                	ld	ra,40(sp)
    80003bae:	7402                	ld	s0,32(sp)
    80003bb0:	64e2                	ld	s1,24(sp)
    80003bb2:	6942                	ld	s2,16(sp)
    80003bb4:	6145                	addi	sp,sp,48
    80003bb6:	8082                	ret
    80003bb8:	4401                	li	s0,0
    80003bba:	b7f9                	j	80003b88 <OSTaskNameGet+0x7a>

0000000080003bbc <OSTaskNameSet>:
    80003bbc:	0007d797          	auipc	a5,0x7d
    80003bc0:	7bc7c783          	lbu	a5,1980(a5) # 80081378 <OSIntNesting>
    80003bc4:	c789                	beqz	a5,80003bce <OSTaskNameSet+0x12>
    80003bc6:	47c9                	li	a5,18
    80003bc8:	00f60023          	sb	a5,0(a2)
    80003bcc:	8082                	ret
    80003bce:	8adfc06f          	j	8000047a <OSTaskNameSet.part.7>

0000000080003bd2 <OSTaskResume>:
    80003bd2:	1101                	addi	sp,sp,-32
    80003bd4:	e822                	sd	s0,16(sp)
    80003bd6:	ec06                	sd	ra,24(sp)
    80003bd8:	842a                	mv	s0,a0
    80003bda:	e426                	sd	s1,8(sp)
    80003bdc:	324010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003be0:	040e                	slli	s0,s0,0x3
    80003be2:	0007f797          	auipc	a5,0x7f
    80003be6:	9b678793          	addi	a5,a5,-1610 # 80082598 <OSTCBPrioTbl>
    80003bea:	97a2                	add	a5,a5,s0
    80003bec:	639c                	ld	a5,0(a5)
    80003bee:	c3d5                	beqz	a5,80003c92 <OSTaskResume+0xc0>
    80003bf0:	4485                	li	s1,1
    80003bf2:	0a978563          	beq	a5,s1,80003c9c <OSTaskResume+0xca>
    80003bf6:	0587c403          	lbu	s0,88(a5)
    80003bfa:	00847713          	andi	a4,s0,8
    80003bfe:	c341                	beqz	a4,80003c7e <OSTaskResume+0xac>
    80003c00:	0f747413          	andi	s0,s0,247
    80003c04:	04878c23          	sb	s0,88(a5)
    80003c08:	e831                	bnez	s0,80003c5c <OSTaskResume+0x8a>
    80003c0a:	4bf8                	lw	a4,84(a5)
    80003c0c:	e32d                	bnez	a4,80003c6e <OSTaskResume+0x9c>
    80003c0e:	05c7c683          	lbu	a3,92(a5)
    80003c12:	0007d717          	auipc	a4,0x7d
    80003c16:	35670713          	addi	a4,a4,854 # 80080f68 <OSRdyTbl>
    80003c1a:	05e7c603          	lbu	a2,94(a5)
    80003c1e:	9736                	add	a4,a4,a3
    80003c20:	00074683          	lbu	a3,0(a4)
    80003c24:	05d7c783          	lbu	a5,93(a5)
    80003c28:	0007d597          	auipc	a1,0x7d
    80003c2c:	3385c583          	lbu	a1,824(a1) # 80080f60 <OSRdyGrp>
    80003c30:	8e4d                	or	a2,a2,a1
    80003c32:	8fd5                	or	a5,a5,a3
    80003c34:	00f70023          	sb	a5,0(a4)
    80003c38:	0007d697          	auipc	a3,0x7d
    80003c3c:	32c68423          	sb	a2,808(a3) # 80080f60 <OSRdyGrp>
    80003c40:	2ca010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003c44:	0007d797          	auipc	a5,0x7d
    80003c48:	8147c783          	lbu	a5,-2028(a5) # 80080458 <OSRunning>
    80003c4c:	04978d63          	beq	a5,s1,80003ca6 <OSTaskResume+0xd4>
    80003c50:	8522                	mv	a0,s0
    80003c52:	60e2                	ld	ra,24(sp)
    80003c54:	6442                	ld	s0,16(sp)
    80003c56:	64a2                	ld	s1,8(sp)
    80003c58:	6105                	addi	sp,sp,32
    80003c5a:	8082                	ret
    80003c5c:	2ae010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003c60:	4401                	li	s0,0
    80003c62:	8522                	mv	a0,s0
    80003c64:	60e2                	ld	ra,24(sp)
    80003c66:	6442                	ld	s0,16(sp)
    80003c68:	64a2                	ld	s1,8(sp)
    80003c6a:	6105                	addi	sp,sp,32
    80003c6c:	8082                	ret
    80003c6e:	29c010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003c72:	8522                	mv	a0,s0
    80003c74:	60e2                	ld	ra,24(sp)
    80003c76:	6442                	ld	s0,16(sp)
    80003c78:	64a2                	ld	s1,8(sp)
    80003c7a:	6105                	addi	sp,sp,32
    80003c7c:	8082                	ret
    80003c7e:	28c010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003c82:	04400413          	li	s0,68
    80003c86:	8522                	mv	a0,s0
    80003c88:	60e2                	ld	ra,24(sp)
    80003c8a:	6442                	ld	s0,16(sp)
    80003c8c:	64a2                	ld	s1,8(sp)
    80003c8e:	6105                	addi	sp,sp,32
    80003c90:	8082                	ret
    80003c92:	278010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003c96:	04600413          	li	s0,70
    80003c9a:	bf5d                	j	80003c50 <OSTaskResume+0x7e>
    80003c9c:	26e010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003ca0:	04300413          	li	s0,67
    80003ca4:	b775                	j	80003c50 <OSTaskResume+0x7e>
    80003ca6:	ec5fc0ef          	jal	ra,80000b6a <OS_Sched>
    80003caa:	b75d                	j	80003c50 <OSTaskResume+0x7e>

0000000080003cac <OSTaskStkChk>:
    80003cac:	1101                	addi	sp,sp,-32
    80003cae:	0005a023          	sw	zero,0(a1)
    80003cb2:	0005a223          	sw	zero,4(a1)
    80003cb6:	e822                	sd	s0,16(sp)
    80003cb8:	e426                	sd	s1,8(sp)
    80003cba:	ec06                	sd	ra,24(sp)
    80003cbc:	e04a                	sd	s2,0(sp)
    80003cbe:	84ae                	mv	s1,a1
    80003cc0:	842a                	mv	s0,a0
    80003cc2:	23e010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003cc6:	0ff00793          	li	a5,255
    80003cca:	00f41963          	bne	s0,a5,80003cdc <OSTaskStkChk+0x30>
    80003cce:	0007d797          	auipc	a5,0x7d
    80003cd2:	6b278793          	addi	a5,a5,1714 # 80081380 <OSTCBCur>
    80003cd6:	639c                	ld	a5,0(a5)
    80003cd8:	05a7c403          	lbu	s0,90(a5)
    80003cdc:	0007f797          	auipc	a5,0x7f
    80003ce0:	8bc78793          	addi	a5,a5,-1860 # 80082598 <OSTCBPrioTbl>
    80003ce4:	040e                	slli	s0,s0,0x3
    80003ce6:	943e                	add	s0,s0,a5
    80003ce8:	601c                	ld	a5,0(s0)
    80003cea:	c3b5                	beqz	a5,80003d4e <OSTaskStkChk+0xa2>
    80003cec:	4705                	li	a4,1
    80003cee:	06e78063          	beq	a5,a4,80003d4e <OSTaskStkChk+0xa2>
    80003cf2:	01c7d703          	lhu	a4,28(a5)
    80003cf6:	8b05                	andi	a4,a4,1
    80003cf8:	cf1d                	beqz	a4,80003d36 <OSTaskStkChk+0x8a>
    80003cfa:	6b80                	ld	s0,16(a5)
    80003cfc:	0187a903          	lw	s2,24(a5)
    80003d00:	20a010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003d04:	6018                	ld	a4,0(s0)
    80003d06:	00840793          	addi	a5,s0,8
    80003d0a:	e321                	bnez	a4,80003d4a <OSTaskStkChk+0x9e>
    80003d0c:	07a1                	addi	a5,a5,8
    80003d0e:	ff87b683          	ld	a3,-8(a5)
    80003d12:	2705                	addiw	a4,a4,1
    80003d14:	dee5                	beqz	a3,80003d0c <OSTaskStkChk+0x60>
    80003d16:	0037179b          	slliw	a5,a4,0x3
    80003d1a:	40e9093b          	subw	s2,s2,a4
    80003d1e:	0039191b          	slliw	s2,s2,0x3
    80003d22:	c09c                	sw	a5,0(s1)
    80003d24:	0124a223          	sw	s2,4(s1)
    80003d28:	60e2                	ld	ra,24(sp)
    80003d2a:	6442                	ld	s0,16(sp)
    80003d2c:	64a2                	ld	s1,8(sp)
    80003d2e:	6902                	ld	s2,0(sp)
    80003d30:	4501                	li	a0,0
    80003d32:	6105                	addi	sp,sp,32
    80003d34:	8082                	ret
    80003d36:	1d4010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003d3a:	60e2                	ld	ra,24(sp)
    80003d3c:	6442                	ld	s0,16(sp)
    80003d3e:	64a2                	ld	s1,8(sp)
    80003d40:	6902                	ld	s2,0(sp)
    80003d42:	04500513          	li	a0,69
    80003d46:	6105                	addi	sp,sp,32
    80003d48:	8082                	ret
    80003d4a:	4781                	li	a5,0
    80003d4c:	bfc9                	j	80003d1e <OSTaskStkChk+0x72>
    80003d4e:	1bc010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003d52:	60e2                	ld	ra,24(sp)
    80003d54:	6442                	ld	s0,16(sp)
    80003d56:	64a2                	ld	s1,8(sp)
    80003d58:	6902                	ld	s2,0(sp)
    80003d5a:	04300513          	li	a0,67
    80003d5e:	6105                	addi	sp,sp,32
    80003d60:	8082                	ret

0000000080003d62 <OS_TaskStatStkChk>:
    80003d62:	7139                	addi	sp,sp,-64
    80003d64:	f822                	sd	s0,48(sp)
    80003d66:	f426                	sd	s1,40(sp)
    80003d68:	f04a                	sd	s2,32(sp)
    80003d6a:	ec4e                	sd	s3,24(sp)
    80003d6c:	fc06                	sd	ra,56(sp)
    80003d6e:	0007f497          	auipc	s1,0x7f
    80003d72:	82a48493          	addi	s1,s1,-2006 # 80082598 <OSTCBPrioTbl>
    80003d76:	4401                	li	s0,0
    80003d78:	4985                	li	s3,1
    80003d7a:	04000913          	li	s2,64
    80003d7e:	8522                	mv	a0,s0
    80003d80:	002c                	addi	a1,sp,8
    80003d82:	2405                	addiw	s0,s0,1
    80003d84:	f29ff0ef          	jal	ra,80003cac <OSTaskStkChk>
    80003d88:	0ff47413          	andi	s0,s0,255
    80003d8c:	ed09                	bnez	a0,80003da6 <OS_TaskStatStkChk+0x44>
    80003d8e:	609c                	ld	a5,0(s1)
    80003d90:	cb99                	beqz	a5,80003da6 <OS_TaskStatStkChk+0x44>
    80003d92:	01378a63          	beq	a5,s3,80003da6 <OS_TaskStatStkChk+0x44>
    80003d96:	0187e683          	lwu	a3,24(a5)
    80003d9a:	6b98                	ld	a4,16(a5)
    80003d9c:	068e                	slli	a3,a3,0x3
    80003d9e:	9736                	add	a4,a4,a3
    80003da0:	fbb8                	sd	a4,112(a5)
    80003da2:	4732                	lw	a4,12(sp)
    80003da4:	dfb8                	sw	a4,120(a5)
    80003da6:	04a1                	addi	s1,s1,8
    80003da8:	fd241be3          	bne	s0,s2,80003d7e <OS_TaskStatStkChk+0x1c>
    80003dac:	70e2                	ld	ra,56(sp)
    80003dae:	7442                	ld	s0,48(sp)
    80003db0:	74a2                	ld	s1,40(sp)
    80003db2:	7902                	ld	s2,32(sp)
    80003db4:	69e2                	ld	s3,24(sp)
    80003db6:	6121                	addi	sp,sp,64
    80003db8:	8082                	ret

0000000080003dba <OSTaskSuspend>:
    80003dba:	1101                	addi	sp,sp,-32
    80003dbc:	e822                	sd	s0,16(sp)
    80003dbe:	ec06                	sd	ra,24(sp)
    80003dc0:	e426                	sd	s1,8(sp)
    80003dc2:	842a                	mv	s0,a0
    80003dc4:	13c010ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003dc8:	0ff00793          	li	a5,255
    80003dcc:	0af40863          	beq	s0,a5,80003e7c <OSTaskSuspend+0xc2>
    80003dd0:	0007d797          	auipc	a5,0x7d
    80003dd4:	5b078793          	addi	a5,a5,1456 # 80081380 <OSTCBCur>
    80003dd8:	639c                	ld	a5,0(a5)
    80003dda:	2401                	sext.w	s0,s0
    80003ddc:	05a7c483          	lbu	s1,90(a5)
    80003de0:	8c81                	sub	s1,s1,s0
    80003de2:	0014b493          	seqz	s1,s1
    80003de6:	0007e797          	auipc	a5,0x7e
    80003dea:	7b278793          	addi	a5,a5,1970 # 80082598 <OSTCBPrioTbl>
    80003dee:	040e                	slli	s0,s0,0x3
    80003df0:	943e                	add	s0,s0,a5
    80003df2:	601c                	ld	a5,0(s0)
    80003df4:	cfc9                	beqz	a5,80003e8e <OSTaskSuspend+0xd4>
    80003df6:	4705                	li	a4,1
    80003df8:	0ae78063          	beq	a5,a4,80003e98 <OSTaskSuspend+0xde>
    80003dfc:	05c7c603          	lbu	a2,92(a5)
    80003e00:	0007d697          	auipc	a3,0x7d
    80003e04:	16868693          	addi	a3,a3,360 # 80080f68 <OSRdyTbl>
    80003e08:	05d7c703          	lbu	a4,93(a5)
    80003e0c:	96b2                	add	a3,a3,a2
    80003e0e:	0006c603          	lbu	a2,0(a3)
    80003e12:	fff74713          	not	a4,a4
    80003e16:	8f71                	and	a4,a4,a2
    80003e18:	00e68023          	sb	a4,0(a3)
    80003e1c:	c30d                	beqz	a4,80003e3e <OSTaskSuspend+0x84>
    80003e1e:	0587c703          	lbu	a4,88(a5)
    80003e22:	4401                	li	s0,0
    80003e24:	00876713          	ori	a4,a4,8
    80003e28:	04e78c23          	sb	a4,88(a5)
    80003e2c:	0de010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003e30:	ec95                	bnez	s1,80003e6c <OSTaskSuspend+0xb2>
    80003e32:	8522                	mv	a0,s0
    80003e34:	60e2                	ld	ra,24(sp)
    80003e36:	6442                	ld	s0,16(sp)
    80003e38:	64a2                	ld	s1,8(sp)
    80003e3a:	6105                	addi	sp,sp,32
    80003e3c:	8082                	ret
    80003e3e:	05e7c703          	lbu	a4,94(a5)
    80003e42:	0007d697          	auipc	a3,0x7d
    80003e46:	11e6c683          	lbu	a3,286(a3) # 80080f60 <OSRdyGrp>
    80003e4a:	4401                	li	s0,0
    80003e4c:	fff74713          	not	a4,a4
    80003e50:	8f75                	and	a4,a4,a3
    80003e52:	0007d697          	auipc	a3,0x7d
    80003e56:	10e68723          	sb	a4,270(a3) # 80080f60 <OSRdyGrp>
    80003e5a:	0587c703          	lbu	a4,88(a5)
    80003e5e:	00876713          	ori	a4,a4,8
    80003e62:	04e78c23          	sb	a4,88(a5)
    80003e66:	0a4010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003e6a:	d4e1                	beqz	s1,80003e32 <OSTaskSuspend+0x78>
    80003e6c:	cfffc0ef          	jal	ra,80000b6a <OS_Sched>
    80003e70:	8522                	mv	a0,s0
    80003e72:	60e2                	ld	ra,24(sp)
    80003e74:	6442                	ld	s0,16(sp)
    80003e76:	64a2                	ld	s1,8(sp)
    80003e78:	6105                	addi	sp,sp,32
    80003e7a:	8082                	ret
    80003e7c:	0007d797          	auipc	a5,0x7d
    80003e80:	50478793          	addi	a5,a5,1284 # 80081380 <OSTCBCur>
    80003e84:	639c                	ld	a5,0(a5)
    80003e86:	4485                	li	s1,1
    80003e88:	05a7c403          	lbu	s0,90(a5)
    80003e8c:	bfa9                	j	80003de6 <OSTaskSuspend+0x2c>
    80003e8e:	07c010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003e92:	04800413          	li	s0,72
    80003e96:	bf71                	j	80003e32 <OSTaskSuspend+0x78>
    80003e98:	072010ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003e9c:	04300413          	li	s0,67
    80003ea0:	bf49                	j	80003e32 <OSTaskSuspend+0x78>

0000000080003ea2 <OS_TaskStat>:
    80003ea2:	7139                	addi	sp,sp,-64
    80003ea4:	fc06                	sd	ra,56(sp)
    80003ea6:	f822                	sd	s0,48(sp)
    80003ea8:	f426                	sd	s1,40(sp)
    80003eaa:	f04a                	sd	s2,32(sp)
    80003eac:	ec4e                	sd	s3,24(sp)
    80003eae:	e852                	sd	s4,16(sp)
    80003eb0:	e456                	sd	s5,8(sp)
    80003eb2:	0007e797          	auipc	a5,0x7e
    80003eb6:	6de7c783          	lbu	a5,1758(a5) # 80082590 <OSStatRdy>
    80003eba:	0007d697          	auipc	a3,0x7d
    80003ebe:	4be6c683          	lbu	a3,1214(a3) # 80081378 <OSIntNesting>
    80003ec2:	0007c717          	auipc	a4,0x7c
    80003ec6:	58674703          	lbu	a4,1414(a4) # 80080448 <OSLockNesting>
    80003eca:	e799                	bnez	a5,80003ed8 <OS_TaskStat+0x36>
    80003ecc:	e281                	bnez	a3,80003ecc <OS_TaskStat+0x2a>
    80003ece:	ff7d                	bnez	a4,80003ecc <OS_TaskStat+0x2a>
    80003ed0:	4551                	li	a0,20
    80003ed2:	aeafd0ef          	jal	ra,800011bc <OSTimeDly.part.9>
    80003ed6:	bff1                	j	80003eb2 <OS_TaskStat+0x10>
    80003ed8:	0007d417          	auipc	s0,0x7d
    80003edc:	f9840413          	addi	s0,s0,-104 # 80080e70 <OSIdleCtrMax>
    80003ee0:	401c                	lw	a5,0(s0)
    80003ee2:	06400713          	li	a4,100
    80003ee6:	02e7d73b          	divuw	a4,a5,a4
    80003eea:	0007d697          	auipc	a3,0x7d
    80003eee:	f8e6a323          	sw	a4,-122(a3) # 80080e70 <OSIdleCtrMax>
    80003ef2:	cb35                	beqz	a4,80003f66 <OS_TaskStat+0xc4>
    80003ef4:	0007ca17          	auipc	s4,0x7c
    80003ef8:	568a0a13          	addi	s4,s4,1384 # 8008045c <OSIdleCtr>
    80003efc:	0007f997          	auipc	s3,0x7f
    80003f00:	89c98993          	addi	s3,s3,-1892 # 80082798 <OSIdleCtrRun>
    80003f04:	0007d917          	auipc	s2,0x7d
    80003f08:	47490913          	addi	s2,s2,1140 # 80081378 <OSIntNesting>
    80003f0c:	0007ca97          	auipc	s5,0x7c
    80003f10:	53ca8a93          	addi	s5,s5,1340 # 80080448 <OSLockNesting>
    80003f14:	06400493          	li	s1,100
    80003f18:	7e9000ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003f1c:	000a2783          	lw	a5,0(s4)
    80003f20:	0007c717          	auipc	a4,0x7c
    80003f24:	52072e23          	sw	zero,1340(a4) # 8008045c <OSIdleCtr>
    80003f28:	0007f717          	auipc	a4,0x7f
    80003f2c:	86f72823          	sw	a5,-1936(a4) # 80082798 <OSIdleCtrRun>
    80003f30:	7db000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003f34:	4018                	lw	a4,0(s0)
    80003f36:	0009a783          	lw	a5,0(s3)
    80003f3a:	02e7d7bb          	divuw	a5,a5,a4
    80003f3e:	40f487bb          	subw	a5,s1,a5
    80003f42:	0007d717          	auipc	a4,0x7d
    80003f46:	f2f70f23          	sb	a5,-194(a4) # 80080e80 <OSCPUUsage>
    80003f4a:	158010ef          	jal	ra,800050a2 <OSTaskStatHook>
    80003f4e:	e15ff0ef          	jal	ra,80003d62 <OS_TaskStatStkChk>
    80003f52:	00094783          	lbu	a5,0(s2)
    80003f56:	f3e9                	bnez	a5,80003f18 <OS_TaskStat+0x76>
    80003f58:	000ac783          	lbu	a5,0(s5)
    80003f5c:	ffd5                	bnez	a5,80003f18 <OS_TaskStat+0x76>
    80003f5e:	4529                	li	a0,10
    80003f60:	a5cfd0ef          	jal	ra,800011bc <OSTimeDly.part.9>
    80003f64:	bf55                	j	80003f18 <OS_TaskStat+0x76>
    80003f66:	0ff00513          	li	a0,255
    80003f6a:	0007d797          	auipc	a5,0x7d
    80003f6e:	f0078b23          	sb	zero,-234(a5) # 80080e80 <OSCPUUsage>
    80003f72:	e49ff0ef          	jal	ra,80003dba <OSTaskSuspend>
    80003f76:	bfbd                	j	80003ef4 <OS_TaskStat+0x52>

0000000080003f78 <OSTaskQuery>:
    80003f78:	1101                	addi	sp,sp,-32
    80003f7a:	e822                	sd	s0,16(sp)
    80003f7c:	e426                	sd	s1,8(sp)
    80003f7e:	ec06                	sd	ra,24(sp)
    80003f80:	84aa                	mv	s1,a0
    80003f82:	842e                	mv	s0,a1
    80003f84:	77d000ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80003f88:	0ff00793          	li	a5,255
    80003f8c:	00f49963          	bne	s1,a5,80003f9e <OSTaskQuery+0x26>
    80003f90:	0007d797          	auipc	a5,0x7d
    80003f94:	3f078793          	addi	a5,a5,1008 # 80081380 <OSTCBCur>
    80003f98:	639c                	ld	a5,0(a5)
    80003f9a:	05a7c483          	lbu	s1,90(a5)
    80003f9e:	0007e797          	auipc	a5,0x7e
    80003fa2:	5fa78793          	addi	a5,a5,1530 # 80082598 <OSTCBPrioTbl>
    80003fa6:	048e                	slli	s1,s1,0x3
    80003fa8:	94be                	add	s1,s1,a5
    80003faa:	609c                	ld	a5,0(s1)
    80003fac:	c795                	beqz	a5,80003fd8 <OSTaskQuery+0x60>
    80003fae:	4705                	li	a4,1
    80003fb0:	09078693          	addi	a3,a5,144
    80003fb4:	02e78763          	beq	a5,a4,80003fe2 <OSTaskQuery+0x6a>
    80003fb8:	0785                	addi	a5,a5,1
    80003fba:	fff7c703          	lbu	a4,-1(a5)
    80003fbe:	0405                	addi	s0,s0,1
    80003fc0:	fee40fa3          	sb	a4,-1(s0)
    80003fc4:	fed79ae3          	bne	a5,a3,80003fb8 <OSTaskQuery+0x40>
    80003fc8:	743000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003fcc:	4501                	li	a0,0
    80003fce:	60e2                	ld	ra,24(sp)
    80003fd0:	6442                	ld	s0,16(sp)
    80003fd2:	64a2                	ld	s1,8(sp)
    80003fd4:	6105                	addi	sp,sp,32
    80003fd6:	8082                	ret
    80003fd8:	733000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003fdc:	02900513          	li	a0,41
    80003fe0:	b7fd                	j	80003fce <OSTaskQuery+0x56>
    80003fe2:	729000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80003fe6:	04300513          	li	a0,67
    80003fea:	b7d5                	j	80003fce <OSTaskQuery+0x56>

0000000080003fec <OSTaskRegGet>:
    80003fec:	1101                	addi	sp,sp,-32
    80003fee:	e822                	sd	s0,16(sp)
    80003ff0:	e426                	sd	s1,8(sp)
    80003ff2:	e04a                	sd	s2,0(sp)
    80003ff4:	ec06                	sd	ra,24(sp)
    80003ff6:	84aa                	mv	s1,a0
    80003ff8:	842e                	mv	s0,a1
    80003ffa:	8932                	mv	s2,a2
    80003ffc:	705000ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80004000:	0ff00793          	li	a5,255
    80004004:	02f48963          	beq	s1,a5,80004036 <OSTaskRegGet+0x4a>
    80004008:	048e                	slli	s1,s1,0x3
    8000400a:	0007e797          	auipc	a5,0x7e
    8000400e:	58e78793          	addi	a5,a5,1422 # 80082598 <OSTCBPrioTbl>
    80004012:	94be                	add	s1,s1,a5
    80004014:	608c                	ld	a1,0(s1)
    80004016:	02040413          	addi	s0,s0,32
    8000401a:	040a                	slli	s0,s0,0x2
    8000401c:	942e                	add	s0,s0,a1
    8000401e:	4400                	lw	s0,8(s0)
    80004020:	6eb000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80004024:	00090023          	sb	zero,0(s2)
    80004028:	8522                	mv	a0,s0
    8000402a:	60e2                	ld	ra,24(sp)
    8000402c:	6442                	ld	s0,16(sp)
    8000402e:	64a2                	ld	s1,8(sp)
    80004030:	6902                	ld	s2,0(sp)
    80004032:	6105                	addi	sp,sp,32
    80004034:	8082                	ret
    80004036:	0007d797          	auipc	a5,0x7d
    8000403a:	34a78793          	addi	a5,a5,842 # 80081380 <OSTCBCur>
    8000403e:	638c                	ld	a1,0(a5)
    80004040:	bfd9                	j	80004016 <OSTaskRegGet+0x2a>

0000000080004042 <OSTaskRegSet>:
    80004042:	7179                	addi	sp,sp,-48
    80004044:	f022                	sd	s0,32(sp)
    80004046:	ec26                	sd	s1,24(sp)
    80004048:	e84a                	sd	s2,16(sp)
    8000404a:	e44e                	sd	s3,8(sp)
    8000404c:	f406                	sd	ra,40(sp)
    8000404e:	84aa                	mv	s1,a0
    80004050:	842e                	mv	s0,a1
    80004052:	89b2                	mv	s3,a2
    80004054:	8936                	mv	s2,a3
    80004056:	6ab000ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000405a:	0ff00793          	li	a5,255
    8000405e:	02f48a63          	beq	s1,a5,80004092 <OSTaskRegSet+0x50>
    80004062:	048e                	slli	s1,s1,0x3
    80004064:	0007e797          	auipc	a5,0x7e
    80004068:	53478793          	addi	a5,a5,1332 # 80082598 <OSTCBPrioTbl>
    8000406c:	94be                	add	s1,s1,a5
    8000406e:	608c                	ld	a1,0(s1)
    80004070:	02040413          	addi	s0,s0,32
    80004074:	040a                	slli	s0,s0,0x2
    80004076:	942e                	add	s0,s0,a1
    80004078:	01342423          	sw	s3,8(s0)
    8000407c:	68f000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80004080:	00090023          	sb	zero,0(s2)
    80004084:	70a2                	ld	ra,40(sp)
    80004086:	7402                	ld	s0,32(sp)
    80004088:	64e2                	ld	s1,24(sp)
    8000408a:	6942                	ld	s2,16(sp)
    8000408c:	69a2                	ld	s3,8(sp)
    8000408e:	6145                	addi	sp,sp,48
    80004090:	8082                	ret
    80004092:	0007d797          	auipc	a5,0x7d
    80004096:	2ee78793          	addi	a5,a5,750 # 80081380 <OSTCBCur>
    8000409a:	638c                	ld	a1,0(a5)
    8000409c:	bfd1                	j	80004070 <OSTaskRegSet+0x2e>

000000008000409e <OS_TaskReturn>:
    8000409e:	1141                	addi	sp,sp,-16
    800040a0:	0007d797          	auipc	a5,0x7d
    800040a4:	2e078793          	addi	a5,a5,736 # 80081380 <OSTCBCur>
    800040a8:	e406                	sd	ra,8(sp)
    800040aa:	6388                	ld	a0,0(a5)
    800040ac:	026010ef          	jal	ra,800050d2 <OSTaskReturnHook>
    800040b0:	0007d797          	auipc	a5,0x7d
    800040b4:	2c87c783          	lbu	a5,712(a5) # 80081378 <OSIntNesting>
    800040b8:	c781                	beqz	a5,800040c0 <OS_TaskReturn+0x22>
    800040ba:	60a2                	ld	ra,8(sp)
    800040bc:	0141                	addi	sp,sp,16
    800040be:	8082                	ret
    800040c0:	60a2                	ld	ra,8(sp)
    800040c2:	0ff00513          	li	a0,255
    800040c6:	0141                	addi	sp,sp,16
    800040c8:	ef3fc06f          	j	80000fba <OSTaskDel.part.6>

00000000800040cc <OS_TaskStkClr>:
    800040cc:	8a0d                	andi	a2,a2,3
    800040ce:	478d                	li	a5,3
    800040d0:	00f60363          	beq	a2,a5,800040d6 <OS_TaskStkClr+0xa>
    800040d4:	8082                	ret
    800040d6:	ddfd                	beqz	a1,800040d4 <OS_TaskStkClr+0x8>
    800040d8:	fff5879b          	addiw	a5,a1,-1
    800040dc:	1782                	slli	a5,a5,0x20
    800040de:	9381                	srli	a5,a5,0x20
    800040e0:	0785                	addi	a5,a5,1
    800040e2:	078e                	slli	a5,a5,0x3
    800040e4:	97aa                	add	a5,a5,a0
    800040e6:	0521                	addi	a0,a0,8
    800040e8:	fe053c23          	sd	zero,-8(a0)
    800040ec:	fef51de3          	bne	a0,a5,800040e6 <OS_TaskStkClr+0x1a>
    800040f0:	8082                	ret

00000000800040f2 <OSTimeDly>:
    800040f2:	0007d797          	auipc	a5,0x7d
    800040f6:	2867c783          	lbu	a5,646(a5) # 80081378 <OSIntNesting>
    800040fa:	e799                	bnez	a5,80004108 <OSTimeDly+0x16>
    800040fc:	0007c797          	auipc	a5,0x7c
    80004100:	34c7c783          	lbu	a5,844(a5) # 80080448 <OSLockNesting>
    80004104:	e391                	bnez	a5,80004108 <OSTimeDly+0x16>
    80004106:	e111                	bnez	a0,8000410a <OSTimeDly+0x18>
    80004108:	8082                	ret
    8000410a:	8b2fd06f          	j	800011bc <OSTimeDly.part.9>

000000008000410e <OSTimeDlyHMSM>:
    8000410e:	1141                	addi	sp,sp,-16
    80004110:	e022                	sd	s0,0(sp)
    80004112:	e406                	sd	ra,8(sp)
    80004114:	0007d797          	auipc	a5,0x7d
    80004118:	2647c783          	lbu	a5,612(a5) # 80081378 <OSIntNesting>
    8000411c:	05500413          	li	s0,85
    80004120:	e3b9                	bnez	a5,80004166 <OSTimeDlyHMSM+0x58>
    80004122:	0007c417          	auipc	s0,0x7c
    80004126:	32644403          	lbu	s0,806(s0) # 80080448 <OSLockNesting>
    8000412a:	e039                	bnez	s0,80004170 <OSTimeDlyHMSM+0x62>
    8000412c:	06400793          	li	a5,100
    80004130:	02f686b3          	mul	a3,a3,a5
    80004134:	00459793          	slli	a5,a1,0x4
    80004138:	40b785b3          	sub	a1,a5,a1
    8000413c:	3e800793          	li	a5,1000
    80004140:	058a                	slli	a1,a1,0x2
    80004142:	962e                	add	a2,a2,a1
    80004144:	1f468693          	addi	a3,a3,500
    80004148:	02f6d6b3          	divu	a3,a3,a5
    8000414c:	6785                	lui	a5,0x1
    8000414e:	e1078793          	addi	a5,a5,-496 # e10 <RISCV_MIE_MSIE+0xe08>
    80004152:	02f50533          	mul	a0,a0,a5
    80004156:	06400793          	li	a5,100
    8000415a:	9532                	add	a0,a0,a2
    8000415c:	02a7853b          	mulw	a0,a5,a0
    80004160:	9d35                	addw	a0,a0,a3
    80004162:	f91ff0ef          	jal	ra,800040f2 <OSTimeDly>
    80004166:	8522                	mv	a0,s0
    80004168:	60a2                	ld	ra,8(sp)
    8000416a:	6402                	ld	s0,0(sp)
    8000416c:	0141                	addi	sp,sp,16
    8000416e:	8082                	ret
    80004170:	03200413          	li	s0,50
    80004174:	8522                	mv	a0,s0
    80004176:	60a2                	ld	ra,8(sp)
    80004178:	6402                	ld	s0,0(sp)
    8000417a:	0141                	addi	sp,sp,16
    8000417c:	8082                	ret

000000008000417e <OSTimeDlyResume>:
    8000417e:	03e00793          	li	a5,62
    80004182:	04a7e963          	bltu	a5,a0,800041d4 <OSTimeDlyResume+0x56>
    80004186:	1141                	addi	sp,sp,-16
    80004188:	e022                	sd	s0,0(sp)
    8000418a:	e406                	sd	ra,8(sp)
    8000418c:	842a                	mv	s0,a0
    8000418e:	573000ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80004192:	0007e797          	auipc	a5,0x7e
    80004196:	40678793          	addi	a5,a5,1030 # 80082598 <OSTCBPrioTbl>
    8000419a:	040e                	slli	s0,s0,0x3
    8000419c:	943e                	add	s0,s0,a5
    8000419e:	601c                	ld	a5,0(s0)
    800041a0:	862a                	mv	a2,a0
    800041a2:	c7d9                	beqz	a5,80004230 <OSTimeDlyResume+0xb2>
    800041a4:	4685                	li	a3,1
    800041a6:	08d78563          	beq	a5,a3,80004230 <OSTimeDlyResume+0xb2>
    800041aa:	4bf8                	lw	a4,84(a5)
    800041ac:	c759                	beqz	a4,8000423a <OSTimeDlyResume+0xbc>
    800041ae:	0587c703          	lbu	a4,88(a5)
    800041b2:	0407aa23          	sw	zero,84(a5)
    800041b6:	03777593          	andi	a1,a4,55
    800041ba:	e185                	bnez	a1,800041da <OSTimeDlyResume+0x5c>
    800041bc:	04078ca3          	sb	zero,89(a5)
    800041c0:	8b21                	andi	a4,a4,8
    800041c2:	c705                	beqz	a4,800041ea <OSTimeDlyResume+0x6c>
    800041c4:	8532                	mv	a0,a2
    800041c6:	545000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    800041ca:	4501                	li	a0,0
    800041cc:	60a2                	ld	ra,8(sp)
    800041ce:	6402                	ld	s0,0(sp)
    800041d0:	0141                	addi	sp,sp,16
    800041d2:	8082                	ret
    800041d4:	02a00513          	li	a0,42
    800041d8:	8082                	ret
    800041da:	0c877713          	andi	a4,a4,200
    800041de:	04e78c23          	sb	a4,88(a5)
    800041e2:	04d78ca3          	sb	a3,89(a5)
    800041e6:	8b21                	andi	a4,a4,8
    800041e8:	ff71                	bnez	a4,800041c4 <OSTimeDlyResume+0x46>
    800041ea:	05c7c683          	lbu	a3,92(a5)
    800041ee:	0007d717          	auipc	a4,0x7d
    800041f2:	d7a70713          	addi	a4,a4,-646 # 80080f68 <OSRdyTbl>
    800041f6:	05e7c583          	lbu	a1,94(a5)
    800041fa:	9736                	add	a4,a4,a3
    800041fc:	00074683          	lbu	a3,0(a4)
    80004200:	05d7c783          	lbu	a5,93(a5)
    80004204:	0007d517          	auipc	a0,0x7d
    80004208:	d5c54503          	lbu	a0,-676(a0) # 80080f60 <OSRdyGrp>
    8000420c:	8dc9                	or	a1,a1,a0
    8000420e:	8fd5                	or	a5,a5,a3
    80004210:	8532                	mv	a0,a2
    80004212:	0007d697          	auipc	a3,0x7d
    80004216:	d4b68723          	sb	a1,-690(a3) # 80080f60 <OSRdyGrp>
    8000421a:	00f70023          	sb	a5,0(a4)
    8000421e:	4ed000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80004222:	949fc0ef          	jal	ra,80000b6a <OS_Sched>
    80004226:	60a2                	ld	ra,8(sp)
    80004228:	6402                	ld	s0,0(sp)
    8000422a:	4501                	li	a0,0
    8000422c:	0141                	addi	sp,sp,16
    8000422e:	8082                	ret
    80004230:	4db000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    80004234:	04300513          	li	a0,67
    80004238:	bf51                	j	800041cc <OSTimeDlyResume+0x4e>
    8000423a:	4d1000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000423e:	05000513          	li	a0,80
    80004242:	b769                	j	800041cc <OSTimeDlyResume+0x4e>

0000000080004244 <OSTimeGet>:
    80004244:	1141                	addi	sp,sp,-16
    80004246:	e406                	sd	ra,8(sp)
    80004248:	e022                	sd	s0,0(sp)
    8000424a:	4b7000ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    8000424e:	0007d797          	auipc	a5,0x7d
    80004252:	13e78793          	addi	a5,a5,318 # 8008138c <OSTime>
    80004256:	4380                	lw	s0,0(a5)
    80004258:	4b3000ef          	jal	ra,80004f0a <OS_CPU_SR_Restore>
    8000425c:	60a2                	ld	ra,8(sp)
    8000425e:	2401                	sext.w	s0,s0
    80004260:	8522                	mv	a0,s0
    80004262:	6402                	ld	s0,0(sp)
    80004264:	0141                	addi	sp,sp,16
    80004266:	8082                	ret

0000000080004268 <OSTimeSet>:
    80004268:	1141                	addi	sp,sp,-16
    8000426a:	e022                	sd	s0,0(sp)
    8000426c:	842a                	mv	s0,a0
    8000426e:	e406                	sd	ra,8(sp)
    80004270:	491000ef          	jal	ra,80004f00 <OS_CPU_SR_Save>
    80004274:	0007d797          	auipc	a5,0x7d
    80004278:	1087ac23          	sw	s0,280(a5) # 8008138c <OSTime>
    8000427c:	6402                	ld	s0,0(sp)
    8000427e:	60a2                	ld	ra,8(sp)
    80004280:	0141                	addi	sp,sp,16
    80004282:	4890006f          	j	80004f0a <OS_CPU_SR_Restore>

0000000080004286 <OSTmrCreate>:
    80004286:	0007d897          	auipc	a7,0x7d
    8000428a:	0f28c883          	lbu	a7,242(a7) # 80081378 <OSIntNesting>
    8000428e:	0c089c63          	bnez	a7,80004366 <OSTmrCreate+0xe0>
    80004292:	711d                	addi	sp,sp,-96
    80004294:	e8a2                	sd	s0,80(sp)
    80004296:	e4a6                	sd	s1,72(sp)
    80004298:	e0ca                	sd	s2,64(sp)
    8000429a:	fc4e                	sd	s3,56(sp)
    8000429c:	f852                	sd	s4,48(sp)
    8000429e:	f456                	sd	s5,40(sp)
    800042a0:	f05a                	sd	s6,32(sp)
    800042a2:	ec5e                	sd	s7,24(sp)
    800042a4:	84aa                	mv	s1,a0
    800042a6:	ec86                	sd	ra,88(sp)
    800042a8:	0007c917          	auipc	s2,0x7c
    800042ac:	1b094903          	lbu	s2,432(s2) # 80080458 <OSRunning>
    800042b0:	4505                	li	a0,1
    800042b2:	8442                	mv	s0,a6
    800042b4:	8bbe                	mv	s7,a5
    800042b6:	8b3a                	mv	s6,a4
    800042b8:	8ab6                	mv	s5,a3
    800042ba:	8a32                	mv	s4,a2
    800042bc:	89ae                	mv	s3,a1
    800042be:	08a90763          	beq	s2,a0,8000434c <OSTmrCreate+0xc6>
    800042c2:	0007c517          	auipc	a0,0x7c
    800042c6:	0fe50513          	addi	a0,a0,254 # 800803c0 <OSTmrFreeList>
    800042ca:	6108                	ld	a0,0(a0)
    800042cc:	c95d                	beqz	a0,80004382 <OSTmrCreate+0xfc>
    800042ce:	01853303          	ld	t1,24(a0)
    800042d2:	0007c897          	auipc	a7,0x7c
    800042d6:	18e8d883          	lhu	a7,398(a7) # 80080460 <OSTmrUsed>
    800042da:	0007d817          	auipc	a6,0x7d
    800042de:	b9285803          	lhu	a6,-1134(a6) # 80080e6c <OSTmrFree>
    800042e2:	387d                	addiw	a6,a6,-1
    800042e4:	2885                	addiw	a7,a7,1
    800042e6:	0007d797          	auipc	a5,0x7d
    800042ea:	b9079323          	sh	a6,-1146(a5) # 80080e6c <OSTmrFree>
    800042ee:	0007c797          	auipc	a5,0x7c
    800042f2:	0c67b923          	sd	t1,210(a5) # 800803c0 <OSTmrFreeList>
    800042f6:	0007c797          	auipc	a5,0x7c
    800042fa:	17179523          	sh	a7,362(a5) # 80080460 <OSTmrUsed>
    800042fe:	4805                	li	a6,1
    80004300:	00053c23          	sd	zero,24(a0)
    80004304:	02053023          	sd	zero,32(a0)
    80004308:	050500a3          	sb	a6,65(a0)
    8000430c:	d544                	sw	s1,44(a0)
    8000430e:	03352823          	sw	s3,48(a0)
    80004312:	05450023          	sb	s4,64(a0)
    80004316:	01553423          	sd	s5,8(a0)
    8000431a:	01653823          	sd	s6,16(a0)
    8000431e:	03753c23          	sd	s7,56(a0)
    80004322:	4785                	li	a5,1
    80004324:	00f90f63          	beq	s2,a5,80004342 <OSTmrCreate+0xbc>
    80004328:	00040023          	sb	zero,0(s0)
    8000432c:	60e6                	ld	ra,88(sp)
    8000432e:	6446                	ld	s0,80(sp)
    80004330:	64a6                	ld	s1,72(sp)
    80004332:	6906                	ld	s2,64(sp)
    80004334:	79e2                	ld	s3,56(sp)
    80004336:	7a42                	ld	s4,48(sp)
    80004338:	7aa2                	ld	s5,40(sp)
    8000433a:	7b02                	ld	s6,32(sp)
    8000433c:	6be2                	ld	s7,24(sp)
    8000433e:	6125                	addi	sp,sp,96
    80004340:	8082                	ret
    80004342:	e42a                	sd	a0,8(sp)
    80004344:	bb7fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    80004348:	6522                	ld	a0,8(sp)
    8000434a:	bff9                	j	80004328 <OSTmrCreate+0xa2>
    8000434c:	8fafc0ef          	jal	ra,80000446 <OSSchedLock.part.1>
    80004350:	0007c517          	auipc	a0,0x7c
    80004354:	07050513          	addi	a0,a0,112 # 800803c0 <OSTmrFreeList>
    80004358:	6108                	ld	a0,0(a0)
    8000435a:	cd01                	beqz	a0,80004372 <OSTmrCreate+0xec>
    8000435c:	0007c917          	auipc	s2,0x7c
    80004360:	0fc94903          	lbu	s2,252(s2) # 80080458 <OSRunning>
    80004364:	b7ad                	j	800042ce <OSTmrCreate+0x48>
    80004366:	f8b00793          	li	a5,-117
    8000436a:	00f80023          	sb	a5,0(a6)
    8000436e:	4501                	li	a0,0
    80004370:	8082                	ret
    80004372:	0007c797          	auipc	a5,0x7c
    80004376:	0e67c783          	lbu	a5,230(a5) # 80080458 <OSRunning>
    8000437a:	01279463          	bne	a5,s2,80004382 <OSTmrCreate+0xfc>
    8000437e:	b7dfc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    80004382:	f8600793          	li	a5,-122
    80004386:	00f40023          	sb	a5,0(s0)
    8000438a:	4501                	li	a0,0
    8000438c:	b745                	j	8000432c <OSTmrCreate+0xa6>

000000008000438e <OSTmrDel>:
    8000438e:	00054703          	lbu	a4,0(a0)
    80004392:	06400793          	li	a5,100
    80004396:	00f70863          	beq	a4,a5,800043a6 <OSTmrDel+0x18>
    8000439a:	f8900793          	li	a5,-119
    8000439e:	00f58023          	sb	a5,0(a1)
    800043a2:	4501                	li	a0,0
    800043a4:	8082                	ret
    800043a6:	0007d797          	auipc	a5,0x7d
    800043aa:	fd27c783          	lbu	a5,-46(a5) # 80081378 <OSIntNesting>
    800043ae:	0e079c63          	bnez	a5,800044a6 <OSTmrDel+0x118>
    800043b2:	7179                	addi	sp,sp,-48
    800043b4:	e84a                	sd	s2,16(sp)
    800043b6:	0007c917          	auipc	s2,0x7c
    800043ba:	0a290913          	addi	s2,s2,162 # 80080458 <OSRunning>
    800043be:	e44e                	sd	s3,8(sp)
    800043c0:	00094983          	lbu	s3,0(s2)
    800043c4:	f022                	sd	s0,32(sp)
    800043c6:	ec26                	sd	s1,24(sp)
    800043c8:	f406                	sd	ra,40(sp)
    800043ca:	4785                	li	a5,1
    800043cc:	84ae                	mv	s1,a1
    800043ce:	842a                	mv	s0,a0
    800043d0:	0af98563          	beq	s3,a5,8000447a <OSTmrDel+0xec>
    800043d4:	04154783          	lbu	a5,65(a0)
    800043d8:	4709                	li	a4,2
    800043da:	00f76e63          	bltu	a4,a5,800043f6 <OSTmrDel+0x68>
    800043de:	e395                	bnez	a5,80004402 <OSTmrDel+0x74>
    800043e0:	00094703          	lbu	a4,0(s2)
    800043e4:	4785                	li	a5,1
    800043e6:	0cf70663          	beq	a4,a5,800044b2 <OSTmrDel+0x124>
    800043ea:	f8700793          	li	a5,-121
    800043ee:	00f48023          	sb	a5,0(s1)
    800043f2:	4501                	li	a0,0
    800043f4:	a8a5                	j	8000446c <OSTmrDel+0xde>
    800043f6:	470d                	li	a4,3
    800043f8:	0ae79163          	bne	a5,a4,8000449a <OSTmrDel+0x10c>
    800043fc:	8522                	mv	a0,s0
    800043fe:	fd5fb0ef          	jal	ra,800003d2 <OSTmr_Unlink>
    80004402:	0007c797          	auipc	a5,0x7c
    80004406:	fbe78793          	addi	a5,a5,-66 # 800803c0 <OSTmrFreeList>
    8000440a:	6390                	ld	a2,0(a5)
    8000440c:	0007c717          	auipc	a4,0x7c
    80004410:	05475703          	lhu	a4,84(a4) # 80080460 <OSTmrUsed>
    80004414:	0007d797          	auipc	a5,0x7d
    80004418:	a587d783          	lhu	a5,-1448(a5) # 80080e6c <OSTmrFree>
    8000441c:	00094683          	lbu	a3,0(s2)
    80004420:	377d                	addiw	a4,a4,-1
    80004422:	2785                	addiw	a5,a5,1
    80004424:	0007c597          	auipc	a1,0x7c
    80004428:	e3c58593          	addi	a1,a1,-452 # 80080260 <OSUnMapTbl+0x260>
    8000442c:	ec10                	sd	a2,24(s0)
    8000442e:	04041023          	sh	zero,64(s0)
    80004432:	0007c617          	auipc	a2,0x7c
    80004436:	02e61723          	sh	a4,46(a2) # 80080460 <OSTmrUsed>
    8000443a:	02042823          	sw	zero,48(s0)
    8000443e:	0007d717          	auipc	a4,0x7d
    80004442:	a2f71723          	sh	a5,-1490(a4) # 80080e6c <OSTmrFree>
    80004446:	02042423          	sw	zero,40(s0)
    8000444a:	00043423          	sd	zero,8(s0)
    8000444e:	00043823          	sd	zero,16(s0)
    80004452:	fc0c                	sd	a1,56(s0)
    80004454:	02043023          	sd	zero,32(s0)
    80004458:	0007c617          	auipc	a2,0x7c
    8000445c:	f6863423          	sd	s0,-152(a2) # 800803c0 <OSTmrFreeList>
    80004460:	4785                	li	a5,1
    80004462:	04f68b63          	beq	a3,a5,800044b8 <OSTmrDel+0x12a>
    80004466:	00048023          	sb	zero,0(s1)
    8000446a:	4505                	li	a0,1
    8000446c:	70a2                	ld	ra,40(sp)
    8000446e:	7402                	ld	s0,32(sp)
    80004470:	64e2                	ld	s1,24(sp)
    80004472:	6942                	ld	s2,16(sp)
    80004474:	69a2                	ld	s3,8(sp)
    80004476:	6145                	addi	sp,sp,48
    80004478:	8082                	ret
    8000447a:	fcdfb0ef          	jal	ra,80000446 <OSSchedLock.part.1>
    8000447e:	04144783          	lbu	a5,65(s0)
    80004482:	4709                	li	a4,2
    80004484:	f4f77de3          	bleu	a5,a4,800043de <OSTmrDel+0x50>
    80004488:	470d                	li	a4,3
    8000448a:	f6e789e3          	beq	a5,a4,800043fc <OSTmrDel+0x6e>
    8000448e:	00094783          	lbu	a5,0(s2)
    80004492:	01379463          	bne	a5,s3,8000449a <OSTmrDel+0x10c>
    80004496:	a65fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    8000449a:	f8d00793          	li	a5,-115
    8000449e:	00f48023          	sb	a5,0(s1)
    800044a2:	4501                	li	a0,0
    800044a4:	b7e1                	j	8000446c <OSTmrDel+0xde>
    800044a6:	f8b00793          	li	a5,-117
    800044aa:	00f58023          	sb	a5,0(a1)
    800044ae:	4501                	li	a0,0
    800044b0:	8082                	ret
    800044b2:	a49fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    800044b6:	bf15                	j	800043ea <OSTmrDel+0x5c>
    800044b8:	a43fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    800044bc:	b76d                	j	80004466 <OSTmrDel+0xd8>

00000000800044be <OSTmrNameGet>:
    800044be:	7139                	addi	sp,sp,-64
    800044c0:	fc06                	sd	ra,56(sp)
    800044c2:	f822                	sd	s0,48(sp)
    800044c4:	f426                	sd	s1,40(sp)
    800044c6:	f04a                	sd	s2,32(sp)
    800044c8:	ec4e                	sd	s3,24(sp)
    800044ca:	e852                	sd	s4,16(sp)
    800044cc:	e456                	sd	s5,8(sp)
    800044ce:	00054703          	lbu	a4,0(a0)
    800044d2:	06400793          	li	a5,100
    800044d6:	02f70163          	beq	a4,a5,800044f8 <OSTmrNameGet+0x3a>
    800044da:	f8900793          	li	a5,-119
    800044de:	00f60023          	sb	a5,0(a2)
    800044e2:	4401                	li	s0,0
    800044e4:	8522                	mv	a0,s0
    800044e6:	70e2                	ld	ra,56(sp)
    800044e8:	7442                	ld	s0,48(sp)
    800044ea:	74a2                	ld	s1,40(sp)
    800044ec:	7902                	ld	s2,32(sp)
    800044ee:	69e2                	ld	s3,24(sp)
    800044f0:	6a42                	ld	s4,16(sp)
    800044f2:	6aa2                	ld	s5,8(sp)
    800044f4:	6121                	addi	sp,sp,64
    800044f6:	8082                	ret
    800044f8:	0007d417          	auipc	s0,0x7d
    800044fc:	e8044403          	lbu	s0,-384(s0) # 80081378 <OSIntNesting>
    80004500:	e805                	bnez	s0,80004530 <OSTmrNameGet+0x72>
    80004502:	0007c917          	auipc	s2,0x7c
    80004506:	f5690913          	addi	s2,s2,-170 # 80080458 <OSRunning>
    8000450a:	00094983          	lbu	s3,0(s2)
    8000450e:	4785                	li	a5,1
    80004510:	84b2                	mv	s1,a2
    80004512:	8aae                	mv	s5,a1
    80004514:	8a2a                	mv	s4,a0
    80004516:	06f98263          	beq	s3,a5,8000457a <OSTmrNameGet+0xbc>
    8000451a:	04154783          	lbu	a5,65(a0)
    8000451e:	c7a1                	beqz	a5,80004566 <OSTmrNameGet+0xa8>
    80004520:	470d                	li	a4,3
    80004522:	00f77c63          	bleu	a5,a4,8000453a <OSTmrNameGet+0x7c>
    80004526:	f8d00793          	li	a5,-115
    8000452a:	00f48023          	sb	a5,0(s1)
    8000452e:	bf5d                	j	800044e4 <OSTmrNameGet+0x26>
    80004530:	47c5                	li	a5,17
    80004532:	00f60023          	sb	a5,0(a2)
    80004536:	4401                	li	s0,0
    80004538:	b775                	j	800044e4 <OSTmrNameGet+0x26>
    8000453a:	038a3783          	ld	a5,56(s4)
    8000453e:	00fab023          	sd	a5,0(s5)
    80004542:	0007c703          	lbu	a4,0(a5)
    80004546:	c32d                	beqz	a4,800045a8 <OSTmrNameGet+0xea>
    80004548:	0785                	addi	a5,a5,1
    8000454a:	0007c703          	lbu	a4,0(a5)
    8000454e:	2405                	addiw	s0,s0,1
    80004550:	0ff47413          	andi	s0,s0,255
    80004554:	fb75                	bnez	a4,80004548 <OSTmrNameGet+0x8a>
    80004556:	00094703          	lbu	a4,0(s2)
    8000455a:	4785                	li	a5,1
    8000455c:	02f70e63          	beq	a4,a5,80004598 <OSTmrNameGet+0xda>
    80004560:	00048023          	sb	zero,0(s1)
    80004564:	b741                	j	800044e4 <OSTmrNameGet+0x26>
    80004566:	00094703          	lbu	a4,0(s2)
    8000456a:	4785                	li	a5,1
    8000456c:	02f70b63          	beq	a4,a5,800045a2 <OSTmrNameGet+0xe4>
    80004570:	f8700793          	li	a5,-121
    80004574:	00f48023          	sb	a5,0(s1)
    80004578:	b7b5                	j	800044e4 <OSTmrNameGet+0x26>
    8000457a:	ecdfb0ef          	jal	ra,80000446 <OSSchedLock.part.1>
    8000457e:	041a4783          	lbu	a5,65(s4)
    80004582:	d3f5                	beqz	a5,80004566 <OSTmrNameGet+0xa8>
    80004584:	470d                	li	a4,3
    80004586:	faf77ae3          	bleu	a5,a4,8000453a <OSTmrNameGet+0x7c>
    8000458a:	00094783          	lbu	a5,0(s2)
    8000458e:	f9379ce3          	bne	a5,s3,80004526 <OSTmrNameGet+0x68>
    80004592:	969fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    80004596:	bf41                	j	80004526 <OSTmrNameGet+0x68>
    80004598:	963fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    8000459c:	00048023          	sb	zero,0(s1)
    800045a0:	b791                	j	800044e4 <OSTmrNameGet+0x26>
    800045a2:	959fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    800045a6:	b7e9                	j	80004570 <OSTmrNameGet+0xb2>
    800045a8:	4401                	li	s0,0
    800045aa:	b775                	j	80004556 <OSTmrNameGet+0x98>

00000000800045ac <OSTmrRemainGet>:
    800045ac:	00054703          	lbu	a4,0(a0)
    800045b0:	06400793          	li	a5,100
    800045b4:	00f70863          	beq	a4,a5,800045c4 <OSTmrRemainGet+0x18>
    800045b8:	f8900793          	li	a5,-119
    800045bc:	00f58023          	sb	a5,0(a1)
    800045c0:	4501                	li	a0,0
    800045c2:	8082                	ret
    800045c4:	0007d797          	auipc	a5,0x7d
    800045c8:	db47c783          	lbu	a5,-588(a5) # 80081378 <OSIntNesting>
    800045cc:	ebb9                	bnez	a5,80004622 <OSTmrRemainGet+0x76>
    800045ce:	7139                	addi	sp,sp,-64
    800045d0:	f822                	sd	s0,48(sp)
    800045d2:	f426                	sd	s1,40(sp)
    800045d4:	f04a                	sd	s2,32(sp)
    800045d6:	ec4e                	sd	s3,24(sp)
    800045d8:	fc06                	sd	ra,56(sp)
    800045da:	0007c917          	auipc	s2,0x7c
    800045de:	e7e94903          	lbu	s2,-386(s2) # 80080458 <OSRunning>
    800045e2:	4705                	li	a4,1
    800045e4:	84ae                	mv	s1,a1
    800045e6:	842a                	mv	s0,a0
    800045e8:	0007c997          	auipc	s3,0x7c
    800045ec:	e7098993          	addi	s3,s3,-400 # 80080458 <OSRunning>
    800045f0:	02e90f63          	beq	s2,a4,8000462e <OSTmrRemainGet+0x82>
    800045f4:	04154783          	lbu	a5,65(a0)
    800045f8:	06e78963          	beq	a5,a4,8000466a <OSTmrRemainGet+0xbe>
    800045fc:	cbd9                	beqz	a5,80004692 <OSTmrRemainGet+0xe6>
    800045fe:	4709                	li	a4,2
    80004600:	0ae78463          	beq	a5,a4,800046a8 <OSTmrRemainGet+0xfc>
    80004604:	470d                	li	a4,3
    80004606:	04e78563          	beq	a5,a4,80004650 <OSTmrRemainGet+0xa4>
    8000460a:	f8d00793          	li	a5,-115
    8000460e:	00f48023          	sb	a5,0(s1)
    80004612:	4501                	li	a0,0
    80004614:	70e2                	ld	ra,56(sp)
    80004616:	7442                	ld	s0,48(sp)
    80004618:	74a2                	ld	s1,40(sp)
    8000461a:	7902                	ld	s2,32(sp)
    8000461c:	69e2                	ld	s3,24(sp)
    8000461e:	6121                	addi	sp,sp,64
    80004620:	8082                	ret
    80004622:	f8b00793          	li	a5,-117
    80004626:	00f58023          	sb	a5,0(a1)
    8000462a:	4501                	li	a0,0
    8000462c:	8082                	ret
    8000462e:	e19fb0ef          	jal	ra,80000446 <OSSchedLock.part.1>
    80004632:	04144783          	lbu	a5,65(s0)
    80004636:	03278a63          	beq	a5,s2,8000466a <OSTmrRemainGet+0xbe>
    8000463a:	cfa1                	beqz	a5,80004692 <OSTmrRemainGet+0xe6>
    8000463c:	4709                	li	a4,2
    8000463e:	06e78563          	beq	a5,a4,800046a8 <OSTmrRemainGet+0xfc>
    80004642:	470d                	li	a4,3
    80004644:	08e79a63          	bne	a5,a4,800046d8 <OSTmrRemainGet+0x12c>
    80004648:	0007c917          	auipc	s2,0x7c
    8000464c:	e1094903          	lbu	s2,-496(s2) # 80080458 <OSRunning>
    80004650:	0007d797          	auipc	a5,0x7d
    80004654:	d3878793          	addi	a5,a5,-712 # 80081388 <OSTmrTime>
    80004658:	4398                	lw	a4,0(a5)
    8000465a:	5408                	lw	a0,40(s0)
    8000465c:	4785                	li	a5,1
    8000465e:	9d19                	subw	a0,a0,a4
    80004660:	02f90263          	beq	s2,a5,80004684 <OSTmrRemainGet+0xd8>
    80004664:	00048023          	sb	zero,0(s1)
    80004668:	b775                	j	80004614 <OSTmrRemainGet+0x68>
    8000466a:	04044703          	lbu	a4,64(s0)
    8000466e:	4789                	li	a5,2
    80004670:	04f71563          	bne	a4,a5,800046ba <OSTmrRemainGet+0x10e>
    80004674:	5448                	lw	a0,44(s0)
    80004676:	e111                	bnez	a0,8000467a <OSTmrRemainGet+0xce>
    80004678:	5808                	lw	a0,48(s0)
    8000467a:	0009c703          	lbu	a4,0(s3)
    8000467e:	4785                	li	a5,1
    80004680:	fef712e3          	bne	a4,a5,80004664 <OSTmrRemainGet+0xb8>
    80004684:	e42a                	sd	a0,8(sp)
    80004686:	875fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    8000468a:	6522                	ld	a0,8(sp)
    8000468c:	00048023          	sb	zero,0(s1)
    80004690:	b751                	j	80004614 <OSTmrRemainGet+0x68>
    80004692:	0009c703          	lbu	a4,0(s3)
    80004696:	4785                	li	a5,1
    80004698:	02f70a63          	beq	a4,a5,800046cc <OSTmrRemainGet+0x120>
    8000469c:	f8700793          	li	a5,-121
    800046a0:	00f48023          	sb	a5,0(s1)
    800046a4:	4501                	li	a0,0
    800046a6:	b7bd                	j	80004614 <OSTmrRemainGet+0x68>
    800046a8:	0009c703          	lbu	a4,0(s3)
    800046ac:	4785                	li	a5,1
    800046ae:	02f70263          	beq	a4,a5,800046d2 <OSTmrRemainGet+0x126>
    800046b2:	00048023          	sb	zero,0(s1)
    800046b6:	4501                	li	a0,0
    800046b8:	bfb1                	j	80004614 <OSTmrRemainGet+0x68>
    800046ba:	0009c703          	lbu	a4,0(s3)
    800046be:	4785                	li	a5,1
    800046c0:	5448                	lw	a0,44(s0)
    800046c2:	fcf701e3          	beq	a4,a5,80004684 <OSTmrRemainGet+0xd8>
    800046c6:	00048023          	sb	zero,0(s1)
    800046ca:	b7a9                	j	80004614 <OSTmrRemainGet+0x68>
    800046cc:	82ffc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    800046d0:	b7f1                	j	8000469c <OSTmrRemainGet+0xf0>
    800046d2:	829fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    800046d6:	bff1                	j	800046b2 <OSTmrRemainGet+0x106>
    800046d8:	0009c783          	lbu	a5,0(s3)
    800046dc:	f32797e3          	bne	a5,s2,8000460a <OSTmrRemainGet+0x5e>
    800046e0:	81bfc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    800046e4:	b71d                	j	8000460a <OSTmrRemainGet+0x5e>

00000000800046e6 <OSTmrStateGet>:
    800046e6:	00054703          	lbu	a4,0(a0)
    800046ea:	06400793          	li	a5,100
    800046ee:	00f70863          	beq	a4,a5,800046fe <OSTmrStateGet+0x18>
    800046f2:	f8900793          	li	a5,-119
    800046f6:	00f58023          	sb	a5,0(a1)
    800046fa:	4501                	li	a0,0
    800046fc:	8082                	ret
    800046fe:	0007d797          	auipc	a5,0x7d
    80004702:	c7a7c783          	lbu	a5,-902(a5) # 80081378 <OSIntNesting>
    80004706:	eba1                	bnez	a5,80004756 <OSTmrStateGet+0x70>
    80004708:	7179                	addi	sp,sp,-48
    8000470a:	f022                	sd	s0,32(sp)
    8000470c:	ec26                	sd	s1,24(sp)
    8000470e:	e84a                	sd	s2,16(sp)
    80004710:	f406                	sd	ra,40(sp)
    80004712:	0007c417          	auipc	s0,0x7c
    80004716:	d4640413          	addi	s0,s0,-698 # 80080458 <OSRunning>
    8000471a:	00044703          	lbu	a4,0(s0)
    8000471e:	4785                	li	a5,1
    80004720:	84ae                	mv	s1,a1
    80004722:	892a                	mv	s2,a0
    80004724:	02f70f63          	beq	a4,a5,80004762 <OSTmrStateGet+0x7c>
    80004728:	04194503          	lbu	a0,65(s2)
    8000472c:	478d                	li	a5,3
    8000472e:	00a7ef63          	bltu	a5,a0,8000474c <OSTmrStateGet+0x66>
    80004732:	00048023          	sb	zero,0(s1)
    80004736:	00044703          	lbu	a4,0(s0)
    8000473a:	4785                	li	a5,1
    8000473c:	02f70663          	beq	a4,a5,80004768 <OSTmrStateGet+0x82>
    80004740:	70a2                	ld	ra,40(sp)
    80004742:	7402                	ld	s0,32(sp)
    80004744:	64e2                	ld	s1,24(sp)
    80004746:	6942                	ld	s2,16(sp)
    80004748:	6145                	addi	sp,sp,48
    8000474a:	8082                	ret
    8000474c:	f8d00793          	li	a5,-115
    80004750:	00f48023          	sb	a5,0(s1)
    80004754:	b7cd                	j	80004736 <OSTmrStateGet+0x50>
    80004756:	f8b00793          	li	a5,-117
    8000475a:	00f58023          	sb	a5,0(a1)
    8000475e:	4501                	li	a0,0
    80004760:	8082                	ret
    80004762:	ce5fb0ef          	jal	ra,80000446 <OSSchedLock.part.1>
    80004766:	b7c9                	j	80004728 <OSTmrStateGet+0x42>
    80004768:	e42a                	sd	a0,8(sp)
    8000476a:	f90fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    8000476e:	6522                	ld	a0,8(sp)
    80004770:	bfc1                	j	80004740 <OSTmrStateGet+0x5a>

0000000080004772 <OSTmrStart>:
    80004772:	00054703          	lbu	a4,0(a0)
    80004776:	06400793          	li	a5,100
    8000477a:	00f70863          	beq	a4,a5,8000478a <OSTmrStart+0x18>
    8000477e:	f8900793          	li	a5,-119
    80004782:	00f58023          	sb	a5,0(a1)
    80004786:	4501                	li	a0,0
    80004788:	8082                	ret
    8000478a:	0007d797          	auipc	a5,0x7d
    8000478e:	bee7c783          	lbu	a5,-1042(a5) # 80081378 <OSIntNesting>
    80004792:	e3cd                	bnez	a5,80004834 <OSTmrStart+0xc2>
    80004794:	7179                	addi	sp,sp,-48
    80004796:	e84a                	sd	s2,16(sp)
    80004798:	0007c917          	auipc	s2,0x7c
    8000479c:	cc090913          	addi	s2,s2,-832 # 80080458 <OSRunning>
    800047a0:	e44e                	sd	s3,8(sp)
    800047a2:	00094983          	lbu	s3,0(s2)
    800047a6:	f022                	sd	s0,32(sp)
    800047a8:	ec26                	sd	s1,24(sp)
    800047aa:	f406                	sd	ra,40(sp)
    800047ac:	4785                	li	a5,1
    800047ae:	84ae                	mv	s1,a1
    800047b0:	842a                	mv	s0,a0
    800047b2:	04f98b63          	beq	s3,a5,80004808 <OSTmrStart+0x96>
    800047b6:	04154783          	lbu	a5,65(a0)
    800047ba:	4709                	li	a4,2
    800047bc:	00f76e63          	bltu	a4,a5,800047d8 <OSTmrStart+0x66>
    800047c0:	e395                	bnez	a5,800047e4 <OSTmrStart+0x72>
    800047c2:	00094703          	lbu	a4,0(s2)
    800047c6:	4785                	li	a5,1
    800047c8:	06f70c63          	beq	a4,a5,80004840 <OSTmrStart+0xce>
    800047cc:	f8700793          	li	a5,-121
    800047d0:	00f48023          	sb	a5,0(s1)
    800047d4:	4501                	li	a0,0
    800047d6:	a015                	j	800047fa <OSTmrStart+0x88>
    800047d8:	470d                	li	a4,3
    800047da:	04e79763          	bne	a5,a4,80004828 <OSTmrStart+0xb6>
    800047de:	8522                	mv	a0,s0
    800047e0:	bf3fb0ef          	jal	ra,800003d2 <OSTmr_Unlink>
    800047e4:	8522                	mv	a0,s0
    800047e6:	d05fb0ef          	jal	ra,800004ea <OSTmr_Link.constprop.10>
    800047ea:	00094703          	lbu	a4,0(s2)
    800047ee:	4785                	li	a5,1
    800047f0:	04f70b63          	beq	a4,a5,80004846 <OSTmrStart+0xd4>
    800047f4:	00048023          	sb	zero,0(s1)
    800047f8:	4505                	li	a0,1
    800047fa:	70a2                	ld	ra,40(sp)
    800047fc:	7402                	ld	s0,32(sp)
    800047fe:	64e2                	ld	s1,24(sp)
    80004800:	6942                	ld	s2,16(sp)
    80004802:	69a2                	ld	s3,8(sp)
    80004804:	6145                	addi	sp,sp,48
    80004806:	8082                	ret
    80004808:	c3ffb0ef          	jal	ra,80000446 <OSSchedLock.part.1>
    8000480c:	04144783          	lbu	a5,65(s0)
    80004810:	4709                	li	a4,2
    80004812:	faf777e3          	bleu	a5,a4,800047c0 <OSTmrStart+0x4e>
    80004816:	470d                	li	a4,3
    80004818:	fce783e3          	beq	a5,a4,800047de <OSTmrStart+0x6c>
    8000481c:	00094783          	lbu	a5,0(s2)
    80004820:	01379463          	bne	a5,s3,80004828 <OSTmrStart+0xb6>
    80004824:	ed6fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    80004828:	f8d00793          	li	a5,-115
    8000482c:	00f48023          	sb	a5,0(s1)
    80004830:	4501                	li	a0,0
    80004832:	b7e1                	j	800047fa <OSTmrStart+0x88>
    80004834:	f8b00793          	li	a5,-117
    80004838:	00f58023          	sb	a5,0(a1)
    8000483c:	4501                	li	a0,0
    8000483e:	8082                	ret
    80004840:	ebafc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    80004844:	b761                	j	800047cc <OSTmrStart+0x5a>
    80004846:	eb4fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    8000484a:	b76d                	j	800047f4 <OSTmrStart+0x82>

000000008000484c <OSTmrStop>:
    8000484c:	00054703          	lbu	a4,0(a0)
    80004850:	06400793          	li	a5,100
    80004854:	00f70863          	beq	a4,a5,80004864 <OSTmrStop+0x18>
    80004858:	f8900793          	li	a5,-119
    8000485c:	00f68023          	sb	a5,0(a3)
    80004860:	4501                	li	a0,0
    80004862:	8082                	ret
    80004864:	0007d797          	auipc	a5,0x7d
    80004868:	b147c783          	lbu	a5,-1260(a5) # 80081378 <OSIntNesting>
    8000486c:	e3f1                	bnez	a5,80004930 <OSTmrStop+0xe4>
    8000486e:	715d                	addi	sp,sp,-80
    80004870:	f052                	sd	s4,32(sp)
    80004872:	0007ca17          	auipc	s4,0x7c
    80004876:	be6a0a13          	addi	s4,s4,-1050 # 80080458 <OSRunning>
    8000487a:	ec56                	sd	s5,24(sp)
    8000487c:	000a4a83          	lbu	s5,0(s4)
    80004880:	e0a2                	sd	s0,64(sp)
    80004882:	fc26                	sd	s1,56(sp)
    80004884:	f84a                	sd	s2,48(sp)
    80004886:	f44e                	sd	s3,40(sp)
    80004888:	e486                	sd	ra,72(sp)
    8000488a:	4785                	li	a5,1
    8000488c:	84b6                	mv	s1,a3
    8000488e:	89b2                	mv	s3,a2
    80004890:	892e                	mv	s2,a1
    80004892:	842a                	mv	s0,a0
    80004894:	06fa8863          	beq	s5,a5,80004904 <OSTmrStop+0xb8>
    80004898:	04154783          	lbu	a5,65(a0)
    8000489c:	4709                	li	a4,2
    8000489e:	02f76663          	bltu	a4,a5,800048ca <OSTmrStop+0x7e>
    800048a2:	efc9                	bnez	a5,8000493c <OSTmrStop+0xf0>
    800048a4:	000a4703          	lbu	a4,0(s4)
    800048a8:	4785                	li	a5,1
    800048aa:	0af70a63          	beq	a4,a5,8000495e <OSTmrStop+0x112>
    800048ae:	f8700793          	li	a5,-121
    800048b2:	00f48023          	sb	a5,0(s1)
    800048b6:	4501                	li	a0,0
    800048b8:	60a6                	ld	ra,72(sp)
    800048ba:	6406                	ld	s0,64(sp)
    800048bc:	74e2                	ld	s1,56(sp)
    800048be:	7942                	ld	s2,48(sp)
    800048c0:	79a2                	ld	s3,40(sp)
    800048c2:	7a02                	ld	s4,32(sp)
    800048c4:	6ae2                	ld	s5,24(sp)
    800048c6:	6161                	addi	sp,sp,80
    800048c8:	8082                	ret
    800048ca:	470d                	li	a4,3
    800048cc:	04e79c63          	bne	a5,a4,80004924 <OSTmrStop+0xd8>
    800048d0:	8522                	mv	a0,s0
    800048d2:	b01fb0ef          	jal	ra,800003d2 <OSTmr_Unlink>
    800048d6:	478d                	li	a5,3
    800048d8:	00048023          	sb	zero,0(s1)
    800048dc:	06f90b63          	beq	s2,a5,80004952 <OSTmrStop+0x106>
    800048e0:	4791                	li	a5,4
    800048e2:	08f90463          	beq	s2,a5,8000496a <OSTmrStop+0x11e>
    800048e6:	00090663          	beqz	s2,800048f2 <OSTmrStop+0xa6>
    800048ea:	f8400793          	li	a5,-124
    800048ee:	00f48023          	sb	a5,0(s1)
    800048f2:	0007c517          	auipc	a0,0x7c
    800048f6:	b6654503          	lbu	a0,-1178(a0) # 80080458 <OSRunning>
    800048fa:	4785                	li	a5,1
    800048fc:	06f50d63          	beq	a0,a5,80004976 <OSTmrStop+0x12a>
    80004900:	4505                	li	a0,1
    80004902:	bf5d                	j	800048b8 <OSTmrStop+0x6c>
    80004904:	b43fb0ef          	jal	ra,80000446 <OSSchedLock.part.1>
    80004908:	04144783          	lbu	a5,65(s0)
    8000490c:	4709                	li	a4,2
    8000490e:	f8f77ae3          	bleu	a5,a4,800048a2 <OSTmrStop+0x56>
    80004912:	470d                	li	a4,3
    80004914:	fae78ee3          	beq	a5,a4,800048d0 <OSTmrStop+0x84>
    80004918:	000a4783          	lbu	a5,0(s4)
    8000491c:	01579463          	bne	a5,s5,80004924 <OSTmrStop+0xd8>
    80004920:	ddafc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    80004924:	f8d00793          	li	a5,-115
    80004928:	00f48023          	sb	a5,0(s1)
    8000492c:	4501                	li	a0,0
    8000492e:	b769                	j	800048b8 <OSTmrStop+0x6c>
    80004930:	f8b00793          	li	a5,-117
    80004934:	00f68023          	sb	a5,0(a3)
    80004938:	4501                	li	a0,0
    8000493a:	8082                	ret
    8000493c:	000a4703          	lbu	a4,0(s4)
    80004940:	4785                	li	a5,1
    80004942:	02f70163          	beq	a4,a5,80004964 <OSTmrStop+0x118>
    80004946:	f8e00793          	li	a5,-114
    8000494a:	00f48023          	sb	a5,0(s1)
    8000494e:	4505                	li	a0,1
    80004950:	b7a5                	j	800048b8 <OSTmrStop+0x6c>
    80004952:	641c                	ld	a5,8(s0)
    80004954:	c795                	beqz	a5,80004980 <OSTmrStop+0x134>
    80004956:	680c                	ld	a1,16(s0)
    80004958:	8522                	mv	a0,s0
    8000495a:	9782                	jalr	a5
    8000495c:	bf59                	j	800048f2 <OSTmrStop+0xa6>
    8000495e:	d9cfc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    80004962:	b7b1                	j	800048ae <OSTmrStop+0x62>
    80004964:	d96fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    80004968:	bff9                	j	80004946 <OSTmrStop+0xfa>
    8000496a:	641c                	ld	a5,8(s0)
    8000496c:	cb91                	beqz	a5,80004980 <OSTmrStop+0x134>
    8000496e:	85ce                	mv	a1,s3
    80004970:	8522                	mv	a0,s0
    80004972:	9782                	jalr	a5
    80004974:	bfbd                	j	800048f2 <OSTmrStop+0xa6>
    80004976:	e42a                	sd	a0,8(sp)
    80004978:	d82fc0ef          	jal	ra,80000efa <OSSchedUnlock.part.3>
    8000497c:	6522                	ld	a0,8(sp)
    8000497e:	bf2d                	j	800048b8 <OSTmrStop+0x6c>
    80004980:	f8f00793          	li	a5,-113
    80004984:	00f48023          	sb	a5,0(s1)
    80004988:	b7ad                	j	800048f2 <OSTmrStop+0xa6>

000000008000498a <OSTmrSignal>:
    8000498a:	0007c797          	auipc	a5,0x7c
    8000498e:	ac678793          	addi	a5,a5,-1338 # 80080450 <OSTmrSemSignal>
    80004992:	6388                	ld	a0,0(a5)
    80004994:	478d                	li	a5,3
    80004996:	00054703          	lbu	a4,0(a0)
    8000499a:	00f70463          	beq	a4,a5,800049a2 <OSTmrSignal+0x18>
    8000499e:	4505                	li	a0,1
    800049a0:	8082                	ret
    800049a2:	dacfc06f          	j	80000f4e <OSSemPost.part.5>

00000000800049a6 <OSTmr_Init>:
    800049a6:	7179                	addi	sp,sp,-48
    800049a8:	0007c597          	auipc	a1,0x7c
    800049ac:	b6058593          	addi	a1,a1,-1184 # 80080508 <OSTmrTbl>
    800049b0:	f406                	sd	ra,40(sp)
    800049b2:	87ae                	mv	a5,a1
    800049b4:	0007c717          	auipc	a4,0x7c
    800049b8:	fd470713          	addi	a4,a4,-44 # 80080988 <OSPrioCur>
    800049bc:	0785                	addi	a5,a5,1
    800049be:	fe078fa3          	sb	zero,-1(a5)
    800049c2:	fee79de3          	bne	a5,a4,800049bc <OSTmr_Init+0x16>
    800049c6:	0007c797          	auipc	a5,0x7c
    800049ca:	a0278793          	addi	a5,a5,-1534 # 800803c8 <OSTmrWheelTbl>
    800049ce:	0007c697          	auipc	a3,0x7c
    800049d2:	a7a68693          	addi	a3,a3,-1414 # 80080448 <OSLockNesting>
    800049d6:	0785                	addi	a5,a5,1
    800049d8:	fe078fa3          	sb	zero,-1(a5)
    800049dc:	fed79de3          	bne	a5,a3,800049d6 <OSTmr_Init+0x30>
    800049e0:	0007c797          	auipc	a5,0x7c
    800049e4:	b7078793          	addi	a5,a5,-1168 # 80080550 <OSTmrTbl+0x48>
    800049e8:	0007c697          	auipc	a3,0x7c
    800049ec:	87868693          	addi	a3,a3,-1928 # 80080260 <OSUnMapTbl+0x260>
    800049f0:	06400613          	li	a2,100
    800049f4:	fac78c23          	sb	a2,-72(a5)
    800049f8:	fe078ca3          	sb	zero,-7(a5)
    800049fc:	fcf7b823          	sd	a5,-48(a5)
    80004a00:	fed7b823          	sd	a3,-16(a5)
    80004a04:	04878793          	addi	a5,a5,72
    80004a08:	fef716e3          	bne	a4,a5,800049f4 <OSTmr_Init+0x4e>
    80004a0c:	0007c797          	auipc	a5,0x7c
    80004a10:	f6d7b623          	sd	a3,-148(a5) # 80080978 <OSTmrTbl+0x470>
    80004a14:	0007c797          	auipc	a5,0x7c
    80004a18:	f2c78623          	sb	a2,-212(a5) # 80080940 <OSTmrTbl+0x438>
    80004a1c:	0007c797          	auipc	a5,0x7c
    80004a20:	f60782a3          	sb	zero,-155(a5) # 80080981 <OSTmrTbl+0x479>
    80004a24:	0007c797          	auipc	a5,0x7c
    80004a28:	f207ba23          	sd	zero,-204(a5) # 80080958 <OSTmrTbl+0x450>
    80004a2c:	0007d797          	auipc	a5,0x7d
    80004a30:	9407ae23          	sw	zero,-1700(a5) # 80081388 <OSTmrTime>
    80004a34:	0007c797          	auipc	a5,0x7c
    80004a38:	a2079623          	sh	zero,-1492(a5) # 80080460 <OSTmrUsed>
    80004a3c:	47c1                	li	a5,16
    80004a3e:	4505                	li	a0,1
    80004a40:	0007c717          	auipc	a4,0x7c
    80004a44:	42f71623          	sh	a5,1068(a4) # 80080e6c <OSTmrFree>
    80004a48:	0007c797          	auipc	a5,0x7c
    80004a4c:	96b7bc23          	sd	a1,-1672(a5) # 800803c0 <OSTmrFreeList>
    80004a50:	f9efe0ef          	jal	ra,800031ee <OSSemCreate>
    80004a54:	0007d797          	auipc	a5,0x7d
    80004a58:	92a7be23          	sd	a0,-1732(a5) # 80081390 <OSTmrSem>
    80004a5c:	4501                	li	a0,0
    80004a5e:	f90fe0ef          	jal	ra,800031ee <OSSemCreate>
    80004a62:	0007c797          	auipc	a5,0x7c
    80004a66:	9ea7b723          	sd	a0,-1554(a5) # 80080450 <OSTmrSemSignal>
    80004a6a:	0007d797          	auipc	a5,0x7d
    80004a6e:	92678793          	addi	a5,a5,-1754 # 80081390 <OSTmrSem>
    80004a72:	6388                	ld	a0,0(a5)
    80004a74:	0007b597          	auipc	a1,0x7b
    80004a78:	7f458593          	addi	a1,a1,2036 # 80080268 <OSUnMapTbl+0x268>
    80004a7c:	01e10613          	addi	a2,sp,30
    80004a80:	b6bfb0ef          	jal	ra,800005ea <OSEventNameSet>
    80004a84:	0007c797          	auipc	a5,0x7c
    80004a88:	9cc78793          	addi	a5,a5,-1588 # 80080450 <OSTmrSemSignal>
    80004a8c:	6388                	ld	a0,0(a5)
    80004a8e:	01e10613          	addi	a2,sp,30
    80004a92:	0007b597          	auipc	a1,0x7b
    80004a96:	7ee58593          	addi	a1,a1,2030 # 80080280 <OSUnMapTbl+0x280>
    80004a9a:	b51fb0ef          	jal	ra,800005ea <OSEventNameSet>
    80004a9e:	478d                	li	a5,3
    80004aa0:	6741                	lui	a4,0x10
    80004aa2:	e03e                	sd	a5,0(sp)
    80004aa4:	4881                	li	a7,0
    80004aa6:	0007c797          	auipc	a5,0x7c
    80004aaa:	4ca78793          	addi	a5,a5,1226 # 80080f70 <OSTmrTaskStk>
    80004aae:	08000813          	li	a6,128
    80004ab2:	1775                	addi	a4,a4,-3
    80004ab4:	03d00693          	li	a3,61
    80004ab8:	0007d617          	auipc	a2,0x7d
    80004abc:	8b060613          	addi	a2,a2,-1872 # 80081368 <OSTmrTaskStk+0x3f8>
    80004ac0:	4581                	li	a1,0
    80004ac2:	fffff517          	auipc	a0,0xfffff
    80004ac6:	9da50513          	addi	a0,a0,-1574 # 8000349c <OSTmr_Task>
    80004aca:	e9bfe0ef          	jal	ra,80003964 <OSTaskCreateExt>
    80004ace:	0007d797          	auipc	a5,0x7d
    80004ad2:	8aa7c783          	lbu	a5,-1878(a5) # 80081378 <OSIntNesting>
    80004ad6:	eb99                	bnez	a5,80004aec <OSTmr_Init+0x146>
    80004ad8:	01f10613          	addi	a2,sp,31
    80004adc:	0007b597          	auipc	a1,0x7b
    80004ae0:	7bc58593          	addi	a1,a1,1980 # 80080298 <OSUnMapTbl+0x298>
    80004ae4:	03d00513          	li	a0,61
    80004ae8:	993fb0ef          	jal	ra,8000047a <OSTaskNameSet.part.7>
    80004aec:	70a2                	ld	ra,40(sp)
    80004aee:	6145                	addi	sp,sp,48
    80004af0:	8082                	ret

0000000080004af2 <OSInit>:
    80004af2:	7179                	addi	sp,sp,-48
    80004af4:	f406                	sd	ra,40(sp)
    80004af6:	f022                	sd	s0,32(sp)
    80004af8:	598000ef          	jal	ra,80005090 <OSInitHookBegin>
    80004afc:	0007d797          	auipc	a5,0x7d
    80004b00:	8807a823          	sw	zero,-1904(a5) # 8008138c <OSTime>
    80004b04:	0007d597          	auipc	a1,0x7d
    80004b08:	e2458593          	addi	a1,a1,-476 # 80081928 <OSTCBTbl>
    80004b0c:	0007d797          	auipc	a5,0x7d
    80004b10:	86078623          	sb	zero,-1940(a5) # 80081378 <OSIntNesting>
    80004b14:	0007c797          	auipc	a5,0x7c
    80004b18:	92078a23          	sb	zero,-1740(a5) # 80080448 <OSLockNesting>
    80004b1c:	0007c797          	auipc	a5,0x7c
    80004b20:	360782a3          	sb	zero,869(a5) # 80080e81 <OSTaskCtr>
    80004b24:	0007c797          	auipc	a5,0x7c
    80004b28:	92078a23          	sb	zero,-1740(a5) # 80080458 <OSRunning>
    80004b2c:	0007c797          	auipc	a5,0x7c
    80004b30:	3207ae23          	sw	zero,828(a5) # 80080e68 <OSCtxSwCtr>
    80004b34:	0007c797          	auipc	a5,0x7c
    80004b38:	9207a423          	sw	zero,-1752(a5) # 8008045c <OSIdleCtr>
    80004b3c:	0007e797          	auipc	a5,0x7e
    80004b40:	c407ae23          	sw	zero,-932(a5) # 80082798 <OSIdleCtrRun>
    80004b44:	0007c797          	auipc	a5,0x7c
    80004b48:	3207a623          	sw	zero,812(a5) # 80080e70 <OSIdleCtrMax>
    80004b4c:	0007e797          	auipc	a5,0x7e
    80004b50:	a4078223          	sb	zero,-1468(a5) # 80082590 <OSStatRdy>
    80004b54:	0007c797          	auipc	a5,0x7c
    80004b58:	40078623          	sb	zero,1036(a5) # 80080f60 <OSRdyGrp>
    80004b5c:	0007c797          	auipc	a5,0x7c
    80004b60:	40078623          	sb	zero,1036(a5) # 80080f68 <OSRdyTbl>
    80004b64:	0007c797          	auipc	a5,0x7c
    80004b68:	400782a3          	sb	zero,1029(a5) # 80080f69 <OSRdyTbl+0x1>
    80004b6c:	0007c797          	auipc	a5,0x7c
    80004b70:	3e078f23          	sb	zero,1022(a5) # 80080f6a <OSRdyTbl+0x2>
    80004b74:	0007c797          	auipc	a5,0x7c
    80004b78:	3e078ba3          	sb	zero,1015(a5) # 80080f6b <OSRdyTbl+0x3>
    80004b7c:	0007c797          	auipc	a5,0x7c
    80004b80:	3e078823          	sb	zero,1008(a5) # 80080f6c <OSRdyTbl+0x4>
    80004b84:	0007c797          	auipc	a5,0x7c
    80004b88:	3e0784a3          	sb	zero,1001(a5) # 80080f6d <OSRdyTbl+0x5>
    80004b8c:	0007c797          	auipc	a5,0x7c
    80004b90:	3e078123          	sb	zero,994(a5) # 80080f6e <OSRdyTbl+0x6>
    80004b94:	0007c797          	auipc	a5,0x7c
    80004b98:	3c078da3          	sb	zero,987(a5) # 80080f6f <OSRdyTbl+0x7>
    80004b9c:	0007c797          	auipc	a5,0x7c
    80004ba0:	de078623          	sb	zero,-532(a5) # 80080988 <OSPrioCur>
    80004ba4:	0007c797          	auipc	a5,0x7c
    80004ba8:	8a078f23          	sb	zero,-1858(a5) # 80080462 <OSPrioHighRdy>
    80004bac:	0007c797          	auipc	a5,0x7c
    80004bb0:	3a07b223          	sd	zero,932(a5) # 80080f50 <OSTCBHighRdy>
    80004bb4:	0007c797          	auipc	a5,0x7c
    80004bb8:	7c07b623          	sd	zero,1996(a5) # 80081380 <OSTCBCur>
    80004bbc:	87ae                	mv	a5,a1
    80004bbe:	0007e717          	auipc	a4,0x7e
    80004bc2:	9ca70713          	addi	a4,a4,-1590 # 80082588 <OSFlagFreeList>
    80004bc6:	0785                	addi	a5,a5,1
    80004bc8:	fe078fa3          	sb	zero,-1(a5)
    80004bcc:	fee79de3          	bne	a5,a4,80004bc6 <OSInit+0xd4>
    80004bd0:	0007e797          	auipc	a5,0x7e
    80004bd4:	9c878793          	addi	a5,a5,-1592 # 80082598 <OSTCBPrioTbl>
    80004bd8:	0007e697          	auipc	a3,0x7e
    80004bdc:	bc068693          	addi	a3,a3,-1088 # 80082798 <OSIdleCtrRun>
    80004be0:	0785                	addi	a5,a5,1
    80004be2:	fe078fa3          	sb	zero,-1(a5)
    80004be6:	fed79de3          	bne	a5,a3,80004be0 <OSInit+0xee>
    80004bea:	0007d797          	auipc	a5,0x7d
    80004bee:	dce78793          	addi	a5,a5,-562 # 800819b8 <OSTCBTbl+0x90>
    80004bf2:	0007b697          	auipc	a3,0x7b
    80004bf6:	66e68693          	addi	a3,a3,1646 # 80080260 <OSUnMapTbl+0x260>
    80004bfa:	f8f7b823          	sd	a5,-112(a5)
    80004bfe:	fed7b823          	sd	a3,-16(a5)
    80004c02:	09078793          	addi	a5,a5,144
    80004c06:	fef71ae3          	bne	a4,a5,80004bfa <OSInit+0x108>
    80004c0a:	0007d617          	auipc	a2,0x7d
    80004c0e:	b8e60613          	addi	a2,a2,-1138 # 80081798 <OSEventTbl>
    80004c12:	0007e797          	auipc	a5,0x7e
    80004c16:	9007b323          	sd	zero,-1786(a5) # 80082518 <OSTCBTbl+0xbf0>
    80004c1a:	0007e797          	auipc	a5,0x7e
    80004c1e:	94d7bf23          	sd	a3,-1698(a5) # 80082578 <OSTCBTbl+0xc50>
    80004c22:	0007c797          	auipc	a5,0x7c
    80004c26:	d607b723          	sd	zero,-658(a5) # 80080990 <OSTCBList>
    80004c2a:	0007c797          	auipc	a5,0x7c
    80004c2e:	24b7b723          	sd	a1,590(a5) # 80080e78 <OSTCBFreeList>
    80004c32:	87b2                	mv	a5,a2
    80004c34:	0007d717          	auipc	a4,0x7d
    80004c38:	cf470713          	addi	a4,a4,-780 # 80081928 <OSTCBTbl>
    80004c3c:	0785                	addi	a5,a5,1
    80004c3e:	fe078fa3          	sb	zero,-1(a5)
    80004c42:	fee79de3          	bne	a5,a4,80004c3c <OSInit+0x14a>
    80004c46:	0007d717          	auipc	a4,0x7d
    80004c4a:	b7a70713          	addi	a4,a4,-1158 # 800817c0 <OSEventTbl+0x28>
    80004c4e:	fc070c23          	sb	zero,-40(a4)
    80004c52:	fee73023          	sd	a4,-32(a4)
    80004c56:	fed73c23          	sd	a3,-8(a4)
    80004c5a:	02870713          	addi	a4,a4,40
    80004c5e:	fee798e3          	bne	a5,a4,80004c4e <OSInit+0x15c>
    80004c62:	0007c597          	auipc	a1,0x7c
    80004c66:	80658593          	addi	a1,a1,-2042 # 80080468 <OSFlagTbl>
    80004c6a:	0007d797          	auipc	a5,0x7d
    80004c6e:	c8078b23          	sb	zero,-874(a5) # 80081900 <OSEventTbl+0x168>
    80004c72:	0007d797          	auipc	a5,0x7d
    80004c76:	c807bb23          	sd	zero,-874(a5) # 80081908 <OSEventTbl+0x170>
    80004c7a:	0007d797          	auipc	a5,0x7d
    80004c7e:	cad7b323          	sd	a3,-858(a5) # 80081920 <OSEventTbl+0x188>
    80004c82:	0007c797          	auipc	a5,0x7c
    80004c86:	6ec7b723          	sd	a2,1774(a5) # 80081370 <OSEventFreeList>
    80004c8a:	87ae                	mv	a5,a1
    80004c8c:	0007c717          	auipc	a4,0x7c
    80004c90:	87c70713          	addi	a4,a4,-1924 # 80080508 <OSTmrTbl>
    80004c94:	0785                	addi	a5,a5,1
    80004c96:	fe078fa3          	sb	zero,-1(a5)
    80004c9a:	fee79de3          	bne	a5,a4,80004c94 <OSInit+0x1a2>
    80004c9e:	0007b797          	auipc	a5,0x7b
    80004ca2:	7c078523          	sb	zero,1994(a5) # 80080468 <OSFlagTbl>
    80004ca6:	0007b797          	auipc	a5,0x7b
    80004caa:	7e278793          	addi	a5,a5,2018 # 80080488 <OSFlagTbl+0x20>
    80004cae:	0007b717          	auipc	a4,0x7b
    80004cb2:	7cf73123          	sd	a5,1986(a4) # 80080470 <OSFlagTbl+0x8>
    80004cb6:	0007b797          	auipc	a5,0x7b
    80004cba:	7cd7b523          	sd	a3,1994(a5) # 80080480 <OSFlagTbl+0x18>
    80004cbe:	0007b797          	auipc	a5,0x7b
    80004cc2:	7c078523          	sb	zero,1994(a5) # 80080488 <OSFlagTbl+0x20>
    80004cc6:	0007b797          	auipc	a5,0x7b
    80004cca:	7e278793          	addi	a5,a5,2018 # 800804a8 <OSFlagTbl+0x40>
    80004cce:	0007b717          	auipc	a4,0x7b
    80004cd2:	7cf73123          	sd	a5,1986(a4) # 80080490 <OSFlagTbl+0x28>
    80004cd6:	0007b797          	auipc	a5,0x7b
    80004cda:	7cd7b523          	sd	a3,1994(a5) # 800804a0 <OSFlagTbl+0x38>
    80004cde:	0007b797          	auipc	a5,0x7b
    80004ce2:	7c078523          	sb	zero,1994(a5) # 800804a8 <OSFlagTbl+0x40>
    80004ce6:	0007b797          	auipc	a5,0x7b
    80004cea:	7e278793          	addi	a5,a5,2018 # 800804c8 <OSFlagTbl+0x60>
    80004cee:	0007b717          	auipc	a4,0x7b
    80004cf2:	7cf73123          	sd	a5,1986(a4) # 800804b0 <OSFlagTbl+0x48>
    80004cf6:	0007b797          	auipc	a5,0x7b
    80004cfa:	7cd7b523          	sd	a3,1994(a5) # 800804c0 <OSFlagTbl+0x58>
    80004cfe:	0007b797          	auipc	a5,0x7b
    80004d02:	7c078523          	sb	zero,1994(a5) # 800804c8 <OSFlagTbl+0x60>
    80004d06:	0007b797          	auipc	a5,0x7b
    80004d0a:	7e278793          	addi	a5,a5,2018 # 800804e8 <OSFlagTbl+0x80>
    80004d0e:	0007b717          	auipc	a4,0x7b
    80004d12:	7cf73123          	sd	a5,1986(a4) # 800804d0 <OSFlagTbl+0x68>
    80004d16:	0007c617          	auipc	a2,0x7c
    80004d1a:	c8260613          	addi	a2,a2,-894 # 80080998 <OSMemTbl>
    80004d1e:	0007b797          	auipc	a5,0x7b
    80004d22:	7cd7b123          	sd	a3,1986(a5) # 800804e0 <OSFlagTbl+0x78>
    80004d26:	0007b797          	auipc	a5,0x7b
    80004d2a:	7c078123          	sb	zero,1986(a5) # 800804e8 <OSFlagTbl+0x80>
    80004d2e:	0007b797          	auipc	a5,0x7b
    80004d32:	7c07b123          	sd	zero,1986(a5) # 800804f0 <OSFlagTbl+0x88>
    80004d36:	0007b797          	auipc	a5,0x7b
    80004d3a:	7cd7b523          	sd	a3,1994(a5) # 80080500 <OSFlagTbl+0x98>
    80004d3e:	0007e797          	auipc	a5,0x7e
    80004d42:	84b7b523          	sd	a1,-1974(a5) # 80082588 <OSFlagFreeList>
    80004d46:	87b2                	mv	a5,a2
    80004d48:	0007c717          	auipc	a4,0x7c
    80004d4c:	d1870713          	addi	a4,a4,-744 # 80080a60 <OSTickStepState>
    80004d50:	0785                	addi	a5,a5,1
    80004d52:	fe078fa3          	sb	zero,-1(a5)
    80004d56:	fee79de3          	bne	a5,a4,80004d50 <OSInit+0x25e>
    80004d5a:	0007c797          	auipc	a5,0x7c
    80004d5e:	c6678793          	addi	a5,a5,-922 # 800809c0 <OSMemTbl+0x28>
    80004d62:	0007c717          	auipc	a4,0x7c
    80004d66:	c2f73f23          	sd	a5,-962(a4) # 800809a0 <OSMemTbl+0x8>
    80004d6a:	0007c797          	auipc	a5,0x7c
    80004d6e:	c4d7b723          	sd	a3,-946(a5) # 800809b8 <OSMemTbl+0x20>
    80004d72:	0007c797          	auipc	a5,0x7c
    80004d76:	c7678793          	addi	a5,a5,-906 # 800809e8 <OSMemTbl+0x50>
    80004d7a:	0007c717          	auipc	a4,0x7c
    80004d7e:	c4f73723          	sd	a5,-946(a4) # 800809c8 <OSMemTbl+0x30>
    80004d82:	0007c797          	auipc	a5,0x7c
    80004d86:	c4d7bf23          	sd	a3,-930(a5) # 800809e0 <OSMemTbl+0x48>
    80004d8a:	0007c797          	auipc	a5,0x7c
    80004d8e:	c8678793          	addi	a5,a5,-890 # 80080a10 <OSMemTbl+0x78>
    80004d92:	0007c717          	auipc	a4,0x7c
    80004d96:	c4f73f23          	sd	a5,-930(a4) # 800809f0 <OSMemTbl+0x58>
    80004d9a:	0007c797          	auipc	a5,0x7c
    80004d9e:	c6d7b723          	sd	a3,-914(a5) # 80080a08 <OSMemTbl+0x70>
    80004da2:	0007c797          	auipc	a5,0x7c
    80004da6:	c9678793          	addi	a5,a5,-874 # 80080a38 <OSMemTbl+0xa0>
    80004daa:	0007c717          	auipc	a4,0x7c
    80004dae:	c6f73723          	sd	a5,-914(a4) # 80080a18 <OSMemTbl+0x80>
    80004db2:	0007c317          	auipc	t1,0x7c
    80004db6:	0de30313          	addi	t1,t1,222 # 80080e90 <OSQTbl>
    80004dba:	0007c797          	auipc	a5,0x7c
    80004dbe:	c6d7bb23          	sd	a3,-906(a5) # 80080a30 <OSMemTbl+0x98>
    80004dc2:	0007c797          	auipc	a5,0x7c
    80004dc6:	c607bf23          	sd	zero,-898(a5) # 80080a40 <OSMemTbl+0xa8>
    80004dca:	0007c797          	auipc	a5,0x7c
    80004dce:	c8d7b723          	sd	a3,-882(a5) # 80080a58 <OSMemTbl+0xc0>
    80004dd2:	0007c797          	auipc	a5,0x7c
    80004dd6:	0ac7bb23          	sd	a2,182(a5) # 80080e88 <OSMemFreeList>
    80004dda:	879a                	mv	a5,t1
    80004ddc:	0007c717          	auipc	a4,0x7c
    80004de0:	17470713          	addi	a4,a4,372 # 80080f50 <OSTCBHighRdy>
    80004de4:	0785                	addi	a5,a5,1
    80004de6:	fe078fa3          	sb	zero,-1(a5)
    80004dea:	fee79de3          	bne	a5,a4,80004de4 <OSInit+0x2f2>
    80004dee:	0007ce17          	auipc	t3,0x7c
    80004df2:	0d2e0e13          	addi	t3,t3,210 # 80080ec0 <OSQTbl+0x30>
    80004df6:	478d                	li	a5,3
    80004df8:	0007ce97          	auipc	t4,0x7c
    80004dfc:	09cebc23          	sd	t3,152(t4) # 80080e90 <OSQTbl>
    80004e00:	6741                	lui	a4,0x10
    80004e02:	0007ce17          	auipc	t3,0x7c
    80004e06:	0eee0e13          	addi	t3,t3,238 # 80080ef0 <OSQTbl+0x60>
    80004e0a:	e03e                	sd	a5,0(sp)
    80004e0c:	0007ce97          	auipc	t4,0x7c
    80004e10:	0bceba23          	sd	t3,180(t4) # 80080ec0 <OSQTbl+0x30>
    80004e14:	0007c797          	auipc	a5,0x7c
    80004e18:	58478793          	addi	a5,a5,1412 # 80081398 <OSTaskIdleStk>
    80004e1c:	0007ce17          	auipc	t3,0x7c
    80004e20:	104e0e13          	addi	t3,t3,260 # 80080f20 <OSQTbl+0x90>
    80004e24:	4881                	li	a7,0
    80004e26:	08000813          	li	a6,128
    80004e2a:	177d                	addi	a4,a4,-1
    80004e2c:	03f00693          	li	a3,63
    80004e30:	0007d617          	auipc	a2,0x7d
    80004e34:	96060613          	addi	a2,a2,-1696 # 80081790 <OSTaskIdleStk+0x3f8>
    80004e38:	4581                	li	a1,0
    80004e3a:	ffffb517          	auipc	a0,0xffffb
    80004e3e:	5e450513          	addi	a0,a0,1508 # 8000041e <OS_TaskIdle>
    80004e42:	0007ce97          	auipc	t4,0x7c
    80004e46:	0bceb723          	sd	t3,174(t4) # 80080ef0 <OSQTbl+0x60>
    80004e4a:	0007c417          	auipc	s0,0x7c
    80004e4e:	52e40413          	addi	s0,s0,1326 # 80081378 <OSIntNesting>
    80004e52:	0007ce17          	auipc	t3,0x7c
    80004e56:	0c0e3723          	sd	zero,206(t3) # 80080f20 <OSQTbl+0x90>
    80004e5a:	0007ce17          	auipc	t3,0x7c
    80004e5e:	0e6e3f23          	sd	t1,254(t3) # 80080f58 <OSQFreeList>
    80004e62:	b03fe0ef          	jal	ra,80003964 <OSTaskCreateExt>
    80004e66:	00044783          	lbu	a5,0(s0)
    80004e6a:	eb99                	bnez	a5,80004e80 <OSInit+0x38e>
    80004e6c:	01f10613          	addi	a2,sp,31
    80004e70:	0007b597          	auipc	a1,0x7b
    80004e74:	43858593          	addi	a1,a1,1080 # 800802a8 <OSUnMapTbl+0x2a8>
    80004e78:	03f00513          	li	a0,63
    80004e7c:	dfefb0ef          	jal	ra,8000047a <OSTaskNameSet.part.7>
    80004e80:	478d                	li	a5,3
    80004e82:	6741                	lui	a4,0x10
    80004e84:	e03e                	sd	a5,0(sp)
    80004e86:	4881                	li	a7,0
    80004e88:	0007c797          	auipc	a5,0x7c
    80004e8c:	be078793          	addi	a5,a5,-1056 # 80080a68 <OSTaskStatStk>
    80004e90:	08000813          	li	a6,128
    80004e94:	1779                	addi	a4,a4,-2
    80004e96:	03e00693          	li	a3,62
    80004e9a:	0007c617          	auipc	a2,0x7c
    80004e9e:	fc660613          	addi	a2,a2,-58 # 80080e60 <_gp+0x2f0>
    80004ea2:	4581                	li	a1,0
    80004ea4:	fffff517          	auipc	a0,0xfffff
    80004ea8:	ffe50513          	addi	a0,a0,-2 # 80003ea2 <OS_TaskStat>
    80004eac:	ab9fe0ef          	jal	ra,80003964 <OSTaskCreateExt>
    80004eb0:	00044783          	lbu	a5,0(s0)
    80004eb4:	eb99                	bnez	a5,80004eca <OSInit+0x3d8>
    80004eb6:	01f10613          	addi	a2,sp,31
    80004eba:	0007b597          	auipc	a1,0x7b
    80004ebe:	3fe58593          	addi	a1,a1,1022 # 800802b8 <OSUnMapTbl+0x2b8>
    80004ec2:	03e00513          	li	a0,62
    80004ec6:	db4fb0ef          	jal	ra,8000047a <OSTaskNameSet.part.7>
    80004eca:	addff0ef          	jal	ra,800049a6 <OSTmr_Init>
    80004ece:	1cc000ef          	jal	ra,8000509a <OSInitHookEnd>
    80004ed2:	70a2                	ld	ra,40(sp)
    80004ed4:	7402                	ld	s0,32(sp)
    80004ed6:	6145                	addi	sp,sp,48
    80004ed8:	8082                	ret
	...

0000000080004f00 <OS_CPU_SR_Save>:
    80004f00:	30002573          	csrr	a0,mstatus
    80004f04:	30047073          	csrci	mstatus,8
    80004f08:	8082                	ret

0000000080004f0a <OS_CPU_SR_Restore>:
    80004f0a:	30051073          	csrw	mstatus,a0
    80004f0e:	8082                	ret

0000000080004f10 <OSStartHighRdy>:
    80004f10:	194000ef          	jal	ra,800050a4 <OSTaskSwHook>
    80004f14:	4285                	li	t0,1
    80004f16:	0007b317          	auipc	t1,0x7b
    80004f1a:	54230313          	addi	t1,t1,1346 # 80080458 <OSRunning>
    80004f1e:	00530023          	sb	t0,0(t1)
    80004f22:	0007c297          	auipc	t0,0x7c
    80004f26:	02e28293          	addi	t0,t0,46 # 80080f50 <OSTCBHighRdy>
    80004f2a:	0002b303          	ld	t1,0(t0)
    80004f2e:	00033103          	ld	sp,0(t1)
    80004f32:	72ee                	ld	t0,248(sp)
    80004f34:	34129073          	csrw	mepc,t0
    80004f38:	6082                	ld	ra,0(sp)
    80004f3a:	7282                	ld	t0,32(sp)
    80004f3c:	7322                	ld	t1,40(sp)
    80004f3e:	73c2                	ld	t2,48(sp)
    80004f40:	7462                	ld	s0,56(sp)
    80004f42:	6486                	ld	s1,64(sp)
    80004f44:	6526                	ld	a0,72(sp)
    80004f46:	65c6                	ld	a1,80(sp)
    80004f48:	6666                	ld	a2,88(sp)
    80004f4a:	7686                	ld	a3,96(sp)
    80004f4c:	7726                	ld	a4,104(sp)
    80004f4e:	77c6                	ld	a5,112(sp)
    80004f50:	7866                	ld	a6,120(sp)
    80004f52:	688a                	ld	a7,128(sp)
    80004f54:	692a                	ld	s2,136(sp)
    80004f56:	69ca                	ld	s3,144(sp)
    80004f58:	6a6a                	ld	s4,152(sp)
    80004f5a:	7a8a                	ld	s5,160(sp)
    80004f5c:	7b2a                	ld	s6,168(sp)
    80004f5e:	7bca                	ld	s7,176(sp)
    80004f60:	7c6a                	ld	s8,184(sp)
    80004f62:	6c8e                	ld	s9,192(sp)
    80004f64:	6d2e                	ld	s10,200(sp)
    80004f66:	6dce                	ld	s11,208(sp)
    80004f68:	6e6e                	ld	t3,216(sp)
    80004f6a:	7e8e                	ld	t4,224(sp)
    80004f6c:	7f2e                	ld	t5,232(sp)
    80004f6e:	7fce                	ld	t6,240(sp)
    80004f70:	6111                	addi	sp,sp,256
    80004f72:	30200073          	mret
    80004f76:	00000013          	nop
    80004f7a:	00000013          	nop
    80004f7e:	0001                	nop

0000000080004f80 <OSCtxSw>:
    80004f80:	00000073          	ecall
    80004f84:	8082                	ret

0000000080004f86 <OSIntCtxSw>:
    80004f86:	980fb06f          	j	80000106 <task_switch>
	...

0000000080004ffe <OSTaskStkInit>:
    80004ffe:	00000797          	auipc	a5,0x0
    80005002:	7de78793          	addi	a5,a5,2014 # 800057dc <halt>
    80005006:	f0f63023          	sd	a5,-256(a2)
    8000500a:	08000793          	li	a5,128
    8000500e:	fea63c23          	sd	a0,-8(a2)
    80005012:	f0f63423          	sd	a5,-248(a2)
    80005016:	f0063823          	sd	zero,-240(a2)
    8000501a:	f0063c23          	sd	zero,-232(a2)
    8000501e:	f2063023          	sd	zero,-224(a2)
    80005022:	f2063423          	sd	zero,-216(a2)
    80005026:	f2063823          	sd	zero,-208(a2)
    8000502a:	f2063c23          	sd	zero,-200(a2)
    8000502e:	f4063023          	sd	zero,-192(a2)
    80005032:	f4b63423          	sd	a1,-184(a2)
    80005036:	f4063823          	sd	zero,-176(a2)
    8000503a:	f4063c23          	sd	zero,-168(a2)
    8000503e:	f6063023          	sd	zero,-160(a2)
    80005042:	f6063423          	sd	zero,-152(a2)
    80005046:	f6063823          	sd	zero,-144(a2)
    8000504a:	f6063c23          	sd	zero,-136(a2)
    8000504e:	f8063023          	sd	zero,-128(a2)
    80005052:	f8063423          	sd	zero,-120(a2)
    80005056:	f8063823          	sd	zero,-112(a2)
    8000505a:	f8063c23          	sd	zero,-104(a2)
    8000505e:	fa063023          	sd	zero,-96(a2)
    80005062:	fa063423          	sd	zero,-88(a2)
    80005066:	fa063823          	sd	zero,-80(a2)
    8000506a:	fa063c23          	sd	zero,-72(a2)
    8000506e:	fc063023          	sd	zero,-64(a2)
    80005072:	fc063423          	sd	zero,-56(a2)
    80005076:	fc063823          	sd	zero,-48(a2)
    8000507a:	fc063c23          	sd	zero,-40(a2)
    8000507e:	fe063023          	sd	zero,-32(a2)
    80005082:	fe063423          	sd	zero,-24(a2)
    80005086:	fe063823          	sd	zero,-16(a2)
    8000508a:	f0060513          	addi	a0,a2,-256
    8000508e:	8082                	ret

0000000080005090 <OSInitHookBegin>:
    80005090:	0007b797          	auipc	a5,0x7b
    80005094:	2c079c23          	sh	zero,728(a5) # 80080368 <__rodata_end>
    80005098:	8082                	ret

000000008000509a <OSInitHookEnd>:
    8000509a:	8082                	ret

000000008000509c <OSTaskCreateHook>:
    8000509c:	8082                	ret

000000008000509e <OSTaskDelHook>:
    8000509e:	8082                	ret

00000000800050a0 <OSTaskIdleHook>:
    800050a0:	8082                	ret

00000000800050a2 <OSTaskStatHook>:
    800050a2:	8082                	ret

00000000800050a4 <OSTaskSwHook>:
    800050a4:	8082                	ret

00000000800050a6 <OSTCBInitHook>:
    800050a6:	8082                	ret

00000000800050a8 <OSTimeTickHook>:
    800050a8:	0007b797          	auipc	a5,0x7b
    800050ac:	2c07d783          	lhu	a5,704(a5) # 80080368 <__rodata_end>
    800050b0:	2785                	addiw	a5,a5,1
    800050b2:	17c2                	slli	a5,a5,0x30
    800050b4:	93c1                	srli	a5,a5,0x30
    800050b6:	4725                	li	a4,9
    800050b8:	00f76763          	bltu	a4,a5,800050c6 <OSTimeTickHook+0x1e>
    800050bc:	0007b717          	auipc	a4,0x7b
    800050c0:	2af71623          	sh	a5,684(a4) # 80080368 <__rodata_end>
    800050c4:	8082                	ret
    800050c6:	0007b797          	auipc	a5,0x7b
    800050ca:	2a079123          	sh	zero,674(a5) # 80080368 <__rodata_end>
    800050ce:	8bdff06f          	j	8000498a <OSTmrSignal>

00000000800050d2 <OSTaskReturnHook>:
    800050d2:	8082                	ret

00000000800050d4 <get_time>:
    800050d4:	0200c7b7          	lui	a5,0x200c
    800050d8:	ff87b503          	ld	a0,-8(a5) # 200bff8 <_HEAP_SIZE+0x2007ff8>
    800050dc:	8082                	ret

00000000800050de <add_timecmp>:
    800050de:	0200c7b7          	lui	a5,0x200c
    800050e2:	ff87b783          	ld	a5,-8(a5) # 200bff8 <_HEAP_SIZE+0x2007ff8>
    800050e6:	953e                	add	a0,a0,a5
    800050e8:	020047b7          	lui	a5,0x2004
    800050ec:	e388                	sd	a0,0(a5)
    800050ee:	8082                	ret

00000000800050f0 <next_timecmp>:
    800050f0:	0200c7b7          	lui	a5,0x200c
    800050f4:	ff87b783          	ld	a5,-8(a5) # 200bff8 <_HEAP_SIZE+0x2007ff8>
    800050f8:	6709                	lui	a4,0x2
    800050fa:	71070713          	addi	a4,a4,1808 # 2710 <RISCV_MIE_MSIE+0x2708>
    800050fe:	97ba                	add	a5,a5,a4
    80005100:	02004737          	lui	a4,0x2004
    80005104:	e31c                	sd	a5,0(a4)
    80005106:	8082                	ret

0000000080005108 <delay>:
    80005108:	0200c7b7          	lui	a5,0x200c
    8000510c:	ff87b683          	ld	a3,-8(a5) # 200bff8 <_HEAP_SIZE+0x2007ff8>
    80005110:	0200c737          	lui	a4,0x200c
    80005114:	ff873783          	ld	a5,-8(a4) # 200bff8 <_HEAP_SIZE+0x2007ff8>
    80005118:	8f95                	sub	a5,a5,a3
    8000511a:	fea7ede3          	bltu	a5,a0,80005114 <delay+0xc>
    8000511e:	8082                	ret

0000000080005120 <vprintfmt>:
    80005120:	710d                	addi	sp,sp,-352
    80005122:	eaa2                	sd	s0,336(sp)
    80005124:	e6a6                	sd	s1,328(sp)
    80005126:	e2ca                	sd	s2,320(sp)
    80005128:	fa52                	sd	s4,304(sp)
    8000512a:	f656                	sd	s5,296(sp)
    8000512c:	f25a                	sd	s6,288(sp)
    8000512e:	ee86                	sd	ra,344(sp)
    80005130:	fe4e                	sd	s3,312(sp)
    80005132:	ee5e                	sd	s7,280(sp)
    80005134:	ea62                	sd	s8,272(sp)
    80005136:	e666                	sd	s9,264(sp)
    80005138:	892a                	mv	s2,a0
    8000513a:	84ae                	mv	s1,a1
    8000513c:	8432                	mv	s0,a2
    8000513e:	8b36                	mv	s6,a3
    80005140:	02500a13          	li	s4,37
    80005144:	0007ba97          	auipc	s5,0x7b
    80005148:	fbca8a93          	addi	s5,s5,-68 # 80080100 <OSUnMapTbl+0x100>
    8000514c:	a029                	j	80005156 <vprintfmt+0x36>
    8000514e:	c131                	beqz	a0,80005192 <vprintfmt+0x72>
    80005150:	85a6                	mv	a1,s1
    80005152:	0405                	addi	s0,s0,1
    80005154:	9902                	jalr	s2
    80005156:	00044503          	lbu	a0,0(s0)
    8000515a:	ff451ae3          	bne	a0,s4,8000514e <vprintfmt+0x2e>
    8000515e:	00144683          	lbu	a3,1(s0)
    80005162:	00140c93          	addi	s9,s0,1
    80005166:	8766                	mv	a4,s9
    80005168:	02000b93          	li	s7,32
    8000516c:	59fd                	li	s3,-1
    8000516e:	5c7d                	li	s8,-1
    80005170:	4581                	li	a1,0
    80005172:	05500613          	li	a2,85
    80005176:	4525                	li	a0,9
    80005178:	fdd6879b          	addiw	a5,a3,-35
    8000517c:	0ff7f793          	andi	a5,a5,255
    80005180:	00170413          	addi	s0,a4,1
    80005184:	1ef66963          	bltu	a2,a5,80005376 <vprintfmt+0x256>
    80005188:	078a                	slli	a5,a5,0x2
    8000518a:	97d6                	add	a5,a5,s5
    8000518c:	439c                	lw	a5,0(a5)
    8000518e:	97d6                	add	a5,a5,s5
    80005190:	8782                	jr	a5
    80005192:	60f6                	ld	ra,344(sp)
    80005194:	6456                	ld	s0,336(sp)
    80005196:	64b6                	ld	s1,328(sp)
    80005198:	6916                	ld	s2,320(sp)
    8000519a:	79f2                	ld	s3,312(sp)
    8000519c:	7a52                	ld	s4,304(sp)
    8000519e:	7ab2                	ld	s5,296(sp)
    800051a0:	7b12                	ld	s6,288(sp)
    800051a2:	6bf2                	ld	s7,280(sp)
    800051a4:	6c52                	ld	s8,272(sp)
    800051a6:	6cb2                	ld	s9,264(sp)
    800051a8:	6135                	addi	sp,sp,352
    800051aa:	8082                	ret
    800051ac:	4721                	li	a4,8
    800051ae:	4785                	li	a5,1
    800051b0:	008b0693          	addi	a3,s6,8
    800051b4:	0eb7d463          	ble	a1,a5,8000529c <vprintfmt+0x17c>
    800051b8:	000b3783          	ld	a5,0(s6)
    800051bc:	8b36                	mv	s6,a3
    800051be:	02e7f6b3          	remu	a3,a5,a4
    800051c2:	2b81                	sext.w	s7,s7
    800051c4:	0050                	addi	a2,sp,4
    800051c6:	4985                	li	s3,1
    800051c8:	c036                	sw	a3,0(sp)
    800051ca:	00e7f463          	bleu	a4,a5,800051d2 <vprintfmt+0xb2>
    800051ce:	aa55                	j	80005382 <vprintfmt+0x262>
    800051d0:	89e6                	mv	s3,s9
    800051d2:	02e7d7b3          	divu	a5,a5,a4
    800051d6:	0611                	addi	a2,a2,4
    800051d8:	00198c9b          	addiw	s9,s3,1
    800051dc:	02e7f6b3          	remu	a3,a5,a4
    800051e0:	fed62e23          	sw	a3,-4(a2)
    800051e4:	fee7f6e3          	bleu	a4,a5,800051d0 <vprintfmt+0xb0>
    800051e8:	018cd963          	ble	s8,s9,800051fa <vprintfmt+0xda>
    800051ec:	2c01                	sext.w	s8,s8
    800051ee:	3c7d                	addiw	s8,s8,-1
    800051f0:	85a6                	mv	a1,s1
    800051f2:	855e                	mv	a0,s7
    800051f4:	9902                	jalr	s2
    800051f6:	ff8ccce3          	blt	s9,s8,800051ee <vprintfmt+0xce>
    800051fa:	00299793          	slli	a5,s3,0x2
    800051fe:	0218                	addi	a4,sp,256
    80005200:	97ba                	add	a5,a5,a4
    80005202:	f007a683          	lw	a3,-256(a5)
    80005206:	fff98b9b          	addiw	s7,s3,-1
    8000520a:	0b8a                	slli	s7,s7,0x2
    8000520c:	9b8a                	add	s7,s7,sp
    8000520e:	4c25                	li	s8,9
    80005210:	a029                	j	8000521a <vprintfmt+0xfa>
    80005212:	000ba683          	lw	a3,0(s7)
    80005216:	19fd                	addi	s3,s3,-1
    80005218:	1bf1                	addi	s7,s7,-4
    8000521a:	03000513          	li	a0,48
    8000521e:	00dc7463          	bleu	a3,s8,80005226 <vprintfmt+0x106>
    80005222:	05700513          	li	a0,87
    80005226:	85a6                	mv	a1,s1
    80005228:	9d35                	addw	a0,a0,a3
    8000522a:	9902                	jalr	s2
    8000522c:	0009879b          	sext.w	a5,s3
    80005230:	fef041e3          	bgtz	a5,80005212 <vprintfmt+0xf2>
    80005234:	b70d                	j	80005156 <vprintfmt+0x36>
    80005236:	03000513          	li	a0,48
    8000523a:	85a6                	mv	a1,s1
    8000523c:	9902                	jalr	s2
    8000523e:	85a6                	mv	a1,s1
    80005240:	07800513          	li	a0,120
    80005244:	9902                	jalr	s2
    80005246:	008b0693          	addi	a3,s6,8
    8000524a:	4741                	li	a4,16
    8000524c:	b7b5                	j	800051b8 <vprintfmt+0x98>
    8000524e:	000b3c83          	ld	s9,0(s6)
    80005252:	0b21                	addi	s6,s6,8
    80005254:	180c8863          	beqz	s9,800053e4 <vprintfmt+0x2c4>
    80005258:	15805163          	blez	s8,8000539a <vprintfmt+0x27a>
    8000525c:	02d00793          	li	a5,45
    80005260:	16fb8d63          	beq	s7,a5,800053da <vprintfmt+0x2ba>
    80005264:	000c059b          	sext.w	a1,s8
    80005268:	18098963          	beqz	s3,800053fa <vprintfmt+0x2da>
    8000526c:	000cc783          	lbu	a5,0(s9)
    80005270:	18078563          	beqz	a5,800053fa <vprintfmt+0x2da>
    80005274:	001c8793          	addi	a5,s9,1
    80005278:	013c8633          	add	a2,s9,s3
    8000527c:	1af60363          	beq	a2,a5,80005422 <vprintfmt+0x302>
    80005280:	00178713          	addi	a4,a5,1
    80005284:	fff74683          	lbu	a3,-1(a4)
    80005288:	10068363          	beqz	a3,8000538e <vprintfmt+0x26e>
    8000528c:	87ba                	mv	a5,a4
    8000528e:	b7fd                	j	8000527c <vprintfmt+0x15c>
    80005290:	4785                	li	a5,1
    80005292:	4729                	li	a4,10
    80005294:	008b0693          	addi	a3,s6,8
    80005298:	f2b7c0e3          	blt	a5,a1,800051b8 <vprintfmt+0x98>
    8000529c:	fd91                	bnez	a1,800051b8 <vprintfmt+0x98>
    8000529e:	000b6783          	lwu	a5,0(s6)
    800052a2:	8b36                	mv	s6,a3
    800052a4:	bf29                	j	800051be <vprintfmt+0x9e>
    800052a6:	00174683          	lbu	a3,1(a4)
    800052aa:	8722                	mv	a4,s0
    800052ac:	b5f1                	j	80005178 <vprintfmt+0x58>
    800052ae:	85a6                	mv	a1,s1
    800052b0:	02500513          	li	a0,37
    800052b4:	9902                	jalr	s2
    800052b6:	b545                	j	80005156 <vprintfmt+0x36>
    800052b8:	4741                	li	a4,16
    800052ba:	bdd5                	j	800051ae <vprintfmt+0x8e>
    800052bc:	000b2983          	lw	s3,0(s6)
    800052c0:	00174683          	lbu	a3,1(a4)
    800052c4:	0b21                	addi	s6,s6,8
    800052c6:	8722                	mv	a4,s0
    800052c8:	ea0c58e3          	bgez	s8,80005178 <vprintfmt+0x58>
    800052cc:	8c4e                	mv	s8,s3
    800052ce:	59fd                	li	s3,-1
    800052d0:	b565                	j	80005178 <vprintfmt+0x58>
    800052d2:	00174683          	lbu	a3,1(a4)
    800052d6:	02d00b93          	li	s7,45
    800052da:	8722                	mv	a4,s0
    800052dc:	bd71                	j	80005178 <vprintfmt+0x58>
    800052de:	fffc4793          	not	a5,s8
    800052e2:	97fd                	srai	a5,a5,0x3f
    800052e4:	00fc7c33          	and	s8,s8,a5
    800052e8:	00174683          	lbu	a3,1(a4)
    800052ec:	2c01                	sext.w	s8,s8
    800052ee:	8722                	mv	a4,s0
    800052f0:	b561                	j	80005178 <vprintfmt+0x58>
    800052f2:	00174683          	lbu	a3,1(a4)
    800052f6:	03000b93          	li	s7,48
    800052fa:	8722                	mv	a4,s0
    800052fc:	bdb5                	j	80005178 <vprintfmt+0x58>
    800052fe:	fd06899b          	addiw	s3,a3,-48
    80005302:	00174683          	lbu	a3,1(a4)
    80005306:	8722                	mv	a4,s0
    80005308:	fd06879b          	addiw	a5,a3,-48
    8000530c:	0006881b          	sext.w	a6,a3
    80005310:	faf56ce3          	bltu	a0,a5,800052c8 <vprintfmt+0x1a8>
    80005314:	0705                	addi	a4,a4,1
    80005316:	0029979b          	slliw	a5,s3,0x2
    8000531a:	00074683          	lbu	a3,0(a4)
    8000531e:	013789bb          	addw	s3,a5,s3
    80005322:	0019999b          	slliw	s3,s3,0x1
    80005326:	010989bb          	addw	s3,s3,a6
    8000532a:	fd06879b          	addiw	a5,a3,-48
    8000532e:	fd09899b          	addiw	s3,s3,-48
    80005332:	0006881b          	sext.w	a6,a3
    80005336:	fcf57fe3          	bleu	a5,a0,80005314 <vprintfmt+0x1f4>
    8000533a:	b779                	j	800052c8 <vprintfmt+0x1a8>
    8000533c:	000b2503          	lw	a0,0(s6)
    80005340:	85a6                	mv	a1,s1
    80005342:	0b21                	addi	s6,s6,8
    80005344:	9902                	jalr	s2
    80005346:	bd01                	j	80005156 <vprintfmt+0x36>
    80005348:	4785                	li	a5,1
    8000534a:	008b0c93          	addi	s9,s6,8
    8000534e:	08b7d263          	ble	a1,a5,800053d2 <vprintfmt+0x2b2>
    80005352:	000b3983          	ld	s3,0(s6)
    80005356:	0a09da63          	bgez	s3,8000540a <vprintfmt+0x2ea>
    8000535a:	85a6                	mv	a1,s1
    8000535c:	02d00513          	li	a0,45
    80005360:	9902                	jalr	s2
    80005362:	8b66                	mv	s6,s9
    80005364:	413007b3          	neg	a5,s3
    80005368:	4729                	li	a4,10
    8000536a:	bd91                	j	800051be <vprintfmt+0x9e>
    8000536c:	00174683          	lbu	a3,1(a4)
    80005370:	2585                	addiw	a1,a1,1
    80005372:	8722                	mv	a4,s0
    80005374:	b511                	j	80005178 <vprintfmt+0x58>
    80005376:	85a6                	mv	a1,s1
    80005378:	02500513          	li	a0,37
    8000537c:	9902                	jalr	s2
    8000537e:	8466                	mv	s0,s9
    80005380:	bbd9                	j	80005156 <vprintfmt+0x36>
    80005382:	4785                	li	a5,1
    80005384:	4981                	li	s3,0
    80005386:	4c85                	li	s9,1
    80005388:	e787c2e3          	blt	a5,s8,800051ec <vprintfmt+0xcc>
    8000538c:	bdad                	j	80005206 <vprintfmt+0xe6>
    8000538e:	41978c33          	sub	s8,a5,s9
    80005392:	41858c3b          	subw	s8,a1,s8
    80005396:	07804263          	bgtz	s8,800053fa <vprintfmt+0x2da>
    8000539a:	000cc503          	lbu	a0,0(s9)
    8000539e:	da050ce3          	beqz	a0,80005156 <vprintfmt+0x36>
    800053a2:	5bfd                	li	s7,-1
    800053a4:	0209d363          	bgez	s3,800053ca <vprintfmt+0x2aa>
    800053a8:	85a6                	mv	a1,s1
    800053aa:	0c85                	addi	s9,s9,1
    800053ac:	9902                	jalr	s2
    800053ae:	000cc503          	lbu	a0,0(s9)
    800053b2:	3c7d                	addiw	s8,s8,-1
    800053b4:	f965                	bnez	a0,800053a4 <vprintfmt+0x284>
    800053b6:	db8050e3          	blez	s8,80005156 <vprintfmt+0x36>
    800053ba:	3c7d                	addiw	s8,s8,-1
    800053bc:	85a6                	mv	a1,s1
    800053be:	02000513          	li	a0,32
    800053c2:	9902                	jalr	s2
    800053c4:	fe0c1be3          	bnez	s8,800053ba <vprintfmt+0x29a>
    800053c8:	b379                	j	80005156 <vprintfmt+0x36>
    800053ca:	39fd                	addiw	s3,s3,-1
    800053cc:	fd799ee3          	bne	s3,s7,800053a8 <vprintfmt+0x288>
    800053d0:	b7dd                	j	800053b6 <vprintfmt+0x296>
    800053d2:	f1c1                	bnez	a1,80005352 <vprintfmt+0x232>
    800053d4:	000b2983          	lw	s3,0(s6)
    800053d8:	bfbd                	j	80005356 <vprintfmt+0x236>
    800053da:	000cc503          	lbu	a0,0(s9)
    800053de:	dd71                	beqz	a0,800053ba <vprintfmt+0x29a>
    800053e0:	5bfd                	li	s7,-1
    800053e2:	b7c9                	j	800053a4 <vprintfmt+0x284>
    800053e4:	03805763          	blez	s8,80005412 <vprintfmt+0x2f2>
    800053e8:	02d00793          	li	a5,45
    800053ec:	02fb8363          	beq	s7,a5,80005412 <vprintfmt+0x2f2>
    800053f0:	0007bc97          	auipc	s9,0x7b
    800053f4:	ed8c8c93          	addi	s9,s9,-296 # 800802c8 <OSUnMapTbl+0x2c8>
    800053f8:	b5b5                	j	80005264 <vprintfmt+0x144>
    800053fa:	2b81                	sext.w	s7,s7
    800053fc:	3c7d                	addiw	s8,s8,-1
    800053fe:	85a6                	mv	a1,s1
    80005400:	855e                	mv	a0,s7
    80005402:	9902                	jalr	s2
    80005404:	fe0c1ce3          	bnez	s8,800053fc <vprintfmt+0x2dc>
    80005408:	bf49                	j	8000539a <vprintfmt+0x27a>
    8000540a:	87ce                	mv	a5,s3
    8000540c:	8b66                	mv	s6,s9
    8000540e:	4729                	li	a4,10
    80005410:	b37d                	j	800051be <vprintfmt+0x9e>
    80005412:	0007bc97          	auipc	s9,0x7b
    80005416:	eb6c8c93          	addi	s9,s9,-330 # 800802c8 <OSUnMapTbl+0x2c8>
    8000541a:	02800513          	li	a0,40
    8000541e:	5bfd                	li	s7,-1
    80005420:	b751                	j	800053a4 <vprintfmt+0x284>
    80005422:	41960c33          	sub	s8,a2,s9
    80005426:	41858c3b          	subw	s8,a1,s8
    8000542a:	fd8048e3          	bgtz	s8,800053fa <vprintfmt+0x2da>
    8000542e:	b7b5                	j	8000539a <vprintfmt+0x27a>

0000000080005430 <sprintf_putch.1158>:
    80005430:	619c                	ld	a5,0(a1)
    80005432:	00a78023          	sb	a0,0(a5)
    80005436:	619c                	ld	a5,0(a1)
    80005438:	0785                	addi	a5,a5,1
    8000543a:	e19c                	sd	a5,0(a1)
    8000543c:	8082                	ret

000000008000543e <putchar>:
    8000543e:	0007b797          	auipc	a5,0x7b
    80005442:	f2e78793          	addi	a5,a5,-210 # 8008036c <buflen.1036>
    80005446:	4398                	lw	a4,0(a5)
    80005448:	0007b697          	auipc	a3,0x7b
    8000544c:	f3868693          	addi	a3,a3,-200 # 80080380 <__bss_start>
    80005450:	7119                	addi	sp,sp,-128
    80005452:	0017079b          	addiw	a5,a4,1
    80005456:	0007b617          	auipc	a2,0x7b
    8000545a:	f0f62b23          	sw	a5,-234(a2) # 8008036c <buflen.1036>
    8000545e:	9736                	add	a4,a4,a3
    80005460:	00a70023          	sb	a0,0(a4)
    80005464:	4629                	li	a2,10
    80005466:	03f10713          	addi	a4,sp,63
    8000546a:	fc077713          	andi	a4,a4,-64
    8000546e:	00c50963          	beq	a0,a2,80005480 <putchar+0x42>
    80005472:	04000613          	li	a2,64
    80005476:	00c78563          	beq	a5,a2,80005480 <putchar+0x42>
    8000547a:	4501                	li	a0,0
    8000547c:	6109                	addi	sp,sp,128
    8000547e:	8082                	ret
    80005480:	04000613          	li	a2,64
    80005484:	e310                	sd	a2,0(a4)
    80005486:	4605                	li	a2,1
    80005488:	e710                	sd	a2,8(a4)
    8000548a:	eb14                	sd	a3,16(a4)
    8000548c:	ef1c                	sd	a5,24(a4)
    8000548e:	0ff0000f          	fence
    80005492:	0007d797          	auipc	a5,0x7d
    80005496:	36e7b723          	sd	a4,878(a5) # 80082800 <tohost>
    8000549a:	0007d697          	auipc	a3,0x7d
    8000549e:	32668693          	addi	a3,a3,806 # 800827c0 <fromhost>
    800054a2:	629c                	ld	a5,0(a3)
    800054a4:	dffd                	beqz	a5,800054a2 <putchar+0x64>
    800054a6:	0007d797          	auipc	a5,0x7d
    800054aa:	3007bd23          	sd	zero,794(a5) # 800827c0 <fromhost>
    800054ae:	0ff0000f          	fence
    800054b2:	631c                	ld	a5,0(a4)
    800054b4:	4501                	li	a0,0
    800054b6:	0007b797          	auipc	a5,0x7b
    800054ba:	ea07ab23          	sw	zero,-330(a5) # 8008036c <buflen.1036>
    800054be:	6109                	addi	sp,sp,128
    800054c0:	8082                	ret

00000000800054c2 <printstr>:
    800054c2:	00054783          	lbu	a5,0(a0)
    800054c6:	7119                	addi	sp,sp,-128
    800054c8:	03f10713          	addi	a4,sp,63
    800054cc:	86aa                	mv	a3,a0
    800054ce:	fc077713          	andi	a4,a4,-64
    800054d2:	c3b9                	beqz	a5,80005518 <printstr+0x56>
    800054d4:	862a                	mv	a2,a0
    800054d6:	0505                	addi	a0,a0,1
    800054d8:	00054783          	lbu	a5,0(a0)
    800054dc:	ffed                	bnez	a5,800054d6 <printstr+0x14>
    800054de:	8d11                	sub	a0,a0,a2
    800054e0:	04000793          	li	a5,64
    800054e4:	e31c                	sd	a5,0(a4)
    800054e6:	4785                	li	a5,1
    800054e8:	e71c                	sd	a5,8(a4)
    800054ea:	eb14                	sd	a3,16(a4)
    800054ec:	ef08                	sd	a0,24(a4)
    800054ee:	0ff0000f          	fence
    800054f2:	0007d797          	auipc	a5,0x7d
    800054f6:	30e7b723          	sd	a4,782(a5) # 80082800 <tohost>
    800054fa:	0007d697          	auipc	a3,0x7d
    800054fe:	2c668693          	addi	a3,a3,710 # 800827c0 <fromhost>
    80005502:	629c                	ld	a5,0(a3)
    80005504:	dffd                	beqz	a5,80005502 <printstr+0x40>
    80005506:	0007d797          	auipc	a5,0x7d
    8000550a:	2a07bd23          	sd	zero,698(a5) # 800827c0 <fromhost>
    8000550e:	0ff0000f          	fence
    80005512:	631c                	ld	a5,0(a4)
    80005514:	6109                	addi	sp,sp,128
    80005516:	8082                	ret
    80005518:	4501                	li	a0,0
    8000551a:	b7d9                	j	800054e0 <printstr+0x1e>

000000008000551c <printhex>:
    8000551c:	7179                	addi	sp,sp,-48
    8000551e:	f406                	sd	ra,40(sp)
    80005520:	01710713          	addi	a4,sp,23
    80005524:	00710813          	addi	a6,sp,7
    80005528:	45a5                	li	a1,9
    8000552a:	00f57793          	andi	a5,a0,15
    8000552e:	03000613          	li	a2,48
    80005532:	0ff7f693          	andi	a3,a5,255
    80005536:	00f5f463          	bleu	a5,a1,8000553e <printhex+0x22>
    8000553a:	05700613          	li	a2,87
    8000553e:	00c687bb          	addw	a5,a3,a2
    80005542:	00f70023          	sb	a5,0(a4)
    80005546:	177d                	addi	a4,a4,-1
    80005548:	8111                	srli	a0,a0,0x4
    8000554a:	fee810e3          	bne	a6,a4,8000552a <printhex+0xe>
    8000554e:	0028                	addi	a0,sp,8
    80005550:	00010c23          	sb	zero,24(sp)
    80005554:	f6fff0ef          	jal	ra,800054c2 <printstr>
    80005558:	70a2                	ld	ra,40(sp)
    8000555a:	6145                	addi	sp,sp,48
    8000555c:	8082                	ret

000000008000555e <printf>:
    8000555e:	711d                	addi	sp,sp,-96
    80005560:	02810313          	addi	t1,sp,40
    80005564:	f42e                	sd	a1,40(sp)
    80005566:	f832                	sd	a2,48(sp)
    80005568:	fc36                	sd	a3,56(sp)
    8000556a:	862a                	mv	a2,a0
    8000556c:	869a                	mv	a3,t1
    8000556e:	00000517          	auipc	a0,0x0
    80005572:	ed050513          	addi	a0,a0,-304 # 8000543e <putchar>
    80005576:	4581                	li	a1,0
    80005578:	ec06                	sd	ra,24(sp)
    8000557a:	e0ba                	sd	a4,64(sp)
    8000557c:	e4be                	sd	a5,72(sp)
    8000557e:	e8c2                	sd	a6,80(sp)
    80005580:	ecc6                	sd	a7,88(sp)
    80005582:	e41a                	sd	t1,8(sp)
    80005584:	b9dff0ef          	jal	ra,80005120 <vprintfmt>
    80005588:	60e2                	ld	ra,24(sp)
    8000558a:	4501                	li	a0,0
    8000558c:	6125                	addi	sp,sp,96
    8000558e:	8082                	ret

0000000080005590 <sprintf>:
    80005590:	711d                	addi	sp,sp,-96
    80005592:	03010313          	addi	t1,sp,48
    80005596:	f022                	sd	s0,32(sp)
    80005598:	e42a                	sd	a0,8(sp)
    8000559a:	f832                	sd	a2,48(sp)
    8000559c:	fc36                	sd	a3,56(sp)
    8000559e:	842a                	mv	s0,a0
    800055a0:	862e                	mv	a2,a1
    800055a2:	00000517          	auipc	a0,0x0
    800055a6:	e8e50513          	addi	a0,a0,-370 # 80005430 <sprintf_putch.1158>
    800055aa:	002c                	addi	a1,sp,8
    800055ac:	869a                	mv	a3,t1
    800055ae:	f406                	sd	ra,40(sp)
    800055b0:	e4be                	sd	a5,72(sp)
    800055b2:	e0ba                	sd	a4,64(sp)
    800055b4:	e8c2                	sd	a6,80(sp)
    800055b6:	ecc6                	sd	a7,88(sp)
    800055b8:	ec1a                	sd	t1,24(sp)
    800055ba:	b67ff0ef          	jal	ra,80005120 <vprintfmt>
    800055be:	67a2                	ld	a5,8(sp)
    800055c0:	00078023          	sb	zero,0(a5)
    800055c4:	6522                	ld	a0,8(sp)
    800055c6:	70a2                	ld	ra,40(sp)
    800055c8:	9d01                	subw	a0,a0,s0
    800055ca:	7402                	ld	s0,32(sp)
    800055cc:	6125                	addi	sp,sp,96
    800055ce:	8082                	ret

00000000800055d0 <memcpy>:
    800055d0:	00c5e7b3          	or	a5,a1,a2
    800055d4:	8fc9                	or	a5,a5,a0
    800055d6:	8b9d                	andi	a5,a5,7
    800055d8:	00c506b3          	add	a3,a0,a2
    800055dc:	cf91                	beqz	a5,800055f8 <memcpy+0x28>
    800055de:	962e                	add	a2,a2,a1
    800055e0:	87aa                	mv	a5,a0
    800055e2:	02d57763          	bleu	a3,a0,80005610 <memcpy+0x40>
    800055e6:	0585                	addi	a1,a1,1
    800055e8:	fff5c703          	lbu	a4,-1(a1)
    800055ec:	0785                	addi	a5,a5,1
    800055ee:	fee78fa3          	sb	a4,-1(a5)
    800055f2:	feb61ae3          	bne	a2,a1,800055e6 <memcpy+0x16>
    800055f6:	8082                	ret
    800055f8:	fed57fe3          	bleu	a3,a0,800055f6 <memcpy+0x26>
    800055fc:	87aa                	mv	a5,a0
    800055fe:	05a1                	addi	a1,a1,8
    80005600:	ff85b703          	ld	a4,-8(a1)
    80005604:	07a1                	addi	a5,a5,8
    80005606:	fee7bc23          	sd	a4,-8(a5)
    8000560a:	fed7eae3          	bltu	a5,a3,800055fe <memcpy+0x2e>
    8000560e:	8082                	ret
    80005610:	8082                	ret

0000000080005612 <memset>:
    80005612:	00c567b3          	or	a5,a0,a2
    80005616:	8b9d                	andi	a5,a5,7
    80005618:	962a                	add	a2,a2,a0
    8000561a:	0ff5f593          	andi	a1,a1,255
    8000561e:	cb91                	beqz	a5,80005632 <memset+0x20>
    80005620:	87aa                	mv	a5,a0
    80005622:	02c57a63          	bleu	a2,a0,80005656 <memset+0x44>
    80005626:	0785                	addi	a5,a5,1
    80005628:	feb78fa3          	sb	a1,-1(a5)
    8000562c:	fef61de3          	bne	a2,a5,80005626 <memset+0x14>
    80005630:	8082                	ret
    80005632:	00859793          	slli	a5,a1,0x8
    80005636:	8ddd                	or	a1,a1,a5
    80005638:	01059793          	slli	a5,a1,0x10
    8000563c:	8fcd                	or	a5,a5,a1
    8000563e:	02079593          	slli	a1,a5,0x20
    80005642:	8ddd                	or	a1,a1,a5
    80005644:	fec576e3          	bleu	a2,a0,80005630 <memset+0x1e>
    80005648:	87aa                	mv	a5,a0
    8000564a:	07a1                	addi	a5,a5,8
    8000564c:	feb7bc23          	sd	a1,-8(a5)
    80005650:	fec7ede3          	bltu	a5,a2,8000564a <memset+0x38>
    80005654:	8082                	ret
    80005656:	8082                	ret

0000000080005658 <strlen>:
    80005658:	00054783          	lbu	a5,0(a0)
    8000565c:	872a                	mv	a4,a0
    8000565e:	c799                	beqz	a5,8000566c <strlen+0x14>
    80005660:	0505                	addi	a0,a0,1
    80005662:	00054783          	lbu	a5,0(a0)
    80005666:	ffed                	bnez	a5,80005660 <strlen+0x8>
    80005668:	8d19                	sub	a0,a0,a4
    8000566a:	8082                	ret
    8000566c:	4501                	li	a0,0
    8000566e:	8082                	ret

0000000080005670 <strnlen>:
    80005670:	872a                	mv	a4,a0
    80005672:	cd91                	beqz	a1,8000568e <strnlen+0x1e>
    80005674:	00054783          	lbu	a5,0(a0)
    80005678:	cb99                	beqz	a5,8000568e <strnlen+0x1e>
    8000567a:	95aa                	add	a1,a1,a0
    8000567c:	a021                	j	80005684 <strnlen+0x14>
    8000567e:	00054783          	lbu	a5,0(a0)
    80005682:	c781                	beqz	a5,8000568a <strnlen+0x1a>
    80005684:	0505                	addi	a0,a0,1
    80005686:	feb51ce3          	bne	a0,a1,8000567e <strnlen+0xe>
    8000568a:	8d19                	sub	a0,a0,a4
    8000568c:	8082                	ret
    8000568e:	4501                	li	a0,0
    80005690:	8082                	ret

0000000080005692 <strcmp>:
    80005692:	0505                	addi	a0,a0,1
    80005694:	fff54783          	lbu	a5,-1(a0)
    80005698:	0585                	addi	a1,a1,1
    8000569a:	fff5c703          	lbu	a4,-1(a1)
    8000569e:	c799                	beqz	a5,800056ac <strcmp+0x1a>
    800056a0:	fee789e3          	beq	a5,a4,80005692 <strcmp>
    800056a4:	0007851b          	sext.w	a0,a5
    800056a8:	9d19                	subw	a0,a0,a4
    800056aa:	8082                	ret
    800056ac:	4501                	li	a0,0
    800056ae:	bfed                	j	800056a8 <strcmp+0x16>

00000000800056b0 <strcpy>:
    800056b0:	87aa                	mv	a5,a0
    800056b2:	0585                	addi	a1,a1,1
    800056b4:	fff5c703          	lbu	a4,-1(a1)
    800056b8:	0785                	addi	a5,a5,1
    800056ba:	fee78fa3          	sb	a4,-1(a5)
    800056be:	fb75                	bnez	a4,800056b2 <strcpy+0x2>
    800056c0:	8082                	ret

00000000800056c2 <atol>:
    800056c2:	00054783          	lbu	a5,0(a0)
    800056c6:	02000713          	li	a4,32
    800056ca:	00e79763          	bne	a5,a4,800056d8 <atol+0x16>
    800056ce:	0505                	addi	a0,a0,1
    800056d0:	00054783          	lbu	a5,0(a0)
    800056d4:	fee78de3          	beq	a5,a4,800056ce <atol+0xc>
    800056d8:	fd57871b          	addiw	a4,a5,-43
    800056dc:	0fd77713          	andi	a4,a4,253
    800056e0:	c715                	beqz	a4,8000570c <atol+0x4a>
    800056e2:	00054683          	lbu	a3,0(a0)
    800056e6:	87aa                	mv	a5,a0
    800056e8:	4601                	li	a2,0
    800056ea:	ce85                	beqz	a3,80005722 <atol+0x60>
    800056ec:	4501                	li	a0,0
    800056ee:	0785                	addi	a5,a5,1
    800056f0:	fd06859b          	addiw	a1,a3,-48
    800056f4:	00251713          	slli	a4,a0,0x2
    800056f8:	0007c683          	lbu	a3,0(a5)
    800056fc:	953a                	add	a0,a0,a4
    800056fe:	0506                	slli	a0,a0,0x1
    80005700:	952e                	add	a0,a0,a1
    80005702:	f6f5                	bnez	a3,800056ee <atol+0x2c>
    80005704:	c219                	beqz	a2,8000570a <atol+0x48>
    80005706:	40a00533          	neg	a0,a0
    8000570a:	8082                	ret
    8000570c:	00154683          	lbu	a3,1(a0)
    80005710:	fd378793          	addi	a5,a5,-45
    80005714:	0017b613          	seqz	a2,a5
    80005718:	00150793          	addi	a5,a0,1
    8000571c:	fae1                	bnez	a3,800056ec <atol+0x2a>
    8000571e:	4501                	li	a0,0
    80005720:	b7d5                	j	80005704 <atol+0x42>
    80005722:	4501                	li	a0,0
    80005724:	8082                	ret

0000000080005726 <syscall_handler>:
    80005726:	9e1fa06f          	j	80000106 <task_switch>

000000008000572a <time_handler>:
    8000572a:	1141                	addi	sp,sp,-16
    8000572c:	e406                	sd	ra,8(sp)
    8000572e:	e022                	sd	s0,0(sp)
    80005730:	842a                	mv	s0,a0
    80005732:	9bfff0ef          	jal	ra,800050f0 <next_timecmp>
    80005736:	f0bfa0ef          	jal	ra,80000640 <OSIntEnter>
    8000573a:	87afb0ef          	jal	ra,800007b4 <OSTimeTick>
    8000573e:	f2ffa0ef          	jal	ra,8000066c <OSIntExit>
    80005742:	8522                	mv	a0,s0
    80005744:	6402                	ld	s0,0(sp)
    80005746:	60a2                	ld	ra,8(sp)
    80005748:	0141                	addi	sp,sp,16
    8000574a:	9bdfa06f          	j	80000106 <task_switch>

000000008000574e <trap_handler>:
    8000574e:	1141                	addi	sp,sp,-16
    80005750:	e022                	sd	s0,0(sp)
    80005752:	e406                	sd	ra,8(sp)
    80005754:	87aa                	mv	a5,a0
    80005756:	842e                	mv	s0,a1
    80005758:	04054263          	bltz	a0,8000579c <trap_handler+0x4e>
    8000575c:	472d                	li	a4,11
    8000575e:	02e50463          	beq	a0,a4,80005786 <trap_handler+0x38>
    80005762:	30047073          	csrci	mstatus,8
    80005766:	0007b517          	auipc	a0,0x7b
    8000576a:	b6a50513          	addi	a0,a0,-1174 # 800802d0 <OSUnMapTbl+0x2d0>
    8000576e:	862e                	mv	a2,a1
    80005770:	85be                	mv	a1,a5
    80005772:	dedff0ef          	jal	ra,8000555e <printf>
    80005776:	4501                	li	a0,0
    80005778:	a4ffa0ef          	jal	ra,800001c6 <exit>
    8000577c:	8522                	mv	a0,s0
    8000577e:	60a2                	ld	ra,8(sp)
    80005780:	6402                	ld	s0,0(sp)
    80005782:	0141                	addi	sp,sp,16
    80005784:	8082                	ret
    80005786:	00458413          	addi	s0,a1,4
    8000578a:	fe60                	sd	s0,248(a2)
    8000578c:	8532                	mv	a0,a2
    8000578e:	979fa0ef          	jal	ra,80000106 <task_switch>
    80005792:	8522                	mv	a0,s0
    80005794:	60a2                	ld	ra,8(sp)
    80005796:	6402                	ld	s0,0(sp)
    80005798:	0141                	addi	sp,sp,16
    8000579a:	8082                	ret
    8000579c:	00151593          	slli	a1,a0,0x1
    800057a0:	8585                	srai	a1,a1,0x1
    800057a2:	479d                	li	a5,7
    800057a4:	00f59b63          	bne	a1,a5,800057ba <trap_handler+0x6c>
    800057a8:	fe60                	sd	s0,248(a2)
    800057aa:	8532                	mv	a0,a2
    800057ac:	f7fff0ef          	jal	ra,8000572a <time_handler>
    800057b0:	8522                	mv	a0,s0
    800057b2:	60a2                	ld	ra,8(sp)
    800057b4:	6402                	ld	s0,0(sp)
    800057b6:	0141                	addi	sp,sp,16
    800057b8:	8082                	ret
    800057ba:	30047073          	csrci	mstatus,8
    800057be:	0007b517          	auipc	a0,0x7b
    800057c2:	b1250513          	addi	a0,a0,-1262 # 800802d0 <OSUnMapTbl+0x2d0>
    800057c6:	8622                	mv	a2,s0
    800057c8:	d97ff0ef          	jal	ra,8000555e <printf>
    800057cc:	4501                	li	a0,0
    800057ce:	9f9fa0ef          	jal	ra,800001c6 <exit>
    800057d2:	8522                	mv	a0,s0
    800057d4:	60a2                	ld	ra,8(sp)
    800057d6:	6402                	ld	s0,0(sp)
    800057d8:	0141                	addi	sp,sp,16
    800057da:	8082                	ret

00000000800057dc <halt>:
    800057dc:	1141                	addi	sp,sp,-16
    800057de:	e406                	sd	ra,8(sp)
    800057e0:	87aa                	mv	a5,a0
    800057e2:	862e                	mv	a2,a1
    800057e4:	30047073          	csrci	mstatus,8
    800057e8:	0007b517          	auipc	a0,0x7b
    800057ec:	ae850513          	addi	a0,a0,-1304 # 800802d0 <OSUnMapTbl+0x2d0>
    800057f0:	85be                	mv	a1,a5
    800057f2:	d6dff0ef          	jal	ra,8000555e <printf>
    800057f6:	60a2                	ld	ra,8(sp)
    800057f8:	4501                	li	a0,0
    800057fa:	0141                	addi	sp,sp,16
    800057fc:	9cbfa06f          	j	800001c6 <exit>

0000000080005800 <task1>:
    80005800:	1101                	addi	sp,sp,-32
    80005802:	e822                	sd	s0,16(sp)
    80005804:	e426                	sd	s1,8(sp)
    80005806:	ec06                	sd	ra,24(sp)
    80005808:	4401                	li	s0,0
    8000580a:	0007b497          	auipc	s1,0x7b
    8000580e:	ae648493          	addi	s1,s1,-1306 # 800802f0 <OSUnMapTbl+0x2f0>
    80005812:	2405                	addiw	s0,s0,1
    80005814:	85a2                	mv	a1,s0
    80005816:	8526                	mv	a0,s1
    80005818:	d47ff0ef          	jal	ra,8000555e <printf>
    8000581c:	4529                	li	a0,10
    8000581e:	8d5fe0ef          	jal	ra,800040f2 <OSTimeDly>
    80005822:	bfc5                	j	80005812 <task1+0x12>

0000000080005824 <task2>:
    80005824:	1101                	addi	sp,sp,-32
    80005826:	e822                	sd	s0,16(sp)
    80005828:	e426                	sd	s1,8(sp)
    8000582a:	ec06                	sd	ra,24(sp)
    8000582c:	4401                	li	s0,0
    8000582e:	0007b497          	auipc	s1,0x7b
    80005832:	ada48493          	addi	s1,s1,-1318 # 80080308 <OSUnMapTbl+0x308>
    80005836:	2405                	addiw	s0,s0,1
    80005838:	85a2                	mv	a1,s0
    8000583a:	8526                	mv	a0,s1
    8000583c:	d23ff0ef          	jal	ra,8000555e <printf>
    80005840:	452d                	li	a0,11
    80005842:	8b1fe0ef          	jal	ra,800040f2 <OSTimeDly>
    80005846:	bfc5                	j	80005836 <task2+0x12>

0000000080005848 <start_task>:
    80005848:	1141                	addi	sp,sp,-16
    8000584a:	0007b517          	auipc	a0,0x7b
    8000584e:	ad650513          	addi	a0,a0,-1322 # 80080320 <OSUnMapTbl+0x320>
    80005852:	e406                	sd	ra,8(sp)
    80005854:	d0bff0ef          	jal	ra,8000555e <printf>
    80005858:	899ff0ef          	jal	ra,800050f0 <next_timecmp>
    8000585c:	08000293          	li	t0,128
    80005860:	3042a073          	csrs	mie,t0
    80005864:	30046073          	csrsi	mstatus,8
    80005868:	46b5                	li	a3,13
    8000586a:	00085617          	auipc	a2,0x85
    8000586e:	f9660613          	addi	a2,a2,-106 # 8008a800 <task1_stk+0x3ff8>
    80005872:	4581                	li	a1,0
    80005874:	00000517          	auipc	a0,0x0
    80005878:	f8c50513          	addi	a0,a0,-116 # 80005800 <task1>
    8000587c:	83efe0ef          	jal	ra,800038ba <OSTaskCreate>
    80005880:	46b1                	li	a3,12
    80005882:	00089617          	auipc	a2,0x89
    80005886:	f7e60613          	addi	a2,a2,-130 # 8008e800 <task2_stk+0x3ff8>
    8000588a:	4581                	li	a1,0
    8000588c:	00000517          	auipc	a0,0x0
    80005890:	f9850513          	addi	a0,a0,-104 # 80005824 <task2>
    80005894:	826fe0ef          	jal	ra,800038ba <OSTaskCreate>
    80005898:	0ff00513          	li	a0,255
    8000589c:	9c0fe0ef          	jal	ra,80003a5c <OSTaskDel>
    800058a0:	a001                	j	800058a0 <start_task+0x58>

00000000800058a2 <main>:
    800058a2:	1141                	addi	sp,sp,-16
    800058a4:	0007b517          	auipc	a0,0x7b
    800058a8:	a9450513          	addi	a0,a0,-1388 # 80080338 <OSUnMapTbl+0x338>
    800058ac:	e406                	sd	ra,8(sp)
    800058ae:	cb1ff0ef          	jal	ra,8000555e <printf>
    800058b2:	a40ff0ef          	jal	ra,80004af2 <OSInit>
    800058b6:	46a9                	li	a3,10
    800058b8:	00081617          	auipc	a2,0x81
    800058bc:	f4860613          	addi	a2,a2,-184 # 80086800 <start_stk+0x3ff8>
    800058c0:	4581                	li	a1,0
    800058c2:	00000517          	auipc	a0,0x0
    800058c6:	f8650513          	addi	a0,a0,-122 # 80005848 <start_task>
    800058ca:	ff1fd0ef          	jal	ra,800038ba <OSTaskCreate>
    800058ce:	0007b517          	auipc	a0,0x7b
    800058d2:	a7a50513          	addi	a0,a0,-1414 # 80080348 <OSUnMapTbl+0x348>
    800058d6:	c89ff0ef          	jal	ra,8000555e <printf>
    800058da:	e67fa0ef          	jal	ra,80000740 <OSStart>
    800058de:	a001                	j	800058de <main+0x3c>
