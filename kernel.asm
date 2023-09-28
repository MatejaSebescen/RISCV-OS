
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	c3013103          	ld	sp,-976(sp) # 8000cc30 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2dc070ef          	jal	ra,800072f8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <interruptvec>:
interruptvec:

#break interruptvec
#break vector_table
#info r [register]
        addi sp, sp,-32
    80001000:	fe010113          	addi	sp,sp,-32
        sd a0, 0(sp)
    80001004:	00a13023          	sd	a0,0(sp)
        sd t0, 8(sp)
    80001008:	00513423          	sd	t0,8(sp)
        sd a5, 16(sp)
    8000100c:	00f13823          	sd	a5,16(sp)
        sd ra, 24(sp)
    80001010:	00113c23          	sd	ra,24(sp)
        call _ZN3PCB15getRunningStackEv
    80001014:	649000ef          	jal	ra,80001e5c <_ZN3PCB15getRunningStackEv>
                                                    #DVA STEKA
        mv t0, sp
    80001018:	00010293          	mv	t0,sp
        mv sp, a0
    8000101c:	00050113          	mv	sp,a0
        mv a0, t0
    80001020:	00028513          	mv	a0,t0
        call _ZN3PCB15setRunningStackEm
    80001024:	661000ef          	jal	ra,80001e84 <_ZN3PCB15setRunningStackEm>

        ld ra, 24(a0)
    80001028:	01853083          	ld	ra,24(a0) # 1018 <_entry-0x7fffefe8>
        ld a5, 16(a0)
    8000102c:	01053783          	ld	a5,16(a0)
        ld t0, 8(a0)
    80001030:	00853283          	ld	t0,8(a0)
        ld a0, 0(a0)
    80001034:	00053503          	ld	a0,0(a0)

        addi sp, sp, -248
    80001038:	f0810113          	addi	sp,sp,-248
        sd ra, 0(sp)
    8000103c:	00113023          	sd	ra,0(sp)
        sd sp, 8(sp)
    80001040:	00213423          	sd	sp,8(sp)
        sd gp, 16(sp)
    80001044:	00313823          	sd	gp,16(sp)
        sd tp, 24(sp)
    80001048:	00413c23          	sd	tp,24(sp)
        sd t0, 32(sp)
    8000104c:	02513023          	sd	t0,32(sp)
        sd t1, 40(sp)
    80001050:	02613423          	sd	t1,40(sp)
        sd t2, 48(sp)
    80001054:	02713823          	sd	t2,48(sp)
        sd s0, 56(sp)
    80001058:	02813c23          	sd	s0,56(sp)
        sd s1, 64(sp)
    8000105c:	04913023          	sd	s1,64(sp)
        sd a0, 72(sp)
    80001060:	04a13423          	sd	a0,72(sp)
        sd a1, 80(sp)
    80001064:	04b13823          	sd	a1,80(sp)
        sd a2, 88(sp)
    80001068:	04c13c23          	sd	a2,88(sp)
        sd a3, 96(sp)
    8000106c:	06d13023          	sd	a3,96(sp)
        sd a4, 104(sp)
    80001070:	06e13423          	sd	a4,104(sp)
        sd a5, 112(sp)
    80001074:	06f13823          	sd	a5,112(sp)
        sd a6, 120(sp)
    80001078:	07013c23          	sd	a6,120(sp)
        sd a7, 128(sp)
    8000107c:	09113023          	sd	a7,128(sp)
        sd s2, 136(sp)
    80001080:	09213423          	sd	s2,136(sp)
        sd s3, 144(sp)
    80001084:	09313823          	sd	s3,144(sp)
        sd s4, 152(sp)
    80001088:	09413c23          	sd	s4,152(sp)
        sd s5, 160(sp)
    8000108c:	0b513023          	sd	s5,160(sp)
        sd s6, 168(sp)
    80001090:	0b613423          	sd	s6,168(sp)
        sd s7, 176(sp)
    80001094:	0b713823          	sd	s7,176(sp)
        sd s8, 184(sp)
    80001098:	0b813c23          	sd	s8,184(sp)
        sd s9, 192(sp)
    8000109c:	0d913023          	sd	s9,192(sp)
        sd s10, 200(sp)
    800010a0:	0da13423          	sd	s10,200(sp)
        sd s11, 208(sp)
    800010a4:	0db13823          	sd	s11,208(sp)
        sd t3, 216(sp)
    800010a8:	0dc13c23          	sd	t3,216(sp)
        sd t4, 224(sp)
    800010ac:	0fd13023          	sd	t4,224(sp)
        sd t5, 232(sp)
    800010b0:	0fe13423          	sd	t5,232(sp)

00000000800010b4 <skip1>:
skip1:   sd t6, 240(sp)
    800010b4:	0ff13823          	sd	t6,240(sp)

        call interruptEcall
    800010b8:	281000ef          	jal	ra,80001b38 <interruptEcall>

        ld ra, 0(sp)
    800010bc:	00013083          	ld	ra,0(sp)
        ld sp, 8(sp)
    800010c0:	00813103          	ld	sp,8(sp)
        ld gp, 16(sp)
    800010c4:	01013183          	ld	gp,16(sp)
        ld tp, 24(sp)
    800010c8:	01813203          	ld	tp,24(sp)
        ld t0, 32(sp)
    800010cc:	02013283          	ld	t0,32(sp)
        ld t1, 40(sp)
    800010d0:	02813303          	ld	t1,40(sp)
        ld t2, 48(sp)
    800010d4:	03013383          	ld	t2,48(sp)
        ld s0, 56(sp)
    800010d8:	03813403          	ld	s0,56(sp)
        ld s1, 64(sp)
    800010dc:	04013483          	ld	s1,64(sp)
        ld a0, 72(sp)
    800010e0:	04813503          	ld	a0,72(sp)
        ld a1, 80(sp)
    800010e4:	05013583          	ld	a1,80(sp)
        ld a2, 88(sp)
    800010e8:	05813603          	ld	a2,88(sp)
        ld a3, 96(sp)
    800010ec:	06013683          	ld	a3,96(sp)
        ld a4, 104(sp)
    800010f0:	06813703          	ld	a4,104(sp)
        ld a5, 112(sp)
    800010f4:	07013783          	ld	a5,112(sp)
        ld a6, 120(sp)
    800010f8:	07813803          	ld	a6,120(sp)
        ld a7, 128(sp)
    800010fc:	08013883          	ld	a7,128(sp)
        ld s2, 136(sp)
    80001100:	08813903          	ld	s2,136(sp)
        ld s3, 144(sp)
    80001104:	09013983          	ld	s3,144(sp)
        ld s4, 152(sp)
    80001108:	09813a03          	ld	s4,152(sp)
        ld s5, 160(sp)
    8000110c:	0a013a83          	ld	s5,160(sp)
        ld s6, 168(sp)
    80001110:	0a813b03          	ld	s6,168(sp)
        ld s7, 176(sp)
    80001114:	0b013b83          	ld	s7,176(sp)
        ld s8, 184(sp)
    80001118:	0b813c03          	ld	s8,184(sp)
        ld s9, 192(sp)
    8000111c:	0c013c83          	ld	s9,192(sp)
        ld s10, 200(sp)
    80001120:	0c813d03          	ld	s10,200(sp)
        ld s11, 208(sp)
    80001124:	0d013d83          	ld	s11,208(sp)
        ld t3, 216(sp)
    80001128:	0d813e03          	ld	t3,216(sp)
        ld t4, 224(sp)
    8000112c:	0e013e83          	ld	t4,224(sp)
        ld t5, 232(sp)
    80001130:	0e813f03          	ld	t5,232(sp)
        ld t6, 240(sp)
    80001134:	0f013f83          	ld	t6,240(sp)

0000000080001138 <skip2>:
skip2:  addi sp, sp, 248
    80001138:	0f810113          	addi	sp,sp,248

        addi sp, sp,-32
    8000113c:	fe010113          	addi	sp,sp,-32
        sd a0, 0(sp)
    80001140:	00a13023          	sd	a0,0(sp)
        sd t0, 8(sp)
    80001144:	00513423          	sd	t0,8(sp)
        sd a5, 16(sp)
    80001148:	00f13823          	sd	a5,16(sp)
        sd ra, 24(sp)
    8000114c:	00113c23          	sd	ra,24(sp)
        call _ZN3PCB15getRunningStackEv
    80001150:	50d000ef          	jal	ra,80001e5c <_ZN3PCB15getRunningStackEv>

        mv t0, sp
    80001154:	00010293          	mv	t0,sp
        mv sp, a0
    80001158:	00050113          	mv	sp,a0
        mv a0, t0
    8000115c:	00028513          	mv	a0,t0

0000000080001160 <miss>:
   miss:     addi a0, a0, 32
    80001160:	02050513          	addi	a0,a0,32
        call _ZN3PCB15setRunningStackEm
    80001164:	521000ef          	jal	ra,80001e84 <_ZN3PCB15setRunningStackEm>
        addi a0, a0, -32
    80001168:	fe050513          	addi	a0,a0,-32

        ld ra, 24(a0)
    8000116c:	01853083          	ld	ra,24(a0)
        ld a5, 16(a0)
    80001170:	01053783          	ld	a5,16(a0)
        ld t0, 8(a0)
    80001174:	00853283          	ld	t0,8(a0)
        ld a0, 0(a0)
    80001178:	00053503          	ld	a0,0(a0)
        addi sp, sp, 32
    8000117c:	02010113          	addi	sp,sp,32

        sret
    80001180:	10200073          	sret

0000000080001184 <interrupt>:

interrupt:
        ret
    80001184:	00008067          	ret

0000000080001188 <vector_table>:
# word is 4 Bytes
.balign 4
vector_table:
    j interruptvec      #  Entry 0: Trap handler for exception code 0   ECALL
    80001188:	e79ff06f          	j	80001000 <interruptvec>
    j __timer           #  Entry 1: Trap handler for exception code 1   TIMER
    8000118c:	0240006f          	j	800011b0 <__timer>
    j interruptvec    #  Entry 2: Trap handler for exception code 2
    80001190:	e71ff06f          	j	80001000 <interruptvec>
    j interruptvec    #  Entry 3: Trap handler for exception code 3
    80001194:	e6dff06f          	j	80001000 <interruptvec>
    j interruptvec    #  Entry 4: Trap handler for exception code 4
    80001198:	e69ff06f          	j	80001000 <interruptvec>
    j interruptvec    #  Entry 5: Trap handler for exception code 5
    8000119c:	e65ff06f          	j	80001000 <interruptvec>
    j interruptvec    #  Entry 6: Trap handler for exception code 6
    800011a0:	e61ff06f          	j	80001000 <interruptvec>
    j interruptvec    #  Entry 7: Trap handler for exception code 7
    800011a4:	e5dff06f          	j	80001000 <interruptvec>
    j interruptvec    #  Entry 8: Trap handler for exception code 8
    800011a8:	e59ff06f          	j	80001000 <interruptvec>
    j trap_handler_0    #  Entry 9: Trap handler for exception code 9   KONZOLA
    800011ac:	1880006f          	j	80001334 <trap_handler_0>

00000000800011b0 <__timer>:

    # ... Continue with other trap handlers
.align 4
__timer:
        addi sp, sp,-32
    800011b0:	fe010113          	addi	sp,sp,-32
        sd a0, 0(sp)
    800011b4:	00a13023          	sd	a0,0(sp)
        sd t0, 8(sp)
    800011b8:	00513423          	sd	t0,8(sp)
        sd a5, 16(sp)
    800011bc:	00f13823          	sd	a5,16(sp)
        sd ra, 24(sp)
    800011c0:	00113c23          	sd	ra,24(sp)
        call _ZN3PCB15getRunningStackEv
    800011c4:	499000ef          	jal	ra,80001e5c <_ZN3PCB15getRunningStackEv>

        mv t0, sp
    800011c8:	00010293          	mv	t0,sp
        mv sp, a0
    800011cc:	00050113          	mv	sp,a0
        mv a0, t0
    800011d0:	00028513          	mv	a0,t0
        call _ZN3PCB15setRunningStackEm
    800011d4:	4b1000ef          	jal	ra,80001e84 <_ZN3PCB15setRunningStackEm>

        ld ra, 24(a0)
    800011d8:	01853083          	ld	ra,24(a0)
        ld a5, 16(a0)
    800011dc:	01053783          	ld	a5,16(a0)
        ld t0, 8(a0)
    800011e0:	00853283          	ld	t0,8(a0)
        ld a0, 0(a0)
    800011e4:	00053503          	ld	a0,0(a0)

        addi sp, sp, -248
    800011e8:	f0810113          	addi	sp,sp,-248
        sd ra, 0(sp)
    800011ec:	00113023          	sd	ra,0(sp)
        sd sp, 8(sp)
    800011f0:	00213423          	sd	sp,8(sp)
        sd gp, 16(sp)
    800011f4:	00313823          	sd	gp,16(sp)
        sd tp, 24(sp)
    800011f8:	00413c23          	sd	tp,24(sp)
        sd t0, 32(sp)
    800011fc:	02513023          	sd	t0,32(sp)
        sd t1, 40(sp)
    80001200:	02613423          	sd	t1,40(sp)
        sd t2, 48(sp)
    80001204:	02713823          	sd	t2,48(sp)
        sd s0, 56(sp)
    80001208:	02813c23          	sd	s0,56(sp)
        sd s1, 64(sp)
    8000120c:	04913023          	sd	s1,64(sp)
        sd a0, 72(sp)
    80001210:	04a13423          	sd	a0,72(sp)
        sd a1, 80(sp)
    80001214:	04b13823          	sd	a1,80(sp)
        sd a2, 88(sp)
    80001218:	04c13c23          	sd	a2,88(sp)
        sd a3, 96(sp)
    8000121c:	06d13023          	sd	a3,96(sp)
        sd a4, 104(sp)
    80001220:	06e13423          	sd	a4,104(sp)
        sd a5, 112(sp)
    80001224:	06f13823          	sd	a5,112(sp)
        sd a6, 120(sp)
    80001228:	07013c23          	sd	a6,120(sp)
        sd a7, 128(sp)
    8000122c:	09113023          	sd	a7,128(sp)
        sd s2, 136(sp)
    80001230:	09213423          	sd	s2,136(sp)
        sd s3, 144(sp)
    80001234:	09313823          	sd	s3,144(sp)
        sd s4, 152(sp)
    80001238:	09413c23          	sd	s4,152(sp)
        sd s5, 160(sp)
    8000123c:	0b513023          	sd	s5,160(sp)
        sd s6, 168(sp)
    80001240:	0b613423          	sd	s6,168(sp)
        sd s7, 176(sp)
    80001244:	0b713823          	sd	s7,176(sp)
        sd s8, 184(sp)
    80001248:	0b813c23          	sd	s8,184(sp)
        sd s9, 192(sp)
    8000124c:	0d913023          	sd	s9,192(sp)
        sd s10, 200(sp)
    80001250:	0da13423          	sd	s10,200(sp)
        sd s11, 208(sp)
    80001254:	0db13823          	sd	s11,208(sp)
        sd t3, 216(sp)
    80001258:	0dc13c23          	sd	t3,216(sp)
        sd t4, 224(sp)
    8000125c:	0fd13023          	sd	t4,224(sp)
        sd t5, 232(sp)
    80001260:	0fe13423          	sd	t5,232(sp)
        sd t6, 240(sp)
    80001264:	0ff13823          	sd	t6,240(sp)

        call timer
    80001268:	27d020ef          	jal	ra,80003ce4 <timer>

        ld ra, 0(sp)
    8000126c:	00013083          	ld	ra,0(sp)
        ld sp, 8(sp)
    80001270:	00813103          	ld	sp,8(sp)
        ld gp, 16(sp)
    80001274:	01013183          	ld	gp,16(sp)
        ld tp, 24(sp)
    80001278:	01813203          	ld	tp,24(sp)
        ld t0, 32(sp)
    8000127c:	02013283          	ld	t0,32(sp)
        ld t1, 40(sp)
    80001280:	02813303          	ld	t1,40(sp)
        ld t2, 48(sp)
    80001284:	03013383          	ld	t2,48(sp)
        ld s0, 56(sp)
    80001288:	03813403          	ld	s0,56(sp)
        ld s1, 64(sp)
    8000128c:	04013483          	ld	s1,64(sp)
        ld a0, 72(sp)
    80001290:	04813503          	ld	a0,72(sp)
        ld a1, 80(sp)
    80001294:	05013583          	ld	a1,80(sp)
        ld a2, 88(sp)
    80001298:	05813603          	ld	a2,88(sp)
        ld a3, 96(sp)
    8000129c:	06013683          	ld	a3,96(sp)
        ld a4, 104(sp)
    800012a0:	06813703          	ld	a4,104(sp)
        ld a5, 112(sp)
    800012a4:	07013783          	ld	a5,112(sp)
        ld a6, 120(sp)
    800012a8:	07813803          	ld	a6,120(sp)
        ld a7, 128(sp)
    800012ac:	08013883          	ld	a7,128(sp)
        ld s2, 136(sp)
    800012b0:	08813903          	ld	s2,136(sp)
        ld s3, 144(sp)
    800012b4:	09013983          	ld	s3,144(sp)
        ld s4, 152(sp)
    800012b8:	09813a03          	ld	s4,152(sp)
        ld s5, 160(sp)
    800012bc:	0a013a83          	ld	s5,160(sp)
        ld s6, 168(sp)
    800012c0:	0a813b03          	ld	s6,168(sp)
        ld s7, 176(sp)
    800012c4:	0b013b83          	ld	s7,176(sp)
        ld s8, 184(sp)
    800012c8:	0b813c03          	ld	s8,184(sp)
        ld s9, 192(sp)
    800012cc:	0c013c83          	ld	s9,192(sp)
        ld s10, 200(sp)
    800012d0:	0c813d03          	ld	s10,200(sp)
        ld s11, 208(sp)
    800012d4:	0d013d83          	ld	s11,208(sp)
        ld t3, 216(sp)
    800012d8:	0d813e03          	ld	t3,216(sp)
        ld t4, 224(sp)
    800012dc:	0e013e83          	ld	t4,224(sp)
        ld t5, 232(sp)
    800012e0:	0e813f03          	ld	t5,232(sp)
        ld t6, 240(sp)
    800012e4:	0f013f83          	ld	t6,240(sp)
        addi sp, sp, 248
    800012e8:	0f810113          	addi	sp,sp,248

        addi sp, sp,-32
    800012ec:	fe010113          	addi	sp,sp,-32
        sd a0, 0(sp)
    800012f0:	00a13023          	sd	a0,0(sp)
        sd t0, 8(sp)
    800012f4:	00513423          	sd	t0,8(sp)
        sd a5, 16(sp)
    800012f8:	00f13823          	sd	a5,16(sp)
        sd ra, 24(sp)
    800012fc:	00113c23          	sd	ra,24(sp)
        call _ZN3PCB15getRunningStackEv
    80001300:	35d000ef          	jal	ra,80001e5c <_ZN3PCB15getRunningStackEv>

        mv t0, sp
    80001304:	00010293          	mv	t0,sp
        mv sp, a0
    80001308:	00050113          	mv	sp,a0
        mv a0, t0
    8000130c:	00028513          	mv	a0,t0
        addi a0, a0, 32
    80001310:	02050513          	addi	a0,a0,32
        call _ZN3PCB15setRunningStackEm
    80001314:	371000ef          	jal	ra,80001e84 <_ZN3PCB15setRunningStackEm>
        addi a0, a0, -32
    80001318:	fe050513          	addi	a0,a0,-32

        ld ra, 24(a0)
    8000131c:	01853083          	ld	ra,24(a0)
        ld a5, 16(a0)
    80001320:	01053783          	ld	a5,16(a0)
        ld t0, 8(a0)
    80001324:	00853283          	ld	t0,8(a0)
        ld a0, 0(a0)
    80001328:	00053503          	ld	a0,0(a0)

000000008000132c <skip4>:
skip4:  addi sp, sp, 32
    8000132c:	02010113          	addi	sp,sp,32

        sret
    80001330:	10200073          	sret

0000000080001334 <trap_handler_0>:

trap_handler_0:

        addi sp, sp,-32
    80001334:	fe010113          	addi	sp,sp,-32
        sd a0, 0(sp)
    80001338:	00a13023          	sd	a0,0(sp)
        sd t0, 8(sp)
    8000133c:	00513423          	sd	t0,8(sp)
        sd a5, 16(sp)
    80001340:	00f13823          	sd	a5,16(sp)
        sd ra, 24(sp)
    80001344:	00113c23          	sd	ra,24(sp)
        call _ZN3PCB15getRunningStackEv
    80001348:	315000ef          	jal	ra,80001e5c <_ZN3PCB15getRunningStackEv>

        mv t0, sp
    8000134c:	00010293          	mv	t0,sp
        mv sp, a0
    80001350:	00050113          	mv	sp,a0
        mv a0, t0
    80001354:	00028513          	mv	a0,t0
        call _ZN3PCB15setRunningStackEm
    80001358:	32d000ef          	jal	ra,80001e84 <_ZN3PCB15setRunningStackEm>

        ld ra, 24(a0)
    8000135c:	01853083          	ld	ra,24(a0)
        ld a5, 16(a0)
    80001360:	01053783          	ld	a5,16(a0)
        ld t0, 8(a0)
    80001364:	00853283          	ld	t0,8(a0)
        ld a0, 0(a0)
    80001368:	00053503          	ld	a0,0(a0)

        addi sp, sp, -248
    8000136c:	f0810113          	addi	sp,sp,-248
        sd ra, 0(sp)
    80001370:	00113023          	sd	ra,0(sp)
        sd sp, 8(sp)
    80001374:	00213423          	sd	sp,8(sp)
        sd gp, 16(sp)
    80001378:	00313823          	sd	gp,16(sp)
        sd tp, 24(sp)
    8000137c:	00413c23          	sd	tp,24(sp)
        sd t0, 32(sp)
    80001380:	02513023          	sd	t0,32(sp)
        sd t1, 40(sp)
    80001384:	02613423          	sd	t1,40(sp)
        sd t2, 48(sp)
    80001388:	02713823          	sd	t2,48(sp)
        sd s0, 56(sp)
    8000138c:	02813c23          	sd	s0,56(sp)
        sd s1, 64(sp)
    80001390:	04913023          	sd	s1,64(sp)
        sd a0, 72(sp)
    80001394:	04a13423          	sd	a0,72(sp)
        sd a1, 80(sp)
    80001398:	04b13823          	sd	a1,80(sp)
        sd a2, 88(sp)
    8000139c:	04c13c23          	sd	a2,88(sp)
        sd a3, 96(sp)
    800013a0:	06d13023          	sd	a3,96(sp)
        sd a4, 104(sp)
    800013a4:	06e13423          	sd	a4,104(sp)
        sd a5, 112(sp)
    800013a8:	06f13823          	sd	a5,112(sp)
        sd a6, 120(sp)
    800013ac:	07013c23          	sd	a6,120(sp)
        sd a7, 128(sp)
    800013b0:	09113023          	sd	a7,128(sp)
        sd s2, 136(sp)
    800013b4:	09213423          	sd	s2,136(sp)
        sd s3, 144(sp)
    800013b8:	09313823          	sd	s3,144(sp)
        sd s4, 152(sp)
    800013bc:	09413c23          	sd	s4,152(sp)
        sd s5, 160(sp)
    800013c0:	0b513023          	sd	s5,160(sp)
        sd s6, 168(sp)
    800013c4:	0b613423          	sd	s6,168(sp)
        sd s7, 176(sp)
    800013c8:	0b713823          	sd	s7,176(sp)
        sd s8, 184(sp)
    800013cc:	0b813c23          	sd	s8,184(sp)
        sd s9, 192(sp)
    800013d0:	0d913023          	sd	s9,192(sp)
        sd s10, 200(sp)
    800013d4:	0da13423          	sd	s10,200(sp)
        sd s11, 208(sp)
    800013d8:	0db13823          	sd	s11,208(sp)
        sd t3, 216(sp)
    800013dc:	0dc13c23          	sd	t3,216(sp)
        sd t4, 224(sp)
    800013e0:	0fd13023          	sd	t4,224(sp)
        sd t5, 232(sp)
    800013e4:	0fe13423          	sd	t5,232(sp)
        sd t6, 240(sp)
    800013e8:	0ff13823          	sd	t6,240(sp)

        call consoleEcall
    800013ec:	181000ef          	jal	ra,80001d6c <consoleEcall>

        ld ra, 0(sp)
    800013f0:	00013083          	ld	ra,0(sp)
        ld sp, 8(sp)
    800013f4:	00813103          	ld	sp,8(sp)
        ld gp, 16(sp)
    800013f8:	01013183          	ld	gp,16(sp)
        ld tp, 24(sp)
    800013fc:	01813203          	ld	tp,24(sp)
        ld t0, 32(sp)
    80001400:	02013283          	ld	t0,32(sp)
        ld t1, 40(sp)
    80001404:	02813303          	ld	t1,40(sp)
        ld t2, 48(sp)
    80001408:	03013383          	ld	t2,48(sp)
        ld s0, 56(sp)
    8000140c:	03813403          	ld	s0,56(sp)
        ld s1, 64(sp)
    80001410:	04013483          	ld	s1,64(sp)
        ld a0, 72(sp)
    80001414:	04813503          	ld	a0,72(sp)
        ld a1, 80(sp)
    80001418:	05013583          	ld	a1,80(sp)
        ld a2, 88(sp)
    8000141c:	05813603          	ld	a2,88(sp)
        ld a3, 96(sp)
    80001420:	06013683          	ld	a3,96(sp)
        ld a4, 104(sp)
    80001424:	06813703          	ld	a4,104(sp)
        ld a5, 112(sp)
    80001428:	07013783          	ld	a5,112(sp)
        ld a6, 120(sp)
    8000142c:	07813803          	ld	a6,120(sp)
        ld a7, 128(sp)
    80001430:	08013883          	ld	a7,128(sp)
        ld s2, 136(sp)
    80001434:	08813903          	ld	s2,136(sp)
        ld s3, 144(sp)
    80001438:	09013983          	ld	s3,144(sp)
        ld s4, 152(sp)
    8000143c:	09813a03          	ld	s4,152(sp)
        ld s5, 160(sp)
    80001440:	0a013a83          	ld	s5,160(sp)
        ld s6, 168(sp)
    80001444:	0a813b03          	ld	s6,168(sp)
        ld s7, 176(sp)
    80001448:	0b013b83          	ld	s7,176(sp)
        ld s8, 184(sp)
    8000144c:	0b813c03          	ld	s8,184(sp)
        ld s9, 192(sp)
    80001450:	0c013c83          	ld	s9,192(sp)
        ld s10, 200(sp)
    80001454:	0c813d03          	ld	s10,200(sp)
        ld s11, 208(sp)
    80001458:	0d013d83          	ld	s11,208(sp)
        ld t3, 216(sp)
    8000145c:	0d813e03          	ld	t3,216(sp)
        ld t4, 224(sp)
    80001460:	0e013e83          	ld	t4,224(sp)
        ld t5, 232(sp)
    80001464:	0e813f03          	ld	t5,232(sp)
        ld t6, 240(sp)
    80001468:	0f013f83          	ld	t6,240(sp)
        addi sp, sp, 248
    8000146c:	0f810113          	addi	sp,sp,248

        addi sp, sp,-32
    80001470:	fe010113          	addi	sp,sp,-32
        sd a0, 0(sp)
    80001474:	00a13023          	sd	a0,0(sp)
        sd t0, 8(sp)
    80001478:	00513423          	sd	t0,8(sp)
        sd a5, 16(sp)
    8000147c:	00f13823          	sd	a5,16(sp)
        sd ra, 24(sp)
    80001480:	00113c23          	sd	ra,24(sp)
        call _ZN3PCB15getRunningStackEv
    80001484:	1d9000ef          	jal	ra,80001e5c <_ZN3PCB15getRunningStackEv>

        mv t0, sp
    80001488:	00010293          	mv	t0,sp
        mv sp, a0
    8000148c:	00050113          	mv	sp,a0
        mv a0, t0
    80001490:	00028513          	mv	a0,t0
        addi a0, a0, 32
    80001494:	02050513          	addi	a0,a0,32
        call _ZN3PCB15setRunningStackEm
    80001498:	1ed000ef          	jal	ra,80001e84 <_ZN3PCB15setRunningStackEm>
        addi a0, a0, -32
    8000149c:	fe050513          	addi	a0,a0,-32

        ld ra, 24(a0)
    800014a0:	01853083          	ld	ra,24(a0)
        ld a5, 16(a0)
    800014a4:	01053783          	ld	a5,16(a0)
        ld t0, 8(a0)
    800014a8:	00853283          	ld	t0,8(a0)
        ld a0, 0(a0)
    800014ac:	00053503          	ld	a0,0(a0)
        addi sp, sp, 32
    800014b0:	02010113          	addi	sp,sp,32


        sret
    800014b4:	10200073          	sret

00000000800014b8 <changeVT>:


changeVT:
        la t0, vector_table
    800014b8:	00000297          	auipc	t0,0x0
    800014bc:	cd028293          	addi	t0,t0,-816 # 80001188 <vector_table>
        addi t0,t0,1
    800014c0:	00128293          	addi	t0,t0,1
        csrw stvec, t0
    800014c4:	10529073          	csrw	stvec,t0
    800014c8:	00008067          	ret
    800014cc:	0000                	unimp
	...

00000000800014d0 <_ZN3PCB13contextSwitchEPmS0_>:
.globl _ZN3PCB13contextSwitchEPmS0_
.type _ZN3PCB13contextSwitchEPmS0_, @function
.align 4
_ZN3PCB13contextSwitchEPmS0_:
        sd ra, 0(a0)
    800014d0:	00153023          	sd	ra,0(a0)
        sd sp, 8(a0)
    800014d4:	00253423          	sd	sp,8(a0)
        sd gp, 16(a0)
    800014d8:	00353823          	sd	gp,16(a0)
        sd tp, 24(a0)
    800014dc:	00453c23          	sd	tp,24(a0)
        sd t0, 32(a0)
    800014e0:	02553023          	sd	t0,32(a0)
        sd t1, 40(a0)
    800014e4:	02653423          	sd	t1,40(a0)
        sd t2, 48(a0)
    800014e8:	02753823          	sd	t2,48(a0)
        sd s0, 56(a0)
    800014ec:	02853c23          	sd	s0,56(a0)
        sd s1, 64(a0)
    800014f0:	04953023          	sd	s1,64(a0)
        sd a0, 72(a0)
    800014f4:	04a53423          	sd	a0,72(a0)
        sd a1, 80(a0)
    800014f8:	04b53823          	sd	a1,80(a0)
        sd a2, 88(a0)
    800014fc:	04c53c23          	sd	a2,88(a0)
        sd a3, 96(a0)
    80001500:	06d53023          	sd	a3,96(a0)
        sd a4, 104(a0)
    80001504:	06e53423          	sd	a4,104(a0)
        sd a5, 112(a0)
    80001508:	06f53823          	sd	a5,112(a0)
        sd a6, 120(a0)
    8000150c:	07053c23          	sd	a6,120(a0)
        sd a7, 128(a0)
    80001510:	09153023          	sd	a7,128(a0)
        sd s2, 136(a0)
    80001514:	09253423          	sd	s2,136(a0)
        sd s3, 144(a0)
    80001518:	09353823          	sd	s3,144(a0)
        sd s4, 152(a0)
    8000151c:	09453c23          	sd	s4,152(a0)
        sd s5, 160(a0)
    80001520:	0b553023          	sd	s5,160(a0)
        sd s6, 168(a0)
    80001524:	0b653423          	sd	s6,168(a0)
        sd s7, 176(a0)
    80001528:	0b753823          	sd	s7,176(a0)
        sd s8, 184(a0)
    8000152c:	0b853c23          	sd	s8,184(a0)
        sd s9, 192(a0)
    80001530:	0d953023          	sd	s9,192(a0)
        sd s10, 200(a0)
    80001534:	0da53423          	sd	s10,200(a0)
        sd s11, 208(a0)
    80001538:	0db53823          	sd	s11,208(a0)
        sd t3, 216(a0)
    8000153c:	0dc53c23          	sd	t3,216(a0)
        sd t4, 224(a0)
    80001540:	0fd53023          	sd	t4,224(a0)
        sd t5, 232(a0)
    80001544:	0fe53423          	sd	t5,232(a0)
        sd t6, 240(a0)
    80001548:	0ff53823          	sd	t6,240(a0)

        ld ra, 0(a1)
    8000154c:	0005b083          	ld	ra,0(a1)
        ld sp, 8(a1)
    80001550:	0085b103          	ld	sp,8(a1)
        ld gp, 16(a1)
    80001554:	0105b183          	ld	gp,16(a1)
        ld tp, 24(a1)
    80001558:	0185b203          	ld	tp,24(a1)
        ld t0, 32(a1)
    8000155c:	0205b283          	ld	t0,32(a1)
        ld t1, 40(a1)
    80001560:	0285b303          	ld	t1,40(a1)
        ld t2, 48(a1)
    80001564:	0305b383          	ld	t2,48(a1)
        ld s0, 56(a1)
    80001568:	0385b403          	ld	s0,56(a1)
        ld s1, 64(a1)
    8000156c:	0405b483          	ld	s1,64(a1)
        ld a0, 72(a1)
    80001570:	0485b503          	ld	a0,72(a1)
        ld a2, 88(a1)
    80001574:	0585b603          	ld	a2,88(a1)
        ld a3, 96(a1)
    80001578:	0605b683          	ld	a3,96(a1)
        ld a4, 104(a1)
    8000157c:	0685b703          	ld	a4,104(a1)
        ld a5, 112(a1)
    80001580:	0705b783          	ld	a5,112(a1)
        ld a6, 120(a1)
    80001584:	0785b803          	ld	a6,120(a1)
        ld a7, 128(a1)
    80001588:	0805b883          	ld	a7,128(a1)
        ld s2, 136(a1)
    8000158c:	0885b903          	ld	s2,136(a1)
        ld s3, 144(a1)
    80001590:	0905b983          	ld	s3,144(a1)
        ld s4, 152(a1)
    80001594:	0985ba03          	ld	s4,152(a1)
        ld s5, 160(a1)
    80001598:	0a05ba83          	ld	s5,160(a1)
        ld s6, 168(a1)
    8000159c:	0a85bb03          	ld	s6,168(a1)
        ld s7, 176(a1)
    800015a0:	0b05bb83          	ld	s7,176(a1)
        ld s8, 184(a1)
    800015a4:	0b85bc03          	ld	s8,184(a1)
        ld s9, 192(a1)
    800015a8:	0c05bc83          	ld	s9,192(a1)
        ld s10, 200(a1)
    800015ac:	0c85bd03          	ld	s10,200(a1)
        ld s11, 208(a1)
    800015b0:	0d05bd83          	ld	s11,208(a1)
        ld t3, 216(a1)
    800015b4:	0d85be03          	ld	t3,216(a1)
        ld t4, 224(a1)
    800015b8:	0e05be83          	ld	t4,224(a1)
        ld t5, 232(a1)
    800015bc:	0e85bf03          	ld	t5,232(a1)

00000000800015c0 <skip3>:
skip3:  ld t6, 240(a1)
    800015c0:	0f05bf83          	ld	t6,240(a1)
        ld a1, 80(a1)
    800015c4:	0505b583          	ld	a1,80(a1)

    800015c8:	00008067          	ret
	...

00000000800015d4 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800015d4:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800015d8:	00b29a63          	bne	t0,a1,800015ec <fail>
    sc.w t0, a2, (a0)      # Try to update.
    800015dc:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    800015e0:	fe029ae3          	bnez	t0,800015d4 <copy_and_swap>
    li a0, 0               # Set return to success.
    800015e4:	00000513          	li	a0,0
    jr ra                  # Return.
    800015e8:	00008067          	ret

00000000800015ec <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800015ec:	00100513          	li	a0,1
    800015f0:	00008067          	ret

00000000800015f4 <mem_allocWrapper>:

void* mem_alloc (size_t size){
    size_t blockSize = BytesToBlock(size);
    return (char*) mem_allocWrapper(MEM_ALLOC, blockSize);
}
void* mem_allocWrapper(uint64 name,size_t size){
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80001600:	00000073          	ecall
    void* result;
    asm volatile("mv %0, a0" : "=r" (result));
    80001604:	00050513          	mv	a0,a0
    return result;
}
    80001608:	00813403          	ld	s0,8(sp)
    8000160c:	01010113          	addi	sp,sp,16
    80001610:	00008067          	ret

0000000080001614 <BytesToBlock>:

size_t BytesToBlock(size_t size){
    80001614:	ff010113          	addi	sp,sp,-16
    80001618:	00813423          	sd	s0,8(sp)
    8000161c:	01010413          	addi	s0,sp,16
    size_t sz = sizeof(uint64*)*2 + sizeof(size_t);
    return ((size+sz) % MEM_BLOCK_SIZE == 0) ? (size+sz) / MEM_BLOCK_SIZE :
    80001620:	01850513          	addi	a0,a0,24
    80001624:	03f57793          	andi	a5,a0,63
    80001628:	00079a63          	bnez	a5,8000163c <BytesToBlock+0x28>
    8000162c:	00655513          	srli	a0,a0,0x6
           (size+sz) / MEM_BLOCK_SIZE + 1;
}
    80001630:	00813403          	ld	s0,8(sp)
    80001634:	01010113          	addi	sp,sp,16
    80001638:	00008067          	ret
           (size+sz) / MEM_BLOCK_SIZE + 1;
    8000163c:	00655513          	srli	a0,a0,0x6
    return ((size+sz) % MEM_BLOCK_SIZE == 0) ? (size+sz) / MEM_BLOCK_SIZE :
    80001640:	00150513          	addi	a0,a0,1
    80001644:	fedff06f          	j	80001630 <BytesToBlock+0x1c>

0000000080001648 <mem_alloc>:
void* mem_alloc (size_t size){
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00113423          	sd	ra,8(sp)
    80001650:	00813023          	sd	s0,0(sp)
    80001654:	01010413          	addi	s0,sp,16
    size_t blockSize = BytesToBlock(size);
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	fbc080e7          	jalr	-68(ra) # 80001614 <BytesToBlock>
    80001660:	00050593          	mv	a1,a0
    return (char*) mem_allocWrapper(MEM_ALLOC, blockSize);
    80001664:	00100513          	li	a0,1
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	f8c080e7          	jalr	-116(ra) # 800015f4 <mem_allocWrapper>
}
    80001670:	00813083          	ld	ra,8(sp)
    80001674:	00013403          	ld	s0,0(sp)
    80001678:	01010113          	addi	sp,sp,16
    8000167c:	00008067          	ret

0000000080001680 <mem_freeWrapper>:

int mem_free(void* address){
    return mem_freeWrapper(MEM_FREE, address);
}

int mem_freeWrapper(uint64 name, void* address){
    80001680:	ff010113          	addi	sp,sp,-16
    80001684:	00813423          	sd	s0,8(sp)
    80001688:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    8000168c:	00000073          	ecall
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    80001690:	00050513          	mv	a0,a0
    return result;
}
    80001694:	0005051b          	sext.w	a0,a0
    80001698:	00813403          	ld	s0,8(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <mem_free>:
int mem_free(void* address){
    800016a4:	ff010113          	addi	sp,sp,-16
    800016a8:	00113423          	sd	ra,8(sp)
    800016ac:	00813023          	sd	s0,0(sp)
    800016b0:	01010413          	addi	s0,sp,16
    800016b4:	00050593          	mv	a1,a0
    return mem_freeWrapper(MEM_FREE, address);
    800016b8:	00200513          	li	a0,2
    800016bc:	00000097          	auipc	ra,0x0
    800016c0:	fc4080e7          	jalr	-60(ra) # 80001680 <mem_freeWrapper>
}
    800016c4:	00813083          	ld	ra,8(sp)
    800016c8:	00013403          	ld	s0,0(sp)
    800016cc:	01010113          	addi	sp,sp,16
    800016d0:	00008067          	ret

00000000800016d4 <thread_createWrapper>:
    }
    return thread_createWrapper(THREAD_CREATE, handle, start_routine, arg, sp);
}

int thread_createWrapper(uint64 name, thread_t* handle,
                         void(*start_routine)(void*), void* arg, uint64* sp){
    800016d4:	ff010113          	addi	sp,sp,-16
    800016d8:	00813423          	sd	s0,8(sp)
    800016dc:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    800016e0:	00000073          	ecall
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    800016e4:	00050513          	mv	a0,a0
    return result;
}
    800016e8:	0005051b          	sext.w	a0,a0
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <thread_create>:
){
    800016f8:	fd010113          	addi	sp,sp,-48
    800016fc:	02113423          	sd	ra,40(sp)
    80001700:	02813023          	sd	s0,32(sp)
    80001704:	00913c23          	sd	s1,24(sp)
    80001708:	01213823          	sd	s2,16(sp)
    8000170c:	01313423          	sd	s3,8(sp)
    80001710:	03010413          	addi	s0,sp,48
    80001714:	00050493          	mv	s1,a0
    80001718:	00058913          	mv	s2,a1
    8000171c:	00060993          	mv	s3,a2
    uint64* sp = (uint64*) mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    80001720:	00008537          	lui	a0,0x8
    80001724:	00000097          	auipc	ra,0x0
    80001728:	f24080e7          	jalr	-220(ra) # 80001648 <mem_alloc>
    if(!sp){
    8000172c:	02050e63          	beqz	a0,80001768 <thread_create+0x70>
    80001730:	00050713          	mv	a4,a0
    return thread_createWrapper(THREAD_CREATE, handle, start_routine, arg, sp);
    80001734:	00098693          	mv	a3,s3
    80001738:	00090613          	mv	a2,s2
    8000173c:	00048593          	mv	a1,s1
    80001740:	01100513          	li	a0,17
    80001744:	00000097          	auipc	ra,0x0
    80001748:	f90080e7          	jalr	-112(ra) # 800016d4 <thread_createWrapper>
}
    8000174c:	02813083          	ld	ra,40(sp)
    80001750:	02013403          	ld	s0,32(sp)
    80001754:	01813483          	ld	s1,24(sp)
    80001758:	01013903          	ld	s2,16(sp)
    8000175c:	00813983          	ld	s3,8(sp)
    80001760:	03010113          	addi	sp,sp,48
    80001764:	00008067          	ret
        return -1;
    80001768:	fff00513          	li	a0,-1
    8000176c:	fe1ff06f          	j	8000174c <thread_create+0x54>

0000000080001770 <thread_exitWrapper>:

int thread_exit (){
    return thread_exitWrapper(THREAD_EXIT);
}

int thread_exitWrapper(uint64 name) {
    80001770:	ff010113          	addi	sp,sp,-16
    80001774:	00813423          	sd	s0,8(sp)
    80001778:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    8000177c:	00000073          	ecall
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    80001780:	00050513          	mv	a0,a0
    return result;
}
    80001784:	0005051b          	sext.w	a0,a0
    80001788:	00813403          	ld	s0,8(sp)
    8000178c:	01010113          	addi	sp,sp,16
    80001790:	00008067          	ret

0000000080001794 <thread_exit>:
int thread_exit (){
    80001794:	ff010113          	addi	sp,sp,-16
    80001798:	00113423          	sd	ra,8(sp)
    8000179c:	00813023          	sd	s0,0(sp)
    800017a0:	01010413          	addi	s0,sp,16
    return thread_exitWrapper(THREAD_EXIT);
    800017a4:	01200513          	li	a0,18
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	fc8080e7          	jalr	-56(ra) # 80001770 <thread_exitWrapper>
}
    800017b0:	00813083          	ld	ra,8(sp)
    800017b4:	00013403          	ld	s0,0(sp)
    800017b8:	01010113          	addi	sp,sp,16
    800017bc:	00008067          	ret

00000000800017c0 <thread_dispatchWrapper>:

void thread_dispatch(){
    thread_dispatchWrapper(THREAD_DISPATCH);
}
void thread_dispatchWrapper(uint64 name){
    800017c0:	ff010113          	addi	sp,sp,-16
    800017c4:	00813423          	sd	s0,8(sp)
    800017c8:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    800017cc:	00000073          	ecall
}
    800017d0:	00813403          	ld	s0,8(sp)
    800017d4:	01010113          	addi	sp,sp,16
    800017d8:	00008067          	ret

00000000800017dc <thread_dispatch>:
void thread_dispatch(){
    800017dc:	ff010113          	addi	sp,sp,-16
    800017e0:	00113423          	sd	ra,8(sp)
    800017e4:	00813023          	sd	s0,0(sp)
    800017e8:	01010413          	addi	s0,sp,16
    thread_dispatchWrapper(THREAD_DISPATCH);
    800017ec:	01300513          	li	a0,19
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	fd0080e7          	jalr	-48(ra) # 800017c0 <thread_dispatchWrapper>
}
    800017f8:	00813083          	ld	ra,8(sp)
    800017fc:	00013403          	ld	s0,0(sp)
    80001800:	01010113          	addi	sp,sp,16
    80001804:	00008067          	ret

0000000080001808 <thread_startWrapper>:

int thread_start(thread_t handle){
    return thread_startWrapper(THREAD_START, handle);
}
int thread_startWrapper(uint64 name, thread_t handle){
    80001808:	ff010113          	addi	sp,sp,-16
    8000180c:	00813423          	sd	s0,8(sp)
    80001810:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80001814:	00000073          	ecall
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    80001818:	00050513          	mv	a0,a0
    return result;
}
    8000181c:	0005051b          	sext.w	a0,a0
    80001820:	00813403          	ld	s0,8(sp)
    80001824:	01010113          	addi	sp,sp,16
    80001828:	00008067          	ret

000000008000182c <thread_start>:
int thread_start(thread_t handle){
    8000182c:	ff010113          	addi	sp,sp,-16
    80001830:	00113423          	sd	ra,8(sp)
    80001834:	00813023          	sd	s0,0(sp)
    80001838:	01010413          	addi	s0,sp,16
    8000183c:	00050593          	mv	a1,a0
    return thread_startWrapper(THREAD_START, handle);
    80001840:	01500513          	li	a0,21
    80001844:	00000097          	auipc	ra,0x0
    80001848:	fc4080e7          	jalr	-60(ra) # 80001808 <thread_startWrapper>
}
    8000184c:	00813083          	ld	ra,8(sp)
    80001850:	00013403          	ld	s0,0(sp)
    80001854:	01010113          	addi	sp,sp,16
    80001858:	00008067          	ret

000000008000185c <thread_joinWrapper>:

void thread_join(thread_t handle){
    thread_joinWrapper(THREAD_JOIN, handle);
}
void thread_joinWrapper(uint64 name, thread_t handle){
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00813423          	sd	s0,8(sp)
    80001864:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80001868:	00000073          	ecall
}
    8000186c:	00813403          	ld	s0,8(sp)
    80001870:	01010113          	addi	sp,sp,16
    80001874:	00008067          	ret

0000000080001878 <thread_join>:
void thread_join(thread_t handle){
    80001878:	ff010113          	addi	sp,sp,-16
    8000187c:	00113423          	sd	ra,8(sp)
    80001880:	00813023          	sd	s0,0(sp)
    80001884:	01010413          	addi	s0,sp,16
    80001888:	00050593          	mv	a1,a0
    thread_joinWrapper(THREAD_JOIN, handle);
    8000188c:	01400513          	li	a0,20
    80001890:	00000097          	auipc	ra,0x0
    80001894:	fcc080e7          	jalr	-52(ra) # 8000185c <thread_joinWrapper>
}
    80001898:	00813083          	ld	ra,8(sp)
    8000189c:	00013403          	ld	s0,0(sp)
    800018a0:	01010113          	addi	sp,sp,16
    800018a4:	00008067          	ret

00000000800018a8 <deleteThreadWrapper>:

void deleteThread(thread_t handle){
    deleteThreadWrapper(THREAD_CLOSE, handle);
}
void deleteThreadWrapper(uint64 name, thread_t handle){
    800018a8:	ff010113          	addi	sp,sp,-16
    800018ac:	00813423          	sd	s0,8(sp)
    800018b0:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    800018b4:	00000073          	ecall
}
    800018b8:	00813403          	ld	s0,8(sp)
    800018bc:	01010113          	addi	sp,sp,16
    800018c0:	00008067          	ret

00000000800018c4 <deleteThread>:
void deleteThread(thread_t handle){
    800018c4:	ff010113          	addi	sp,sp,-16
    800018c8:	00113423          	sd	ra,8(sp)
    800018cc:	00813023          	sd	s0,0(sp)
    800018d0:	01010413          	addi	s0,sp,16
    800018d4:	00050593          	mv	a1,a0
    deleteThreadWrapper(THREAD_CLOSE, handle);
    800018d8:	01600513          	li	a0,22
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	fcc080e7          	jalr	-52(ra) # 800018a8 <deleteThreadWrapper>
}
    800018e4:	00813083          	ld	ra,8(sp)
    800018e8:	00013403          	ld	s0,0(sp)
    800018ec:	01010113          	addi	sp,sp,16
    800018f0:	00008067          	ret

00000000800018f4 <sem_openWrapper>:

int sem_open (sem_t* handle,unsigned init){
    return sem_openWrapper(SEM_OPEN, handle, init);
}
int sem_openWrapper(uint64 name, sem_t* handle, unsigned init){
    800018f4:	ff010113          	addi	sp,sp,-16
    800018f8:	00813423          	sd	s0,8(sp)
    800018fc:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80001900:	00000073          	ecall
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    80001904:	00050513          	mv	a0,a0
    return result;
}
    80001908:	0005051b          	sext.w	a0,a0
    8000190c:	00813403          	ld	s0,8(sp)
    80001910:	01010113          	addi	sp,sp,16
    80001914:	00008067          	ret

0000000080001918 <sem_open>:
int sem_open (sem_t* handle,unsigned init){
    80001918:	ff010113          	addi	sp,sp,-16
    8000191c:	00113423          	sd	ra,8(sp)
    80001920:	00813023          	sd	s0,0(sp)
    80001924:	01010413          	addi	s0,sp,16
    80001928:	00058613          	mv	a2,a1
    return sem_openWrapper(SEM_OPEN, handle, init);
    8000192c:	00050593          	mv	a1,a0
    80001930:	02100513          	li	a0,33
    80001934:	00000097          	auipc	ra,0x0
    80001938:	fc0080e7          	jalr	-64(ra) # 800018f4 <sem_openWrapper>
}
    8000193c:	00813083          	ld	ra,8(sp)
    80001940:	00013403          	ld	s0,0(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret

000000008000194c <sem_closeWrapper>:

int sem_close (sem_t handle){
    return sem_closeWrapper(SEM_CLOSE, handle);
}
int sem_closeWrapper (uint64 name,sem_t handle){
    8000194c:	ff010113          	addi	sp,sp,-16
    80001950:	00813423          	sd	s0,8(sp)
    80001954:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80001958:	00000073          	ecall
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    8000195c:	00050513          	mv	a0,a0
    return result;
}
    80001960:	0005051b          	sext.w	a0,a0
    80001964:	00813403          	ld	s0,8(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00008067          	ret

0000000080001970 <sem_close>:
int sem_close (sem_t handle){
    80001970:	ff010113          	addi	sp,sp,-16
    80001974:	00113423          	sd	ra,8(sp)
    80001978:	00813023          	sd	s0,0(sp)
    8000197c:	01010413          	addi	s0,sp,16
    80001980:	00050593          	mv	a1,a0
    return sem_closeWrapper(SEM_CLOSE, handle);
    80001984:	02200513          	li	a0,34
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	fc4080e7          	jalr	-60(ra) # 8000194c <sem_closeWrapper>
}
    80001990:	00813083          	ld	ra,8(sp)
    80001994:	00013403          	ld	s0,0(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret

00000000800019a0 <sem_waitWrapper>:

int sem_wait (sem_t id){
    return sem_waitWrapper(SEM_WAIT, id);
}
int sem_waitWrapper(uint64 name,sem_t id){
    800019a0:	ff010113          	addi	sp,sp,-16
    800019a4:	00813423          	sd	s0,8(sp)
    800019a8:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    800019ac:	00000073          	ecall
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    800019b0:	00050513          	mv	a0,a0
    return result;
}
    800019b4:	0005051b          	sext.w	a0,a0
    800019b8:	00813403          	ld	s0,8(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret

00000000800019c4 <sem_wait>:
int sem_wait (sem_t id){
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	00813023          	sd	s0,0(sp)
    800019d0:	01010413          	addi	s0,sp,16
    800019d4:	00050593          	mv	a1,a0
    return sem_waitWrapper(SEM_WAIT, id);
    800019d8:	02300513          	li	a0,35
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	fc4080e7          	jalr	-60(ra) # 800019a0 <sem_waitWrapper>
}
    800019e4:	00813083          	ld	ra,8(sp)
    800019e8:	00013403          	ld	s0,0(sp)
    800019ec:	01010113          	addi	sp,sp,16
    800019f0:	00008067          	ret

00000000800019f4 <sem_signalWrapper>:

int sem_signal (sem_t id){
    return sem_signalWrapper(SEM_SIGNAL, id);
}
int sem_signalWrapper (uint64 name,sem_t id){
    800019f4:	ff010113          	addi	sp,sp,-16
    800019f8:	00813423          	sd	s0,8(sp)
    800019fc:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80001a00:	00000073          	ecall
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    80001a04:	00050513          	mv	a0,a0
    return result;
}
    80001a08:	0005051b          	sext.w	a0,a0
    80001a0c:	00813403          	ld	s0,8(sp)
    80001a10:	01010113          	addi	sp,sp,16
    80001a14:	00008067          	ret

0000000080001a18 <sem_signal>:
int sem_signal (sem_t id){
    80001a18:	ff010113          	addi	sp,sp,-16
    80001a1c:	00113423          	sd	ra,8(sp)
    80001a20:	00813023          	sd	s0,0(sp)
    80001a24:	01010413          	addi	s0,sp,16
    80001a28:	00050593          	mv	a1,a0
    return sem_signalWrapper(SEM_SIGNAL, id);
    80001a2c:	02400513          	li	a0,36
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	fc4080e7          	jalr	-60(ra) # 800019f4 <sem_signalWrapper>
}
    80001a38:	00813083          	ld	ra,8(sp)
    80001a3c:	00013403          	ld	s0,0(sp)
    80001a40:	01010113          	addi	sp,sp,16
    80001a44:	00008067          	ret

0000000080001a48 <time_sleepWrapper>:

int time_sleep (time_t t){
    return time_sleepWrapper(TIME_SLEEP, t);
}
int time_sleepWrapper (uint64 name, time_t t){
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00813423          	sd	s0,8(sp)
    80001a50:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80001a54:	00000073          	ecall
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    80001a58:	00050513          	mv	a0,a0
    return result;
}
    80001a5c:	0005051b          	sext.w	a0,a0
    80001a60:	00813403          	ld	s0,8(sp)
    80001a64:	01010113          	addi	sp,sp,16
    80001a68:	00008067          	ret

0000000080001a6c <time_sleep>:
int time_sleep (time_t t){
    80001a6c:	ff010113          	addi	sp,sp,-16
    80001a70:	00113423          	sd	ra,8(sp)
    80001a74:	00813023          	sd	s0,0(sp)
    80001a78:	01010413          	addi	s0,sp,16
    80001a7c:	00050593          	mv	a1,a0
    return time_sleepWrapper(TIME_SLEEP, t);
    80001a80:	03100513          	li	a0,49
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	fc4080e7          	jalr	-60(ra) # 80001a48 <time_sleepWrapper>
}
    80001a8c:	00813083          	ld	ra,8(sp)
    80001a90:	00013403          	ld	s0,0(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <getcWrapper>:

char getc (){
    return getcWrapper(GETC_SIGNAL);
}
char getcWrapper (uint64 name){
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00813423          	sd	s0,8(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80001aa8:	00000073          	ecall
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    80001aac:	00050513          	mv	a0,a0
    return result;
}
    80001ab0:	0ff57513          	andi	a0,a0,255
    80001ab4:	00813403          	ld	s0,8(sp)
    80001ab8:	01010113          	addi	sp,sp,16
    80001abc:	00008067          	ret

0000000080001ac0 <getc>:
char getc (){
    80001ac0:	ff010113          	addi	sp,sp,-16
    80001ac4:	00113423          	sd	ra,8(sp)
    80001ac8:	00813023          	sd	s0,0(sp)
    80001acc:	01010413          	addi	s0,sp,16
    return getcWrapper(GETC_SIGNAL);
    80001ad0:	04100513          	li	a0,65
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	fc8080e7          	jalr	-56(ra) # 80001a9c <getcWrapper>
}
    80001adc:	00813083          	ld	ra,8(sp)
    80001ae0:	00013403          	ld	s0,0(sp)
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00008067          	ret

0000000080001aec <putcWrapper>:

void putc (char c){
    putcWrapper(PUTC_SIGNAL,c);
}
void putcWrapper (uint64 name, char c){
    80001aec:	ff010113          	addi	sp,sp,-16
    80001af0:	00813423          	sd	s0,8(sp)
    80001af4:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80001af8:	00000073          	ecall
}
    80001afc:	00813403          	ld	s0,8(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret

0000000080001b08 <putc>:
void putc (char c){
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00113423          	sd	ra,8(sp)
    80001b10:	00813023          	sd	s0,0(sp)
    80001b14:	01010413          	addi	s0,sp,16
    80001b18:	00050593          	mv	a1,a0
    putcWrapper(PUTC_SIGNAL,c);
    80001b1c:	04200513          	li	a0,66
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	fcc080e7          	jalr	-52(ra) # 80001aec <putcWrapper>
}
    80001b28:	00813083          	ld	ra,8(sp)
    80001b2c:	00013403          	ld	s0,0(sp)
    80001b30:	01010113          	addi	sp,sp,16
    80001b34:	00008067          	ret

0000000080001b38 <interruptEcall>:
#include "../h/Kernel.hpp"
#include "../lib/hw.h"

typedef void (*start_routine)(void*);

extern "C" void interruptEcall(){
    80001b38:	fd010113          	addi	sp,sp,-48
    80001b3c:	02113423          	sd	ra,40(sp)
    80001b40:	02813023          	sd	s0,32(sp)
    80001b44:	00913c23          	sd	s1,24(sp)
    80001b48:	01213823          	sd	s2,16(sp)
    80001b4c:	01313423          	sd	s3,8(sp)
    80001b50:	03010413          	addi	s0,sp,48
    uint64 scause;

    asm volatile(
            "csrr %0, scause"
            : "=r" (scause)
            );
    80001b54:	142027f3          	csrr	a5,scause
    asm volatile(
            "mv %0, a0"
            : "=r" (caller)
            );
    80001b58:	00050493          	mv	s1,a0
    switch (scause) {
    80001b5c:	00500713          	li	a4,5
    80001b60:	06e78063          	beq	a5,a4,80001bc0 <interruptEcall+0x88>
    80001b64:	00700713          	li	a4,7
    80001b68:	06e78663          	beq	a5,a4,80001bd4 <interruptEcall+0x9c>
    80001b6c:	00200713          	li	a4,2
    80001b70:	02e78e63          	beq	a5,a4,80001bac <interruptEcall+0x74>
            while (1);
    }

    uint64 sstatus, sepc;
    asm volatile("csrr %0, sstatus\n"
                 "csrr %1, sepc" : "=r" (sstatus), "=r" (sepc));
    80001b74:	100029f3          	csrr	s3,sstatus
    80001b78:	14102973          	csrr	s2,sepc
    sepc = sepc + 4;
    80001b7c:	00490913          	addi	s2,s2,4

    switch(caller){
    80001b80:	04200793          	li	a5,66
    80001b84:	0697e263          	bltu	a5,s1,80001be8 <interruptEcall+0xb0>
    80001b88:	1c048863          	beqz	s1,80001d58 <interruptEcall+0x220>
    80001b8c:	1c97e663          	bltu	a5,s1,80001d58 <interruptEcall+0x220>
    80001b90:	00249713          	slli	a4,s1,0x2
    80001b94:	00008697          	auipc	a3,0x8
    80001b98:	4f868693          	addi	a3,a3,1272 # 8000a08c <CONSOLE_STATUS+0x74>
    80001b9c:	00d70733          	add	a4,a4,a3
    80001ba0:	00072783          	lw	a5,0(a4)
    80001ba4:	00d787b3          	add	a5,a5,a3
    80001ba8:	00078067          	jr	a5
            printf("Ilegalna instrukcija\n");
    80001bac:	00008517          	auipc	a0,0x8
    80001bb0:	47450513          	addi	a0,a0,1140 # 8000a020 <CONSOLE_STATUS+0x8>
    80001bb4:	00001097          	auipc	ra,0x1
    80001bb8:	33c080e7          	jalr	828(ra) # 80002ef0 <_Z6printfPKc>
            while (1);
    80001bbc:	0000006f          	j	80001bbc <interruptEcall+0x84>
            printf("NEDOZVOLJENA ADRESA CITANJA\n");
    80001bc0:	00008517          	auipc	a0,0x8
    80001bc4:	47850513          	addi	a0,a0,1144 # 8000a038 <CONSOLE_STATUS+0x20>
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	328080e7          	jalr	808(ra) # 80002ef0 <_Z6printfPKc>
            while (1);
    80001bd0:	0000006f          	j	80001bd0 <interruptEcall+0x98>
            printf("NEDOZVOLJENA ADRESA UPISA\n");
    80001bd4:	00008517          	auipc	a0,0x8
    80001bd8:	48450513          	addi	a0,a0,1156 # 8000a058 <CONSOLE_STATUS+0x40>
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	314080e7          	jalr	788(ra) # 80002ef0 <_Z6printfPKc>
            while (1);
    80001be4:	0000006f          	j	80001be4 <interruptEcall+0xac>
    switch(caller){
    80001be8:	0ff00793          	li	a5,255
    80001bec:	16f49663          	bne	s1,a5,80001d58 <interruptEcall+0x220>
            : "=r" (putcChar)
            );
            _putc(putcChar);
            break;
        case KERNEL_TO_USER:
            kernelToUser();
    80001bf0:	00002097          	auipc	ra,0x2
    80001bf4:	1a4080e7          	jalr	420(ra) # 80003d94 <_Z12kernelToUserv>
            break;
    80001bf8:	01c0006f          	j	80001c14 <interruptEcall+0xdc>
                    );
    80001bfc:	05043503          	ld	a0,80(s0)
            PCB::runningSaveA0(_mem_alloc(size));
    80001c00:	00002097          	auipc	ra,0x2
    80001c04:	b58080e7          	jalr	-1192(ra) # 80003758 <_Z10_mem_allocm>
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	634080e7          	jalr	1588(ra) # 8000223c <_ZN3PCB13runningSaveA0EPv>
            asm volatile("sd a0, 72(s0)");
    80001c10:	04a43423          	sd	a0,72(s0)
        default:
            printf("Nepostojeci poziv\n");
            while (1);
            break;
    }
    if(caller != KERNEL_TO_USER) asm volatile("csrw sstatus, %0" :: "r" (sstatus));
    80001c14:	0ff00793          	li	a5,255
    80001c18:	00f48463          	beq	s1,a5,80001c20 <interruptEcall+0xe8>
    80001c1c:	10099073          	csrw	sstatus,s3
    asm volatile("csrw sepc, %0" :: "r" (sepc));
    80001c20:	14191073          	csrw	sepc,s2
    return;
}
    80001c24:	02813083          	ld	ra,40(sp)
    80001c28:	02013403          	ld	s0,32(sp)
    80001c2c:	01813483          	ld	s1,24(sp)
    80001c30:	01013903          	ld	s2,16(sp)
    80001c34:	00813983          	ld	s3,8(sp)
    80001c38:	03010113          	addi	sp,sp,48
    80001c3c:	00008067          	ret
                    );
    80001c40:	05043503          	ld	a0,80(s0)
            _mem_free(address);
    80001c44:	00002097          	auipc	ra,0x2
    80001c48:	b3c080e7          	jalr	-1220(ra) # 80003780 <_Z9_mem_freePv>
            asm volatile("sd a0, 72(s0)");      //PROMENI a0 SA SACUVANOG STEKA
    80001c4c:	04a43423          	sd	a0,72(s0)
            break;
    80001c50:	fc5ff06f          	j	80001c14 <interruptEcall+0xdc>
                    );
    80001c54:	05043503          	ld	a0,80(s0)
    80001c58:	05843583          	ld	a1,88(s0)
    80001c5c:	06043603          	ld	a2,96(s0)
    80001c60:	06843683          	ld	a3,104(s0)
            _thread_create(a1,a2,a3,a4);
    80001c64:	00002097          	auipc	ra,0x2
    80001c68:	b48080e7          	jalr	-1208(ra) # 800037ac <_Z14_thread_createPP7_threadPFvPvES2_S2_>
            asm volatile("sd a0, 72(s0)");
    80001c6c:	04a43423          	sd	a0,72(s0)
            break;
    80001c70:	fa5ff06f          	j	80001c14 <interruptEcall+0xdc>
            _thread_exit();
    80001c74:	00002097          	auipc	ra,0x2
    80001c78:	bec080e7          	jalr	-1044(ra) # 80003860 <_Z12_thread_exitv>
            _thread_dispatch();
    80001c7c:	00002097          	auipc	ra,0x2
    80001c80:	c60080e7          	jalr	-928(ra) # 800038dc <_Z16_thread_dispatchv>
            break;
    80001c84:	f91ff06f          	j	80001c14 <interruptEcall+0xdc>
            _thread_dispatch();
    80001c88:	00002097          	auipc	ra,0x2
    80001c8c:	c54080e7          	jalr	-940(ra) # 800038dc <_Z16_thread_dispatchv>
            break;
    80001c90:	f85ff06f          	j	80001c14 <interruptEcall+0xdc>
            );
    80001c94:	05043503          	ld	a0,80(s0)
            _thread_start(handle);
    80001c98:	00002097          	auipc	ra,0x2
    80001c9c:	c8c080e7          	jalr	-884(ra) # 80003924 <_Z13_thread_startPm>
            asm volatile("sd a0, 72(s0)");
    80001ca0:	04a43423          	sd	a0,72(s0)
            break;
    80001ca4:	f71ff06f          	j	80001c14 <interruptEcall+0xdc>
            );
    80001ca8:	05043503          	ld	a0,80(s0)
            _thread_join(handle2);
    80001cac:	00002097          	auipc	ra,0x2
    80001cb0:	cd8080e7          	jalr	-808(ra) # 80003984 <_Z12_thread_joinPm>
            break;
    80001cb4:	f61ff06f          	j	80001c14 <interruptEcall+0xdc>
            );
    80001cb8:	05043503          	ld	a0,80(s0)
            _thread_close(handle3);
    80001cbc:	00002097          	auipc	ra,0x2
    80001cc0:	d48080e7          	jalr	-696(ra) # 80003a04 <_Z13_thread_closePm>
            break;
    80001cc4:	f51ff06f          	j	80001c14 <interruptEcall+0xdc>
            );
    80001cc8:	05043503          	ld	a0,80(s0)
    80001ccc:	05843583          	ld	a1,88(s0)
            _sem_open(sema1,sema2);
    80001cd0:	0005859b          	sext.w	a1,a1
    80001cd4:	00002097          	auipc	ra,0x2
    80001cd8:	d88080e7          	jalr	-632(ra) # 80003a5c <_Z9_sem_openPP4_semj>
            asm volatile("sd a0, 72(s0)");
    80001cdc:	04a43423          	sd	a0,72(s0)
            break;
    80001ce0:	f35ff06f          	j	80001c14 <interruptEcall+0xdc>
            );
    80001ce4:	05043503          	ld	a0,80(s0)
            _sem_close(semHandle1);
    80001ce8:	00002097          	auipc	ra,0x2
    80001cec:	e04080e7          	jalr	-508(ra) # 80003aec <_Z10_sem_closePm>
            asm volatile("sd a0, 72(s0)");
    80001cf0:	04a43423          	sd	a0,72(s0)
            break;
    80001cf4:	f21ff06f          	j	80001c14 <interruptEcall+0xdc>
            );
    80001cf8:	05043503          	ld	a0,80(s0)
            _sem_wait(semHandle2);
    80001cfc:	00002097          	auipc	ra,0x2
    80001d00:	e5c080e7          	jalr	-420(ra) # 80003b58 <_Z9_sem_waitPm>
            asm volatile("sd a0, 72(s0)");
    80001d04:	04a43423          	sd	a0,72(s0)
            break;
    80001d08:	f0dff06f          	j	80001c14 <interruptEcall+0xdc>
            );
    80001d0c:	05043503          	ld	a0,80(s0)
            _sem_signal(semHandle3);
    80001d10:	00002097          	auipc	ra,0x2
    80001d14:	e98080e7          	jalr	-360(ra) # 80003ba8 <_Z11_sem_signalPm>
            asm volatile("sd a0, 72(s0)");
    80001d18:	04a43423          	sd	a0,72(s0)
            break;
    80001d1c:	ef9ff06f          	j	80001c14 <interruptEcall+0xdc>
            );
    80001d20:	05043503          	ld	a0,80(s0)
            _time_sleep(time_sleep);
    80001d24:	00002097          	auipc	ra,0x2
    80001d28:	ed4080e7          	jalr	-300(ra) # 80003bf8 <_Z11_time_sleepm>
            asm volatile("sd a0, 72(s0)");
    80001d2c:	04a43423          	sd	a0,72(s0)
            break;
    80001d30:	ee5ff06f          	j	80001c14 <interruptEcall+0xdc>
            _getc();
    80001d34:	00002097          	auipc	ra,0x2
    80001d38:	f70080e7          	jalr	-144(ra) # 80003ca4 <_Z5_getcv>
            asm volatile("sd a0, 72(s0)");
    80001d3c:	04a43423          	sd	a0,72(s0)
            break;
    80001d40:	ed5ff06f          	j	80001c14 <interruptEcall+0xdc>
            );
    80001d44:	05043503          	ld	a0,80(s0)
            _putc(putcChar);
    80001d48:	0ff57513          	andi	a0,a0,255
    80001d4c:	00002097          	auipc	ra,0x2
    80001d50:	f18080e7          	jalr	-232(ra) # 80003c64 <_Z5_putcc>
            break;
    80001d54:	ec1ff06f          	j	80001c14 <interruptEcall+0xdc>
            printf("Nepostojeci poziv\n");
    80001d58:	00008517          	auipc	a0,0x8
    80001d5c:	32050513          	addi	a0,a0,800 # 8000a078 <CONSOLE_STATUS+0x60>
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	190080e7          	jalr	400(ra) # 80002ef0 <_Z6printfPKc>
            while (1);
    80001d68:	0000006f          	j	80001d68 <interruptEcall+0x230>

0000000080001d6c <consoleEcall>:


extern "C" void consoleEcall() {
    80001d6c:	fe010113          	addi	sp,sp,-32
    80001d70:	00113c23          	sd	ra,24(sp)
    80001d74:	00813823          	sd	s0,16(sp)
    80001d78:	00913423          	sd	s1,8(sp)
    80001d7c:	01213023          	sd	s2,0(sp)
    80001d80:	02010413          	addi	s0,sp,32
    uint64 sstatus, sepc;
    asm volatile("csrr %0, sstatus\n"
                 "csrr %1, sepc" : "=r" (sstatus), "=r" (sepc));
    80001d84:	10002973          	csrr	s2,sstatus
    80001d88:	141024f3          	csrr	s1,sepc
    int d = plic_claim();
    80001d8c:	00006097          	auipc	ra,0x6
    80001d90:	dc8080e7          	jalr	-568(ra) # 80007b54 <plic_claim>
    //if(d == CONSOLE_IRQ) console_handler();
    plic_complete(d);
    80001d94:	00006097          	auipc	ra,0x6
    80001d98:	df8080e7          	jalr	-520(ra) # 80007b8c <plic_complete>
    asm volatile("csrw sstatus, %0" :: "r" (sstatus));
    80001d9c:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %0" :: "r" (sepc));
    80001da0:	14149073          	csrw	sepc,s1
    80001da4:	01813083          	ld	ra,24(sp)
    80001da8:	01013403          	ld	s0,16(sp)
    80001dac:	00813483          	ld	s1,8(sp)
    80001db0:	00013903          	ld	s2,0(sp)
    80001db4:	02010113          	addi	sp,sp,32
    80001db8:	00008067          	ret

0000000080001dbc <_ZN3PCB5getIDEv>:

uint64 PCB::timeSliceCounter = 0;

uint64* PCB::IDcounter = nullptr;

uint64* PCB::getID(){
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00813423          	sd	s0,8(sp)
    80001dc4:	01010413          	addi	s0,sp,16
    IDcounter =(uint64*) ((char*) IDcounter+1);
    80001dc8:	0000b797          	auipc	a5,0xb
    80001dcc:	ec878793          	addi	a5,a5,-312 # 8000cc90 <_ZN3PCB9IDcounterE>
    80001dd0:	0007b503          	ld	a0,0(a5)
    80001dd4:	00150513          	addi	a0,a0,1
    80001dd8:	00a7b023          	sd	a0,0(a5)
    return IDcounter;
}
    80001ddc:	00813403          	ld	s0,8(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZN3PCB5setIDEPm>:

void PCB::setID(uint64* id){
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00813423          	sd	s0,8(sp)
    80001df0:	01010413          	addi	s0,sp,16
    this->ID = id;
    80001df4:	04b53423          	sd	a1,72(a0)
}
    80001df8:	00813403          	ld	s0,8(sp)
    80001dfc:	01010113          	addi	sp,sp,16
    80001e00:	00008067          	ret

0000000080001e04 <_ZN3PCBnwEm>:

void* PCB::operator new(size_t count)
{
    80001e04:	ff010113          	addi	sp,sp,-16
    80001e08:	00113423          	sd	ra,8(sp)
    80001e0c:	00813023          	sd	s0,0(sp)
    80001e10:	01010413          	addi	s0,sp,16
    return _mem_alloc(BytsBlck(count));
    80001e14:	00002097          	auipc	ra,0x2
    80001e18:	020080e7          	jalr	32(ra) # 80003e34 <_Z8BytsBlckm>
    80001e1c:	00002097          	auipc	ra,0x2
    80001e20:	93c080e7          	jalr	-1732(ra) # 80003758 <_Z10_mem_allocm>
}
    80001e24:	00813083          	ld	ra,8(sp)
    80001e28:	00013403          	ld	s0,0(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <_ZN3PCBdlEPv>:

void PCB::operator delete (void* add){
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00113423          	sd	ra,8(sp)
    80001e3c:	00813023          	sd	s0,0(sp)
    80001e40:	01010413          	addi	s0,sp,16
    _mem_free(add);
    80001e44:	00002097          	auipc	ra,0x2
    80001e48:	93c080e7          	jalr	-1732(ra) # 80003780 <_Z9_mem_freePv>
}
    80001e4c:	00813083          	ld	ra,8(sp)
    80001e50:	00013403          	ld	s0,0(sp)
    80001e54:	01010113          	addi	sp,sp,16
    80001e58:	00008067          	ret

0000000080001e5c <_ZN3PCB15getRunningStackEv>:

extern "C" uint64 * PCB::getRunningStack(){
    80001e5c:	ff010113          	addi	sp,sp,-16
    80001e60:	00813423          	sd	s0,8(sp)
    80001e64:	01010413          	addi	s0,sp,16
    return (uint64*) *(running->context+1);
    80001e68:	0000b797          	auipc	a5,0xb
    80001e6c:	e307b783          	ld	a5,-464(a5) # 8000cc98 <_ZN3PCB7runningE>
    80001e70:	0007b783          	ld	a5,0(a5)
}
    80001e74:	0087b503          	ld	a0,8(a5)
    80001e78:	00813403          	ld	s0,8(sp)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	00008067          	ret

0000000080001e84 <_ZN3PCB15setRunningStackEm>:
extern "C" void PCB::setRunningStack(uint64 reg){
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00813423          	sd	s0,8(sp)
    80001e8c:	01010413          	addi	s0,sp,16
    *(running->context+1) = reg;
    80001e90:	0000b797          	auipc	a5,0xb
    80001e94:	e087b783          	ld	a5,-504(a5) # 8000cc98 <_ZN3PCB7runningE>
    80001e98:	0007b783          	ld	a5,0(a5)
    80001e9c:	00a7b423          	sd	a0,8(a5)
}
    80001ea0:	00813403          	ld	s0,8(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret

0000000080001eac <_ZN3PCB5yieldEv>:
    if(!context) return nullptr;
    PCB* node = new PCB(body,DEFAULT_TIME_SLICE,arg,stack, kernelStack, context);
    return node;
}

void PCB::yield() {
    80001eac:	ff010113          	addi	sp,sp,-16
    80001eb0:	00113423          	sd	ra,8(sp)
    80001eb4:	00813023          	sd	s0,0(sp)
    80001eb8:	01010413          	addi	s0,sp,16
    _thread_dispatch();
    80001ebc:	00002097          	auipc	ra,0x2
    80001ec0:	a20080e7          	jalr	-1504(ra) # 800038dc <_Z16_thread_dispatchv>
}
    80001ec4:	00813083          	ld	ra,8(sp)
    80001ec8:	00013403          	ld	s0,0(sp)
    80001ecc:	01010113          	addi	sp,sp,16
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN3PCB8dispatchEv>:

void PCB::dispatch() {
    80001ed4:	fe010113          	addi	sp,sp,-32
    80001ed8:	00113c23          	sd	ra,24(sp)
    80001edc:	00813823          	sd	s0,16(sp)
    80001ee0:	00913423          	sd	s1,8(sp)
    80001ee4:	02010413          	addi	s0,sp,32
    PCB *old = running;
    80001ee8:	0000b497          	auipc	s1,0xb
    80001eec:	db04b483          	ld	s1,-592(s1) # 8000cc98 <_ZN3PCB7runningE>
    if (old->state != terminating && old->state != suspended) { old->setState(ready); Scheduler::put(old); }
    80001ef0:	0404a783          	lw	a5,64(s1)
    80001ef4:	00400713          	li	a4,4
    80001ef8:	00e78663          	beq	a5,a4,80001f04 <_ZN3PCB8dispatchEv+0x30>
    80001efc:	00200713          	li	a4,2
    80001f00:	04e79063          	bne	a5,a4,80001f40 <_ZN3PCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	5b4080e7          	jalr	1460(ra) # 800024b8 <_ZN9Scheduler3getEv>
    80001f0c:	0000b797          	auipc	a5,0xb
    80001f10:	d8a7b623          	sd	a0,-628(a5) # 8000cc98 <_ZN3PCB7runningE>
    void setID(uint64*);
    static PCB *running;
    static PCB *createThread(Body body,void* arg,uint64* stack);

    int getState() { return state; }
    void setState(States state) { this->state = state; }
    80001f14:	00300793          	li	a5,3
    80001f18:	04f52023          	sw	a5,64(a0)
    running->setState(States::running);
    PCB::contextSwitch(old->context, running->context);
    80001f1c:	00053583          	ld	a1,0(a0)
    80001f20:	0004b503          	ld	a0,0(s1)
    80001f24:	fffff097          	auipc	ra,0xfffff
    80001f28:	5ac080e7          	jalr	1452(ra) # 800014d0 <_ZN3PCB13contextSwitchEPmS0_>
}
    80001f2c:	01813083          	ld	ra,24(sp)
    80001f30:	01013403          	ld	s0,16(sp)
    80001f34:	00813483          	ld	s1,8(sp)
    80001f38:	02010113          	addi	sp,sp,32
    80001f3c:	00008067          	ret
    80001f40:	00100793          	li	a5,1
    80001f44:	04f4a023          	sw	a5,64(s1)
    if (old->state != terminating && old->state != suspended) { old->setState(ready); Scheduler::put(old); }
    80001f48:	00048513          	mv	a0,s1
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	4f0080e7          	jalr	1264(ra) # 8000243c <_ZN9Scheduler3putEP3PCB>
    80001f54:	fb1ff06f          	j	80001f04 <_ZN3PCB8dispatchEv+0x30>

0000000080001f58 <_ZN3PCB10endSysCallEv>:

void PCB::endSysCall(){
    80001f58:	ff010113          	addi	sp,sp,-16
    80001f5c:	00813423          	sd	s0,8(sp)
    80001f60:	01010413          	addi	s0,sp,16
    asm volatile ("csrw sepc, ra");
    80001f64:	14109073          	csrw	sepc,ra
    asm volatile("sret");
    80001f68:	10200073          	sret
}
    80001f6c:	00813403          	ld	s0,8(sp)
    80001f70:	01010113          	addi	sp,sp,16
    80001f74:	00008067          	ret

0000000080001f78 <_ZN3PCB13threadWrapperEv>:

//U KORISNICKOM REZIMU
void PCB::threadWrapper() {
    80001f78:	fe010113          	addi	sp,sp,-32
    80001f7c:	00113c23          	sd	ra,24(sp)
    80001f80:	00813823          	sd	s0,16(sp)
    80001f84:	00913423          	sd	s1,8(sp)
    80001f88:	02010413          	addi	s0,sp,32
    endSysCall();
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	fcc080e7          	jalr	-52(ra) # 80001f58 <_ZN3PCB10endSysCallEv>
        //TRENUTNO U USERSTACK-A, DAKLE UBACUJE SE KERNEL STACK NA CONTEXT
    setRunningStack((uint64) &running->kernelStack[DEFAULT_STACK_SIZE]);
    80001f94:	0000b497          	auipc	s1,0xb
    80001f98:	cfc48493          	addi	s1,s1,-772 # 8000cc90 <_ZN3PCB9IDcounterE>
    80001f9c:	0084b783          	ld	a5,8(s1)
    80001fa0:	0207b503          	ld	a0,32(a5)
    80001fa4:	000087b7          	lui	a5,0x8
    80001fa8:	00f50533          	add	a0,a0,a5
    80001fac:	00000097          	auipc	ra,0x0
    80001fb0:	ed8080e7          	jalr	-296(ra) # 80001e84 <_ZN3PCB15setRunningStackEm>
    running->body(running->arg);
    80001fb4:	0084b783          	ld	a5,8(s1)
    80001fb8:	0107b703          	ld	a4,16(a5) # 8010 <_entry-0x7fff7ff0>
    80001fbc:	0307b503          	ld	a0,48(a5)
    80001fc0:	000700e7          	jalr	a4
    if(thread_exit() <0) printfNL("Nepravilan izlazak iz niti"); //GRESKA
    80001fc4:	fffff097          	auipc	ra,0xfffff
    80001fc8:	7d0080e7          	jalr	2000(ra) # 80001794 <thread_exit>
    80001fcc:	00054463          	bltz	a0,80001fd4 <_ZN3PCB13threadWrapperEv+0x5c>
    while (1);
    80001fd0:	0000006f          	j	80001fd0 <_ZN3PCB13threadWrapperEv+0x58>
    if(thread_exit() <0) printfNL("Nepravilan izlazak iz niti"); //GRESKA
    80001fd4:	00008517          	auipc	a0,0x8
    80001fd8:	1c450513          	addi	a0,a0,452 # 8000a198 <CONSOLE_STATUS+0x180>
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	fe0080e7          	jalr	-32(ra) # 80002fbc <_Z8printfNLPKc>
    80001fe4:	fedff06f          	j	80001fd0 <_ZN3PCB13threadWrapperEv+0x58>

0000000080001fe8 <_ZN3PCB11initContextEmm>:
    node->state = States::ready;
    node->ID = getID();
    return node;
}

void PCB::initContext(uint64 ra, uint64 sp){
    80001fe8:	ff010113          	addi	sp,sp,-16
    80001fec:	00813423          	sd	s0,8(sp)
    80001ff0:	01010413          	addi	s0,sp,16
    *context = ra;
    80001ff4:	00053783          	ld	a5,0(a0)
    80001ff8:	00b7b023          	sd	a1,0(a5)
    *(context+1) = sp;
    80001ffc:	00053783          	ld	a5,0(a0)
    80002000:	00c7b423          	sd	a2,8(a5)
}
    80002004:	00813403          	ld	s0,8(sp)
    80002008:	01010113          	addi	sp,sp,16
    8000200c:	00008067          	ret

0000000080002010 <_ZN3PCBC1EPFvPvEmS0_PmS3_S3_>:
PCB::PCB(Body body, uint64 timeSlice, void* arg, uint64* stack, uint64* kernelStack, uint64* context){
    80002010:	ff010113          	addi	sp,sp,-16
    80002014:	00113423          	sd	ra,8(sp)
    80002018:	00813023          	sd	s0,0(sp)
    8000201c:	01010413          	addi	s0,sp,16
    this->body = body;
    80002020:	00b53823          	sd	a1,16(a0)
    this->stack = stack;
    80002024:	00e53c23          	sd	a4,24(a0)
    this->kernelStack = kernelStack;
    80002028:	02f53023          	sd	a5,32(a0)
    this->timeSlice = timeSlice;
    8000202c:	02c53423          	sd	a2,40(a0)
    this->arg = arg;
    80002030:	02d53823          	sd	a3,48(a0)
    state = initializing;
    80002034:	04052023          	sw	zero,64(a0)
    parent = running;
    80002038:	0000b797          	auipc	a5,0xb
    8000203c:	c607b783          	ld	a5,-928(a5) # 8000cc98 <_ZN3PCB7runningE>
    80002040:	02f53c23          	sd	a5,56(a0)
    ID = nullptr;
    80002044:	04053423          	sd	zero,72(a0)
    blockedHead = nullptr;
    80002048:	00053423          	sd	zero,8(a0)
    this->context = context;
    8000204c:	01053023          	sd	a6,0(a0)
    initContext((uint64) &threadWrapper,(uint64) ((stack != nullptr) ? &stack[DEFAULT_STACK_SIZE] : 0));
    80002050:	02070663          	beqz	a4,8000207c <_ZN3PCBC1EPFvPvEmS0_PmS3_S3_+0x6c>
    80002054:	00008637          	lui	a2,0x8
    80002058:	00c70633          	add	a2,a4,a2
    8000205c:	00000597          	auipc	a1,0x0
    80002060:	f1c58593          	addi	a1,a1,-228 # 80001f78 <_ZN3PCB13threadWrapperEv>
    80002064:	00000097          	auipc	ra,0x0
    80002068:	f84080e7          	jalr	-124(ra) # 80001fe8 <_ZN3PCB11initContextEmm>
}
    8000206c:	00813083          	ld	ra,8(sp)
    80002070:	00013403          	ld	s0,0(sp)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret
    initContext((uint64) &threadWrapper,(uint64) ((stack != nullptr) ? &stack[DEFAULT_STACK_SIZE] : 0));
    8000207c:	00000613          	li	a2,0
    80002080:	fddff06f          	j	8000205c <_ZN3PCBC1EPFvPvEmS0_PmS3_S3_+0x4c>

0000000080002084 <_ZN3PCB12createThreadEPFvPvES0_Pm>:
PCB *PCB::createThread(Body body,void* arg,uint64* stack) {
    80002084:	fc010113          	addi	sp,sp,-64
    80002088:	02113c23          	sd	ra,56(sp)
    8000208c:	02813823          	sd	s0,48(sp)
    80002090:	02913423          	sd	s1,40(sp)
    80002094:	03213023          	sd	s2,32(sp)
    80002098:	01313c23          	sd	s3,24(sp)
    8000209c:	01413823          	sd	s4,16(sp)
    800020a0:	01513423          	sd	s5,8(sp)
    800020a4:	01613023          	sd	s6,0(sp)
    800020a8:	04010413          	addi	s0,sp,64
    800020ac:	00050993          	mv	s3,a0
    800020b0:	00058a13          	mv	s4,a1
    800020b4:	00060a93          	mv	s5,a2
    uint64 * kernelStack = (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)*DEFAULT_STACK_SIZE));
    800020b8:	00008537          	lui	a0,0x8
    800020bc:	00002097          	auipc	ra,0x2
    800020c0:	d78080e7          	jalr	-648(ra) # 80003e34 <_Z8BytsBlckm>
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	694080e7          	jalr	1684(ra) # 80003758 <_Z10_mem_allocm>
    800020cc:	00050493          	mv	s1,a0
    if(!kernelStack) return nullptr;
    800020d0:	06050e63          	beqz	a0,8000214c <_ZN3PCB12createThreadEPFvPvES0_Pm+0xc8>
    uint64 * context = (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)*31));
    800020d4:	0f800513          	li	a0,248
    800020d8:	00002097          	auipc	ra,0x2
    800020dc:	d5c080e7          	jalr	-676(ra) # 80003e34 <_Z8BytsBlckm>
    800020e0:	00001097          	auipc	ra,0x1
    800020e4:	678080e7          	jalr	1656(ra) # 80003758 <_Z10_mem_allocm>
    800020e8:	00050913          	mv	s2,a0
    if(!context) return nullptr;
    800020ec:	06050463          	beqz	a0,80002154 <_ZN3PCB12createThreadEPFvPvES0_Pm+0xd0>
    PCB* node = new PCB(body,DEFAULT_TIME_SLICE,arg,stack, kernelStack, context);
    800020f0:	05000513          	li	a0,80
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	d10080e7          	jalr	-752(ra) # 80001e04 <_ZN3PCBnwEm>
    800020fc:	00050b13          	mv	s6,a0
    80002100:	00090813          	mv	a6,s2
    80002104:	00048793          	mv	a5,s1
    80002108:	000a8713          	mv	a4,s5
    8000210c:	000a0693          	mv	a3,s4
    80002110:	00200613          	li	a2,2
    80002114:	00098593          	mv	a1,s3
    80002118:	00000097          	auipc	ra,0x0
    8000211c:	ef8080e7          	jalr	-264(ra) # 80002010 <_ZN3PCBC1EPFvPvEmS0_PmS3_S3_>
}
    80002120:	000b0513          	mv	a0,s6
    80002124:	03813083          	ld	ra,56(sp)
    80002128:	03013403          	ld	s0,48(sp)
    8000212c:	02813483          	ld	s1,40(sp)
    80002130:	02013903          	ld	s2,32(sp)
    80002134:	01813983          	ld	s3,24(sp)
    80002138:	01013a03          	ld	s4,16(sp)
    8000213c:	00813a83          	ld	s5,8(sp)
    80002140:	00013b03          	ld	s6,0(sp)
    80002144:	04010113          	addi	sp,sp,64
    80002148:	00008067          	ret
    if(!kernelStack) return nullptr;
    8000214c:	00050b13          	mv	s6,a0
    80002150:	fd1ff06f          	j	80002120 <_ZN3PCB12createThreadEPFvPvES0_Pm+0x9c>
    if(!context) return nullptr;
    80002154:	00050b13          	mv	s6,a0
    80002158:	fc9ff06f          	j	80002120 <_ZN3PCB12createThreadEPFvPvES0_Pm+0x9c>

000000008000215c <_ZN3PCB13initKernelPCBEPm>:
PCB* PCB::initKernelPCB(uint64* stack){
    8000215c:	fe010113          	addi	sp,sp,-32
    80002160:	00113c23          	sd	ra,24(sp)
    80002164:	00813823          	sd	s0,16(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	02010413          	addi	s0,sp,32
    80002170:	00050493          	mv	s1,a0
    IDcounter =  (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)));
    80002174:	00800513          	li	a0,8
    80002178:	00002097          	auipc	ra,0x2
    8000217c:	cbc080e7          	jalr	-836(ra) # 80003e34 <_Z8BytsBlckm>
    80002180:	00001097          	auipc	ra,0x1
    80002184:	5d8080e7          	jalr	1496(ra) # 80003758 <_Z10_mem_allocm>
    80002188:	0000b797          	auipc	a5,0xb
    8000218c:	b0a7b423          	sd	a0,-1272(a5) # 8000cc90 <_ZN3PCB9IDcounterE>
    if(!IDcounter) return nullptr;
    80002190:	02050c63          	beqz	a0,800021c8 <_ZN3PCB13initKernelPCBEPm+0x6c>
    PCB* node = createThread(0, nullptr,stack);
    80002194:	00048613          	mv	a2,s1
    80002198:	00000593          	li	a1,0
    8000219c:	00000513          	li	a0,0
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	ee4080e7          	jalr	-284(ra) # 80002084 <_ZN3PCB12createThreadEPFvPvES0_Pm>
    if(!node) return nullptr;
    800021a8:	02050063          	beqz	a0,800021c8 <_ZN3PCB13initKernelPCBEPm+0x6c>
    node->state = States::running;
    800021ac:	00300793          	li	a5,3
    800021b0:	04f52023          	sw	a5,64(a0) # 8040 <_entry-0x7fff7fc0>
    node->ID = IDcounter;
    800021b4:	0000b797          	auipc	a5,0xb
    800021b8:	adc78793          	addi	a5,a5,-1316 # 8000cc90 <_ZN3PCB9IDcounterE>
    800021bc:	0007b703          	ld	a4,0(a5)
    800021c0:	04e53423          	sd	a4,72(a0)
    running = node;
    800021c4:	00a7b423          	sd	a0,8(a5)
}
    800021c8:	01813083          	ld	ra,24(sp)
    800021cc:	01013403          	ld	s0,16(sp)
    800021d0:	00813483          	ld	s1,8(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00008067          	ret

00000000800021dc <_ZN3PCB11initIdlePCBEPm>:
PCB* PCB::initIdlePCB(uint64* stack){
    800021dc:	fe010113          	addi	sp,sp,-32
    800021e0:	00113c23          	sd	ra,24(sp)
    800021e4:	00813823          	sd	s0,16(sp)
    800021e8:	00913423          	sd	s1,8(sp)
    800021ec:	02010413          	addi	s0,sp,32
    800021f0:	00050613          	mv	a2,a0
    PCB* node = createThread(&idleThread, nullptr,stack);
    800021f4:	00000593          	li	a1,0
    800021f8:	0000b517          	auipc	a0,0xb
    800021fc:	a4053503          	ld	a0,-1472(a0) # 8000cc38 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002200:	00000097          	auipc	ra,0x0
    80002204:	e84080e7          	jalr	-380(ra) # 80002084 <_ZN3PCB12createThreadEPFvPvES0_Pm>
    80002208:	00050493          	mv	s1,a0
    if(!node) return nullptr;
    8000220c:	00050c63          	beqz	a0,80002224 <_ZN3PCB11initIdlePCBEPm+0x48>
    node->state = States::ready;
    80002210:	00100793          	li	a5,1
    80002214:	04f52023          	sw	a5,64(a0)
    node->ID = getID();
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	ba4080e7          	jalr	-1116(ra) # 80001dbc <_ZN3PCB5getIDEv>
    80002220:	04a4b423          	sd	a0,72(s1)
}
    80002224:	00048513          	mv	a0,s1
    80002228:	01813083          	ld	ra,24(sp)
    8000222c:	01013403          	ld	s0,16(sp)
    80002230:	00813483          	ld	s1,8(sp)
    80002234:	02010113          	addi	sp,sp,32
    80002238:	00008067          	ret

000000008000223c <_ZN3PCB13runningSaveA0EPv>:

void* PCB::runningSaveA0(void* reg){
    8000223c:	ff010113          	addi	sp,sp,-16
    80002240:	00813423          	sd	s0,8(sp)
    80002244:	01010413          	addi	s0,sp,16
    asm volatile("sd a0, 9*8(%[context])" :: [context] "r" (running->context));
    80002248:	0000b797          	auipc	a5,0xb
    8000224c:	a507b783          	ld	a5,-1456(a5) # 8000cc98 <_ZN3PCB7runningE>
    80002250:	0007b783          	ld	a5,0(a5)
    80002254:	04a7b423          	sd	a0,72(a5)
    return reg;
}
    80002258:	00813403          	ld	s0,8(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret

0000000080002264 <_ZN3PCB13runningSaveA1EPv>:

void* PCB::runningSaveA1(void* reg){
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00813423          	sd	s0,8(sp)
    8000226c:	01010413          	addi	s0,sp,16
    asm volatile("sd %0, 10*8(%1)" : "=r" (reg) : "r" (running->context));
    80002270:	0000b797          	auipc	a5,0xb
    80002274:	a287b783          	ld	a5,-1496(a5) # 8000cc98 <_ZN3PCB7runningE>
    80002278:	0007b503          	ld	a0,0(a5)
    8000227c:	04a53823          	sd	a0,80(a0)
    return reg;
}
    80002280:	00813403          	ld	s0,8(sp)
    80002284:	01010113          	addi	sp,sp,16
    80002288:	00008067          	ret

000000008000228c <_ZN3PCB11blockThreadEPS_>:

int PCB::blockThread(PCB* pcb){
    if(pcb == nullptr) return -1;
    8000228c:	08058263          	beqz	a1,80002310 <_ZN3PCB11blockThreadEPS_+0x84>
int PCB::blockThread(PCB* pcb){
    80002290:	fe010113          	addi	sp,sp,-32
    80002294:	00113c23          	sd	ra,24(sp)
    80002298:	00813823          	sd	s0,16(sp)
    8000229c:	00913423          	sd	s1,8(sp)
    800022a0:	01213023          	sd	s2,0(sp)
    800022a4:	02010413          	addi	s0,sp,32
    800022a8:	00050913          	mv	s2,a0
    800022ac:	00058493          	mv	s1,a1
    BlockedNode* node = (BlockedNode*) _mem_alloc(BytsTBlck(sizeof(BlockedNode)));  //NEW !!!
    800022b0:	01000513          	li	a0,16
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	138080e7          	jalr	312(ra) # 800023ec <_Z9BytsTBlckm>
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	49c080e7          	jalr	1180(ra) # 80003758 <_Z10_mem_allocm>
    if(node == nullptr) return -2; //NEMA MEMORIJE
    800022c4:	04050a63          	beqz	a0,80002318 <_ZN3PCB11blockThreadEPS_+0x8c>
    node->pcb = pcb;
    800022c8:	00953023          	sd	s1,0(a0)
    node->next = nullptr;
    800022cc:	00053423          	sd	zero,8(a0)
    if(blockedHead == nullptr){
    800022d0:	00893783          	ld	a5,8(s2)
    800022d4:	02078863          	beqz	a5,80002304 <_ZN3PCB11blockThreadEPS_+0x78>
        blockedHead = node;
        return 0;
    }
    BlockedNode* curr = blockedHead;
    for(; curr->next != nullptr; curr = curr->next);
    800022d8:	00078713          	mv	a4,a5
    800022dc:	0087b783          	ld	a5,8(a5)
    800022e0:	fe079ce3          	bnez	a5,800022d8 <_ZN3PCB11blockThreadEPS_+0x4c>
    curr->next = node;
    800022e4:	00a73423          	sd	a0,8(a4)
    return 0;
    800022e8:	00000513          	li	a0,0
}
    800022ec:	01813083          	ld	ra,24(sp)
    800022f0:	01013403          	ld	s0,16(sp)
    800022f4:	00813483          	ld	s1,8(sp)
    800022f8:	00013903          	ld	s2,0(sp)
    800022fc:	02010113          	addi	sp,sp,32
    80002300:	00008067          	ret
        blockedHead = node;
    80002304:	00a93423          	sd	a0,8(s2)
        return 0;
    80002308:	00000513          	li	a0,0
    8000230c:	fe1ff06f          	j	800022ec <_ZN3PCB11blockThreadEPS_+0x60>
    if(pcb == nullptr) return -1;
    80002310:	fff00513          	li	a0,-1
}
    80002314:	00008067          	ret
    if(node == nullptr) return -2; //NEMA MEMORIJE
    80002318:	ffe00513          	li	a0,-2
    8000231c:	fd1ff06f          	j	800022ec <_ZN3PCB11blockThreadEPS_+0x60>

0000000080002320 <_ZN3PCB13unblockThreadEv>:

PCB* PCB::unblockThread(){
    80002320:	fe010113          	addi	sp,sp,-32
    80002324:	00113c23          	sd	ra,24(sp)
    80002328:	00813823          	sd	s0,16(sp)
    8000232c:	00913423          	sd	s1,8(sp)
    80002330:	02010413          	addi	s0,sp,32
    80002334:	00050793          	mv	a5,a0
    if(!blockedHead) return nullptr;
    80002338:	00853503          	ld	a0,8(a0)
    8000233c:	02050863          	beqz	a0,8000236c <_ZN3PCB13unblockThreadEv+0x4c>
    PCB* pcb = blockedHead->pcb;
    80002340:	00053483          	ld	s1,0(a0)
    BlockedNode* node = blockedHead;
    blockedHead = node->next;
    80002344:	00853703          	ld	a4,8(a0)
    80002348:	00e7b423          	sd	a4,8(a5)
    _mem_free(node);
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	434080e7          	jalr	1076(ra) # 80003780 <_Z9_mem_freePv>
    return pcb;
}
    80002354:	00048513          	mv	a0,s1
    80002358:	01813083          	ld	ra,24(sp)
    8000235c:	01013403          	ld	s0,16(sp)
    80002360:	00813483          	ld	s1,8(sp)
    80002364:	02010113          	addi	sp,sp,32
    80002368:	00008067          	ret
    if(!blockedHead) return nullptr;
    8000236c:	00050493          	mv	s1,a0
    80002370:	fe5ff06f          	j	80002354 <_ZN3PCB13unblockThreadEv+0x34>

0000000080002374 <_ZN3PCBD1Ev>:
PCB::~PCB(){
    80002374:	fe010113          	addi	sp,sp,-32
    80002378:	00113c23          	sd	ra,24(sp)
    8000237c:	00813823          	sd	s0,16(sp)
    80002380:	00913423          	sd	s1,8(sp)
    80002384:	02010413          	addi	s0,sp,32
    80002388:	00050493          	mv	s1,a0
        PCB* pcb = this->unblockThread();
    8000238c:	00048513          	mv	a0,s1
    80002390:	00000097          	auipc	ra,0x0
    80002394:	f90080e7          	jalr	-112(ra) # 80002320 <_ZN3PCB13unblockThreadEv>
        if(!pcb) break;
    80002398:	00050863          	beqz	a0,800023a8 <_ZN3PCBD1Ev+0x34>
        Scheduler::put(pcb);
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	0a0080e7          	jalr	160(ra) # 8000243c <_ZN9Scheduler3putEP3PCB>
    }
    800023a4:	fe9ff06f          	j	8000238c <_ZN3PCBD1Ev+0x18>
    _mem_free(stack);
    800023a8:	0184b503          	ld	a0,24(s1)
    800023ac:	00001097          	auipc	ra,0x1
    800023b0:	3d4080e7          	jalr	980(ra) # 80003780 <_Z9_mem_freePv>
    _mem_free(kernelStack);
    800023b4:	0204b503          	ld	a0,32(s1)
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	3c8080e7          	jalr	968(ra) # 80003780 <_Z9_mem_freePv>
    _mem_free(context);
    800023c0:	0004b503          	ld	a0,0(s1)
    800023c4:	00001097          	auipc	ra,0x1
    800023c8:	3bc080e7          	jalr	956(ra) # 80003780 <_Z9_mem_freePv>
    Kernel::removeThread(this->ID);
    800023cc:	0484b503          	ld	a0,72(s1)
    800023d0:	00002097          	auipc	ra,0x2
    800023d4:	c44080e7          	jalr	-956(ra) # 80004014 <_ZN6Kernel12removeThreadEPm>
}
    800023d8:	01813083          	ld	ra,24(sp)
    800023dc:	01013403          	ld	s0,16(sp)
    800023e0:	00813483          	ld	s1,8(sp)
    800023e4:	02010113          	addi	sp,sp,32
    800023e8:	00008067          	ret

00000000800023ec <_Z9BytsTBlckm>:
#include "../h/MemoryAllocator.hpp"
#include "../h/Kernel.hpp"

Scheduler::PCBNode* Scheduler::activeList = nullptr;

size_t BytsTBlck(size_t size){
    800023ec:	fe010113          	addi	sp,sp,-32
    800023f0:	00113c23          	sd	ra,24(sp)
    800023f4:	00813823          	sd	s0,16(sp)
    800023f8:	00913423          	sd	s1,8(sp)
    800023fc:	02010413          	addi	s0,sp,32
    80002400:	00050493          	mv	s1,a0
    size_t sz = MemoryAllocator::getSizeOfDescrp();
    80002404:	00001097          	auipc	ra,0x1
    80002408:	fd4080e7          	jalr	-44(ra) # 800033d8 <_ZN15MemoryAllocator15getSizeOfDescrpEv>
    return ((size+sz) % MEM_BLOCK_SIZE == 0) ? (size+sz) / MEM_BLOCK_SIZE :
    8000240c:	00950533          	add	a0,a0,s1
    80002410:	03f57793          	andi	a5,a0,63
    80002414:	00079e63          	bnez	a5,80002430 <_Z9BytsTBlckm+0x44>
    80002418:	00655513          	srli	a0,a0,0x6
           (size+sz) / MEM_BLOCK_SIZE + 1;
}
    8000241c:	01813083          	ld	ra,24(sp)
    80002420:	01013403          	ld	s0,16(sp)
    80002424:	00813483          	ld	s1,8(sp)
    80002428:	02010113          	addi	sp,sp,32
    8000242c:	00008067          	ret
           (size+sz) / MEM_BLOCK_SIZE + 1;
    80002430:	00655513          	srli	a0,a0,0x6
    return ((size+sz) % MEM_BLOCK_SIZE == 0) ? (size+sz) / MEM_BLOCK_SIZE :
    80002434:	00150513          	addi	a0,a0,1
           (size+sz) / MEM_BLOCK_SIZE + 1;
    80002438:	fe5ff06f          	j	8000241c <_Z9BytsTBlckm+0x30>

000000008000243c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB* elem){
    if(elem == nullptr) return;
    8000243c:	06050c63          	beqz	a0,800024b4 <_ZN9Scheduler3putEP3PCB+0x78>
void Scheduler::put(PCB* elem){
    80002440:	fe010113          	addi	sp,sp,-32
    80002444:	00113c23          	sd	ra,24(sp)
    80002448:	00813823          	sd	s0,16(sp)
    8000244c:	00913423          	sd	s1,8(sp)
    80002450:	02010413          	addi	s0,sp,32
    80002454:	00050493          	mv	s1,a0
    PCBNode* node = (PCBNode*) _mem_alloc(BytsTBlck(sizeof(PCBNode)));  //NEW !!!
    80002458:	01000513          	li	a0,16
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	f90080e7          	jalr	-112(ra) # 800023ec <_Z9BytsTBlckm>
    80002464:	00001097          	auipc	ra,0x1
    80002468:	2f4080e7          	jalr	756(ra) # 80003758 <_Z10_mem_allocm>
    if(node == nullptr) return; //NEMA MEMORIJE
    8000246c:	02050463          	beqz	a0,80002494 <_ZN9Scheduler3putEP3PCB+0x58>
    node->pcb = elem;
    80002470:	00953023          	sd	s1,0(a0)
    node->next = nullptr;
    80002474:	00053423          	sd	zero,8(a0)
    if(activeList == nullptr){
    80002478:	0000b797          	auipc	a5,0xb
    8000247c:	8307b783          	ld	a5,-2000(a5) # 8000cca8 <_ZN9Scheduler10activeListE>
    80002480:	02078463          	beqz	a5,800024a8 <_ZN9Scheduler3putEP3PCB+0x6c>
        activeList = node;
        return;
    }
    PCBNode* curr = activeList;
    for(; curr->next != nullptr; curr = curr->next);
    80002484:	00078713          	mv	a4,a5
    80002488:	0087b783          	ld	a5,8(a5)
    8000248c:	fe079ce3          	bnez	a5,80002484 <_ZN9Scheduler3putEP3PCB+0x48>
    curr->next = node;
    80002490:	00a73423          	sd	a0,8(a4)
}
    80002494:	01813083          	ld	ra,24(sp)
    80002498:	01013403          	ld	s0,16(sp)
    8000249c:	00813483          	ld	s1,8(sp)
    800024a0:	02010113          	addi	sp,sp,32
    800024a4:	00008067          	ret
        activeList = node;
    800024a8:	0000b797          	auipc	a5,0xb
    800024ac:	80a7b023          	sd	a0,-2048(a5) # 8000cca8 <_ZN9Scheduler10activeListE>
        return;
    800024b0:	fe5ff06f          	j	80002494 <_ZN9Scheduler3putEP3PCB+0x58>
    800024b4:	00008067          	ret

00000000800024b8 <_ZN9Scheduler3getEv>:

PCB* Scheduler::get(){
    800024b8:	fe010113          	addi	sp,sp,-32
    800024bc:	00113c23          	sd	ra,24(sp)
    800024c0:	00813823          	sd	s0,16(sp)
    800024c4:	00913423          	sd	s1,8(sp)
    800024c8:	02010413          	addi	s0,sp,32
    if(!activeList) return Kernel::idlePCB;
    800024cc:	0000a517          	auipc	a0,0xa
    800024d0:	7dc53503          	ld	a0,2012(a0) # 8000cca8 <_ZN9Scheduler10activeListE>
    800024d4:	02050a63          	beqz	a0,80002508 <_ZN9Scheduler3getEv+0x50>
    PCB* pcb = activeList->pcb;
    800024d8:	00053483          	ld	s1,0(a0)
    PCBNode* node = activeList;
    activeList = node->next;
    800024dc:	00853783          	ld	a5,8(a0)
    800024e0:	0000a717          	auipc	a4,0xa
    800024e4:	7cf73423          	sd	a5,1992(a4) # 8000cca8 <_ZN9Scheduler10activeListE>
    _mem_free(node);
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	298080e7          	jalr	664(ra) # 80003780 <_Z9_mem_freePv>
    return pcb;
    800024f0:	00048513          	mv	a0,s1
    800024f4:	01813083          	ld	ra,24(sp)
    800024f8:	01013403          	ld	s0,16(sp)
    800024fc:	00813483          	ld	s1,8(sp)
    80002500:	02010113          	addi	sp,sp,32
    80002504:	00008067          	ret
    if(!activeList) return Kernel::idlePCB;
    80002508:	0000a797          	auipc	a5,0xa
    8000250c:	7187b783          	ld	a5,1816(a5) # 8000cc20 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002510:	0007b483          	ld	s1,0(a5)
    80002514:	fddff06f          	j	800024f0 <_ZN9Scheduler3getEv+0x38>

0000000080002518 <_Z4wrapPv>:
    Thread* uMain = new Thread(&wrap, nullptr);
    uMain->join();
    return 0;
}

void wrap(void*){
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00113423          	sd	ra,8(sp)
    80002520:	00813023          	sd	s0,0(sp)
    80002524:	01010413          	addi	s0,sp,16
    userMain();
    80002528:	00004097          	auipc	ra,0x4
    8000252c:	254080e7          	jalr	596(ra) # 8000677c <_Z8userMainv>
}
    80002530:	00813083          	ld	ra,8(sp)
    80002534:	00013403          	ld	s0,0(sp)
    80002538:	01010113          	addi	sp,sp,16
    8000253c:	00008067          	ret

0000000080002540 <main>:
int main() {
    80002540:	fe010113          	addi	sp,sp,-32
    80002544:	00113c23          	sd	ra,24(sp)
    80002548:	00813823          	sd	s0,16(sp)
    8000254c:	00913423          	sd	s1,8(sp)
    80002550:	01213023          	sd	s2,0(sp)
    80002554:	02010413          	addi	s0,sp,32
    MemoryAllocator::initMemAlloc();
    80002558:	00001097          	auipc	ra,0x1
    8000255c:	e9c080e7          	jalr	-356(ra) # 800033f4 <_ZN15MemoryAllocator12initMemAllocEv>
    if(Kernel::initKernel() < 0) return -2;
    80002560:	00002097          	auipc	ra,0x2
    80002564:	9c4080e7          	jalr	-1596(ra) # 80003f24 <_ZN6Kernel10initKernelEv>
    80002568:	06054263          	bltz	a0,800025cc <main+0x8c>
    changeVT();
    8000256c:	fffff097          	auipc	ra,0xfffff
    80002570:	f4c080e7          	jalr	-180(ra) # 800014b8 <changeVT>
    kernelToUserWrapper();
    80002574:	0ff00513          	li	a0,255
    80002578:	00002097          	auipc	ra,0x2
    8000257c:	844080e7          	jalr	-1980(ra) # 80003dbc <_Z19kernelToUserWrapperm>
    Thread* uMain = new Thread(&wrap, nullptr);
    80002580:	02000513          	li	a0,32
    80002584:	00000097          	auipc	ra,0x0
    80002588:	0d8080e7          	jalr	216(ra) # 8000265c <_Znwm>
    8000258c:	00050493          	mv	s1,a0
    80002590:	00000613          	li	a2,0
    80002594:	00000597          	auipc	a1,0x0
    80002598:	f8458593          	addi	a1,a1,-124 # 80002518 <_Z4wrapPv>
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	1a0080e7          	jalr	416(ra) # 8000273c <_ZN6ThreadC1EPFvPvES0_>
    uMain->join();
    800025a4:	00048513          	mv	a0,s1
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	24c080e7          	jalr	588(ra) # 800027f4 <_ZN6Thread4joinEv>
    return 0;
    800025b0:	00000513          	li	a0,0
}
    800025b4:	01813083          	ld	ra,24(sp)
    800025b8:	01013403          	ld	s0,16(sp)
    800025bc:	00813483          	ld	s1,8(sp)
    800025c0:	00013903          	ld	s2,0(sp)
    800025c4:	02010113          	addi	sp,sp,32
    800025c8:	00008067          	ret
    if(Kernel::initKernel() < 0) return -2;
    800025cc:	ffe00513          	li	a0,-2
    800025d0:	fe5ff06f          	j	800025b4 <main+0x74>
    800025d4:	00050913          	mv	s2,a0
    Thread* uMain = new Thread(&wrap, nullptr);
    800025d8:	00048513          	mv	a0,s1
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	0d0080e7          	jalr	208(ra) # 800026ac <_ZdlPv>
    800025e4:	00090513          	mv	a0,s2
    800025e8:	0000c097          	auipc	ra,0xc
    800025ec:	810080e7          	jalr	-2032(ra) # 8000ddf8 <_Unwind_Resume>

00000000800025f0 <_ZN6Thread7wrapperEPv>:
void operator delete[] (void* address){
    mem_free(address);
}

void Thread::wrapper(void* t){
    if(t)((Thread*)t)->run();
    800025f0:	02050863          	beqz	a0,80002620 <_ZN6Thread7wrapperEPv+0x30>
void Thread::wrapper(void* t){
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00113423          	sd	ra,8(sp)
    800025fc:	00813023          	sd	s0,0(sp)
    80002600:	01010413          	addi	s0,sp,16
    if(t)((Thread*)t)->run();
    80002604:	00053783          	ld	a5,0(a0)
    80002608:	0107b783          	ld	a5,16(a5)
    8000260c:	000780e7          	jalr	a5
}
    80002610:	00813083          	ld	ra,8(sp)
    80002614:	00013403          	ld	s0,0(sp)
    80002618:	01010113          	addi	sp,sp,16
    8000261c:	00008067          	ret
    80002620:	00008067          	ret

0000000080002624 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore (unsigned init){
    int res = sem_open((sem_t*) &myHandle,init);
    if(res){return;}
}
Semaphore::~Semaphore (){
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00113423          	sd	ra,8(sp)
    8000262c:	00813023          	sd	s0,0(sp)
    80002630:	01010413          	addi	s0,sp,16
    80002634:	0000a797          	auipc	a5,0xa
    80002638:	48c78793          	addi	a5,a5,1164 # 8000cac0 <_ZTV9Semaphore+0x10>
    8000263c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002640:	00853503          	ld	a0,8(a0)
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	32c080e7          	jalr	812(ra) # 80001970 <sem_close>
    myHandle = nullptr;
}
    8000264c:	00813083          	ld	ra,8(sp)
    80002650:	00013403          	ld	s0,0(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret

000000008000265c <_Znwm>:
void* operator new(size_t size){
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00113423          	sd	ra,8(sp)
    80002664:	00813023          	sd	s0,0(sp)
    80002668:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	fdc080e7          	jalr	-36(ra) # 80001648 <mem_alloc>
}
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <_Znam>:
void* operator new[](size_t size){
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	fb4080e7          	jalr	-76(ra) # 80001648 <mem_alloc>
}
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZdlPv>:
void operator delete (void* address){
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	00813023          	sd	s0,0(sp)
    800026b8:	01010413          	addi	s0,sp,16
    mem_free(address);
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	fe8080e7          	jalr	-24(ra) # 800016a4 <mem_free>
}
    800026c4:	00813083          	ld	ra,8(sp)
    800026c8:	00013403          	ld	s0,0(sp)
    800026cc:	01010113          	addi	sp,sp,16
    800026d0:	00008067          	ret

00000000800026d4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore (){
    800026d4:	fe010113          	addi	sp,sp,-32
    800026d8:	00113c23          	sd	ra,24(sp)
    800026dc:	00813823          	sd	s0,16(sp)
    800026e0:	00913423          	sd	s1,8(sp)
    800026e4:	02010413          	addi	s0,sp,32
    800026e8:	00050493          	mv	s1,a0
}
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	f38080e7          	jalr	-200(ra) # 80002624 <_ZN9SemaphoreD1Ev>
    800026f4:	00048513          	mv	a0,s1
    800026f8:	00000097          	auipc	ra,0x0
    800026fc:	fb4080e7          	jalr	-76(ra) # 800026ac <_ZdlPv>
    80002700:	01813083          	ld	ra,24(sp)
    80002704:	01013403          	ld	s0,16(sp)
    80002708:	00813483          	ld	s1,8(sp)
    8000270c:	02010113          	addi	sp,sp,32
    80002710:	00008067          	ret

0000000080002714 <_ZdaPv>:
void operator delete[] (void* address){
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00113423          	sd	ra,8(sp)
    8000271c:	00813023          	sd	s0,0(sp)
    80002720:	01010413          	addi	s0,sp,16
    mem_free(address);
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	f80080e7          	jalr	-128(ra) # 800016a4 <mem_free>
}
    8000272c:	00813083          	ld	ra,8(sp)
    80002730:	00013403          	ld	s0,0(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg) {
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00113423          	sd	ra,8(sp)
    80002744:	00813023          	sd	s0,0(sp)
    80002748:	01010413          	addi	s0,sp,16
    8000274c:	0000a797          	auipc	a5,0xa
    80002750:	34c78793          	addi	a5,a5,844 # 8000ca98 <_ZTV6Thread+0x10>
    80002754:	00f53023          	sd	a5,0(a0)
    80002758:	00b53823          	sd	a1,16(a0)
    8000275c:	00c53c23          	sd	a2,24(a0)
    int res = thread_create((thread_t*) &myHandle,body,arg);
    80002760:	00850513          	addi	a0,a0,8
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	f94080e7          	jalr	-108(ra) # 800016f8 <thread_create>
}
    8000276c:	00813083          	ld	ra,8(sp)
    80002770:	00013403          	ld	s0,0(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret

000000008000277c <_ZN6ThreadC1Ev>:
Thread::Thread() : body(wrapper), arg(this){
    8000277c:	ff010113          	addi	sp,sp,-16
    80002780:	00113423          	sd	ra,8(sp)
    80002784:	00813023          	sd	s0,0(sp)
    80002788:	01010413          	addi	s0,sp,16
    8000278c:	0000a797          	auipc	a5,0xa
    80002790:	30c78793          	addi	a5,a5,780 # 8000ca98 <_ZTV6Thread+0x10>
    80002794:	00f53023          	sd	a5,0(a0)
    80002798:	00000597          	auipc	a1,0x0
    8000279c:	e5858593          	addi	a1,a1,-424 # 800025f0 <_ZN6Thread7wrapperEPv>
    800027a0:	00b53823          	sd	a1,16(a0)
    800027a4:	00a53c23          	sd	a0,24(a0)
    int res = thread_create((thread_t*) &myHandle,body,arg);
    800027a8:	00050613          	mv	a2,a0
    800027ac:	00850513          	addi	a0,a0,8
    800027b0:	fffff097          	auipc	ra,0xfffff
    800027b4:	f48080e7          	jalr	-184(ra) # 800016f8 <thread_create>
}
    800027b8:	00813083          	ld	ra,8(sp)
    800027bc:	00013403          	ld	s0,0(sp)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret

00000000800027c8 <_ZN6Thread5startEv>:
int Thread::start () {
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00113423          	sd	ra,8(sp)
    800027d0:	00813023          	sd	s0,0(sp)
    800027d4:	01010413          	addi	s0,sp,16
    return thread_start(myHandle);
    800027d8:	00853503          	ld	a0,8(a0)
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	050080e7          	jalr	80(ra) # 8000182c <thread_start>
}
    800027e4:	00813083          	ld	ra,8(sp)
    800027e8:	00013403          	ld	s0,0(sp)
    800027ec:	01010113          	addi	sp,sp,16
    800027f0:	00008067          	ret

00000000800027f4 <_ZN6Thread4joinEv>:
void Thread::join(){
    800027f4:	ff010113          	addi	sp,sp,-16
    800027f8:	00113423          	sd	ra,8(sp)
    800027fc:	00813023          	sd	s0,0(sp)
    80002800:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80002804:	00853503          	ld	a0,8(a0)
    80002808:	fffff097          	auipc	ra,0xfffff
    8000280c:	070080e7          	jalr	112(ra) # 80001878 <thread_join>
}
    80002810:	00813083          	ld	ra,8(sp)
    80002814:	00013403          	ld	s0,0(sp)
    80002818:	01010113          	addi	sp,sp,16
    8000281c:	00008067          	ret

0000000080002820 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002820:	fe010113          	addi	sp,sp,-32
    80002824:	00113c23          	sd	ra,24(sp)
    80002828:	00813823          	sd	s0,16(sp)
    8000282c:	00913423          	sd	s1,8(sp)
    80002830:	02010413          	addi	s0,sp,32
    80002834:	00050493          	mv	s1,a0
    80002838:	0000a797          	auipc	a5,0xa
    8000283c:	26078793          	addi	a5,a5,608 # 8000ca98 <_ZTV6Thread+0x10>
    80002840:	00f53023          	sd	a5,0(a0)
    this->join();
    80002844:	00000097          	auipc	ra,0x0
    80002848:	fb0080e7          	jalr	-80(ra) # 800027f4 <_ZN6Thread4joinEv>
    deleteThread(this->myHandle);
    8000284c:	0084b503          	ld	a0,8(s1)
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	074080e7          	jalr	116(ra) # 800018c4 <deleteThread>
}
    80002858:	01813083          	ld	ra,24(sp)
    8000285c:	01013403          	ld	s0,16(sp)
    80002860:	00813483          	ld	s1,8(sp)
    80002864:	02010113          	addi	sp,sp,32
    80002868:	00008067          	ret

000000008000286c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000286c:	fe010113          	addi	sp,sp,-32
    80002870:	00113c23          	sd	ra,24(sp)
    80002874:	00813823          	sd	s0,16(sp)
    80002878:	00913423          	sd	s1,8(sp)
    8000287c:	02010413          	addi	s0,sp,32
    80002880:	00050493          	mv	s1,a0
}
    80002884:	00000097          	auipc	ra,0x0
    80002888:	f9c080e7          	jalr	-100(ra) # 80002820 <_ZN6ThreadD1Ev>
    8000288c:	00048513          	mv	a0,s1
    80002890:	00000097          	auipc	ra,0x0
    80002894:	e1c080e7          	jalr	-484(ra) # 800026ac <_ZdlPv>
    80002898:	01813083          	ld	ra,24(sp)
    8000289c:	01013403          	ld	s0,16(sp)
    800028a0:	00813483          	ld	s1,8(sp)
    800028a4:	02010113          	addi	sp,sp,32
    800028a8:	00008067          	ret

00000000800028ac <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800028ac:	ff010113          	addi	sp,sp,-16
    800028b0:	00113423          	sd	ra,8(sp)
    800028b4:	00813023          	sd	s0,0(sp)
    800028b8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800028bc:	fffff097          	auipc	ra,0xfffff
    800028c0:	f20080e7          	jalr	-224(ra) # 800017dc <thread_dispatch>
}
    800028c4:	00813083          	ld	ra,8(sp)
    800028c8:	00013403          	ld	s0,0(sp)
    800028cc:	01010113          	addi	sp,sp,16
    800028d0:	00008067          	ret

00000000800028d4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore (unsigned init){
    800028d4:	ff010113          	addi	sp,sp,-16
    800028d8:	00113423          	sd	ra,8(sp)
    800028dc:	00813023          	sd	s0,0(sp)
    800028e0:	01010413          	addi	s0,sp,16
    800028e4:	0000a797          	auipc	a5,0xa
    800028e8:	1dc78793          	addi	a5,a5,476 # 8000cac0 <_ZTV9Semaphore+0x10>
    800028ec:	00f53023          	sd	a5,0(a0)
    int res = sem_open((sem_t*) &myHandle,init);
    800028f0:	00850513          	addi	a0,a0,8
    800028f4:	fffff097          	auipc	ra,0xfffff
    800028f8:	024080e7          	jalr	36(ra) # 80001918 <sem_open>
}
    800028fc:	00813083          	ld	ra,8(sp)
    80002900:	00013403          	ld	s0,0(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN9Semaphore4waitEv>:
int Semaphore::wait (){
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00113423          	sd	ra,8(sp)
    80002914:	00813023          	sd	s0,0(sp)
    80002918:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000291c:	00853503          	ld	a0,8(a0)
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	0a4080e7          	jalr	164(ra) # 800019c4 <sem_wait>
}
    80002928:	00813083          	ld	ra,8(sp)
    8000292c:	00013403          	ld	s0,0(sp)
    80002930:	01010113          	addi	sp,sp,16
    80002934:	00008067          	ret

0000000080002938 <_ZN9Semaphore6signalEv>:
int Semaphore::signal (){
    80002938:	ff010113          	addi	sp,sp,-16
    8000293c:	00113423          	sd	ra,8(sp)
    80002940:	00813023          	sd	s0,0(sp)
    80002944:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002948:	00853503          	ld	a0,8(a0)
    8000294c:	fffff097          	auipc	ra,0xfffff
    80002950:	0cc080e7          	jalr	204(ra) # 80001a18 <sem_signal>
}
    80002954:	00813083          	ld	ra,8(sp)
    80002958:	00013403          	ld	s0,0(sp)
    8000295c:	01010113          	addi	sp,sp,16
    80002960:	00008067          	ret

0000000080002964 <_ZN7Console4getcEv>:
int Thread::sleep (time_t){

    return 0;
}
*/
char Console::getc (){
    80002964:	ff010113          	addi	sp,sp,-16
    80002968:	00113423          	sd	ra,8(sp)
    8000296c:	00813023          	sd	s0,0(sp)
    80002970:	01010413          	addi	s0,sp,16
    return ::getc();
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	14c080e7          	jalr	332(ra) # 80001ac0 <getc>
}
    8000297c:	00813083          	ld	ra,8(sp)
    80002980:	00013403          	ld	s0,0(sp)
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00008067          	ret

000000008000298c <_ZN7Console4putcEc>:

void Console::putc (char c){
    8000298c:	ff010113          	addi	sp,sp,-16
    80002990:	00113423          	sd	ra,8(sp)
    80002994:	00813023          	sd	s0,0(sp)
    80002998:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000299c:	fffff097          	auipc	ra,0xfffff
    800029a0:	16c080e7          	jalr	364(ra) # 80001b08 <putc>
    800029a4:	00813083          	ld	ra,8(sp)
    800029a8:	00013403          	ld	s0,0(sp)
    800029ac:	01010113          	addi	sp,sp,16
    800029b0:	00008067          	ret

00000000800029b4 <_ZN6Thread3runEv>:
        void join();
        static void dispatch ();
        //static int sleep (time_t);
        protected:
        Thread ();
        virtual void run () {}
    800029b4:	ff010113          	addi	sp,sp,-16
    800029b8:	00813423          	sd	s0,8(sp)
    800029bc:	01010413          	addi	s0,sp,16
    800029c0:	00813403          	ld	s0,8(sp)
    800029c4:	01010113          	addi	sp,sp,16
    800029c8:	00008067          	ret

00000000800029cc <_Z3powii>:
        if(number % pow((uint64) 10,i) == number) break;
    }
    return i;
}

int pow(int number, int pow){
    800029cc:	ff010113          	addi	sp,sp,-16
    800029d0:	00813423          	sd	s0,8(sp)
    800029d4:	01010413          	addi	s0,sp,16
    if(pow<0) return 0;
    800029d8:	0205c263          	bltz	a1,800029fc <_Z3powii+0x30>
    800029dc:	00050713          	mv	a4,a0
    if(pow==0) return 1;
    800029e0:	02058663          	beqz	a1,80002a0c <_Z3powii+0x40>
    if(pow==1) return number;
    800029e4:	00100793          	li	a5,1
    800029e8:	00f58c63          	beq	a1,a5,80002a00 <_Z3powii+0x34>
    int res=number;
    for(int i=1;i<pow;i++)
    800029ec:	00b7da63          	bge	a5,a1,80002a00 <_Z3powii+0x34>
        res*=number;
    800029f0:	02e5053b          	mulw	a0,a0,a4
    for(int i=1;i<pow;i++)
    800029f4:	0017879b          	addiw	a5,a5,1
    800029f8:	ff5ff06f          	j	800029ec <_Z3powii+0x20>
    if(pow<0) return 0;
    800029fc:	00000513          	li	a0,0
    return res;
}
    80002a00:	00813403          	ld	s0,8(sp)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret
    if(pow==0) return 1;
    80002a0c:	00100513          	li	a0,1
    80002a10:	ff1ff06f          	j	80002a00 <_Z3powii+0x34>

0000000080002a14 <_Z6getNumiii>:
int getNum(int number, int pos, int length){
    80002a14:	fe010113          	addi	sp,sp,-32
    80002a18:	00113c23          	sd	ra,24(sp)
    80002a1c:	00813823          	sd	s0,16(sp)
    80002a20:	00913423          	sd	s1,8(sp)
    80002a24:	02010413          	addi	s0,sp,32
    80002a28:	00050493          	mv	s1,a0
    int del = pow(10,length-pos-1);
    80002a2c:	40b605bb          	subw	a1,a2,a1
    80002a30:	fff5859b          	addiw	a1,a1,-1
    80002a34:	00a00513          	li	a0,10
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	f94080e7          	jalr	-108(ra) # 800029cc <_Z3powii>
    return (number/del)%10;
    80002a40:	02a4c53b          	divw	a0,s1,a0
}
    80002a44:	00a00793          	li	a5,10
    80002a48:	02f5653b          	remw	a0,a0,a5
    80002a4c:	01813083          	ld	ra,24(sp)
    80002a50:	01013403          	ld	s0,16(sp)
    80002a54:	00813483          	ld	s1,8(sp)
    80002a58:	02010113          	addi	sp,sp,32
    80002a5c:	00008067          	ret

0000000080002a60 <_Z12getNumLengthi>:
int getNumLength(int number){
    80002a60:	fe010113          	addi	sp,sp,-32
    80002a64:	00113c23          	sd	ra,24(sp)
    80002a68:	00813823          	sd	s0,16(sp)
    80002a6c:	00913423          	sd	s1,8(sp)
    80002a70:	01213023          	sd	s2,0(sp)
    80002a74:	02010413          	addi	s0,sp,32
    80002a78:	00050913          	mv	s2,a0
    int i=1;
    80002a7c:	00100493          	li	s1,1
        if(number % pow(10,i) == number) break;
    80002a80:	00048593          	mv	a1,s1
    80002a84:	00a00513          	li	a0,10
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	f44080e7          	jalr	-188(ra) # 800029cc <_Z3powii>
    80002a90:	02a9653b          	remw	a0,s2,a0
    80002a94:	01250663          	beq	a0,s2,80002aa0 <_Z12getNumLengthi+0x40>
    for(;;i++){
    80002a98:	0014849b          	addiw	s1,s1,1
        if(number % pow(10,i) == number) break;
    80002a9c:	fe5ff06f          	j	80002a80 <_Z12getNumLengthi+0x20>
}
    80002aa0:	00048513          	mv	a0,s1
    80002aa4:	01813083          	ld	ra,24(sp)
    80002aa8:	01013403          	ld	s0,16(sp)
    80002aac:	00813483          	ld	s1,8(sp)
    80002ab0:	00013903          	ld	s2,0(sp)
    80002ab4:	02010113          	addi	sp,sp,32
    80002ab8:	00008067          	ret

0000000080002abc <_Z10intToCharsi>:
char* intToChars(int number){
    80002abc:	fd010113          	addi	sp,sp,-48
    80002ac0:	02113423          	sd	ra,40(sp)
    80002ac4:	02813023          	sd	s0,32(sp)
    80002ac8:	00913c23          	sd	s1,24(sp)
    80002acc:	01213823          	sd	s2,16(sp)
    80002ad0:	01313423          	sd	s3,8(sp)
    80002ad4:	01413023          	sd	s4,0(sp)
    80002ad8:	03010413          	addi	s0,sp,48
    80002adc:	00050a13          	mv	s4,a0
    int i=getNumLength(number);
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	f80080e7          	jalr	-128(ra) # 80002a60 <_Z12getNumLengthi>
    80002ae8:	00050913          	mv	s2,a0
    char* chars = new char[i];
    80002aec:	00000097          	auipc	ra,0x0
    80002af0:	b98080e7          	jalr	-1128(ra) # 80002684 <_Znam>
    80002af4:	00050993          	mv	s3,a0
    if(!chars) return nullptr;
    80002af8:	02050a63          	beqz	a0,80002b2c <_Z10intToCharsi+0x70>
    for(int j=0;j<i;j++){
    80002afc:	00000493          	li	s1,0
    80002b00:	0324d663          	bge	s1,s2,80002b2c <_Z10intToCharsi+0x70>
        chars[j] = (char) (0x30+getNum(number,j,i));
    80002b04:	00090613          	mv	a2,s2
    80002b08:	00048593          	mv	a1,s1
    80002b0c:	000a0513          	mv	a0,s4
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	f04080e7          	jalr	-252(ra) # 80002a14 <_Z6getNumiii>
    80002b18:	009987b3          	add	a5,s3,s1
    80002b1c:	0305051b          	addiw	a0,a0,48
    80002b20:	00a78023          	sb	a0,0(a5)
    for(int j=0;j<i;j++){
    80002b24:	0014849b          	addiw	s1,s1,1
    80002b28:	fd9ff06f          	j	80002b00 <_Z10intToCharsi+0x44>
}
    80002b2c:	00098513          	mv	a0,s3
    80002b30:	02813083          	ld	ra,40(sp)
    80002b34:	02013403          	ld	s0,32(sp)
    80002b38:	01813483          	ld	s1,24(sp)
    80002b3c:	01013903          	ld	s2,16(sp)
    80002b40:	00813983          	ld	s3,8(sp)
    80002b44:	00013a03          	ld	s4,0(sp)
    80002b48:	03010113          	addi	sp,sp,48
    80002b4c:	00008067          	ret

0000000080002b50 <_Z3powmm>:

uint64 pow(uint64 number, uint64 pow){
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00813423          	sd	s0,8(sp)
    80002b58:	01010413          	addi	s0,sp,16
    if(pow==0) return 1;
    80002b5c:	02058063          	beqz	a1,80002b7c <_Z3powmm+0x2c>
    80002b60:	00050713          	mv	a4,a0
    if(pow==1) return number;
    80002b64:	00100793          	li	a5,1
    80002b68:	00f58c63          	beq	a1,a5,80002b80 <_Z3powmm+0x30>
    uint64 res=number;
    for(uint64 i=1;i<pow;i++)
    80002b6c:	00b7fa63          	bgeu	a5,a1,80002b80 <_Z3powmm+0x30>
        res*=number;
    80002b70:	02e50533          	mul	a0,a0,a4
    for(uint64 i=1;i<pow;i++)
    80002b74:	00178793          	addi	a5,a5,1
    80002b78:	ff5ff06f          	j	80002b6c <_Z3powmm+0x1c>
    if(pow==0) return 1;
    80002b7c:	00100513          	li	a0,1
    return res;
}
    80002b80:	00813403          	ld	s0,8(sp)
    80002b84:	01010113          	addi	sp,sp,16
    80002b88:	00008067          	ret

0000000080002b8c <_Z6getNummmm>:
uint64 getNum(uint64 number, uint64 pos, uint64 length){
    80002b8c:	fe010113          	addi	sp,sp,-32
    80002b90:	00113c23          	sd	ra,24(sp)
    80002b94:	00813823          	sd	s0,16(sp)
    80002b98:	00913423          	sd	s1,8(sp)
    80002b9c:	02010413          	addi	s0,sp,32
    80002ba0:	00050493          	mv	s1,a0
    uint64 del = pow((uint64)10,length-pos-1);
    80002ba4:	40b605b3          	sub	a1,a2,a1
    80002ba8:	fff58593          	addi	a1,a1,-1
    80002bac:	00a00513          	li	a0,10
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	fa0080e7          	jalr	-96(ra) # 80002b50 <_Z3powmm>
    return (number/del)%10;
    80002bb8:	02a4d533          	divu	a0,s1,a0
}
    80002bbc:	00a00793          	li	a5,10
    80002bc0:	02f57533          	remu	a0,a0,a5
    80002bc4:	01813083          	ld	ra,24(sp)
    80002bc8:	01013403          	ld	s0,16(sp)
    80002bcc:	00813483          	ld	s1,8(sp)
    80002bd0:	02010113          	addi	sp,sp,32
    80002bd4:	00008067          	ret

0000000080002bd8 <_Z12getNumLengthm>:
uint64 getNumLength(uint64 number){
    80002bd8:	fe010113          	addi	sp,sp,-32
    80002bdc:	00113c23          	sd	ra,24(sp)
    80002be0:	00813823          	sd	s0,16(sp)
    80002be4:	00913423          	sd	s1,8(sp)
    80002be8:	01213023          	sd	s2,0(sp)
    80002bec:	02010413          	addi	s0,sp,32
    80002bf0:	00050913          	mv	s2,a0
    uint64 i=1;
    80002bf4:	00100493          	li	s1,1
        if(number % pow((uint64) 10,i) == number) break;
    80002bf8:	00048593          	mv	a1,s1
    80002bfc:	00a00513          	li	a0,10
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	f50080e7          	jalr	-176(ra) # 80002b50 <_Z3powmm>
    80002c08:	02a97533          	remu	a0,s2,a0
    80002c0c:	01250663          	beq	a0,s2,80002c18 <_Z12getNumLengthm+0x40>
    for(;;i++){
    80002c10:	00148493          	addi	s1,s1,1
        if(number % pow((uint64) 10,i) == number) break;
    80002c14:	fe5ff06f          	j	80002bf8 <_Z12getNumLengthm+0x20>
}
    80002c18:	00048513          	mv	a0,s1
    80002c1c:	01813083          	ld	ra,24(sp)
    80002c20:	01013403          	ld	s0,16(sp)
    80002c24:	00813483          	ld	s1,8(sp)
    80002c28:	00013903          	ld	s2,0(sp)
    80002c2c:	02010113          	addi	sp,sp,32
    80002c30:	00008067          	ret

0000000080002c34 <_Z13uint64ToCharsm>:
char* uint64ToChars(uint64 number){
    80002c34:	fd010113          	addi	sp,sp,-48
    80002c38:	02113423          	sd	ra,40(sp)
    80002c3c:	02813023          	sd	s0,32(sp)
    80002c40:	00913c23          	sd	s1,24(sp)
    80002c44:	01213823          	sd	s2,16(sp)
    80002c48:	01313423          	sd	s3,8(sp)
    80002c4c:	01413023          	sd	s4,0(sp)
    80002c50:	03010413          	addi	s0,sp,48
    80002c54:	00050a13          	mv	s4,a0
    uint64 i= getNumLength(number);
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	f80080e7          	jalr	-128(ra) # 80002bd8 <_Z12getNumLengthm>
    80002c60:	00050913          	mv	s2,a0
    char* chars = new char[i];
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	a20080e7          	jalr	-1504(ra) # 80002684 <_Znam>
    80002c6c:	00050993          	mv	s3,a0
    if(!chars) return nullptr;
    80002c70:	02050a63          	beqz	a0,80002ca4 <_Z13uint64ToCharsm+0x70>
    for(uint64 j=0;j<i;j++){
    80002c74:	00000493          	li	s1,0
    80002c78:	0324f663          	bgeu	s1,s2,80002ca4 <_Z13uint64ToCharsm+0x70>
        chars[j] = (char) (0x30+getNum(number,j,i));
    80002c7c:	00090613          	mv	a2,s2
    80002c80:	00048593          	mv	a1,s1
    80002c84:	000a0513          	mv	a0,s4
    80002c88:	00000097          	auipc	ra,0x0
    80002c8c:	f04080e7          	jalr	-252(ra) # 80002b8c <_Z6getNummmm>
    80002c90:	009987b3          	add	a5,s3,s1
    80002c94:	0305051b          	addiw	a0,a0,48
    80002c98:	00a78023          	sb	a0,0(a5)
    for(uint64 j=0;j<i;j++){
    80002c9c:	00148493          	addi	s1,s1,1
    80002ca0:	fd9ff06f          	j	80002c78 <_Z13uint64ToCharsm+0x44>
}
    80002ca4:	00098513          	mv	a0,s3
    80002ca8:	02813083          	ld	ra,40(sp)
    80002cac:	02013403          	ld	s0,32(sp)
    80002cb0:	01813483          	ld	s1,24(sp)
    80002cb4:	01013903          	ld	s2,16(sp)
    80002cb8:	00813983          	ld	s3,8(sp)
    80002cbc:	00013a03          	ld	s4,0(sp)
    80002cc0:	03010113          	addi	sp,sp,48
    80002cc4:	00008067          	ret

0000000080002cc8 <_Z11printNumberi>:

void printNumber(int number){
    80002cc8:	fd010113          	addi	sp,sp,-48
    80002ccc:	02113423          	sd	ra,40(sp)
    80002cd0:	02813023          	sd	s0,32(sp)
    80002cd4:	00913c23          	sd	s1,24(sp)
    80002cd8:	01213823          	sd	s2,16(sp)
    80002cdc:	01313423          	sd	s3,8(sp)
    80002ce0:	03010413          	addi	s0,sp,48
    80002ce4:	00050913          	mv	s2,a0
    if(number<0){
    80002ce8:	04054063          	bltz	a0,80002d28 <_Z11printNumberi+0x60>
        putc('-');
        number *= -1;
    }
    char* num = intToChars(number);
    80002cec:	00090513          	mv	a0,s2
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	dcc080e7          	jalr	-564(ra) # 80002abc <_Z10intToCharsi>
    80002cf8:	00050993          	mv	s3,a0
    for(int i=0;i< getNumLength(number);i++)
    80002cfc:	00000493          	li	s1,0
    80002d00:	00090513          	mv	a0,s2
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	d5c080e7          	jalr	-676(ra) # 80002a60 <_Z12getNumLengthi>
    80002d0c:	02a4d863          	bge	s1,a0,80002d3c <_Z11printNumberi+0x74>
        putc(num[i]);
    80002d10:	009987b3          	add	a5,s3,s1
    80002d14:	0007c503          	lbu	a0,0(a5)
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	df0080e7          	jalr	-528(ra) # 80001b08 <putc>
    for(int i=0;i< getNumLength(number);i++)
    80002d20:	0014849b          	addiw	s1,s1,1
    80002d24:	fddff06f          	j	80002d00 <_Z11printNumberi+0x38>
        putc('-');
    80002d28:	02d00513          	li	a0,45
    80002d2c:	fffff097          	auipc	ra,0xfffff
    80002d30:	ddc080e7          	jalr	-548(ra) # 80001b08 <putc>
        number *= -1;
    80002d34:	4120093b          	negw	s2,s2
    80002d38:	fb5ff06f          	j	80002cec <_Z11printNumberi+0x24>
    delete num;
    80002d3c:	00098863          	beqz	s3,80002d4c <_Z11printNumberi+0x84>
    80002d40:	00098513          	mv	a0,s3
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	968080e7          	jalr	-1688(ra) # 800026ac <_ZdlPv>
}
    80002d4c:	02813083          	ld	ra,40(sp)
    80002d50:	02013403          	ld	s0,32(sp)
    80002d54:	01813483          	ld	s1,24(sp)
    80002d58:	01013903          	ld	s2,16(sp)
    80002d5c:	00813983          	ld	s3,8(sp)
    80002d60:	03010113          	addi	sp,sp,48
    80002d64:	00008067          	ret

0000000080002d68 <_Z11printNumberPi>:

void printNumber(int* number){
    80002d68:	ff010113          	addi	sp,sp,-16
    80002d6c:	00113423          	sd	ra,8(sp)
    80002d70:	00813023          	sd	s0,0(sp)
    80002d74:	01010413          	addi	s0,sp,16
    printNumber(*number);
    80002d78:	00052503          	lw	a0,0(a0)
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	f4c080e7          	jalr	-180(ra) # 80002cc8 <_Z11printNumberi>
}
    80002d84:	00813083          	ld	ra,8(sp)
    80002d88:	00013403          	ld	s0,0(sp)
    80002d8c:	01010113          	addi	sp,sp,16
    80002d90:	00008067          	ret

0000000080002d94 <_Z11printNumberm>:

void printNumber(uint64 number){
    80002d94:	fd010113          	addi	sp,sp,-48
    80002d98:	02113423          	sd	ra,40(sp)
    80002d9c:	02813023          	sd	s0,32(sp)
    80002da0:	00913c23          	sd	s1,24(sp)
    80002da4:	01213823          	sd	s2,16(sp)
    80002da8:	01313423          	sd	s3,8(sp)
    80002dac:	03010413          	addi	s0,sp,48
    80002db0:	00050993          	mv	s3,a0
    char* num = uint64ToChars(number);
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	e80080e7          	jalr	-384(ra) # 80002c34 <_Z13uint64ToCharsm>
    80002dbc:	00050913          	mv	s2,a0
    for(uint64 i=0;i< getNumLength(number);i++)
    80002dc0:	00000493          	li	s1,0
    80002dc4:	00098513          	mv	a0,s3
    80002dc8:	00000097          	auipc	ra,0x0
    80002dcc:	e10080e7          	jalr	-496(ra) # 80002bd8 <_Z12getNumLengthm>
    80002dd0:	00a4fe63          	bgeu	s1,a0,80002dec <_Z11printNumberm+0x58>
        putc(num[i]);
    80002dd4:	009907b3          	add	a5,s2,s1
    80002dd8:	0007c503          	lbu	a0,0(a5)
    80002ddc:	fffff097          	auipc	ra,0xfffff
    80002de0:	d2c080e7          	jalr	-724(ra) # 80001b08 <putc>
    for(uint64 i=0;i< getNumLength(number);i++)
    80002de4:	00148493          	addi	s1,s1,1
    80002de8:	fddff06f          	j	80002dc4 <_Z11printNumberm+0x30>
    delete num;
    80002dec:	00090863          	beqz	s2,80002dfc <_Z11printNumberm+0x68>
    80002df0:	00090513          	mv	a0,s2
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	8b8080e7          	jalr	-1864(ra) # 800026ac <_ZdlPv>
}
    80002dfc:	02813083          	ld	ra,40(sp)
    80002e00:	02013403          	ld	s0,32(sp)
    80002e04:	01813483          	ld	s1,24(sp)
    80002e08:	01013903          	ld	s2,16(sp)
    80002e0c:	00813983          	ld	s3,8(sp)
    80002e10:	03010113          	addi	sp,sp,48
    80002e14:	00008067          	ret

0000000080002e18 <_Z15getStringLengthPc>:

int getStringLength(char string[]){
    80002e18:	ff010113          	addi	sp,sp,-16
    80002e1c:	00813423          	sd	s0,8(sp)
    80002e20:	01010413          	addi	s0,sp,16
    80002e24:	00050693          	mv	a3,a0
    int length=0;
    for(int i=0;string[i] != '\0';i++)
    80002e28:	00000793          	li	a5,0
    int length=0;
    80002e2c:	00000513          	li	a0,0
    for(int i=0;string[i] != '\0';i++)
    80002e30:	00f68733          	add	a4,a3,a5
    80002e34:	00074703          	lbu	a4,0(a4)
    80002e38:	00070863          	beqz	a4,80002e48 <_Z15getStringLengthPc+0x30>
        length++;
    80002e3c:	0015051b          	addiw	a0,a0,1
    for(int i=0;string[i] != '\0';i++)
    80002e40:	0017879b          	addiw	a5,a5,1
    80002e44:	fedff06f          	j	80002e30 <_Z15getStringLengthPc+0x18>
    return length;
}
    80002e48:	00813403          	ld	s0,8(sp)
    80002e4c:	01010113          	addi	sp,sp,16
    80002e50:	00008067          	ret

0000000080002e54 <_Z6printfPc>:

void printf(char string[]){
    80002e54:	fe010113          	addi	sp,sp,-32
    80002e58:	00113c23          	sd	ra,24(sp)
    80002e5c:	00813823          	sd	s0,16(sp)
    80002e60:	00913423          	sd	s1,8(sp)
    80002e64:	01213023          	sd	s2,0(sp)
    80002e68:	02010413          	addi	s0,sp,32
    80002e6c:	00050913          	mv	s2,a0
    for(int i=0;i< getStringLength(string);i++)
    80002e70:	00000493          	li	s1,0
    80002e74:	00090513          	mv	a0,s2
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	fa0080e7          	jalr	-96(ra) # 80002e18 <_Z15getStringLengthPc>
    80002e80:	00a4de63          	bge	s1,a0,80002e9c <_Z6printfPc+0x48>
        putc(string[i]);
    80002e84:	009907b3          	add	a5,s2,s1
    80002e88:	0007c503          	lbu	a0,0(a5)
    80002e8c:	fffff097          	auipc	ra,0xfffff
    80002e90:	c7c080e7          	jalr	-900(ra) # 80001b08 <putc>
    for(int i=0;i< getStringLength(string);i++)
    80002e94:	0014849b          	addiw	s1,s1,1
    80002e98:	fddff06f          	j	80002e74 <_Z6printfPc+0x20>
}
    80002e9c:	01813083          	ld	ra,24(sp)
    80002ea0:	01013403          	ld	s0,16(sp)
    80002ea4:	00813483          	ld	s1,8(sp)
    80002ea8:	00013903          	ld	s2,0(sp)
    80002eac:	02010113          	addi	sp,sp,32
    80002eb0:	00008067          	ret

0000000080002eb4 <_Z15getStringLengthPKc>:

int getStringLength(const char string[]){
    80002eb4:	ff010113          	addi	sp,sp,-16
    80002eb8:	00813423          	sd	s0,8(sp)
    80002ebc:	01010413          	addi	s0,sp,16
    80002ec0:	00050693          	mv	a3,a0
    int length=0;
    for(int i=0;string[i] != '\0';i++)
    80002ec4:	00000793          	li	a5,0
    int length=0;
    80002ec8:	00000513          	li	a0,0
    for(int i=0;string[i] != '\0';i++)
    80002ecc:	00f68733          	add	a4,a3,a5
    80002ed0:	00074703          	lbu	a4,0(a4)
    80002ed4:	00070863          	beqz	a4,80002ee4 <_Z15getStringLengthPKc+0x30>
        length++;
    80002ed8:	0015051b          	addiw	a0,a0,1
    for(int i=0;string[i] != '\0';i++)
    80002edc:	0017879b          	addiw	a5,a5,1
    80002ee0:	fedff06f          	j	80002ecc <_Z15getStringLengthPKc+0x18>
    return length;
}
    80002ee4:	00813403          	ld	s0,8(sp)
    80002ee8:	01010113          	addi	sp,sp,16
    80002eec:	00008067          	ret

0000000080002ef0 <_Z6printfPKc>:

void printf(const char string[]){
    80002ef0:	fe010113          	addi	sp,sp,-32
    80002ef4:	00113c23          	sd	ra,24(sp)
    80002ef8:	00813823          	sd	s0,16(sp)
    80002efc:	00913423          	sd	s1,8(sp)
    80002f00:	01213023          	sd	s2,0(sp)
    80002f04:	02010413          	addi	s0,sp,32
    80002f08:	00050913          	mv	s2,a0
    for(int i=0;i< getStringLength(string);i++)
    80002f0c:	00000493          	li	s1,0
    80002f10:	00090513          	mv	a0,s2
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	fa0080e7          	jalr	-96(ra) # 80002eb4 <_Z15getStringLengthPKc>
    80002f1c:	00a4de63          	bge	s1,a0,80002f38 <_Z6printfPKc+0x48>
        putc(string[i]);
    80002f20:	009907b3          	add	a5,s2,s1
    80002f24:	0007c503          	lbu	a0,0(a5)
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	be0080e7          	jalr	-1056(ra) # 80001b08 <putc>
    for(int i=0;i< getStringLength(string);i++)
    80002f30:	0014849b          	addiw	s1,s1,1
    80002f34:	fddff06f          	j	80002f10 <_Z6printfPKc+0x20>
}
    80002f38:	01813083          	ld	ra,24(sp)
    80002f3c:	01013403          	ld	s0,16(sp)
    80002f40:	00813483          	ld	s1,8(sp)
    80002f44:	00013903          	ld	s2,0(sp)
    80002f48:	02010113          	addi	sp,sp,32
    80002f4c:	00008067          	ret

0000000080002f50 <_Z8printfNLPc>:

void printfNL(char string[]){
    80002f50:	fe010113          	addi	sp,sp,-32
    80002f54:	00113c23          	sd	ra,24(sp)
    80002f58:	00813823          	sd	s0,16(sp)
    80002f5c:	00913423          	sd	s1,8(sp)
    80002f60:	01213023          	sd	s2,0(sp)
    80002f64:	02010413          	addi	s0,sp,32
    80002f68:	00050913          	mv	s2,a0
    for(int i=0;i< getStringLength(string);i++)
    80002f6c:	00000493          	li	s1,0
    80002f70:	00090513          	mv	a0,s2
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	ea4080e7          	jalr	-348(ra) # 80002e18 <_Z15getStringLengthPc>
    80002f7c:	00a4de63          	bge	s1,a0,80002f98 <_Z8printfNLPc+0x48>
        putc(string[i]);
    80002f80:	009907b3          	add	a5,s2,s1
    80002f84:	0007c503          	lbu	a0,0(a5)
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	b80080e7          	jalr	-1152(ra) # 80001b08 <putc>
    for(int i=0;i< getStringLength(string);i++)
    80002f90:	0014849b          	addiw	s1,s1,1
    80002f94:	fddff06f          	j	80002f70 <_Z8printfNLPc+0x20>
    putc('\n');
    80002f98:	00a00513          	li	a0,10
    80002f9c:	fffff097          	auipc	ra,0xfffff
    80002fa0:	b6c080e7          	jalr	-1172(ra) # 80001b08 <putc>
}
    80002fa4:	01813083          	ld	ra,24(sp)
    80002fa8:	01013403          	ld	s0,16(sp)
    80002fac:	00813483          	ld	s1,8(sp)
    80002fb0:	00013903          	ld	s2,0(sp)
    80002fb4:	02010113          	addi	sp,sp,32
    80002fb8:	00008067          	ret

0000000080002fbc <_Z8printfNLPKc>:
void printfNL(const char string[]){
    80002fbc:	fe010113          	addi	sp,sp,-32
    80002fc0:	00113c23          	sd	ra,24(sp)
    80002fc4:	00813823          	sd	s0,16(sp)
    80002fc8:	00913423          	sd	s1,8(sp)
    80002fcc:	01213023          	sd	s2,0(sp)
    80002fd0:	02010413          	addi	s0,sp,32
    80002fd4:	00050913          	mv	s2,a0
    for(int i=0;i< getStringLength(string);i++)
    80002fd8:	00000493          	li	s1,0
    80002fdc:	00090513          	mv	a0,s2
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	ed4080e7          	jalr	-300(ra) # 80002eb4 <_Z15getStringLengthPKc>
    80002fe8:	00a4de63          	bge	s1,a0,80003004 <_Z8printfNLPKc+0x48>
        putc(string[i]);
    80002fec:	009907b3          	add	a5,s2,s1
    80002ff0:	0007c503          	lbu	a0,0(a5)
    80002ff4:	fffff097          	auipc	ra,0xfffff
    80002ff8:	b14080e7          	jalr	-1260(ra) # 80001b08 <putc>
    for(int i=0;i< getStringLength(string);i++)
    80002ffc:	0014849b          	addiw	s1,s1,1
    80003000:	fddff06f          	j	80002fdc <_Z8printfNLPKc+0x20>
    putc('\n');
    80003004:	00a00513          	li	a0,10
    80003008:	fffff097          	auipc	ra,0xfffff
    8000300c:	b00080e7          	jalr	-1280(ra) # 80001b08 <putc>
}
    80003010:	01813083          	ld	ra,24(sp)
    80003014:	01013403          	ld	s0,16(sp)
    80003018:	00813483          	ld	s1,8(sp)
    8000301c:	00013903          	ld	s2,0(sp)
    80003020:	02010113          	addi	sp,sp,32
    80003024:	00008067          	ret

0000000080003028 <_ZN3SCBnwEm>:
#include "../h/PCB.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Kernel.hpp"

void* SCB::operator new(size_t count)
{
    80003028:	ff010113          	addi	sp,sp,-16
    8000302c:	00113423          	sd	ra,8(sp)
    80003030:	00813023          	sd	s0,0(sp)
    80003034:	01010413          	addi	s0,sp,16
    return _mem_alloc(BytsBlck(count));
    80003038:	00001097          	auipc	ra,0x1
    8000303c:	dfc080e7          	jalr	-516(ra) # 80003e34 <_Z8BytsBlckm>
    80003040:	00000097          	auipc	ra,0x0
    80003044:	718080e7          	jalr	1816(ra) # 80003758 <_Z10_mem_allocm>
}
    80003048:	00813083          	ld	ra,8(sp)
    8000304c:	00013403          	ld	s0,0(sp)
    80003050:	01010113          	addi	sp,sp,16
    80003054:	00008067          	ret

0000000080003058 <_ZN3SCBdlEPv>:

void SCB::operator delete (void* add){
    80003058:	ff010113          	addi	sp,sp,-16
    8000305c:	00113423          	sd	ra,8(sp)
    80003060:	00813023          	sd	s0,0(sp)
    80003064:	01010413          	addi	s0,sp,16
    _mem_free(add);
    80003068:	00000097          	auipc	ra,0x0
    8000306c:	718080e7          	jalr	1816(ra) # 80003780 <_Z9_mem_freePv>
}
    80003070:	00813083          	ld	ra,8(sp)
    80003074:	00013403          	ld	s0,0(sp)
    80003078:	01010113          	addi	sp,sp,16
    8000307c:	00008067          	ret

0000000080003080 <_ZN3SCB5getIDEv>:

uint64* SCB::IDcounter = nullptr;

uint64* SCB::getID(){
    if(!SCB::IDcounter) {
    80003080:	0000a797          	auipc	a5,0xa
    80003084:	c307b783          	ld	a5,-976(a5) # 8000ccb0 <_ZN3SCB9IDcounterE>
    80003088:	00078e63          	beqz	a5,800030a4 <_ZN3SCB5getIDEv+0x24>
        SCB::IDcounter =  (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)));
        if(!SCB::IDcounter) return nullptr;
    }
    SCB::IDcounter =(uint64*) ((char*) SCB::IDcounter+1);
    8000308c:	0000a797          	auipc	a5,0xa
    80003090:	c2478793          	addi	a5,a5,-988 # 8000ccb0 <_ZN3SCB9IDcounterE>
    80003094:	0007b503          	ld	a0,0(a5)
    80003098:	00150513          	addi	a0,a0,1
    8000309c:	00a7b023          	sd	a0,0(a5)
    return SCB::IDcounter;
}
    800030a0:	00008067          	ret
uint64* SCB::getID(){
    800030a4:	ff010113          	addi	sp,sp,-16
    800030a8:	00113423          	sd	ra,8(sp)
    800030ac:	00813023          	sd	s0,0(sp)
    800030b0:	01010413          	addi	s0,sp,16
        SCB::IDcounter =  (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)));
    800030b4:	00800513          	li	a0,8
    800030b8:	00001097          	auipc	ra,0x1
    800030bc:	d7c080e7          	jalr	-644(ra) # 80003e34 <_Z8BytsBlckm>
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	698080e7          	jalr	1688(ra) # 80003758 <_Z10_mem_allocm>
    800030c8:	0000a797          	auipc	a5,0xa
    800030cc:	bea7b423          	sd	a0,-1048(a5) # 8000ccb0 <_ZN3SCB9IDcounterE>
        if(!SCB::IDcounter) return nullptr;
    800030d0:	00050c63          	beqz	a0,800030e8 <_ZN3SCB5getIDEv+0x68>
    SCB::IDcounter =(uint64*) ((char*) SCB::IDcounter+1);
    800030d4:	0000a797          	auipc	a5,0xa
    800030d8:	bdc78793          	addi	a5,a5,-1060 # 8000ccb0 <_ZN3SCB9IDcounterE>
    800030dc:	0007b503          	ld	a0,0(a5)
    800030e0:	00150513          	addi	a0,a0,1
    800030e4:	00a7b023          	sd	a0,0(a5)
}
    800030e8:	00813083          	ld	ra,8(sp)
    800030ec:	00013403          	ld	s0,0(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret

00000000800030f8 <_ZN3SCBC1Ei>:

SCB* SCB::createSemaphore(unsigned init) {
    return new SCB(init);
}

SCB::SCB(int init) : value(init){
    800030f8:	ff010113          	addi	sp,sp,-16
    800030fc:	00813423          	sd	s0,8(sp)
    80003100:	01010413          	addi	s0,sp,16
    80003104:	00b52423          	sw	a1,8(a0)
    blockedHead = nullptr;
    80003108:	00053023          	sd	zero,0(a0)
    state = starting;
    8000310c:	00052623          	sw	zero,12(a0)
}
    80003110:	00813403          	ld	s0,8(sp)
    80003114:	01010113          	addi	sp,sp,16
    80003118:	00008067          	ret

000000008000311c <_ZN3SCB15createSemaphoreEj>:
SCB* SCB::createSemaphore(unsigned init) {
    8000311c:	fe010113          	addi	sp,sp,-32
    80003120:	00113c23          	sd	ra,24(sp)
    80003124:	00813823          	sd	s0,16(sp)
    80003128:	00913423          	sd	s1,8(sp)
    8000312c:	01213023          	sd	s2,0(sp)
    80003130:	02010413          	addi	s0,sp,32
    80003134:	00050913          	mv	s2,a0
    return new SCB(init);
    80003138:	01000513          	li	a0,16
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	eec080e7          	jalr	-276(ra) # 80003028 <_ZN3SCBnwEm>
    80003144:	00050493          	mv	s1,a0
    80003148:	00090593          	mv	a1,s2
    8000314c:	00000097          	auipc	ra,0x0
    80003150:	fac080e7          	jalr	-84(ra) # 800030f8 <_ZN3SCBC1Ei>
}
    80003154:	00048513          	mv	a0,s1
    80003158:	01813083          	ld	ra,24(sp)
    8000315c:	01013403          	ld	s0,16(sp)
    80003160:	00813483          	ld	s1,8(sp)
    80003164:	00013903          	ld	s2,0(sp)
    80003168:	02010113          	addi	sp,sp,32
    8000316c:	00008067          	ret

0000000080003170 <_ZN3SCB5blockEv>:
    if(state == closed) return -1;
    if(++value<=0) return deblock(0);
    else return 0;
}

int SCB::block(){
    80003170:	fe010113          	addi	sp,sp,-32
    80003174:	00113c23          	sd	ra,24(sp)
    80003178:	00813823          	sd	s0,16(sp)
    8000317c:	00913423          	sd	s1,8(sp)
    80003180:	01213023          	sd	s2,0(sp)
    80003184:	02010413          	addi	s0,sp,32
    80003188:	00050493          	mv	s1,a0
    PCB* pcb = PCB::running;
    8000318c:	0000a797          	auipc	a5,0xa
    80003190:	ab47b783          	ld	a5,-1356(a5) # 8000cc40 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003194:	0007b903          	ld	s2,0(a5)
    BlockedNode* node = (BlockedNode*) _mem_alloc(BytsTBlck(sizeof(BlockedNode)));  //NEW !!!
    80003198:	01000513          	li	a0,16
    8000319c:	fffff097          	auipc	ra,0xfffff
    800031a0:	250080e7          	jalr	592(ra) # 800023ec <_Z9BytsTBlckm>
    800031a4:	00000097          	auipc	ra,0x0
    800031a8:	5b4080e7          	jalr	1460(ra) # 80003758 <_Z10_mem_allocm>
    if(node == nullptr) return -1; //NEMA MEMORIJE
    800031ac:	06050263          	beqz	a0,80003210 <_ZN3SCB5blockEv+0xa0>
    node->pcb = pcb;
    800031b0:	01253023          	sd	s2,0(a0)
    node->next = nullptr;
    800031b4:	00053423          	sd	zero,8(a0)
    if(blockedHead == nullptr){
    800031b8:	0004b783          	ld	a5,0(s1)
    800031bc:	04078663          	beqz	a5,80003208 <_ZN3SCB5blockEv+0x98>
        blockedHead = node;
    }
    else {
        BlockedNode *curr = blockedHead;
        for (; curr->next != nullptr; curr = curr->next);
    800031c0:	00078713          	mv	a4,a5
    800031c4:	0087b783          	ld	a5,8(a5)
    800031c8:	fe079ce3          	bnez	a5,800031c0 <_ZN3SCB5blockEv+0x50>
        curr->next = node;
    800031cc:	00a73423          	sd	a0,8(a4)
    800031d0:	00200793          	li	a5,2
    800031d4:	04f92023          	sw	a5,64(s2)
    }
    pcb->setState(suspended);
    _thread_dispatch();
    800031d8:	00000097          	auipc	ra,0x0
    800031dc:	704080e7          	jalr	1796(ra) # 800038dc <_Z16_thread_dispatchv>
    int getState() { return state; }
    800031e0:	04092703          	lw	a4,64(s2)
    if(pcb->getState() == suspended) return -1;
    800031e4:	00200793          	li	a5,2
    800031e8:	02f70863          	beq	a4,a5,80003218 <_ZN3SCB5blockEv+0xa8>
    return 0;
    800031ec:	00000513          	li	a0,0
}
    800031f0:	01813083          	ld	ra,24(sp)
    800031f4:	01013403          	ld	s0,16(sp)
    800031f8:	00813483          	ld	s1,8(sp)
    800031fc:	00013903          	ld	s2,0(sp)
    80003200:	02010113          	addi	sp,sp,32
    80003204:	00008067          	ret
        blockedHead = node;
    80003208:	00a4b023          	sd	a0,0(s1)
    8000320c:	fc5ff06f          	j	800031d0 <_ZN3SCB5blockEv+0x60>
    if(node == nullptr) return -1; //NEMA MEMORIJE
    80003210:	fff00513          	li	a0,-1
    80003214:	fddff06f          	j	800031f0 <_ZN3SCB5blockEv+0x80>
    if(pcb->getState() == suspended) return -1;
    80003218:	fff00513          	li	a0,-1
    8000321c:	fd5ff06f          	j	800031f0 <_ZN3SCB5blockEv+0x80>

0000000080003220 <_ZN3SCB4waitEv>:
    if(state == closed) return -1;
    80003220:	00c52703          	lw	a4,12(a0)
    80003224:	00200793          	li	a5,2
    80003228:	04f70463          	beq	a4,a5,80003270 <_ZN3SCB4waitEv+0x50>
    if(--value<0) return block();
    8000322c:	00852783          	lw	a5,8(a0)
    80003230:	fff7879b          	addiw	a5,a5,-1
    80003234:	00f52423          	sw	a5,8(a0)
    80003238:	02079713          	slli	a4,a5,0x20
    8000323c:	00074663          	bltz	a4,80003248 <_ZN3SCB4waitEv+0x28>
    else return 0;
    80003240:	00000513          	li	a0,0
}
    80003244:	00008067          	ret
int SCB::wait(){
    80003248:	ff010113          	addi	sp,sp,-16
    8000324c:	00113423          	sd	ra,8(sp)
    80003250:	00813023          	sd	s0,0(sp)
    80003254:	01010413          	addi	s0,sp,16
    if(--value<0) return block();
    80003258:	00000097          	auipc	ra,0x0
    8000325c:	f18080e7          	jalr	-232(ra) # 80003170 <_ZN3SCB5blockEv>
}
    80003260:	00813083          	ld	ra,8(sp)
    80003264:	00013403          	ld	s0,0(sp)
    80003268:	01010113          	addi	sp,sp,16
    8000326c:	00008067          	ret
    if(state == closed) return -1;
    80003270:	fff00513          	li	a0,-1
    80003274:	00008067          	ret

0000000080003278 <_ZN3SCB7deblockEi>:

int SCB::deblock(int value){
    80003278:	00050793          	mv	a5,a0
    if(!blockedHead) return -1;
    8000327c:	00053503          	ld	a0,0(a0)
    80003280:	06050463          	beqz	a0,800032e8 <_ZN3SCB7deblockEi+0x70>
int SCB::deblock(int value){
    80003284:	fe010113          	addi	sp,sp,-32
    80003288:	00113c23          	sd	ra,24(sp)
    8000328c:	00813823          	sd	s0,16(sp)
    80003290:	00913423          	sd	s1,8(sp)
    80003294:	01213023          	sd	s2,0(sp)
    80003298:	02010413          	addi	s0,sp,32
    8000329c:	00058493          	mv	s1,a1
    PCB* pcb = blockedHead->pcb;
    800032a0:	00053903          	ld	s2,0(a0)
    BlockedNode* node = blockedHead;
    blockedHead = node->next;
    800032a4:	00853703          	ld	a4,8(a0)
    800032a8:	00e7b023          	sd	a4,0(a5)
    _mem_free(node);
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	4d4080e7          	jalr	1236(ra) # 80003780 <_Z9_mem_freePv>
    if(value == 0) pcb->setState(ready);
    800032b4:	00049663          	bnez	s1,800032c0 <_ZN3SCB7deblockEi+0x48>
    void setState(States state) { this->state = state; }
    800032b8:	00100793          	li	a5,1
    800032bc:	04f92023          	sw	a5,64(s2)
    Scheduler::put(pcb);
    800032c0:	00090513          	mv	a0,s2
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	178080e7          	jalr	376(ra) # 8000243c <_ZN9Scheduler3putEP3PCB>
    return 0;
    800032cc:	00000513          	li	a0,0
}
    800032d0:	01813083          	ld	ra,24(sp)
    800032d4:	01013403          	ld	s0,16(sp)
    800032d8:	00813483          	ld	s1,8(sp)
    800032dc:	00013903          	ld	s2,0(sp)
    800032e0:	02010113          	addi	sp,sp,32
    800032e4:	00008067          	ret
    if(!blockedHead) return -1;
    800032e8:	fff00513          	li	a0,-1
}
    800032ec:	00008067          	ret

00000000800032f0 <_ZN3SCB6signalEv>:
    if(state == closed) return -1;
    800032f0:	00c52703          	lw	a4,12(a0)
    800032f4:	00200793          	li	a5,2
    800032f8:	04f70663          	beq	a4,a5,80003344 <_ZN3SCB6signalEv+0x54>
    if(++value<=0) return deblock(0);
    800032fc:	00852783          	lw	a5,8(a0)
    80003300:	0017879b          	addiw	a5,a5,1
    80003304:	0007871b          	sext.w	a4,a5
    80003308:	00f52423          	sw	a5,8(a0)
    8000330c:	00e05663          	blez	a4,80003318 <_ZN3SCB6signalEv+0x28>
    else return 0;
    80003310:	00000513          	li	a0,0
}
    80003314:	00008067          	ret
int SCB::signal(){
    80003318:	ff010113          	addi	sp,sp,-16
    8000331c:	00113423          	sd	ra,8(sp)
    80003320:	00813023          	sd	s0,0(sp)
    80003324:	01010413          	addi	s0,sp,16
    if(++value<=0) return deblock(0);
    80003328:	00000593          	li	a1,0
    8000332c:	00000097          	auipc	ra,0x0
    80003330:	f4c080e7          	jalr	-180(ra) # 80003278 <_ZN3SCB7deblockEi>
}
    80003334:	00813083          	ld	ra,8(sp)
    80003338:	00013403          	ld	s0,0(sp)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret
    if(state == closed) return -1;
    80003344:	fff00513          	li	a0,-1
    80003348:	00008067          	ret

000000008000334c <_ZN3SCB14closeSemaphoreEv>:

int SCB::closeSemaphore(){
    8000334c:	fe010113          	addi	sp,sp,-32
    80003350:	00113c23          	sd	ra,24(sp)
    80003354:	00813823          	sd	s0,16(sp)
    80003358:	00913423          	sd	s1,8(sp)
    8000335c:	02010413          	addi	s0,sp,32
    80003360:	00050493          	mv	s1,a0
    state = closed;
    80003364:	00200793          	li	a5,2
    80003368:	00f52623          	sw	a5,12(a0)
    while (1){
        if(deblock(-1) <0) break;
    8000336c:	fff00593          	li	a1,-1
    80003370:	00048513          	mv	a0,s1
    80003374:	00000097          	auipc	ra,0x0
    80003378:	f04080e7          	jalr	-252(ra) # 80003278 <_ZN3SCB7deblockEi>
    8000337c:	fe0558e3          	bgez	a0,8000336c <_ZN3SCB14closeSemaphoreEv+0x20>
    }
    return 0;
}
    80003380:	00000513          	li	a0,0
    80003384:	01813083          	ld	ra,24(sp)
    80003388:	01013403          	ld	s0,16(sp)
    8000338c:	00813483          	ld	s1,8(sp)
    80003390:	02010113          	addi	sp,sp,32
    80003394:	00008067          	ret

0000000080003398 <_ZN3SCBD1Ev>:

SCB::~SCB(){
    80003398:	fe010113          	addi	sp,sp,-32
    8000339c:	00113c23          	sd	ra,24(sp)
    800033a0:	00813823          	sd	s0,16(sp)
    800033a4:	00913423          	sd	s1,8(sp)
    800033a8:	02010413          	addi	s0,sp,32
    800033ac:	00050493          	mv	s1,a0
    closeSemaphore();
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	f9c080e7          	jalr	-100(ra) # 8000334c <_ZN3SCB14closeSemaphoreEv>
    Kernel::removeSemaphore(this);
    800033b8:	00048513          	mv	a0,s1
    800033bc:	00001097          	auipc	ra,0x1
    800033c0:	d74080e7          	jalr	-652(ra) # 80004130 <_ZN6Kernel15removeSemaphoreEP3SCB>
    800033c4:	01813083          	ld	ra,24(sp)
    800033c8:	01013403          	ld	s0,16(sp)
    800033cc:	00813483          	ld	s1,8(sp)
    800033d0:	02010113          	addi	sp,sp,32
    800033d4:	00008067          	ret

00000000800033d8 <_ZN15MemoryAllocator15getSizeOfDescrpEv>:
#include "../h/utility.hpp"

MemoryAllocator::memBlock* MemoryAllocator::freeMemHead = nullptr;
MemoryAllocator::memBlock* MemoryAllocator::takenMemHead = nullptr;

size_t MemoryAllocator::getSizeOfDescrp(){
    800033d8:	ff010113          	addi	sp,sp,-16
    800033dc:	00813423          	sd	s0,8(sp)
    800033e0:	01010413          	addi	s0,sp,16
    return sizeof(memBlock);
}
    800033e4:	01800513          	li	a0,24
    800033e8:	00813403          	ld	s0,8(sp)
    800033ec:	01010113          	addi	sp,sp,16
    800033f0:	00008067          	ret

00000000800033f4 <_ZN15MemoryAllocator12initMemAllocEv>:

int MemoryAllocator::initMemAlloc(){
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00813423          	sd	s0,8(sp)
    800033fc:	01010413          	addi	s0,sp,16
    freeMemHead = (memBlock*) HEAP_START_ADDR;
    80003400:	0000a797          	auipc	a5,0xa
    80003404:	8187b783          	ld	a5,-2024(a5) # 8000cc18 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003408:	0007b703          	ld	a4,0(a5)
    8000340c:	0000a797          	auipc	a5,0xa
    80003410:	8ae7b623          	sd	a4,-1876(a5) # 8000ccb8 <_ZN15MemoryAllocator11freeMemHeadE>
    freeMemHead->prev = nullptr;
    80003414:	00073823          	sd	zero,16(a4)
    freeMemHead->next = nullptr;
    80003418:	00073423          	sd	zero,8(a4)
    size_t freeSize = (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR;
    8000341c:	0000a797          	auipc	a5,0xa
    80003420:	82c7b783          	ld	a5,-2004(a5) # 8000cc48 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003424:	0007b783          	ld	a5,0(a5)
    80003428:	40e787b3          	sub	a5,a5,a4
    freeMemHead->size = ((freeSize) % MEM_BLOCK_SIZE == 0) ? (freeSize) / MEM_BLOCK_SIZE :
    8000342c:	03f7f693          	andi	a3,a5,63
    80003430:	02069263          	bnez	a3,80003454 <_ZN15MemoryAllocator12initMemAllocEv+0x60>
    80003434:	0067d793          	srli	a5,a5,0x6
    80003438:	00f73023          	sd	a5,0(a4)
                        (freeSize) / MEM_BLOCK_SIZE + 1;
    takenMemHead = nullptr;
    8000343c:	0000a797          	auipc	a5,0xa
    80003440:	8807b223          	sd	zero,-1916(a5) # 8000ccc0 <_ZN15MemoryAllocator12takenMemHeadE>
    return 0;
}
    80003444:	00000513          	li	a0,0
    80003448:	00813403          	ld	s0,8(sp)
    8000344c:	01010113          	addi	sp,sp,16
    80003450:	00008067          	ret
                        (freeSize) / MEM_BLOCK_SIZE + 1;
    80003454:	0067d793          	srli	a5,a5,0x6
    freeMemHead->size = ((freeSize) % MEM_BLOCK_SIZE == 0) ? (freeSize) / MEM_BLOCK_SIZE :
    80003458:	00178793          	addi	a5,a5,1
    8000345c:	fddff06f          	j	80003438 <_ZN15MemoryAllocator12initMemAllocEv+0x44>

0000000080003460 <_ZN15MemoryAllocator10deallocateEPv>:

void MemoryAllocator::deallocate(void* obj){
    if(!obj) return;
    80003460:	0a050463          	beqz	a0,80003508 <_ZN15MemoryAllocator10deallocateEPv+0xa8>
    80003464:	00050793          	mv	a5,a0
    memBlock* cur = (memBlock*) ((char*)obj-sizeof(memBlock));
    80003468:	fe850713          	addi	a4,a0,-24
    int found = 0;
    for(memBlock* taken = takenMemHead;taken;taken = taken->next)
    8000346c:	0000a617          	auipc	a2,0xa
    80003470:	85463603          	ld	a2,-1964(a2) # 8000ccc0 <_ZN15MemoryAllocator12takenMemHeadE>
    80003474:	00060693          	mv	a3,a2
    80003478:	00068863          	beqz	a3,80003488 <_ZN15MemoryAllocator10deallocateEPv+0x28>
        if(taken == cur){
    8000347c:	08e68863          	beq	a3,a4,8000350c <_ZN15MemoryAllocator10deallocateEPv+0xac>
    for(memBlock* taken = takenMemHead;taken;taken = taken->next)
    80003480:	0086b683          	ld	a3,8(a3)
    80003484:	ff5ff06f          	j	80003478 <_ZN15MemoryAllocator10deallocateEPv+0x18>
    int found = 0;
    80003488:	00000693          	li	a3,0
            found = 1;
            break;
        }
    if(!found){
    8000348c:	08068463          	beqz	a3,80003514 <_ZN15MemoryAllocator10deallocateEPv+0xb4>
        printf("Dealociranje nezauzete adrese");
        while (1);
    }
    if(cur->prev)cur->prev->next = cur->next;
    80003490:	ff87b683          	ld	a3,-8(a5)
    80003494:	00068663          	beqz	a3,800034a0 <_ZN15MemoryAllocator10deallocateEPv+0x40>
    80003498:	ff07b583          	ld	a1,-16(a5)
    8000349c:	00b6b423          	sd	a1,8(a3)
    if(cur->next)cur->next->prev = cur->prev;
    800034a0:	ff07b683          	ld	a3,-16(a5)
    800034a4:	00068663          	beqz	a3,800034b0 <_ZN15MemoryAllocator10deallocateEPv+0x50>
    800034a8:	ff87b583          	ld	a1,-8(a5)
    800034ac:	00b6b823          	sd	a1,16(a3)
    if(takenMemHead == cur) takenMemHead = cur->next;
    800034b0:	08c70463          	beq	a4,a2,80003538 <_ZN15MemoryAllocator10deallocateEPv+0xd8>
        memBlock *fCur = freeMemHead, *fPrev = nullptr;
    800034b4:	0000a697          	auipc	a3,0xa
    800034b8:	8046b683          	ld	a3,-2044(a3) # 8000ccb8 <_ZN15MemoryAllocator11freeMemHeadE>
        if(fCur){
    800034bc:	0c068063          	beqz	a3,8000357c <_ZN15MemoryAllocator10deallocateEPv+0x11c>
            if(cur < fCur){
    800034c0:	08d77463          	bgeu	a4,a3,80003548 <_ZN15MemoryAllocator10deallocateEPv+0xe8>
                fCur->prev = cur;
    800034c4:	00e6b823          	sd	a4,16(a3)
                cur->next = fCur;
    800034c8:	fed7b823          	sd	a3,-16(a5)
                freeMemHead = cur;
    800034cc:	00009697          	auipc	a3,0x9
    800034d0:	7ee6b623          	sd	a4,2028(a3) # 8000ccb8 <_ZN15MemoryAllocator11freeMemHeadE>
                cur->prev = nullptr;
    800034d4:	fe07bc23          	sd	zero,-8(a5)
            freeMemHead = cur;
            cur->next = nullptr;
            cur->prev = nullptr;
        }

    if(cur->next && (char *) cur->next == (char *) cur + cur->size*MEM_BLOCK_SIZE){
    800034d8:	ff07b683          	ld	a3,-16(a5)
    800034dc:	00068a63          	beqz	a3,800034f0 <_ZN15MemoryAllocator10deallocateEPv+0x90>
    800034e0:	fe87b603          	ld	a2,-24(a5)
    800034e4:	00661593          	slli	a1,a2,0x6
    800034e8:	00b705b3          	add	a1,a4,a1
    800034ec:	0ab68263          	beq	a3,a1,80003590 <_ZN15MemoryAllocator10deallocateEPv+0x130>
        cur->size = cur->size + cur->next->size;
        cur->next = cur->next->next;
        if(cur->next) cur->next->prev = cur;
    }

    if(cur->prev && (char *) cur->prev + cur->prev->size*MEM_BLOCK_SIZE == (char *) cur){
    800034f0:	ff87b683          	ld	a3,-8(a5)
    800034f4:	00068a63          	beqz	a3,80003508 <_ZN15MemoryAllocator10deallocateEPv+0xa8>
    800034f8:	0006b603          	ld	a2,0(a3)
    800034fc:	00661593          	slli	a1,a2,0x6
    80003500:	00b685b3          	add	a1,a3,a1
    80003504:	0ae58663          	beq	a1,a4,800035b0 <_ZN15MemoryAllocator10deallocateEPv+0x150>
    80003508:	00008067          	ret
            found = 1;
    8000350c:	00100693          	li	a3,1
    80003510:	f7dff06f          	j	8000348c <_ZN15MemoryAllocator10deallocateEPv+0x2c>
void MemoryAllocator::deallocate(void* obj){
    80003514:	ff010113          	addi	sp,sp,-16
    80003518:	00113423          	sd	ra,8(sp)
    8000351c:	00813023          	sd	s0,0(sp)
    80003520:	01010413          	addi	s0,sp,16
        printf("Dealociranje nezauzete adrese");
    80003524:	00007517          	auipc	a0,0x7
    80003528:	c9450513          	addi	a0,a0,-876 # 8000a1b8 <CONSOLE_STATUS+0x1a0>
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	9c4080e7          	jalr	-1596(ra) # 80002ef0 <_Z6printfPKc>
        while (1);
    80003534:	0000006f          	j	80003534 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
    if(takenMemHead == cur) takenMemHead = cur->next;
    80003538:	ff07b683          	ld	a3,-16(a5)
    8000353c:	00009617          	auipc	a2,0x9
    80003540:	78d63223          	sd	a3,1924(a2) # 8000ccc0 <_ZN15MemoryAllocator12takenMemHeadE>
    80003544:	f71ff06f          	j	800034b4 <_ZN15MemoryAllocator10deallocateEPv+0x54>
        memBlock *fCur = freeMemHead, *fPrev = nullptr;
    80003548:	00000613          	li	a2,0
                for (; fCur; fPrev = fCur, fCur = fCur->next)
    8000354c:	00068a63          	beqz	a3,80003560 <_ZN15MemoryAllocator10deallocateEPv+0x100>
                    if (fCur > cur) break;
    80003550:	00d76863          	bltu	a4,a3,80003560 <_ZN15MemoryAllocator10deallocateEPv+0x100>
                for (; fCur; fPrev = fCur, fCur = fCur->next)
    80003554:	00068613          	mv	a2,a3
    80003558:	0086b683          	ld	a3,8(a3)
    8000355c:	ff1ff06f          	j	8000354c <_ZN15MemoryAllocator10deallocateEPv+0xec>
                cur->next = fCur;
    80003560:	fed7b823          	sd	a3,-16(a5)
                cur->prev = fPrev;
    80003564:	fec7bc23          	sd	a2,-8(a5)
                if (fPrev) fPrev->next = cur;
    80003568:	00060463          	beqz	a2,80003570 <_ZN15MemoryAllocator10deallocateEPv+0x110>
    8000356c:	00e63423          	sd	a4,8(a2)
                if (fCur) fCur->prev = cur;
    80003570:	f60684e3          	beqz	a3,800034d8 <_ZN15MemoryAllocator10deallocateEPv+0x78>
    80003574:	00e6b823          	sd	a4,16(a3)
    80003578:	f61ff06f          	j	800034d8 <_ZN15MemoryAllocator10deallocateEPv+0x78>
            freeMemHead = cur;
    8000357c:	00009697          	auipc	a3,0x9
    80003580:	72e6be23          	sd	a4,1852(a3) # 8000ccb8 <_ZN15MemoryAllocator11freeMemHeadE>
            cur->next = nullptr;
    80003584:	fe07b823          	sd	zero,-16(a5)
            cur->prev = nullptr;
    80003588:	fe07bc23          	sd	zero,-8(a5)
    8000358c:	f4dff06f          	j	800034d8 <_ZN15MemoryAllocator10deallocateEPv+0x78>
        cur->size = cur->size + cur->next->size;
    80003590:	0006b583          	ld	a1,0(a3)
    80003594:	00b60633          	add	a2,a2,a1
    80003598:	fec7b423          	sd	a2,-24(a5)
        cur->next = cur->next->next;
    8000359c:	0086b683          	ld	a3,8(a3)
    800035a0:	fed7b823          	sd	a3,-16(a5)
        if(cur->next) cur->next->prev = cur;
    800035a4:	f40686e3          	beqz	a3,800034f0 <_ZN15MemoryAllocator10deallocateEPv+0x90>
    800035a8:	00e6b823          	sd	a4,16(a3)
    800035ac:	f45ff06f          	j	800034f0 <_ZN15MemoryAllocator10deallocateEPv+0x90>
        cur->prev->size = cur->size + cur->prev->size;
    800035b0:	fe87b703          	ld	a4,-24(a5)
    800035b4:	00e60633          	add	a2,a2,a4
    800035b8:	00c6b023          	sd	a2,0(a3)
        cur->prev->next = cur->next;
    800035bc:	ff87b683          	ld	a3,-8(a5)
    800035c0:	ff07b703          	ld	a4,-16(a5)
    800035c4:	00e6b423          	sd	a4,8(a3)
        if(cur->next) cur->next->prev = cur->prev;
    800035c8:	f40700e3          	beqz	a4,80003508 <_ZN15MemoryAllocator10deallocateEPv+0xa8>
    800035cc:	ff87b783          	ld	a5,-8(a5)
    800035d0:	00f73823          	sd	a5,16(a4)
    800035d4:	f35ff06f          	j	80003508 <_ZN15MemoryAllocator10deallocateEPv+0xa8>

00000000800035d8 <_ZN15MemoryAllocator8allocateEm>:
    }
}

void* MemoryAllocator::allocate(size_t size){
    800035d8:	ff010113          	addi	sp,sp,-16
    800035dc:	00813423          	sd	s0,8(sp)
    800035e0:	01010413          	addi	s0,sp,16
    800035e4:	00050693          	mv	a3,a0
    if (freeMemHead == nullptr || size <= 0)
    800035e8:	00009517          	auipc	a0,0x9
    800035ec:	6d053503          	ld	a0,1744(a0) # 8000ccb8 <_ZN15MemoryAllocator11freeMemHeadE>
    800035f0:	0a050663          	beqz	a0,8000369c <_ZN15MemoryAllocator8allocateEm+0xc4>
    800035f4:	14068a63          	beqz	a3,80003748 <_ZN15MemoryAllocator8allocateEm+0x170>
        return nullptr;

    memBlock* cur = freeMemHead;
    800035f8:	00050793          	mv	a5,a0
    800035fc:	0080006f          	j	80003604 <_ZN15MemoryAllocator8allocateEm+0x2c>
    for( ; cur; cur = cur->next)
    80003600:	0087b783          	ld	a5,8(a5)
    80003604:	00078663          	beqz	a5,80003610 <_ZN15MemoryAllocator8allocateEm+0x38>
        if(cur->size >= size) break;
    80003608:	0007b703          	ld	a4,0(a5)
    8000360c:	fed76ae3          	bltu	a4,a3,80003600 <_ZN15MemoryAllocator8allocateEm+0x28>
    if(!cur) return nullptr;
    80003610:	14078063          	beqz	a5,80003750 <_ZN15MemoryAllocator8allocateEm+0x178>
    if(cur == freeMemHead) freeMemHead = cur->next;
    80003614:	08f50a63          	beq	a0,a5,800036a8 <_ZN15MemoryAllocator8allocateEm+0xd0>

    //Ako ima mesta za jos jedan memBlock blok
    if(cur->size-size != 0){                 //pretpostavlja se da je memBlock struktura manja od jednog bloka
    80003618:	0007b603          	ld	a2,0(a5)
    8000361c:	0ad60463          	beq	a2,a3,800036c4 <_ZN15MemoryAllocator8allocateEm+0xec>
        memBlock* newBlk = (memBlock*) ((char*)cur + size*MEM_BLOCK_SIZE);
    80003620:	00669713          	slli	a4,a3,0x6
    80003624:	00e78733          	add	a4,a5,a4
        newBlk->size = cur->size-size;
    80003628:	40d60633          	sub	a2,a2,a3
    8000362c:	00c73023          	sd	a2,0(a4)
        newBlk->next = cur->next;
    80003630:	0087b603          	ld	a2,8(a5)
    80003634:	00c73423          	sd	a2,8(a4)
        newBlk->prev = cur->prev;
    80003638:	0107b603          	ld	a2,16(a5)
    8000363c:	00c73823          	sd	a2,16(a4)
        if(cur->prev)cur->prev->next = newBlk;
    80003640:	06060c63          	beqz	a2,800036b8 <_ZN15MemoryAllocator8allocateEm+0xe0>
    80003644:	00e63423          	sd	a4,8(a2)
        else freeMemHead = newBlk;
        if(cur->next)cur->next->prev = newBlk;
    80003648:	0087b603          	ld	a2,8(a5)
    8000364c:	00060463          	beqz	a2,80003654 <_ZN15MemoryAllocator8allocateEm+0x7c>
    80003650:	00e63823          	sd	a4,16(a2)
        if(cur->prev)cur->prev->next = cur->next;
        if(cur->next)cur->next->prev = cur->prev;
        if(!cur->prev && !cur->next) freeMemHead = nullptr;
    }

    if(freeMemHead && freeMemHead->size == 0) freeMemHead = nullptr;
    80003654:	00009717          	auipc	a4,0x9
    80003658:	66473703          	ld	a4,1636(a4) # 8000ccb8 <_ZN15MemoryAllocator11freeMemHeadE>
    8000365c:	00070a63          	beqz	a4,80003670 <_ZN15MemoryAllocator8allocateEm+0x98>
    80003660:	00073703          	ld	a4,0(a4)
    80003664:	00071663          	bnez	a4,80003670 <_ZN15MemoryAllocator8allocateEm+0x98>
    80003668:	00009717          	auipc	a4,0x9
    8000366c:	64073823          	sd	zero,1616(a4) # 8000ccb8 <_ZN15MemoryAllocator11freeMemHeadE>

    memBlock* goal = (memBlock*) cur;
    goal->size = size;
    80003670:	00d7b023          	sd	a3,0(a5)

    memBlock* tCur = takenMemHead, *tPrev = nullptr;
    80003674:	00009717          	auipc	a4,0x9
    80003678:	64c73703          	ld	a4,1612(a4) # 8000ccc0 <_ZN15MemoryAllocator12takenMemHeadE>
    if(tCur){
    8000367c:	0a070c63          	beqz	a4,80003734 <_ZN15MemoryAllocator8allocateEm+0x15c>
        if(goal < tCur){
    80003680:	08e7f063          	bgeu	a5,a4,80003700 <_ZN15MemoryAllocator8allocateEm+0x128>
            tCur->prev = goal;
    80003684:	00f73823          	sd	a5,16(a4)
            goal->next = tCur;
    80003688:	00e7b423          	sd	a4,8(a5)
            takenMemHead = goal;
    8000368c:	00009717          	auipc	a4,0x9
    80003690:	62f73a23          	sd	a5,1588(a4) # 8000ccc0 <_ZN15MemoryAllocator12takenMemHeadE>
            goal->prev = nullptr;
    80003694:	0007b823          	sd	zero,16(a5)
        takenMemHead = goal;
        goal->next = nullptr;
        goal->prev = nullptr;
    }

    return (char*) goal + sizeof(memBlock);
    80003698:	01878513          	addi	a0,a5,24
    8000369c:	00813403          	ld	s0,8(sp)
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret
    if(cur == freeMemHead) freeMemHead = cur->next;
    800036a8:	0087b703          	ld	a4,8(a5)
    800036ac:	00009617          	auipc	a2,0x9
    800036b0:	60e63623          	sd	a4,1548(a2) # 8000ccb8 <_ZN15MemoryAllocator11freeMemHeadE>
    800036b4:	f65ff06f          	j	80003618 <_ZN15MemoryAllocator8allocateEm+0x40>
        else freeMemHead = newBlk;
    800036b8:	00009617          	auipc	a2,0x9
    800036bc:	60e63023          	sd	a4,1536(a2) # 8000ccb8 <_ZN15MemoryAllocator11freeMemHeadE>
    800036c0:	f89ff06f          	j	80003648 <_ZN15MemoryAllocator8allocateEm+0x70>
        if(cur->prev)cur->prev->next = cur->next;
    800036c4:	0107b703          	ld	a4,16(a5)
    800036c8:	00070663          	beqz	a4,800036d4 <_ZN15MemoryAllocator8allocateEm+0xfc>
    800036cc:	0087b603          	ld	a2,8(a5)
    800036d0:	00c73423          	sd	a2,8(a4)
        if(cur->next)cur->next->prev = cur->prev;
    800036d4:	0087b703          	ld	a4,8(a5)
    800036d8:	00070663          	beqz	a4,800036e4 <_ZN15MemoryAllocator8allocateEm+0x10c>
    800036dc:	0107b603          	ld	a2,16(a5)
    800036e0:	00c73823          	sd	a2,16(a4)
        if(!cur->prev && !cur->next) freeMemHead = nullptr;
    800036e4:	0107b703          	ld	a4,16(a5)
    800036e8:	f60716e3          	bnez	a4,80003654 <_ZN15MemoryAllocator8allocateEm+0x7c>
    800036ec:	0087b703          	ld	a4,8(a5)
    800036f0:	f60712e3          	bnez	a4,80003654 <_ZN15MemoryAllocator8allocateEm+0x7c>
    800036f4:	00009717          	auipc	a4,0x9
    800036f8:	5c073223          	sd	zero,1476(a4) # 8000ccb8 <_ZN15MemoryAllocator11freeMemHeadE>
    800036fc:	f59ff06f          	j	80003654 <_ZN15MemoryAllocator8allocateEm+0x7c>
    memBlock* tCur = takenMemHead, *tPrev = nullptr;
    80003700:	00000693          	li	a3,0
            for( ; tCur; tPrev = tCur, tCur = tCur->next)
    80003704:	00070a63          	beqz	a4,80003718 <_ZN15MemoryAllocator8allocateEm+0x140>
                if(tCur > goal) break;
    80003708:	00e7e863          	bltu	a5,a4,80003718 <_ZN15MemoryAllocator8allocateEm+0x140>
            for( ; tCur; tPrev = tCur, tCur = tCur->next)
    8000370c:	00070693          	mv	a3,a4
    80003710:	00873703          	ld	a4,8(a4)
    80003714:	ff1ff06f          	j	80003704 <_ZN15MemoryAllocator8allocateEm+0x12c>
            goal->next = tCur;
    80003718:	00e7b423          	sd	a4,8(a5)
            goal->prev = tPrev;
    8000371c:	00d7b823          	sd	a3,16(a5)
            if(tCur) tCur->prev = goal;
    80003720:	00070463          	beqz	a4,80003728 <_ZN15MemoryAllocator8allocateEm+0x150>
    80003724:	00f73823          	sd	a5,16(a4)
            if(tPrev) tPrev->next = goal;
    80003728:	f60688e3          	beqz	a3,80003698 <_ZN15MemoryAllocator8allocateEm+0xc0>
    8000372c:	00f6b423          	sd	a5,8(a3)
    80003730:	f69ff06f          	j	80003698 <_ZN15MemoryAllocator8allocateEm+0xc0>
        takenMemHead = goal;
    80003734:	00009717          	auipc	a4,0x9
    80003738:	58f73623          	sd	a5,1420(a4) # 8000ccc0 <_ZN15MemoryAllocator12takenMemHeadE>
        goal->next = nullptr;
    8000373c:	0007b423          	sd	zero,8(a5)
        goal->prev = nullptr;
    80003740:	0007b823          	sd	zero,16(a5)
    80003744:	f55ff06f          	j	80003698 <_ZN15MemoryAllocator8allocateEm+0xc0>
        return nullptr;
    80003748:	00000513          	li	a0,0
    8000374c:	f51ff06f          	j	8000369c <_ZN15MemoryAllocator8allocateEm+0xc4>
    if(!cur) return nullptr;
    80003750:	00078513          	mv	a0,a5
    80003754:	f49ff06f          	j	8000369c <_ZN15MemoryAllocator8allocateEm+0xc4>

0000000080003758 <_Z10_mem_allocm>:
#include "../h/SCB.hpp"
#include "../h/Kernel.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

void* _mem_alloc (size_t size){
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00113423          	sd	ra,8(sp)
    80003760:	00813023          	sd	s0,0(sp)
    80003764:	01010413          	addi	s0,sp,16
    return MemoryAllocator::allocate(size);
    80003768:	00000097          	auipc	ra,0x0
    8000376c:	e70080e7          	jalr	-400(ra) # 800035d8 <_ZN15MemoryAllocator8allocateEm>
}
    80003770:	00813083          	ld	ra,8(sp)
    80003774:	00013403          	ld	s0,0(sp)
    80003778:	01010113          	addi	sp,sp,16
    8000377c:	00008067          	ret

0000000080003780 <_Z9_mem_freePv>:

int _mem_free (void* add){
    80003780:	ff010113          	addi	sp,sp,-16
    80003784:	00113423          	sd	ra,8(sp)
    80003788:	00813023          	sd	s0,0(sp)
    8000378c:	01010413          	addi	s0,sp,16
    MemoryAllocator::deallocate(add);
    80003790:	00000097          	auipc	ra,0x0
    80003794:	cd0080e7          	jalr	-816(ra) # 80003460 <_ZN15MemoryAllocator10deallocateEPv>
    return 0;
}
    80003798:	00000513          	li	a0,0
    8000379c:	00813083          	ld	ra,8(sp)
    800037a0:	00013403          	ld	s0,0(sp)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret

00000000800037ac <_Z14_thread_createPP7_threadPFvPvES2_S2_>:

int _thread_create(thread_t* handle,
                   void(*start_routine)(void*), void* arg, void* stack_space){
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00113c23          	sd	ra,24(sp)
    800037b4:	00813823          	sd	s0,16(sp)
    800037b8:	00913423          	sd	s1,8(sp)
    800037bc:	01213023          	sd	s2,0(sp)
    800037c0:	02010413          	addi	s0,sp,32
    800037c4:	00050913          	mv	s2,a0
    800037c8:	00058513          	mv	a0,a1
    800037cc:	00060593          	mv	a1,a2

    PCB* pcb = PCB::createThread(start_routine, arg, (uint64*) stack_space);
    800037d0:	00068613          	mv	a2,a3
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	8b0080e7          	jalr	-1872(ra) # 80002084 <_ZN3PCB12createThreadEPFvPvES0_Pm>
    if(!pcb) return -1;
    800037dc:	06050e63          	beqz	a0,80003858 <_Z14_thread_createPP7_threadPFvPvES2_S2_+0xac>
    800037e0:	00050493          	mv	s1,a0
    *handle = (thread_t) PCB::getID();
    800037e4:	ffffe097          	auipc	ra,0xffffe
    800037e8:	5d8080e7          	jalr	1496(ra) # 80001dbc <_ZN3PCB5getIDEv>
    800037ec:	00050593          	mv	a1,a0
    800037f0:	00a93023          	sd	a0,0(s2)
    if(Kernel::addThread(pcb, (uint64*) *handle) < 0){
    800037f4:	00048513          	mv	a0,s1
    800037f8:	00000097          	auipc	ra,0x0
    800037fc:	68c080e7          	jalr	1676(ra) # 80003e84 <_ZN6Kernel9addThreadEP3PCBPm>
    80003800:	04054263          	bltz	a0,80003844 <_Z14_thread_createPP7_threadPFvPvES2_S2_+0x98>
        _mem_free(pcb);
        return -2;
    }
    pcb->setID((uint64*)*handle);
    80003804:	00093583          	ld	a1,0(s2)
    80003808:	00048513          	mv	a0,s1
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	5dc080e7          	jalr	1500(ra) # 80001de8 <_ZN3PCB5setIDEPm>
    80003814:	00100793          	li	a5,1
    80003818:	04f4a023          	sw	a5,64(s1)
    pcb->setState(ready);
    Scheduler::put(pcb);
    8000381c:	00048513          	mv	a0,s1
    80003820:	fffff097          	auipc	ra,0xfffff
    80003824:	c1c080e7          	jalr	-996(ra) # 8000243c <_ZN9Scheduler3putEP3PCB>
    return 0;
    80003828:	00000513          	li	a0,0
    /*
    asm volatile("sd %1, 0(%0)"
    : "=r" (handle)
    : "r" (temp));*/
}
    8000382c:	01813083          	ld	ra,24(sp)
    80003830:	01013403          	ld	s0,16(sp)
    80003834:	00813483          	ld	s1,8(sp)
    80003838:	00013903          	ld	s2,0(sp)
    8000383c:	02010113          	addi	sp,sp,32
    80003840:	00008067          	ret
        _mem_free(pcb);
    80003844:	00048513          	mv	a0,s1
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	f38080e7          	jalr	-200(ra) # 80003780 <_Z9_mem_freePv>
        return -2;
    80003850:	ffe00513          	li	a0,-2
    80003854:	fd9ff06f          	j	8000382c <_Z14_thread_createPP7_threadPFvPvES2_S2_+0x80>
    if(!pcb) return -1;
    80003858:	fff00513          	li	a0,-1
    8000385c:	fd1ff06f          	j	8000382c <_Z14_thread_createPP7_threadPFvPvES2_S2_+0x80>

0000000080003860 <_Z12_thread_exitv>:

int _thread_exit(){
    if(PCB::running->getState() == terminating || PCB::running->getState() == initializing) return -1;
    80003860:	00009797          	auipc	a5,0x9
    80003864:	3e07b783          	ld	a5,992(a5) # 8000cc40 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003868:	0007b703          	ld	a4,0(a5)
    int getState() { return state; }
    8000386c:	04072783          	lw	a5,64(a4)
    80003870:	00400693          	li	a3,4
    80003874:	04d78c63          	beq	a5,a3,800038cc <_Z12_thread_exitv+0x6c>
    80003878:	04078e63          	beqz	a5,800038d4 <_Z12_thread_exitv+0x74>
int _thread_exit(){
    8000387c:	ff010113          	addi	sp,sp,-16
    80003880:	00113423          	sd	ra,8(sp)
    80003884:	00813023          	sd	s0,0(sp)
    80003888:	01010413          	addi	s0,sp,16
    void setState(States state) { this->state = state; }
    8000388c:	00400793          	li	a5,4
    80003890:	04f72023          	sw	a5,64(a4)
    80003894:	00c0006f          	j	800038a0 <_Z12_thread_exitv+0x40>
    PCB::running->setState(terminating);
    while (1){
        PCB* pcb = PCB::running->unblockThread();
        if(!pcb) break;
        Scheduler::put(pcb);
    80003898:	fffff097          	auipc	ra,0xfffff
    8000389c:	ba4080e7          	jalr	-1116(ra) # 8000243c <_ZN9Scheduler3putEP3PCB>
        PCB* pcb = PCB::running->unblockThread();
    800038a0:	00009797          	auipc	a5,0x9
    800038a4:	3a07b783          	ld	a5,928(a5) # 8000cc40 <_GLOBAL_OFFSET_TABLE_+0x40>
    800038a8:	0007b503          	ld	a0,0(a5)
    800038ac:	fffff097          	auipc	ra,0xfffff
    800038b0:	a74080e7          	jalr	-1420(ra) # 80002320 <_ZN3PCB13unblockThreadEv>
        if(!pcb) break;
    800038b4:	fe0512e3          	bnez	a0,80003898 <_Z12_thread_exitv+0x38>
    }
    return 0;
    800038b8:	00000513          	li	a0,0
}
    800038bc:	00813083          	ld	ra,8(sp)
    800038c0:	00013403          	ld	s0,0(sp)
    800038c4:	01010113          	addi	sp,sp,16
    800038c8:	00008067          	ret
    if(PCB::running->getState() == terminating || PCB::running->getState() == initializing) return -1;
    800038cc:	fff00513          	li	a0,-1
    800038d0:	00008067          	ret
    800038d4:	fff00513          	li	a0,-1
}
    800038d8:	00008067          	ret

00000000800038dc <_Z16_thread_dispatchv>:

void _thread_dispatch(){
    800038dc:	fe010113          	addi	sp,sp,-32
    800038e0:	00113c23          	sd	ra,24(sp)
    800038e4:	00813823          	sd	s0,16(sp)
    800038e8:	00913423          	sd	s1,8(sp)
    800038ec:	02010413          	addi	s0,sp,32
    uint64* userStack = PCB::getRunningStack();
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	56c080e7          	jalr	1388(ra) # 80001e5c <_ZN3PCB15getRunningStackEv>
    800038f8:	00050493          	mv	s1,a0
    PCB::dispatch();
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	5d8080e7          	jalr	1496(ra) # 80001ed4 <_ZN3PCB8dispatchEv>
    PCB::setRunningStack((uint64) userStack);
    80003904:	00048513          	mv	a0,s1
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	57c080e7          	jalr	1404(ra) # 80001e84 <_ZN3PCB15setRunningStackEm>
}
    80003910:	01813083          	ld	ra,24(sp)
    80003914:	01013403          	ld	s0,16(sp)
    80003918:	00813483          	ld	s1,8(sp)
    8000391c:	02010113          	addi	sp,sp,32
    80003920:	00008067          	ret

0000000080003924 <_Z13_thread_startPm>:

int _thread_start(uint64* handle){
    80003924:	ff010113          	addi	sp,sp,-16
    80003928:	00113423          	sd	ra,8(sp)
    8000392c:	00813023          	sd	s0,0(sp)
    80003930:	01010413          	addi	s0,sp,16
    PCB* cur = Kernel::findPCB(handle);
    80003934:	00001097          	auipc	ra,0x1
    80003938:	878080e7          	jalr	-1928(ra) # 800041ac <_ZN6Kernel7findPCBEPm>
    if(!cur) return -1;
    8000393c:	02050c63          	beqz	a0,80003974 <_Z13_thread_startPm+0x50>
    States st = (States) cur->getState();
    80003940:	04052783          	lw	a5,64(a0)
    if(st != initializing && st != terminating){return -1;}
    80003944:	00078663          	beqz	a5,80003950 <_Z13_thread_startPm+0x2c>
    80003948:	00400713          	li	a4,4
    8000394c:	02e79863          	bne	a5,a4,8000397c <_Z13_thread_startPm+0x58>
    80003950:	00100793          	li	a5,1
    80003954:	04f52023          	sw	a5,64(a0)
    cur->setState(ready);
    Scheduler::put(cur);
    80003958:	fffff097          	auipc	ra,0xfffff
    8000395c:	ae4080e7          	jalr	-1308(ra) # 8000243c <_ZN9Scheduler3putEP3PCB>
    return 0;
    80003960:	00000513          	li	a0,0
}
    80003964:	00813083          	ld	ra,8(sp)
    80003968:	00013403          	ld	s0,0(sp)
    8000396c:	01010113          	addi	sp,sp,16
    80003970:	00008067          	ret
    if(!cur) return -1;
    80003974:	fff00513          	li	a0,-1
    80003978:	fedff06f          	j	80003964 <_Z13_thread_startPm+0x40>
    if(st != initializing && st != terminating){return -1;}
    8000397c:	fff00513          	li	a0,-1
    80003980:	fe5ff06f          	j	80003964 <_Z13_thread_startPm+0x40>

0000000080003984 <_Z12_thread_joinPm>:

int _thread_join(uint64* handle){
    80003984:	fe010113          	addi	sp,sp,-32
    80003988:	00113c23          	sd	ra,24(sp)
    8000398c:	00813823          	sd	s0,16(sp)
    80003990:	00913423          	sd	s1,8(sp)
    80003994:	02010413          	addi	s0,sp,32
    PCB* pcb = Kernel::findPCB(handle);
    80003998:	00001097          	auipc	ra,0x1
    8000399c:	814080e7          	jalr	-2028(ra) # 800041ac <_ZN6Kernel7findPCBEPm>
    if(!pcb) return -1;
    800039a0:	04050a63          	beqz	a0,800039f4 <_Z12_thread_joinPm+0x70>
    States st = (States) pcb->getState();
    800039a4:	04052783          	lw	a5,64(a0)
    if(st == terminating || st == running) return -1;
    800039a8:	ffd7879b          	addiw	a5,a5,-3
    800039ac:	00100713          	li	a4,1
    800039b0:	04f77663          	bgeu	a4,a5,800039fc <_Z12_thread_joinPm+0x78>
    pcb->blockThread(PCB::running);
    800039b4:	00009497          	auipc	s1,0x9
    800039b8:	28c4b483          	ld	s1,652(s1) # 8000cc40 <_GLOBAL_OFFSET_TABLE_+0x40>
    800039bc:	0004b583          	ld	a1,0(s1)
    800039c0:	fffff097          	auipc	ra,0xfffff
    800039c4:	8cc080e7          	jalr	-1844(ra) # 8000228c <_ZN3PCB11blockThreadEPS_>
    PCB::running->setState(suspended);
    800039c8:	0004b783          	ld	a5,0(s1)
    800039cc:	00200713          	li	a4,2
    800039d0:	04e7a023          	sw	a4,64(a5)
    _thread_dispatch();
    800039d4:	00000097          	auipc	ra,0x0
    800039d8:	f08080e7          	jalr	-248(ra) # 800038dc <_Z16_thread_dispatchv>
    return 0;
    800039dc:	00000513          	li	a0,0
}
    800039e0:	01813083          	ld	ra,24(sp)
    800039e4:	01013403          	ld	s0,16(sp)
    800039e8:	00813483          	ld	s1,8(sp)
    800039ec:	02010113          	addi	sp,sp,32
    800039f0:	00008067          	ret
    if(!pcb) return -1;
    800039f4:	fff00513          	li	a0,-1
    800039f8:	fe9ff06f          	j	800039e0 <_Z12_thread_joinPm+0x5c>
    if(st == terminating || st == running) return -1;
    800039fc:	fff00513          	li	a0,-1
    80003a00:	fe1ff06f          	j	800039e0 <_Z12_thread_joinPm+0x5c>

0000000080003a04 <_Z13_thread_closePm>:

int _thread_close(uint64* handle){
    80003a04:	fe010113          	addi	sp,sp,-32
    80003a08:	00113c23          	sd	ra,24(sp)
    80003a0c:	00813823          	sd	s0,16(sp)
    80003a10:	00913423          	sd	s1,8(sp)
    80003a14:	02010413          	addi	s0,sp,32
    PCB* pcb = Kernel::findPCB(handle);
    80003a18:	00000097          	auipc	ra,0x0
    80003a1c:	794080e7          	jalr	1940(ra) # 800041ac <_ZN6Kernel7findPCBEPm>
    if(!pcb) return -1;
    80003a20:	02050a63          	beqz	a0,80003a54 <_Z13_thread_closePm+0x50>
    80003a24:	00050493          	mv	s1,a0
    delete pcb;
    80003a28:	fffff097          	auipc	ra,0xfffff
    80003a2c:	94c080e7          	jalr	-1716(ra) # 80002374 <_ZN3PCBD1Ev>
    80003a30:	00048513          	mv	a0,s1
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	400080e7          	jalr	1024(ra) # 80001e34 <_ZN3PCBdlEPv>
    return 0;
    80003a3c:	00000513          	li	a0,0
}
    80003a40:	01813083          	ld	ra,24(sp)
    80003a44:	01013403          	ld	s0,16(sp)
    80003a48:	00813483          	ld	s1,8(sp)
    80003a4c:	02010113          	addi	sp,sp,32
    80003a50:	00008067          	ret
    if(!pcb) return -1;
    80003a54:	fff00513          	li	a0,-1
    80003a58:	fe9ff06f          	j	80003a40 <_Z13_thread_closePm+0x3c>

0000000080003a5c <_Z9_sem_openPP4_semj>:

int _sem_open(sem_t* handle, unsigned init){
    80003a5c:	fe010113          	addi	sp,sp,-32
    80003a60:	00113c23          	sd	ra,24(sp)
    80003a64:	00813823          	sd	s0,16(sp)
    80003a68:	00913423          	sd	s1,8(sp)
    80003a6c:	01213023          	sd	s2,0(sp)
    80003a70:	02010413          	addi	s0,sp,32
    80003a74:	00050913          	mv	s2,a0
    SCB* scb = SCB::createSemaphore(init);
    80003a78:	00058513          	mv	a0,a1
    80003a7c:	fffff097          	auipc	ra,0xfffff
    80003a80:	6a0080e7          	jalr	1696(ra) # 8000311c <_ZN3SCB15createSemaphoreEj>
    if(!scb) return -1;
    80003a84:	06050063          	beqz	a0,80003ae4 <_Z9_sem_openPP4_semj+0x88>
    80003a88:	00050493          	mv	s1,a0
    *handle = (sem_t) SCB::getID();
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	5f4080e7          	jalr	1524(ra) # 80003080 <_ZN3SCB5getIDEv>
    80003a94:	00050593          	mv	a1,a0
    80003a98:	00a93023          	sd	a0,0(s2)
    if(Kernel::addSemaphore(scb, (uint64*) *handle) < 0){
    80003a9c:	00048513          	mv	a0,s1
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	5f0080e7          	jalr	1520(ra) # 80004090 <_ZN6Kernel12addSemaphoreEP3SCBPm>
    80003aa8:	02054463          	bltz	a0,80003ad0 <_Z9_sem_openPP4_semj+0x74>
public:
    static void* operator new(size_t count);
    static void operator delete (void*);

    int getState() { return state; }
    void setState(SemStates state) { this->state = state; }
    80003aac:	00100793          	li	a5,1
    80003ab0:	00f4a623          	sw	a5,12(s1)
        _mem_free(scb);
        return -2;
    }
    scb->setState(open);
    return 0;
    80003ab4:	00000513          	li	a0,0
}
    80003ab8:	01813083          	ld	ra,24(sp)
    80003abc:	01013403          	ld	s0,16(sp)
    80003ac0:	00813483          	ld	s1,8(sp)
    80003ac4:	00013903          	ld	s2,0(sp)
    80003ac8:	02010113          	addi	sp,sp,32
    80003acc:	00008067          	ret
        _mem_free(scb);
    80003ad0:	00048513          	mv	a0,s1
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	cac080e7          	jalr	-852(ra) # 80003780 <_Z9_mem_freePv>
        return -2;
    80003adc:	ffe00513          	li	a0,-2
    80003ae0:	fd9ff06f          	j	80003ab8 <_Z9_sem_openPP4_semj+0x5c>
    if(!scb) return -1;
    80003ae4:	fff00513          	li	a0,-1
    80003ae8:	fd1ff06f          	j	80003ab8 <_Z9_sem_openPP4_semj+0x5c>

0000000080003aec <_Z10_sem_closePm>:

int _sem_close(uint64* handle){
    80003aec:	fe010113          	addi	sp,sp,-32
    80003af0:	00113c23          	sd	ra,24(sp)
    80003af4:	00813823          	sd	s0,16(sp)
    80003af8:	00913423          	sd	s1,8(sp)
    80003afc:	02010413          	addi	s0,sp,32
    SCB* scb = Kernel::findSCB(handle);
    80003b00:	00000097          	auipc	ra,0x0
    80003b04:	724080e7          	jalr	1828(ra) # 80004224 <_ZN6Kernel7findSCBEPm>
    if(!scb) return -1;
    80003b08:	04050063          	beqz	a0,80003b48 <_Z10_sem_closePm+0x5c>
    80003b0c:	00050493          	mv	s1,a0
    int getState() { return state; }
    80003b10:	00c52703          	lw	a4,12(a0)
    if(scb->getState() == closed) return 0;
    80003b14:	00200793          	li	a5,2
    80003b18:	02f70c63          	beq	a4,a5,80003b50 <_Z10_sem_closePm+0x64>
    delete scb;
    80003b1c:	00000097          	auipc	ra,0x0
    80003b20:	87c080e7          	jalr	-1924(ra) # 80003398 <_ZN3SCBD1Ev>
    80003b24:	00048513          	mv	a0,s1
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	530080e7          	jalr	1328(ra) # 80003058 <_ZN3SCBdlEPv>
    return 0;
    80003b30:	00000513          	li	a0,0
}
    80003b34:	01813083          	ld	ra,24(sp)
    80003b38:	01013403          	ld	s0,16(sp)
    80003b3c:	00813483          	ld	s1,8(sp)
    80003b40:	02010113          	addi	sp,sp,32
    80003b44:	00008067          	ret
    if(!scb) return -1;
    80003b48:	fff00513          	li	a0,-1
    80003b4c:	fe9ff06f          	j	80003b34 <_Z10_sem_closePm+0x48>
    if(scb->getState() == closed) return 0;
    80003b50:	00000513          	li	a0,0
    80003b54:	fe1ff06f          	j	80003b34 <_Z10_sem_closePm+0x48>

0000000080003b58 <_Z9_sem_waitPm>:

int _sem_wait(uint64* id){
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00113423          	sd	ra,8(sp)
    80003b60:	00813023          	sd	s0,0(sp)
    80003b64:	01010413          	addi	s0,sp,16
    SCB* scb = Kernel::findSCB(id);
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	6bc080e7          	jalr	1724(ra) # 80004224 <_ZN6Kernel7findSCBEPm>
    if(!scb) return -1;
    80003b70:	02050463          	beqz	a0,80003b98 <_Z9_sem_waitPm+0x40>
    80003b74:	00c52703          	lw	a4,12(a0)
    if(scb->getState() == closed) return -1;
    80003b78:	00200793          	li	a5,2
    80003b7c:	02f70263          	beq	a4,a5,80003ba0 <_Z9_sem_waitPm+0x48>
    return scb->wait();
    80003b80:	fffff097          	auipc	ra,0xfffff
    80003b84:	6a0080e7          	jalr	1696(ra) # 80003220 <_ZN3SCB4waitEv>
}
    80003b88:	00813083          	ld	ra,8(sp)
    80003b8c:	00013403          	ld	s0,0(sp)
    80003b90:	01010113          	addi	sp,sp,16
    80003b94:	00008067          	ret
    if(!scb) return -1;
    80003b98:	fff00513          	li	a0,-1
    80003b9c:	fedff06f          	j	80003b88 <_Z9_sem_waitPm+0x30>
    if(scb->getState() == closed) return -1;
    80003ba0:	fff00513          	li	a0,-1
    80003ba4:	fe5ff06f          	j	80003b88 <_Z9_sem_waitPm+0x30>

0000000080003ba8 <_Z11_sem_signalPm>:

int _sem_signal(uint64* id){
    80003ba8:	ff010113          	addi	sp,sp,-16
    80003bac:	00113423          	sd	ra,8(sp)
    80003bb0:	00813023          	sd	s0,0(sp)
    80003bb4:	01010413          	addi	s0,sp,16
    SCB* scb = Kernel::findSCB(id);
    80003bb8:	00000097          	auipc	ra,0x0
    80003bbc:	66c080e7          	jalr	1644(ra) # 80004224 <_ZN6Kernel7findSCBEPm>
    if(!scb) return -1;
    80003bc0:	02050463          	beqz	a0,80003be8 <_Z11_sem_signalPm+0x40>
    80003bc4:	00c52703          	lw	a4,12(a0)
    if(scb->getState() == closed) return -1;
    80003bc8:	00200793          	li	a5,2
    80003bcc:	02f70263          	beq	a4,a5,80003bf0 <_Z11_sem_signalPm+0x48>
    return scb->signal();
    80003bd0:	fffff097          	auipc	ra,0xfffff
    80003bd4:	720080e7          	jalr	1824(ra) # 800032f0 <_ZN3SCB6signalEv>
}
    80003bd8:	00813083          	ld	ra,8(sp)
    80003bdc:	00013403          	ld	s0,0(sp)
    80003be0:	01010113          	addi	sp,sp,16
    80003be4:	00008067          	ret
    if(!scb) return -1;
    80003be8:	fff00513          	li	a0,-1
    80003bec:	fedff06f          	j	80003bd8 <_Z11_sem_signalPm+0x30>
    if(scb->getState() == closed) return -1;
    80003bf0:	fff00513          	li	a0,-1
    80003bf4:	fe5ff06f          	j	80003bd8 <_Z11_sem_signalPm+0x30>

0000000080003bf8 <_Z11_time_sleepm>:

int _time_sleep (time_t time){
    80003bf8:	fe010113          	addi	sp,sp,-32
    80003bfc:	00113c23          	sd	ra,24(sp)
    80003c00:	00813823          	sd	s0,16(sp)
    80003c04:	00913423          	sd	s1,8(sp)
    80003c08:	02010413          	addi	s0,sp,32
    80003c0c:	00050493          	mv	s1,a0
    uint64 * handle = Kernel::findPCB(PCB::running);
    80003c10:	00009797          	auipc	a5,0x9
    80003c14:	0307b783          	ld	a5,48(a5) # 8000cc40 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003c18:	0007b503          	ld	a0,0(a5)
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	5cc080e7          	jalr	1484(ra) # 800041e8 <_ZN6Kernel7findPCBEP3PCB>
    if(!handle) return -1;
    80003c24:	02050c63          	beqz	a0,80003c5c <_Z11_time_sleepm+0x64>
    80003c28:	00050593          	mv	a1,a0
    Kernel::blockThread(PCB::running, handle, time);
    80003c2c:	00048613          	mv	a2,s1
    80003c30:	00009797          	auipc	a5,0x9
    80003c34:	0107b783          	ld	a5,16(a5) # 8000cc40 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003c38:	0007b503          	ld	a0,0(a5)
    80003c3c:	00000097          	auipc	ra,0x0
    80003c40:	624080e7          	jalr	1572(ra) # 80004260 <_ZN6Kernel11blockThreadEP3PCBPmm>
    return 0;
    80003c44:	00000513          	li	a0,0
}
    80003c48:	01813083          	ld	ra,24(sp)
    80003c4c:	01013403          	ld	s0,16(sp)
    80003c50:	00813483          	ld	s1,8(sp)
    80003c54:	02010113          	addi	sp,sp,32
    80003c58:	00008067          	ret
    if(!handle) return -1;
    80003c5c:	fff00513          	li	a0,-1
    80003c60:	fe9ff06f          	j	80003c48 <_Z11_time_sleepm+0x50>

0000000080003c64 <_Z5_putcc>:

void _putc (char c){
    80003c64:	ff010113          	addi	sp,sp,-16
    80003c68:	00813423          	sd	s0,8(sp)
    80003c6c:	01010413          	addi	s0,sp,16
    int complete = 0;
    while(!complete) {
        uint8 cd = *C_STATUS & CONSOLE_TX_STATUS_BIT;
    80003c70:	00009797          	auipc	a5,0x9
    80003c74:	fa07b783          	ld	a5,-96(a5) # 8000cc10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003c78:	0007b783          	ld	a5,0(a5)
    80003c7c:	0007c783          	lbu	a5,0(a5)
    80003c80:	0207f793          	andi	a5,a5,32
        if (cd) {
    80003c84:	fe0786e3          	beqz	a5,80003c70 <_Z5_putcc+0xc>
            *C_PUT = c;
    80003c88:	00009797          	auipc	a5,0x9
    80003c8c:	fa07b783          	ld	a5,-96(a5) # 8000cc28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003c90:	0007b783          	ld	a5,0(a5)
    80003c94:	00a78023          	sb	a0,0(a5)
            complete = 1;
        }
        //else _thread_dispatch();
    }
}
    80003c98:	00813403          	ld	s0,8(sp)
    80003c9c:	01010113          	addi	sp,sp,16
    80003ca0:	00008067          	ret

0000000080003ca4 <_Z5_getcv>:

char _getc (){
    80003ca4:	ff010113          	addi	sp,sp,-16
    80003ca8:	00813423          	sd	s0,8(sp)
    80003cac:	01010413          	addi	s0,sp,16
    int complete = 0;
    while(!complete) {
        uint8 cd = *C_STATUS & CONSOLE_RX_STATUS_BIT;
    80003cb0:	00009797          	auipc	a5,0x9
    80003cb4:	f607b783          	ld	a5,-160(a5) # 8000cc10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003cb8:	0007b783          	ld	a5,0(a5)
    80003cbc:	0007c783          	lbu	a5,0(a5)
    80003cc0:	0017f793          	andi	a5,a5,1
        if (cd) {
    80003cc4:	fe0786e3          	beqz	a5,80003cb0 <_Z5_getcv+0xc>
            return *C_GET;
    80003cc8:	00009797          	auipc	a5,0x9
    80003ccc:	f407b783          	ld	a5,-192(a5) # 8000cc08 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003cd0:	0007b783          	ld	a5,0(a5)
        }
        //else _thread_dispatch();
    }
    return '0';
}
    80003cd4:	0007c503          	lbu	a0,0(a5)
    80003cd8:	00813403          	ld	s0,8(sp)
    80003cdc:	01010113          	addi	sp,sp,16
    80003ce0:	00008067          	ret

0000000080003ce4 <timer>:
#include "../lib/hw.h"
#include "../h/ABI.hpp"
#include "../h/Kernel.hpp"
#include "../h/Scheduler.hpp"

extern "C" void timer(){
    80003ce4:	fe010113          	addi	sp,sp,-32
    80003ce8:	00113c23          	sd	ra,24(sp)
    80003cec:	00813823          	sd	s0,16(sp)
    80003cf0:	00913423          	sd	s1,8(sp)
    80003cf4:	01213023          	sd	s2,0(sp)
    80003cf8:	02010413          	addi	s0,sp,32
    uint64 sstatus, sepc;
    asm volatile("csrr %0, sstatus\n"
                 "csrr %1, sepc" : "=r" (sstatus), "=r" (sepc));
    80003cfc:	10002973          	csrr	s2,sstatus
    80003d00:	141024f3          	csrr	s1,sepc
    //_putc('T');
    //console_handler();
    //_thread_dispatch();
    Kernel::tickBlocked();
    80003d04:	00000097          	auipc	ra,0x0
    80003d08:	684080e7          	jalr	1668(ra) # 80004388 <_ZN6Kernel11tickBlockedEv>
    PCB* pcb = Kernel::getBlockedThread();
    80003d0c:	00000097          	auipc	ra,0x0
    80003d10:	614080e7          	jalr	1556(ra) # 80004320 <_ZN6Kernel16getBlockedThreadEv>
    while (pcb){
    80003d14:	00050c63          	beqz	a0,80003d2c <timer+0x48>
        Scheduler::put(pcb);
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	724080e7          	jalr	1828(ra) # 8000243c <_ZN9Scheduler3putEP3PCB>
        pcb = Kernel::getBlockedThread();
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	600080e7          	jalr	1536(ra) # 80004320 <_ZN6Kernel16getBlockedThreadEv>
    while (pcb){
    80003d28:	fedff06f          	j	80003d14 <timer+0x30>
    }
    uint64 sip = 0x2;
    asm volatile("csrc sip, %0" :: "r" (sip));
    80003d2c:	00200793          	li	a5,2
    80003d30:	1447b073          	csrc	sip,a5
    asm volatile("csrw sstatus, %0" :: "r" (sstatus));
    80003d34:	10091073          	csrw	sstatus,s2
    asm volatile("csrw sepc, %0" :: "r" (sepc));
    80003d38:	14149073          	csrw	sepc,s1
    80003d3c:	01813083          	ld	ra,24(sp)
    80003d40:	01013403          	ld	s0,16(sp)
    80003d44:	00813483          	ld	s1,8(sp)
    80003d48:	00013903          	ld	s2,0(sp)
    80003d4c:	02010113          	addi	sp,sp,32
    80003d50:	00008067          	ret

0000000080003d54 <_Z4lockv>:
PCB* Kernel::kernelPCB = nullptr;
PCB* Kernel::idlePCB = nullptr;
uint64 * Kernel::kernelStack = nullptr;


void lock(){
    80003d54:	ff010113          	addi	sp,sp,-16
    80003d58:	00813423          	sd	s0,8(sp)
    80003d5c:	01010413          	addi	s0,sp,16
    uint64 ssie = 0x202;
    asm volatile("csrc sie, %0" :: "r" (ssie));
    80003d60:	20200793          	li	a5,514
    80003d64:	1047b073          	csrc	sie,a5
}
    80003d68:	00813403          	ld	s0,8(sp)
    80003d6c:	01010113          	addi	sp,sp,16
    80003d70:	00008067          	ret

0000000080003d74 <_Z6unlockv>:
void unlock(){
    80003d74:	ff010113          	addi	sp,sp,-16
    80003d78:	00813423          	sd	s0,8(sp)
    80003d7c:	01010413          	addi	s0,sp,16
    uint64 ssie = 0x202;
    asm volatile("csrs sie, %0" :: "r" (ssie));
    80003d80:	20200793          	li	a5,514
    80003d84:	1047a073          	csrs	sie,a5
}
    80003d88:	00813403          	ld	s0,8(sp)
    80003d8c:	01010113          	addi	sp,sp,16
    80003d90:	00008067          	ret

0000000080003d94 <_Z12kernelToUserv>:

void kernelToUser(){
    80003d94:	ff010113          	addi	sp,sp,-16
    80003d98:	00813423          	sd	s0,8(sp)
    80003d9c:	01010413          	addi	s0,sp,16
    asm volatile("li t0, 0x120\n"
                 "csrc sstatus, t0\n");
    80003da0:	12000293          	li	t0,288
    80003da4:	1002b073          	csrc	sstatus,t0

    asm volatile("li t0, 0x200\n"
                 "csrc sie, t0\n");
    80003da8:	20000293          	li	t0,512
    80003dac:	1042b073          	csrc	sie,t0
}
    80003db0:	00813403          	ld	s0,8(sp)
    80003db4:	01010113          	addi	sp,sp,16
    80003db8:	00008067          	ret

0000000080003dbc <_Z19kernelToUserWrapperm>:

void kernelToUserWrapper(uint64 name){
    80003dbc:	ff010113          	addi	sp,sp,-16
    80003dc0:	00813423          	sd	s0,8(sp)
    80003dc4:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80003dc8:	00000073          	ecall
}
    80003dcc:	00813403          	ld	s0,8(sp)
    80003dd0:	01010113          	addi	sp,sp,16
    80003dd4:	00008067          	ret

0000000080003dd8 <_ZN6Kernel14getKernelStackEv>:

uint64* Kernel::getKernelStack(){
    80003dd8:	ff010113          	addi	sp,sp,-16
    80003ddc:	00813423          	sd	s0,8(sp)
    80003de0:	01010413          	addi	s0,sp,16
    return kernelStack;
}
    80003de4:	00009517          	auipc	a0,0x9
    80003de8:	ee453503          	ld	a0,-284(a0) # 8000ccc8 <_ZN6Kernel11kernelStackE>
    80003dec:	00813403          	ld	s0,8(sp)
    80003df0:	01010113          	addi	sp,sp,16
    80003df4:	00008067          	ret

0000000080003df8 <_ZN6Kernel14setKernelStackEPm>:
void Kernel::setKernelStack(uint64* address){
    80003df8:	ff010113          	addi	sp,sp,-16
    80003dfc:	00813423          	sd	s0,8(sp)
    80003e00:	01010413          	addi	s0,sp,16
    kernelStack = address;
    80003e04:	00009797          	auipc	a5,0x9
    80003e08:	eca7b223          	sd	a0,-316(a5) # 8000ccc8 <_ZN6Kernel11kernelStackE>
}
    80003e0c:	00813403          	ld	s0,8(sp)
    80003e10:	01010113          	addi	sp,sp,16
    80003e14:	00008067          	ret

0000000080003e18 <_Z10idleThreadPv>:
    kernelStack = &kernelStack[DEFAULT_STACK_SIZE];
    if(addThread(kernelPCB,0) < 0) return -5;
    return 0;
}

void idleThread(void* arg){
    80003e18:	ff010113          	addi	sp,sp,-16
    80003e1c:	00113423          	sd	ra,8(sp)
    80003e20:	00813023          	sd	s0,0(sp)
    80003e24:	01010413          	addi	s0,sp,16
    while(1){
        thread_dispatch();
    80003e28:	ffffe097          	auipc	ra,0xffffe
    80003e2c:	9b4080e7          	jalr	-1612(ra) # 800017dc <thread_dispatch>
    while(1){
    80003e30:	ff9ff06f          	j	80003e28 <_Z10idleThreadPv+0x10>

0000000080003e34 <_Z8BytsBlckm>:
    }
}

size_t BytsBlck(size_t size){
    80003e34:	fe010113          	addi	sp,sp,-32
    80003e38:	00113c23          	sd	ra,24(sp)
    80003e3c:	00813823          	sd	s0,16(sp)
    80003e40:	00913423          	sd	s1,8(sp)
    80003e44:	02010413          	addi	s0,sp,32
    80003e48:	00050493          	mv	s1,a0
    size_t sz = MemoryAllocator::getSizeOfDescrp();
    80003e4c:	fffff097          	auipc	ra,0xfffff
    80003e50:	58c080e7          	jalr	1420(ra) # 800033d8 <_ZN15MemoryAllocator15getSizeOfDescrpEv>
    return ((size+sz) % MEM_BLOCK_SIZE == 0) ? (size+sz) / MEM_BLOCK_SIZE :
    80003e54:	00950533          	add	a0,a0,s1
    80003e58:	03f57793          	andi	a5,a0,63
    80003e5c:	00079e63          	bnez	a5,80003e78 <_Z8BytsBlckm+0x44>
    80003e60:	00655513          	srli	a0,a0,0x6
           (size+sz) / MEM_BLOCK_SIZE + 1;
}
    80003e64:	01813083          	ld	ra,24(sp)
    80003e68:	01013403          	ld	s0,16(sp)
    80003e6c:	00813483          	ld	s1,8(sp)
    80003e70:	02010113          	addi	sp,sp,32
    80003e74:	00008067          	ret
           (size+sz) / MEM_BLOCK_SIZE + 1;
    80003e78:	00655513          	srli	a0,a0,0x6
    return ((size+sz) % MEM_BLOCK_SIZE == 0) ? (size+sz) / MEM_BLOCK_SIZE :
    80003e7c:	00150513          	addi	a0,a0,1
           (size+sz) / MEM_BLOCK_SIZE + 1;
    80003e80:	fe5ff06f          	j	80003e64 <_Z8BytsBlckm+0x30>

0000000080003e84 <_ZN6Kernel9addThreadEP3PCBPm>:

int Kernel::addThread(PCB *pcb, uint64* handle) {
    if(pcb == nullptr) return -1;
    80003e84:	08050863          	beqz	a0,80003f14 <_ZN6Kernel9addThreadEP3PCBPm+0x90>
int Kernel::addThread(PCB *pcb, uint64* handle) {
    80003e88:	fe010113          	addi	sp,sp,-32
    80003e8c:	00113c23          	sd	ra,24(sp)
    80003e90:	00813823          	sd	s0,16(sp)
    80003e94:	00913423          	sd	s1,8(sp)
    80003e98:	01213023          	sd	s2,0(sp)
    80003e9c:	02010413          	addi	s0,sp,32
    80003ea0:	00050493          	mv	s1,a0
    80003ea4:	00058913          	mv	s2,a1
    PCBNode* node = (PCBNode*) _mem_alloc(BytsBlck(sizeof(PCBNode)));
    80003ea8:	01800513          	li	a0,24
    80003eac:	00000097          	auipc	ra,0x0
    80003eb0:	f88080e7          	jalr	-120(ra) # 80003e34 <_Z8BytsBlckm>
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	8a4080e7          	jalr	-1884(ra) # 80003758 <_Z10_mem_allocm>
    if(!node) return -1;
    80003ebc:	06050063          	beqz	a0,80003f1c <_ZN6Kernel9addThreadEP3PCBPm+0x98>
    node->pcb = pcb;
    80003ec0:	00953023          	sd	s1,0(a0)
    node->ID = handle;
    80003ec4:	01253423          	sd	s2,8(a0)
    node->next = nullptr;
    80003ec8:	00053823          	sd	zero,16(a0)
    if(pcbHead == nullptr){
    80003ecc:	00009797          	auipc	a5,0x9
    80003ed0:	e047b783          	ld	a5,-508(a5) # 8000ccd0 <_ZN6Kernel7pcbHeadE>
    80003ed4:	02078863          	beqz	a5,80003f04 <_ZN6Kernel9addThreadEP3PCBPm+0x80>
        pcbHead = node;
        return 0;
    }
    PCBNode* curr = pcbHead;
    for(; curr->next != nullptr; curr = curr->next);
    80003ed8:	00078713          	mv	a4,a5
    80003edc:	0107b783          	ld	a5,16(a5)
    80003ee0:	fe079ce3          	bnez	a5,80003ed8 <_ZN6Kernel9addThreadEP3PCBPm+0x54>
    curr->next = node;
    80003ee4:	00a73823          	sd	a0,16(a4)
    return 0;
    80003ee8:	00000513          	li	a0,0
}
    80003eec:	01813083          	ld	ra,24(sp)
    80003ef0:	01013403          	ld	s0,16(sp)
    80003ef4:	00813483          	ld	s1,8(sp)
    80003ef8:	00013903          	ld	s2,0(sp)
    80003efc:	02010113          	addi	sp,sp,32
    80003f00:	00008067          	ret
        pcbHead = node;
    80003f04:	00009797          	auipc	a5,0x9
    80003f08:	dca7b623          	sd	a0,-564(a5) # 8000ccd0 <_ZN6Kernel7pcbHeadE>
        return 0;
    80003f0c:	00000513          	li	a0,0
    80003f10:	fddff06f          	j	80003eec <_ZN6Kernel9addThreadEP3PCBPm+0x68>
    if(pcb == nullptr) return -1;
    80003f14:	fff00513          	li	a0,-1
}
    80003f18:	00008067          	ret
    if(!node) return -1;
    80003f1c:	fff00513          	li	a0,-1
    80003f20:	fcdff06f          	j	80003eec <_ZN6Kernel9addThreadEP3PCBPm+0x68>

0000000080003f24 <_ZN6Kernel10initKernelEv>:
int Kernel::initKernel() {
    80003f24:	fe010113          	addi	sp,sp,-32
    80003f28:	00113c23          	sd	ra,24(sp)
    80003f2c:	00813823          	sd	s0,16(sp)
    80003f30:	00913423          	sd	s1,8(sp)
    80003f34:	01213023          	sd	s2,0(sp)
    80003f38:	02010413          	addi	s0,sp,32
    kernelStack = (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)*DEFAULT_STACK_SIZE));
    80003f3c:	00008537          	lui	a0,0x8
    80003f40:	00000097          	auipc	ra,0x0
    80003f44:	ef4080e7          	jalr	-268(ra) # 80003e34 <_Z8BytsBlckm>
    80003f48:	00000097          	auipc	ra,0x0
    80003f4c:	810080e7          	jalr	-2032(ra) # 80003758 <_Z10_mem_allocm>
    80003f50:	00009797          	auipc	a5,0x9
    80003f54:	d6a7bc23          	sd	a0,-648(a5) # 8000ccc8 <_ZN6Kernel11kernelStackE>
    if(!kernelStack) return -1;
    80003f58:	08050a63          	beqz	a0,80003fec <_ZN6Kernel10initKernelEv+0xc8>
    uint64 * idleStack = (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)*DEFAULT_STACK_SIZE));
    80003f5c:	00008537          	lui	a0,0x8
    80003f60:	00000097          	auipc	ra,0x0
    80003f64:	ed4080e7          	jalr	-300(ra) # 80003e34 <_Z8BytsBlckm>
    80003f68:	fffff097          	auipc	ra,0xfffff
    80003f6c:	7f0080e7          	jalr	2032(ra) # 80003758 <_Z10_mem_allocm>
    80003f70:	00050493          	mv	s1,a0
    if(!idleStack) return -2;
    80003f74:	08050063          	beqz	a0,80003ff4 <_ZN6Kernel10initKernelEv+0xd0>
    kernelPCB = PCB::initKernelPCB(kernelStack);
    80003f78:	00009917          	auipc	s2,0x9
    80003f7c:	d5090913          	addi	s2,s2,-688 # 8000ccc8 <_ZN6Kernel11kernelStackE>
    80003f80:	00093503          	ld	a0,0(s2)
    80003f84:	ffffe097          	auipc	ra,0xffffe
    80003f88:	1d8080e7          	jalr	472(ra) # 8000215c <_ZN3PCB13initKernelPCBEPm>
    80003f8c:	00a93823          	sd	a0,16(s2)
    if(!kernelPCB) return -3;
    80003f90:	06050663          	beqz	a0,80003ffc <_ZN6Kernel10initKernelEv+0xd8>
    idlePCB = PCB::initIdlePCB(idleStack);
    80003f94:	00048513          	mv	a0,s1
    80003f98:	ffffe097          	auipc	ra,0xffffe
    80003f9c:	244080e7          	jalr	580(ra) # 800021dc <_ZN3PCB11initIdlePCBEPm>
    80003fa0:	00009797          	auipc	a5,0x9
    80003fa4:	d4a7b023          	sd	a0,-704(a5) # 8000cce0 <_ZN6Kernel7idlePCBE>
    if(!idlePCB) return -4;
    80003fa8:	04050e63          	beqz	a0,80004004 <_ZN6Kernel10initKernelEv+0xe0>
    kernelStack = &kernelStack[DEFAULT_STACK_SIZE];
    80003fac:	00093703          	ld	a4,0(s2)
    80003fb0:	000086b7          	lui	a3,0x8
    80003fb4:	00d70733          	add	a4,a4,a3
    80003fb8:	00e93023          	sd	a4,0(s2)
    if(addThread(kernelPCB,0) < 0) return -5;
    80003fbc:	00000593          	li	a1,0
    80003fc0:	01093503          	ld	a0,16(s2)
    80003fc4:	00000097          	auipc	ra,0x0
    80003fc8:	ec0080e7          	jalr	-320(ra) # 80003e84 <_ZN6Kernel9addThreadEP3PCBPm>
    80003fcc:	04054063          	bltz	a0,8000400c <_ZN6Kernel10initKernelEv+0xe8>
    return 0;
    80003fd0:	00000513          	li	a0,0
}
    80003fd4:	01813083          	ld	ra,24(sp)
    80003fd8:	01013403          	ld	s0,16(sp)
    80003fdc:	00813483          	ld	s1,8(sp)
    80003fe0:	00013903          	ld	s2,0(sp)
    80003fe4:	02010113          	addi	sp,sp,32
    80003fe8:	00008067          	ret
    if(!kernelStack) return -1;
    80003fec:	fff00513          	li	a0,-1
    80003ff0:	fe5ff06f          	j	80003fd4 <_ZN6Kernel10initKernelEv+0xb0>
    if(!idleStack) return -2;
    80003ff4:	ffe00513          	li	a0,-2
    80003ff8:	fddff06f          	j	80003fd4 <_ZN6Kernel10initKernelEv+0xb0>
    if(!kernelPCB) return -3;
    80003ffc:	ffd00513          	li	a0,-3
    80004000:	fd5ff06f          	j	80003fd4 <_ZN6Kernel10initKernelEv+0xb0>
    if(!idlePCB) return -4;
    80004004:	ffc00513          	li	a0,-4
    80004008:	fcdff06f          	j	80003fd4 <_ZN6Kernel10initKernelEv+0xb0>
    if(addThread(kernelPCB,0) < 0) return -5;
    8000400c:	ffb00513          	li	a0,-5
    80004010:	fc5ff06f          	j	80003fd4 <_ZN6Kernel10initKernelEv+0xb0>

0000000080004014 <_ZN6Kernel12removeThreadEPm>:

int Kernel::removeThread(uint64* handle){
    80004014:	00050713          	mv	a4,a0
    PCBNode* cur = pcbHead, *prev = nullptr;
    80004018:	00009517          	auipc	a0,0x9
    8000401c:	cb853503          	ld	a0,-840(a0) # 8000ccd0 <_ZN6Kernel7pcbHeadE>
    80004020:	00000693          	li	a3,0
    for(;cur && cur->ID != handle;prev = cur, cur = cur->next);
    80004024:	00050c63          	beqz	a0,8000403c <_ZN6Kernel12removeThreadEPm+0x28>
    80004028:	00853783          	ld	a5,8(a0)
    8000402c:	00e78863          	beq	a5,a4,8000403c <_ZN6Kernel12removeThreadEPm+0x28>
    80004030:	00050693          	mv	a3,a0
    80004034:	01053503          	ld	a0,16(a0)
    80004038:	fedff06f          	j	80004024 <_ZN6Kernel12removeThreadEPm+0x10>
    if(!cur) return -1;
    8000403c:	04050663          	beqz	a0,80004088 <_ZN6Kernel12removeThreadEPm+0x74>
int Kernel::removeThread(uint64* handle){
    80004040:	ff010113          	addi	sp,sp,-16
    80004044:	00113423          	sd	ra,8(sp)
    80004048:	00813023          	sd	s0,0(sp)
    8000404c:	01010413          	addi	s0,sp,16
    if(prev) prev->next = cur->next;
    80004050:	02068463          	beqz	a3,80004078 <_ZN6Kernel12removeThreadEPm+0x64>
    80004054:	01053783          	ld	a5,16(a0)
    80004058:	00f6b823          	sd	a5,16(a3) # 8010 <_entry-0x7fff7ff0>
    else pcbHead = cur->next;
    _mem_free(cur);
    8000405c:	fffff097          	auipc	ra,0xfffff
    80004060:	724080e7          	jalr	1828(ra) # 80003780 <_Z9_mem_freePv>
    return 0;
    80004064:	00000513          	li	a0,0
}
    80004068:	00813083          	ld	ra,8(sp)
    8000406c:	00013403          	ld	s0,0(sp)
    80004070:	01010113          	addi	sp,sp,16
    80004074:	00008067          	ret
    else pcbHead = cur->next;
    80004078:	01053783          	ld	a5,16(a0)
    8000407c:	00009717          	auipc	a4,0x9
    80004080:	c4f73a23          	sd	a5,-940(a4) # 8000ccd0 <_ZN6Kernel7pcbHeadE>
    80004084:	fd9ff06f          	j	8000405c <_ZN6Kernel12removeThreadEPm+0x48>
    if(!cur) return -1;
    80004088:	fff00513          	li	a0,-1
}
    8000408c:	00008067          	ret

0000000080004090 <_ZN6Kernel12addSemaphoreEP3SCBPm>:

int Kernel::addSemaphore(SCB* scb, uint64* handle){
    if(scb == nullptr) return -1;
    80004090:	08050863          	beqz	a0,80004120 <_ZN6Kernel12addSemaphoreEP3SCBPm+0x90>
int Kernel::addSemaphore(SCB* scb, uint64* handle){
    80004094:	fe010113          	addi	sp,sp,-32
    80004098:	00113c23          	sd	ra,24(sp)
    8000409c:	00813823          	sd	s0,16(sp)
    800040a0:	00913423          	sd	s1,8(sp)
    800040a4:	01213023          	sd	s2,0(sp)
    800040a8:	02010413          	addi	s0,sp,32
    800040ac:	00050493          	mv	s1,a0
    800040b0:	00058913          	mv	s2,a1
    SCBNode* node = (SCBNode*) _mem_alloc(BytsBlck(sizeof(SCBNode)));
    800040b4:	01800513          	li	a0,24
    800040b8:	00000097          	auipc	ra,0x0
    800040bc:	d7c080e7          	jalr	-644(ra) # 80003e34 <_Z8BytsBlckm>
    800040c0:	fffff097          	auipc	ra,0xfffff
    800040c4:	698080e7          	jalr	1688(ra) # 80003758 <_Z10_mem_allocm>
    if(!node) return -1;
    800040c8:	06050063          	beqz	a0,80004128 <_ZN6Kernel12addSemaphoreEP3SCBPm+0x98>
    node->scb = scb;
    800040cc:	00953023          	sd	s1,0(a0)
    node->ID = handle;
    800040d0:	01253423          	sd	s2,8(a0)
    node->next = nullptr;
    800040d4:	00053823          	sd	zero,16(a0)
    if(scbHead == nullptr){
    800040d8:	00009797          	auipc	a5,0x9
    800040dc:	c107b783          	ld	a5,-1008(a5) # 8000cce8 <_ZN6Kernel7scbHeadE>
    800040e0:	02078863          	beqz	a5,80004110 <_ZN6Kernel12addSemaphoreEP3SCBPm+0x80>
        scbHead = node;
        return 0;
    }
    SCBNode* curr = scbHead;
    for(; curr->next != nullptr; curr = curr->next);
    800040e4:	00078713          	mv	a4,a5
    800040e8:	0107b783          	ld	a5,16(a5)
    800040ec:	fe079ce3          	bnez	a5,800040e4 <_ZN6Kernel12addSemaphoreEP3SCBPm+0x54>
    curr->next = node;
    800040f0:	00a73823          	sd	a0,16(a4)
    return 0;
    800040f4:	00000513          	li	a0,0
}
    800040f8:	01813083          	ld	ra,24(sp)
    800040fc:	01013403          	ld	s0,16(sp)
    80004100:	00813483          	ld	s1,8(sp)
    80004104:	00013903          	ld	s2,0(sp)
    80004108:	02010113          	addi	sp,sp,32
    8000410c:	00008067          	ret
        scbHead = node;
    80004110:	00009797          	auipc	a5,0x9
    80004114:	bca7bc23          	sd	a0,-1064(a5) # 8000cce8 <_ZN6Kernel7scbHeadE>
        return 0;
    80004118:	00000513          	li	a0,0
    8000411c:	fddff06f          	j	800040f8 <_ZN6Kernel12addSemaphoreEP3SCBPm+0x68>
    if(scb == nullptr) return -1;
    80004120:	fff00513          	li	a0,-1
}
    80004124:	00008067          	ret
    if(!node) return -1;
    80004128:	fff00513          	li	a0,-1
    8000412c:	fcdff06f          	j	800040f8 <_ZN6Kernel12addSemaphoreEP3SCBPm+0x68>

0000000080004130 <_ZN6Kernel15removeSemaphoreEP3SCB>:

int Kernel::removeSemaphore(SCB* scb){
    80004130:	00050713          	mv	a4,a0
    SCBNode* cur = scbHead, *prev = nullptr;
    80004134:	00009517          	auipc	a0,0x9
    80004138:	bb453503          	ld	a0,-1100(a0) # 8000cce8 <_ZN6Kernel7scbHeadE>
    8000413c:	00000693          	li	a3,0
    for(;cur && cur->scb != scb;prev = cur, cur = cur->next);
    80004140:	00050c63          	beqz	a0,80004158 <_ZN6Kernel15removeSemaphoreEP3SCB+0x28>
    80004144:	00053783          	ld	a5,0(a0)
    80004148:	00e78863          	beq	a5,a4,80004158 <_ZN6Kernel15removeSemaphoreEP3SCB+0x28>
    8000414c:	00050693          	mv	a3,a0
    80004150:	01053503          	ld	a0,16(a0)
    80004154:	fedff06f          	j	80004140 <_ZN6Kernel15removeSemaphoreEP3SCB+0x10>
    if(!cur) return -1;
    80004158:	04050663          	beqz	a0,800041a4 <_ZN6Kernel15removeSemaphoreEP3SCB+0x74>
int Kernel::removeSemaphore(SCB* scb){
    8000415c:	ff010113          	addi	sp,sp,-16
    80004160:	00113423          	sd	ra,8(sp)
    80004164:	00813023          	sd	s0,0(sp)
    80004168:	01010413          	addi	s0,sp,16
    if(prev) prev->next = cur->next;
    8000416c:	02068463          	beqz	a3,80004194 <_ZN6Kernel15removeSemaphoreEP3SCB+0x64>
    80004170:	01053783          	ld	a5,16(a0)
    80004174:	00f6b823          	sd	a5,16(a3)
    else scbHead = cur->next;
    _mem_free(cur);
    80004178:	fffff097          	auipc	ra,0xfffff
    8000417c:	608080e7          	jalr	1544(ra) # 80003780 <_Z9_mem_freePv>
    return 0;
    80004180:	00000513          	li	a0,0
}
    80004184:	00813083          	ld	ra,8(sp)
    80004188:	00013403          	ld	s0,0(sp)
    8000418c:	01010113          	addi	sp,sp,16
    80004190:	00008067          	ret
    else scbHead = cur->next;
    80004194:	01053783          	ld	a5,16(a0)
    80004198:	00009717          	auipc	a4,0x9
    8000419c:	b4f73823          	sd	a5,-1200(a4) # 8000cce8 <_ZN6Kernel7scbHeadE>
    800041a0:	fd9ff06f          	j	80004178 <_ZN6Kernel15removeSemaphoreEP3SCB+0x48>
    if(!cur) return -1;
    800041a4:	fff00513          	li	a0,-1
}
    800041a8:	00008067          	ret

00000000800041ac <_ZN6Kernel7findPCBEPm>:

PCB* Kernel::findPCB(uint64* handle){
    800041ac:	ff010113          	addi	sp,sp,-16
    800041b0:	00813423          	sd	s0,8(sp)
    800041b4:	01010413          	addi	s0,sp,16
    800041b8:	00050713          	mv	a4,a0
    for(PCBNode* pcb = pcbHead; pcb != nullptr; pcb = pcb->next){
    800041bc:	00009517          	auipc	a0,0x9
    800041c0:	b1453503          	ld	a0,-1260(a0) # 8000ccd0 <_ZN6Kernel7pcbHeadE>
    800041c4:	00050c63          	beqz	a0,800041dc <_ZN6Kernel7findPCBEPm+0x30>
        if(pcb->ID == handle) return pcb->pcb;
    800041c8:	00853783          	ld	a5,8(a0)
    800041cc:	00e78663          	beq	a5,a4,800041d8 <_ZN6Kernel7findPCBEPm+0x2c>
    for(PCBNode* pcb = pcbHead; pcb != nullptr; pcb = pcb->next){
    800041d0:	01053503          	ld	a0,16(a0)
    800041d4:	ff1ff06f          	j	800041c4 <_ZN6Kernel7findPCBEPm+0x18>
        if(pcb->ID == handle) return pcb->pcb;
    800041d8:	00053503          	ld	a0,0(a0)
    }
    return nullptr;
}
    800041dc:	00813403          	ld	s0,8(sp)
    800041e0:	01010113          	addi	sp,sp,16
    800041e4:	00008067          	ret

00000000800041e8 <_ZN6Kernel7findPCBEP3PCB>:

uint64* Kernel::findPCB(PCB* pcb){
    800041e8:	ff010113          	addi	sp,sp,-16
    800041ec:	00813423          	sd	s0,8(sp)
    800041f0:	01010413          	addi	s0,sp,16
    800041f4:	00050713          	mv	a4,a0
    for(PCBNode* pcbnode = pcbHead; pcbnode != nullptr; pcbnode = pcbnode->next){
    800041f8:	00009517          	auipc	a0,0x9
    800041fc:	ad853503          	ld	a0,-1320(a0) # 8000ccd0 <_ZN6Kernel7pcbHeadE>
    80004200:	00050c63          	beqz	a0,80004218 <_ZN6Kernel7findPCBEP3PCB+0x30>
        if(pcbnode->pcb == pcb) return pcbnode->ID;
    80004204:	00053783          	ld	a5,0(a0)
    80004208:	00e78663          	beq	a5,a4,80004214 <_ZN6Kernel7findPCBEP3PCB+0x2c>
    for(PCBNode* pcbnode = pcbHead; pcbnode != nullptr; pcbnode = pcbnode->next){
    8000420c:	01053503          	ld	a0,16(a0)
    80004210:	ff1ff06f          	j	80004200 <_ZN6Kernel7findPCBEP3PCB+0x18>
        if(pcbnode->pcb == pcb) return pcbnode->ID;
    80004214:	00853503          	ld	a0,8(a0)
    }
    return nullptr;
}
    80004218:	00813403          	ld	s0,8(sp)
    8000421c:	01010113          	addi	sp,sp,16
    80004220:	00008067          	ret

0000000080004224 <_ZN6Kernel7findSCBEPm>:

SCB* Kernel::findSCB(uint64* handle){
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00813423          	sd	s0,8(sp)
    8000422c:	01010413          	addi	s0,sp,16
    80004230:	00050713          	mv	a4,a0
    for(SCBNode* scb = scbHead; scb != nullptr; scb = scb->next){
    80004234:	00009517          	auipc	a0,0x9
    80004238:	ab453503          	ld	a0,-1356(a0) # 8000cce8 <_ZN6Kernel7scbHeadE>
    8000423c:	00050c63          	beqz	a0,80004254 <_ZN6Kernel7findSCBEPm+0x30>
        if(scb->ID == handle) return scb->scb;
    80004240:	00853783          	ld	a5,8(a0)
    80004244:	00e78663          	beq	a5,a4,80004250 <_ZN6Kernel7findSCBEPm+0x2c>
    for(SCBNode* scb = scbHead; scb != nullptr; scb = scb->next){
    80004248:	01053503          	ld	a0,16(a0)
    8000424c:	ff1ff06f          	j	8000423c <_ZN6Kernel7findSCBEPm+0x18>
        if(scb->ID == handle) return scb->scb;
    80004250:	00053503          	ld	a0,0(a0)
    }
    return nullptr;
}
    80004254:	00813403          	ld	s0,8(sp)
    80004258:	01010113          	addi	sp,sp,16
    8000425c:	00008067          	ret

0000000080004260 <_ZN6Kernel11blockThreadEP3PCBPmm>:

int Kernel::blockThread(PCB* pcb, uint64* handle, time_t time){
    if(pcb == nullptr) return -1;
    80004260:	0a050863          	beqz	a0,80004310 <_ZN6Kernel11blockThreadEP3PCBPmm+0xb0>
int Kernel::blockThread(PCB* pcb, uint64* handle, time_t time){
    80004264:	fd010113          	addi	sp,sp,-48
    80004268:	02113423          	sd	ra,40(sp)
    8000426c:	02813023          	sd	s0,32(sp)
    80004270:	00913c23          	sd	s1,24(sp)
    80004274:	01213823          	sd	s2,16(sp)
    80004278:	01313423          	sd	s3,8(sp)
    8000427c:	03010413          	addi	s0,sp,48
    80004280:	00050913          	mv	s2,a0
    80004284:	00058993          	mv	s3,a1
    80004288:	00060493          	mv	s1,a2
    BlockedNode* node = (BlockedNode*) _mem_alloc(BytsBlck(sizeof(BlockedNode)));
    8000428c:	02000513          	li	a0,32
    80004290:	00000097          	auipc	ra,0x0
    80004294:	ba4080e7          	jalr	-1116(ra) # 80003e34 <_Z8BytsBlckm>
    80004298:	fffff097          	auipc	ra,0xfffff
    8000429c:	4c0080e7          	jalr	1216(ra) # 80003758 <_Z10_mem_allocm>
    if(!node) return -1;
    800042a0:	06050c63          	beqz	a0,80004318 <_ZN6Kernel11blockThreadEP3PCBPmm+0xb8>
    node->pcb = pcb;
    800042a4:	01253023          	sd	s2,0(a0)
    node->ID = handle;
    800042a8:	01353423          	sd	s3,8(a0)
    node->time = time;
    800042ac:	00953823          	sd	s1,16(a0)
    node->next = nullptr;
    800042b0:	00053c23          	sd	zero,24(a0)
    if(blockedHead == nullptr){
    800042b4:	00009797          	auipc	a5,0x9
    800042b8:	a3c7b783          	ld	a5,-1476(a5) # 8000ccf0 <_ZN6Kernel11blockedHeadE>
    800042bc:	04078263          	beqz	a5,80004300 <_ZN6Kernel11blockThreadEP3PCBPmm+0xa0>
        blockedHead = node;
        return 0;
    }
    BlockedNode* curr = blockedHead;
    for(; curr->next != nullptr && curr->time < node->time; curr = curr->next);
    800042c0:	00078713          	mv	a4,a5
    800042c4:	0187b783          	ld	a5,24(a5)
    800042c8:	00078663          	beqz	a5,800042d4 <_ZN6Kernel11blockThreadEP3PCBPmm+0x74>
    800042cc:	01073683          	ld	a3,16(a4)
    800042d0:	fe96e8e3          	bltu	a3,s1,800042c0 <_ZN6Kernel11blockThreadEP3PCBPmm+0x60>
    if(curr->next) node->next = curr->next;
    800042d4:	00078463          	beqz	a5,800042dc <_ZN6Kernel11blockThreadEP3PCBPmm+0x7c>
    800042d8:	00f53c23          	sd	a5,24(a0)
    curr->next = node;
    800042dc:	00a73c23          	sd	a0,24(a4)
    return 0;
    800042e0:	00000513          	li	a0,0
}
    800042e4:	02813083          	ld	ra,40(sp)
    800042e8:	02013403          	ld	s0,32(sp)
    800042ec:	01813483          	ld	s1,24(sp)
    800042f0:	01013903          	ld	s2,16(sp)
    800042f4:	00813983          	ld	s3,8(sp)
    800042f8:	03010113          	addi	sp,sp,48
    800042fc:	00008067          	ret
        blockedHead = node;
    80004300:	00009797          	auipc	a5,0x9
    80004304:	9ea7b823          	sd	a0,-1552(a5) # 8000ccf0 <_ZN6Kernel11blockedHeadE>
        return 0;
    80004308:	00000513          	li	a0,0
    8000430c:	fd9ff06f          	j	800042e4 <_ZN6Kernel11blockThreadEP3PCBPmm+0x84>
    if(pcb == nullptr) return -1;
    80004310:	fff00513          	li	a0,-1
}
    80004314:	00008067          	ret
    if(!node) return -1;
    80004318:	fff00513          	li	a0,-1
    8000431c:	fc9ff06f          	j	800042e4 <_ZN6Kernel11blockThreadEP3PCBPmm+0x84>

0000000080004320 <_ZN6Kernel16getBlockedThreadEv>:

PCB* Kernel::getBlockedThread(){
    80004320:	fe010113          	addi	sp,sp,-32
    80004324:	00113c23          	sd	ra,24(sp)
    80004328:	00813823          	sd	s0,16(sp)
    8000432c:	00913423          	sd	s1,8(sp)
    80004330:	02010413          	addi	s0,sp,32
    if(!blockedHead || blockedHead->time > 0) return nullptr;
    80004334:	00009517          	auipc	a0,0x9
    80004338:	9bc53503          	ld	a0,-1604(a0) # 8000ccf0 <_ZN6Kernel11blockedHeadE>
    8000433c:	02050e63          	beqz	a0,80004378 <_ZN6Kernel16getBlockedThreadEv+0x58>
    80004340:	01053783          	ld	a5,16(a0)
    80004344:	02079e63          	bnez	a5,80004380 <_ZN6Kernel16getBlockedThreadEv+0x60>
    PCB* pcb = blockedHead->pcb;
    80004348:	00053483          	ld	s1,0(a0)
    BlockedNode* node = blockedHead;
    blockedHead = node->next;
    8000434c:	01853783          	ld	a5,24(a0)
    80004350:	00009717          	auipc	a4,0x9
    80004354:	9af73023          	sd	a5,-1632(a4) # 8000ccf0 <_ZN6Kernel11blockedHeadE>
    _mem_free(node);
    80004358:	fffff097          	auipc	ra,0xfffff
    8000435c:	428080e7          	jalr	1064(ra) # 80003780 <_Z9_mem_freePv>
    return pcb;
}
    80004360:	00048513          	mv	a0,s1
    80004364:	01813083          	ld	ra,24(sp)
    80004368:	01013403          	ld	s0,16(sp)
    8000436c:	00813483          	ld	s1,8(sp)
    80004370:	02010113          	addi	sp,sp,32
    80004374:	00008067          	ret
    if(!blockedHead || blockedHead->time > 0) return nullptr;
    80004378:	00050493          	mv	s1,a0
    8000437c:	fe5ff06f          	j	80004360 <_ZN6Kernel16getBlockedThreadEv+0x40>
    80004380:	00000493          	li	s1,0
    80004384:	fddff06f          	j	80004360 <_ZN6Kernel16getBlockedThreadEv+0x40>

0000000080004388 <_ZN6Kernel11tickBlockedEv>:

void Kernel::tickBlocked(){
    80004388:	ff010113          	addi	sp,sp,-16
    8000438c:	00813423          	sd	s0,8(sp)
    80004390:	01010413          	addi	s0,sp,16
    for(BlockedNode* curr=blockedHead; curr; curr=curr->next)
    80004394:	00009797          	auipc	a5,0x9
    80004398:	95c7b783          	ld	a5,-1700(a5) # 8000ccf0 <_ZN6Kernel11blockedHeadE>
    8000439c:	00078c63          	beqz	a5,800043b4 <_ZN6Kernel11tickBlockedEv+0x2c>
        curr->time--;
    800043a0:	0107b703          	ld	a4,16(a5)
    800043a4:	fff70713          	addi	a4,a4,-1
    800043a8:	00e7b823          	sd	a4,16(a5)
    for(BlockedNode* curr=blockedHead; curr; curr=curr->next)
    800043ac:	0187b783          	ld	a5,24(a5)
    800043b0:	fedff06f          	j	8000439c <_ZN6Kernel11tickBlockedEv+0x14>
    800043b4:	00813403          	ld	s0,8(sp)
    800043b8:	01010113          	addi	sp,sp,16
    800043bc:	00008067          	ret

00000000800043c0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800043c0:	fe010113          	addi	sp,sp,-32
    800043c4:	00113c23          	sd	ra,24(sp)
    800043c8:	00813823          	sd	s0,16(sp)
    800043cc:	00913423          	sd	s1,8(sp)
    800043d0:	01213023          	sd	s2,0(sp)
    800043d4:	02010413          	addi	s0,sp,32
    800043d8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800043dc:	00000913          	li	s2,0
    800043e0:	00c0006f          	j	800043ec <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800043e4:	ffffd097          	auipc	ra,0xffffd
    800043e8:	3f8080e7          	jalr	1016(ra) # 800017dc <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    800043ec:	ffffd097          	auipc	ra,0xffffd
    800043f0:	6d4080e7          	jalr	1748(ra) # 80001ac0 <getc>
    800043f4:	0005059b          	sext.w	a1,a0
    800043f8:	01b00793          	li	a5,27
    800043fc:	02f58a63          	beq	a1,a5,80004430 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004400:	0084b503          	ld	a0,8(s1)
    80004404:	00003097          	auipc	ra,0x3
    80004408:	c70080e7          	jalr	-912(ra) # 80007074 <_ZN6Buffer3putEi>
        i++;
    8000440c:	0019071b          	addiw	a4,s2,1
    80004410:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004414:	0004a683          	lw	a3,0(s1)
    80004418:	0026979b          	slliw	a5,a3,0x2
    8000441c:	00d787bb          	addw	a5,a5,a3
    80004420:	0017979b          	slliw	a5,a5,0x1
    80004424:	02f767bb          	remw	a5,a4,a5
    80004428:	fc0792e3          	bnez	a5,800043ec <_ZL16producerKeyboardPv+0x2c>
    8000442c:	fb9ff06f          	j	800043e4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80004430:	00100793          	li	a5,1
    80004434:	00009717          	auipc	a4,0x9
    80004438:	8cf72223          	sw	a5,-1852(a4) # 8000ccf8 <_ZL9threadEnd>
    data->buffer->put('!');
    8000443c:	02100593          	li	a1,33
    80004440:	0084b503          	ld	a0,8(s1)
    80004444:	00003097          	auipc	ra,0x3
    80004448:	c30080e7          	jalr	-976(ra) # 80007074 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000444c:	0104b503          	ld	a0,16(s1)
    80004450:	ffffd097          	auipc	ra,0xffffd
    80004454:	5c8080e7          	jalr	1480(ra) # 80001a18 <sem_signal>
}
    80004458:	01813083          	ld	ra,24(sp)
    8000445c:	01013403          	ld	s0,16(sp)
    80004460:	00813483          	ld	s1,8(sp)
    80004464:	00013903          	ld	s2,0(sp)
    80004468:	02010113          	addi	sp,sp,32
    8000446c:	00008067          	ret

0000000080004470 <_ZL8producerPv>:

static void producer(void *arg) {
    80004470:	fe010113          	addi	sp,sp,-32
    80004474:	00113c23          	sd	ra,24(sp)
    80004478:	00813823          	sd	s0,16(sp)
    8000447c:	00913423          	sd	s1,8(sp)
    80004480:	01213023          	sd	s2,0(sp)
    80004484:	02010413          	addi	s0,sp,32
    80004488:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000448c:	00000913          	li	s2,0
    80004490:	00c0006f          	j	8000449c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004494:	ffffd097          	auipc	ra,0xffffd
    80004498:	348080e7          	jalr	840(ra) # 800017dc <thread_dispatch>
    while (!threadEnd) {
    8000449c:	00009797          	auipc	a5,0x9
    800044a0:	85c7a783          	lw	a5,-1956(a5) # 8000ccf8 <_ZL9threadEnd>
    800044a4:	02079e63          	bnez	a5,800044e0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800044a8:	0004a583          	lw	a1,0(s1)
    800044ac:	0305859b          	addiw	a1,a1,48
    800044b0:	0084b503          	ld	a0,8(s1)
    800044b4:	00003097          	auipc	ra,0x3
    800044b8:	bc0080e7          	jalr	-1088(ra) # 80007074 <_ZN6Buffer3putEi>
        i++;
    800044bc:	0019071b          	addiw	a4,s2,1
    800044c0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800044c4:	0004a683          	lw	a3,0(s1)
    800044c8:	0026979b          	slliw	a5,a3,0x2
    800044cc:	00d787bb          	addw	a5,a5,a3
    800044d0:	0017979b          	slliw	a5,a5,0x1
    800044d4:	02f767bb          	remw	a5,a4,a5
    800044d8:	fc0792e3          	bnez	a5,8000449c <_ZL8producerPv+0x2c>
    800044dc:	fb9ff06f          	j	80004494 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800044e0:	0104b503          	ld	a0,16(s1)
    800044e4:	ffffd097          	auipc	ra,0xffffd
    800044e8:	534080e7          	jalr	1332(ra) # 80001a18 <sem_signal>
}
    800044ec:	01813083          	ld	ra,24(sp)
    800044f0:	01013403          	ld	s0,16(sp)
    800044f4:	00813483          	ld	s1,8(sp)
    800044f8:	00013903          	ld	s2,0(sp)
    800044fc:	02010113          	addi	sp,sp,32
    80004500:	00008067          	ret

0000000080004504 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80004504:	fd010113          	addi	sp,sp,-48
    80004508:	02113423          	sd	ra,40(sp)
    8000450c:	02813023          	sd	s0,32(sp)
    80004510:	00913c23          	sd	s1,24(sp)
    80004514:	01213823          	sd	s2,16(sp)
    80004518:	01313423          	sd	s3,8(sp)
    8000451c:	03010413          	addi	s0,sp,48
    80004520:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004524:	00000993          	li	s3,0
    80004528:	01c0006f          	j	80004544 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000452c:	ffffd097          	auipc	ra,0xffffd
    80004530:	2b0080e7          	jalr	688(ra) # 800017dc <thread_dispatch>
    80004534:	0500006f          	j	80004584 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004538:	00a00513          	li	a0,10
    8000453c:	ffffd097          	auipc	ra,0xffffd
    80004540:	5cc080e7          	jalr	1484(ra) # 80001b08 <putc>
    while (!threadEnd) {
    80004544:	00008797          	auipc	a5,0x8
    80004548:	7b47a783          	lw	a5,1972(a5) # 8000ccf8 <_ZL9threadEnd>
    8000454c:	06079063          	bnez	a5,800045ac <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80004550:	00893503          	ld	a0,8(s2)
    80004554:	00003097          	auipc	ra,0x3
    80004558:	bb0080e7          	jalr	-1104(ra) # 80007104 <_ZN6Buffer3getEv>
        i++;
    8000455c:	0019849b          	addiw	s1,s3,1
    80004560:	0004899b          	sext.w	s3,s1
        putc(key);
    80004564:	0ff57513          	andi	a0,a0,255
    80004568:	ffffd097          	auipc	ra,0xffffd
    8000456c:	5a0080e7          	jalr	1440(ra) # 80001b08 <putc>
        if (i % (5 * data->id) == 0) {
    80004570:	00092703          	lw	a4,0(s2)
    80004574:	0027179b          	slliw	a5,a4,0x2
    80004578:	00e787bb          	addw	a5,a5,a4
    8000457c:	02f4e7bb          	remw	a5,s1,a5
    80004580:	fa0786e3          	beqz	a5,8000452c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80004584:	05000793          	li	a5,80
    80004588:	02f4e4bb          	remw	s1,s1,a5
    8000458c:	fa049ce3          	bnez	s1,80004544 <_ZL8consumerPv+0x40>
    80004590:	fa9ff06f          	j	80004538 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80004594:	00893503          	ld	a0,8(s2)
    80004598:	00003097          	auipc	ra,0x3
    8000459c:	b6c080e7          	jalr	-1172(ra) # 80007104 <_ZN6Buffer3getEv>
        putc(key);
    800045a0:	0ff57513          	andi	a0,a0,255
    800045a4:	ffffd097          	auipc	ra,0xffffd
    800045a8:	564080e7          	jalr	1380(ra) # 80001b08 <putc>
    while (data->buffer->getCnt() > 0) {
    800045ac:	00893503          	ld	a0,8(s2)
    800045b0:	00003097          	auipc	ra,0x3
    800045b4:	be0080e7          	jalr	-1056(ra) # 80007190 <_ZN6Buffer6getCntEv>
    800045b8:	fca04ee3          	bgtz	a0,80004594 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800045bc:	01093503          	ld	a0,16(s2)
    800045c0:	ffffd097          	auipc	ra,0xffffd
    800045c4:	458080e7          	jalr	1112(ra) # 80001a18 <sem_signal>
}
    800045c8:	02813083          	ld	ra,40(sp)
    800045cc:	02013403          	ld	s0,32(sp)
    800045d0:	01813483          	ld	s1,24(sp)
    800045d4:	01013903          	ld	s2,16(sp)
    800045d8:	00813983          	ld	s3,8(sp)
    800045dc:	03010113          	addi	sp,sp,48
    800045e0:	00008067          	ret

00000000800045e4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800045e4:	f9010113          	addi	sp,sp,-112
    800045e8:	06113423          	sd	ra,104(sp)
    800045ec:	06813023          	sd	s0,96(sp)
    800045f0:	04913c23          	sd	s1,88(sp)
    800045f4:	05213823          	sd	s2,80(sp)
    800045f8:	05313423          	sd	s3,72(sp)
    800045fc:	05413023          	sd	s4,64(sp)
    80004600:	03513c23          	sd	s5,56(sp)
    80004604:	03613823          	sd	s6,48(sp)
    80004608:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000460c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80004610:	00006517          	auipc	a0,0x6
    80004614:	bc850513          	addi	a0,a0,-1080 # 8000a1d8 <CONSOLE_STATUS+0x1c0>
    80004618:	00002097          	auipc	ra,0x2
    8000461c:	a9c080e7          	jalr	-1380(ra) # 800060b4 <_Z11printStringPKc>
    getString(input, 30);
    80004620:	01e00593          	li	a1,30
    80004624:	fa040493          	addi	s1,s0,-96
    80004628:	00048513          	mv	a0,s1
    8000462c:	00002097          	auipc	ra,0x2
    80004630:	b10080e7          	jalr	-1264(ra) # 8000613c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004634:	00048513          	mv	a0,s1
    80004638:	00002097          	auipc	ra,0x2
    8000463c:	bdc080e7          	jalr	-1060(ra) # 80006214 <_Z11stringToIntPKc>
    80004640:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004644:	00006517          	auipc	a0,0x6
    80004648:	bb450513          	addi	a0,a0,-1100 # 8000a1f8 <CONSOLE_STATUS+0x1e0>
    8000464c:	00002097          	auipc	ra,0x2
    80004650:	a68080e7          	jalr	-1432(ra) # 800060b4 <_Z11printStringPKc>
    getString(input, 30);
    80004654:	01e00593          	li	a1,30
    80004658:	00048513          	mv	a0,s1
    8000465c:	00002097          	auipc	ra,0x2
    80004660:	ae0080e7          	jalr	-1312(ra) # 8000613c <_Z9getStringPci>
    n = stringToInt(input);
    80004664:	00048513          	mv	a0,s1
    80004668:	00002097          	auipc	ra,0x2
    8000466c:	bac080e7          	jalr	-1108(ra) # 80006214 <_Z11stringToIntPKc>
    80004670:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004674:	00006517          	auipc	a0,0x6
    80004678:	ba450513          	addi	a0,a0,-1116 # 8000a218 <CONSOLE_STATUS+0x200>
    8000467c:	00002097          	auipc	ra,0x2
    80004680:	a38080e7          	jalr	-1480(ra) # 800060b4 <_Z11printStringPKc>
    80004684:	00000613          	li	a2,0
    80004688:	00a00593          	li	a1,10
    8000468c:	00090513          	mv	a0,s2
    80004690:	00002097          	auipc	ra,0x2
    80004694:	bd4080e7          	jalr	-1068(ra) # 80006264 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004698:	00006517          	auipc	a0,0x6
    8000469c:	b9850513          	addi	a0,a0,-1128 # 8000a230 <CONSOLE_STATUS+0x218>
    800046a0:	00002097          	auipc	ra,0x2
    800046a4:	a14080e7          	jalr	-1516(ra) # 800060b4 <_Z11printStringPKc>
    800046a8:	00000613          	li	a2,0
    800046ac:	00a00593          	li	a1,10
    800046b0:	00048513          	mv	a0,s1
    800046b4:	00002097          	auipc	ra,0x2
    800046b8:	bb0080e7          	jalr	-1104(ra) # 80006264 <_Z8printIntiii>
    printString(".\n");
    800046bc:	00006517          	auipc	a0,0x6
    800046c0:	b8c50513          	addi	a0,a0,-1140 # 8000a248 <CONSOLE_STATUS+0x230>
    800046c4:	00002097          	auipc	ra,0x2
    800046c8:	9f0080e7          	jalr	-1552(ra) # 800060b4 <_Z11printStringPKc>
    if(threadNum > n) {
    800046cc:	0324c463          	blt	s1,s2,800046f4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800046d0:	03205c63          	blez	s2,80004708 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800046d4:	03800513          	li	a0,56
    800046d8:	ffffe097          	auipc	ra,0xffffe
    800046dc:	f84080e7          	jalr	-124(ra) # 8000265c <_Znwm>
    800046e0:	00050a13          	mv	s4,a0
    800046e4:	00048593          	mv	a1,s1
    800046e8:	00003097          	auipc	ra,0x3
    800046ec:	8f0080e7          	jalr	-1808(ra) # 80006fd8 <_ZN6BufferC1Ei>
    800046f0:	0300006f          	j	80004720 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800046f4:	00006517          	auipc	a0,0x6
    800046f8:	b5c50513          	addi	a0,a0,-1188 # 8000a250 <CONSOLE_STATUS+0x238>
    800046fc:	00002097          	auipc	ra,0x2
    80004700:	9b8080e7          	jalr	-1608(ra) # 800060b4 <_Z11printStringPKc>
        return;
    80004704:	0140006f          	j	80004718 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004708:	00006517          	auipc	a0,0x6
    8000470c:	b8850513          	addi	a0,a0,-1144 # 8000a290 <CONSOLE_STATUS+0x278>
    80004710:	00002097          	auipc	ra,0x2
    80004714:	9a4080e7          	jalr	-1628(ra) # 800060b4 <_Z11printStringPKc>
        return;
    80004718:	000b0113          	mv	sp,s6
    8000471c:	1500006f          	j	8000486c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80004720:	00000593          	li	a1,0
    80004724:	00008517          	auipc	a0,0x8
    80004728:	5dc50513          	addi	a0,a0,1500 # 8000cd00 <_ZL10waitForAll>
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	1ec080e7          	jalr	492(ra) # 80001918 <sem_open>
    thread_t threads[threadNum];
    80004734:	00391793          	slli	a5,s2,0x3
    80004738:	00f78793          	addi	a5,a5,15
    8000473c:	ff07f793          	andi	a5,a5,-16
    80004740:	40f10133          	sub	sp,sp,a5
    80004744:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80004748:	0019071b          	addiw	a4,s2,1
    8000474c:	00171793          	slli	a5,a4,0x1
    80004750:	00e787b3          	add	a5,a5,a4
    80004754:	00379793          	slli	a5,a5,0x3
    80004758:	00f78793          	addi	a5,a5,15
    8000475c:	ff07f793          	andi	a5,a5,-16
    80004760:	40f10133          	sub	sp,sp,a5
    80004764:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80004768:	00191613          	slli	a2,s2,0x1
    8000476c:	012607b3          	add	a5,a2,s2
    80004770:	00379793          	slli	a5,a5,0x3
    80004774:	00f987b3          	add	a5,s3,a5
    80004778:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000477c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004780:	00008717          	auipc	a4,0x8
    80004784:	58073703          	ld	a4,1408(a4) # 8000cd00 <_ZL10waitForAll>
    80004788:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000478c:	00078613          	mv	a2,a5
    80004790:	00000597          	auipc	a1,0x0
    80004794:	d7458593          	addi	a1,a1,-652 # 80004504 <_ZL8consumerPv>
    80004798:	f9840513          	addi	a0,s0,-104
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	f5c080e7          	jalr	-164(ra) # 800016f8 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800047a4:	00000493          	li	s1,0
    800047a8:	0280006f          	j	800047d0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800047ac:	00000597          	auipc	a1,0x0
    800047b0:	c1458593          	addi	a1,a1,-1004 # 800043c0 <_ZL16producerKeyboardPv>
                      data + i);
    800047b4:	00179613          	slli	a2,a5,0x1
    800047b8:	00f60633          	add	a2,a2,a5
    800047bc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800047c0:	00c98633          	add	a2,s3,a2
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	f34080e7          	jalr	-204(ra) # 800016f8 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800047cc:	0014849b          	addiw	s1,s1,1
    800047d0:	0524d263          	bge	s1,s2,80004814 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800047d4:	00149793          	slli	a5,s1,0x1
    800047d8:	009787b3          	add	a5,a5,s1
    800047dc:	00379793          	slli	a5,a5,0x3
    800047e0:	00f987b3          	add	a5,s3,a5
    800047e4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800047e8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800047ec:	00008717          	auipc	a4,0x8
    800047f0:	51473703          	ld	a4,1300(a4) # 8000cd00 <_ZL10waitForAll>
    800047f4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800047f8:	00048793          	mv	a5,s1
    800047fc:	00349513          	slli	a0,s1,0x3
    80004800:	00aa8533          	add	a0,s5,a0
    80004804:	fa9054e3          	blez	s1,800047ac <_Z22producerConsumer_C_APIv+0x1c8>
    80004808:	00000597          	auipc	a1,0x0
    8000480c:	c6858593          	addi	a1,a1,-920 # 80004470 <_ZL8producerPv>
    80004810:	fa5ff06f          	j	800047b4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80004814:	ffffd097          	auipc	ra,0xffffd
    80004818:	fc8080e7          	jalr	-56(ra) # 800017dc <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    8000481c:	00000493          	li	s1,0
    80004820:	00994e63          	blt	s2,s1,8000483c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80004824:	00008517          	auipc	a0,0x8
    80004828:	4dc53503          	ld	a0,1244(a0) # 8000cd00 <_ZL10waitForAll>
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	198080e7          	jalr	408(ra) # 800019c4 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004834:	0014849b          	addiw	s1,s1,1
    80004838:	fe9ff06f          	j	80004820 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000483c:	00008517          	auipc	a0,0x8
    80004840:	4c453503          	ld	a0,1220(a0) # 8000cd00 <_ZL10waitForAll>
    80004844:	ffffd097          	auipc	ra,0xffffd
    80004848:	12c080e7          	jalr	300(ra) # 80001970 <sem_close>
    delete buffer;
    8000484c:	000a0e63          	beqz	s4,80004868 <_Z22producerConsumer_C_APIv+0x284>
    80004850:	000a0513          	mv	a0,s4
    80004854:	00003097          	auipc	ra,0x3
    80004858:	9c4080e7          	jalr	-1596(ra) # 80007218 <_ZN6BufferD1Ev>
    8000485c:	000a0513          	mv	a0,s4
    80004860:	ffffe097          	auipc	ra,0xffffe
    80004864:	e4c080e7          	jalr	-436(ra) # 800026ac <_ZdlPv>
    80004868:	000b0113          	mv	sp,s6

}
    8000486c:	f9040113          	addi	sp,s0,-112
    80004870:	06813083          	ld	ra,104(sp)
    80004874:	06013403          	ld	s0,96(sp)
    80004878:	05813483          	ld	s1,88(sp)
    8000487c:	05013903          	ld	s2,80(sp)
    80004880:	04813983          	ld	s3,72(sp)
    80004884:	04013a03          	ld	s4,64(sp)
    80004888:	03813a83          	ld	s5,56(sp)
    8000488c:	03013b03          	ld	s6,48(sp)
    80004890:	07010113          	addi	sp,sp,112
    80004894:	00008067          	ret
    80004898:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000489c:	000a0513          	mv	a0,s4
    800048a0:	ffffe097          	auipc	ra,0xffffe
    800048a4:	e0c080e7          	jalr	-500(ra) # 800026ac <_ZdlPv>
    800048a8:	00048513          	mv	a0,s1
    800048ac:	00009097          	auipc	ra,0x9
    800048b0:	54c080e7          	jalr	1356(ra) # 8000ddf8 <_Unwind_Resume>

00000000800048b4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800048b4:	fe010113          	addi	sp,sp,-32
    800048b8:	00113c23          	sd	ra,24(sp)
    800048bc:	00813823          	sd	s0,16(sp)
    800048c0:	00913423          	sd	s1,8(sp)
    800048c4:	01213023          	sd	s2,0(sp)
    800048c8:	02010413          	addi	s0,sp,32
    800048cc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800048d0:	00100793          	li	a5,1
    800048d4:	02a7f863          	bgeu	a5,a0,80004904 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800048d8:	00a00793          	li	a5,10
    800048dc:	02f577b3          	remu	a5,a0,a5
    800048e0:	02078e63          	beqz	a5,8000491c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800048e4:	fff48513          	addi	a0,s1,-1
    800048e8:	00000097          	auipc	ra,0x0
    800048ec:	fcc080e7          	jalr	-52(ra) # 800048b4 <_ZL9fibonaccim>
    800048f0:	00050913          	mv	s2,a0
    800048f4:	ffe48513          	addi	a0,s1,-2
    800048f8:	00000097          	auipc	ra,0x0
    800048fc:	fbc080e7          	jalr	-68(ra) # 800048b4 <_ZL9fibonaccim>
    80004900:	00a90533          	add	a0,s2,a0
}
    80004904:	01813083          	ld	ra,24(sp)
    80004908:	01013403          	ld	s0,16(sp)
    8000490c:	00813483          	ld	s1,8(sp)
    80004910:	00013903          	ld	s2,0(sp)
    80004914:	02010113          	addi	sp,sp,32
    80004918:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000491c:	ffffd097          	auipc	ra,0xffffd
    80004920:	ec0080e7          	jalr	-320(ra) # 800017dc <thread_dispatch>
    80004924:	fc1ff06f          	j	800048e4 <_ZL9fibonaccim+0x30>

0000000080004928 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80004928:	fe010113          	addi	sp,sp,-32
    8000492c:	00113c23          	sd	ra,24(sp)
    80004930:	00813823          	sd	s0,16(sp)
    80004934:	00913423          	sd	s1,8(sp)
    80004938:	01213023          	sd	s2,0(sp)
    8000493c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004940:	00000913          	li	s2,0
    80004944:	0380006f          	j	8000497c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	e94080e7          	jalr	-364(ra) # 800017dc <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004950:	00148493          	addi	s1,s1,1
    80004954:	000027b7          	lui	a5,0x2
    80004958:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000495c:	0097ee63          	bltu	a5,s1,80004978 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004960:	00000713          	li	a4,0
    80004964:	000077b7          	lui	a5,0x7
    80004968:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000496c:	fce7eee3          	bltu	a5,a4,80004948 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004970:	00170713          	addi	a4,a4,1
    80004974:	ff1ff06f          	j	80004964 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004978:	00190913          	addi	s2,s2,1
    8000497c:	00900793          	li	a5,9
    80004980:	0527e063          	bltu	a5,s2,800049c0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004984:	00006517          	auipc	a0,0x6
    80004988:	93c50513          	addi	a0,a0,-1732 # 8000a2c0 <CONSOLE_STATUS+0x2a8>
    8000498c:	00001097          	auipc	ra,0x1
    80004990:	728080e7          	jalr	1832(ra) # 800060b4 <_Z11printStringPKc>
    80004994:	00000613          	li	a2,0
    80004998:	00a00593          	li	a1,10
    8000499c:	0009051b          	sext.w	a0,s2
    800049a0:	00002097          	auipc	ra,0x2
    800049a4:	8c4080e7          	jalr	-1852(ra) # 80006264 <_Z8printIntiii>
    800049a8:	00006517          	auipc	a0,0x6
    800049ac:	ba850513          	addi	a0,a0,-1112 # 8000a550 <CONSOLE_STATUS+0x538>
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	704080e7          	jalr	1796(ra) # 800060b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800049b8:	00000493          	li	s1,0
    800049bc:	f99ff06f          	j	80004954 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800049c0:	00006517          	auipc	a0,0x6
    800049c4:	90850513          	addi	a0,a0,-1784 # 8000a2c8 <CONSOLE_STATUS+0x2b0>
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	6ec080e7          	jalr	1772(ra) # 800060b4 <_Z11printStringPKc>
    finishedA = true;
    800049d0:	00100793          	li	a5,1
    800049d4:	00008717          	auipc	a4,0x8
    800049d8:	32f70a23          	sb	a5,820(a4) # 8000cd08 <_ZL9finishedA>
}
    800049dc:	01813083          	ld	ra,24(sp)
    800049e0:	01013403          	ld	s0,16(sp)
    800049e4:	00813483          	ld	s1,8(sp)
    800049e8:	00013903          	ld	s2,0(sp)
    800049ec:	02010113          	addi	sp,sp,32
    800049f0:	00008067          	ret

00000000800049f4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800049f4:	fe010113          	addi	sp,sp,-32
    800049f8:	00113c23          	sd	ra,24(sp)
    800049fc:	00813823          	sd	s0,16(sp)
    80004a00:	00913423          	sd	s1,8(sp)
    80004a04:	01213023          	sd	s2,0(sp)
    80004a08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004a0c:	00000913          	li	s2,0
    80004a10:	0380006f          	j	80004a48 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004a14:	ffffd097          	auipc	ra,0xffffd
    80004a18:	dc8080e7          	jalr	-568(ra) # 800017dc <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004a1c:	00148493          	addi	s1,s1,1
    80004a20:	000027b7          	lui	a5,0x2
    80004a24:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a28:	0097ee63          	bltu	a5,s1,80004a44 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a2c:	00000713          	li	a4,0
    80004a30:	000077b7          	lui	a5,0x7
    80004a34:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a38:	fce7eee3          	bltu	a5,a4,80004a14 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004a3c:	00170713          	addi	a4,a4,1
    80004a40:	ff1ff06f          	j	80004a30 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004a44:	00190913          	addi	s2,s2,1
    80004a48:	00f00793          	li	a5,15
    80004a4c:	0527e063          	bltu	a5,s2,80004a8c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004a50:	00006517          	auipc	a0,0x6
    80004a54:	88850513          	addi	a0,a0,-1912 # 8000a2d8 <CONSOLE_STATUS+0x2c0>
    80004a58:	00001097          	auipc	ra,0x1
    80004a5c:	65c080e7          	jalr	1628(ra) # 800060b4 <_Z11printStringPKc>
    80004a60:	00000613          	li	a2,0
    80004a64:	00a00593          	li	a1,10
    80004a68:	0009051b          	sext.w	a0,s2
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	7f8080e7          	jalr	2040(ra) # 80006264 <_Z8printIntiii>
    80004a74:	00006517          	auipc	a0,0x6
    80004a78:	adc50513          	addi	a0,a0,-1316 # 8000a550 <CONSOLE_STATUS+0x538>
    80004a7c:	00001097          	auipc	ra,0x1
    80004a80:	638080e7          	jalr	1592(ra) # 800060b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a84:	00000493          	li	s1,0
    80004a88:	f99ff06f          	j	80004a20 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004a8c:	00006517          	auipc	a0,0x6
    80004a90:	85450513          	addi	a0,a0,-1964 # 8000a2e0 <CONSOLE_STATUS+0x2c8>
    80004a94:	00001097          	auipc	ra,0x1
    80004a98:	620080e7          	jalr	1568(ra) # 800060b4 <_Z11printStringPKc>
    finishedB = true;
    80004a9c:	00100793          	li	a5,1
    80004aa0:	00008717          	auipc	a4,0x8
    80004aa4:	26f704a3          	sb	a5,617(a4) # 8000cd09 <_ZL9finishedB>
    thread_dispatch();
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	d34080e7          	jalr	-716(ra) # 800017dc <thread_dispatch>
}
    80004ab0:	01813083          	ld	ra,24(sp)
    80004ab4:	01013403          	ld	s0,16(sp)
    80004ab8:	00813483          	ld	s1,8(sp)
    80004abc:	00013903          	ld	s2,0(sp)
    80004ac0:	02010113          	addi	sp,sp,32
    80004ac4:	00008067          	ret

0000000080004ac8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004ac8:	fe010113          	addi	sp,sp,-32
    80004acc:	00113c23          	sd	ra,24(sp)
    80004ad0:	00813823          	sd	s0,16(sp)
    80004ad4:	00913423          	sd	s1,8(sp)
    80004ad8:	01213023          	sd	s2,0(sp)
    80004adc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004ae0:	00000493          	li	s1,0
    80004ae4:	0400006f          	j	80004b24 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004ae8:	00006517          	auipc	a0,0x6
    80004aec:	80850513          	addi	a0,a0,-2040 # 8000a2f0 <CONSOLE_STATUS+0x2d8>
    80004af0:	00001097          	auipc	ra,0x1
    80004af4:	5c4080e7          	jalr	1476(ra) # 800060b4 <_Z11printStringPKc>
    80004af8:	00000613          	li	a2,0
    80004afc:	00a00593          	li	a1,10
    80004b00:	00048513          	mv	a0,s1
    80004b04:	00001097          	auipc	ra,0x1
    80004b08:	760080e7          	jalr	1888(ra) # 80006264 <_Z8printIntiii>
    80004b0c:	00006517          	auipc	a0,0x6
    80004b10:	a4450513          	addi	a0,a0,-1468 # 8000a550 <CONSOLE_STATUS+0x538>
    80004b14:	00001097          	auipc	ra,0x1
    80004b18:	5a0080e7          	jalr	1440(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b1c:	0014849b          	addiw	s1,s1,1
    80004b20:	0ff4f493          	andi	s1,s1,255
    80004b24:	00200793          	li	a5,2
    80004b28:	fc97f0e3          	bgeu	a5,s1,80004ae8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004b2c:	00005517          	auipc	a0,0x5
    80004b30:	7cc50513          	addi	a0,a0,1996 # 8000a2f8 <CONSOLE_STATUS+0x2e0>
    80004b34:	00001097          	auipc	ra,0x1
    80004b38:	580080e7          	jalr	1408(ra) # 800060b4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b3c:	00700313          	li	t1,7
    thread_dispatch();
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	c9c080e7          	jalr	-868(ra) # 800017dc <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b48:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004b4c:	00005517          	auipc	a0,0x5
    80004b50:	7bc50513          	addi	a0,a0,1980 # 8000a308 <CONSOLE_STATUS+0x2f0>
    80004b54:	00001097          	auipc	ra,0x1
    80004b58:	560080e7          	jalr	1376(ra) # 800060b4 <_Z11printStringPKc>
    80004b5c:	00000613          	li	a2,0
    80004b60:	00a00593          	li	a1,10
    80004b64:	0009051b          	sext.w	a0,s2
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	6fc080e7          	jalr	1788(ra) # 80006264 <_Z8printIntiii>
    80004b70:	00006517          	auipc	a0,0x6
    80004b74:	9e050513          	addi	a0,a0,-1568 # 8000a550 <CONSOLE_STATUS+0x538>
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	53c080e7          	jalr	1340(ra) # 800060b4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004b80:	00c00513          	li	a0,12
    80004b84:	00000097          	auipc	ra,0x0
    80004b88:	d30080e7          	jalr	-720(ra) # 800048b4 <_ZL9fibonaccim>
    80004b8c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b90:	00005517          	auipc	a0,0x5
    80004b94:	78050513          	addi	a0,a0,1920 # 8000a310 <CONSOLE_STATUS+0x2f8>
    80004b98:	00001097          	auipc	ra,0x1
    80004b9c:	51c080e7          	jalr	1308(ra) # 800060b4 <_Z11printStringPKc>
    80004ba0:	00000613          	li	a2,0
    80004ba4:	00a00593          	li	a1,10
    80004ba8:	0009051b          	sext.w	a0,s2
    80004bac:	00001097          	auipc	ra,0x1
    80004bb0:	6b8080e7          	jalr	1720(ra) # 80006264 <_Z8printIntiii>
    80004bb4:	00006517          	auipc	a0,0x6
    80004bb8:	99c50513          	addi	a0,a0,-1636 # 8000a550 <CONSOLE_STATUS+0x538>
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	4f8080e7          	jalr	1272(ra) # 800060b4 <_Z11printStringPKc>
    80004bc4:	0400006f          	j	80004c04 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004bc8:	00005517          	auipc	a0,0x5
    80004bcc:	72850513          	addi	a0,a0,1832 # 8000a2f0 <CONSOLE_STATUS+0x2d8>
    80004bd0:	00001097          	auipc	ra,0x1
    80004bd4:	4e4080e7          	jalr	1252(ra) # 800060b4 <_Z11printStringPKc>
    80004bd8:	00000613          	li	a2,0
    80004bdc:	00a00593          	li	a1,10
    80004be0:	00048513          	mv	a0,s1
    80004be4:	00001097          	auipc	ra,0x1
    80004be8:	680080e7          	jalr	1664(ra) # 80006264 <_Z8printIntiii>
    80004bec:	00006517          	auipc	a0,0x6
    80004bf0:	96450513          	addi	a0,a0,-1692 # 8000a550 <CONSOLE_STATUS+0x538>
    80004bf4:	00001097          	auipc	ra,0x1
    80004bf8:	4c0080e7          	jalr	1216(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004bfc:	0014849b          	addiw	s1,s1,1
    80004c00:	0ff4f493          	andi	s1,s1,255
    80004c04:	00500793          	li	a5,5
    80004c08:	fc97f0e3          	bgeu	a5,s1,80004bc8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80004c0c:	00005517          	auipc	a0,0x5
    80004c10:	71450513          	addi	a0,a0,1812 # 8000a320 <CONSOLE_STATUS+0x308>
    80004c14:	00001097          	auipc	ra,0x1
    80004c18:	4a0080e7          	jalr	1184(ra) # 800060b4 <_Z11printStringPKc>
    finishedC = true;
    80004c1c:	00100793          	li	a5,1
    80004c20:	00008717          	auipc	a4,0x8
    80004c24:	0ef70523          	sb	a5,234(a4) # 8000cd0a <_ZL9finishedC>
    thread_dispatch();
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	bb4080e7          	jalr	-1100(ra) # 800017dc <thread_dispatch>
}
    80004c30:	01813083          	ld	ra,24(sp)
    80004c34:	01013403          	ld	s0,16(sp)
    80004c38:	00813483          	ld	s1,8(sp)
    80004c3c:	00013903          	ld	s2,0(sp)
    80004c40:	02010113          	addi	sp,sp,32
    80004c44:	00008067          	ret

0000000080004c48 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004c48:	fe010113          	addi	sp,sp,-32
    80004c4c:	00113c23          	sd	ra,24(sp)
    80004c50:	00813823          	sd	s0,16(sp)
    80004c54:	00913423          	sd	s1,8(sp)
    80004c58:	01213023          	sd	s2,0(sp)
    80004c5c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004c60:	00a00493          	li	s1,10
    80004c64:	0400006f          	j	80004ca4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c68:	00005517          	auipc	a0,0x5
    80004c6c:	6c850513          	addi	a0,a0,1736 # 8000a330 <CONSOLE_STATUS+0x318>
    80004c70:	00001097          	auipc	ra,0x1
    80004c74:	444080e7          	jalr	1092(ra) # 800060b4 <_Z11printStringPKc>
    80004c78:	00000613          	li	a2,0
    80004c7c:	00a00593          	li	a1,10
    80004c80:	00048513          	mv	a0,s1
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	5e0080e7          	jalr	1504(ra) # 80006264 <_Z8printIntiii>
    80004c8c:	00006517          	auipc	a0,0x6
    80004c90:	8c450513          	addi	a0,a0,-1852 # 8000a550 <CONSOLE_STATUS+0x538>
    80004c94:	00001097          	auipc	ra,0x1
    80004c98:	420080e7          	jalr	1056(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004c9c:	0014849b          	addiw	s1,s1,1
    80004ca0:	0ff4f493          	andi	s1,s1,255
    80004ca4:	00c00793          	li	a5,12
    80004ca8:	fc97f0e3          	bgeu	a5,s1,80004c68 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004cac:	00005517          	auipc	a0,0x5
    80004cb0:	68c50513          	addi	a0,a0,1676 # 8000a338 <CONSOLE_STATUS+0x320>
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	400080e7          	jalr	1024(ra) # 800060b4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004cbc:	00500313          	li	t1,5
    thread_dispatch();
    80004cc0:	ffffd097          	auipc	ra,0xffffd
    80004cc4:	b1c080e7          	jalr	-1252(ra) # 800017dc <thread_dispatch>

    uint64 result = fibonacci(16);
    80004cc8:	01000513          	li	a0,16
    80004ccc:	00000097          	auipc	ra,0x0
    80004cd0:	be8080e7          	jalr	-1048(ra) # 800048b4 <_ZL9fibonaccim>
    80004cd4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004cd8:	00005517          	auipc	a0,0x5
    80004cdc:	67050513          	addi	a0,a0,1648 # 8000a348 <CONSOLE_STATUS+0x330>
    80004ce0:	00001097          	auipc	ra,0x1
    80004ce4:	3d4080e7          	jalr	980(ra) # 800060b4 <_Z11printStringPKc>
    80004ce8:	00000613          	li	a2,0
    80004cec:	00a00593          	li	a1,10
    80004cf0:	0009051b          	sext.w	a0,s2
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	570080e7          	jalr	1392(ra) # 80006264 <_Z8printIntiii>
    80004cfc:	00006517          	auipc	a0,0x6
    80004d00:	85450513          	addi	a0,a0,-1964 # 8000a550 <CONSOLE_STATUS+0x538>
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	3b0080e7          	jalr	944(ra) # 800060b4 <_Z11printStringPKc>
    80004d0c:	0400006f          	j	80004d4c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d10:	00005517          	auipc	a0,0x5
    80004d14:	62050513          	addi	a0,a0,1568 # 8000a330 <CONSOLE_STATUS+0x318>
    80004d18:	00001097          	auipc	ra,0x1
    80004d1c:	39c080e7          	jalr	924(ra) # 800060b4 <_Z11printStringPKc>
    80004d20:	00000613          	li	a2,0
    80004d24:	00a00593          	li	a1,10
    80004d28:	00048513          	mv	a0,s1
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	538080e7          	jalr	1336(ra) # 80006264 <_Z8printIntiii>
    80004d34:	00006517          	auipc	a0,0x6
    80004d38:	81c50513          	addi	a0,a0,-2020 # 8000a550 <CONSOLE_STATUS+0x538>
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	378080e7          	jalr	888(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004d44:	0014849b          	addiw	s1,s1,1
    80004d48:	0ff4f493          	andi	s1,s1,255
    80004d4c:	00f00793          	li	a5,15
    80004d50:	fc97f0e3          	bgeu	a5,s1,80004d10 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004d54:	00005517          	auipc	a0,0x5
    80004d58:	60450513          	addi	a0,a0,1540 # 8000a358 <CONSOLE_STATUS+0x340>
    80004d5c:	00001097          	auipc	ra,0x1
    80004d60:	358080e7          	jalr	856(ra) # 800060b4 <_Z11printStringPKc>
    finishedD = true;
    80004d64:	00100793          	li	a5,1
    80004d68:	00008717          	auipc	a4,0x8
    80004d6c:	faf701a3          	sb	a5,-93(a4) # 8000cd0b <_ZL9finishedD>
    thread_dispatch();
    80004d70:	ffffd097          	auipc	ra,0xffffd
    80004d74:	a6c080e7          	jalr	-1428(ra) # 800017dc <thread_dispatch>
}
    80004d78:	01813083          	ld	ra,24(sp)
    80004d7c:	01013403          	ld	s0,16(sp)
    80004d80:	00813483          	ld	s1,8(sp)
    80004d84:	00013903          	ld	s2,0(sp)
    80004d88:	02010113          	addi	sp,sp,32
    80004d8c:	00008067          	ret

0000000080004d90 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004d90:	fc010113          	addi	sp,sp,-64
    80004d94:	02113c23          	sd	ra,56(sp)
    80004d98:	02813823          	sd	s0,48(sp)
    80004d9c:	02913423          	sd	s1,40(sp)
    80004da0:	03213023          	sd	s2,32(sp)
    80004da4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004da8:	02000513          	li	a0,32
    80004dac:	ffffe097          	auipc	ra,0xffffe
    80004db0:	8b0080e7          	jalr	-1872(ra) # 8000265c <_Znwm>
    80004db4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004db8:	ffffe097          	auipc	ra,0xffffe
    80004dbc:	9c4080e7          	jalr	-1596(ra) # 8000277c <_ZN6ThreadC1Ev>
    80004dc0:	00008797          	auipc	a5,0x8
    80004dc4:	d2078793          	addi	a5,a5,-736 # 8000cae0 <_ZTV7WorkerA+0x10>
    80004dc8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004dcc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004dd0:	00005517          	auipc	a0,0x5
    80004dd4:	59850513          	addi	a0,a0,1432 # 8000a368 <CONSOLE_STATUS+0x350>
    80004dd8:	00001097          	auipc	ra,0x1
    80004ddc:	2dc080e7          	jalr	732(ra) # 800060b4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004de0:	02000513          	li	a0,32
    80004de4:	ffffe097          	auipc	ra,0xffffe
    80004de8:	878080e7          	jalr	-1928(ra) # 8000265c <_Znwm>
    80004dec:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004df0:	ffffe097          	auipc	ra,0xffffe
    80004df4:	98c080e7          	jalr	-1652(ra) # 8000277c <_ZN6ThreadC1Ev>
    80004df8:	00008797          	auipc	a5,0x8
    80004dfc:	d1078793          	addi	a5,a5,-752 # 8000cb08 <_ZTV7WorkerB+0x10>
    80004e00:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004e04:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004e08:	00005517          	auipc	a0,0x5
    80004e0c:	57850513          	addi	a0,a0,1400 # 8000a380 <CONSOLE_STATUS+0x368>
    80004e10:	00001097          	auipc	ra,0x1
    80004e14:	2a4080e7          	jalr	676(ra) # 800060b4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004e18:	02000513          	li	a0,32
    80004e1c:	ffffe097          	auipc	ra,0xffffe
    80004e20:	840080e7          	jalr	-1984(ra) # 8000265c <_Znwm>
    80004e24:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004e28:	ffffe097          	auipc	ra,0xffffe
    80004e2c:	954080e7          	jalr	-1708(ra) # 8000277c <_ZN6ThreadC1Ev>
    80004e30:	00008797          	auipc	a5,0x8
    80004e34:	d0078793          	addi	a5,a5,-768 # 8000cb30 <_ZTV7WorkerC+0x10>
    80004e38:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004e3c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004e40:	00005517          	auipc	a0,0x5
    80004e44:	55850513          	addi	a0,a0,1368 # 8000a398 <CONSOLE_STATUS+0x380>
    80004e48:	00001097          	auipc	ra,0x1
    80004e4c:	26c080e7          	jalr	620(ra) # 800060b4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004e50:	02000513          	li	a0,32
    80004e54:	ffffe097          	auipc	ra,0xffffe
    80004e58:	808080e7          	jalr	-2040(ra) # 8000265c <_Znwm>
    80004e5c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004e60:	ffffe097          	auipc	ra,0xffffe
    80004e64:	91c080e7          	jalr	-1764(ra) # 8000277c <_ZN6ThreadC1Ev>
    80004e68:	00008797          	auipc	a5,0x8
    80004e6c:	cf078793          	addi	a5,a5,-784 # 8000cb58 <_ZTV7WorkerD+0x10>
    80004e70:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004e74:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004e78:	00005517          	auipc	a0,0x5
    80004e7c:	53850513          	addi	a0,a0,1336 # 8000a3b0 <CONSOLE_STATUS+0x398>
    80004e80:	00001097          	auipc	ra,0x1
    80004e84:	234080e7          	jalr	564(ra) # 800060b4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004e88:	00000493          	li	s1,0
    80004e8c:	00300793          	li	a5,3
    80004e90:	0297c663          	blt	a5,s1,80004ebc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004e94:	00349793          	slli	a5,s1,0x3
    80004e98:	fe040713          	addi	a4,s0,-32
    80004e9c:	00f707b3          	add	a5,a4,a5
    80004ea0:	fe07b503          	ld	a0,-32(a5)
    80004ea4:	ffffe097          	auipc	ra,0xffffe
    80004ea8:	924080e7          	jalr	-1756(ra) # 800027c8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004eac:	0014849b          	addiw	s1,s1,1
    80004eb0:	fddff06f          	j	80004e8c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004eb4:	ffffe097          	auipc	ra,0xffffe
    80004eb8:	9f8080e7          	jalr	-1544(ra) # 800028ac <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ebc:	00008797          	auipc	a5,0x8
    80004ec0:	e4c7c783          	lbu	a5,-436(a5) # 8000cd08 <_ZL9finishedA>
    80004ec4:	fe0788e3          	beqz	a5,80004eb4 <_Z20Threads_CPP_API_testv+0x124>
    80004ec8:	00008797          	auipc	a5,0x8
    80004ecc:	e417c783          	lbu	a5,-447(a5) # 8000cd09 <_ZL9finishedB>
    80004ed0:	fe0782e3          	beqz	a5,80004eb4 <_Z20Threads_CPP_API_testv+0x124>
    80004ed4:	00008797          	auipc	a5,0x8
    80004ed8:	e367c783          	lbu	a5,-458(a5) # 8000cd0a <_ZL9finishedC>
    80004edc:	fc078ce3          	beqz	a5,80004eb4 <_Z20Threads_CPP_API_testv+0x124>
    80004ee0:	00008797          	auipc	a5,0x8
    80004ee4:	e2b7c783          	lbu	a5,-469(a5) # 8000cd0b <_ZL9finishedD>
    80004ee8:	fc0786e3          	beqz	a5,80004eb4 <_Z20Threads_CPP_API_testv+0x124>
    80004eec:	fc040493          	addi	s1,s0,-64
    80004ef0:	0080006f          	j	80004ef8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004ef4:	00848493          	addi	s1,s1,8
    80004ef8:	fe040793          	addi	a5,s0,-32
    80004efc:	08f48663          	beq	s1,a5,80004f88 <_Z20Threads_CPP_API_testv+0x1f8>
    80004f00:	0004b503          	ld	a0,0(s1)
    80004f04:	fe0508e3          	beqz	a0,80004ef4 <_Z20Threads_CPP_API_testv+0x164>
    80004f08:	00053783          	ld	a5,0(a0)
    80004f0c:	0087b783          	ld	a5,8(a5)
    80004f10:	000780e7          	jalr	a5
    80004f14:	fe1ff06f          	j	80004ef4 <_Z20Threads_CPP_API_testv+0x164>
    80004f18:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004f1c:	00048513          	mv	a0,s1
    80004f20:	ffffd097          	auipc	ra,0xffffd
    80004f24:	78c080e7          	jalr	1932(ra) # 800026ac <_ZdlPv>
    80004f28:	00090513          	mv	a0,s2
    80004f2c:	00009097          	auipc	ra,0x9
    80004f30:	ecc080e7          	jalr	-308(ra) # 8000ddf8 <_Unwind_Resume>
    80004f34:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004f38:	00048513          	mv	a0,s1
    80004f3c:	ffffd097          	auipc	ra,0xffffd
    80004f40:	770080e7          	jalr	1904(ra) # 800026ac <_ZdlPv>
    80004f44:	00090513          	mv	a0,s2
    80004f48:	00009097          	auipc	ra,0x9
    80004f4c:	eb0080e7          	jalr	-336(ra) # 8000ddf8 <_Unwind_Resume>
    80004f50:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004f54:	00048513          	mv	a0,s1
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	754080e7          	jalr	1876(ra) # 800026ac <_ZdlPv>
    80004f60:	00090513          	mv	a0,s2
    80004f64:	00009097          	auipc	ra,0x9
    80004f68:	e94080e7          	jalr	-364(ra) # 8000ddf8 <_Unwind_Resume>
    80004f6c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004f70:	00048513          	mv	a0,s1
    80004f74:	ffffd097          	auipc	ra,0xffffd
    80004f78:	738080e7          	jalr	1848(ra) # 800026ac <_ZdlPv>
    80004f7c:	00090513          	mv	a0,s2
    80004f80:	00009097          	auipc	ra,0x9
    80004f84:	e78080e7          	jalr	-392(ra) # 8000ddf8 <_Unwind_Resume>
}
    80004f88:	03813083          	ld	ra,56(sp)
    80004f8c:	03013403          	ld	s0,48(sp)
    80004f90:	02813483          	ld	s1,40(sp)
    80004f94:	02013903          	ld	s2,32(sp)
    80004f98:	04010113          	addi	sp,sp,64
    80004f9c:	00008067          	ret

0000000080004fa0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004fa0:	ff010113          	addi	sp,sp,-16
    80004fa4:	00113423          	sd	ra,8(sp)
    80004fa8:	00813023          	sd	s0,0(sp)
    80004fac:	01010413          	addi	s0,sp,16
    80004fb0:	00008797          	auipc	a5,0x8
    80004fb4:	b3078793          	addi	a5,a5,-1232 # 8000cae0 <_ZTV7WorkerA+0x10>
    80004fb8:	00f53023          	sd	a5,0(a0)
    80004fbc:	ffffe097          	auipc	ra,0xffffe
    80004fc0:	864080e7          	jalr	-1948(ra) # 80002820 <_ZN6ThreadD1Ev>
    80004fc4:	00813083          	ld	ra,8(sp)
    80004fc8:	00013403          	ld	s0,0(sp)
    80004fcc:	01010113          	addi	sp,sp,16
    80004fd0:	00008067          	ret

0000000080004fd4 <_ZN7WorkerAD0Ev>:
    80004fd4:	fe010113          	addi	sp,sp,-32
    80004fd8:	00113c23          	sd	ra,24(sp)
    80004fdc:	00813823          	sd	s0,16(sp)
    80004fe0:	00913423          	sd	s1,8(sp)
    80004fe4:	02010413          	addi	s0,sp,32
    80004fe8:	00050493          	mv	s1,a0
    80004fec:	00008797          	auipc	a5,0x8
    80004ff0:	af478793          	addi	a5,a5,-1292 # 8000cae0 <_ZTV7WorkerA+0x10>
    80004ff4:	00f53023          	sd	a5,0(a0)
    80004ff8:	ffffe097          	auipc	ra,0xffffe
    80004ffc:	828080e7          	jalr	-2008(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005000:	00048513          	mv	a0,s1
    80005004:	ffffd097          	auipc	ra,0xffffd
    80005008:	6a8080e7          	jalr	1704(ra) # 800026ac <_ZdlPv>
    8000500c:	01813083          	ld	ra,24(sp)
    80005010:	01013403          	ld	s0,16(sp)
    80005014:	00813483          	ld	s1,8(sp)
    80005018:	02010113          	addi	sp,sp,32
    8000501c:	00008067          	ret

0000000080005020 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005020:	ff010113          	addi	sp,sp,-16
    80005024:	00113423          	sd	ra,8(sp)
    80005028:	00813023          	sd	s0,0(sp)
    8000502c:	01010413          	addi	s0,sp,16
    80005030:	00008797          	auipc	a5,0x8
    80005034:	ad878793          	addi	a5,a5,-1320 # 8000cb08 <_ZTV7WorkerB+0x10>
    80005038:	00f53023          	sd	a5,0(a0)
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	7e4080e7          	jalr	2020(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005044:	00813083          	ld	ra,8(sp)
    80005048:	00013403          	ld	s0,0(sp)
    8000504c:	01010113          	addi	sp,sp,16
    80005050:	00008067          	ret

0000000080005054 <_ZN7WorkerBD0Ev>:
    80005054:	fe010113          	addi	sp,sp,-32
    80005058:	00113c23          	sd	ra,24(sp)
    8000505c:	00813823          	sd	s0,16(sp)
    80005060:	00913423          	sd	s1,8(sp)
    80005064:	02010413          	addi	s0,sp,32
    80005068:	00050493          	mv	s1,a0
    8000506c:	00008797          	auipc	a5,0x8
    80005070:	a9c78793          	addi	a5,a5,-1380 # 8000cb08 <_ZTV7WorkerB+0x10>
    80005074:	00f53023          	sd	a5,0(a0)
    80005078:	ffffd097          	auipc	ra,0xffffd
    8000507c:	7a8080e7          	jalr	1960(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005080:	00048513          	mv	a0,s1
    80005084:	ffffd097          	auipc	ra,0xffffd
    80005088:	628080e7          	jalr	1576(ra) # 800026ac <_ZdlPv>
    8000508c:	01813083          	ld	ra,24(sp)
    80005090:	01013403          	ld	s0,16(sp)
    80005094:	00813483          	ld	s1,8(sp)
    80005098:	02010113          	addi	sp,sp,32
    8000509c:	00008067          	ret

00000000800050a0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800050a0:	ff010113          	addi	sp,sp,-16
    800050a4:	00113423          	sd	ra,8(sp)
    800050a8:	00813023          	sd	s0,0(sp)
    800050ac:	01010413          	addi	s0,sp,16
    800050b0:	00008797          	auipc	a5,0x8
    800050b4:	a8078793          	addi	a5,a5,-1408 # 8000cb30 <_ZTV7WorkerC+0x10>
    800050b8:	00f53023          	sd	a5,0(a0)
    800050bc:	ffffd097          	auipc	ra,0xffffd
    800050c0:	764080e7          	jalr	1892(ra) # 80002820 <_ZN6ThreadD1Ev>
    800050c4:	00813083          	ld	ra,8(sp)
    800050c8:	00013403          	ld	s0,0(sp)
    800050cc:	01010113          	addi	sp,sp,16
    800050d0:	00008067          	ret

00000000800050d4 <_ZN7WorkerCD0Ev>:
    800050d4:	fe010113          	addi	sp,sp,-32
    800050d8:	00113c23          	sd	ra,24(sp)
    800050dc:	00813823          	sd	s0,16(sp)
    800050e0:	00913423          	sd	s1,8(sp)
    800050e4:	02010413          	addi	s0,sp,32
    800050e8:	00050493          	mv	s1,a0
    800050ec:	00008797          	auipc	a5,0x8
    800050f0:	a4478793          	addi	a5,a5,-1468 # 8000cb30 <_ZTV7WorkerC+0x10>
    800050f4:	00f53023          	sd	a5,0(a0)
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	728080e7          	jalr	1832(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005100:	00048513          	mv	a0,s1
    80005104:	ffffd097          	auipc	ra,0xffffd
    80005108:	5a8080e7          	jalr	1448(ra) # 800026ac <_ZdlPv>
    8000510c:	01813083          	ld	ra,24(sp)
    80005110:	01013403          	ld	s0,16(sp)
    80005114:	00813483          	ld	s1,8(sp)
    80005118:	02010113          	addi	sp,sp,32
    8000511c:	00008067          	ret

0000000080005120 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005120:	ff010113          	addi	sp,sp,-16
    80005124:	00113423          	sd	ra,8(sp)
    80005128:	00813023          	sd	s0,0(sp)
    8000512c:	01010413          	addi	s0,sp,16
    80005130:	00008797          	auipc	a5,0x8
    80005134:	a2878793          	addi	a5,a5,-1496 # 8000cb58 <_ZTV7WorkerD+0x10>
    80005138:	00f53023          	sd	a5,0(a0)
    8000513c:	ffffd097          	auipc	ra,0xffffd
    80005140:	6e4080e7          	jalr	1764(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005144:	00813083          	ld	ra,8(sp)
    80005148:	00013403          	ld	s0,0(sp)
    8000514c:	01010113          	addi	sp,sp,16
    80005150:	00008067          	ret

0000000080005154 <_ZN7WorkerDD0Ev>:
    80005154:	fe010113          	addi	sp,sp,-32
    80005158:	00113c23          	sd	ra,24(sp)
    8000515c:	00813823          	sd	s0,16(sp)
    80005160:	00913423          	sd	s1,8(sp)
    80005164:	02010413          	addi	s0,sp,32
    80005168:	00050493          	mv	s1,a0
    8000516c:	00008797          	auipc	a5,0x8
    80005170:	9ec78793          	addi	a5,a5,-1556 # 8000cb58 <_ZTV7WorkerD+0x10>
    80005174:	00f53023          	sd	a5,0(a0)
    80005178:	ffffd097          	auipc	ra,0xffffd
    8000517c:	6a8080e7          	jalr	1704(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005180:	00048513          	mv	a0,s1
    80005184:	ffffd097          	auipc	ra,0xffffd
    80005188:	528080e7          	jalr	1320(ra) # 800026ac <_ZdlPv>
    8000518c:	01813083          	ld	ra,24(sp)
    80005190:	01013403          	ld	s0,16(sp)
    80005194:	00813483          	ld	s1,8(sp)
    80005198:	02010113          	addi	sp,sp,32
    8000519c:	00008067          	ret

00000000800051a0 <_ZN7WorkerA3runEv>:
    void run() override {
    800051a0:	ff010113          	addi	sp,sp,-16
    800051a4:	00113423          	sd	ra,8(sp)
    800051a8:	00813023          	sd	s0,0(sp)
    800051ac:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800051b0:	00000593          	li	a1,0
    800051b4:	fffff097          	auipc	ra,0xfffff
    800051b8:	774080e7          	jalr	1908(ra) # 80004928 <_ZN7WorkerA11workerBodyAEPv>
    }
    800051bc:	00813083          	ld	ra,8(sp)
    800051c0:	00013403          	ld	s0,0(sp)
    800051c4:	01010113          	addi	sp,sp,16
    800051c8:	00008067          	ret

00000000800051cc <_ZN7WorkerB3runEv>:
    void run() override {
    800051cc:	ff010113          	addi	sp,sp,-16
    800051d0:	00113423          	sd	ra,8(sp)
    800051d4:	00813023          	sd	s0,0(sp)
    800051d8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800051dc:	00000593          	li	a1,0
    800051e0:	00000097          	auipc	ra,0x0
    800051e4:	814080e7          	jalr	-2028(ra) # 800049f4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800051e8:	00813083          	ld	ra,8(sp)
    800051ec:	00013403          	ld	s0,0(sp)
    800051f0:	01010113          	addi	sp,sp,16
    800051f4:	00008067          	ret

00000000800051f8 <_ZN7WorkerC3runEv>:
    void run() override {
    800051f8:	ff010113          	addi	sp,sp,-16
    800051fc:	00113423          	sd	ra,8(sp)
    80005200:	00813023          	sd	s0,0(sp)
    80005204:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005208:	00000593          	li	a1,0
    8000520c:	00000097          	auipc	ra,0x0
    80005210:	8bc080e7          	jalr	-1860(ra) # 80004ac8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80005214:	00813083          	ld	ra,8(sp)
    80005218:	00013403          	ld	s0,0(sp)
    8000521c:	01010113          	addi	sp,sp,16
    80005220:	00008067          	ret

0000000080005224 <_ZN7WorkerD3runEv>:
    void run() override {
    80005224:	ff010113          	addi	sp,sp,-16
    80005228:	00113423          	sd	ra,8(sp)
    8000522c:	00813023          	sd	s0,0(sp)
    80005230:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005234:	00000593          	li	a1,0
    80005238:	00000097          	auipc	ra,0x0
    8000523c:	a10080e7          	jalr	-1520(ra) # 80004c48 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005240:	00813083          	ld	ra,8(sp)
    80005244:	00013403          	ld	s0,0(sp)
    80005248:	01010113          	addi	sp,sp,16
    8000524c:	00008067          	ret

0000000080005250 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005250:	fe010113          	addi	sp,sp,-32
    80005254:	00113c23          	sd	ra,24(sp)
    80005258:	00813823          	sd	s0,16(sp)
    8000525c:	00913423          	sd	s1,8(sp)
    80005260:	01213023          	sd	s2,0(sp)
    80005264:	02010413          	addi	s0,sp,32
    80005268:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000526c:	00100793          	li	a5,1
    80005270:	02a7f863          	bgeu	a5,a0,800052a0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005274:	00a00793          	li	a5,10
    80005278:	02f577b3          	remu	a5,a0,a5
    8000527c:	02078e63          	beqz	a5,800052b8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005280:	fff48513          	addi	a0,s1,-1
    80005284:	00000097          	auipc	ra,0x0
    80005288:	fcc080e7          	jalr	-52(ra) # 80005250 <_ZL9fibonaccim>
    8000528c:	00050913          	mv	s2,a0
    80005290:	ffe48513          	addi	a0,s1,-2
    80005294:	00000097          	auipc	ra,0x0
    80005298:	fbc080e7          	jalr	-68(ra) # 80005250 <_ZL9fibonaccim>
    8000529c:	00a90533          	add	a0,s2,a0
}
    800052a0:	01813083          	ld	ra,24(sp)
    800052a4:	01013403          	ld	s0,16(sp)
    800052a8:	00813483          	ld	s1,8(sp)
    800052ac:	00013903          	ld	s2,0(sp)
    800052b0:	02010113          	addi	sp,sp,32
    800052b4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	524080e7          	jalr	1316(ra) # 800017dc <thread_dispatch>
    800052c0:	fc1ff06f          	j	80005280 <_ZL9fibonaccim+0x30>

00000000800052c4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800052c4:	fe010113          	addi	sp,sp,-32
    800052c8:	00113c23          	sd	ra,24(sp)
    800052cc:	00813823          	sd	s0,16(sp)
    800052d0:	00913423          	sd	s1,8(sp)
    800052d4:	01213023          	sd	s2,0(sp)
    800052d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800052dc:	00a00493          	li	s1,10
    800052e0:	0400006f          	j	80005320 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800052e4:	00005517          	auipc	a0,0x5
    800052e8:	04c50513          	addi	a0,a0,76 # 8000a330 <CONSOLE_STATUS+0x318>
    800052ec:	00001097          	auipc	ra,0x1
    800052f0:	dc8080e7          	jalr	-568(ra) # 800060b4 <_Z11printStringPKc>
    800052f4:	00000613          	li	a2,0
    800052f8:	00a00593          	li	a1,10
    800052fc:	00048513          	mv	a0,s1
    80005300:	00001097          	auipc	ra,0x1
    80005304:	f64080e7          	jalr	-156(ra) # 80006264 <_Z8printIntiii>
    80005308:	00005517          	auipc	a0,0x5
    8000530c:	24850513          	addi	a0,a0,584 # 8000a550 <CONSOLE_STATUS+0x538>
    80005310:	00001097          	auipc	ra,0x1
    80005314:	da4080e7          	jalr	-604(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005318:	0014849b          	addiw	s1,s1,1
    8000531c:	0ff4f493          	andi	s1,s1,255
    80005320:	00c00793          	li	a5,12
    80005324:	fc97f0e3          	bgeu	a5,s1,800052e4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005328:	00005517          	auipc	a0,0x5
    8000532c:	01050513          	addi	a0,a0,16 # 8000a338 <CONSOLE_STATUS+0x320>
    80005330:	00001097          	auipc	ra,0x1
    80005334:	d84080e7          	jalr	-636(ra) # 800060b4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005338:	00500313          	li	t1,5
    thread_dispatch();
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	4a0080e7          	jalr	1184(ra) # 800017dc <thread_dispatch>

    uint64 result = fibonacci(16);
    80005344:	01000513          	li	a0,16
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	f08080e7          	jalr	-248(ra) # 80005250 <_ZL9fibonaccim>
    80005350:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005354:	00005517          	auipc	a0,0x5
    80005358:	ff450513          	addi	a0,a0,-12 # 8000a348 <CONSOLE_STATUS+0x330>
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	d58080e7          	jalr	-680(ra) # 800060b4 <_Z11printStringPKc>
    80005364:	00000613          	li	a2,0
    80005368:	00a00593          	li	a1,10
    8000536c:	0009051b          	sext.w	a0,s2
    80005370:	00001097          	auipc	ra,0x1
    80005374:	ef4080e7          	jalr	-268(ra) # 80006264 <_Z8printIntiii>
    80005378:	00005517          	auipc	a0,0x5
    8000537c:	1d850513          	addi	a0,a0,472 # 8000a550 <CONSOLE_STATUS+0x538>
    80005380:	00001097          	auipc	ra,0x1
    80005384:	d34080e7          	jalr	-716(ra) # 800060b4 <_Z11printStringPKc>
    80005388:	0400006f          	j	800053c8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000538c:	00005517          	auipc	a0,0x5
    80005390:	fa450513          	addi	a0,a0,-92 # 8000a330 <CONSOLE_STATUS+0x318>
    80005394:	00001097          	auipc	ra,0x1
    80005398:	d20080e7          	jalr	-736(ra) # 800060b4 <_Z11printStringPKc>
    8000539c:	00000613          	li	a2,0
    800053a0:	00a00593          	li	a1,10
    800053a4:	00048513          	mv	a0,s1
    800053a8:	00001097          	auipc	ra,0x1
    800053ac:	ebc080e7          	jalr	-324(ra) # 80006264 <_Z8printIntiii>
    800053b0:	00005517          	auipc	a0,0x5
    800053b4:	1a050513          	addi	a0,a0,416 # 8000a550 <CONSOLE_STATUS+0x538>
    800053b8:	00001097          	auipc	ra,0x1
    800053bc:	cfc080e7          	jalr	-772(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800053c0:	0014849b          	addiw	s1,s1,1
    800053c4:	0ff4f493          	andi	s1,s1,255
    800053c8:	00f00793          	li	a5,15
    800053cc:	fc97f0e3          	bgeu	a5,s1,8000538c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800053d0:	00005517          	auipc	a0,0x5
    800053d4:	f8850513          	addi	a0,a0,-120 # 8000a358 <CONSOLE_STATUS+0x340>
    800053d8:	00001097          	auipc	ra,0x1
    800053dc:	cdc080e7          	jalr	-804(ra) # 800060b4 <_Z11printStringPKc>
    finishedD = true;
    800053e0:	00100793          	li	a5,1
    800053e4:	00008717          	auipc	a4,0x8
    800053e8:	92f70423          	sb	a5,-1752(a4) # 8000cd0c <_ZL9finishedD>
    thread_dispatch();
    800053ec:	ffffc097          	auipc	ra,0xffffc
    800053f0:	3f0080e7          	jalr	1008(ra) # 800017dc <thread_dispatch>
}
    800053f4:	01813083          	ld	ra,24(sp)
    800053f8:	01013403          	ld	s0,16(sp)
    800053fc:	00813483          	ld	s1,8(sp)
    80005400:	00013903          	ld	s2,0(sp)
    80005404:	02010113          	addi	sp,sp,32
    80005408:	00008067          	ret

000000008000540c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000540c:	fe010113          	addi	sp,sp,-32
    80005410:	00113c23          	sd	ra,24(sp)
    80005414:	00813823          	sd	s0,16(sp)
    80005418:	00913423          	sd	s1,8(sp)
    8000541c:	01213023          	sd	s2,0(sp)
    80005420:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005424:	00000493          	li	s1,0
    80005428:	0400006f          	j	80005468 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000542c:	00005517          	auipc	a0,0x5
    80005430:	ec450513          	addi	a0,a0,-316 # 8000a2f0 <CONSOLE_STATUS+0x2d8>
    80005434:	00001097          	auipc	ra,0x1
    80005438:	c80080e7          	jalr	-896(ra) # 800060b4 <_Z11printStringPKc>
    8000543c:	00000613          	li	a2,0
    80005440:	00a00593          	li	a1,10
    80005444:	00048513          	mv	a0,s1
    80005448:	00001097          	auipc	ra,0x1
    8000544c:	e1c080e7          	jalr	-484(ra) # 80006264 <_Z8printIntiii>
    80005450:	00005517          	auipc	a0,0x5
    80005454:	10050513          	addi	a0,a0,256 # 8000a550 <CONSOLE_STATUS+0x538>
    80005458:	00001097          	auipc	ra,0x1
    8000545c:	c5c080e7          	jalr	-932(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005460:	0014849b          	addiw	s1,s1,1
    80005464:	0ff4f493          	andi	s1,s1,255
    80005468:	00200793          	li	a5,2
    8000546c:	fc97f0e3          	bgeu	a5,s1,8000542c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005470:	00005517          	auipc	a0,0x5
    80005474:	e8850513          	addi	a0,a0,-376 # 8000a2f8 <CONSOLE_STATUS+0x2e0>
    80005478:	00001097          	auipc	ra,0x1
    8000547c:	c3c080e7          	jalr	-964(ra) # 800060b4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005480:	00700313          	li	t1,7
    thread_dispatch();
    80005484:	ffffc097          	auipc	ra,0xffffc
    80005488:	358080e7          	jalr	856(ra) # 800017dc <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000548c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005490:	00005517          	auipc	a0,0x5
    80005494:	e7850513          	addi	a0,a0,-392 # 8000a308 <CONSOLE_STATUS+0x2f0>
    80005498:	00001097          	auipc	ra,0x1
    8000549c:	c1c080e7          	jalr	-996(ra) # 800060b4 <_Z11printStringPKc>
    800054a0:	00000613          	li	a2,0
    800054a4:	00a00593          	li	a1,10
    800054a8:	0009051b          	sext.w	a0,s2
    800054ac:	00001097          	auipc	ra,0x1
    800054b0:	db8080e7          	jalr	-584(ra) # 80006264 <_Z8printIntiii>
    800054b4:	00005517          	auipc	a0,0x5
    800054b8:	09c50513          	addi	a0,a0,156 # 8000a550 <CONSOLE_STATUS+0x538>
    800054bc:	00001097          	auipc	ra,0x1
    800054c0:	bf8080e7          	jalr	-1032(ra) # 800060b4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800054c4:	00c00513          	li	a0,12
    800054c8:	00000097          	auipc	ra,0x0
    800054cc:	d88080e7          	jalr	-632(ra) # 80005250 <_ZL9fibonaccim>
    800054d0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800054d4:	00005517          	auipc	a0,0x5
    800054d8:	e3c50513          	addi	a0,a0,-452 # 8000a310 <CONSOLE_STATUS+0x2f8>
    800054dc:	00001097          	auipc	ra,0x1
    800054e0:	bd8080e7          	jalr	-1064(ra) # 800060b4 <_Z11printStringPKc>
    800054e4:	00000613          	li	a2,0
    800054e8:	00a00593          	li	a1,10
    800054ec:	0009051b          	sext.w	a0,s2
    800054f0:	00001097          	auipc	ra,0x1
    800054f4:	d74080e7          	jalr	-652(ra) # 80006264 <_Z8printIntiii>
    800054f8:	00005517          	auipc	a0,0x5
    800054fc:	05850513          	addi	a0,a0,88 # 8000a550 <CONSOLE_STATUS+0x538>
    80005500:	00001097          	auipc	ra,0x1
    80005504:	bb4080e7          	jalr	-1100(ra) # 800060b4 <_Z11printStringPKc>
    80005508:	0400006f          	j	80005548 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000550c:	00005517          	auipc	a0,0x5
    80005510:	de450513          	addi	a0,a0,-540 # 8000a2f0 <CONSOLE_STATUS+0x2d8>
    80005514:	00001097          	auipc	ra,0x1
    80005518:	ba0080e7          	jalr	-1120(ra) # 800060b4 <_Z11printStringPKc>
    8000551c:	00000613          	li	a2,0
    80005520:	00a00593          	li	a1,10
    80005524:	00048513          	mv	a0,s1
    80005528:	00001097          	auipc	ra,0x1
    8000552c:	d3c080e7          	jalr	-708(ra) # 80006264 <_Z8printIntiii>
    80005530:	00005517          	auipc	a0,0x5
    80005534:	02050513          	addi	a0,a0,32 # 8000a550 <CONSOLE_STATUS+0x538>
    80005538:	00001097          	auipc	ra,0x1
    8000553c:	b7c080e7          	jalr	-1156(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005540:	0014849b          	addiw	s1,s1,1
    80005544:	0ff4f493          	andi	s1,s1,255
    80005548:	00500793          	li	a5,5
    8000554c:	fc97f0e3          	bgeu	a5,s1,8000550c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005550:	00005517          	auipc	a0,0x5
    80005554:	d7850513          	addi	a0,a0,-648 # 8000a2c8 <CONSOLE_STATUS+0x2b0>
    80005558:	00001097          	auipc	ra,0x1
    8000555c:	b5c080e7          	jalr	-1188(ra) # 800060b4 <_Z11printStringPKc>
    finishedC = true;
    80005560:	00100793          	li	a5,1
    80005564:	00007717          	auipc	a4,0x7
    80005568:	7af704a3          	sb	a5,1961(a4) # 8000cd0d <_ZL9finishedC>
    thread_dispatch();
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	270080e7          	jalr	624(ra) # 800017dc <thread_dispatch>
}
    80005574:	01813083          	ld	ra,24(sp)
    80005578:	01013403          	ld	s0,16(sp)
    8000557c:	00813483          	ld	s1,8(sp)
    80005580:	00013903          	ld	s2,0(sp)
    80005584:	02010113          	addi	sp,sp,32
    80005588:	00008067          	ret

000000008000558c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000558c:	fe010113          	addi	sp,sp,-32
    80005590:	00113c23          	sd	ra,24(sp)
    80005594:	00813823          	sd	s0,16(sp)
    80005598:	00913423          	sd	s1,8(sp)
    8000559c:	01213023          	sd	s2,0(sp)
    800055a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800055a4:	00000913          	li	s2,0
    800055a8:	0380006f          	j	800055e0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800055ac:	ffffc097          	auipc	ra,0xffffc
    800055b0:	230080e7          	jalr	560(ra) # 800017dc <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800055b4:	00148493          	addi	s1,s1,1
    800055b8:	000027b7          	lui	a5,0x2
    800055bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055c0:	0097ee63          	bltu	a5,s1,800055dc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055c4:	00000713          	li	a4,0
    800055c8:	000077b7          	lui	a5,0x7
    800055cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055d0:	fce7eee3          	bltu	a5,a4,800055ac <_ZL11workerBodyBPv+0x20>
    800055d4:	00170713          	addi	a4,a4,1
    800055d8:	ff1ff06f          	j	800055c8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800055dc:	00190913          	addi	s2,s2,1
    800055e0:	00f00793          	li	a5,15
    800055e4:	0527e063          	bltu	a5,s2,80005624 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800055e8:	00005517          	auipc	a0,0x5
    800055ec:	cf050513          	addi	a0,a0,-784 # 8000a2d8 <CONSOLE_STATUS+0x2c0>
    800055f0:	00001097          	auipc	ra,0x1
    800055f4:	ac4080e7          	jalr	-1340(ra) # 800060b4 <_Z11printStringPKc>
    800055f8:	00000613          	li	a2,0
    800055fc:	00a00593          	li	a1,10
    80005600:	0009051b          	sext.w	a0,s2
    80005604:	00001097          	auipc	ra,0x1
    80005608:	c60080e7          	jalr	-928(ra) # 80006264 <_Z8printIntiii>
    8000560c:	00005517          	auipc	a0,0x5
    80005610:	f4450513          	addi	a0,a0,-188 # 8000a550 <CONSOLE_STATUS+0x538>
    80005614:	00001097          	auipc	ra,0x1
    80005618:	aa0080e7          	jalr	-1376(ra) # 800060b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000561c:	00000493          	li	s1,0
    80005620:	f99ff06f          	j	800055b8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005624:	00005517          	auipc	a0,0x5
    80005628:	cbc50513          	addi	a0,a0,-836 # 8000a2e0 <CONSOLE_STATUS+0x2c8>
    8000562c:	00001097          	auipc	ra,0x1
    80005630:	a88080e7          	jalr	-1400(ra) # 800060b4 <_Z11printStringPKc>
    finishedB = true;
    80005634:	00100793          	li	a5,1
    80005638:	00007717          	auipc	a4,0x7
    8000563c:	6cf70b23          	sb	a5,1750(a4) # 8000cd0e <_ZL9finishedB>
    thread_dispatch();
    80005640:	ffffc097          	auipc	ra,0xffffc
    80005644:	19c080e7          	jalr	412(ra) # 800017dc <thread_dispatch>
}
    80005648:	01813083          	ld	ra,24(sp)
    8000564c:	01013403          	ld	s0,16(sp)
    80005650:	00813483          	ld	s1,8(sp)
    80005654:	00013903          	ld	s2,0(sp)
    80005658:	02010113          	addi	sp,sp,32
    8000565c:	00008067          	ret

0000000080005660 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005660:	fe010113          	addi	sp,sp,-32
    80005664:	00113c23          	sd	ra,24(sp)
    80005668:	00813823          	sd	s0,16(sp)
    8000566c:	00913423          	sd	s1,8(sp)
    80005670:	01213023          	sd	s2,0(sp)
    80005674:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005678:	00000913          	li	s2,0
    8000567c:	0380006f          	j	800056b4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005680:	ffffc097          	auipc	ra,0xffffc
    80005684:	15c080e7          	jalr	348(ra) # 800017dc <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005688:	00148493          	addi	s1,s1,1
    8000568c:	000027b7          	lui	a5,0x2
    80005690:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005694:	0097ee63          	bltu	a5,s1,800056b0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005698:	00000713          	li	a4,0
    8000569c:	000077b7          	lui	a5,0x7
    800056a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800056a4:	fce7eee3          	bltu	a5,a4,80005680 <_ZL11workerBodyAPv+0x20>
    800056a8:	00170713          	addi	a4,a4,1
    800056ac:	ff1ff06f          	j	8000569c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800056b0:	00190913          	addi	s2,s2,1
    800056b4:	00900793          	li	a5,9
    800056b8:	0527e063          	bltu	a5,s2,800056f8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800056bc:	00005517          	auipc	a0,0x5
    800056c0:	c0450513          	addi	a0,a0,-1020 # 8000a2c0 <CONSOLE_STATUS+0x2a8>
    800056c4:	00001097          	auipc	ra,0x1
    800056c8:	9f0080e7          	jalr	-1552(ra) # 800060b4 <_Z11printStringPKc>
    800056cc:	00000613          	li	a2,0
    800056d0:	00a00593          	li	a1,10
    800056d4:	0009051b          	sext.w	a0,s2
    800056d8:	00001097          	auipc	ra,0x1
    800056dc:	b8c080e7          	jalr	-1140(ra) # 80006264 <_Z8printIntiii>
    800056e0:	00005517          	auipc	a0,0x5
    800056e4:	e7050513          	addi	a0,a0,-400 # 8000a550 <CONSOLE_STATUS+0x538>
    800056e8:	00001097          	auipc	ra,0x1
    800056ec:	9cc080e7          	jalr	-1588(ra) # 800060b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056f0:	00000493          	li	s1,0
    800056f4:	f99ff06f          	j	8000568c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800056f8:	00005517          	auipc	a0,0x5
    800056fc:	bd050513          	addi	a0,a0,-1072 # 8000a2c8 <CONSOLE_STATUS+0x2b0>
    80005700:	00001097          	auipc	ra,0x1
    80005704:	9b4080e7          	jalr	-1612(ra) # 800060b4 <_Z11printStringPKc>
    finishedA = true;
    80005708:	00100793          	li	a5,1
    8000570c:	00007717          	auipc	a4,0x7
    80005710:	60f701a3          	sb	a5,1539(a4) # 8000cd0f <_ZL9finishedA>
}
    80005714:	01813083          	ld	ra,24(sp)
    80005718:	01013403          	ld	s0,16(sp)
    8000571c:	00813483          	ld	s1,8(sp)
    80005720:	00013903          	ld	s2,0(sp)
    80005724:	02010113          	addi	sp,sp,32
    80005728:	00008067          	ret

000000008000572c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000572c:	fd010113          	addi	sp,sp,-48
    80005730:	02113423          	sd	ra,40(sp)
    80005734:	02813023          	sd	s0,32(sp)
    80005738:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000573c:	00000613          	li	a2,0
    80005740:	00000597          	auipc	a1,0x0
    80005744:	f2058593          	addi	a1,a1,-224 # 80005660 <_ZL11workerBodyAPv>
    80005748:	fd040513          	addi	a0,s0,-48
    8000574c:	ffffc097          	auipc	ra,0xffffc
    80005750:	fac080e7          	jalr	-84(ra) # 800016f8 <thread_create>
    printString("ThreadA created\n");
    80005754:	00005517          	auipc	a0,0x5
    80005758:	c1450513          	addi	a0,a0,-1004 # 8000a368 <CONSOLE_STATUS+0x350>
    8000575c:	00001097          	auipc	ra,0x1
    80005760:	958080e7          	jalr	-1704(ra) # 800060b4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005764:	00000613          	li	a2,0
    80005768:	00000597          	auipc	a1,0x0
    8000576c:	e2458593          	addi	a1,a1,-476 # 8000558c <_ZL11workerBodyBPv>
    80005770:	fd840513          	addi	a0,s0,-40
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	f84080e7          	jalr	-124(ra) # 800016f8 <thread_create>
    printString("ThreadB created\n");
    8000577c:	00005517          	auipc	a0,0x5
    80005780:	c0450513          	addi	a0,a0,-1020 # 8000a380 <CONSOLE_STATUS+0x368>
    80005784:	00001097          	auipc	ra,0x1
    80005788:	930080e7          	jalr	-1744(ra) # 800060b4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000578c:	00000613          	li	a2,0
    80005790:	00000597          	auipc	a1,0x0
    80005794:	c7c58593          	addi	a1,a1,-900 # 8000540c <_ZL11workerBodyCPv>
    80005798:	fe040513          	addi	a0,s0,-32
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	f5c080e7          	jalr	-164(ra) # 800016f8 <thread_create>
    printString("ThreadC created\n");
    800057a4:	00005517          	auipc	a0,0x5
    800057a8:	bf450513          	addi	a0,a0,-1036 # 8000a398 <CONSOLE_STATUS+0x380>
    800057ac:	00001097          	auipc	ra,0x1
    800057b0:	908080e7          	jalr	-1784(ra) # 800060b4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800057b4:	00000613          	li	a2,0
    800057b8:	00000597          	auipc	a1,0x0
    800057bc:	b0c58593          	addi	a1,a1,-1268 # 800052c4 <_ZL11workerBodyDPv>
    800057c0:	fe840513          	addi	a0,s0,-24
    800057c4:	ffffc097          	auipc	ra,0xffffc
    800057c8:	f34080e7          	jalr	-204(ra) # 800016f8 <thread_create>
    printString("ThreadD created\n");
    800057cc:	00005517          	auipc	a0,0x5
    800057d0:	be450513          	addi	a0,a0,-1052 # 8000a3b0 <CONSOLE_STATUS+0x398>
    800057d4:	00001097          	auipc	ra,0x1
    800057d8:	8e0080e7          	jalr	-1824(ra) # 800060b4 <_Z11printStringPKc>
    800057dc:	00c0006f          	j	800057e8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	ffc080e7          	jalr	-4(ra) # 800017dc <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800057e8:	00007797          	auipc	a5,0x7
    800057ec:	5277c783          	lbu	a5,1319(a5) # 8000cd0f <_ZL9finishedA>
    800057f0:	fe0788e3          	beqz	a5,800057e0 <_Z18Threads_C_API_testv+0xb4>
    800057f4:	00007797          	auipc	a5,0x7
    800057f8:	51a7c783          	lbu	a5,1306(a5) # 8000cd0e <_ZL9finishedB>
    800057fc:	fe0782e3          	beqz	a5,800057e0 <_Z18Threads_C_API_testv+0xb4>
    80005800:	00007797          	auipc	a5,0x7
    80005804:	50d7c783          	lbu	a5,1293(a5) # 8000cd0d <_ZL9finishedC>
    80005808:	fc078ce3          	beqz	a5,800057e0 <_Z18Threads_C_API_testv+0xb4>
    8000580c:	00007797          	auipc	a5,0x7
    80005810:	5007c783          	lbu	a5,1280(a5) # 8000cd0c <_ZL9finishedD>
    80005814:	fc0786e3          	beqz	a5,800057e0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005818:	02813083          	ld	ra,40(sp)
    8000581c:	02013403          	ld	s0,32(sp)
    80005820:	03010113          	addi	sp,sp,48
    80005824:	00008067          	ret

0000000080005828 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005828:	fd010113          	addi	sp,sp,-48
    8000582c:	02113423          	sd	ra,40(sp)
    80005830:	02813023          	sd	s0,32(sp)
    80005834:	00913c23          	sd	s1,24(sp)
    80005838:	01213823          	sd	s2,16(sp)
    8000583c:	01313423          	sd	s3,8(sp)
    80005840:	03010413          	addi	s0,sp,48
    80005844:	00050993          	mv	s3,a0
    80005848:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000584c:	00000913          	li	s2,0
    80005850:	00c0006f          	j	8000585c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005854:	ffffd097          	auipc	ra,0xffffd
    80005858:	058080e7          	jalr	88(ra) # 800028ac <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	264080e7          	jalr	612(ra) # 80001ac0 <getc>
    80005864:	0005059b          	sext.w	a1,a0
    80005868:	01b00793          	li	a5,27
    8000586c:	02f58a63          	beq	a1,a5,800058a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005870:	0084b503          	ld	a0,8(s1)
    80005874:	00001097          	auipc	ra,0x1
    80005878:	c64080e7          	jalr	-924(ra) # 800064d8 <_ZN9BufferCPP3putEi>
        i++;
    8000587c:	0019071b          	addiw	a4,s2,1
    80005880:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005884:	0004a683          	lw	a3,0(s1)
    80005888:	0026979b          	slliw	a5,a3,0x2
    8000588c:	00d787bb          	addw	a5,a5,a3
    80005890:	0017979b          	slliw	a5,a5,0x1
    80005894:	02f767bb          	remw	a5,a4,a5
    80005898:	fc0792e3          	bnez	a5,8000585c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000589c:	fb9ff06f          	j	80005854 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800058a0:	00100793          	li	a5,1
    800058a4:	00007717          	auipc	a4,0x7
    800058a8:	46f72623          	sw	a5,1132(a4) # 8000cd10 <_ZL9threadEnd>
    td->buffer->put('!');
    800058ac:	0209b783          	ld	a5,32(s3)
    800058b0:	02100593          	li	a1,33
    800058b4:	0087b503          	ld	a0,8(a5)
    800058b8:	00001097          	auipc	ra,0x1
    800058bc:	c20080e7          	jalr	-992(ra) # 800064d8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800058c0:	0104b503          	ld	a0,16(s1)
    800058c4:	ffffd097          	auipc	ra,0xffffd
    800058c8:	074080e7          	jalr	116(ra) # 80002938 <_ZN9Semaphore6signalEv>
}
    800058cc:	02813083          	ld	ra,40(sp)
    800058d0:	02013403          	ld	s0,32(sp)
    800058d4:	01813483          	ld	s1,24(sp)
    800058d8:	01013903          	ld	s2,16(sp)
    800058dc:	00813983          	ld	s3,8(sp)
    800058e0:	03010113          	addi	sp,sp,48
    800058e4:	00008067          	ret

00000000800058e8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800058e8:	fe010113          	addi	sp,sp,-32
    800058ec:	00113c23          	sd	ra,24(sp)
    800058f0:	00813823          	sd	s0,16(sp)
    800058f4:	00913423          	sd	s1,8(sp)
    800058f8:	01213023          	sd	s2,0(sp)
    800058fc:	02010413          	addi	s0,sp,32
    80005900:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005904:	00000913          	li	s2,0
    80005908:	00c0006f          	j	80005914 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000590c:	ffffd097          	auipc	ra,0xffffd
    80005910:	fa0080e7          	jalr	-96(ra) # 800028ac <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005914:	00007797          	auipc	a5,0x7
    80005918:	3fc7a783          	lw	a5,1020(a5) # 8000cd10 <_ZL9threadEnd>
    8000591c:	02079e63          	bnez	a5,80005958 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005920:	0004a583          	lw	a1,0(s1)
    80005924:	0305859b          	addiw	a1,a1,48
    80005928:	0084b503          	ld	a0,8(s1)
    8000592c:	00001097          	auipc	ra,0x1
    80005930:	bac080e7          	jalr	-1108(ra) # 800064d8 <_ZN9BufferCPP3putEi>
        i++;
    80005934:	0019071b          	addiw	a4,s2,1
    80005938:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000593c:	0004a683          	lw	a3,0(s1)
    80005940:	0026979b          	slliw	a5,a3,0x2
    80005944:	00d787bb          	addw	a5,a5,a3
    80005948:	0017979b          	slliw	a5,a5,0x1
    8000594c:	02f767bb          	remw	a5,a4,a5
    80005950:	fc0792e3          	bnez	a5,80005914 <_ZN12ProducerSync8producerEPv+0x2c>
    80005954:	fb9ff06f          	j	8000590c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005958:	0104b503          	ld	a0,16(s1)
    8000595c:	ffffd097          	auipc	ra,0xffffd
    80005960:	fdc080e7          	jalr	-36(ra) # 80002938 <_ZN9Semaphore6signalEv>
}
    80005964:	01813083          	ld	ra,24(sp)
    80005968:	01013403          	ld	s0,16(sp)
    8000596c:	00813483          	ld	s1,8(sp)
    80005970:	00013903          	ld	s2,0(sp)
    80005974:	02010113          	addi	sp,sp,32
    80005978:	00008067          	ret

000000008000597c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000597c:	fd010113          	addi	sp,sp,-48
    80005980:	02113423          	sd	ra,40(sp)
    80005984:	02813023          	sd	s0,32(sp)
    80005988:	00913c23          	sd	s1,24(sp)
    8000598c:	01213823          	sd	s2,16(sp)
    80005990:	01313423          	sd	s3,8(sp)
    80005994:	01413023          	sd	s4,0(sp)
    80005998:	03010413          	addi	s0,sp,48
    8000599c:	00050993          	mv	s3,a0
    800059a0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800059a4:	00000a13          	li	s4,0
    800059a8:	01c0006f          	j	800059c4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800059ac:	ffffd097          	auipc	ra,0xffffd
    800059b0:	f00080e7          	jalr	-256(ra) # 800028ac <_ZN6Thread8dispatchEv>
    800059b4:	0500006f          	j	80005a04 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800059b8:	00a00513          	li	a0,10
    800059bc:	ffffc097          	auipc	ra,0xffffc
    800059c0:	14c080e7          	jalr	332(ra) # 80001b08 <putc>
    while (!threadEnd) {
    800059c4:	00007797          	auipc	a5,0x7
    800059c8:	34c7a783          	lw	a5,844(a5) # 8000cd10 <_ZL9threadEnd>
    800059cc:	06079263          	bnez	a5,80005a30 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800059d0:	00893503          	ld	a0,8(s2)
    800059d4:	00001097          	auipc	ra,0x1
    800059d8:	b94080e7          	jalr	-1132(ra) # 80006568 <_ZN9BufferCPP3getEv>
        i++;
    800059dc:	001a049b          	addiw	s1,s4,1
    800059e0:	00048a1b          	sext.w	s4,s1
        putc(key);
    800059e4:	0ff57513          	andi	a0,a0,255
    800059e8:	ffffc097          	auipc	ra,0xffffc
    800059ec:	120080e7          	jalr	288(ra) # 80001b08 <putc>
        if (i % (5 * data->id) == 0) {
    800059f0:	00092703          	lw	a4,0(s2)
    800059f4:	0027179b          	slliw	a5,a4,0x2
    800059f8:	00e787bb          	addw	a5,a5,a4
    800059fc:	02f4e7bb          	remw	a5,s1,a5
    80005a00:	fa0786e3          	beqz	a5,800059ac <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005a04:	05000793          	li	a5,80
    80005a08:	02f4e4bb          	remw	s1,s1,a5
    80005a0c:	fa049ce3          	bnez	s1,800059c4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005a10:	fa9ff06f          	j	800059b8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005a14:	0209b783          	ld	a5,32(s3)
    80005a18:	0087b503          	ld	a0,8(a5)
    80005a1c:	00001097          	auipc	ra,0x1
    80005a20:	b4c080e7          	jalr	-1204(ra) # 80006568 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005a24:	0ff57513          	andi	a0,a0,255
    80005a28:	ffffd097          	auipc	ra,0xffffd
    80005a2c:	f64080e7          	jalr	-156(ra) # 8000298c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005a30:	0209b783          	ld	a5,32(s3)
    80005a34:	0087b503          	ld	a0,8(a5)
    80005a38:	00001097          	auipc	ra,0x1
    80005a3c:	bbc080e7          	jalr	-1092(ra) # 800065f4 <_ZN9BufferCPP6getCntEv>
    80005a40:	fca04ae3          	bgtz	a0,80005a14 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005a44:	01093503          	ld	a0,16(s2)
    80005a48:	ffffd097          	auipc	ra,0xffffd
    80005a4c:	ef0080e7          	jalr	-272(ra) # 80002938 <_ZN9Semaphore6signalEv>
}
    80005a50:	02813083          	ld	ra,40(sp)
    80005a54:	02013403          	ld	s0,32(sp)
    80005a58:	01813483          	ld	s1,24(sp)
    80005a5c:	01013903          	ld	s2,16(sp)
    80005a60:	00813983          	ld	s3,8(sp)
    80005a64:	00013a03          	ld	s4,0(sp)
    80005a68:	03010113          	addi	sp,sp,48
    80005a6c:	00008067          	ret

0000000080005a70 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005a70:	f8010113          	addi	sp,sp,-128
    80005a74:	06113c23          	sd	ra,120(sp)
    80005a78:	06813823          	sd	s0,112(sp)
    80005a7c:	06913423          	sd	s1,104(sp)
    80005a80:	07213023          	sd	s2,96(sp)
    80005a84:	05313c23          	sd	s3,88(sp)
    80005a88:	05413823          	sd	s4,80(sp)
    80005a8c:	05513423          	sd	s5,72(sp)
    80005a90:	05613023          	sd	s6,64(sp)
    80005a94:	03713c23          	sd	s7,56(sp)
    80005a98:	03813823          	sd	s8,48(sp)
    80005a9c:	03913423          	sd	s9,40(sp)
    80005aa0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005aa4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005aa8:	00004517          	auipc	a0,0x4
    80005aac:	73050513          	addi	a0,a0,1840 # 8000a1d8 <CONSOLE_STATUS+0x1c0>
    80005ab0:	00000097          	auipc	ra,0x0
    80005ab4:	604080e7          	jalr	1540(ra) # 800060b4 <_Z11printStringPKc>
    getString(input, 30);
    80005ab8:	01e00593          	li	a1,30
    80005abc:	f8040493          	addi	s1,s0,-128
    80005ac0:	00048513          	mv	a0,s1
    80005ac4:	00000097          	auipc	ra,0x0
    80005ac8:	678080e7          	jalr	1656(ra) # 8000613c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005acc:	00048513          	mv	a0,s1
    80005ad0:	00000097          	auipc	ra,0x0
    80005ad4:	744080e7          	jalr	1860(ra) # 80006214 <_Z11stringToIntPKc>
    80005ad8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005adc:	00004517          	auipc	a0,0x4
    80005ae0:	71c50513          	addi	a0,a0,1820 # 8000a1f8 <CONSOLE_STATUS+0x1e0>
    80005ae4:	00000097          	auipc	ra,0x0
    80005ae8:	5d0080e7          	jalr	1488(ra) # 800060b4 <_Z11printStringPKc>
    getString(input, 30);
    80005aec:	01e00593          	li	a1,30
    80005af0:	00048513          	mv	a0,s1
    80005af4:	00000097          	auipc	ra,0x0
    80005af8:	648080e7          	jalr	1608(ra) # 8000613c <_Z9getStringPci>
    n = stringToInt(input);
    80005afc:	00048513          	mv	a0,s1
    80005b00:	00000097          	auipc	ra,0x0
    80005b04:	714080e7          	jalr	1812(ra) # 80006214 <_Z11stringToIntPKc>
    80005b08:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005b0c:	00004517          	auipc	a0,0x4
    80005b10:	70c50513          	addi	a0,a0,1804 # 8000a218 <CONSOLE_STATUS+0x200>
    80005b14:	00000097          	auipc	ra,0x0
    80005b18:	5a0080e7          	jalr	1440(ra) # 800060b4 <_Z11printStringPKc>
    80005b1c:	00000613          	li	a2,0
    80005b20:	00a00593          	li	a1,10
    80005b24:	00090513          	mv	a0,s2
    80005b28:	00000097          	auipc	ra,0x0
    80005b2c:	73c080e7          	jalr	1852(ra) # 80006264 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005b30:	00004517          	auipc	a0,0x4
    80005b34:	70050513          	addi	a0,a0,1792 # 8000a230 <CONSOLE_STATUS+0x218>
    80005b38:	00000097          	auipc	ra,0x0
    80005b3c:	57c080e7          	jalr	1404(ra) # 800060b4 <_Z11printStringPKc>
    80005b40:	00000613          	li	a2,0
    80005b44:	00a00593          	li	a1,10
    80005b48:	00048513          	mv	a0,s1
    80005b4c:	00000097          	auipc	ra,0x0
    80005b50:	718080e7          	jalr	1816(ra) # 80006264 <_Z8printIntiii>
    printString(".\n");
    80005b54:	00004517          	auipc	a0,0x4
    80005b58:	6f450513          	addi	a0,a0,1780 # 8000a248 <CONSOLE_STATUS+0x230>
    80005b5c:	00000097          	auipc	ra,0x0
    80005b60:	558080e7          	jalr	1368(ra) # 800060b4 <_Z11printStringPKc>
    if(threadNum > n) {
    80005b64:	0324c463          	blt	s1,s2,80005b8c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005b68:	03205c63          	blez	s2,80005ba0 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005b6c:	03800513          	li	a0,56
    80005b70:	ffffd097          	auipc	ra,0xffffd
    80005b74:	aec080e7          	jalr	-1300(ra) # 8000265c <_Znwm>
    80005b78:	00050a93          	mv	s5,a0
    80005b7c:	00048593          	mv	a1,s1
    80005b80:	00001097          	auipc	ra,0x1
    80005b84:	804080e7          	jalr	-2044(ra) # 80006384 <_ZN9BufferCPPC1Ei>
    80005b88:	0300006f          	j	80005bb8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005b8c:	00004517          	auipc	a0,0x4
    80005b90:	6c450513          	addi	a0,a0,1732 # 8000a250 <CONSOLE_STATUS+0x238>
    80005b94:	00000097          	auipc	ra,0x0
    80005b98:	520080e7          	jalr	1312(ra) # 800060b4 <_Z11printStringPKc>
        return;
    80005b9c:	0140006f          	j	80005bb0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005ba0:	00004517          	auipc	a0,0x4
    80005ba4:	6f050513          	addi	a0,a0,1776 # 8000a290 <CONSOLE_STATUS+0x278>
    80005ba8:	00000097          	auipc	ra,0x0
    80005bac:	50c080e7          	jalr	1292(ra) # 800060b4 <_Z11printStringPKc>
        return;
    80005bb0:	000b8113          	mv	sp,s7
    80005bb4:	2380006f          	j	80005dec <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005bb8:	01000513          	li	a0,16
    80005bbc:	ffffd097          	auipc	ra,0xffffd
    80005bc0:	aa0080e7          	jalr	-1376(ra) # 8000265c <_Znwm>
    80005bc4:	00050493          	mv	s1,a0
    80005bc8:	00000593          	li	a1,0
    80005bcc:	ffffd097          	auipc	ra,0xffffd
    80005bd0:	d08080e7          	jalr	-760(ra) # 800028d4 <_ZN9SemaphoreC1Ej>
    80005bd4:	00007797          	auipc	a5,0x7
    80005bd8:	1497b223          	sd	s1,324(a5) # 8000cd18 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005bdc:	00391793          	slli	a5,s2,0x3
    80005be0:	00f78793          	addi	a5,a5,15
    80005be4:	ff07f793          	andi	a5,a5,-16
    80005be8:	40f10133          	sub	sp,sp,a5
    80005bec:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005bf0:	0019071b          	addiw	a4,s2,1
    80005bf4:	00171793          	slli	a5,a4,0x1
    80005bf8:	00e787b3          	add	a5,a5,a4
    80005bfc:	00379793          	slli	a5,a5,0x3
    80005c00:	00f78793          	addi	a5,a5,15
    80005c04:	ff07f793          	andi	a5,a5,-16
    80005c08:	40f10133          	sub	sp,sp,a5
    80005c0c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005c10:	00191c13          	slli	s8,s2,0x1
    80005c14:	012c07b3          	add	a5,s8,s2
    80005c18:	00379793          	slli	a5,a5,0x3
    80005c1c:	00fa07b3          	add	a5,s4,a5
    80005c20:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005c24:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005c28:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005c2c:	02800513          	li	a0,40
    80005c30:	ffffd097          	auipc	ra,0xffffd
    80005c34:	a2c080e7          	jalr	-1492(ra) # 8000265c <_Znwm>
    80005c38:	00050b13          	mv	s6,a0
    80005c3c:	012c0c33          	add	s8,s8,s2
    80005c40:	003c1c13          	slli	s8,s8,0x3
    80005c44:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005c48:	ffffd097          	auipc	ra,0xffffd
    80005c4c:	b34080e7          	jalr	-1228(ra) # 8000277c <_ZN6ThreadC1Ev>
    80005c50:	00007797          	auipc	a5,0x7
    80005c54:	f8078793          	addi	a5,a5,-128 # 8000cbd0 <_ZTV12ConsumerSync+0x10>
    80005c58:	00fb3023          	sd	a5,0(s6)
    80005c5c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005c60:	000b0513          	mv	a0,s6
    80005c64:	ffffd097          	auipc	ra,0xffffd
    80005c68:	b64080e7          	jalr	-1180(ra) # 800027c8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005c6c:	00000493          	li	s1,0
    80005c70:	0380006f          	j	80005ca8 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005c74:	00007797          	auipc	a5,0x7
    80005c78:	f3478793          	addi	a5,a5,-204 # 8000cba8 <_ZTV12ProducerSync+0x10>
    80005c7c:	00fcb023          	sd	a5,0(s9)
    80005c80:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005c84:	00349793          	slli	a5,s1,0x3
    80005c88:	00f987b3          	add	a5,s3,a5
    80005c8c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005c90:	00349793          	slli	a5,s1,0x3
    80005c94:	00f987b3          	add	a5,s3,a5
    80005c98:	0007b503          	ld	a0,0(a5)
    80005c9c:	ffffd097          	auipc	ra,0xffffd
    80005ca0:	b2c080e7          	jalr	-1236(ra) # 800027c8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005ca4:	0014849b          	addiw	s1,s1,1
    80005ca8:	0b24d063          	bge	s1,s2,80005d48 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005cac:	00149793          	slli	a5,s1,0x1
    80005cb0:	009787b3          	add	a5,a5,s1
    80005cb4:	00379793          	slli	a5,a5,0x3
    80005cb8:	00fa07b3          	add	a5,s4,a5
    80005cbc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005cc0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005cc4:	00007717          	auipc	a4,0x7
    80005cc8:	05473703          	ld	a4,84(a4) # 8000cd18 <_ZL10waitForAll>
    80005ccc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005cd0:	02905863          	blez	s1,80005d00 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005cd4:	02800513          	li	a0,40
    80005cd8:	ffffd097          	auipc	ra,0xffffd
    80005cdc:	984080e7          	jalr	-1660(ra) # 8000265c <_Znwm>
    80005ce0:	00050c93          	mv	s9,a0
    80005ce4:	00149c13          	slli	s8,s1,0x1
    80005ce8:	009c0c33          	add	s8,s8,s1
    80005cec:	003c1c13          	slli	s8,s8,0x3
    80005cf0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005cf4:	ffffd097          	auipc	ra,0xffffd
    80005cf8:	a88080e7          	jalr	-1400(ra) # 8000277c <_ZN6ThreadC1Ev>
    80005cfc:	f79ff06f          	j	80005c74 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005d00:	02800513          	li	a0,40
    80005d04:	ffffd097          	auipc	ra,0xffffd
    80005d08:	958080e7          	jalr	-1704(ra) # 8000265c <_Znwm>
    80005d0c:	00050c93          	mv	s9,a0
    80005d10:	00149c13          	slli	s8,s1,0x1
    80005d14:	009c0c33          	add	s8,s8,s1
    80005d18:	003c1c13          	slli	s8,s8,0x3
    80005d1c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005d20:	ffffd097          	auipc	ra,0xffffd
    80005d24:	a5c080e7          	jalr	-1444(ra) # 8000277c <_ZN6ThreadC1Ev>
    80005d28:	00007797          	auipc	a5,0x7
    80005d2c:	e5878793          	addi	a5,a5,-424 # 8000cb80 <_ZTV16ProducerKeyboard+0x10>
    80005d30:	00fcb023          	sd	a5,0(s9)
    80005d34:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005d38:	00349793          	slli	a5,s1,0x3
    80005d3c:	00f987b3          	add	a5,s3,a5
    80005d40:	0197b023          	sd	s9,0(a5)
    80005d44:	f4dff06f          	j	80005c90 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005d48:	ffffd097          	auipc	ra,0xffffd
    80005d4c:	b64080e7          	jalr	-1180(ra) # 800028ac <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005d50:	00000493          	li	s1,0
    80005d54:	00994e63          	blt	s2,s1,80005d70 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005d58:	00007517          	auipc	a0,0x7
    80005d5c:	fc053503          	ld	a0,-64(a0) # 8000cd18 <_ZL10waitForAll>
    80005d60:	ffffd097          	auipc	ra,0xffffd
    80005d64:	bac080e7          	jalr	-1108(ra) # 8000290c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005d68:	0014849b          	addiw	s1,s1,1
    80005d6c:	fe9ff06f          	j	80005d54 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005d70:	00000493          	li	s1,0
    80005d74:	0080006f          	j	80005d7c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005d78:	0014849b          	addiw	s1,s1,1
    80005d7c:	0324d263          	bge	s1,s2,80005da0 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005d80:	00349793          	slli	a5,s1,0x3
    80005d84:	00f987b3          	add	a5,s3,a5
    80005d88:	0007b503          	ld	a0,0(a5)
    80005d8c:	fe0506e3          	beqz	a0,80005d78 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005d90:	00053783          	ld	a5,0(a0)
    80005d94:	0087b783          	ld	a5,8(a5)
    80005d98:	000780e7          	jalr	a5
    80005d9c:	fddff06f          	j	80005d78 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005da0:	000b0a63          	beqz	s6,80005db4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005da4:	000b3783          	ld	a5,0(s6)
    80005da8:	0087b783          	ld	a5,8(a5)
    80005dac:	000b0513          	mv	a0,s6
    80005db0:	000780e7          	jalr	a5
    delete waitForAll;
    80005db4:	00007517          	auipc	a0,0x7
    80005db8:	f6453503          	ld	a0,-156(a0) # 8000cd18 <_ZL10waitForAll>
    80005dbc:	00050863          	beqz	a0,80005dcc <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005dc0:	00053783          	ld	a5,0(a0)
    80005dc4:	0087b783          	ld	a5,8(a5)
    80005dc8:	000780e7          	jalr	a5
    delete buffer;
    80005dcc:	000a8e63          	beqz	s5,80005de8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005dd0:	000a8513          	mv	a0,s5
    80005dd4:	00001097          	auipc	ra,0x1
    80005dd8:	8a8080e7          	jalr	-1880(ra) # 8000667c <_ZN9BufferCPPD1Ev>
    80005ddc:	000a8513          	mv	a0,s5
    80005de0:	ffffd097          	auipc	ra,0xffffd
    80005de4:	8cc080e7          	jalr	-1844(ra) # 800026ac <_ZdlPv>
    80005de8:	000b8113          	mv	sp,s7

}
    80005dec:	f8040113          	addi	sp,s0,-128
    80005df0:	07813083          	ld	ra,120(sp)
    80005df4:	07013403          	ld	s0,112(sp)
    80005df8:	06813483          	ld	s1,104(sp)
    80005dfc:	06013903          	ld	s2,96(sp)
    80005e00:	05813983          	ld	s3,88(sp)
    80005e04:	05013a03          	ld	s4,80(sp)
    80005e08:	04813a83          	ld	s5,72(sp)
    80005e0c:	04013b03          	ld	s6,64(sp)
    80005e10:	03813b83          	ld	s7,56(sp)
    80005e14:	03013c03          	ld	s8,48(sp)
    80005e18:	02813c83          	ld	s9,40(sp)
    80005e1c:	08010113          	addi	sp,sp,128
    80005e20:	00008067          	ret
    80005e24:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005e28:	000a8513          	mv	a0,s5
    80005e2c:	ffffd097          	auipc	ra,0xffffd
    80005e30:	880080e7          	jalr	-1920(ra) # 800026ac <_ZdlPv>
    80005e34:	00048513          	mv	a0,s1
    80005e38:	00008097          	auipc	ra,0x8
    80005e3c:	fc0080e7          	jalr	-64(ra) # 8000ddf8 <_Unwind_Resume>
    80005e40:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005e44:	00048513          	mv	a0,s1
    80005e48:	ffffd097          	auipc	ra,0xffffd
    80005e4c:	864080e7          	jalr	-1948(ra) # 800026ac <_ZdlPv>
    80005e50:	00090513          	mv	a0,s2
    80005e54:	00008097          	auipc	ra,0x8
    80005e58:	fa4080e7          	jalr	-92(ra) # 8000ddf8 <_Unwind_Resume>
    80005e5c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005e60:	000b0513          	mv	a0,s6
    80005e64:	ffffd097          	auipc	ra,0xffffd
    80005e68:	848080e7          	jalr	-1976(ra) # 800026ac <_ZdlPv>
    80005e6c:	00048513          	mv	a0,s1
    80005e70:	00008097          	auipc	ra,0x8
    80005e74:	f88080e7          	jalr	-120(ra) # 8000ddf8 <_Unwind_Resume>
    80005e78:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005e7c:	000c8513          	mv	a0,s9
    80005e80:	ffffd097          	auipc	ra,0xffffd
    80005e84:	82c080e7          	jalr	-2004(ra) # 800026ac <_ZdlPv>
    80005e88:	00048513          	mv	a0,s1
    80005e8c:	00008097          	auipc	ra,0x8
    80005e90:	f6c080e7          	jalr	-148(ra) # 8000ddf8 <_Unwind_Resume>
    80005e94:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005e98:	000c8513          	mv	a0,s9
    80005e9c:	ffffd097          	auipc	ra,0xffffd
    80005ea0:	810080e7          	jalr	-2032(ra) # 800026ac <_ZdlPv>
    80005ea4:	00048513          	mv	a0,s1
    80005ea8:	00008097          	auipc	ra,0x8
    80005eac:	f50080e7          	jalr	-176(ra) # 8000ddf8 <_Unwind_Resume>

0000000080005eb0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005eb0:	ff010113          	addi	sp,sp,-16
    80005eb4:	00113423          	sd	ra,8(sp)
    80005eb8:	00813023          	sd	s0,0(sp)
    80005ebc:	01010413          	addi	s0,sp,16
    80005ec0:	00007797          	auipc	a5,0x7
    80005ec4:	d1078793          	addi	a5,a5,-752 # 8000cbd0 <_ZTV12ConsumerSync+0x10>
    80005ec8:	00f53023          	sd	a5,0(a0)
    80005ecc:	ffffd097          	auipc	ra,0xffffd
    80005ed0:	954080e7          	jalr	-1708(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005ed4:	00813083          	ld	ra,8(sp)
    80005ed8:	00013403          	ld	s0,0(sp)
    80005edc:	01010113          	addi	sp,sp,16
    80005ee0:	00008067          	ret

0000000080005ee4 <_ZN12ConsumerSyncD0Ev>:
    80005ee4:	fe010113          	addi	sp,sp,-32
    80005ee8:	00113c23          	sd	ra,24(sp)
    80005eec:	00813823          	sd	s0,16(sp)
    80005ef0:	00913423          	sd	s1,8(sp)
    80005ef4:	02010413          	addi	s0,sp,32
    80005ef8:	00050493          	mv	s1,a0
    80005efc:	00007797          	auipc	a5,0x7
    80005f00:	cd478793          	addi	a5,a5,-812 # 8000cbd0 <_ZTV12ConsumerSync+0x10>
    80005f04:	00f53023          	sd	a5,0(a0)
    80005f08:	ffffd097          	auipc	ra,0xffffd
    80005f0c:	918080e7          	jalr	-1768(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005f10:	00048513          	mv	a0,s1
    80005f14:	ffffc097          	auipc	ra,0xffffc
    80005f18:	798080e7          	jalr	1944(ra) # 800026ac <_ZdlPv>
    80005f1c:	01813083          	ld	ra,24(sp)
    80005f20:	01013403          	ld	s0,16(sp)
    80005f24:	00813483          	ld	s1,8(sp)
    80005f28:	02010113          	addi	sp,sp,32
    80005f2c:	00008067          	ret

0000000080005f30 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005f30:	ff010113          	addi	sp,sp,-16
    80005f34:	00113423          	sd	ra,8(sp)
    80005f38:	00813023          	sd	s0,0(sp)
    80005f3c:	01010413          	addi	s0,sp,16
    80005f40:	00007797          	auipc	a5,0x7
    80005f44:	c6878793          	addi	a5,a5,-920 # 8000cba8 <_ZTV12ProducerSync+0x10>
    80005f48:	00f53023          	sd	a5,0(a0)
    80005f4c:	ffffd097          	auipc	ra,0xffffd
    80005f50:	8d4080e7          	jalr	-1836(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005f54:	00813083          	ld	ra,8(sp)
    80005f58:	00013403          	ld	s0,0(sp)
    80005f5c:	01010113          	addi	sp,sp,16
    80005f60:	00008067          	ret

0000000080005f64 <_ZN12ProducerSyncD0Ev>:
    80005f64:	fe010113          	addi	sp,sp,-32
    80005f68:	00113c23          	sd	ra,24(sp)
    80005f6c:	00813823          	sd	s0,16(sp)
    80005f70:	00913423          	sd	s1,8(sp)
    80005f74:	02010413          	addi	s0,sp,32
    80005f78:	00050493          	mv	s1,a0
    80005f7c:	00007797          	auipc	a5,0x7
    80005f80:	c2c78793          	addi	a5,a5,-980 # 8000cba8 <_ZTV12ProducerSync+0x10>
    80005f84:	00f53023          	sd	a5,0(a0)
    80005f88:	ffffd097          	auipc	ra,0xffffd
    80005f8c:	898080e7          	jalr	-1896(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005f90:	00048513          	mv	a0,s1
    80005f94:	ffffc097          	auipc	ra,0xffffc
    80005f98:	718080e7          	jalr	1816(ra) # 800026ac <_ZdlPv>
    80005f9c:	01813083          	ld	ra,24(sp)
    80005fa0:	01013403          	ld	s0,16(sp)
    80005fa4:	00813483          	ld	s1,8(sp)
    80005fa8:	02010113          	addi	sp,sp,32
    80005fac:	00008067          	ret

0000000080005fb0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005fb0:	ff010113          	addi	sp,sp,-16
    80005fb4:	00113423          	sd	ra,8(sp)
    80005fb8:	00813023          	sd	s0,0(sp)
    80005fbc:	01010413          	addi	s0,sp,16
    80005fc0:	00007797          	auipc	a5,0x7
    80005fc4:	bc078793          	addi	a5,a5,-1088 # 8000cb80 <_ZTV16ProducerKeyboard+0x10>
    80005fc8:	00f53023          	sd	a5,0(a0)
    80005fcc:	ffffd097          	auipc	ra,0xffffd
    80005fd0:	854080e7          	jalr	-1964(ra) # 80002820 <_ZN6ThreadD1Ev>
    80005fd4:	00813083          	ld	ra,8(sp)
    80005fd8:	00013403          	ld	s0,0(sp)
    80005fdc:	01010113          	addi	sp,sp,16
    80005fe0:	00008067          	ret

0000000080005fe4 <_ZN16ProducerKeyboardD0Ev>:
    80005fe4:	fe010113          	addi	sp,sp,-32
    80005fe8:	00113c23          	sd	ra,24(sp)
    80005fec:	00813823          	sd	s0,16(sp)
    80005ff0:	00913423          	sd	s1,8(sp)
    80005ff4:	02010413          	addi	s0,sp,32
    80005ff8:	00050493          	mv	s1,a0
    80005ffc:	00007797          	auipc	a5,0x7
    80006000:	b8478793          	addi	a5,a5,-1148 # 8000cb80 <_ZTV16ProducerKeyboard+0x10>
    80006004:	00f53023          	sd	a5,0(a0)
    80006008:	ffffd097          	auipc	ra,0xffffd
    8000600c:	818080e7          	jalr	-2024(ra) # 80002820 <_ZN6ThreadD1Ev>
    80006010:	00048513          	mv	a0,s1
    80006014:	ffffc097          	auipc	ra,0xffffc
    80006018:	698080e7          	jalr	1688(ra) # 800026ac <_ZdlPv>
    8000601c:	01813083          	ld	ra,24(sp)
    80006020:	01013403          	ld	s0,16(sp)
    80006024:	00813483          	ld	s1,8(sp)
    80006028:	02010113          	addi	sp,sp,32
    8000602c:	00008067          	ret

0000000080006030 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006030:	ff010113          	addi	sp,sp,-16
    80006034:	00113423          	sd	ra,8(sp)
    80006038:	00813023          	sd	s0,0(sp)
    8000603c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006040:	02053583          	ld	a1,32(a0)
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	7e4080e7          	jalr	2020(ra) # 80005828 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000604c:	00813083          	ld	ra,8(sp)
    80006050:	00013403          	ld	s0,0(sp)
    80006054:	01010113          	addi	sp,sp,16
    80006058:	00008067          	ret

000000008000605c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000605c:	ff010113          	addi	sp,sp,-16
    80006060:	00113423          	sd	ra,8(sp)
    80006064:	00813023          	sd	s0,0(sp)
    80006068:	01010413          	addi	s0,sp,16
        producer(td);
    8000606c:	02053583          	ld	a1,32(a0)
    80006070:	00000097          	auipc	ra,0x0
    80006074:	878080e7          	jalr	-1928(ra) # 800058e8 <_ZN12ProducerSync8producerEPv>
    }
    80006078:	00813083          	ld	ra,8(sp)
    8000607c:	00013403          	ld	s0,0(sp)
    80006080:	01010113          	addi	sp,sp,16
    80006084:	00008067          	ret

0000000080006088 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80006088:	ff010113          	addi	sp,sp,-16
    8000608c:	00113423          	sd	ra,8(sp)
    80006090:	00813023          	sd	s0,0(sp)
    80006094:	01010413          	addi	s0,sp,16
        consumer(td);
    80006098:	02053583          	ld	a1,32(a0)
    8000609c:	00000097          	auipc	ra,0x0
    800060a0:	8e0080e7          	jalr	-1824(ra) # 8000597c <_ZN12ConsumerSync8consumerEPv>
    }
    800060a4:	00813083          	ld	ra,8(sp)
    800060a8:	00013403          	ld	s0,0(sp)
    800060ac:	01010113          	addi	sp,sp,16
    800060b0:	00008067          	ret

00000000800060b4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800060b4:	fe010113          	addi	sp,sp,-32
    800060b8:	00113c23          	sd	ra,24(sp)
    800060bc:	00813823          	sd	s0,16(sp)
    800060c0:	00913423          	sd	s1,8(sp)
    800060c4:	02010413          	addi	s0,sp,32
    800060c8:	00050493          	mv	s1,a0
    LOCK();
    800060cc:	00100613          	li	a2,1
    800060d0:	00000593          	li	a1,0
    800060d4:	00007517          	auipc	a0,0x7
    800060d8:	c4c50513          	addi	a0,a0,-948 # 8000cd20 <lockPrint>
    800060dc:	ffffb097          	auipc	ra,0xffffb
    800060e0:	4f8080e7          	jalr	1272(ra) # 800015d4 <copy_and_swap>
    800060e4:	00050863          	beqz	a0,800060f4 <_Z11printStringPKc+0x40>
    800060e8:	ffffb097          	auipc	ra,0xffffb
    800060ec:	6f4080e7          	jalr	1780(ra) # 800017dc <thread_dispatch>
    800060f0:	fddff06f          	j	800060cc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800060f4:	0004c503          	lbu	a0,0(s1)
    800060f8:	00050a63          	beqz	a0,8000610c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800060fc:	ffffc097          	auipc	ra,0xffffc
    80006100:	a0c080e7          	jalr	-1524(ra) # 80001b08 <putc>
        string++;
    80006104:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006108:	fedff06f          	j	800060f4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000610c:	00000613          	li	a2,0
    80006110:	00100593          	li	a1,1
    80006114:	00007517          	auipc	a0,0x7
    80006118:	c0c50513          	addi	a0,a0,-1012 # 8000cd20 <lockPrint>
    8000611c:	ffffb097          	auipc	ra,0xffffb
    80006120:	4b8080e7          	jalr	1208(ra) # 800015d4 <copy_and_swap>
    80006124:	fe0514e3          	bnez	a0,8000610c <_Z11printStringPKc+0x58>
}
    80006128:	01813083          	ld	ra,24(sp)
    8000612c:	01013403          	ld	s0,16(sp)
    80006130:	00813483          	ld	s1,8(sp)
    80006134:	02010113          	addi	sp,sp,32
    80006138:	00008067          	ret

000000008000613c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000613c:	fd010113          	addi	sp,sp,-48
    80006140:	02113423          	sd	ra,40(sp)
    80006144:	02813023          	sd	s0,32(sp)
    80006148:	00913c23          	sd	s1,24(sp)
    8000614c:	01213823          	sd	s2,16(sp)
    80006150:	01313423          	sd	s3,8(sp)
    80006154:	01413023          	sd	s4,0(sp)
    80006158:	03010413          	addi	s0,sp,48
    8000615c:	00050993          	mv	s3,a0
    80006160:	00058a13          	mv	s4,a1
    LOCK();
    80006164:	00100613          	li	a2,1
    80006168:	00000593          	li	a1,0
    8000616c:	00007517          	auipc	a0,0x7
    80006170:	bb450513          	addi	a0,a0,-1100 # 8000cd20 <lockPrint>
    80006174:	ffffb097          	auipc	ra,0xffffb
    80006178:	460080e7          	jalr	1120(ra) # 800015d4 <copy_and_swap>
    8000617c:	00050863          	beqz	a0,8000618c <_Z9getStringPci+0x50>
    80006180:	ffffb097          	auipc	ra,0xffffb
    80006184:	65c080e7          	jalr	1628(ra) # 800017dc <thread_dispatch>
    80006188:	fddff06f          	j	80006164 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000618c:	00000913          	li	s2,0
    80006190:	00090493          	mv	s1,s2
    80006194:	0019091b          	addiw	s2,s2,1
    80006198:	03495a63          	bge	s2,s4,800061cc <_Z9getStringPci+0x90>
        cc = getc();
    8000619c:	ffffc097          	auipc	ra,0xffffc
    800061a0:	924080e7          	jalr	-1756(ra) # 80001ac0 <getc>
        if(cc < 1)
    800061a4:	02050463          	beqz	a0,800061cc <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800061a8:	009984b3          	add	s1,s3,s1
    800061ac:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800061b0:	00a00793          	li	a5,10
    800061b4:	00f50a63          	beq	a0,a5,800061c8 <_Z9getStringPci+0x8c>
    800061b8:	00d00793          	li	a5,13
    800061bc:	fcf51ae3          	bne	a0,a5,80006190 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800061c0:	00090493          	mv	s1,s2
    800061c4:	0080006f          	j	800061cc <_Z9getStringPci+0x90>
    800061c8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800061cc:	009984b3          	add	s1,s3,s1
    800061d0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800061d4:	00000613          	li	a2,0
    800061d8:	00100593          	li	a1,1
    800061dc:	00007517          	auipc	a0,0x7
    800061e0:	b4450513          	addi	a0,a0,-1212 # 8000cd20 <lockPrint>
    800061e4:	ffffb097          	auipc	ra,0xffffb
    800061e8:	3f0080e7          	jalr	1008(ra) # 800015d4 <copy_and_swap>
    800061ec:	fe0514e3          	bnez	a0,800061d4 <_Z9getStringPci+0x98>
    return buf;
}
    800061f0:	00098513          	mv	a0,s3
    800061f4:	02813083          	ld	ra,40(sp)
    800061f8:	02013403          	ld	s0,32(sp)
    800061fc:	01813483          	ld	s1,24(sp)
    80006200:	01013903          	ld	s2,16(sp)
    80006204:	00813983          	ld	s3,8(sp)
    80006208:	00013a03          	ld	s4,0(sp)
    8000620c:	03010113          	addi	sp,sp,48
    80006210:	00008067          	ret

0000000080006214 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006214:	ff010113          	addi	sp,sp,-16
    80006218:	00813423          	sd	s0,8(sp)
    8000621c:	01010413          	addi	s0,sp,16
    80006220:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006224:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006228:	0006c603          	lbu	a2,0(a3)
    8000622c:	fd06071b          	addiw	a4,a2,-48
    80006230:	0ff77713          	andi	a4,a4,255
    80006234:	00900793          	li	a5,9
    80006238:	02e7e063          	bltu	a5,a4,80006258 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000623c:	0025179b          	slliw	a5,a0,0x2
    80006240:	00a787bb          	addw	a5,a5,a0
    80006244:	0017979b          	slliw	a5,a5,0x1
    80006248:	00168693          	addi	a3,a3,1
    8000624c:	00c787bb          	addw	a5,a5,a2
    80006250:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006254:	fd5ff06f          	j	80006228 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006258:	00813403          	ld	s0,8(sp)
    8000625c:	01010113          	addi	sp,sp,16
    80006260:	00008067          	ret

0000000080006264 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006264:	fc010113          	addi	sp,sp,-64
    80006268:	02113c23          	sd	ra,56(sp)
    8000626c:	02813823          	sd	s0,48(sp)
    80006270:	02913423          	sd	s1,40(sp)
    80006274:	03213023          	sd	s2,32(sp)
    80006278:	01313c23          	sd	s3,24(sp)
    8000627c:	04010413          	addi	s0,sp,64
    80006280:	00050493          	mv	s1,a0
    80006284:	00058913          	mv	s2,a1
    80006288:	00060993          	mv	s3,a2
    LOCK();
    8000628c:	00100613          	li	a2,1
    80006290:	00000593          	li	a1,0
    80006294:	00007517          	auipc	a0,0x7
    80006298:	a8c50513          	addi	a0,a0,-1396 # 8000cd20 <lockPrint>
    8000629c:	ffffb097          	auipc	ra,0xffffb
    800062a0:	338080e7          	jalr	824(ra) # 800015d4 <copy_and_swap>
    800062a4:	00050863          	beqz	a0,800062b4 <_Z8printIntiii+0x50>
    800062a8:	ffffb097          	auipc	ra,0xffffb
    800062ac:	534080e7          	jalr	1332(ra) # 800017dc <thread_dispatch>
    800062b0:	fddff06f          	j	8000628c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800062b4:	00098463          	beqz	s3,800062bc <_Z8printIntiii+0x58>
    800062b8:	0804c463          	bltz	s1,80006340 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800062bc:	0004851b          	sext.w	a0,s1
    neg = 0;
    800062c0:	00000593          	li	a1,0
    }

    i = 0;
    800062c4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800062c8:	0009079b          	sext.w	a5,s2
    800062cc:	0325773b          	remuw	a4,a0,s2
    800062d0:	00048613          	mv	a2,s1
    800062d4:	0014849b          	addiw	s1,s1,1
    800062d8:	02071693          	slli	a3,a4,0x20
    800062dc:	0206d693          	srli	a3,a3,0x20
    800062e0:	00007717          	auipc	a4,0x7
    800062e4:	90870713          	addi	a4,a4,-1784 # 8000cbe8 <digits>
    800062e8:	00d70733          	add	a4,a4,a3
    800062ec:	00074683          	lbu	a3,0(a4)
    800062f0:	fd040713          	addi	a4,s0,-48
    800062f4:	00c70733          	add	a4,a4,a2
    800062f8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800062fc:	0005071b          	sext.w	a4,a0
    80006300:	0325553b          	divuw	a0,a0,s2
    80006304:	fcf772e3          	bgeu	a4,a5,800062c8 <_Z8printIntiii+0x64>
    if(neg)
    80006308:	00058c63          	beqz	a1,80006320 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000630c:	fd040793          	addi	a5,s0,-48
    80006310:	009784b3          	add	s1,a5,s1
    80006314:	02d00793          	li	a5,45
    80006318:	fef48823          	sb	a5,-16(s1)
    8000631c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006320:	fff4849b          	addiw	s1,s1,-1
    80006324:	0204c463          	bltz	s1,8000634c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006328:	fd040793          	addi	a5,s0,-48
    8000632c:	009787b3          	add	a5,a5,s1
    80006330:	ff07c503          	lbu	a0,-16(a5)
    80006334:	ffffb097          	auipc	ra,0xffffb
    80006338:	7d4080e7          	jalr	2004(ra) # 80001b08 <putc>
    8000633c:	fe5ff06f          	j	80006320 <_Z8printIntiii+0xbc>
        x = -xx;
    80006340:	4090053b          	negw	a0,s1
        neg = 1;
    80006344:	00100593          	li	a1,1
        x = -xx;
    80006348:	f7dff06f          	j	800062c4 <_Z8printIntiii+0x60>

    UNLOCK();
    8000634c:	00000613          	li	a2,0
    80006350:	00100593          	li	a1,1
    80006354:	00007517          	auipc	a0,0x7
    80006358:	9cc50513          	addi	a0,a0,-1588 # 8000cd20 <lockPrint>
    8000635c:	ffffb097          	auipc	ra,0xffffb
    80006360:	278080e7          	jalr	632(ra) # 800015d4 <copy_and_swap>
    80006364:	fe0514e3          	bnez	a0,8000634c <_Z8printIntiii+0xe8>
    80006368:	03813083          	ld	ra,56(sp)
    8000636c:	03013403          	ld	s0,48(sp)
    80006370:	02813483          	ld	s1,40(sp)
    80006374:	02013903          	ld	s2,32(sp)
    80006378:	01813983          	ld	s3,24(sp)
    8000637c:	04010113          	addi	sp,sp,64
    80006380:	00008067          	ret

0000000080006384 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006384:	fd010113          	addi	sp,sp,-48
    80006388:	02113423          	sd	ra,40(sp)
    8000638c:	02813023          	sd	s0,32(sp)
    80006390:	00913c23          	sd	s1,24(sp)
    80006394:	01213823          	sd	s2,16(sp)
    80006398:	01313423          	sd	s3,8(sp)
    8000639c:	03010413          	addi	s0,sp,48
    800063a0:	00050493          	mv	s1,a0
    800063a4:	00058913          	mv	s2,a1
    800063a8:	0015879b          	addiw	a5,a1,1
    800063ac:	0007851b          	sext.w	a0,a5
    800063b0:	00f4a023          	sw	a5,0(s1)
    800063b4:	0004a823          	sw	zero,16(s1)
    800063b8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800063bc:	00251513          	slli	a0,a0,0x2
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	288080e7          	jalr	648(ra) # 80001648 <mem_alloc>
    800063c8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800063cc:	01000513          	li	a0,16
    800063d0:	ffffc097          	auipc	ra,0xffffc
    800063d4:	28c080e7          	jalr	652(ra) # 8000265c <_Znwm>
    800063d8:	00050993          	mv	s3,a0
    800063dc:	00000593          	li	a1,0
    800063e0:	ffffc097          	auipc	ra,0xffffc
    800063e4:	4f4080e7          	jalr	1268(ra) # 800028d4 <_ZN9SemaphoreC1Ej>
    800063e8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800063ec:	01000513          	li	a0,16
    800063f0:	ffffc097          	auipc	ra,0xffffc
    800063f4:	26c080e7          	jalr	620(ra) # 8000265c <_Znwm>
    800063f8:	00050993          	mv	s3,a0
    800063fc:	00090593          	mv	a1,s2
    80006400:	ffffc097          	auipc	ra,0xffffc
    80006404:	4d4080e7          	jalr	1236(ra) # 800028d4 <_ZN9SemaphoreC1Ej>
    80006408:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000640c:	01000513          	li	a0,16
    80006410:	ffffc097          	auipc	ra,0xffffc
    80006414:	24c080e7          	jalr	588(ra) # 8000265c <_Znwm>
    80006418:	00050913          	mv	s2,a0
    8000641c:	00100593          	li	a1,1
    80006420:	ffffc097          	auipc	ra,0xffffc
    80006424:	4b4080e7          	jalr	1204(ra) # 800028d4 <_ZN9SemaphoreC1Ej>
    80006428:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000642c:	01000513          	li	a0,16
    80006430:	ffffc097          	auipc	ra,0xffffc
    80006434:	22c080e7          	jalr	556(ra) # 8000265c <_Znwm>
    80006438:	00050913          	mv	s2,a0
    8000643c:	00100593          	li	a1,1
    80006440:	ffffc097          	auipc	ra,0xffffc
    80006444:	494080e7          	jalr	1172(ra) # 800028d4 <_ZN9SemaphoreC1Ej>
    80006448:	0324b823          	sd	s2,48(s1)
}
    8000644c:	02813083          	ld	ra,40(sp)
    80006450:	02013403          	ld	s0,32(sp)
    80006454:	01813483          	ld	s1,24(sp)
    80006458:	01013903          	ld	s2,16(sp)
    8000645c:	00813983          	ld	s3,8(sp)
    80006460:	03010113          	addi	sp,sp,48
    80006464:	00008067          	ret
    80006468:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000646c:	00098513          	mv	a0,s3
    80006470:	ffffc097          	auipc	ra,0xffffc
    80006474:	23c080e7          	jalr	572(ra) # 800026ac <_ZdlPv>
    80006478:	00048513          	mv	a0,s1
    8000647c:	00008097          	auipc	ra,0x8
    80006480:	97c080e7          	jalr	-1668(ra) # 8000ddf8 <_Unwind_Resume>
    80006484:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006488:	00098513          	mv	a0,s3
    8000648c:	ffffc097          	auipc	ra,0xffffc
    80006490:	220080e7          	jalr	544(ra) # 800026ac <_ZdlPv>
    80006494:	00048513          	mv	a0,s1
    80006498:	00008097          	auipc	ra,0x8
    8000649c:	960080e7          	jalr	-1696(ra) # 8000ddf8 <_Unwind_Resume>
    800064a0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800064a4:	00090513          	mv	a0,s2
    800064a8:	ffffc097          	auipc	ra,0xffffc
    800064ac:	204080e7          	jalr	516(ra) # 800026ac <_ZdlPv>
    800064b0:	00048513          	mv	a0,s1
    800064b4:	00008097          	auipc	ra,0x8
    800064b8:	944080e7          	jalr	-1724(ra) # 8000ddf8 <_Unwind_Resume>
    800064bc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800064c0:	00090513          	mv	a0,s2
    800064c4:	ffffc097          	auipc	ra,0xffffc
    800064c8:	1e8080e7          	jalr	488(ra) # 800026ac <_ZdlPv>
    800064cc:	00048513          	mv	a0,s1
    800064d0:	00008097          	auipc	ra,0x8
    800064d4:	928080e7          	jalr	-1752(ra) # 8000ddf8 <_Unwind_Resume>

00000000800064d8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800064d8:	fe010113          	addi	sp,sp,-32
    800064dc:	00113c23          	sd	ra,24(sp)
    800064e0:	00813823          	sd	s0,16(sp)
    800064e4:	00913423          	sd	s1,8(sp)
    800064e8:	01213023          	sd	s2,0(sp)
    800064ec:	02010413          	addi	s0,sp,32
    800064f0:	00050493          	mv	s1,a0
    800064f4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800064f8:	01853503          	ld	a0,24(a0)
    800064fc:	ffffc097          	auipc	ra,0xffffc
    80006500:	410080e7          	jalr	1040(ra) # 8000290c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006504:	0304b503          	ld	a0,48(s1)
    80006508:	ffffc097          	auipc	ra,0xffffc
    8000650c:	404080e7          	jalr	1028(ra) # 8000290c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006510:	0084b783          	ld	a5,8(s1)
    80006514:	0144a703          	lw	a4,20(s1)
    80006518:	00271713          	slli	a4,a4,0x2
    8000651c:	00e787b3          	add	a5,a5,a4
    80006520:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006524:	0144a783          	lw	a5,20(s1)
    80006528:	0017879b          	addiw	a5,a5,1
    8000652c:	0004a703          	lw	a4,0(s1)
    80006530:	02e7e7bb          	remw	a5,a5,a4
    80006534:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006538:	0304b503          	ld	a0,48(s1)
    8000653c:	ffffc097          	auipc	ra,0xffffc
    80006540:	3fc080e7          	jalr	1020(ra) # 80002938 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006544:	0204b503          	ld	a0,32(s1)
    80006548:	ffffc097          	auipc	ra,0xffffc
    8000654c:	3f0080e7          	jalr	1008(ra) # 80002938 <_ZN9Semaphore6signalEv>

}
    80006550:	01813083          	ld	ra,24(sp)
    80006554:	01013403          	ld	s0,16(sp)
    80006558:	00813483          	ld	s1,8(sp)
    8000655c:	00013903          	ld	s2,0(sp)
    80006560:	02010113          	addi	sp,sp,32
    80006564:	00008067          	ret

0000000080006568 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006568:	fe010113          	addi	sp,sp,-32
    8000656c:	00113c23          	sd	ra,24(sp)
    80006570:	00813823          	sd	s0,16(sp)
    80006574:	00913423          	sd	s1,8(sp)
    80006578:	01213023          	sd	s2,0(sp)
    8000657c:	02010413          	addi	s0,sp,32
    80006580:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006584:	02053503          	ld	a0,32(a0)
    80006588:	ffffc097          	auipc	ra,0xffffc
    8000658c:	384080e7          	jalr	900(ra) # 8000290c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006590:	0284b503          	ld	a0,40(s1)
    80006594:	ffffc097          	auipc	ra,0xffffc
    80006598:	378080e7          	jalr	888(ra) # 8000290c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000659c:	0084b703          	ld	a4,8(s1)
    800065a0:	0104a783          	lw	a5,16(s1)
    800065a4:	00279693          	slli	a3,a5,0x2
    800065a8:	00d70733          	add	a4,a4,a3
    800065ac:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800065b0:	0017879b          	addiw	a5,a5,1
    800065b4:	0004a703          	lw	a4,0(s1)
    800065b8:	02e7e7bb          	remw	a5,a5,a4
    800065bc:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800065c0:	0284b503          	ld	a0,40(s1)
    800065c4:	ffffc097          	auipc	ra,0xffffc
    800065c8:	374080e7          	jalr	884(ra) # 80002938 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800065cc:	0184b503          	ld	a0,24(s1)
    800065d0:	ffffc097          	auipc	ra,0xffffc
    800065d4:	368080e7          	jalr	872(ra) # 80002938 <_ZN9Semaphore6signalEv>

    return ret;
}
    800065d8:	00090513          	mv	a0,s2
    800065dc:	01813083          	ld	ra,24(sp)
    800065e0:	01013403          	ld	s0,16(sp)
    800065e4:	00813483          	ld	s1,8(sp)
    800065e8:	00013903          	ld	s2,0(sp)
    800065ec:	02010113          	addi	sp,sp,32
    800065f0:	00008067          	ret

00000000800065f4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800065f4:	fe010113          	addi	sp,sp,-32
    800065f8:	00113c23          	sd	ra,24(sp)
    800065fc:	00813823          	sd	s0,16(sp)
    80006600:	00913423          	sd	s1,8(sp)
    80006604:	01213023          	sd	s2,0(sp)
    80006608:	02010413          	addi	s0,sp,32
    8000660c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006610:	02853503          	ld	a0,40(a0)
    80006614:	ffffc097          	auipc	ra,0xffffc
    80006618:	2f8080e7          	jalr	760(ra) # 8000290c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000661c:	0304b503          	ld	a0,48(s1)
    80006620:	ffffc097          	auipc	ra,0xffffc
    80006624:	2ec080e7          	jalr	748(ra) # 8000290c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006628:	0144a783          	lw	a5,20(s1)
    8000662c:	0104a903          	lw	s2,16(s1)
    80006630:	0327ce63          	blt	a5,s2,8000666c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006634:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006638:	0304b503          	ld	a0,48(s1)
    8000663c:	ffffc097          	auipc	ra,0xffffc
    80006640:	2fc080e7          	jalr	764(ra) # 80002938 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006644:	0284b503          	ld	a0,40(s1)
    80006648:	ffffc097          	auipc	ra,0xffffc
    8000664c:	2f0080e7          	jalr	752(ra) # 80002938 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006650:	00090513          	mv	a0,s2
    80006654:	01813083          	ld	ra,24(sp)
    80006658:	01013403          	ld	s0,16(sp)
    8000665c:	00813483          	ld	s1,8(sp)
    80006660:	00013903          	ld	s2,0(sp)
    80006664:	02010113          	addi	sp,sp,32
    80006668:	00008067          	ret
        ret = cap - head + tail;
    8000666c:	0004a703          	lw	a4,0(s1)
    80006670:	4127093b          	subw	s2,a4,s2
    80006674:	00f9093b          	addw	s2,s2,a5
    80006678:	fc1ff06f          	j	80006638 <_ZN9BufferCPP6getCntEv+0x44>

000000008000667c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000667c:	fe010113          	addi	sp,sp,-32
    80006680:	00113c23          	sd	ra,24(sp)
    80006684:	00813823          	sd	s0,16(sp)
    80006688:	00913423          	sd	s1,8(sp)
    8000668c:	02010413          	addi	s0,sp,32
    80006690:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006694:	00a00513          	li	a0,10
    80006698:	ffffc097          	auipc	ra,0xffffc
    8000669c:	2f4080e7          	jalr	756(ra) # 8000298c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800066a0:	00004517          	auipc	a0,0x4
    800066a4:	d2850513          	addi	a0,a0,-728 # 8000a3c8 <CONSOLE_STATUS+0x3b0>
    800066a8:	00000097          	auipc	ra,0x0
    800066ac:	a0c080e7          	jalr	-1524(ra) # 800060b4 <_Z11printStringPKc>
    while (getCnt()) {
    800066b0:	00048513          	mv	a0,s1
    800066b4:	00000097          	auipc	ra,0x0
    800066b8:	f40080e7          	jalr	-192(ra) # 800065f4 <_ZN9BufferCPP6getCntEv>
    800066bc:	02050c63          	beqz	a0,800066f4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800066c0:	0084b783          	ld	a5,8(s1)
    800066c4:	0104a703          	lw	a4,16(s1)
    800066c8:	00271713          	slli	a4,a4,0x2
    800066cc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800066d0:	0007c503          	lbu	a0,0(a5)
    800066d4:	ffffc097          	auipc	ra,0xffffc
    800066d8:	2b8080e7          	jalr	696(ra) # 8000298c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800066dc:	0104a783          	lw	a5,16(s1)
    800066e0:	0017879b          	addiw	a5,a5,1
    800066e4:	0004a703          	lw	a4,0(s1)
    800066e8:	02e7e7bb          	remw	a5,a5,a4
    800066ec:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800066f0:	fc1ff06f          	j	800066b0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800066f4:	02100513          	li	a0,33
    800066f8:	ffffc097          	auipc	ra,0xffffc
    800066fc:	294080e7          	jalr	660(ra) # 8000298c <_ZN7Console4putcEc>
    Console::putc('\n');
    80006700:	00a00513          	li	a0,10
    80006704:	ffffc097          	auipc	ra,0xffffc
    80006708:	288080e7          	jalr	648(ra) # 8000298c <_ZN7Console4putcEc>
    mem_free(buffer);
    8000670c:	0084b503          	ld	a0,8(s1)
    80006710:	ffffb097          	auipc	ra,0xffffb
    80006714:	f94080e7          	jalr	-108(ra) # 800016a4 <mem_free>
    delete itemAvailable;
    80006718:	0204b503          	ld	a0,32(s1)
    8000671c:	00050863          	beqz	a0,8000672c <_ZN9BufferCPPD1Ev+0xb0>
    80006720:	00053783          	ld	a5,0(a0)
    80006724:	0087b783          	ld	a5,8(a5)
    80006728:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000672c:	0184b503          	ld	a0,24(s1)
    80006730:	00050863          	beqz	a0,80006740 <_ZN9BufferCPPD1Ev+0xc4>
    80006734:	00053783          	ld	a5,0(a0)
    80006738:	0087b783          	ld	a5,8(a5)
    8000673c:	000780e7          	jalr	a5
    delete mutexTail;
    80006740:	0304b503          	ld	a0,48(s1)
    80006744:	00050863          	beqz	a0,80006754 <_ZN9BufferCPPD1Ev+0xd8>
    80006748:	00053783          	ld	a5,0(a0)
    8000674c:	0087b783          	ld	a5,8(a5)
    80006750:	000780e7          	jalr	a5
    delete mutexHead;
    80006754:	0284b503          	ld	a0,40(s1)
    80006758:	00050863          	beqz	a0,80006768 <_ZN9BufferCPPD1Ev+0xec>
    8000675c:	00053783          	ld	a5,0(a0)
    80006760:	0087b783          	ld	a5,8(a5)
    80006764:	000780e7          	jalr	a5
}
    80006768:	01813083          	ld	ra,24(sp)
    8000676c:	01013403          	ld	s0,16(sp)
    80006770:	00813483          	ld	s1,8(sp)
    80006774:	02010113          	addi	sp,sp,32
    80006778:	00008067          	ret

000000008000677c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000677c:	fe010113          	addi	sp,sp,-32
    80006780:	00113c23          	sd	ra,24(sp)
    80006784:	00813823          	sd	s0,16(sp)
    80006788:	00913423          	sd	s1,8(sp)
    8000678c:	01213023          	sd	s2,0(sp)
    80006790:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006794:	00004517          	auipc	a0,0x4
    80006798:	c4c50513          	addi	a0,a0,-948 # 8000a3e0 <CONSOLE_STATUS+0x3c8>
    8000679c:	00000097          	auipc	ra,0x0
    800067a0:	918080e7          	jalr	-1768(ra) # 800060b4 <_Z11printStringPKc>
    int test = getc() - '0';
    800067a4:	ffffb097          	auipc	ra,0xffffb
    800067a8:	31c080e7          	jalr	796(ra) # 80001ac0 <getc>
    800067ac:	00050913          	mv	s2,a0
    800067b0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800067b4:	ffffb097          	auipc	ra,0xffffb
    800067b8:	30c080e7          	jalr	780(ra) # 80001ac0 <getc>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800067bc:	fcb9091b          	addiw	s2,s2,-53
    800067c0:	00100793          	li	a5,1
    800067c4:	0327f463          	bgeu	a5,s2,800067ec <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800067c8:	00700793          	li	a5,7
    800067cc:	0e97e263          	bltu	a5,s1,800068b0 <_Z8userMainv+0x134>
    800067d0:	00249493          	slli	s1,s1,0x2
    800067d4:	00004717          	auipc	a4,0x4
    800067d8:	e2470713          	addi	a4,a4,-476 # 8000a5f8 <CONSOLE_STATUS+0x5e0>
    800067dc:	00e484b3          	add	s1,s1,a4
    800067e0:	0004a783          	lw	a5,0(s1)
    800067e4:	00e787b3          	add	a5,a5,a4
    800067e8:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800067ec:	00004517          	auipc	a0,0x4
    800067f0:	c1450513          	addi	a0,a0,-1004 # 8000a400 <CONSOLE_STATUS+0x3e8>
    800067f4:	00000097          	auipc	ra,0x0
    800067f8:	8c0080e7          	jalr	-1856(ra) # 800060b4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800067fc:	01813083          	ld	ra,24(sp)
    80006800:	01013403          	ld	s0,16(sp)
    80006804:	00813483          	ld	s1,8(sp)
    80006808:	00013903          	ld	s2,0(sp)
    8000680c:	02010113          	addi	sp,sp,32
    80006810:	00008067          	ret
            Threads_C_API_test();
    80006814:	fffff097          	auipc	ra,0xfffff
    80006818:	f18080e7          	jalr	-232(ra) # 8000572c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000681c:	00004517          	auipc	a0,0x4
    80006820:	c1450513          	addi	a0,a0,-1004 # 8000a430 <CONSOLE_STATUS+0x418>
    80006824:	00000097          	auipc	ra,0x0
    80006828:	890080e7          	jalr	-1904(ra) # 800060b4 <_Z11printStringPKc>
            break;
    8000682c:	fd1ff06f          	j	800067fc <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80006830:	ffffe097          	auipc	ra,0xffffe
    80006834:	560080e7          	jalr	1376(ra) # 80004d90 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006838:	00004517          	auipc	a0,0x4
    8000683c:	c3850513          	addi	a0,a0,-968 # 8000a470 <CONSOLE_STATUS+0x458>
    80006840:	00000097          	auipc	ra,0x0
    80006844:	874080e7          	jalr	-1932(ra) # 800060b4 <_Z11printStringPKc>
            break;
    80006848:	fb5ff06f          	j	800067fc <_Z8userMainv+0x80>
            producerConsumer_C_API();
    8000684c:	ffffe097          	auipc	ra,0xffffe
    80006850:	d98080e7          	jalr	-616(ra) # 800045e4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006854:	00004517          	auipc	a0,0x4
    80006858:	c5c50513          	addi	a0,a0,-932 # 8000a4b0 <CONSOLE_STATUS+0x498>
    8000685c:	00000097          	auipc	ra,0x0
    80006860:	858080e7          	jalr	-1960(ra) # 800060b4 <_Z11printStringPKc>
            break;
    80006864:	f99ff06f          	j	800067fc <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80006868:	fffff097          	auipc	ra,0xfffff
    8000686c:	208080e7          	jalr	520(ra) # 80005a70 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006870:	00004517          	auipc	a0,0x4
    80006874:	c9050513          	addi	a0,a0,-880 # 8000a500 <CONSOLE_STATUS+0x4e8>
    80006878:	00000097          	auipc	ra,0x0
    8000687c:	83c080e7          	jalr	-1988(ra) # 800060b4 <_Z11printStringPKc>
            break;
    80006880:	f7dff06f          	j	800067fc <_Z8userMainv+0x80>
            System_Mode_test();
    80006884:	00000097          	auipc	ra,0x0
    80006888:	658080e7          	jalr	1624(ra) # 80006edc <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000688c:	00004517          	auipc	a0,0x4
    80006890:	ccc50513          	addi	a0,a0,-820 # 8000a558 <CONSOLE_STATUS+0x540>
    80006894:	00000097          	auipc	ra,0x0
    80006898:	820080e7          	jalr	-2016(ra) # 800060b4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000689c:	00004517          	auipc	a0,0x4
    800068a0:	cdc50513          	addi	a0,a0,-804 # 8000a578 <CONSOLE_STATUS+0x560>
    800068a4:	00000097          	auipc	ra,0x0
    800068a8:	810080e7          	jalr	-2032(ra) # 800060b4 <_Z11printStringPKc>
            break;
    800068ac:	f51ff06f          	j	800067fc <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800068b0:	00004517          	auipc	a0,0x4
    800068b4:	d2050513          	addi	a0,a0,-736 # 8000a5d0 <CONSOLE_STATUS+0x5b8>
    800068b8:	fffff097          	auipc	ra,0xfffff
    800068bc:	7fc080e7          	jalr	2044(ra) # 800060b4 <_Z11printStringPKc>
    800068c0:	f3dff06f          	j	800067fc <_Z8userMainv+0x80>

00000000800068c4 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800068c4:	fe010113          	addi	sp,sp,-32
    800068c8:	00113c23          	sd	ra,24(sp)
    800068cc:	00813823          	sd	s0,16(sp)
    800068d0:	00913423          	sd	s1,8(sp)
    800068d4:	01213023          	sd	s2,0(sp)
    800068d8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800068dc:	00053903          	ld	s2,0(a0)
    int i = 6;
    800068e0:	00600493          	li	s1,6
    while (--i > 0) {
    800068e4:	fff4849b          	addiw	s1,s1,-1
    800068e8:	04905463          	blez	s1,80006930 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800068ec:	00004517          	auipc	a0,0x4
    800068f0:	d2c50513          	addi	a0,a0,-724 # 8000a618 <CONSOLE_STATUS+0x600>
    800068f4:	fffff097          	auipc	ra,0xfffff
    800068f8:	7c0080e7          	jalr	1984(ra) # 800060b4 <_Z11printStringPKc>
        printInt(sleep_time);
    800068fc:	00000613          	li	a2,0
    80006900:	00a00593          	li	a1,10
    80006904:	0009051b          	sext.w	a0,s2
    80006908:	00000097          	auipc	ra,0x0
    8000690c:	95c080e7          	jalr	-1700(ra) # 80006264 <_Z8printIntiii>
        printString(" !\n");
    80006910:	00004517          	auipc	a0,0x4
    80006914:	d1050513          	addi	a0,a0,-752 # 8000a620 <CONSOLE_STATUS+0x608>
    80006918:	fffff097          	auipc	ra,0xfffff
    8000691c:	79c080e7          	jalr	1948(ra) # 800060b4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006920:	00090513          	mv	a0,s2
    80006924:	ffffb097          	auipc	ra,0xffffb
    80006928:	148080e7          	jalr	328(ra) # 80001a6c <time_sleep>
    while (--i > 0) {
    8000692c:	fb9ff06f          	j	800068e4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006930:	00a00793          	li	a5,10
    80006934:	02f95933          	divu	s2,s2,a5
    80006938:	fff90913          	addi	s2,s2,-1
    8000693c:	00006797          	auipc	a5,0x6
    80006940:	3ec78793          	addi	a5,a5,1004 # 8000cd28 <_ZL8finished>
    80006944:	01278933          	add	s2,a5,s2
    80006948:	00100793          	li	a5,1
    8000694c:	00f90023          	sb	a5,0(s2)
}
    80006950:	01813083          	ld	ra,24(sp)
    80006954:	01013403          	ld	s0,16(sp)
    80006958:	00813483          	ld	s1,8(sp)
    8000695c:	00013903          	ld	s2,0(sp)
    80006960:	02010113          	addi	sp,sp,32
    80006964:	00008067          	ret

0000000080006968 <_Z12testSleepingv>:

void testSleeping() {
    80006968:	fc010113          	addi	sp,sp,-64
    8000696c:	02113c23          	sd	ra,56(sp)
    80006970:	02813823          	sd	s0,48(sp)
    80006974:	02913423          	sd	s1,40(sp)
    80006978:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000697c:	00a00793          	li	a5,10
    80006980:	fcf43823          	sd	a5,-48(s0)
    80006984:	01400793          	li	a5,20
    80006988:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000698c:	00000493          	li	s1,0
    80006990:	02c0006f          	j	800069bc <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006994:	00349793          	slli	a5,s1,0x3
    80006998:	fd040613          	addi	a2,s0,-48
    8000699c:	00f60633          	add	a2,a2,a5
    800069a0:	00000597          	auipc	a1,0x0
    800069a4:	f2458593          	addi	a1,a1,-220 # 800068c4 <_ZL9sleepyRunPv>
    800069a8:	fc040513          	addi	a0,s0,-64
    800069ac:	00f50533          	add	a0,a0,a5
    800069b0:	ffffb097          	auipc	ra,0xffffb
    800069b4:	d48080e7          	jalr	-696(ra) # 800016f8 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800069b8:	0014849b          	addiw	s1,s1,1
    800069bc:	00100793          	li	a5,1
    800069c0:	fc97dae3          	bge	a5,s1,80006994 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800069c4:	00006797          	auipc	a5,0x6
    800069c8:	3647c783          	lbu	a5,868(a5) # 8000cd28 <_ZL8finished>
    800069cc:	fe078ce3          	beqz	a5,800069c4 <_Z12testSleepingv+0x5c>
    800069d0:	00006797          	auipc	a5,0x6
    800069d4:	3597c783          	lbu	a5,857(a5) # 8000cd29 <_ZL8finished+0x1>
    800069d8:	fe0786e3          	beqz	a5,800069c4 <_Z12testSleepingv+0x5c>
}
    800069dc:	03813083          	ld	ra,56(sp)
    800069e0:	03013403          	ld	s0,48(sp)
    800069e4:	02813483          	ld	s1,40(sp)
    800069e8:	04010113          	addi	sp,sp,64
    800069ec:	00008067          	ret

00000000800069f0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800069f0:	fe010113          	addi	sp,sp,-32
    800069f4:	00113c23          	sd	ra,24(sp)
    800069f8:	00813823          	sd	s0,16(sp)
    800069fc:	00913423          	sd	s1,8(sp)
    80006a00:	01213023          	sd	s2,0(sp)
    80006a04:	02010413          	addi	s0,sp,32
    80006a08:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006a0c:	00100793          	li	a5,1
    80006a10:	02a7f863          	bgeu	a5,a0,80006a40 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006a14:	00a00793          	li	a5,10
    80006a18:	02f577b3          	remu	a5,a0,a5
    80006a1c:	02078e63          	beqz	a5,80006a58 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006a20:	fff48513          	addi	a0,s1,-1
    80006a24:	00000097          	auipc	ra,0x0
    80006a28:	fcc080e7          	jalr	-52(ra) # 800069f0 <_ZL9fibonaccim>
    80006a2c:	00050913          	mv	s2,a0
    80006a30:	ffe48513          	addi	a0,s1,-2
    80006a34:	00000097          	auipc	ra,0x0
    80006a38:	fbc080e7          	jalr	-68(ra) # 800069f0 <_ZL9fibonaccim>
    80006a3c:	00a90533          	add	a0,s2,a0
}
    80006a40:	01813083          	ld	ra,24(sp)
    80006a44:	01013403          	ld	s0,16(sp)
    80006a48:	00813483          	ld	s1,8(sp)
    80006a4c:	00013903          	ld	s2,0(sp)
    80006a50:	02010113          	addi	sp,sp,32
    80006a54:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006a58:	ffffb097          	auipc	ra,0xffffb
    80006a5c:	d84080e7          	jalr	-636(ra) # 800017dc <thread_dispatch>
    80006a60:	fc1ff06f          	j	80006a20 <_ZL9fibonaccim+0x30>

0000000080006a64 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006a64:	fe010113          	addi	sp,sp,-32
    80006a68:	00113c23          	sd	ra,24(sp)
    80006a6c:	00813823          	sd	s0,16(sp)
    80006a70:	00913423          	sd	s1,8(sp)
    80006a74:	01213023          	sd	s2,0(sp)
    80006a78:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006a7c:	00a00493          	li	s1,10
    80006a80:	0400006f          	j	80006ac0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006a84:	00004517          	auipc	a0,0x4
    80006a88:	8ac50513          	addi	a0,a0,-1876 # 8000a330 <CONSOLE_STATUS+0x318>
    80006a8c:	fffff097          	auipc	ra,0xfffff
    80006a90:	628080e7          	jalr	1576(ra) # 800060b4 <_Z11printStringPKc>
    80006a94:	00000613          	li	a2,0
    80006a98:	00a00593          	li	a1,10
    80006a9c:	00048513          	mv	a0,s1
    80006aa0:	fffff097          	auipc	ra,0xfffff
    80006aa4:	7c4080e7          	jalr	1988(ra) # 80006264 <_Z8printIntiii>
    80006aa8:	00004517          	auipc	a0,0x4
    80006aac:	aa850513          	addi	a0,a0,-1368 # 8000a550 <CONSOLE_STATUS+0x538>
    80006ab0:	fffff097          	auipc	ra,0xfffff
    80006ab4:	604080e7          	jalr	1540(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006ab8:	0014849b          	addiw	s1,s1,1
    80006abc:	0ff4f493          	andi	s1,s1,255
    80006ac0:	00c00793          	li	a5,12
    80006ac4:	fc97f0e3          	bgeu	a5,s1,80006a84 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006ac8:	00004517          	auipc	a0,0x4
    80006acc:	87050513          	addi	a0,a0,-1936 # 8000a338 <CONSOLE_STATUS+0x320>
    80006ad0:	fffff097          	auipc	ra,0xfffff
    80006ad4:	5e4080e7          	jalr	1508(ra) # 800060b4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006ad8:	00500313          	li	t1,5
    thread_dispatch();
    80006adc:	ffffb097          	auipc	ra,0xffffb
    80006ae0:	d00080e7          	jalr	-768(ra) # 800017dc <thread_dispatch>

    uint64 result = fibonacci(16);
    80006ae4:	01000513          	li	a0,16
    80006ae8:	00000097          	auipc	ra,0x0
    80006aec:	f08080e7          	jalr	-248(ra) # 800069f0 <_ZL9fibonaccim>
    80006af0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006af4:	00004517          	auipc	a0,0x4
    80006af8:	85450513          	addi	a0,a0,-1964 # 8000a348 <CONSOLE_STATUS+0x330>
    80006afc:	fffff097          	auipc	ra,0xfffff
    80006b00:	5b8080e7          	jalr	1464(ra) # 800060b4 <_Z11printStringPKc>
    80006b04:	00000613          	li	a2,0
    80006b08:	00a00593          	li	a1,10
    80006b0c:	0009051b          	sext.w	a0,s2
    80006b10:	fffff097          	auipc	ra,0xfffff
    80006b14:	754080e7          	jalr	1876(ra) # 80006264 <_Z8printIntiii>
    80006b18:	00004517          	auipc	a0,0x4
    80006b1c:	a3850513          	addi	a0,a0,-1480 # 8000a550 <CONSOLE_STATUS+0x538>
    80006b20:	fffff097          	auipc	ra,0xfffff
    80006b24:	594080e7          	jalr	1428(ra) # 800060b4 <_Z11printStringPKc>
    80006b28:	0400006f          	j	80006b68 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006b2c:	00004517          	auipc	a0,0x4
    80006b30:	80450513          	addi	a0,a0,-2044 # 8000a330 <CONSOLE_STATUS+0x318>
    80006b34:	fffff097          	auipc	ra,0xfffff
    80006b38:	580080e7          	jalr	1408(ra) # 800060b4 <_Z11printStringPKc>
    80006b3c:	00000613          	li	a2,0
    80006b40:	00a00593          	li	a1,10
    80006b44:	00048513          	mv	a0,s1
    80006b48:	fffff097          	auipc	ra,0xfffff
    80006b4c:	71c080e7          	jalr	1820(ra) # 80006264 <_Z8printIntiii>
    80006b50:	00004517          	auipc	a0,0x4
    80006b54:	a0050513          	addi	a0,a0,-1536 # 8000a550 <CONSOLE_STATUS+0x538>
    80006b58:	fffff097          	auipc	ra,0xfffff
    80006b5c:	55c080e7          	jalr	1372(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006b60:	0014849b          	addiw	s1,s1,1
    80006b64:	0ff4f493          	andi	s1,s1,255
    80006b68:	00f00793          	li	a5,15
    80006b6c:	fc97f0e3          	bgeu	a5,s1,80006b2c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006b70:	00003517          	auipc	a0,0x3
    80006b74:	7e850513          	addi	a0,a0,2024 # 8000a358 <CONSOLE_STATUS+0x340>
    80006b78:	fffff097          	auipc	ra,0xfffff
    80006b7c:	53c080e7          	jalr	1340(ra) # 800060b4 <_Z11printStringPKc>
    finishedD = true;
    80006b80:	00100793          	li	a5,1
    80006b84:	00006717          	auipc	a4,0x6
    80006b88:	1af70323          	sb	a5,422(a4) # 8000cd2a <_ZL9finishedD>
    thread_dispatch();
    80006b8c:	ffffb097          	auipc	ra,0xffffb
    80006b90:	c50080e7          	jalr	-944(ra) # 800017dc <thread_dispatch>
}
    80006b94:	01813083          	ld	ra,24(sp)
    80006b98:	01013403          	ld	s0,16(sp)
    80006b9c:	00813483          	ld	s1,8(sp)
    80006ba0:	00013903          	ld	s2,0(sp)
    80006ba4:	02010113          	addi	sp,sp,32
    80006ba8:	00008067          	ret

0000000080006bac <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006bac:	fe010113          	addi	sp,sp,-32
    80006bb0:	00113c23          	sd	ra,24(sp)
    80006bb4:	00813823          	sd	s0,16(sp)
    80006bb8:	00913423          	sd	s1,8(sp)
    80006bbc:	01213023          	sd	s2,0(sp)
    80006bc0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006bc4:	00000493          	li	s1,0
    80006bc8:	0400006f          	j	80006c08 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006bcc:	00003517          	auipc	a0,0x3
    80006bd0:	72450513          	addi	a0,a0,1828 # 8000a2f0 <CONSOLE_STATUS+0x2d8>
    80006bd4:	fffff097          	auipc	ra,0xfffff
    80006bd8:	4e0080e7          	jalr	1248(ra) # 800060b4 <_Z11printStringPKc>
    80006bdc:	00000613          	li	a2,0
    80006be0:	00a00593          	li	a1,10
    80006be4:	00048513          	mv	a0,s1
    80006be8:	fffff097          	auipc	ra,0xfffff
    80006bec:	67c080e7          	jalr	1660(ra) # 80006264 <_Z8printIntiii>
    80006bf0:	00004517          	auipc	a0,0x4
    80006bf4:	96050513          	addi	a0,a0,-1696 # 8000a550 <CONSOLE_STATUS+0x538>
    80006bf8:	fffff097          	auipc	ra,0xfffff
    80006bfc:	4bc080e7          	jalr	1212(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006c00:	0014849b          	addiw	s1,s1,1
    80006c04:	0ff4f493          	andi	s1,s1,255
    80006c08:	00200793          	li	a5,2
    80006c0c:	fc97f0e3          	bgeu	a5,s1,80006bcc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006c10:	00003517          	auipc	a0,0x3
    80006c14:	6e850513          	addi	a0,a0,1768 # 8000a2f8 <CONSOLE_STATUS+0x2e0>
    80006c18:	fffff097          	auipc	ra,0xfffff
    80006c1c:	49c080e7          	jalr	1180(ra) # 800060b4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006c20:	00700313          	li	t1,7
    thread_dispatch();
    80006c24:	ffffb097          	auipc	ra,0xffffb
    80006c28:	bb8080e7          	jalr	-1096(ra) # 800017dc <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006c2c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006c30:	00003517          	auipc	a0,0x3
    80006c34:	6d850513          	addi	a0,a0,1752 # 8000a308 <CONSOLE_STATUS+0x2f0>
    80006c38:	fffff097          	auipc	ra,0xfffff
    80006c3c:	47c080e7          	jalr	1148(ra) # 800060b4 <_Z11printStringPKc>
    80006c40:	00000613          	li	a2,0
    80006c44:	00a00593          	li	a1,10
    80006c48:	0009051b          	sext.w	a0,s2
    80006c4c:	fffff097          	auipc	ra,0xfffff
    80006c50:	618080e7          	jalr	1560(ra) # 80006264 <_Z8printIntiii>
    80006c54:	00004517          	auipc	a0,0x4
    80006c58:	8fc50513          	addi	a0,a0,-1796 # 8000a550 <CONSOLE_STATUS+0x538>
    80006c5c:	fffff097          	auipc	ra,0xfffff
    80006c60:	458080e7          	jalr	1112(ra) # 800060b4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006c64:	00c00513          	li	a0,12
    80006c68:	00000097          	auipc	ra,0x0
    80006c6c:	d88080e7          	jalr	-632(ra) # 800069f0 <_ZL9fibonaccim>
    80006c70:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006c74:	00003517          	auipc	a0,0x3
    80006c78:	69c50513          	addi	a0,a0,1692 # 8000a310 <CONSOLE_STATUS+0x2f8>
    80006c7c:	fffff097          	auipc	ra,0xfffff
    80006c80:	438080e7          	jalr	1080(ra) # 800060b4 <_Z11printStringPKc>
    80006c84:	00000613          	li	a2,0
    80006c88:	00a00593          	li	a1,10
    80006c8c:	0009051b          	sext.w	a0,s2
    80006c90:	fffff097          	auipc	ra,0xfffff
    80006c94:	5d4080e7          	jalr	1492(ra) # 80006264 <_Z8printIntiii>
    80006c98:	00004517          	auipc	a0,0x4
    80006c9c:	8b850513          	addi	a0,a0,-1864 # 8000a550 <CONSOLE_STATUS+0x538>
    80006ca0:	fffff097          	auipc	ra,0xfffff
    80006ca4:	414080e7          	jalr	1044(ra) # 800060b4 <_Z11printStringPKc>
    80006ca8:	0400006f          	j	80006ce8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006cac:	00003517          	auipc	a0,0x3
    80006cb0:	64450513          	addi	a0,a0,1604 # 8000a2f0 <CONSOLE_STATUS+0x2d8>
    80006cb4:	fffff097          	auipc	ra,0xfffff
    80006cb8:	400080e7          	jalr	1024(ra) # 800060b4 <_Z11printStringPKc>
    80006cbc:	00000613          	li	a2,0
    80006cc0:	00a00593          	li	a1,10
    80006cc4:	00048513          	mv	a0,s1
    80006cc8:	fffff097          	auipc	ra,0xfffff
    80006ccc:	59c080e7          	jalr	1436(ra) # 80006264 <_Z8printIntiii>
    80006cd0:	00004517          	auipc	a0,0x4
    80006cd4:	88050513          	addi	a0,a0,-1920 # 8000a550 <CONSOLE_STATUS+0x538>
    80006cd8:	fffff097          	auipc	ra,0xfffff
    80006cdc:	3dc080e7          	jalr	988(ra) # 800060b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006ce0:	0014849b          	addiw	s1,s1,1
    80006ce4:	0ff4f493          	andi	s1,s1,255
    80006ce8:	00500793          	li	a5,5
    80006cec:	fc97f0e3          	bgeu	a5,s1,80006cac <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006cf0:	00003517          	auipc	a0,0x3
    80006cf4:	5d850513          	addi	a0,a0,1496 # 8000a2c8 <CONSOLE_STATUS+0x2b0>
    80006cf8:	fffff097          	auipc	ra,0xfffff
    80006cfc:	3bc080e7          	jalr	956(ra) # 800060b4 <_Z11printStringPKc>
    finishedC = true;
    80006d00:	00100793          	li	a5,1
    80006d04:	00006717          	auipc	a4,0x6
    80006d08:	02f703a3          	sb	a5,39(a4) # 8000cd2b <_ZL9finishedC>
    thread_dispatch();
    80006d0c:	ffffb097          	auipc	ra,0xffffb
    80006d10:	ad0080e7          	jalr	-1328(ra) # 800017dc <thread_dispatch>
}
    80006d14:	01813083          	ld	ra,24(sp)
    80006d18:	01013403          	ld	s0,16(sp)
    80006d1c:	00813483          	ld	s1,8(sp)
    80006d20:	00013903          	ld	s2,0(sp)
    80006d24:	02010113          	addi	sp,sp,32
    80006d28:	00008067          	ret

0000000080006d2c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006d2c:	fe010113          	addi	sp,sp,-32
    80006d30:	00113c23          	sd	ra,24(sp)
    80006d34:	00813823          	sd	s0,16(sp)
    80006d38:	00913423          	sd	s1,8(sp)
    80006d3c:	01213023          	sd	s2,0(sp)
    80006d40:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006d44:	00000913          	li	s2,0
    80006d48:	0400006f          	j	80006d88 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006d4c:	ffffb097          	auipc	ra,0xffffb
    80006d50:	a90080e7          	jalr	-1392(ra) # 800017dc <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006d54:	00148493          	addi	s1,s1,1
    80006d58:	000027b7          	lui	a5,0x2
    80006d5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006d60:	0097ee63          	bltu	a5,s1,80006d7c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006d64:	00000713          	li	a4,0
    80006d68:	000077b7          	lui	a5,0x7
    80006d6c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006d70:	fce7eee3          	bltu	a5,a4,80006d4c <_ZL11workerBodyBPv+0x20>
    80006d74:	00170713          	addi	a4,a4,1
    80006d78:	ff1ff06f          	j	80006d68 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006d7c:	00a00793          	li	a5,10
    80006d80:	04f90663          	beq	s2,a5,80006dcc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006d84:	00190913          	addi	s2,s2,1
    80006d88:	00f00793          	li	a5,15
    80006d8c:	0527e463          	bltu	a5,s2,80006dd4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006d90:	00003517          	auipc	a0,0x3
    80006d94:	54850513          	addi	a0,a0,1352 # 8000a2d8 <CONSOLE_STATUS+0x2c0>
    80006d98:	fffff097          	auipc	ra,0xfffff
    80006d9c:	31c080e7          	jalr	796(ra) # 800060b4 <_Z11printStringPKc>
    80006da0:	00000613          	li	a2,0
    80006da4:	00a00593          	li	a1,10
    80006da8:	0009051b          	sext.w	a0,s2
    80006dac:	fffff097          	auipc	ra,0xfffff
    80006db0:	4b8080e7          	jalr	1208(ra) # 80006264 <_Z8printIntiii>
    80006db4:	00003517          	auipc	a0,0x3
    80006db8:	79c50513          	addi	a0,a0,1948 # 8000a550 <CONSOLE_STATUS+0x538>
    80006dbc:	fffff097          	auipc	ra,0xfffff
    80006dc0:	2f8080e7          	jalr	760(ra) # 800060b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006dc4:	00000493          	li	s1,0
    80006dc8:	f91ff06f          	j	80006d58 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006dcc:	14102ff3          	csrr	t6,sepc
    80006dd0:	fb5ff06f          	j	80006d84 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006dd4:	00003517          	auipc	a0,0x3
    80006dd8:	50c50513          	addi	a0,a0,1292 # 8000a2e0 <CONSOLE_STATUS+0x2c8>
    80006ddc:	fffff097          	auipc	ra,0xfffff
    80006de0:	2d8080e7          	jalr	728(ra) # 800060b4 <_Z11printStringPKc>
    finishedB = true;
    80006de4:	00100793          	li	a5,1
    80006de8:	00006717          	auipc	a4,0x6
    80006dec:	f4f70223          	sb	a5,-188(a4) # 8000cd2c <_ZL9finishedB>
    thread_dispatch();
    80006df0:	ffffb097          	auipc	ra,0xffffb
    80006df4:	9ec080e7          	jalr	-1556(ra) # 800017dc <thread_dispatch>
}
    80006df8:	01813083          	ld	ra,24(sp)
    80006dfc:	01013403          	ld	s0,16(sp)
    80006e00:	00813483          	ld	s1,8(sp)
    80006e04:	00013903          	ld	s2,0(sp)
    80006e08:	02010113          	addi	sp,sp,32
    80006e0c:	00008067          	ret

0000000080006e10 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006e10:	fe010113          	addi	sp,sp,-32
    80006e14:	00113c23          	sd	ra,24(sp)
    80006e18:	00813823          	sd	s0,16(sp)
    80006e1c:	00913423          	sd	s1,8(sp)
    80006e20:	01213023          	sd	s2,0(sp)
    80006e24:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006e28:	00000913          	li	s2,0
    80006e2c:	0380006f          	j	80006e64 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006e30:	ffffb097          	auipc	ra,0xffffb
    80006e34:	9ac080e7          	jalr	-1620(ra) # 800017dc <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006e38:	00148493          	addi	s1,s1,1
    80006e3c:	000027b7          	lui	a5,0x2
    80006e40:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006e44:	0097ee63          	bltu	a5,s1,80006e60 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006e48:	00000713          	li	a4,0
    80006e4c:	000077b7          	lui	a5,0x7
    80006e50:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006e54:	fce7eee3          	bltu	a5,a4,80006e30 <_ZL11workerBodyAPv+0x20>
    80006e58:	00170713          	addi	a4,a4,1
    80006e5c:	ff1ff06f          	j	80006e4c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006e60:	00190913          	addi	s2,s2,1
    80006e64:	00900793          	li	a5,9
    80006e68:	0527e063          	bltu	a5,s2,80006ea8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006e6c:	00003517          	auipc	a0,0x3
    80006e70:	45450513          	addi	a0,a0,1108 # 8000a2c0 <CONSOLE_STATUS+0x2a8>
    80006e74:	fffff097          	auipc	ra,0xfffff
    80006e78:	240080e7          	jalr	576(ra) # 800060b4 <_Z11printStringPKc>
    80006e7c:	00000613          	li	a2,0
    80006e80:	00a00593          	li	a1,10
    80006e84:	0009051b          	sext.w	a0,s2
    80006e88:	fffff097          	auipc	ra,0xfffff
    80006e8c:	3dc080e7          	jalr	988(ra) # 80006264 <_Z8printIntiii>
    80006e90:	00003517          	auipc	a0,0x3
    80006e94:	6c050513          	addi	a0,a0,1728 # 8000a550 <CONSOLE_STATUS+0x538>
    80006e98:	fffff097          	auipc	ra,0xfffff
    80006e9c:	21c080e7          	jalr	540(ra) # 800060b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006ea0:	00000493          	li	s1,0
    80006ea4:	f99ff06f          	j	80006e3c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006ea8:	00003517          	auipc	a0,0x3
    80006eac:	42050513          	addi	a0,a0,1056 # 8000a2c8 <CONSOLE_STATUS+0x2b0>
    80006eb0:	fffff097          	auipc	ra,0xfffff
    80006eb4:	204080e7          	jalr	516(ra) # 800060b4 <_Z11printStringPKc>
    finishedA = true;
    80006eb8:	00100793          	li	a5,1
    80006ebc:	00006717          	auipc	a4,0x6
    80006ec0:	e6f708a3          	sb	a5,-399(a4) # 8000cd2d <_ZL9finishedA>
}
    80006ec4:	01813083          	ld	ra,24(sp)
    80006ec8:	01013403          	ld	s0,16(sp)
    80006ecc:	00813483          	ld	s1,8(sp)
    80006ed0:	00013903          	ld	s2,0(sp)
    80006ed4:	02010113          	addi	sp,sp,32
    80006ed8:	00008067          	ret

0000000080006edc <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006edc:	fd010113          	addi	sp,sp,-48
    80006ee0:	02113423          	sd	ra,40(sp)
    80006ee4:	02813023          	sd	s0,32(sp)
    80006ee8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006eec:	00000613          	li	a2,0
    80006ef0:	00000597          	auipc	a1,0x0
    80006ef4:	f2058593          	addi	a1,a1,-224 # 80006e10 <_ZL11workerBodyAPv>
    80006ef8:	fd040513          	addi	a0,s0,-48
    80006efc:	ffffa097          	auipc	ra,0xffffa
    80006f00:	7fc080e7          	jalr	2044(ra) # 800016f8 <thread_create>
    printString("ThreadA created\n");
    80006f04:	00003517          	auipc	a0,0x3
    80006f08:	46450513          	addi	a0,a0,1124 # 8000a368 <CONSOLE_STATUS+0x350>
    80006f0c:	fffff097          	auipc	ra,0xfffff
    80006f10:	1a8080e7          	jalr	424(ra) # 800060b4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006f14:	00000613          	li	a2,0
    80006f18:	00000597          	auipc	a1,0x0
    80006f1c:	e1458593          	addi	a1,a1,-492 # 80006d2c <_ZL11workerBodyBPv>
    80006f20:	fd840513          	addi	a0,s0,-40
    80006f24:	ffffa097          	auipc	ra,0xffffa
    80006f28:	7d4080e7          	jalr	2004(ra) # 800016f8 <thread_create>
    printString("ThreadB created\n");
    80006f2c:	00003517          	auipc	a0,0x3
    80006f30:	45450513          	addi	a0,a0,1108 # 8000a380 <CONSOLE_STATUS+0x368>
    80006f34:	fffff097          	auipc	ra,0xfffff
    80006f38:	180080e7          	jalr	384(ra) # 800060b4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006f3c:	00000613          	li	a2,0
    80006f40:	00000597          	auipc	a1,0x0
    80006f44:	c6c58593          	addi	a1,a1,-916 # 80006bac <_ZL11workerBodyCPv>
    80006f48:	fe040513          	addi	a0,s0,-32
    80006f4c:	ffffa097          	auipc	ra,0xffffa
    80006f50:	7ac080e7          	jalr	1964(ra) # 800016f8 <thread_create>
    printString("ThreadC created\n");
    80006f54:	00003517          	auipc	a0,0x3
    80006f58:	44450513          	addi	a0,a0,1092 # 8000a398 <CONSOLE_STATUS+0x380>
    80006f5c:	fffff097          	auipc	ra,0xfffff
    80006f60:	158080e7          	jalr	344(ra) # 800060b4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006f64:	00000613          	li	a2,0
    80006f68:	00000597          	auipc	a1,0x0
    80006f6c:	afc58593          	addi	a1,a1,-1284 # 80006a64 <_ZL11workerBodyDPv>
    80006f70:	fe840513          	addi	a0,s0,-24
    80006f74:	ffffa097          	auipc	ra,0xffffa
    80006f78:	784080e7          	jalr	1924(ra) # 800016f8 <thread_create>
    printString("ThreadD created\n");
    80006f7c:	00003517          	auipc	a0,0x3
    80006f80:	43450513          	addi	a0,a0,1076 # 8000a3b0 <CONSOLE_STATUS+0x398>
    80006f84:	fffff097          	auipc	ra,0xfffff
    80006f88:	130080e7          	jalr	304(ra) # 800060b4 <_Z11printStringPKc>
    80006f8c:	00c0006f          	j	80006f98 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006f90:	ffffb097          	auipc	ra,0xffffb
    80006f94:	84c080e7          	jalr	-1972(ra) # 800017dc <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006f98:	00006797          	auipc	a5,0x6
    80006f9c:	d957c783          	lbu	a5,-619(a5) # 8000cd2d <_ZL9finishedA>
    80006fa0:	fe0788e3          	beqz	a5,80006f90 <_Z16System_Mode_testv+0xb4>
    80006fa4:	00006797          	auipc	a5,0x6
    80006fa8:	d887c783          	lbu	a5,-632(a5) # 8000cd2c <_ZL9finishedB>
    80006fac:	fe0782e3          	beqz	a5,80006f90 <_Z16System_Mode_testv+0xb4>
    80006fb0:	00006797          	auipc	a5,0x6
    80006fb4:	d7b7c783          	lbu	a5,-645(a5) # 8000cd2b <_ZL9finishedC>
    80006fb8:	fc078ce3          	beqz	a5,80006f90 <_Z16System_Mode_testv+0xb4>
    80006fbc:	00006797          	auipc	a5,0x6
    80006fc0:	d6e7c783          	lbu	a5,-658(a5) # 8000cd2a <_ZL9finishedD>
    80006fc4:	fc0786e3          	beqz	a5,80006f90 <_Z16System_Mode_testv+0xb4>
    }

}
    80006fc8:	02813083          	ld	ra,40(sp)
    80006fcc:	02013403          	ld	s0,32(sp)
    80006fd0:	03010113          	addi	sp,sp,48
    80006fd4:	00008067          	ret

0000000080006fd8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006fd8:	fe010113          	addi	sp,sp,-32
    80006fdc:	00113c23          	sd	ra,24(sp)
    80006fe0:	00813823          	sd	s0,16(sp)
    80006fe4:	00913423          	sd	s1,8(sp)
    80006fe8:	01213023          	sd	s2,0(sp)
    80006fec:	02010413          	addi	s0,sp,32
    80006ff0:	00050493          	mv	s1,a0
    80006ff4:	00058913          	mv	s2,a1
    80006ff8:	0015879b          	addiw	a5,a1,1
    80006ffc:	0007851b          	sext.w	a0,a5
    80007000:	00f4a023          	sw	a5,0(s1)
    80007004:	0004a823          	sw	zero,16(s1)
    80007008:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000700c:	00251513          	slli	a0,a0,0x2
    80007010:	ffffa097          	auipc	ra,0xffffa
    80007014:	638080e7          	jalr	1592(ra) # 80001648 <mem_alloc>
    80007018:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000701c:	00000593          	li	a1,0
    80007020:	02048513          	addi	a0,s1,32
    80007024:	ffffb097          	auipc	ra,0xffffb
    80007028:	8f4080e7          	jalr	-1804(ra) # 80001918 <sem_open>
    sem_open(&spaceAvailable, _cap);
    8000702c:	00090593          	mv	a1,s2
    80007030:	01848513          	addi	a0,s1,24
    80007034:	ffffb097          	auipc	ra,0xffffb
    80007038:	8e4080e7          	jalr	-1820(ra) # 80001918 <sem_open>
    sem_open(&mutexHead, 1);
    8000703c:	00100593          	li	a1,1
    80007040:	02848513          	addi	a0,s1,40
    80007044:	ffffb097          	auipc	ra,0xffffb
    80007048:	8d4080e7          	jalr	-1836(ra) # 80001918 <sem_open>
    sem_open(&mutexTail, 1);
    8000704c:	00100593          	li	a1,1
    80007050:	03048513          	addi	a0,s1,48
    80007054:	ffffb097          	auipc	ra,0xffffb
    80007058:	8c4080e7          	jalr	-1852(ra) # 80001918 <sem_open>
}
    8000705c:	01813083          	ld	ra,24(sp)
    80007060:	01013403          	ld	s0,16(sp)
    80007064:	00813483          	ld	s1,8(sp)
    80007068:	00013903          	ld	s2,0(sp)
    8000706c:	02010113          	addi	sp,sp,32
    80007070:	00008067          	ret

0000000080007074 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80007074:	fe010113          	addi	sp,sp,-32
    80007078:	00113c23          	sd	ra,24(sp)
    8000707c:	00813823          	sd	s0,16(sp)
    80007080:	00913423          	sd	s1,8(sp)
    80007084:	01213023          	sd	s2,0(sp)
    80007088:	02010413          	addi	s0,sp,32
    8000708c:	00050493          	mv	s1,a0
    80007090:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80007094:	01853503          	ld	a0,24(a0)
    80007098:	ffffb097          	auipc	ra,0xffffb
    8000709c:	92c080e7          	jalr	-1748(ra) # 800019c4 <sem_wait>

    sem_wait(mutexTail);
    800070a0:	0304b503          	ld	a0,48(s1)
    800070a4:	ffffb097          	auipc	ra,0xffffb
    800070a8:	920080e7          	jalr	-1760(ra) # 800019c4 <sem_wait>
    buffer[tail] = val;
    800070ac:	0084b783          	ld	a5,8(s1)
    800070b0:	0144a703          	lw	a4,20(s1)
    800070b4:	00271713          	slli	a4,a4,0x2
    800070b8:	00e787b3          	add	a5,a5,a4
    800070bc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800070c0:	0144a783          	lw	a5,20(s1)
    800070c4:	0017879b          	addiw	a5,a5,1
    800070c8:	0004a703          	lw	a4,0(s1)
    800070cc:	02e7e7bb          	remw	a5,a5,a4
    800070d0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800070d4:	0304b503          	ld	a0,48(s1)
    800070d8:	ffffb097          	auipc	ra,0xffffb
    800070dc:	940080e7          	jalr	-1728(ra) # 80001a18 <sem_signal>

    sem_signal(itemAvailable);
    800070e0:	0204b503          	ld	a0,32(s1)
    800070e4:	ffffb097          	auipc	ra,0xffffb
    800070e8:	934080e7          	jalr	-1740(ra) # 80001a18 <sem_signal>

}
    800070ec:	01813083          	ld	ra,24(sp)
    800070f0:	01013403          	ld	s0,16(sp)
    800070f4:	00813483          	ld	s1,8(sp)
    800070f8:	00013903          	ld	s2,0(sp)
    800070fc:	02010113          	addi	sp,sp,32
    80007100:	00008067          	ret

0000000080007104 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80007104:	fe010113          	addi	sp,sp,-32
    80007108:	00113c23          	sd	ra,24(sp)
    8000710c:	00813823          	sd	s0,16(sp)
    80007110:	00913423          	sd	s1,8(sp)
    80007114:	01213023          	sd	s2,0(sp)
    80007118:	02010413          	addi	s0,sp,32
    8000711c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80007120:	02053503          	ld	a0,32(a0)
    80007124:	ffffb097          	auipc	ra,0xffffb
    80007128:	8a0080e7          	jalr	-1888(ra) # 800019c4 <sem_wait>

    sem_wait(mutexHead);
    8000712c:	0284b503          	ld	a0,40(s1)
    80007130:	ffffb097          	auipc	ra,0xffffb
    80007134:	894080e7          	jalr	-1900(ra) # 800019c4 <sem_wait>

    int ret = buffer[head];
    80007138:	0084b703          	ld	a4,8(s1)
    8000713c:	0104a783          	lw	a5,16(s1)
    80007140:	00279693          	slli	a3,a5,0x2
    80007144:	00d70733          	add	a4,a4,a3
    80007148:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000714c:	0017879b          	addiw	a5,a5,1
    80007150:	0004a703          	lw	a4,0(s1)
    80007154:	02e7e7bb          	remw	a5,a5,a4
    80007158:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000715c:	0284b503          	ld	a0,40(s1)
    80007160:	ffffb097          	auipc	ra,0xffffb
    80007164:	8b8080e7          	jalr	-1864(ra) # 80001a18 <sem_signal>

    sem_signal(spaceAvailable);
    80007168:	0184b503          	ld	a0,24(s1)
    8000716c:	ffffb097          	auipc	ra,0xffffb
    80007170:	8ac080e7          	jalr	-1876(ra) # 80001a18 <sem_signal>

    return ret;
}
    80007174:	00090513          	mv	a0,s2
    80007178:	01813083          	ld	ra,24(sp)
    8000717c:	01013403          	ld	s0,16(sp)
    80007180:	00813483          	ld	s1,8(sp)
    80007184:	00013903          	ld	s2,0(sp)
    80007188:	02010113          	addi	sp,sp,32
    8000718c:	00008067          	ret

0000000080007190 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80007190:	fe010113          	addi	sp,sp,-32
    80007194:	00113c23          	sd	ra,24(sp)
    80007198:	00813823          	sd	s0,16(sp)
    8000719c:	00913423          	sd	s1,8(sp)
    800071a0:	01213023          	sd	s2,0(sp)
    800071a4:	02010413          	addi	s0,sp,32
    800071a8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800071ac:	02853503          	ld	a0,40(a0)
    800071b0:	ffffb097          	auipc	ra,0xffffb
    800071b4:	814080e7          	jalr	-2028(ra) # 800019c4 <sem_wait>
    sem_wait(mutexTail);
    800071b8:	0304b503          	ld	a0,48(s1)
    800071bc:	ffffb097          	auipc	ra,0xffffb
    800071c0:	808080e7          	jalr	-2040(ra) # 800019c4 <sem_wait>

    if (tail >= head) {
    800071c4:	0144a783          	lw	a5,20(s1)
    800071c8:	0104a903          	lw	s2,16(s1)
    800071cc:	0327ce63          	blt	a5,s2,80007208 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800071d0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800071d4:	0304b503          	ld	a0,48(s1)
    800071d8:	ffffb097          	auipc	ra,0xffffb
    800071dc:	840080e7          	jalr	-1984(ra) # 80001a18 <sem_signal>
    sem_signal(mutexHead);
    800071e0:	0284b503          	ld	a0,40(s1)
    800071e4:	ffffb097          	auipc	ra,0xffffb
    800071e8:	834080e7          	jalr	-1996(ra) # 80001a18 <sem_signal>

    return ret;
}
    800071ec:	00090513          	mv	a0,s2
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	01013403          	ld	s0,16(sp)
    800071f8:	00813483          	ld	s1,8(sp)
    800071fc:	00013903          	ld	s2,0(sp)
    80007200:	02010113          	addi	sp,sp,32
    80007204:	00008067          	ret
        ret = cap - head + tail;
    80007208:	0004a703          	lw	a4,0(s1)
    8000720c:	4127093b          	subw	s2,a4,s2
    80007210:	00f9093b          	addw	s2,s2,a5
    80007214:	fc1ff06f          	j	800071d4 <_ZN6Buffer6getCntEv+0x44>

0000000080007218 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80007218:	fe010113          	addi	sp,sp,-32
    8000721c:	00113c23          	sd	ra,24(sp)
    80007220:	00813823          	sd	s0,16(sp)
    80007224:	00913423          	sd	s1,8(sp)
    80007228:	02010413          	addi	s0,sp,32
    8000722c:	00050493          	mv	s1,a0
    putc('\n');
    80007230:	00a00513          	li	a0,10
    80007234:	ffffb097          	auipc	ra,0xffffb
    80007238:	8d4080e7          	jalr	-1836(ra) # 80001b08 <putc>
    printString("Buffer deleted!\n");
    8000723c:	00003517          	auipc	a0,0x3
    80007240:	18c50513          	addi	a0,a0,396 # 8000a3c8 <CONSOLE_STATUS+0x3b0>
    80007244:	fffff097          	auipc	ra,0xfffff
    80007248:	e70080e7          	jalr	-400(ra) # 800060b4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000724c:	00048513          	mv	a0,s1
    80007250:	00000097          	auipc	ra,0x0
    80007254:	f40080e7          	jalr	-192(ra) # 80007190 <_ZN6Buffer6getCntEv>
    80007258:	02a05c63          	blez	a0,80007290 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000725c:	0084b783          	ld	a5,8(s1)
    80007260:	0104a703          	lw	a4,16(s1)
    80007264:	00271713          	slli	a4,a4,0x2
    80007268:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000726c:	0007c503          	lbu	a0,0(a5)
    80007270:	ffffb097          	auipc	ra,0xffffb
    80007274:	898080e7          	jalr	-1896(ra) # 80001b08 <putc>
        head = (head + 1) % cap;
    80007278:	0104a783          	lw	a5,16(s1)
    8000727c:	0017879b          	addiw	a5,a5,1
    80007280:	0004a703          	lw	a4,0(s1)
    80007284:	02e7e7bb          	remw	a5,a5,a4
    80007288:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000728c:	fc1ff06f          	j	8000724c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80007290:	02100513          	li	a0,33
    80007294:	ffffb097          	auipc	ra,0xffffb
    80007298:	874080e7          	jalr	-1932(ra) # 80001b08 <putc>
    putc('\n');
    8000729c:	00a00513          	li	a0,10
    800072a0:	ffffb097          	auipc	ra,0xffffb
    800072a4:	868080e7          	jalr	-1944(ra) # 80001b08 <putc>
    mem_free(buffer);
    800072a8:	0084b503          	ld	a0,8(s1)
    800072ac:	ffffa097          	auipc	ra,0xffffa
    800072b0:	3f8080e7          	jalr	1016(ra) # 800016a4 <mem_free>
    sem_close(itemAvailable);
    800072b4:	0204b503          	ld	a0,32(s1)
    800072b8:	ffffa097          	auipc	ra,0xffffa
    800072bc:	6b8080e7          	jalr	1720(ra) # 80001970 <sem_close>
    sem_close(spaceAvailable);
    800072c0:	0184b503          	ld	a0,24(s1)
    800072c4:	ffffa097          	auipc	ra,0xffffa
    800072c8:	6ac080e7          	jalr	1708(ra) # 80001970 <sem_close>
    sem_close(mutexTail);
    800072cc:	0304b503          	ld	a0,48(s1)
    800072d0:	ffffa097          	auipc	ra,0xffffa
    800072d4:	6a0080e7          	jalr	1696(ra) # 80001970 <sem_close>
    sem_close(mutexHead);
    800072d8:	0284b503          	ld	a0,40(s1)
    800072dc:	ffffa097          	auipc	ra,0xffffa
    800072e0:	694080e7          	jalr	1684(ra) # 80001970 <sem_close>
}
    800072e4:	01813083          	ld	ra,24(sp)
    800072e8:	01013403          	ld	s0,16(sp)
    800072ec:	00813483          	ld	s1,8(sp)
    800072f0:	02010113          	addi	sp,sp,32
    800072f4:	00008067          	ret

00000000800072f8 <start>:
    800072f8:	ff010113          	addi	sp,sp,-16
    800072fc:	00813423          	sd	s0,8(sp)
    80007300:	01010413          	addi	s0,sp,16
    80007304:	300027f3          	csrr	a5,mstatus
    80007308:	ffffe737          	lui	a4,0xffffe
    8000730c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff086f>
    80007310:	00e7f7b3          	and	a5,a5,a4
    80007314:	00001737          	lui	a4,0x1
    80007318:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000731c:	00e7e7b3          	or	a5,a5,a4
    80007320:	30079073          	csrw	mstatus,a5
    80007324:	00000797          	auipc	a5,0x0
    80007328:	16078793          	addi	a5,a5,352 # 80007484 <system_main>
    8000732c:	34179073          	csrw	mepc,a5
    80007330:	00000793          	li	a5,0
    80007334:	18079073          	csrw	satp,a5
    80007338:	000107b7          	lui	a5,0x10
    8000733c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007340:	30279073          	csrw	medeleg,a5
    80007344:	30379073          	csrw	mideleg,a5
    80007348:	104027f3          	csrr	a5,sie
    8000734c:	2227e793          	ori	a5,a5,546
    80007350:	10479073          	csrw	sie,a5
    80007354:	fff00793          	li	a5,-1
    80007358:	00a7d793          	srli	a5,a5,0xa
    8000735c:	3b079073          	csrw	pmpaddr0,a5
    80007360:	00f00793          	li	a5,15
    80007364:	3a079073          	csrw	pmpcfg0,a5
    80007368:	f14027f3          	csrr	a5,mhartid
    8000736c:	0200c737          	lui	a4,0x200c
    80007370:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007374:	0007869b          	sext.w	a3,a5
    80007378:	00269713          	slli	a4,a3,0x2
    8000737c:	000f4637          	lui	a2,0xf4
    80007380:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007384:	00d70733          	add	a4,a4,a3
    80007388:	0037979b          	slliw	a5,a5,0x3
    8000738c:	020046b7          	lui	a3,0x2004
    80007390:	00d787b3          	add	a5,a5,a3
    80007394:	00c585b3          	add	a1,a1,a2
    80007398:	00371693          	slli	a3,a4,0x3
    8000739c:	00006717          	auipc	a4,0x6
    800073a0:	99470713          	addi	a4,a4,-1644 # 8000cd30 <timer_scratch>
    800073a4:	00b7b023          	sd	a1,0(a5)
    800073a8:	00d70733          	add	a4,a4,a3
    800073ac:	00f73c23          	sd	a5,24(a4)
    800073b0:	02c73023          	sd	a2,32(a4)
    800073b4:	34071073          	csrw	mscratch,a4
    800073b8:	00000797          	auipc	a5,0x0
    800073bc:	6e878793          	addi	a5,a5,1768 # 80007aa0 <timervec>
    800073c0:	30579073          	csrw	mtvec,a5
    800073c4:	300027f3          	csrr	a5,mstatus
    800073c8:	0087e793          	ori	a5,a5,8
    800073cc:	30079073          	csrw	mstatus,a5
    800073d0:	304027f3          	csrr	a5,mie
    800073d4:	0807e793          	ori	a5,a5,128
    800073d8:	30479073          	csrw	mie,a5
    800073dc:	f14027f3          	csrr	a5,mhartid
    800073e0:	0007879b          	sext.w	a5,a5
    800073e4:	00078213          	mv	tp,a5
    800073e8:	30200073          	mret
    800073ec:	00813403          	ld	s0,8(sp)
    800073f0:	01010113          	addi	sp,sp,16
    800073f4:	00008067          	ret

00000000800073f8 <timerinit>:
    800073f8:	ff010113          	addi	sp,sp,-16
    800073fc:	00813423          	sd	s0,8(sp)
    80007400:	01010413          	addi	s0,sp,16
    80007404:	f14027f3          	csrr	a5,mhartid
    80007408:	0200c737          	lui	a4,0x200c
    8000740c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007410:	0007869b          	sext.w	a3,a5
    80007414:	00269713          	slli	a4,a3,0x2
    80007418:	000f4637          	lui	a2,0xf4
    8000741c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007420:	00d70733          	add	a4,a4,a3
    80007424:	0037979b          	slliw	a5,a5,0x3
    80007428:	020046b7          	lui	a3,0x2004
    8000742c:	00d787b3          	add	a5,a5,a3
    80007430:	00c585b3          	add	a1,a1,a2
    80007434:	00371693          	slli	a3,a4,0x3
    80007438:	00006717          	auipc	a4,0x6
    8000743c:	8f870713          	addi	a4,a4,-1800 # 8000cd30 <timer_scratch>
    80007440:	00b7b023          	sd	a1,0(a5)
    80007444:	00d70733          	add	a4,a4,a3
    80007448:	00f73c23          	sd	a5,24(a4)
    8000744c:	02c73023          	sd	a2,32(a4)
    80007450:	34071073          	csrw	mscratch,a4
    80007454:	00000797          	auipc	a5,0x0
    80007458:	64c78793          	addi	a5,a5,1612 # 80007aa0 <timervec>
    8000745c:	30579073          	csrw	mtvec,a5
    80007460:	300027f3          	csrr	a5,mstatus
    80007464:	0087e793          	ori	a5,a5,8
    80007468:	30079073          	csrw	mstatus,a5
    8000746c:	304027f3          	csrr	a5,mie
    80007470:	0807e793          	ori	a5,a5,128
    80007474:	30479073          	csrw	mie,a5
    80007478:	00813403          	ld	s0,8(sp)
    8000747c:	01010113          	addi	sp,sp,16
    80007480:	00008067          	ret

0000000080007484 <system_main>:
    80007484:	fe010113          	addi	sp,sp,-32
    80007488:	00813823          	sd	s0,16(sp)
    8000748c:	00913423          	sd	s1,8(sp)
    80007490:	00113c23          	sd	ra,24(sp)
    80007494:	02010413          	addi	s0,sp,32
    80007498:	00000097          	auipc	ra,0x0
    8000749c:	0c4080e7          	jalr	196(ra) # 8000755c <cpuid>
    800074a0:	00005497          	auipc	s1,0x5
    800074a4:	7c048493          	addi	s1,s1,1984 # 8000cc60 <started>
    800074a8:	02050263          	beqz	a0,800074cc <system_main+0x48>
    800074ac:	0004a783          	lw	a5,0(s1)
    800074b0:	0007879b          	sext.w	a5,a5
    800074b4:	fe078ce3          	beqz	a5,800074ac <system_main+0x28>
    800074b8:	0ff0000f          	fence
    800074bc:	00003517          	auipc	a0,0x3
    800074c0:	19c50513          	addi	a0,a0,412 # 8000a658 <CONSOLE_STATUS+0x640>
    800074c4:	00001097          	auipc	ra,0x1
    800074c8:	a78080e7          	jalr	-1416(ra) # 80007f3c <panic>
    800074cc:	00001097          	auipc	ra,0x1
    800074d0:	9cc080e7          	jalr	-1588(ra) # 80007e98 <consoleinit>
    800074d4:	00001097          	auipc	ra,0x1
    800074d8:	158080e7          	jalr	344(ra) # 8000862c <printfinit>
    800074dc:	00003517          	auipc	a0,0x3
    800074e0:	07450513          	addi	a0,a0,116 # 8000a550 <CONSOLE_STATUS+0x538>
    800074e4:	00001097          	auipc	ra,0x1
    800074e8:	ab4080e7          	jalr	-1356(ra) # 80007f98 <__printf>
    800074ec:	00003517          	auipc	a0,0x3
    800074f0:	13c50513          	addi	a0,a0,316 # 8000a628 <CONSOLE_STATUS+0x610>
    800074f4:	00001097          	auipc	ra,0x1
    800074f8:	aa4080e7          	jalr	-1372(ra) # 80007f98 <__printf>
    800074fc:	00003517          	auipc	a0,0x3
    80007500:	05450513          	addi	a0,a0,84 # 8000a550 <CONSOLE_STATUS+0x538>
    80007504:	00001097          	auipc	ra,0x1
    80007508:	a94080e7          	jalr	-1388(ra) # 80007f98 <__printf>
    8000750c:	00001097          	auipc	ra,0x1
    80007510:	4ac080e7          	jalr	1196(ra) # 800089b8 <kinit>
    80007514:	00000097          	auipc	ra,0x0
    80007518:	148080e7          	jalr	328(ra) # 8000765c <trapinit>
    8000751c:	00000097          	auipc	ra,0x0
    80007520:	16c080e7          	jalr	364(ra) # 80007688 <trapinithart>
    80007524:	00000097          	auipc	ra,0x0
    80007528:	5bc080e7          	jalr	1468(ra) # 80007ae0 <plicinit>
    8000752c:	00000097          	auipc	ra,0x0
    80007530:	5dc080e7          	jalr	1500(ra) # 80007b08 <plicinithart>
    80007534:	00000097          	auipc	ra,0x0
    80007538:	078080e7          	jalr	120(ra) # 800075ac <userinit>
    8000753c:	0ff0000f          	fence
    80007540:	00100793          	li	a5,1
    80007544:	00003517          	auipc	a0,0x3
    80007548:	0fc50513          	addi	a0,a0,252 # 8000a640 <CONSOLE_STATUS+0x628>
    8000754c:	00f4a023          	sw	a5,0(s1)
    80007550:	00001097          	auipc	ra,0x1
    80007554:	a48080e7          	jalr	-1464(ra) # 80007f98 <__printf>
    80007558:	0000006f          	j	80007558 <system_main+0xd4>

000000008000755c <cpuid>:
    8000755c:	ff010113          	addi	sp,sp,-16
    80007560:	00813423          	sd	s0,8(sp)
    80007564:	01010413          	addi	s0,sp,16
    80007568:	00020513          	mv	a0,tp
    8000756c:	00813403          	ld	s0,8(sp)
    80007570:	0005051b          	sext.w	a0,a0
    80007574:	01010113          	addi	sp,sp,16
    80007578:	00008067          	ret

000000008000757c <mycpu>:
    8000757c:	ff010113          	addi	sp,sp,-16
    80007580:	00813423          	sd	s0,8(sp)
    80007584:	01010413          	addi	s0,sp,16
    80007588:	00020793          	mv	a5,tp
    8000758c:	00813403          	ld	s0,8(sp)
    80007590:	0007879b          	sext.w	a5,a5
    80007594:	00779793          	slli	a5,a5,0x7
    80007598:	00006517          	auipc	a0,0x6
    8000759c:	7c850513          	addi	a0,a0,1992 # 8000dd60 <cpus>
    800075a0:	00f50533          	add	a0,a0,a5
    800075a4:	01010113          	addi	sp,sp,16
    800075a8:	00008067          	ret

00000000800075ac <userinit>:
    800075ac:	ff010113          	addi	sp,sp,-16
    800075b0:	00813423          	sd	s0,8(sp)
    800075b4:	01010413          	addi	s0,sp,16
    800075b8:	00813403          	ld	s0,8(sp)
    800075bc:	01010113          	addi	sp,sp,16
    800075c0:	ffffb317          	auipc	t1,0xffffb
    800075c4:	f8030067          	jr	-128(t1) # 80002540 <main>

00000000800075c8 <either_copyout>:
    800075c8:	ff010113          	addi	sp,sp,-16
    800075cc:	00813023          	sd	s0,0(sp)
    800075d0:	00113423          	sd	ra,8(sp)
    800075d4:	01010413          	addi	s0,sp,16
    800075d8:	02051663          	bnez	a0,80007604 <either_copyout+0x3c>
    800075dc:	00058513          	mv	a0,a1
    800075e0:	00060593          	mv	a1,a2
    800075e4:	0006861b          	sext.w	a2,a3
    800075e8:	00002097          	auipc	ra,0x2
    800075ec:	c5c080e7          	jalr	-932(ra) # 80009244 <__memmove>
    800075f0:	00813083          	ld	ra,8(sp)
    800075f4:	00013403          	ld	s0,0(sp)
    800075f8:	00000513          	li	a0,0
    800075fc:	01010113          	addi	sp,sp,16
    80007600:	00008067          	ret
    80007604:	00003517          	auipc	a0,0x3
    80007608:	07c50513          	addi	a0,a0,124 # 8000a680 <CONSOLE_STATUS+0x668>
    8000760c:	00001097          	auipc	ra,0x1
    80007610:	930080e7          	jalr	-1744(ra) # 80007f3c <panic>

0000000080007614 <either_copyin>:
    80007614:	ff010113          	addi	sp,sp,-16
    80007618:	00813023          	sd	s0,0(sp)
    8000761c:	00113423          	sd	ra,8(sp)
    80007620:	01010413          	addi	s0,sp,16
    80007624:	02059463          	bnez	a1,8000764c <either_copyin+0x38>
    80007628:	00060593          	mv	a1,a2
    8000762c:	0006861b          	sext.w	a2,a3
    80007630:	00002097          	auipc	ra,0x2
    80007634:	c14080e7          	jalr	-1004(ra) # 80009244 <__memmove>
    80007638:	00813083          	ld	ra,8(sp)
    8000763c:	00013403          	ld	s0,0(sp)
    80007640:	00000513          	li	a0,0
    80007644:	01010113          	addi	sp,sp,16
    80007648:	00008067          	ret
    8000764c:	00003517          	auipc	a0,0x3
    80007650:	05c50513          	addi	a0,a0,92 # 8000a6a8 <CONSOLE_STATUS+0x690>
    80007654:	00001097          	auipc	ra,0x1
    80007658:	8e8080e7          	jalr	-1816(ra) # 80007f3c <panic>

000000008000765c <trapinit>:
    8000765c:	ff010113          	addi	sp,sp,-16
    80007660:	00813423          	sd	s0,8(sp)
    80007664:	01010413          	addi	s0,sp,16
    80007668:	00813403          	ld	s0,8(sp)
    8000766c:	00003597          	auipc	a1,0x3
    80007670:	06458593          	addi	a1,a1,100 # 8000a6d0 <CONSOLE_STATUS+0x6b8>
    80007674:	00006517          	auipc	a0,0x6
    80007678:	76c50513          	addi	a0,a0,1900 # 8000dde0 <tickslock>
    8000767c:	01010113          	addi	sp,sp,16
    80007680:	00001317          	auipc	t1,0x1
    80007684:	5c830067          	jr	1480(t1) # 80008c48 <initlock>

0000000080007688 <trapinithart>:
    80007688:	ff010113          	addi	sp,sp,-16
    8000768c:	00813423          	sd	s0,8(sp)
    80007690:	01010413          	addi	s0,sp,16
    80007694:	00000797          	auipc	a5,0x0
    80007698:	2fc78793          	addi	a5,a5,764 # 80007990 <kernelvec>
    8000769c:	10579073          	csrw	stvec,a5
    800076a0:	00813403          	ld	s0,8(sp)
    800076a4:	01010113          	addi	sp,sp,16
    800076a8:	00008067          	ret

00000000800076ac <usertrap>:
    800076ac:	ff010113          	addi	sp,sp,-16
    800076b0:	00813423          	sd	s0,8(sp)
    800076b4:	01010413          	addi	s0,sp,16
    800076b8:	00813403          	ld	s0,8(sp)
    800076bc:	01010113          	addi	sp,sp,16
    800076c0:	00008067          	ret

00000000800076c4 <usertrapret>:
    800076c4:	ff010113          	addi	sp,sp,-16
    800076c8:	00813423          	sd	s0,8(sp)
    800076cc:	01010413          	addi	s0,sp,16
    800076d0:	00813403          	ld	s0,8(sp)
    800076d4:	01010113          	addi	sp,sp,16
    800076d8:	00008067          	ret

00000000800076dc <kerneltrap>:
    800076dc:	fe010113          	addi	sp,sp,-32
    800076e0:	00813823          	sd	s0,16(sp)
    800076e4:	00113c23          	sd	ra,24(sp)
    800076e8:	00913423          	sd	s1,8(sp)
    800076ec:	02010413          	addi	s0,sp,32
    800076f0:	142025f3          	csrr	a1,scause
    800076f4:	100027f3          	csrr	a5,sstatus
    800076f8:	0027f793          	andi	a5,a5,2
    800076fc:	10079c63          	bnez	a5,80007814 <kerneltrap+0x138>
    80007700:	142027f3          	csrr	a5,scause
    80007704:	0207ce63          	bltz	a5,80007740 <kerneltrap+0x64>
    80007708:	00003517          	auipc	a0,0x3
    8000770c:	01050513          	addi	a0,a0,16 # 8000a718 <CONSOLE_STATUS+0x700>
    80007710:	00001097          	auipc	ra,0x1
    80007714:	888080e7          	jalr	-1912(ra) # 80007f98 <__printf>
    80007718:	141025f3          	csrr	a1,sepc
    8000771c:	14302673          	csrr	a2,stval
    80007720:	00003517          	auipc	a0,0x3
    80007724:	00850513          	addi	a0,a0,8 # 8000a728 <CONSOLE_STATUS+0x710>
    80007728:	00001097          	auipc	ra,0x1
    8000772c:	870080e7          	jalr	-1936(ra) # 80007f98 <__printf>
    80007730:	00003517          	auipc	a0,0x3
    80007734:	01050513          	addi	a0,a0,16 # 8000a740 <CONSOLE_STATUS+0x728>
    80007738:	00001097          	auipc	ra,0x1
    8000773c:	804080e7          	jalr	-2044(ra) # 80007f3c <panic>
    80007740:	0ff7f713          	andi	a4,a5,255
    80007744:	00900693          	li	a3,9
    80007748:	04d70063          	beq	a4,a3,80007788 <kerneltrap+0xac>
    8000774c:	fff00713          	li	a4,-1
    80007750:	03f71713          	slli	a4,a4,0x3f
    80007754:	00170713          	addi	a4,a4,1
    80007758:	fae798e3          	bne	a5,a4,80007708 <kerneltrap+0x2c>
    8000775c:	00000097          	auipc	ra,0x0
    80007760:	e00080e7          	jalr	-512(ra) # 8000755c <cpuid>
    80007764:	06050663          	beqz	a0,800077d0 <kerneltrap+0xf4>
    80007768:	144027f3          	csrr	a5,sip
    8000776c:	ffd7f793          	andi	a5,a5,-3
    80007770:	14479073          	csrw	sip,a5
    80007774:	01813083          	ld	ra,24(sp)
    80007778:	01013403          	ld	s0,16(sp)
    8000777c:	00813483          	ld	s1,8(sp)
    80007780:	02010113          	addi	sp,sp,32
    80007784:	00008067          	ret
    80007788:	00000097          	auipc	ra,0x0
    8000778c:	3cc080e7          	jalr	972(ra) # 80007b54 <plic_claim>
    80007790:	00a00793          	li	a5,10
    80007794:	00050493          	mv	s1,a0
    80007798:	06f50863          	beq	a0,a5,80007808 <kerneltrap+0x12c>
    8000779c:	fc050ce3          	beqz	a0,80007774 <kerneltrap+0x98>
    800077a0:	00050593          	mv	a1,a0
    800077a4:	00003517          	auipc	a0,0x3
    800077a8:	f5450513          	addi	a0,a0,-172 # 8000a6f8 <CONSOLE_STATUS+0x6e0>
    800077ac:	00000097          	auipc	ra,0x0
    800077b0:	7ec080e7          	jalr	2028(ra) # 80007f98 <__printf>
    800077b4:	01013403          	ld	s0,16(sp)
    800077b8:	01813083          	ld	ra,24(sp)
    800077bc:	00048513          	mv	a0,s1
    800077c0:	00813483          	ld	s1,8(sp)
    800077c4:	02010113          	addi	sp,sp,32
    800077c8:	00000317          	auipc	t1,0x0
    800077cc:	3c430067          	jr	964(t1) # 80007b8c <plic_complete>
    800077d0:	00006517          	auipc	a0,0x6
    800077d4:	61050513          	addi	a0,a0,1552 # 8000dde0 <tickslock>
    800077d8:	00001097          	auipc	ra,0x1
    800077dc:	494080e7          	jalr	1172(ra) # 80008c6c <acquire>
    800077e0:	00005717          	auipc	a4,0x5
    800077e4:	48470713          	addi	a4,a4,1156 # 8000cc64 <ticks>
    800077e8:	00072783          	lw	a5,0(a4)
    800077ec:	00006517          	auipc	a0,0x6
    800077f0:	5f450513          	addi	a0,a0,1524 # 8000dde0 <tickslock>
    800077f4:	0017879b          	addiw	a5,a5,1
    800077f8:	00f72023          	sw	a5,0(a4)
    800077fc:	00001097          	auipc	ra,0x1
    80007800:	53c080e7          	jalr	1340(ra) # 80008d38 <release>
    80007804:	f65ff06f          	j	80007768 <kerneltrap+0x8c>
    80007808:	00001097          	auipc	ra,0x1
    8000780c:	098080e7          	jalr	152(ra) # 800088a0 <uartintr>
    80007810:	fa5ff06f          	j	800077b4 <kerneltrap+0xd8>
    80007814:	00003517          	auipc	a0,0x3
    80007818:	ec450513          	addi	a0,a0,-316 # 8000a6d8 <CONSOLE_STATUS+0x6c0>
    8000781c:	00000097          	auipc	ra,0x0
    80007820:	720080e7          	jalr	1824(ra) # 80007f3c <panic>

0000000080007824 <clockintr>:
    80007824:	fe010113          	addi	sp,sp,-32
    80007828:	00813823          	sd	s0,16(sp)
    8000782c:	00913423          	sd	s1,8(sp)
    80007830:	00113c23          	sd	ra,24(sp)
    80007834:	02010413          	addi	s0,sp,32
    80007838:	00006497          	auipc	s1,0x6
    8000783c:	5a848493          	addi	s1,s1,1448 # 8000dde0 <tickslock>
    80007840:	00048513          	mv	a0,s1
    80007844:	00001097          	auipc	ra,0x1
    80007848:	428080e7          	jalr	1064(ra) # 80008c6c <acquire>
    8000784c:	00005717          	auipc	a4,0x5
    80007850:	41870713          	addi	a4,a4,1048 # 8000cc64 <ticks>
    80007854:	00072783          	lw	a5,0(a4)
    80007858:	01013403          	ld	s0,16(sp)
    8000785c:	01813083          	ld	ra,24(sp)
    80007860:	00048513          	mv	a0,s1
    80007864:	0017879b          	addiw	a5,a5,1
    80007868:	00813483          	ld	s1,8(sp)
    8000786c:	00f72023          	sw	a5,0(a4)
    80007870:	02010113          	addi	sp,sp,32
    80007874:	00001317          	auipc	t1,0x1
    80007878:	4c430067          	jr	1220(t1) # 80008d38 <release>

000000008000787c <devintr>:
    8000787c:	142027f3          	csrr	a5,scause
    80007880:	00000513          	li	a0,0
    80007884:	0007c463          	bltz	a5,8000788c <devintr+0x10>
    80007888:	00008067          	ret
    8000788c:	fe010113          	addi	sp,sp,-32
    80007890:	00813823          	sd	s0,16(sp)
    80007894:	00113c23          	sd	ra,24(sp)
    80007898:	00913423          	sd	s1,8(sp)
    8000789c:	02010413          	addi	s0,sp,32
    800078a0:	0ff7f713          	andi	a4,a5,255
    800078a4:	00900693          	li	a3,9
    800078a8:	04d70c63          	beq	a4,a3,80007900 <devintr+0x84>
    800078ac:	fff00713          	li	a4,-1
    800078b0:	03f71713          	slli	a4,a4,0x3f
    800078b4:	00170713          	addi	a4,a4,1
    800078b8:	00e78c63          	beq	a5,a4,800078d0 <devintr+0x54>
    800078bc:	01813083          	ld	ra,24(sp)
    800078c0:	01013403          	ld	s0,16(sp)
    800078c4:	00813483          	ld	s1,8(sp)
    800078c8:	02010113          	addi	sp,sp,32
    800078cc:	00008067          	ret
    800078d0:	00000097          	auipc	ra,0x0
    800078d4:	c8c080e7          	jalr	-884(ra) # 8000755c <cpuid>
    800078d8:	06050663          	beqz	a0,80007944 <devintr+0xc8>
    800078dc:	144027f3          	csrr	a5,sip
    800078e0:	ffd7f793          	andi	a5,a5,-3
    800078e4:	14479073          	csrw	sip,a5
    800078e8:	01813083          	ld	ra,24(sp)
    800078ec:	01013403          	ld	s0,16(sp)
    800078f0:	00813483          	ld	s1,8(sp)
    800078f4:	00200513          	li	a0,2
    800078f8:	02010113          	addi	sp,sp,32
    800078fc:	00008067          	ret
    80007900:	00000097          	auipc	ra,0x0
    80007904:	254080e7          	jalr	596(ra) # 80007b54 <plic_claim>
    80007908:	00a00793          	li	a5,10
    8000790c:	00050493          	mv	s1,a0
    80007910:	06f50663          	beq	a0,a5,8000797c <devintr+0x100>
    80007914:	00100513          	li	a0,1
    80007918:	fa0482e3          	beqz	s1,800078bc <devintr+0x40>
    8000791c:	00048593          	mv	a1,s1
    80007920:	00003517          	auipc	a0,0x3
    80007924:	dd850513          	addi	a0,a0,-552 # 8000a6f8 <CONSOLE_STATUS+0x6e0>
    80007928:	00000097          	auipc	ra,0x0
    8000792c:	670080e7          	jalr	1648(ra) # 80007f98 <__printf>
    80007930:	00048513          	mv	a0,s1
    80007934:	00000097          	auipc	ra,0x0
    80007938:	258080e7          	jalr	600(ra) # 80007b8c <plic_complete>
    8000793c:	00100513          	li	a0,1
    80007940:	f7dff06f          	j	800078bc <devintr+0x40>
    80007944:	00006517          	auipc	a0,0x6
    80007948:	49c50513          	addi	a0,a0,1180 # 8000dde0 <tickslock>
    8000794c:	00001097          	auipc	ra,0x1
    80007950:	320080e7          	jalr	800(ra) # 80008c6c <acquire>
    80007954:	00005717          	auipc	a4,0x5
    80007958:	31070713          	addi	a4,a4,784 # 8000cc64 <ticks>
    8000795c:	00072783          	lw	a5,0(a4)
    80007960:	00006517          	auipc	a0,0x6
    80007964:	48050513          	addi	a0,a0,1152 # 8000dde0 <tickslock>
    80007968:	0017879b          	addiw	a5,a5,1
    8000796c:	00f72023          	sw	a5,0(a4)
    80007970:	00001097          	auipc	ra,0x1
    80007974:	3c8080e7          	jalr	968(ra) # 80008d38 <release>
    80007978:	f65ff06f          	j	800078dc <devintr+0x60>
    8000797c:	00001097          	auipc	ra,0x1
    80007980:	f24080e7          	jalr	-220(ra) # 800088a0 <uartintr>
    80007984:	fadff06f          	j	80007930 <devintr+0xb4>
	...

0000000080007990 <kernelvec>:
    80007990:	f0010113          	addi	sp,sp,-256
    80007994:	00113023          	sd	ra,0(sp)
    80007998:	00213423          	sd	sp,8(sp)
    8000799c:	00313823          	sd	gp,16(sp)
    800079a0:	00413c23          	sd	tp,24(sp)
    800079a4:	02513023          	sd	t0,32(sp)
    800079a8:	02613423          	sd	t1,40(sp)
    800079ac:	02713823          	sd	t2,48(sp)
    800079b0:	02813c23          	sd	s0,56(sp)
    800079b4:	04913023          	sd	s1,64(sp)
    800079b8:	04a13423          	sd	a0,72(sp)
    800079bc:	04b13823          	sd	a1,80(sp)
    800079c0:	04c13c23          	sd	a2,88(sp)
    800079c4:	06d13023          	sd	a3,96(sp)
    800079c8:	06e13423          	sd	a4,104(sp)
    800079cc:	06f13823          	sd	a5,112(sp)
    800079d0:	07013c23          	sd	a6,120(sp)
    800079d4:	09113023          	sd	a7,128(sp)
    800079d8:	09213423          	sd	s2,136(sp)
    800079dc:	09313823          	sd	s3,144(sp)
    800079e0:	09413c23          	sd	s4,152(sp)
    800079e4:	0b513023          	sd	s5,160(sp)
    800079e8:	0b613423          	sd	s6,168(sp)
    800079ec:	0b713823          	sd	s7,176(sp)
    800079f0:	0b813c23          	sd	s8,184(sp)
    800079f4:	0d913023          	sd	s9,192(sp)
    800079f8:	0da13423          	sd	s10,200(sp)
    800079fc:	0db13823          	sd	s11,208(sp)
    80007a00:	0dc13c23          	sd	t3,216(sp)
    80007a04:	0fd13023          	sd	t4,224(sp)
    80007a08:	0fe13423          	sd	t5,232(sp)
    80007a0c:	0ff13823          	sd	t6,240(sp)
    80007a10:	ccdff0ef          	jal	ra,800076dc <kerneltrap>
    80007a14:	00013083          	ld	ra,0(sp)
    80007a18:	00813103          	ld	sp,8(sp)
    80007a1c:	01013183          	ld	gp,16(sp)
    80007a20:	02013283          	ld	t0,32(sp)
    80007a24:	02813303          	ld	t1,40(sp)
    80007a28:	03013383          	ld	t2,48(sp)
    80007a2c:	03813403          	ld	s0,56(sp)
    80007a30:	04013483          	ld	s1,64(sp)
    80007a34:	04813503          	ld	a0,72(sp)
    80007a38:	05013583          	ld	a1,80(sp)
    80007a3c:	05813603          	ld	a2,88(sp)
    80007a40:	06013683          	ld	a3,96(sp)
    80007a44:	06813703          	ld	a4,104(sp)
    80007a48:	07013783          	ld	a5,112(sp)
    80007a4c:	07813803          	ld	a6,120(sp)
    80007a50:	08013883          	ld	a7,128(sp)
    80007a54:	08813903          	ld	s2,136(sp)
    80007a58:	09013983          	ld	s3,144(sp)
    80007a5c:	09813a03          	ld	s4,152(sp)
    80007a60:	0a013a83          	ld	s5,160(sp)
    80007a64:	0a813b03          	ld	s6,168(sp)
    80007a68:	0b013b83          	ld	s7,176(sp)
    80007a6c:	0b813c03          	ld	s8,184(sp)
    80007a70:	0c013c83          	ld	s9,192(sp)
    80007a74:	0c813d03          	ld	s10,200(sp)
    80007a78:	0d013d83          	ld	s11,208(sp)
    80007a7c:	0d813e03          	ld	t3,216(sp)
    80007a80:	0e013e83          	ld	t4,224(sp)
    80007a84:	0e813f03          	ld	t5,232(sp)
    80007a88:	0f013f83          	ld	t6,240(sp)
    80007a8c:	10010113          	addi	sp,sp,256
    80007a90:	10200073          	sret
    80007a94:	00000013          	nop
    80007a98:	00000013          	nop
    80007a9c:	00000013          	nop

0000000080007aa0 <timervec>:
    80007aa0:	34051573          	csrrw	a0,mscratch,a0
    80007aa4:	00b53023          	sd	a1,0(a0)
    80007aa8:	00c53423          	sd	a2,8(a0)
    80007aac:	00d53823          	sd	a3,16(a0)
    80007ab0:	01853583          	ld	a1,24(a0)
    80007ab4:	02053603          	ld	a2,32(a0)
    80007ab8:	0005b683          	ld	a3,0(a1)
    80007abc:	00c686b3          	add	a3,a3,a2
    80007ac0:	00d5b023          	sd	a3,0(a1)
    80007ac4:	00200593          	li	a1,2
    80007ac8:	14459073          	csrw	sip,a1
    80007acc:	01053683          	ld	a3,16(a0)
    80007ad0:	00853603          	ld	a2,8(a0)
    80007ad4:	00053583          	ld	a1,0(a0)
    80007ad8:	34051573          	csrrw	a0,mscratch,a0
    80007adc:	30200073          	mret

0000000080007ae0 <plicinit>:
    80007ae0:	ff010113          	addi	sp,sp,-16
    80007ae4:	00813423          	sd	s0,8(sp)
    80007ae8:	01010413          	addi	s0,sp,16
    80007aec:	00813403          	ld	s0,8(sp)
    80007af0:	0c0007b7          	lui	a5,0xc000
    80007af4:	00100713          	li	a4,1
    80007af8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80007afc:	00e7a223          	sw	a4,4(a5)
    80007b00:	01010113          	addi	sp,sp,16
    80007b04:	00008067          	ret

0000000080007b08 <plicinithart>:
    80007b08:	ff010113          	addi	sp,sp,-16
    80007b0c:	00813023          	sd	s0,0(sp)
    80007b10:	00113423          	sd	ra,8(sp)
    80007b14:	01010413          	addi	s0,sp,16
    80007b18:	00000097          	auipc	ra,0x0
    80007b1c:	a44080e7          	jalr	-1468(ra) # 8000755c <cpuid>
    80007b20:	0085171b          	slliw	a4,a0,0x8
    80007b24:	0c0027b7          	lui	a5,0xc002
    80007b28:	00e787b3          	add	a5,a5,a4
    80007b2c:	40200713          	li	a4,1026
    80007b30:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007b34:	00813083          	ld	ra,8(sp)
    80007b38:	00013403          	ld	s0,0(sp)
    80007b3c:	00d5151b          	slliw	a0,a0,0xd
    80007b40:	0c2017b7          	lui	a5,0xc201
    80007b44:	00a78533          	add	a0,a5,a0
    80007b48:	00052023          	sw	zero,0(a0)
    80007b4c:	01010113          	addi	sp,sp,16
    80007b50:	00008067          	ret

0000000080007b54 <plic_claim>:
    80007b54:	ff010113          	addi	sp,sp,-16
    80007b58:	00813023          	sd	s0,0(sp)
    80007b5c:	00113423          	sd	ra,8(sp)
    80007b60:	01010413          	addi	s0,sp,16
    80007b64:	00000097          	auipc	ra,0x0
    80007b68:	9f8080e7          	jalr	-1544(ra) # 8000755c <cpuid>
    80007b6c:	00813083          	ld	ra,8(sp)
    80007b70:	00013403          	ld	s0,0(sp)
    80007b74:	00d5151b          	slliw	a0,a0,0xd
    80007b78:	0c2017b7          	lui	a5,0xc201
    80007b7c:	00a78533          	add	a0,a5,a0
    80007b80:	00452503          	lw	a0,4(a0)
    80007b84:	01010113          	addi	sp,sp,16
    80007b88:	00008067          	ret

0000000080007b8c <plic_complete>:
    80007b8c:	fe010113          	addi	sp,sp,-32
    80007b90:	00813823          	sd	s0,16(sp)
    80007b94:	00913423          	sd	s1,8(sp)
    80007b98:	00113c23          	sd	ra,24(sp)
    80007b9c:	02010413          	addi	s0,sp,32
    80007ba0:	00050493          	mv	s1,a0
    80007ba4:	00000097          	auipc	ra,0x0
    80007ba8:	9b8080e7          	jalr	-1608(ra) # 8000755c <cpuid>
    80007bac:	01813083          	ld	ra,24(sp)
    80007bb0:	01013403          	ld	s0,16(sp)
    80007bb4:	00d5179b          	slliw	a5,a0,0xd
    80007bb8:	0c201737          	lui	a4,0xc201
    80007bbc:	00f707b3          	add	a5,a4,a5
    80007bc0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007bc4:	00813483          	ld	s1,8(sp)
    80007bc8:	02010113          	addi	sp,sp,32
    80007bcc:	00008067          	ret

0000000080007bd0 <consolewrite>:
    80007bd0:	fb010113          	addi	sp,sp,-80
    80007bd4:	04813023          	sd	s0,64(sp)
    80007bd8:	04113423          	sd	ra,72(sp)
    80007bdc:	02913c23          	sd	s1,56(sp)
    80007be0:	03213823          	sd	s2,48(sp)
    80007be4:	03313423          	sd	s3,40(sp)
    80007be8:	03413023          	sd	s4,32(sp)
    80007bec:	01513c23          	sd	s5,24(sp)
    80007bf0:	05010413          	addi	s0,sp,80
    80007bf4:	06c05c63          	blez	a2,80007c6c <consolewrite+0x9c>
    80007bf8:	00060993          	mv	s3,a2
    80007bfc:	00050a13          	mv	s4,a0
    80007c00:	00058493          	mv	s1,a1
    80007c04:	00000913          	li	s2,0
    80007c08:	fff00a93          	li	s5,-1
    80007c0c:	01c0006f          	j	80007c28 <consolewrite+0x58>
    80007c10:	fbf44503          	lbu	a0,-65(s0)
    80007c14:	0019091b          	addiw	s2,s2,1
    80007c18:	00148493          	addi	s1,s1,1
    80007c1c:	00001097          	auipc	ra,0x1
    80007c20:	a9c080e7          	jalr	-1380(ra) # 800086b8 <uartputc>
    80007c24:	03298063          	beq	s3,s2,80007c44 <consolewrite+0x74>
    80007c28:	00048613          	mv	a2,s1
    80007c2c:	00100693          	li	a3,1
    80007c30:	000a0593          	mv	a1,s4
    80007c34:	fbf40513          	addi	a0,s0,-65
    80007c38:	00000097          	auipc	ra,0x0
    80007c3c:	9dc080e7          	jalr	-1572(ra) # 80007614 <either_copyin>
    80007c40:	fd5518e3          	bne	a0,s5,80007c10 <consolewrite+0x40>
    80007c44:	04813083          	ld	ra,72(sp)
    80007c48:	04013403          	ld	s0,64(sp)
    80007c4c:	03813483          	ld	s1,56(sp)
    80007c50:	02813983          	ld	s3,40(sp)
    80007c54:	02013a03          	ld	s4,32(sp)
    80007c58:	01813a83          	ld	s5,24(sp)
    80007c5c:	00090513          	mv	a0,s2
    80007c60:	03013903          	ld	s2,48(sp)
    80007c64:	05010113          	addi	sp,sp,80
    80007c68:	00008067          	ret
    80007c6c:	00000913          	li	s2,0
    80007c70:	fd5ff06f          	j	80007c44 <consolewrite+0x74>

0000000080007c74 <consoleread>:
    80007c74:	f9010113          	addi	sp,sp,-112
    80007c78:	06813023          	sd	s0,96(sp)
    80007c7c:	04913c23          	sd	s1,88(sp)
    80007c80:	05213823          	sd	s2,80(sp)
    80007c84:	05313423          	sd	s3,72(sp)
    80007c88:	05413023          	sd	s4,64(sp)
    80007c8c:	03513c23          	sd	s5,56(sp)
    80007c90:	03613823          	sd	s6,48(sp)
    80007c94:	03713423          	sd	s7,40(sp)
    80007c98:	03813023          	sd	s8,32(sp)
    80007c9c:	06113423          	sd	ra,104(sp)
    80007ca0:	01913c23          	sd	s9,24(sp)
    80007ca4:	07010413          	addi	s0,sp,112
    80007ca8:	00060b93          	mv	s7,a2
    80007cac:	00050913          	mv	s2,a0
    80007cb0:	00058c13          	mv	s8,a1
    80007cb4:	00060b1b          	sext.w	s6,a2
    80007cb8:	00006497          	auipc	s1,0x6
    80007cbc:	15048493          	addi	s1,s1,336 # 8000de08 <cons>
    80007cc0:	00400993          	li	s3,4
    80007cc4:	fff00a13          	li	s4,-1
    80007cc8:	00a00a93          	li	s5,10
    80007ccc:	05705e63          	blez	s7,80007d28 <consoleread+0xb4>
    80007cd0:	09c4a703          	lw	a4,156(s1)
    80007cd4:	0984a783          	lw	a5,152(s1)
    80007cd8:	0007071b          	sext.w	a4,a4
    80007cdc:	08e78463          	beq	a5,a4,80007d64 <consoleread+0xf0>
    80007ce0:	07f7f713          	andi	a4,a5,127
    80007ce4:	00e48733          	add	a4,s1,a4
    80007ce8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007cec:	0017869b          	addiw	a3,a5,1
    80007cf0:	08d4ac23          	sw	a3,152(s1)
    80007cf4:	00070c9b          	sext.w	s9,a4
    80007cf8:	0b370663          	beq	a4,s3,80007da4 <consoleread+0x130>
    80007cfc:	00100693          	li	a3,1
    80007d00:	f9f40613          	addi	a2,s0,-97
    80007d04:	000c0593          	mv	a1,s8
    80007d08:	00090513          	mv	a0,s2
    80007d0c:	f8e40fa3          	sb	a4,-97(s0)
    80007d10:	00000097          	auipc	ra,0x0
    80007d14:	8b8080e7          	jalr	-1864(ra) # 800075c8 <either_copyout>
    80007d18:	01450863          	beq	a0,s4,80007d28 <consoleread+0xb4>
    80007d1c:	001c0c13          	addi	s8,s8,1
    80007d20:	fffb8b9b          	addiw	s7,s7,-1
    80007d24:	fb5c94e3          	bne	s9,s5,80007ccc <consoleread+0x58>
    80007d28:	000b851b          	sext.w	a0,s7
    80007d2c:	06813083          	ld	ra,104(sp)
    80007d30:	06013403          	ld	s0,96(sp)
    80007d34:	05813483          	ld	s1,88(sp)
    80007d38:	05013903          	ld	s2,80(sp)
    80007d3c:	04813983          	ld	s3,72(sp)
    80007d40:	04013a03          	ld	s4,64(sp)
    80007d44:	03813a83          	ld	s5,56(sp)
    80007d48:	02813b83          	ld	s7,40(sp)
    80007d4c:	02013c03          	ld	s8,32(sp)
    80007d50:	01813c83          	ld	s9,24(sp)
    80007d54:	40ab053b          	subw	a0,s6,a0
    80007d58:	03013b03          	ld	s6,48(sp)
    80007d5c:	07010113          	addi	sp,sp,112
    80007d60:	00008067          	ret
    80007d64:	00001097          	auipc	ra,0x1
    80007d68:	1d8080e7          	jalr	472(ra) # 80008f3c <push_on>
    80007d6c:	0984a703          	lw	a4,152(s1)
    80007d70:	09c4a783          	lw	a5,156(s1)
    80007d74:	0007879b          	sext.w	a5,a5
    80007d78:	fef70ce3          	beq	a4,a5,80007d70 <consoleread+0xfc>
    80007d7c:	00001097          	auipc	ra,0x1
    80007d80:	234080e7          	jalr	564(ra) # 80008fb0 <pop_on>
    80007d84:	0984a783          	lw	a5,152(s1)
    80007d88:	07f7f713          	andi	a4,a5,127
    80007d8c:	00e48733          	add	a4,s1,a4
    80007d90:	01874703          	lbu	a4,24(a4)
    80007d94:	0017869b          	addiw	a3,a5,1
    80007d98:	08d4ac23          	sw	a3,152(s1)
    80007d9c:	00070c9b          	sext.w	s9,a4
    80007da0:	f5371ee3          	bne	a4,s3,80007cfc <consoleread+0x88>
    80007da4:	000b851b          	sext.w	a0,s7
    80007da8:	f96bf2e3          	bgeu	s7,s6,80007d2c <consoleread+0xb8>
    80007dac:	08f4ac23          	sw	a5,152(s1)
    80007db0:	f7dff06f          	j	80007d2c <consoleread+0xb8>

0000000080007db4 <consputc>:
    80007db4:	10000793          	li	a5,256
    80007db8:	00f50663          	beq	a0,a5,80007dc4 <consputc+0x10>
    80007dbc:	00001317          	auipc	t1,0x1
    80007dc0:	9f430067          	jr	-1548(t1) # 800087b0 <uartputc_sync>
    80007dc4:	ff010113          	addi	sp,sp,-16
    80007dc8:	00113423          	sd	ra,8(sp)
    80007dcc:	00813023          	sd	s0,0(sp)
    80007dd0:	01010413          	addi	s0,sp,16
    80007dd4:	00800513          	li	a0,8
    80007dd8:	00001097          	auipc	ra,0x1
    80007ddc:	9d8080e7          	jalr	-1576(ra) # 800087b0 <uartputc_sync>
    80007de0:	02000513          	li	a0,32
    80007de4:	00001097          	auipc	ra,0x1
    80007de8:	9cc080e7          	jalr	-1588(ra) # 800087b0 <uartputc_sync>
    80007dec:	00013403          	ld	s0,0(sp)
    80007df0:	00813083          	ld	ra,8(sp)
    80007df4:	00800513          	li	a0,8
    80007df8:	01010113          	addi	sp,sp,16
    80007dfc:	00001317          	auipc	t1,0x1
    80007e00:	9b430067          	jr	-1612(t1) # 800087b0 <uartputc_sync>

0000000080007e04 <consoleintr>:
    80007e04:	fe010113          	addi	sp,sp,-32
    80007e08:	00813823          	sd	s0,16(sp)
    80007e0c:	00913423          	sd	s1,8(sp)
    80007e10:	01213023          	sd	s2,0(sp)
    80007e14:	00113c23          	sd	ra,24(sp)
    80007e18:	02010413          	addi	s0,sp,32
    80007e1c:	00006917          	auipc	s2,0x6
    80007e20:	fec90913          	addi	s2,s2,-20 # 8000de08 <cons>
    80007e24:	00050493          	mv	s1,a0
    80007e28:	00090513          	mv	a0,s2
    80007e2c:	00001097          	auipc	ra,0x1
    80007e30:	e40080e7          	jalr	-448(ra) # 80008c6c <acquire>
    80007e34:	02048c63          	beqz	s1,80007e6c <consoleintr+0x68>
    80007e38:	0a092783          	lw	a5,160(s2)
    80007e3c:	09892703          	lw	a4,152(s2)
    80007e40:	07f00693          	li	a3,127
    80007e44:	40e7873b          	subw	a4,a5,a4
    80007e48:	02e6e263          	bltu	a3,a4,80007e6c <consoleintr+0x68>
    80007e4c:	00d00713          	li	a4,13
    80007e50:	04e48063          	beq	s1,a4,80007e90 <consoleintr+0x8c>
    80007e54:	07f7f713          	andi	a4,a5,127
    80007e58:	00e90733          	add	a4,s2,a4
    80007e5c:	0017879b          	addiw	a5,a5,1
    80007e60:	0af92023          	sw	a5,160(s2)
    80007e64:	00970c23          	sb	s1,24(a4)
    80007e68:	08f92e23          	sw	a5,156(s2)
    80007e6c:	01013403          	ld	s0,16(sp)
    80007e70:	01813083          	ld	ra,24(sp)
    80007e74:	00813483          	ld	s1,8(sp)
    80007e78:	00013903          	ld	s2,0(sp)
    80007e7c:	00006517          	auipc	a0,0x6
    80007e80:	f8c50513          	addi	a0,a0,-116 # 8000de08 <cons>
    80007e84:	02010113          	addi	sp,sp,32
    80007e88:	00001317          	auipc	t1,0x1
    80007e8c:	eb030067          	jr	-336(t1) # 80008d38 <release>
    80007e90:	00a00493          	li	s1,10
    80007e94:	fc1ff06f          	j	80007e54 <consoleintr+0x50>

0000000080007e98 <consoleinit>:
    80007e98:	fe010113          	addi	sp,sp,-32
    80007e9c:	00113c23          	sd	ra,24(sp)
    80007ea0:	00813823          	sd	s0,16(sp)
    80007ea4:	00913423          	sd	s1,8(sp)
    80007ea8:	02010413          	addi	s0,sp,32
    80007eac:	00006497          	auipc	s1,0x6
    80007eb0:	f5c48493          	addi	s1,s1,-164 # 8000de08 <cons>
    80007eb4:	00048513          	mv	a0,s1
    80007eb8:	00003597          	auipc	a1,0x3
    80007ebc:	89858593          	addi	a1,a1,-1896 # 8000a750 <CONSOLE_STATUS+0x738>
    80007ec0:	00001097          	auipc	ra,0x1
    80007ec4:	d88080e7          	jalr	-632(ra) # 80008c48 <initlock>
    80007ec8:	00000097          	auipc	ra,0x0
    80007ecc:	7ac080e7          	jalr	1964(ra) # 80008674 <uartinit>
    80007ed0:	01813083          	ld	ra,24(sp)
    80007ed4:	01013403          	ld	s0,16(sp)
    80007ed8:	00000797          	auipc	a5,0x0
    80007edc:	d9c78793          	addi	a5,a5,-612 # 80007c74 <consoleread>
    80007ee0:	0af4bc23          	sd	a5,184(s1)
    80007ee4:	00000797          	auipc	a5,0x0
    80007ee8:	cec78793          	addi	a5,a5,-788 # 80007bd0 <consolewrite>
    80007eec:	0cf4b023          	sd	a5,192(s1)
    80007ef0:	00813483          	ld	s1,8(sp)
    80007ef4:	02010113          	addi	sp,sp,32
    80007ef8:	00008067          	ret

0000000080007efc <console_read>:
    80007efc:	ff010113          	addi	sp,sp,-16
    80007f00:	00813423          	sd	s0,8(sp)
    80007f04:	01010413          	addi	s0,sp,16
    80007f08:	00813403          	ld	s0,8(sp)
    80007f0c:	00006317          	auipc	t1,0x6
    80007f10:	fb433303          	ld	t1,-76(t1) # 8000dec0 <devsw+0x10>
    80007f14:	01010113          	addi	sp,sp,16
    80007f18:	00030067          	jr	t1

0000000080007f1c <console_write>:
    80007f1c:	ff010113          	addi	sp,sp,-16
    80007f20:	00813423          	sd	s0,8(sp)
    80007f24:	01010413          	addi	s0,sp,16
    80007f28:	00813403          	ld	s0,8(sp)
    80007f2c:	00006317          	auipc	t1,0x6
    80007f30:	f9c33303          	ld	t1,-100(t1) # 8000dec8 <devsw+0x18>
    80007f34:	01010113          	addi	sp,sp,16
    80007f38:	00030067          	jr	t1

0000000080007f3c <panic>:
    80007f3c:	fe010113          	addi	sp,sp,-32
    80007f40:	00113c23          	sd	ra,24(sp)
    80007f44:	00813823          	sd	s0,16(sp)
    80007f48:	00913423          	sd	s1,8(sp)
    80007f4c:	02010413          	addi	s0,sp,32
    80007f50:	00050493          	mv	s1,a0
    80007f54:	00003517          	auipc	a0,0x3
    80007f58:	80450513          	addi	a0,a0,-2044 # 8000a758 <CONSOLE_STATUS+0x740>
    80007f5c:	00006797          	auipc	a5,0x6
    80007f60:	0007a623          	sw	zero,12(a5) # 8000df68 <pr+0x18>
    80007f64:	00000097          	auipc	ra,0x0
    80007f68:	034080e7          	jalr	52(ra) # 80007f98 <__printf>
    80007f6c:	00048513          	mv	a0,s1
    80007f70:	00000097          	auipc	ra,0x0
    80007f74:	028080e7          	jalr	40(ra) # 80007f98 <__printf>
    80007f78:	00002517          	auipc	a0,0x2
    80007f7c:	5d850513          	addi	a0,a0,1496 # 8000a550 <CONSOLE_STATUS+0x538>
    80007f80:	00000097          	auipc	ra,0x0
    80007f84:	018080e7          	jalr	24(ra) # 80007f98 <__printf>
    80007f88:	00100793          	li	a5,1
    80007f8c:	00005717          	auipc	a4,0x5
    80007f90:	ccf72e23          	sw	a5,-804(a4) # 8000cc68 <panicked>
    80007f94:	0000006f          	j	80007f94 <panic+0x58>

0000000080007f98 <__printf>:
    80007f98:	f3010113          	addi	sp,sp,-208
    80007f9c:	08813023          	sd	s0,128(sp)
    80007fa0:	07313423          	sd	s3,104(sp)
    80007fa4:	09010413          	addi	s0,sp,144
    80007fa8:	05813023          	sd	s8,64(sp)
    80007fac:	08113423          	sd	ra,136(sp)
    80007fb0:	06913c23          	sd	s1,120(sp)
    80007fb4:	07213823          	sd	s2,112(sp)
    80007fb8:	07413023          	sd	s4,96(sp)
    80007fbc:	05513c23          	sd	s5,88(sp)
    80007fc0:	05613823          	sd	s6,80(sp)
    80007fc4:	05713423          	sd	s7,72(sp)
    80007fc8:	03913c23          	sd	s9,56(sp)
    80007fcc:	03a13823          	sd	s10,48(sp)
    80007fd0:	03b13423          	sd	s11,40(sp)
    80007fd4:	00006317          	auipc	t1,0x6
    80007fd8:	f7c30313          	addi	t1,t1,-132 # 8000df50 <pr>
    80007fdc:	01832c03          	lw	s8,24(t1)
    80007fe0:	00b43423          	sd	a1,8(s0)
    80007fe4:	00c43823          	sd	a2,16(s0)
    80007fe8:	00d43c23          	sd	a3,24(s0)
    80007fec:	02e43023          	sd	a4,32(s0)
    80007ff0:	02f43423          	sd	a5,40(s0)
    80007ff4:	03043823          	sd	a6,48(s0)
    80007ff8:	03143c23          	sd	a7,56(s0)
    80007ffc:	00050993          	mv	s3,a0
    80008000:	4a0c1663          	bnez	s8,800084ac <__printf+0x514>
    80008004:	60098c63          	beqz	s3,8000861c <__printf+0x684>
    80008008:	0009c503          	lbu	a0,0(s3)
    8000800c:	00840793          	addi	a5,s0,8
    80008010:	f6f43c23          	sd	a5,-136(s0)
    80008014:	00000493          	li	s1,0
    80008018:	22050063          	beqz	a0,80008238 <__printf+0x2a0>
    8000801c:	00002a37          	lui	s4,0x2
    80008020:	00018ab7          	lui	s5,0x18
    80008024:	000f4b37          	lui	s6,0xf4
    80008028:	00989bb7          	lui	s7,0x989
    8000802c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80008030:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80008034:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80008038:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000803c:	00148c9b          	addiw	s9,s1,1
    80008040:	02500793          	li	a5,37
    80008044:	01998933          	add	s2,s3,s9
    80008048:	38f51263          	bne	a0,a5,800083cc <__printf+0x434>
    8000804c:	00094783          	lbu	a5,0(s2)
    80008050:	00078c9b          	sext.w	s9,a5
    80008054:	1e078263          	beqz	a5,80008238 <__printf+0x2a0>
    80008058:	0024849b          	addiw	s1,s1,2
    8000805c:	07000713          	li	a4,112
    80008060:	00998933          	add	s2,s3,s1
    80008064:	38e78a63          	beq	a5,a4,800083f8 <__printf+0x460>
    80008068:	20f76863          	bltu	a4,a5,80008278 <__printf+0x2e0>
    8000806c:	42a78863          	beq	a5,a0,8000849c <__printf+0x504>
    80008070:	06400713          	li	a4,100
    80008074:	40e79663          	bne	a5,a4,80008480 <__printf+0x4e8>
    80008078:	f7843783          	ld	a5,-136(s0)
    8000807c:	0007a603          	lw	a2,0(a5)
    80008080:	00878793          	addi	a5,a5,8
    80008084:	f6f43c23          	sd	a5,-136(s0)
    80008088:	42064a63          	bltz	a2,800084bc <__printf+0x524>
    8000808c:	00a00713          	li	a4,10
    80008090:	02e677bb          	remuw	a5,a2,a4
    80008094:	00002d97          	auipc	s11,0x2
    80008098:	6ecd8d93          	addi	s11,s11,1772 # 8000a780 <digits>
    8000809c:	00900593          	li	a1,9
    800080a0:	0006051b          	sext.w	a0,a2
    800080a4:	00000c93          	li	s9,0
    800080a8:	02079793          	slli	a5,a5,0x20
    800080ac:	0207d793          	srli	a5,a5,0x20
    800080b0:	00fd87b3          	add	a5,s11,a5
    800080b4:	0007c783          	lbu	a5,0(a5)
    800080b8:	02e656bb          	divuw	a3,a2,a4
    800080bc:	f8f40023          	sb	a5,-128(s0)
    800080c0:	14c5d863          	bge	a1,a2,80008210 <__printf+0x278>
    800080c4:	06300593          	li	a1,99
    800080c8:	00100c93          	li	s9,1
    800080cc:	02e6f7bb          	remuw	a5,a3,a4
    800080d0:	02079793          	slli	a5,a5,0x20
    800080d4:	0207d793          	srli	a5,a5,0x20
    800080d8:	00fd87b3          	add	a5,s11,a5
    800080dc:	0007c783          	lbu	a5,0(a5)
    800080e0:	02e6d73b          	divuw	a4,a3,a4
    800080e4:	f8f400a3          	sb	a5,-127(s0)
    800080e8:	12a5f463          	bgeu	a1,a0,80008210 <__printf+0x278>
    800080ec:	00a00693          	li	a3,10
    800080f0:	00900593          	li	a1,9
    800080f4:	02d777bb          	remuw	a5,a4,a3
    800080f8:	02079793          	slli	a5,a5,0x20
    800080fc:	0207d793          	srli	a5,a5,0x20
    80008100:	00fd87b3          	add	a5,s11,a5
    80008104:	0007c503          	lbu	a0,0(a5)
    80008108:	02d757bb          	divuw	a5,a4,a3
    8000810c:	f8a40123          	sb	a0,-126(s0)
    80008110:	48e5f263          	bgeu	a1,a4,80008594 <__printf+0x5fc>
    80008114:	06300513          	li	a0,99
    80008118:	02d7f5bb          	remuw	a1,a5,a3
    8000811c:	02059593          	slli	a1,a1,0x20
    80008120:	0205d593          	srli	a1,a1,0x20
    80008124:	00bd85b3          	add	a1,s11,a1
    80008128:	0005c583          	lbu	a1,0(a1)
    8000812c:	02d7d7bb          	divuw	a5,a5,a3
    80008130:	f8b401a3          	sb	a1,-125(s0)
    80008134:	48e57263          	bgeu	a0,a4,800085b8 <__printf+0x620>
    80008138:	3e700513          	li	a0,999
    8000813c:	02d7f5bb          	remuw	a1,a5,a3
    80008140:	02059593          	slli	a1,a1,0x20
    80008144:	0205d593          	srli	a1,a1,0x20
    80008148:	00bd85b3          	add	a1,s11,a1
    8000814c:	0005c583          	lbu	a1,0(a1)
    80008150:	02d7d7bb          	divuw	a5,a5,a3
    80008154:	f8b40223          	sb	a1,-124(s0)
    80008158:	46e57663          	bgeu	a0,a4,800085c4 <__printf+0x62c>
    8000815c:	02d7f5bb          	remuw	a1,a5,a3
    80008160:	02059593          	slli	a1,a1,0x20
    80008164:	0205d593          	srli	a1,a1,0x20
    80008168:	00bd85b3          	add	a1,s11,a1
    8000816c:	0005c583          	lbu	a1,0(a1)
    80008170:	02d7d7bb          	divuw	a5,a5,a3
    80008174:	f8b402a3          	sb	a1,-123(s0)
    80008178:	46ea7863          	bgeu	s4,a4,800085e8 <__printf+0x650>
    8000817c:	02d7f5bb          	remuw	a1,a5,a3
    80008180:	02059593          	slli	a1,a1,0x20
    80008184:	0205d593          	srli	a1,a1,0x20
    80008188:	00bd85b3          	add	a1,s11,a1
    8000818c:	0005c583          	lbu	a1,0(a1)
    80008190:	02d7d7bb          	divuw	a5,a5,a3
    80008194:	f8b40323          	sb	a1,-122(s0)
    80008198:	3eeaf863          	bgeu	s5,a4,80008588 <__printf+0x5f0>
    8000819c:	02d7f5bb          	remuw	a1,a5,a3
    800081a0:	02059593          	slli	a1,a1,0x20
    800081a4:	0205d593          	srli	a1,a1,0x20
    800081a8:	00bd85b3          	add	a1,s11,a1
    800081ac:	0005c583          	lbu	a1,0(a1)
    800081b0:	02d7d7bb          	divuw	a5,a5,a3
    800081b4:	f8b403a3          	sb	a1,-121(s0)
    800081b8:	42eb7e63          	bgeu	s6,a4,800085f4 <__printf+0x65c>
    800081bc:	02d7f5bb          	remuw	a1,a5,a3
    800081c0:	02059593          	slli	a1,a1,0x20
    800081c4:	0205d593          	srli	a1,a1,0x20
    800081c8:	00bd85b3          	add	a1,s11,a1
    800081cc:	0005c583          	lbu	a1,0(a1)
    800081d0:	02d7d7bb          	divuw	a5,a5,a3
    800081d4:	f8b40423          	sb	a1,-120(s0)
    800081d8:	42ebfc63          	bgeu	s7,a4,80008610 <__printf+0x678>
    800081dc:	02079793          	slli	a5,a5,0x20
    800081e0:	0207d793          	srli	a5,a5,0x20
    800081e4:	00fd8db3          	add	s11,s11,a5
    800081e8:	000dc703          	lbu	a4,0(s11)
    800081ec:	00a00793          	li	a5,10
    800081f0:	00900c93          	li	s9,9
    800081f4:	f8e404a3          	sb	a4,-119(s0)
    800081f8:	00065c63          	bgez	a2,80008210 <__printf+0x278>
    800081fc:	f9040713          	addi	a4,s0,-112
    80008200:	00f70733          	add	a4,a4,a5
    80008204:	02d00693          	li	a3,45
    80008208:	fed70823          	sb	a3,-16(a4)
    8000820c:	00078c93          	mv	s9,a5
    80008210:	f8040793          	addi	a5,s0,-128
    80008214:	01978cb3          	add	s9,a5,s9
    80008218:	f7f40d13          	addi	s10,s0,-129
    8000821c:	000cc503          	lbu	a0,0(s9)
    80008220:	fffc8c93          	addi	s9,s9,-1
    80008224:	00000097          	auipc	ra,0x0
    80008228:	b90080e7          	jalr	-1136(ra) # 80007db4 <consputc>
    8000822c:	ffac98e3          	bne	s9,s10,8000821c <__printf+0x284>
    80008230:	00094503          	lbu	a0,0(s2)
    80008234:	e00514e3          	bnez	a0,8000803c <__printf+0xa4>
    80008238:	1a0c1663          	bnez	s8,800083e4 <__printf+0x44c>
    8000823c:	08813083          	ld	ra,136(sp)
    80008240:	08013403          	ld	s0,128(sp)
    80008244:	07813483          	ld	s1,120(sp)
    80008248:	07013903          	ld	s2,112(sp)
    8000824c:	06813983          	ld	s3,104(sp)
    80008250:	06013a03          	ld	s4,96(sp)
    80008254:	05813a83          	ld	s5,88(sp)
    80008258:	05013b03          	ld	s6,80(sp)
    8000825c:	04813b83          	ld	s7,72(sp)
    80008260:	04013c03          	ld	s8,64(sp)
    80008264:	03813c83          	ld	s9,56(sp)
    80008268:	03013d03          	ld	s10,48(sp)
    8000826c:	02813d83          	ld	s11,40(sp)
    80008270:	0d010113          	addi	sp,sp,208
    80008274:	00008067          	ret
    80008278:	07300713          	li	a4,115
    8000827c:	1ce78a63          	beq	a5,a4,80008450 <__printf+0x4b8>
    80008280:	07800713          	li	a4,120
    80008284:	1ee79e63          	bne	a5,a4,80008480 <__printf+0x4e8>
    80008288:	f7843783          	ld	a5,-136(s0)
    8000828c:	0007a703          	lw	a4,0(a5)
    80008290:	00878793          	addi	a5,a5,8
    80008294:	f6f43c23          	sd	a5,-136(s0)
    80008298:	28074263          	bltz	a4,8000851c <__printf+0x584>
    8000829c:	00002d97          	auipc	s11,0x2
    800082a0:	4e4d8d93          	addi	s11,s11,1252 # 8000a780 <digits>
    800082a4:	00f77793          	andi	a5,a4,15
    800082a8:	00fd87b3          	add	a5,s11,a5
    800082ac:	0007c683          	lbu	a3,0(a5)
    800082b0:	00f00613          	li	a2,15
    800082b4:	0007079b          	sext.w	a5,a4
    800082b8:	f8d40023          	sb	a3,-128(s0)
    800082bc:	0047559b          	srliw	a1,a4,0x4
    800082c0:	0047569b          	srliw	a3,a4,0x4
    800082c4:	00000c93          	li	s9,0
    800082c8:	0ee65063          	bge	a2,a4,800083a8 <__printf+0x410>
    800082cc:	00f6f693          	andi	a3,a3,15
    800082d0:	00dd86b3          	add	a3,s11,a3
    800082d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800082d8:	0087d79b          	srliw	a5,a5,0x8
    800082dc:	00100c93          	li	s9,1
    800082e0:	f8d400a3          	sb	a3,-127(s0)
    800082e4:	0cb67263          	bgeu	a2,a1,800083a8 <__printf+0x410>
    800082e8:	00f7f693          	andi	a3,a5,15
    800082ec:	00dd86b3          	add	a3,s11,a3
    800082f0:	0006c583          	lbu	a1,0(a3)
    800082f4:	00f00613          	li	a2,15
    800082f8:	0047d69b          	srliw	a3,a5,0x4
    800082fc:	f8b40123          	sb	a1,-126(s0)
    80008300:	0047d593          	srli	a1,a5,0x4
    80008304:	28f67e63          	bgeu	a2,a5,800085a0 <__printf+0x608>
    80008308:	00f6f693          	andi	a3,a3,15
    8000830c:	00dd86b3          	add	a3,s11,a3
    80008310:	0006c503          	lbu	a0,0(a3)
    80008314:	0087d813          	srli	a6,a5,0x8
    80008318:	0087d69b          	srliw	a3,a5,0x8
    8000831c:	f8a401a3          	sb	a0,-125(s0)
    80008320:	28b67663          	bgeu	a2,a1,800085ac <__printf+0x614>
    80008324:	00f6f693          	andi	a3,a3,15
    80008328:	00dd86b3          	add	a3,s11,a3
    8000832c:	0006c583          	lbu	a1,0(a3)
    80008330:	00c7d513          	srli	a0,a5,0xc
    80008334:	00c7d69b          	srliw	a3,a5,0xc
    80008338:	f8b40223          	sb	a1,-124(s0)
    8000833c:	29067a63          	bgeu	a2,a6,800085d0 <__printf+0x638>
    80008340:	00f6f693          	andi	a3,a3,15
    80008344:	00dd86b3          	add	a3,s11,a3
    80008348:	0006c583          	lbu	a1,0(a3)
    8000834c:	0107d813          	srli	a6,a5,0x10
    80008350:	0107d69b          	srliw	a3,a5,0x10
    80008354:	f8b402a3          	sb	a1,-123(s0)
    80008358:	28a67263          	bgeu	a2,a0,800085dc <__printf+0x644>
    8000835c:	00f6f693          	andi	a3,a3,15
    80008360:	00dd86b3          	add	a3,s11,a3
    80008364:	0006c683          	lbu	a3,0(a3)
    80008368:	0147d79b          	srliw	a5,a5,0x14
    8000836c:	f8d40323          	sb	a3,-122(s0)
    80008370:	21067663          	bgeu	a2,a6,8000857c <__printf+0x5e4>
    80008374:	02079793          	slli	a5,a5,0x20
    80008378:	0207d793          	srli	a5,a5,0x20
    8000837c:	00fd8db3          	add	s11,s11,a5
    80008380:	000dc683          	lbu	a3,0(s11)
    80008384:	00800793          	li	a5,8
    80008388:	00700c93          	li	s9,7
    8000838c:	f8d403a3          	sb	a3,-121(s0)
    80008390:	00075c63          	bgez	a4,800083a8 <__printf+0x410>
    80008394:	f9040713          	addi	a4,s0,-112
    80008398:	00f70733          	add	a4,a4,a5
    8000839c:	02d00693          	li	a3,45
    800083a0:	fed70823          	sb	a3,-16(a4)
    800083a4:	00078c93          	mv	s9,a5
    800083a8:	f8040793          	addi	a5,s0,-128
    800083ac:	01978cb3          	add	s9,a5,s9
    800083b0:	f7f40d13          	addi	s10,s0,-129
    800083b4:	000cc503          	lbu	a0,0(s9)
    800083b8:	fffc8c93          	addi	s9,s9,-1
    800083bc:	00000097          	auipc	ra,0x0
    800083c0:	9f8080e7          	jalr	-1544(ra) # 80007db4 <consputc>
    800083c4:	ff9d18e3          	bne	s10,s9,800083b4 <__printf+0x41c>
    800083c8:	0100006f          	j	800083d8 <__printf+0x440>
    800083cc:	00000097          	auipc	ra,0x0
    800083d0:	9e8080e7          	jalr	-1560(ra) # 80007db4 <consputc>
    800083d4:	000c8493          	mv	s1,s9
    800083d8:	00094503          	lbu	a0,0(s2)
    800083dc:	c60510e3          	bnez	a0,8000803c <__printf+0xa4>
    800083e0:	e40c0ee3          	beqz	s8,8000823c <__printf+0x2a4>
    800083e4:	00006517          	auipc	a0,0x6
    800083e8:	b6c50513          	addi	a0,a0,-1172 # 8000df50 <pr>
    800083ec:	00001097          	auipc	ra,0x1
    800083f0:	94c080e7          	jalr	-1716(ra) # 80008d38 <release>
    800083f4:	e49ff06f          	j	8000823c <__printf+0x2a4>
    800083f8:	f7843783          	ld	a5,-136(s0)
    800083fc:	03000513          	li	a0,48
    80008400:	01000d13          	li	s10,16
    80008404:	00878713          	addi	a4,a5,8
    80008408:	0007bc83          	ld	s9,0(a5)
    8000840c:	f6e43c23          	sd	a4,-136(s0)
    80008410:	00000097          	auipc	ra,0x0
    80008414:	9a4080e7          	jalr	-1628(ra) # 80007db4 <consputc>
    80008418:	07800513          	li	a0,120
    8000841c:	00000097          	auipc	ra,0x0
    80008420:	998080e7          	jalr	-1640(ra) # 80007db4 <consputc>
    80008424:	00002d97          	auipc	s11,0x2
    80008428:	35cd8d93          	addi	s11,s11,860 # 8000a780 <digits>
    8000842c:	03ccd793          	srli	a5,s9,0x3c
    80008430:	00fd87b3          	add	a5,s11,a5
    80008434:	0007c503          	lbu	a0,0(a5)
    80008438:	fffd0d1b          	addiw	s10,s10,-1
    8000843c:	004c9c93          	slli	s9,s9,0x4
    80008440:	00000097          	auipc	ra,0x0
    80008444:	974080e7          	jalr	-1676(ra) # 80007db4 <consputc>
    80008448:	fe0d12e3          	bnez	s10,8000842c <__printf+0x494>
    8000844c:	f8dff06f          	j	800083d8 <__printf+0x440>
    80008450:	f7843783          	ld	a5,-136(s0)
    80008454:	0007bc83          	ld	s9,0(a5)
    80008458:	00878793          	addi	a5,a5,8
    8000845c:	f6f43c23          	sd	a5,-136(s0)
    80008460:	000c9a63          	bnez	s9,80008474 <__printf+0x4dc>
    80008464:	1080006f          	j	8000856c <__printf+0x5d4>
    80008468:	001c8c93          	addi	s9,s9,1
    8000846c:	00000097          	auipc	ra,0x0
    80008470:	948080e7          	jalr	-1720(ra) # 80007db4 <consputc>
    80008474:	000cc503          	lbu	a0,0(s9)
    80008478:	fe0518e3          	bnez	a0,80008468 <__printf+0x4d0>
    8000847c:	f5dff06f          	j	800083d8 <__printf+0x440>
    80008480:	02500513          	li	a0,37
    80008484:	00000097          	auipc	ra,0x0
    80008488:	930080e7          	jalr	-1744(ra) # 80007db4 <consputc>
    8000848c:	000c8513          	mv	a0,s9
    80008490:	00000097          	auipc	ra,0x0
    80008494:	924080e7          	jalr	-1756(ra) # 80007db4 <consputc>
    80008498:	f41ff06f          	j	800083d8 <__printf+0x440>
    8000849c:	02500513          	li	a0,37
    800084a0:	00000097          	auipc	ra,0x0
    800084a4:	914080e7          	jalr	-1772(ra) # 80007db4 <consputc>
    800084a8:	f31ff06f          	j	800083d8 <__printf+0x440>
    800084ac:	00030513          	mv	a0,t1
    800084b0:	00000097          	auipc	ra,0x0
    800084b4:	7bc080e7          	jalr	1980(ra) # 80008c6c <acquire>
    800084b8:	b4dff06f          	j	80008004 <__printf+0x6c>
    800084bc:	40c0053b          	negw	a0,a2
    800084c0:	00a00713          	li	a4,10
    800084c4:	02e576bb          	remuw	a3,a0,a4
    800084c8:	00002d97          	auipc	s11,0x2
    800084cc:	2b8d8d93          	addi	s11,s11,696 # 8000a780 <digits>
    800084d0:	ff700593          	li	a1,-9
    800084d4:	02069693          	slli	a3,a3,0x20
    800084d8:	0206d693          	srli	a3,a3,0x20
    800084dc:	00dd86b3          	add	a3,s11,a3
    800084e0:	0006c683          	lbu	a3,0(a3)
    800084e4:	02e557bb          	divuw	a5,a0,a4
    800084e8:	f8d40023          	sb	a3,-128(s0)
    800084ec:	10b65e63          	bge	a2,a1,80008608 <__printf+0x670>
    800084f0:	06300593          	li	a1,99
    800084f4:	02e7f6bb          	remuw	a3,a5,a4
    800084f8:	02069693          	slli	a3,a3,0x20
    800084fc:	0206d693          	srli	a3,a3,0x20
    80008500:	00dd86b3          	add	a3,s11,a3
    80008504:	0006c683          	lbu	a3,0(a3)
    80008508:	02e7d73b          	divuw	a4,a5,a4
    8000850c:	00200793          	li	a5,2
    80008510:	f8d400a3          	sb	a3,-127(s0)
    80008514:	bca5ece3          	bltu	a1,a0,800080ec <__printf+0x154>
    80008518:	ce5ff06f          	j	800081fc <__printf+0x264>
    8000851c:	40e007bb          	negw	a5,a4
    80008520:	00002d97          	auipc	s11,0x2
    80008524:	260d8d93          	addi	s11,s11,608 # 8000a780 <digits>
    80008528:	00f7f693          	andi	a3,a5,15
    8000852c:	00dd86b3          	add	a3,s11,a3
    80008530:	0006c583          	lbu	a1,0(a3)
    80008534:	ff100613          	li	a2,-15
    80008538:	0047d69b          	srliw	a3,a5,0x4
    8000853c:	f8b40023          	sb	a1,-128(s0)
    80008540:	0047d59b          	srliw	a1,a5,0x4
    80008544:	0ac75e63          	bge	a4,a2,80008600 <__printf+0x668>
    80008548:	00f6f693          	andi	a3,a3,15
    8000854c:	00dd86b3          	add	a3,s11,a3
    80008550:	0006c603          	lbu	a2,0(a3)
    80008554:	00f00693          	li	a3,15
    80008558:	0087d79b          	srliw	a5,a5,0x8
    8000855c:	f8c400a3          	sb	a2,-127(s0)
    80008560:	d8b6e4e3          	bltu	a3,a1,800082e8 <__printf+0x350>
    80008564:	00200793          	li	a5,2
    80008568:	e2dff06f          	j	80008394 <__printf+0x3fc>
    8000856c:	00002c97          	auipc	s9,0x2
    80008570:	1f4c8c93          	addi	s9,s9,500 # 8000a760 <CONSOLE_STATUS+0x748>
    80008574:	02800513          	li	a0,40
    80008578:	ef1ff06f          	j	80008468 <__printf+0x4d0>
    8000857c:	00700793          	li	a5,7
    80008580:	00600c93          	li	s9,6
    80008584:	e0dff06f          	j	80008390 <__printf+0x3f8>
    80008588:	00700793          	li	a5,7
    8000858c:	00600c93          	li	s9,6
    80008590:	c69ff06f          	j	800081f8 <__printf+0x260>
    80008594:	00300793          	li	a5,3
    80008598:	00200c93          	li	s9,2
    8000859c:	c5dff06f          	j	800081f8 <__printf+0x260>
    800085a0:	00300793          	li	a5,3
    800085a4:	00200c93          	li	s9,2
    800085a8:	de9ff06f          	j	80008390 <__printf+0x3f8>
    800085ac:	00400793          	li	a5,4
    800085b0:	00300c93          	li	s9,3
    800085b4:	dddff06f          	j	80008390 <__printf+0x3f8>
    800085b8:	00400793          	li	a5,4
    800085bc:	00300c93          	li	s9,3
    800085c0:	c39ff06f          	j	800081f8 <__printf+0x260>
    800085c4:	00500793          	li	a5,5
    800085c8:	00400c93          	li	s9,4
    800085cc:	c2dff06f          	j	800081f8 <__printf+0x260>
    800085d0:	00500793          	li	a5,5
    800085d4:	00400c93          	li	s9,4
    800085d8:	db9ff06f          	j	80008390 <__printf+0x3f8>
    800085dc:	00600793          	li	a5,6
    800085e0:	00500c93          	li	s9,5
    800085e4:	dadff06f          	j	80008390 <__printf+0x3f8>
    800085e8:	00600793          	li	a5,6
    800085ec:	00500c93          	li	s9,5
    800085f0:	c09ff06f          	j	800081f8 <__printf+0x260>
    800085f4:	00800793          	li	a5,8
    800085f8:	00700c93          	li	s9,7
    800085fc:	bfdff06f          	j	800081f8 <__printf+0x260>
    80008600:	00100793          	li	a5,1
    80008604:	d91ff06f          	j	80008394 <__printf+0x3fc>
    80008608:	00100793          	li	a5,1
    8000860c:	bf1ff06f          	j	800081fc <__printf+0x264>
    80008610:	00900793          	li	a5,9
    80008614:	00800c93          	li	s9,8
    80008618:	be1ff06f          	j	800081f8 <__printf+0x260>
    8000861c:	00002517          	auipc	a0,0x2
    80008620:	14c50513          	addi	a0,a0,332 # 8000a768 <CONSOLE_STATUS+0x750>
    80008624:	00000097          	auipc	ra,0x0
    80008628:	918080e7          	jalr	-1768(ra) # 80007f3c <panic>

000000008000862c <printfinit>:
    8000862c:	fe010113          	addi	sp,sp,-32
    80008630:	00813823          	sd	s0,16(sp)
    80008634:	00913423          	sd	s1,8(sp)
    80008638:	00113c23          	sd	ra,24(sp)
    8000863c:	02010413          	addi	s0,sp,32
    80008640:	00006497          	auipc	s1,0x6
    80008644:	91048493          	addi	s1,s1,-1776 # 8000df50 <pr>
    80008648:	00048513          	mv	a0,s1
    8000864c:	00002597          	auipc	a1,0x2
    80008650:	12c58593          	addi	a1,a1,300 # 8000a778 <CONSOLE_STATUS+0x760>
    80008654:	00000097          	auipc	ra,0x0
    80008658:	5f4080e7          	jalr	1524(ra) # 80008c48 <initlock>
    8000865c:	01813083          	ld	ra,24(sp)
    80008660:	01013403          	ld	s0,16(sp)
    80008664:	0004ac23          	sw	zero,24(s1)
    80008668:	00813483          	ld	s1,8(sp)
    8000866c:	02010113          	addi	sp,sp,32
    80008670:	00008067          	ret

0000000080008674 <uartinit>:
    80008674:	ff010113          	addi	sp,sp,-16
    80008678:	00813423          	sd	s0,8(sp)
    8000867c:	01010413          	addi	s0,sp,16
    80008680:	100007b7          	lui	a5,0x10000
    80008684:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008688:	f8000713          	li	a4,-128
    8000868c:	00e781a3          	sb	a4,3(a5)
    80008690:	00300713          	li	a4,3
    80008694:	00e78023          	sb	a4,0(a5)
    80008698:	000780a3          	sb	zero,1(a5)
    8000869c:	00e781a3          	sb	a4,3(a5)
    800086a0:	00700693          	li	a3,7
    800086a4:	00d78123          	sb	a3,2(a5)
    800086a8:	00e780a3          	sb	a4,1(a5)
    800086ac:	00813403          	ld	s0,8(sp)
    800086b0:	01010113          	addi	sp,sp,16
    800086b4:	00008067          	ret

00000000800086b8 <uartputc>:
    800086b8:	00004797          	auipc	a5,0x4
    800086bc:	5b07a783          	lw	a5,1456(a5) # 8000cc68 <panicked>
    800086c0:	00078463          	beqz	a5,800086c8 <uartputc+0x10>
    800086c4:	0000006f          	j	800086c4 <uartputc+0xc>
    800086c8:	fd010113          	addi	sp,sp,-48
    800086cc:	02813023          	sd	s0,32(sp)
    800086d0:	00913c23          	sd	s1,24(sp)
    800086d4:	01213823          	sd	s2,16(sp)
    800086d8:	01313423          	sd	s3,8(sp)
    800086dc:	02113423          	sd	ra,40(sp)
    800086e0:	03010413          	addi	s0,sp,48
    800086e4:	00004917          	auipc	s2,0x4
    800086e8:	58c90913          	addi	s2,s2,1420 # 8000cc70 <uart_tx_r>
    800086ec:	00093783          	ld	a5,0(s2)
    800086f0:	00004497          	auipc	s1,0x4
    800086f4:	58848493          	addi	s1,s1,1416 # 8000cc78 <uart_tx_w>
    800086f8:	0004b703          	ld	a4,0(s1)
    800086fc:	02078693          	addi	a3,a5,32
    80008700:	00050993          	mv	s3,a0
    80008704:	02e69c63          	bne	a3,a4,8000873c <uartputc+0x84>
    80008708:	00001097          	auipc	ra,0x1
    8000870c:	834080e7          	jalr	-1996(ra) # 80008f3c <push_on>
    80008710:	00093783          	ld	a5,0(s2)
    80008714:	0004b703          	ld	a4,0(s1)
    80008718:	02078793          	addi	a5,a5,32
    8000871c:	00e79463          	bne	a5,a4,80008724 <uartputc+0x6c>
    80008720:	0000006f          	j	80008720 <uartputc+0x68>
    80008724:	00001097          	auipc	ra,0x1
    80008728:	88c080e7          	jalr	-1908(ra) # 80008fb0 <pop_on>
    8000872c:	00093783          	ld	a5,0(s2)
    80008730:	0004b703          	ld	a4,0(s1)
    80008734:	02078693          	addi	a3,a5,32
    80008738:	fce688e3          	beq	a3,a4,80008708 <uartputc+0x50>
    8000873c:	01f77693          	andi	a3,a4,31
    80008740:	00006597          	auipc	a1,0x6
    80008744:	83058593          	addi	a1,a1,-2000 # 8000df70 <uart_tx_buf>
    80008748:	00d586b3          	add	a3,a1,a3
    8000874c:	00170713          	addi	a4,a4,1
    80008750:	01368023          	sb	s3,0(a3)
    80008754:	00e4b023          	sd	a4,0(s1)
    80008758:	10000637          	lui	a2,0x10000
    8000875c:	02f71063          	bne	a4,a5,8000877c <uartputc+0xc4>
    80008760:	0340006f          	j	80008794 <uartputc+0xdc>
    80008764:	00074703          	lbu	a4,0(a4)
    80008768:	00f93023          	sd	a5,0(s2)
    8000876c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008770:	00093783          	ld	a5,0(s2)
    80008774:	0004b703          	ld	a4,0(s1)
    80008778:	00f70e63          	beq	a4,a5,80008794 <uartputc+0xdc>
    8000877c:	00564683          	lbu	a3,5(a2)
    80008780:	01f7f713          	andi	a4,a5,31
    80008784:	00e58733          	add	a4,a1,a4
    80008788:	0206f693          	andi	a3,a3,32
    8000878c:	00178793          	addi	a5,a5,1
    80008790:	fc069ae3          	bnez	a3,80008764 <uartputc+0xac>
    80008794:	02813083          	ld	ra,40(sp)
    80008798:	02013403          	ld	s0,32(sp)
    8000879c:	01813483          	ld	s1,24(sp)
    800087a0:	01013903          	ld	s2,16(sp)
    800087a4:	00813983          	ld	s3,8(sp)
    800087a8:	03010113          	addi	sp,sp,48
    800087ac:	00008067          	ret

00000000800087b0 <uartputc_sync>:
    800087b0:	ff010113          	addi	sp,sp,-16
    800087b4:	00813423          	sd	s0,8(sp)
    800087b8:	01010413          	addi	s0,sp,16
    800087bc:	00004717          	auipc	a4,0x4
    800087c0:	4ac72703          	lw	a4,1196(a4) # 8000cc68 <panicked>
    800087c4:	02071663          	bnez	a4,800087f0 <uartputc_sync+0x40>
    800087c8:	00050793          	mv	a5,a0
    800087cc:	100006b7          	lui	a3,0x10000
    800087d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800087d4:	02077713          	andi	a4,a4,32
    800087d8:	fe070ce3          	beqz	a4,800087d0 <uartputc_sync+0x20>
    800087dc:	0ff7f793          	andi	a5,a5,255
    800087e0:	00f68023          	sb	a5,0(a3)
    800087e4:	00813403          	ld	s0,8(sp)
    800087e8:	01010113          	addi	sp,sp,16
    800087ec:	00008067          	ret
    800087f0:	0000006f          	j	800087f0 <uartputc_sync+0x40>

00000000800087f4 <uartstart>:
    800087f4:	ff010113          	addi	sp,sp,-16
    800087f8:	00813423          	sd	s0,8(sp)
    800087fc:	01010413          	addi	s0,sp,16
    80008800:	00004617          	auipc	a2,0x4
    80008804:	47060613          	addi	a2,a2,1136 # 8000cc70 <uart_tx_r>
    80008808:	00004517          	auipc	a0,0x4
    8000880c:	47050513          	addi	a0,a0,1136 # 8000cc78 <uart_tx_w>
    80008810:	00063783          	ld	a5,0(a2)
    80008814:	00053703          	ld	a4,0(a0)
    80008818:	04f70263          	beq	a4,a5,8000885c <uartstart+0x68>
    8000881c:	100005b7          	lui	a1,0x10000
    80008820:	00005817          	auipc	a6,0x5
    80008824:	75080813          	addi	a6,a6,1872 # 8000df70 <uart_tx_buf>
    80008828:	01c0006f          	j	80008844 <uartstart+0x50>
    8000882c:	0006c703          	lbu	a4,0(a3)
    80008830:	00f63023          	sd	a5,0(a2)
    80008834:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008838:	00063783          	ld	a5,0(a2)
    8000883c:	00053703          	ld	a4,0(a0)
    80008840:	00f70e63          	beq	a4,a5,8000885c <uartstart+0x68>
    80008844:	01f7f713          	andi	a4,a5,31
    80008848:	00e806b3          	add	a3,a6,a4
    8000884c:	0055c703          	lbu	a4,5(a1)
    80008850:	00178793          	addi	a5,a5,1
    80008854:	02077713          	andi	a4,a4,32
    80008858:	fc071ae3          	bnez	a4,8000882c <uartstart+0x38>
    8000885c:	00813403          	ld	s0,8(sp)
    80008860:	01010113          	addi	sp,sp,16
    80008864:	00008067          	ret

0000000080008868 <uartgetc>:
    80008868:	ff010113          	addi	sp,sp,-16
    8000886c:	00813423          	sd	s0,8(sp)
    80008870:	01010413          	addi	s0,sp,16
    80008874:	10000737          	lui	a4,0x10000
    80008878:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000887c:	0017f793          	andi	a5,a5,1
    80008880:	00078c63          	beqz	a5,80008898 <uartgetc+0x30>
    80008884:	00074503          	lbu	a0,0(a4)
    80008888:	0ff57513          	andi	a0,a0,255
    8000888c:	00813403          	ld	s0,8(sp)
    80008890:	01010113          	addi	sp,sp,16
    80008894:	00008067          	ret
    80008898:	fff00513          	li	a0,-1
    8000889c:	ff1ff06f          	j	8000888c <uartgetc+0x24>

00000000800088a0 <uartintr>:
    800088a0:	100007b7          	lui	a5,0x10000
    800088a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800088a8:	0017f793          	andi	a5,a5,1
    800088ac:	0a078463          	beqz	a5,80008954 <uartintr+0xb4>
    800088b0:	fe010113          	addi	sp,sp,-32
    800088b4:	00813823          	sd	s0,16(sp)
    800088b8:	00913423          	sd	s1,8(sp)
    800088bc:	00113c23          	sd	ra,24(sp)
    800088c0:	02010413          	addi	s0,sp,32
    800088c4:	100004b7          	lui	s1,0x10000
    800088c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800088cc:	0ff57513          	andi	a0,a0,255
    800088d0:	fffff097          	auipc	ra,0xfffff
    800088d4:	534080e7          	jalr	1332(ra) # 80007e04 <consoleintr>
    800088d8:	0054c783          	lbu	a5,5(s1)
    800088dc:	0017f793          	andi	a5,a5,1
    800088e0:	fe0794e3          	bnez	a5,800088c8 <uartintr+0x28>
    800088e4:	00004617          	auipc	a2,0x4
    800088e8:	38c60613          	addi	a2,a2,908 # 8000cc70 <uart_tx_r>
    800088ec:	00004517          	auipc	a0,0x4
    800088f0:	38c50513          	addi	a0,a0,908 # 8000cc78 <uart_tx_w>
    800088f4:	00063783          	ld	a5,0(a2)
    800088f8:	00053703          	ld	a4,0(a0)
    800088fc:	04f70263          	beq	a4,a5,80008940 <uartintr+0xa0>
    80008900:	100005b7          	lui	a1,0x10000
    80008904:	00005817          	auipc	a6,0x5
    80008908:	66c80813          	addi	a6,a6,1644 # 8000df70 <uart_tx_buf>
    8000890c:	01c0006f          	j	80008928 <uartintr+0x88>
    80008910:	0006c703          	lbu	a4,0(a3)
    80008914:	00f63023          	sd	a5,0(a2)
    80008918:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000891c:	00063783          	ld	a5,0(a2)
    80008920:	00053703          	ld	a4,0(a0)
    80008924:	00f70e63          	beq	a4,a5,80008940 <uartintr+0xa0>
    80008928:	01f7f713          	andi	a4,a5,31
    8000892c:	00e806b3          	add	a3,a6,a4
    80008930:	0055c703          	lbu	a4,5(a1)
    80008934:	00178793          	addi	a5,a5,1
    80008938:	02077713          	andi	a4,a4,32
    8000893c:	fc071ae3          	bnez	a4,80008910 <uartintr+0x70>
    80008940:	01813083          	ld	ra,24(sp)
    80008944:	01013403          	ld	s0,16(sp)
    80008948:	00813483          	ld	s1,8(sp)
    8000894c:	02010113          	addi	sp,sp,32
    80008950:	00008067          	ret
    80008954:	00004617          	auipc	a2,0x4
    80008958:	31c60613          	addi	a2,a2,796 # 8000cc70 <uart_tx_r>
    8000895c:	00004517          	auipc	a0,0x4
    80008960:	31c50513          	addi	a0,a0,796 # 8000cc78 <uart_tx_w>
    80008964:	00063783          	ld	a5,0(a2)
    80008968:	00053703          	ld	a4,0(a0)
    8000896c:	04f70263          	beq	a4,a5,800089b0 <uartintr+0x110>
    80008970:	100005b7          	lui	a1,0x10000
    80008974:	00005817          	auipc	a6,0x5
    80008978:	5fc80813          	addi	a6,a6,1532 # 8000df70 <uart_tx_buf>
    8000897c:	01c0006f          	j	80008998 <uartintr+0xf8>
    80008980:	0006c703          	lbu	a4,0(a3)
    80008984:	00f63023          	sd	a5,0(a2)
    80008988:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000898c:	00063783          	ld	a5,0(a2)
    80008990:	00053703          	ld	a4,0(a0)
    80008994:	02f70063          	beq	a4,a5,800089b4 <uartintr+0x114>
    80008998:	01f7f713          	andi	a4,a5,31
    8000899c:	00e806b3          	add	a3,a6,a4
    800089a0:	0055c703          	lbu	a4,5(a1)
    800089a4:	00178793          	addi	a5,a5,1
    800089a8:	02077713          	andi	a4,a4,32
    800089ac:	fc071ae3          	bnez	a4,80008980 <uartintr+0xe0>
    800089b0:	00008067          	ret
    800089b4:	00008067          	ret

00000000800089b8 <kinit>:
    800089b8:	fc010113          	addi	sp,sp,-64
    800089bc:	02913423          	sd	s1,40(sp)
    800089c0:	fffff7b7          	lui	a5,0xfffff
    800089c4:	00006497          	auipc	s1,0x6
    800089c8:	5cb48493          	addi	s1,s1,1483 # 8000ef8f <end+0xfff>
    800089cc:	02813823          	sd	s0,48(sp)
    800089d0:	01313c23          	sd	s3,24(sp)
    800089d4:	00f4f4b3          	and	s1,s1,a5
    800089d8:	02113c23          	sd	ra,56(sp)
    800089dc:	03213023          	sd	s2,32(sp)
    800089e0:	01413823          	sd	s4,16(sp)
    800089e4:	01513423          	sd	s5,8(sp)
    800089e8:	04010413          	addi	s0,sp,64
    800089ec:	000017b7          	lui	a5,0x1
    800089f0:	01100993          	li	s3,17
    800089f4:	00f487b3          	add	a5,s1,a5
    800089f8:	01b99993          	slli	s3,s3,0x1b
    800089fc:	06f9e063          	bltu	s3,a5,80008a5c <kinit+0xa4>
    80008a00:	00005a97          	auipc	s5,0x5
    80008a04:	590a8a93          	addi	s5,s5,1424 # 8000df90 <end>
    80008a08:	0754ec63          	bltu	s1,s5,80008a80 <kinit+0xc8>
    80008a0c:	0734fa63          	bgeu	s1,s3,80008a80 <kinit+0xc8>
    80008a10:	00088a37          	lui	s4,0x88
    80008a14:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008a18:	00004917          	auipc	s2,0x4
    80008a1c:	26890913          	addi	s2,s2,616 # 8000cc80 <kmem>
    80008a20:	00ca1a13          	slli	s4,s4,0xc
    80008a24:	0140006f          	j	80008a38 <kinit+0x80>
    80008a28:	000017b7          	lui	a5,0x1
    80008a2c:	00f484b3          	add	s1,s1,a5
    80008a30:	0554e863          	bltu	s1,s5,80008a80 <kinit+0xc8>
    80008a34:	0534f663          	bgeu	s1,s3,80008a80 <kinit+0xc8>
    80008a38:	00001637          	lui	a2,0x1
    80008a3c:	00100593          	li	a1,1
    80008a40:	00048513          	mv	a0,s1
    80008a44:	00000097          	auipc	ra,0x0
    80008a48:	5e4080e7          	jalr	1508(ra) # 80009028 <__memset>
    80008a4c:	00093783          	ld	a5,0(s2)
    80008a50:	00f4b023          	sd	a5,0(s1)
    80008a54:	00993023          	sd	s1,0(s2)
    80008a58:	fd4498e3          	bne	s1,s4,80008a28 <kinit+0x70>
    80008a5c:	03813083          	ld	ra,56(sp)
    80008a60:	03013403          	ld	s0,48(sp)
    80008a64:	02813483          	ld	s1,40(sp)
    80008a68:	02013903          	ld	s2,32(sp)
    80008a6c:	01813983          	ld	s3,24(sp)
    80008a70:	01013a03          	ld	s4,16(sp)
    80008a74:	00813a83          	ld	s5,8(sp)
    80008a78:	04010113          	addi	sp,sp,64
    80008a7c:	00008067          	ret
    80008a80:	00002517          	auipc	a0,0x2
    80008a84:	d1850513          	addi	a0,a0,-744 # 8000a798 <digits+0x18>
    80008a88:	fffff097          	auipc	ra,0xfffff
    80008a8c:	4b4080e7          	jalr	1204(ra) # 80007f3c <panic>

0000000080008a90 <freerange>:
    80008a90:	fc010113          	addi	sp,sp,-64
    80008a94:	000017b7          	lui	a5,0x1
    80008a98:	02913423          	sd	s1,40(sp)
    80008a9c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008aa0:	009504b3          	add	s1,a0,s1
    80008aa4:	fffff537          	lui	a0,0xfffff
    80008aa8:	02813823          	sd	s0,48(sp)
    80008aac:	02113c23          	sd	ra,56(sp)
    80008ab0:	03213023          	sd	s2,32(sp)
    80008ab4:	01313c23          	sd	s3,24(sp)
    80008ab8:	01413823          	sd	s4,16(sp)
    80008abc:	01513423          	sd	s5,8(sp)
    80008ac0:	01613023          	sd	s6,0(sp)
    80008ac4:	04010413          	addi	s0,sp,64
    80008ac8:	00a4f4b3          	and	s1,s1,a0
    80008acc:	00f487b3          	add	a5,s1,a5
    80008ad0:	06f5e463          	bltu	a1,a5,80008b38 <freerange+0xa8>
    80008ad4:	00005a97          	auipc	s5,0x5
    80008ad8:	4bca8a93          	addi	s5,s5,1212 # 8000df90 <end>
    80008adc:	0954e263          	bltu	s1,s5,80008b60 <freerange+0xd0>
    80008ae0:	01100993          	li	s3,17
    80008ae4:	01b99993          	slli	s3,s3,0x1b
    80008ae8:	0734fc63          	bgeu	s1,s3,80008b60 <freerange+0xd0>
    80008aec:	00058a13          	mv	s4,a1
    80008af0:	00004917          	auipc	s2,0x4
    80008af4:	19090913          	addi	s2,s2,400 # 8000cc80 <kmem>
    80008af8:	00002b37          	lui	s6,0x2
    80008afc:	0140006f          	j	80008b10 <freerange+0x80>
    80008b00:	000017b7          	lui	a5,0x1
    80008b04:	00f484b3          	add	s1,s1,a5
    80008b08:	0554ec63          	bltu	s1,s5,80008b60 <freerange+0xd0>
    80008b0c:	0534fa63          	bgeu	s1,s3,80008b60 <freerange+0xd0>
    80008b10:	00001637          	lui	a2,0x1
    80008b14:	00100593          	li	a1,1
    80008b18:	00048513          	mv	a0,s1
    80008b1c:	00000097          	auipc	ra,0x0
    80008b20:	50c080e7          	jalr	1292(ra) # 80009028 <__memset>
    80008b24:	00093703          	ld	a4,0(s2)
    80008b28:	016487b3          	add	a5,s1,s6
    80008b2c:	00e4b023          	sd	a4,0(s1)
    80008b30:	00993023          	sd	s1,0(s2)
    80008b34:	fcfa76e3          	bgeu	s4,a5,80008b00 <freerange+0x70>
    80008b38:	03813083          	ld	ra,56(sp)
    80008b3c:	03013403          	ld	s0,48(sp)
    80008b40:	02813483          	ld	s1,40(sp)
    80008b44:	02013903          	ld	s2,32(sp)
    80008b48:	01813983          	ld	s3,24(sp)
    80008b4c:	01013a03          	ld	s4,16(sp)
    80008b50:	00813a83          	ld	s5,8(sp)
    80008b54:	00013b03          	ld	s6,0(sp)
    80008b58:	04010113          	addi	sp,sp,64
    80008b5c:	00008067          	ret
    80008b60:	00002517          	auipc	a0,0x2
    80008b64:	c3850513          	addi	a0,a0,-968 # 8000a798 <digits+0x18>
    80008b68:	fffff097          	auipc	ra,0xfffff
    80008b6c:	3d4080e7          	jalr	980(ra) # 80007f3c <panic>

0000000080008b70 <kfree>:
    80008b70:	fe010113          	addi	sp,sp,-32
    80008b74:	00813823          	sd	s0,16(sp)
    80008b78:	00113c23          	sd	ra,24(sp)
    80008b7c:	00913423          	sd	s1,8(sp)
    80008b80:	02010413          	addi	s0,sp,32
    80008b84:	03451793          	slli	a5,a0,0x34
    80008b88:	04079c63          	bnez	a5,80008be0 <kfree+0x70>
    80008b8c:	00005797          	auipc	a5,0x5
    80008b90:	40478793          	addi	a5,a5,1028 # 8000df90 <end>
    80008b94:	00050493          	mv	s1,a0
    80008b98:	04f56463          	bltu	a0,a5,80008be0 <kfree+0x70>
    80008b9c:	01100793          	li	a5,17
    80008ba0:	01b79793          	slli	a5,a5,0x1b
    80008ba4:	02f57e63          	bgeu	a0,a5,80008be0 <kfree+0x70>
    80008ba8:	00001637          	lui	a2,0x1
    80008bac:	00100593          	li	a1,1
    80008bb0:	00000097          	auipc	ra,0x0
    80008bb4:	478080e7          	jalr	1144(ra) # 80009028 <__memset>
    80008bb8:	00004797          	auipc	a5,0x4
    80008bbc:	0c878793          	addi	a5,a5,200 # 8000cc80 <kmem>
    80008bc0:	0007b703          	ld	a4,0(a5)
    80008bc4:	01813083          	ld	ra,24(sp)
    80008bc8:	01013403          	ld	s0,16(sp)
    80008bcc:	00e4b023          	sd	a4,0(s1)
    80008bd0:	0097b023          	sd	s1,0(a5)
    80008bd4:	00813483          	ld	s1,8(sp)
    80008bd8:	02010113          	addi	sp,sp,32
    80008bdc:	00008067          	ret
    80008be0:	00002517          	auipc	a0,0x2
    80008be4:	bb850513          	addi	a0,a0,-1096 # 8000a798 <digits+0x18>
    80008be8:	fffff097          	auipc	ra,0xfffff
    80008bec:	354080e7          	jalr	852(ra) # 80007f3c <panic>

0000000080008bf0 <kalloc>:
    80008bf0:	fe010113          	addi	sp,sp,-32
    80008bf4:	00813823          	sd	s0,16(sp)
    80008bf8:	00913423          	sd	s1,8(sp)
    80008bfc:	00113c23          	sd	ra,24(sp)
    80008c00:	02010413          	addi	s0,sp,32
    80008c04:	00004797          	auipc	a5,0x4
    80008c08:	07c78793          	addi	a5,a5,124 # 8000cc80 <kmem>
    80008c0c:	0007b483          	ld	s1,0(a5)
    80008c10:	02048063          	beqz	s1,80008c30 <kalloc+0x40>
    80008c14:	0004b703          	ld	a4,0(s1)
    80008c18:	00001637          	lui	a2,0x1
    80008c1c:	00500593          	li	a1,5
    80008c20:	00048513          	mv	a0,s1
    80008c24:	00e7b023          	sd	a4,0(a5)
    80008c28:	00000097          	auipc	ra,0x0
    80008c2c:	400080e7          	jalr	1024(ra) # 80009028 <__memset>
    80008c30:	01813083          	ld	ra,24(sp)
    80008c34:	01013403          	ld	s0,16(sp)
    80008c38:	00048513          	mv	a0,s1
    80008c3c:	00813483          	ld	s1,8(sp)
    80008c40:	02010113          	addi	sp,sp,32
    80008c44:	00008067          	ret

0000000080008c48 <initlock>:
    80008c48:	ff010113          	addi	sp,sp,-16
    80008c4c:	00813423          	sd	s0,8(sp)
    80008c50:	01010413          	addi	s0,sp,16
    80008c54:	00813403          	ld	s0,8(sp)
    80008c58:	00b53423          	sd	a1,8(a0)
    80008c5c:	00052023          	sw	zero,0(a0)
    80008c60:	00053823          	sd	zero,16(a0)
    80008c64:	01010113          	addi	sp,sp,16
    80008c68:	00008067          	ret

0000000080008c6c <acquire>:
    80008c6c:	fe010113          	addi	sp,sp,-32
    80008c70:	00813823          	sd	s0,16(sp)
    80008c74:	00913423          	sd	s1,8(sp)
    80008c78:	00113c23          	sd	ra,24(sp)
    80008c7c:	01213023          	sd	s2,0(sp)
    80008c80:	02010413          	addi	s0,sp,32
    80008c84:	00050493          	mv	s1,a0
    80008c88:	10002973          	csrr	s2,sstatus
    80008c8c:	100027f3          	csrr	a5,sstatus
    80008c90:	ffd7f793          	andi	a5,a5,-3
    80008c94:	10079073          	csrw	sstatus,a5
    80008c98:	fffff097          	auipc	ra,0xfffff
    80008c9c:	8e4080e7          	jalr	-1820(ra) # 8000757c <mycpu>
    80008ca0:	07852783          	lw	a5,120(a0)
    80008ca4:	06078e63          	beqz	a5,80008d20 <acquire+0xb4>
    80008ca8:	fffff097          	auipc	ra,0xfffff
    80008cac:	8d4080e7          	jalr	-1836(ra) # 8000757c <mycpu>
    80008cb0:	07852783          	lw	a5,120(a0)
    80008cb4:	0004a703          	lw	a4,0(s1)
    80008cb8:	0017879b          	addiw	a5,a5,1
    80008cbc:	06f52c23          	sw	a5,120(a0)
    80008cc0:	04071063          	bnez	a4,80008d00 <acquire+0x94>
    80008cc4:	00100713          	li	a4,1
    80008cc8:	00070793          	mv	a5,a4
    80008ccc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008cd0:	0007879b          	sext.w	a5,a5
    80008cd4:	fe079ae3          	bnez	a5,80008cc8 <acquire+0x5c>
    80008cd8:	0ff0000f          	fence
    80008cdc:	fffff097          	auipc	ra,0xfffff
    80008ce0:	8a0080e7          	jalr	-1888(ra) # 8000757c <mycpu>
    80008ce4:	01813083          	ld	ra,24(sp)
    80008ce8:	01013403          	ld	s0,16(sp)
    80008cec:	00a4b823          	sd	a0,16(s1)
    80008cf0:	00013903          	ld	s2,0(sp)
    80008cf4:	00813483          	ld	s1,8(sp)
    80008cf8:	02010113          	addi	sp,sp,32
    80008cfc:	00008067          	ret
    80008d00:	0104b903          	ld	s2,16(s1)
    80008d04:	fffff097          	auipc	ra,0xfffff
    80008d08:	878080e7          	jalr	-1928(ra) # 8000757c <mycpu>
    80008d0c:	faa91ce3          	bne	s2,a0,80008cc4 <acquire+0x58>
    80008d10:	00002517          	auipc	a0,0x2
    80008d14:	a9050513          	addi	a0,a0,-1392 # 8000a7a0 <digits+0x20>
    80008d18:	fffff097          	auipc	ra,0xfffff
    80008d1c:	224080e7          	jalr	548(ra) # 80007f3c <panic>
    80008d20:	00195913          	srli	s2,s2,0x1
    80008d24:	fffff097          	auipc	ra,0xfffff
    80008d28:	858080e7          	jalr	-1960(ra) # 8000757c <mycpu>
    80008d2c:	00197913          	andi	s2,s2,1
    80008d30:	07252e23          	sw	s2,124(a0)
    80008d34:	f75ff06f          	j	80008ca8 <acquire+0x3c>

0000000080008d38 <release>:
    80008d38:	fe010113          	addi	sp,sp,-32
    80008d3c:	00813823          	sd	s0,16(sp)
    80008d40:	00113c23          	sd	ra,24(sp)
    80008d44:	00913423          	sd	s1,8(sp)
    80008d48:	01213023          	sd	s2,0(sp)
    80008d4c:	02010413          	addi	s0,sp,32
    80008d50:	00052783          	lw	a5,0(a0)
    80008d54:	00079a63          	bnez	a5,80008d68 <release+0x30>
    80008d58:	00002517          	auipc	a0,0x2
    80008d5c:	a5050513          	addi	a0,a0,-1456 # 8000a7a8 <digits+0x28>
    80008d60:	fffff097          	auipc	ra,0xfffff
    80008d64:	1dc080e7          	jalr	476(ra) # 80007f3c <panic>
    80008d68:	01053903          	ld	s2,16(a0)
    80008d6c:	00050493          	mv	s1,a0
    80008d70:	fffff097          	auipc	ra,0xfffff
    80008d74:	80c080e7          	jalr	-2036(ra) # 8000757c <mycpu>
    80008d78:	fea910e3          	bne	s2,a0,80008d58 <release+0x20>
    80008d7c:	0004b823          	sd	zero,16(s1)
    80008d80:	0ff0000f          	fence
    80008d84:	0f50000f          	fence	iorw,ow
    80008d88:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008d8c:	ffffe097          	auipc	ra,0xffffe
    80008d90:	7f0080e7          	jalr	2032(ra) # 8000757c <mycpu>
    80008d94:	100027f3          	csrr	a5,sstatus
    80008d98:	0027f793          	andi	a5,a5,2
    80008d9c:	04079a63          	bnez	a5,80008df0 <release+0xb8>
    80008da0:	07852783          	lw	a5,120(a0)
    80008da4:	02f05e63          	blez	a5,80008de0 <release+0xa8>
    80008da8:	fff7871b          	addiw	a4,a5,-1
    80008dac:	06e52c23          	sw	a4,120(a0)
    80008db0:	00071c63          	bnez	a4,80008dc8 <release+0x90>
    80008db4:	07c52783          	lw	a5,124(a0)
    80008db8:	00078863          	beqz	a5,80008dc8 <release+0x90>
    80008dbc:	100027f3          	csrr	a5,sstatus
    80008dc0:	0027e793          	ori	a5,a5,2
    80008dc4:	10079073          	csrw	sstatus,a5
    80008dc8:	01813083          	ld	ra,24(sp)
    80008dcc:	01013403          	ld	s0,16(sp)
    80008dd0:	00813483          	ld	s1,8(sp)
    80008dd4:	00013903          	ld	s2,0(sp)
    80008dd8:	02010113          	addi	sp,sp,32
    80008ddc:	00008067          	ret
    80008de0:	00002517          	auipc	a0,0x2
    80008de4:	9e850513          	addi	a0,a0,-1560 # 8000a7c8 <digits+0x48>
    80008de8:	fffff097          	auipc	ra,0xfffff
    80008dec:	154080e7          	jalr	340(ra) # 80007f3c <panic>
    80008df0:	00002517          	auipc	a0,0x2
    80008df4:	9c050513          	addi	a0,a0,-1600 # 8000a7b0 <digits+0x30>
    80008df8:	fffff097          	auipc	ra,0xfffff
    80008dfc:	144080e7          	jalr	324(ra) # 80007f3c <panic>

0000000080008e00 <holding>:
    80008e00:	00052783          	lw	a5,0(a0)
    80008e04:	00079663          	bnez	a5,80008e10 <holding+0x10>
    80008e08:	00000513          	li	a0,0
    80008e0c:	00008067          	ret
    80008e10:	fe010113          	addi	sp,sp,-32
    80008e14:	00813823          	sd	s0,16(sp)
    80008e18:	00913423          	sd	s1,8(sp)
    80008e1c:	00113c23          	sd	ra,24(sp)
    80008e20:	02010413          	addi	s0,sp,32
    80008e24:	01053483          	ld	s1,16(a0)
    80008e28:	ffffe097          	auipc	ra,0xffffe
    80008e2c:	754080e7          	jalr	1876(ra) # 8000757c <mycpu>
    80008e30:	01813083          	ld	ra,24(sp)
    80008e34:	01013403          	ld	s0,16(sp)
    80008e38:	40a48533          	sub	a0,s1,a0
    80008e3c:	00153513          	seqz	a0,a0
    80008e40:	00813483          	ld	s1,8(sp)
    80008e44:	02010113          	addi	sp,sp,32
    80008e48:	00008067          	ret

0000000080008e4c <push_off>:
    80008e4c:	fe010113          	addi	sp,sp,-32
    80008e50:	00813823          	sd	s0,16(sp)
    80008e54:	00113c23          	sd	ra,24(sp)
    80008e58:	00913423          	sd	s1,8(sp)
    80008e5c:	02010413          	addi	s0,sp,32
    80008e60:	100024f3          	csrr	s1,sstatus
    80008e64:	100027f3          	csrr	a5,sstatus
    80008e68:	ffd7f793          	andi	a5,a5,-3
    80008e6c:	10079073          	csrw	sstatus,a5
    80008e70:	ffffe097          	auipc	ra,0xffffe
    80008e74:	70c080e7          	jalr	1804(ra) # 8000757c <mycpu>
    80008e78:	07852783          	lw	a5,120(a0)
    80008e7c:	02078663          	beqz	a5,80008ea8 <push_off+0x5c>
    80008e80:	ffffe097          	auipc	ra,0xffffe
    80008e84:	6fc080e7          	jalr	1788(ra) # 8000757c <mycpu>
    80008e88:	07852783          	lw	a5,120(a0)
    80008e8c:	01813083          	ld	ra,24(sp)
    80008e90:	01013403          	ld	s0,16(sp)
    80008e94:	0017879b          	addiw	a5,a5,1
    80008e98:	06f52c23          	sw	a5,120(a0)
    80008e9c:	00813483          	ld	s1,8(sp)
    80008ea0:	02010113          	addi	sp,sp,32
    80008ea4:	00008067          	ret
    80008ea8:	0014d493          	srli	s1,s1,0x1
    80008eac:	ffffe097          	auipc	ra,0xffffe
    80008eb0:	6d0080e7          	jalr	1744(ra) # 8000757c <mycpu>
    80008eb4:	0014f493          	andi	s1,s1,1
    80008eb8:	06952e23          	sw	s1,124(a0)
    80008ebc:	fc5ff06f          	j	80008e80 <push_off+0x34>

0000000080008ec0 <pop_off>:
    80008ec0:	ff010113          	addi	sp,sp,-16
    80008ec4:	00813023          	sd	s0,0(sp)
    80008ec8:	00113423          	sd	ra,8(sp)
    80008ecc:	01010413          	addi	s0,sp,16
    80008ed0:	ffffe097          	auipc	ra,0xffffe
    80008ed4:	6ac080e7          	jalr	1708(ra) # 8000757c <mycpu>
    80008ed8:	100027f3          	csrr	a5,sstatus
    80008edc:	0027f793          	andi	a5,a5,2
    80008ee0:	04079663          	bnez	a5,80008f2c <pop_off+0x6c>
    80008ee4:	07852783          	lw	a5,120(a0)
    80008ee8:	02f05a63          	blez	a5,80008f1c <pop_off+0x5c>
    80008eec:	fff7871b          	addiw	a4,a5,-1
    80008ef0:	06e52c23          	sw	a4,120(a0)
    80008ef4:	00071c63          	bnez	a4,80008f0c <pop_off+0x4c>
    80008ef8:	07c52783          	lw	a5,124(a0)
    80008efc:	00078863          	beqz	a5,80008f0c <pop_off+0x4c>
    80008f00:	100027f3          	csrr	a5,sstatus
    80008f04:	0027e793          	ori	a5,a5,2
    80008f08:	10079073          	csrw	sstatus,a5
    80008f0c:	00813083          	ld	ra,8(sp)
    80008f10:	00013403          	ld	s0,0(sp)
    80008f14:	01010113          	addi	sp,sp,16
    80008f18:	00008067          	ret
    80008f1c:	00002517          	auipc	a0,0x2
    80008f20:	8ac50513          	addi	a0,a0,-1876 # 8000a7c8 <digits+0x48>
    80008f24:	fffff097          	auipc	ra,0xfffff
    80008f28:	018080e7          	jalr	24(ra) # 80007f3c <panic>
    80008f2c:	00002517          	auipc	a0,0x2
    80008f30:	88450513          	addi	a0,a0,-1916 # 8000a7b0 <digits+0x30>
    80008f34:	fffff097          	auipc	ra,0xfffff
    80008f38:	008080e7          	jalr	8(ra) # 80007f3c <panic>

0000000080008f3c <push_on>:
    80008f3c:	fe010113          	addi	sp,sp,-32
    80008f40:	00813823          	sd	s0,16(sp)
    80008f44:	00113c23          	sd	ra,24(sp)
    80008f48:	00913423          	sd	s1,8(sp)
    80008f4c:	02010413          	addi	s0,sp,32
    80008f50:	100024f3          	csrr	s1,sstatus
    80008f54:	100027f3          	csrr	a5,sstatus
    80008f58:	0027e793          	ori	a5,a5,2
    80008f5c:	10079073          	csrw	sstatus,a5
    80008f60:	ffffe097          	auipc	ra,0xffffe
    80008f64:	61c080e7          	jalr	1564(ra) # 8000757c <mycpu>
    80008f68:	07852783          	lw	a5,120(a0)
    80008f6c:	02078663          	beqz	a5,80008f98 <push_on+0x5c>
    80008f70:	ffffe097          	auipc	ra,0xffffe
    80008f74:	60c080e7          	jalr	1548(ra) # 8000757c <mycpu>
    80008f78:	07852783          	lw	a5,120(a0)
    80008f7c:	01813083          	ld	ra,24(sp)
    80008f80:	01013403          	ld	s0,16(sp)
    80008f84:	0017879b          	addiw	a5,a5,1
    80008f88:	06f52c23          	sw	a5,120(a0)
    80008f8c:	00813483          	ld	s1,8(sp)
    80008f90:	02010113          	addi	sp,sp,32
    80008f94:	00008067          	ret
    80008f98:	0014d493          	srli	s1,s1,0x1
    80008f9c:	ffffe097          	auipc	ra,0xffffe
    80008fa0:	5e0080e7          	jalr	1504(ra) # 8000757c <mycpu>
    80008fa4:	0014f493          	andi	s1,s1,1
    80008fa8:	06952e23          	sw	s1,124(a0)
    80008fac:	fc5ff06f          	j	80008f70 <push_on+0x34>

0000000080008fb0 <pop_on>:
    80008fb0:	ff010113          	addi	sp,sp,-16
    80008fb4:	00813023          	sd	s0,0(sp)
    80008fb8:	00113423          	sd	ra,8(sp)
    80008fbc:	01010413          	addi	s0,sp,16
    80008fc0:	ffffe097          	auipc	ra,0xffffe
    80008fc4:	5bc080e7          	jalr	1468(ra) # 8000757c <mycpu>
    80008fc8:	100027f3          	csrr	a5,sstatus
    80008fcc:	0027f793          	andi	a5,a5,2
    80008fd0:	04078463          	beqz	a5,80009018 <pop_on+0x68>
    80008fd4:	07852783          	lw	a5,120(a0)
    80008fd8:	02f05863          	blez	a5,80009008 <pop_on+0x58>
    80008fdc:	fff7879b          	addiw	a5,a5,-1
    80008fe0:	06f52c23          	sw	a5,120(a0)
    80008fe4:	07853783          	ld	a5,120(a0)
    80008fe8:	00079863          	bnez	a5,80008ff8 <pop_on+0x48>
    80008fec:	100027f3          	csrr	a5,sstatus
    80008ff0:	ffd7f793          	andi	a5,a5,-3
    80008ff4:	10079073          	csrw	sstatus,a5
    80008ff8:	00813083          	ld	ra,8(sp)
    80008ffc:	00013403          	ld	s0,0(sp)
    80009000:	01010113          	addi	sp,sp,16
    80009004:	00008067          	ret
    80009008:	00001517          	auipc	a0,0x1
    8000900c:	7e850513          	addi	a0,a0,2024 # 8000a7f0 <digits+0x70>
    80009010:	fffff097          	auipc	ra,0xfffff
    80009014:	f2c080e7          	jalr	-212(ra) # 80007f3c <panic>
    80009018:	00001517          	auipc	a0,0x1
    8000901c:	7b850513          	addi	a0,a0,1976 # 8000a7d0 <digits+0x50>
    80009020:	fffff097          	auipc	ra,0xfffff
    80009024:	f1c080e7          	jalr	-228(ra) # 80007f3c <panic>

0000000080009028 <__memset>:
    80009028:	ff010113          	addi	sp,sp,-16
    8000902c:	00813423          	sd	s0,8(sp)
    80009030:	01010413          	addi	s0,sp,16
    80009034:	1a060e63          	beqz	a2,800091f0 <__memset+0x1c8>
    80009038:	40a007b3          	neg	a5,a0
    8000903c:	0077f793          	andi	a5,a5,7
    80009040:	00778693          	addi	a3,a5,7
    80009044:	00b00813          	li	a6,11
    80009048:	0ff5f593          	andi	a1,a1,255
    8000904c:	fff6071b          	addiw	a4,a2,-1
    80009050:	1b06e663          	bltu	a3,a6,800091fc <__memset+0x1d4>
    80009054:	1cd76463          	bltu	a4,a3,8000921c <__memset+0x1f4>
    80009058:	1a078e63          	beqz	a5,80009214 <__memset+0x1ec>
    8000905c:	00b50023          	sb	a1,0(a0)
    80009060:	00100713          	li	a4,1
    80009064:	1ae78463          	beq	a5,a4,8000920c <__memset+0x1e4>
    80009068:	00b500a3          	sb	a1,1(a0)
    8000906c:	00200713          	li	a4,2
    80009070:	1ae78a63          	beq	a5,a4,80009224 <__memset+0x1fc>
    80009074:	00b50123          	sb	a1,2(a0)
    80009078:	00300713          	li	a4,3
    8000907c:	18e78463          	beq	a5,a4,80009204 <__memset+0x1dc>
    80009080:	00b501a3          	sb	a1,3(a0)
    80009084:	00400713          	li	a4,4
    80009088:	1ae78263          	beq	a5,a4,8000922c <__memset+0x204>
    8000908c:	00b50223          	sb	a1,4(a0)
    80009090:	00500713          	li	a4,5
    80009094:	1ae78063          	beq	a5,a4,80009234 <__memset+0x20c>
    80009098:	00b502a3          	sb	a1,5(a0)
    8000909c:	00700713          	li	a4,7
    800090a0:	18e79e63          	bne	a5,a4,8000923c <__memset+0x214>
    800090a4:	00b50323          	sb	a1,6(a0)
    800090a8:	00700e93          	li	t4,7
    800090ac:	00859713          	slli	a4,a1,0x8
    800090b0:	00e5e733          	or	a4,a1,a4
    800090b4:	01059e13          	slli	t3,a1,0x10
    800090b8:	01c76e33          	or	t3,a4,t3
    800090bc:	01859313          	slli	t1,a1,0x18
    800090c0:	006e6333          	or	t1,t3,t1
    800090c4:	02059893          	slli	a7,a1,0x20
    800090c8:	40f60e3b          	subw	t3,a2,a5
    800090cc:	011368b3          	or	a7,t1,a7
    800090d0:	02859813          	slli	a6,a1,0x28
    800090d4:	0108e833          	or	a6,a7,a6
    800090d8:	03059693          	slli	a3,a1,0x30
    800090dc:	003e589b          	srliw	a7,t3,0x3
    800090e0:	00d866b3          	or	a3,a6,a3
    800090e4:	03859713          	slli	a4,a1,0x38
    800090e8:	00389813          	slli	a6,a7,0x3
    800090ec:	00f507b3          	add	a5,a0,a5
    800090f0:	00e6e733          	or	a4,a3,a4
    800090f4:	000e089b          	sext.w	a7,t3
    800090f8:	00f806b3          	add	a3,a6,a5
    800090fc:	00e7b023          	sd	a4,0(a5)
    80009100:	00878793          	addi	a5,a5,8
    80009104:	fed79ce3          	bne	a5,a3,800090fc <__memset+0xd4>
    80009108:	ff8e7793          	andi	a5,t3,-8
    8000910c:	0007871b          	sext.w	a4,a5
    80009110:	01d787bb          	addw	a5,a5,t4
    80009114:	0ce88e63          	beq	a7,a4,800091f0 <__memset+0x1c8>
    80009118:	00f50733          	add	a4,a0,a5
    8000911c:	00b70023          	sb	a1,0(a4)
    80009120:	0017871b          	addiw	a4,a5,1
    80009124:	0cc77663          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    80009128:	00e50733          	add	a4,a0,a4
    8000912c:	00b70023          	sb	a1,0(a4)
    80009130:	0027871b          	addiw	a4,a5,2
    80009134:	0ac77e63          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    80009138:	00e50733          	add	a4,a0,a4
    8000913c:	00b70023          	sb	a1,0(a4)
    80009140:	0037871b          	addiw	a4,a5,3
    80009144:	0ac77663          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    80009148:	00e50733          	add	a4,a0,a4
    8000914c:	00b70023          	sb	a1,0(a4)
    80009150:	0047871b          	addiw	a4,a5,4
    80009154:	08c77e63          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    80009158:	00e50733          	add	a4,a0,a4
    8000915c:	00b70023          	sb	a1,0(a4)
    80009160:	0057871b          	addiw	a4,a5,5
    80009164:	08c77663          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    80009168:	00e50733          	add	a4,a0,a4
    8000916c:	00b70023          	sb	a1,0(a4)
    80009170:	0067871b          	addiw	a4,a5,6
    80009174:	06c77e63          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    80009178:	00e50733          	add	a4,a0,a4
    8000917c:	00b70023          	sb	a1,0(a4)
    80009180:	0077871b          	addiw	a4,a5,7
    80009184:	06c77663          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    80009188:	00e50733          	add	a4,a0,a4
    8000918c:	00b70023          	sb	a1,0(a4)
    80009190:	0087871b          	addiw	a4,a5,8
    80009194:	04c77e63          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    80009198:	00e50733          	add	a4,a0,a4
    8000919c:	00b70023          	sb	a1,0(a4)
    800091a0:	0097871b          	addiw	a4,a5,9
    800091a4:	04c77663          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    800091a8:	00e50733          	add	a4,a0,a4
    800091ac:	00b70023          	sb	a1,0(a4)
    800091b0:	00a7871b          	addiw	a4,a5,10
    800091b4:	02c77e63          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    800091b8:	00e50733          	add	a4,a0,a4
    800091bc:	00b70023          	sb	a1,0(a4)
    800091c0:	00b7871b          	addiw	a4,a5,11
    800091c4:	02c77663          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    800091c8:	00e50733          	add	a4,a0,a4
    800091cc:	00b70023          	sb	a1,0(a4)
    800091d0:	00c7871b          	addiw	a4,a5,12
    800091d4:	00c77e63          	bgeu	a4,a2,800091f0 <__memset+0x1c8>
    800091d8:	00e50733          	add	a4,a0,a4
    800091dc:	00b70023          	sb	a1,0(a4)
    800091e0:	00d7879b          	addiw	a5,a5,13
    800091e4:	00c7f663          	bgeu	a5,a2,800091f0 <__memset+0x1c8>
    800091e8:	00f507b3          	add	a5,a0,a5
    800091ec:	00b78023          	sb	a1,0(a5)
    800091f0:	00813403          	ld	s0,8(sp)
    800091f4:	01010113          	addi	sp,sp,16
    800091f8:	00008067          	ret
    800091fc:	00b00693          	li	a3,11
    80009200:	e55ff06f          	j	80009054 <__memset+0x2c>
    80009204:	00300e93          	li	t4,3
    80009208:	ea5ff06f          	j	800090ac <__memset+0x84>
    8000920c:	00100e93          	li	t4,1
    80009210:	e9dff06f          	j	800090ac <__memset+0x84>
    80009214:	00000e93          	li	t4,0
    80009218:	e95ff06f          	j	800090ac <__memset+0x84>
    8000921c:	00000793          	li	a5,0
    80009220:	ef9ff06f          	j	80009118 <__memset+0xf0>
    80009224:	00200e93          	li	t4,2
    80009228:	e85ff06f          	j	800090ac <__memset+0x84>
    8000922c:	00400e93          	li	t4,4
    80009230:	e7dff06f          	j	800090ac <__memset+0x84>
    80009234:	00500e93          	li	t4,5
    80009238:	e75ff06f          	j	800090ac <__memset+0x84>
    8000923c:	00600e93          	li	t4,6
    80009240:	e6dff06f          	j	800090ac <__memset+0x84>

0000000080009244 <__memmove>:
    80009244:	ff010113          	addi	sp,sp,-16
    80009248:	00813423          	sd	s0,8(sp)
    8000924c:	01010413          	addi	s0,sp,16
    80009250:	0e060863          	beqz	a2,80009340 <__memmove+0xfc>
    80009254:	fff6069b          	addiw	a3,a2,-1
    80009258:	0006881b          	sext.w	a6,a3
    8000925c:	0ea5e863          	bltu	a1,a0,8000934c <__memmove+0x108>
    80009260:	00758713          	addi	a4,a1,7
    80009264:	00a5e7b3          	or	a5,a1,a0
    80009268:	40a70733          	sub	a4,a4,a0
    8000926c:	0077f793          	andi	a5,a5,7
    80009270:	00f73713          	sltiu	a4,a4,15
    80009274:	00174713          	xori	a4,a4,1
    80009278:	0017b793          	seqz	a5,a5
    8000927c:	00e7f7b3          	and	a5,a5,a4
    80009280:	10078863          	beqz	a5,80009390 <__memmove+0x14c>
    80009284:	00900793          	li	a5,9
    80009288:	1107f463          	bgeu	a5,a6,80009390 <__memmove+0x14c>
    8000928c:	0036581b          	srliw	a6,a2,0x3
    80009290:	fff8081b          	addiw	a6,a6,-1
    80009294:	02081813          	slli	a6,a6,0x20
    80009298:	01d85893          	srli	a7,a6,0x1d
    8000929c:	00858813          	addi	a6,a1,8
    800092a0:	00058793          	mv	a5,a1
    800092a4:	00050713          	mv	a4,a0
    800092a8:	01088833          	add	a6,a7,a6
    800092ac:	0007b883          	ld	a7,0(a5)
    800092b0:	00878793          	addi	a5,a5,8
    800092b4:	00870713          	addi	a4,a4,8
    800092b8:	ff173c23          	sd	a7,-8(a4)
    800092bc:	ff0798e3          	bne	a5,a6,800092ac <__memmove+0x68>
    800092c0:	ff867713          	andi	a4,a2,-8
    800092c4:	02071793          	slli	a5,a4,0x20
    800092c8:	0207d793          	srli	a5,a5,0x20
    800092cc:	00f585b3          	add	a1,a1,a5
    800092d0:	40e686bb          	subw	a3,a3,a4
    800092d4:	00f507b3          	add	a5,a0,a5
    800092d8:	06e60463          	beq	a2,a4,80009340 <__memmove+0xfc>
    800092dc:	0005c703          	lbu	a4,0(a1)
    800092e0:	00e78023          	sb	a4,0(a5)
    800092e4:	04068e63          	beqz	a3,80009340 <__memmove+0xfc>
    800092e8:	0015c603          	lbu	a2,1(a1)
    800092ec:	00100713          	li	a4,1
    800092f0:	00c780a3          	sb	a2,1(a5)
    800092f4:	04e68663          	beq	a3,a4,80009340 <__memmove+0xfc>
    800092f8:	0025c603          	lbu	a2,2(a1)
    800092fc:	00200713          	li	a4,2
    80009300:	00c78123          	sb	a2,2(a5)
    80009304:	02e68e63          	beq	a3,a4,80009340 <__memmove+0xfc>
    80009308:	0035c603          	lbu	a2,3(a1)
    8000930c:	00300713          	li	a4,3
    80009310:	00c781a3          	sb	a2,3(a5)
    80009314:	02e68663          	beq	a3,a4,80009340 <__memmove+0xfc>
    80009318:	0045c603          	lbu	a2,4(a1)
    8000931c:	00400713          	li	a4,4
    80009320:	00c78223          	sb	a2,4(a5)
    80009324:	00e68e63          	beq	a3,a4,80009340 <__memmove+0xfc>
    80009328:	0055c603          	lbu	a2,5(a1)
    8000932c:	00500713          	li	a4,5
    80009330:	00c782a3          	sb	a2,5(a5)
    80009334:	00e68663          	beq	a3,a4,80009340 <__memmove+0xfc>
    80009338:	0065c703          	lbu	a4,6(a1)
    8000933c:	00e78323          	sb	a4,6(a5)
    80009340:	00813403          	ld	s0,8(sp)
    80009344:	01010113          	addi	sp,sp,16
    80009348:	00008067          	ret
    8000934c:	02061713          	slli	a4,a2,0x20
    80009350:	02075713          	srli	a4,a4,0x20
    80009354:	00e587b3          	add	a5,a1,a4
    80009358:	f0f574e3          	bgeu	a0,a5,80009260 <__memmove+0x1c>
    8000935c:	02069613          	slli	a2,a3,0x20
    80009360:	02065613          	srli	a2,a2,0x20
    80009364:	fff64613          	not	a2,a2
    80009368:	00e50733          	add	a4,a0,a4
    8000936c:	00c78633          	add	a2,a5,a2
    80009370:	fff7c683          	lbu	a3,-1(a5)
    80009374:	fff78793          	addi	a5,a5,-1
    80009378:	fff70713          	addi	a4,a4,-1
    8000937c:	00d70023          	sb	a3,0(a4)
    80009380:	fec798e3          	bne	a5,a2,80009370 <__memmove+0x12c>
    80009384:	00813403          	ld	s0,8(sp)
    80009388:	01010113          	addi	sp,sp,16
    8000938c:	00008067          	ret
    80009390:	02069713          	slli	a4,a3,0x20
    80009394:	02075713          	srli	a4,a4,0x20
    80009398:	00170713          	addi	a4,a4,1
    8000939c:	00e50733          	add	a4,a0,a4
    800093a0:	00050793          	mv	a5,a0
    800093a4:	0005c683          	lbu	a3,0(a1)
    800093a8:	00178793          	addi	a5,a5,1
    800093ac:	00158593          	addi	a1,a1,1
    800093b0:	fed78fa3          	sb	a3,-1(a5)
    800093b4:	fee798e3          	bne	a5,a4,800093a4 <__memmove+0x160>
    800093b8:	f89ff06f          	j	80009340 <__memmove+0xfc>
	...
