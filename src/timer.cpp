#include "../h/timer.h"
#include "../lib/hw.h"
#include "../h/ABI.hpp"
#include "../h/Kernel.hpp"
#include "../h/Scheduler.hpp"

extern "C" void timer(){
    uint64 sstatus, sepc;
    asm volatile("csrr %0, sstatus\n"
                 "csrr %1, sepc" : "=r" (sstatus), "=r" (sepc));
    //_putc('T');
    //console_handler();
    //_thread_dispatch();
    Kernel::tickBlocked();
    PCB* pcb = Kernel::getBlockedThread();
    while (pcb){
        Scheduler::put(pcb);
        pcb = Kernel::getBlockedThread();
    }
    uint64 sip = 0x2;
    asm volatile("csrc sip, %0" :: "r" (sip));
    asm volatile("csrw sstatus, %0" :: "r" (sstatus));
    asm volatile("csrw sepc, %0" :: "r" (sepc));
}