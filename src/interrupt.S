.globl interrupt
.globl interruptvec
.globl trap_handler_0
.globl vector_table
.globl changeVT
.globl timer
.globl interruptEcall
.globl consoleEcall
.align 4
interruptvec:

#break interruptvec
#break vector_table
#info r [register]
        addi sp, sp,-32
        sd a0, 0(sp)
        sd t0, 8(sp)
        sd a5, 16(sp)
        sd ra, 24(sp)
        call _ZN3PCB15getRunningStackEv
                                                    #DVA STEKA
        mv t0, sp
        mv sp, a0
        mv a0, t0
        call _ZN3PCB15setRunningStackEm

        ld ra, 24(a0)
        ld a5, 16(a0)
        ld t0, 8(a0)
        ld a0, 0(a0)

        addi sp, sp, -248
        sd ra, 0(sp)
        sd sp, 8(sp)
        sd gp, 16(sp)
        sd tp, 24(sp)
        sd t0, 32(sp)
        sd t1, 40(sp)
        sd t2, 48(sp)
        sd s0, 56(sp)
        sd s1, 64(sp)
        sd a0, 72(sp)
        sd a1, 80(sp)
        sd a2, 88(sp)
        sd a3, 96(sp)
        sd a4, 104(sp)
        sd a5, 112(sp)
        sd a6, 120(sp)
        sd a7, 128(sp)
        sd s2, 136(sp)
        sd s3, 144(sp)
        sd s4, 152(sp)
        sd s5, 160(sp)
        sd s6, 168(sp)
        sd s7, 176(sp)
        sd s8, 184(sp)
        sd s9, 192(sp)
        sd s10, 200(sp)
        sd s11, 208(sp)
        sd t3, 216(sp)
        sd t4, 224(sp)
        sd t5, 232(sp)
skip1:   sd t6, 240(sp)

        call interruptEcall

        ld ra, 0(sp)
        ld sp, 8(sp)
        ld gp, 16(sp)
        ld tp, 24(sp)
        ld t0, 32(sp)
        ld t1, 40(sp)
        ld t2, 48(sp)
        ld s0, 56(sp)
        ld s1, 64(sp)
        ld a0, 72(sp)
        ld a1, 80(sp)
        ld a2, 88(sp)
        ld a3, 96(sp)
        ld a4, 104(sp)
        ld a5, 112(sp)
        ld a6, 120(sp)
        ld a7, 128(sp)
        ld s2, 136(sp)
        ld s3, 144(sp)
        ld s4, 152(sp)
        ld s5, 160(sp)
        ld s6, 168(sp)
        ld s7, 176(sp)
        ld s8, 184(sp)
        ld s9, 192(sp)
        ld s10, 200(sp)
        ld s11, 208(sp)
        ld t3, 216(sp)
        ld t4, 224(sp)
        ld t5, 232(sp)
        ld t6, 240(sp)
skip2:  addi sp, sp, 248

        addi sp, sp,-32
        sd a0, 0(sp)
        sd t0, 8(sp)
        sd a5, 16(sp)
        sd ra, 24(sp)
        call _ZN3PCB15getRunningStackEv

        mv t0, sp
        mv sp, a0
        mv a0, t0
   miss:     addi a0, a0, 32
        call _ZN3PCB15setRunningStackEm
        addi a0, a0, -32

        ld ra, 24(a0)
        ld a5, 16(a0)
        ld t0, 8(a0)
        ld a0, 0(a0)
        addi sp, sp, 32

        sret

interrupt:
        ret
# word is 4 Bytes
.balign 4
vector_table:
    j interruptvec      #  Entry 0: Trap handler for exception code 0   ECALL
    j __timer           #  Entry 1: Trap handler for exception code 1   TIMER
    j interruptvec    #  Entry 2: Trap handler for exception code 2
    j interruptvec    #  Entry 3: Trap handler for exception code 3
    j interruptvec    #  Entry 4: Trap handler for exception code 4
    j interruptvec    #  Entry 5: Trap handler for exception code 5
    j interruptvec    #  Entry 6: Trap handler for exception code 6
    j interruptvec    #  Entry 7: Trap handler for exception code 7
    j interruptvec    #  Entry 8: Trap handler for exception code 8
    j trap_handler_0    #  Entry 9: Trap handler for exception code 9   KONZOLA

    # ... Continue with other trap handlers
.align 4
__timer:
        addi sp, sp,-32
        sd a0, 0(sp)
        sd t0, 8(sp)
        sd a5, 16(sp)
        sd ra, 24(sp)
        call _ZN3PCB15getRunningStackEv

        mv t0, sp
        mv sp, a0
        mv a0, t0
        call _ZN3PCB15setRunningStackEm

        ld ra, 24(a0)
        ld a5, 16(a0)
        ld t0, 8(a0)
        ld a0, 0(a0)

        addi sp, sp, -248
        sd ra, 0(sp)
        sd sp, 8(sp)
        sd gp, 16(sp)
        sd tp, 24(sp)
        sd t0, 32(sp)
        sd t1, 40(sp)
        sd t2, 48(sp)
        sd s0, 56(sp)
        sd s1, 64(sp)
        sd a0, 72(sp)
        sd a1, 80(sp)
        sd a2, 88(sp)
        sd a3, 96(sp)
        sd a4, 104(sp)
        sd a5, 112(sp)
        sd a6, 120(sp)
        sd a7, 128(sp)
        sd s2, 136(sp)
        sd s3, 144(sp)
        sd s4, 152(sp)
        sd s5, 160(sp)
        sd s6, 168(sp)
        sd s7, 176(sp)
        sd s8, 184(sp)
        sd s9, 192(sp)
        sd s10, 200(sp)
        sd s11, 208(sp)
        sd t3, 216(sp)
        sd t4, 224(sp)
        sd t5, 232(sp)
        sd t6, 240(sp)

        call timer

        ld ra, 0(sp)
        ld sp, 8(sp)
        ld gp, 16(sp)
        ld tp, 24(sp)
        ld t0, 32(sp)
        ld t1, 40(sp)
        ld t2, 48(sp)
        ld s0, 56(sp)
        ld s1, 64(sp)
        ld a0, 72(sp)
        ld a1, 80(sp)
        ld a2, 88(sp)
        ld a3, 96(sp)
        ld a4, 104(sp)
        ld a5, 112(sp)
        ld a6, 120(sp)
        ld a7, 128(sp)
        ld s2, 136(sp)
        ld s3, 144(sp)
        ld s4, 152(sp)
        ld s5, 160(sp)
        ld s6, 168(sp)
        ld s7, 176(sp)
        ld s8, 184(sp)
        ld s9, 192(sp)
        ld s10, 200(sp)
        ld s11, 208(sp)
        ld t3, 216(sp)
        ld t4, 224(sp)
        ld t5, 232(sp)
        ld t6, 240(sp)
        addi sp, sp, 248

        addi sp, sp,-32
        sd a0, 0(sp)
        sd t0, 8(sp)
        sd a5, 16(sp)
        sd ra, 24(sp)
        call _ZN3PCB15getRunningStackEv

        mv t0, sp
        mv sp, a0
        mv a0, t0
        addi a0, a0, 32
        call _ZN3PCB15setRunningStackEm
        addi a0, a0, -32

        ld ra, 24(a0)
        ld a5, 16(a0)
        ld t0, 8(a0)
        ld a0, 0(a0)
skip4:  addi sp, sp, 32

        sret

trap_handler_0:

        addi sp, sp,-32
        sd a0, 0(sp)
        sd t0, 8(sp)
        sd a5, 16(sp)
        sd ra, 24(sp)
        call _ZN3PCB15getRunningStackEv

        mv t0, sp
        mv sp, a0
        mv a0, t0
        call _ZN3PCB15setRunningStackEm

        ld ra, 24(a0)
        ld a5, 16(a0)
        ld t0, 8(a0)
        ld a0, 0(a0)

        addi sp, sp, -248
        sd ra, 0(sp)
        sd sp, 8(sp)
        sd gp, 16(sp)
        sd tp, 24(sp)
        sd t0, 32(sp)
        sd t1, 40(sp)
        sd t2, 48(sp)
        sd s0, 56(sp)
        sd s1, 64(sp)
        sd a0, 72(sp)
        sd a1, 80(sp)
        sd a2, 88(sp)
        sd a3, 96(sp)
        sd a4, 104(sp)
        sd a5, 112(sp)
        sd a6, 120(sp)
        sd a7, 128(sp)
        sd s2, 136(sp)
        sd s3, 144(sp)
        sd s4, 152(sp)
        sd s5, 160(sp)
        sd s6, 168(sp)
        sd s7, 176(sp)
        sd s8, 184(sp)
        sd s9, 192(sp)
        sd s10, 200(sp)
        sd s11, 208(sp)
        sd t3, 216(sp)
        sd t4, 224(sp)
        sd t5, 232(sp)
        sd t6, 240(sp)

        call consoleEcall

        ld ra, 0(sp)
        ld sp, 8(sp)
        ld gp, 16(sp)
        ld tp, 24(sp)
        ld t0, 32(sp)
        ld t1, 40(sp)
        ld t2, 48(sp)
        ld s0, 56(sp)
        ld s1, 64(sp)
        ld a0, 72(sp)
        ld a1, 80(sp)
        ld a2, 88(sp)
        ld a3, 96(sp)
        ld a4, 104(sp)
        ld a5, 112(sp)
        ld a6, 120(sp)
        ld a7, 128(sp)
        ld s2, 136(sp)
        ld s3, 144(sp)
        ld s4, 152(sp)
        ld s5, 160(sp)
        ld s6, 168(sp)
        ld s7, 176(sp)
        ld s8, 184(sp)
        ld s9, 192(sp)
        ld s10, 200(sp)
        ld s11, 208(sp)
        ld t3, 216(sp)
        ld t4, 224(sp)
        ld t5, 232(sp)
        ld t6, 240(sp)
        addi sp, sp, 248

        addi sp, sp,-32
        sd a0, 0(sp)
        sd t0, 8(sp)
        sd a5, 16(sp)
        sd ra, 24(sp)
        call _ZN3PCB15getRunningStackEv

        mv t0, sp
        mv sp, a0
        mv a0, t0
        addi a0, a0, 32
        call _ZN3PCB15setRunningStackEm
        addi a0, a0, -32

        ld ra, 24(a0)
        ld a5, 16(a0)
        ld t0, 8(a0)
        ld a0, 0(a0)
        addi sp, sp, 32


        sret


changeVT:
        la t0, vector_table
        addi t0,t0,1
        csrw stvec, t0
        ret