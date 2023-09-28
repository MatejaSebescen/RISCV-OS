#include "../h/syscall_c.h"
#include "../h/ABI.hpp"
#include "../h/PCB.hpp"
#include "../h/utility.hpp"
#include "../h/Kernel.hpp"
#include "../lib/hw.h"

typedef void (*start_routine)(void*);

extern "C" void interruptEcall(){
    uint64 caller;
    uint64 scause;

    asm volatile(
            "csrr %0, scause"
            : "=r" (scause)
            );
    asm volatile(
            "mv %0, a0"
            : "=r" (caller)
            );
    switch (scause) {
        case 0x2:
            //ILEGALNA INSTRUKCIJA
            printf("Ilegalna instrukcija\n");
            while (1);
        case 0x5:
            //NEDOZVOLJENA ADRESA CITANJA
            printf("NEDOZVOLJENA ADRESA CITANJA\n");
            while (1);
        case 0x7:
            //NEDOZVOLJENA ADRESA UPISA
            printf("NEDOZVOLJENA ADRESA UPISA\n");
            while (1);
    }

    uint64 sstatus, sepc;
    asm volatile("csrr %0, sstatus\n"
                 "csrr %1, sepc" : "=r" (sstatus), "=r" (sepc));
    sepc = sepc + 4;

    switch(caller){
        case MEM_ALLOC: size_t size;
            asm volatile(
                    "ld %0, 80(s0)"
                    : "=r" (size)
                    );
            PCB::runningSaveA0(_mem_alloc(size));
            asm volatile("sd a0, 72(s0)");
            break;
        case MEM_FREE: void* address;
            asm volatile(
                    "ld %0, 80(s0)"
                    : "=r" (address)
                    );
            _mem_free(address);
            asm volatile("sd a0, 72(s0)");      //PROMENI a0 SA SACUVANOG STEKA
            break;
        case THREAD_CREATE: thread_t* a1;
            start_routine a2;
            void* a3;
            uint64* a4;
            asm volatile(
                    "ld %0, 80(s0)\n"
                    "ld %1, 88(s0)\n"
                    "ld %2, 96(s0)\n"
                    "ld %3, 104(s0)\n"
                    : "=r" (a1),  "=r" (a2),  "=r" (a3),  "=r" (a4)
                    );
            _thread_create(a1,a2,a3,a4);
            asm volatile("sd a0, 72(s0)");
            break;
        case THREAD_EXIT:
            _thread_exit();
            _thread_dispatch();
            break;
        case THREAD_DISPATCH:
            _thread_dispatch();
            break;
        case THREAD_START:
            uint64* handle;
            asm volatile(
            "ld %0, 80(s0)\n"
            : "=r" (handle)
            );
            _thread_start(handle);
            asm volatile("sd a0, 72(s0)");
            break;
        case THREAD_JOIN:
            uint64* handle2;
            asm volatile(
            "ld %0, 80(s0)\n"
            : "=r" (handle2)
            );
            _thread_join(handle2);
            break;
        case THREAD_CLOSE:
            uint64* handle3;
            asm volatile(
            "ld %0, 80(s0)\n"
            : "=r" (handle3)
            );
            _thread_close(handle3);
            break;
        case SEM_OPEN:sem_t* sema1;
            unsigned sema2;
            asm volatile(
            "ld %0, 80(s0)\n"
            "ld %1, 88(s0)\n"
            : "=r" (sema1),  "=r" (sema2)
            );
            _sem_open(sema1,sema2);
            asm volatile("sd a0, 72(s0)");
            break;
        case SEM_CLOSE:
            uint64* semHandle1;
            asm volatile(
            "ld %0, 80(s0)\n"
            : "=r" (semHandle1)
            );
            _sem_close(semHandle1);
            asm volatile("sd a0, 72(s0)");
            break;
        case SEM_WAIT:
            uint64* semHandle2;
            asm volatile(
            "ld %0, 80(s0)\n"
            : "=r" (semHandle2)
            );
            _sem_wait(semHandle2);
            asm volatile("sd a0, 72(s0)");
            break;
        case SEM_SIGNAL:
            uint64* semHandle3;
            asm volatile(
            "ld %0, 80(s0)\n"
            : "=r" (semHandle3)
            );
            _sem_signal(semHandle3);
            asm volatile("sd a0, 72(s0)");
            break;
        case TIME_SLEEP:
            time_t time_sleep;
            asm volatile(
            "ld %0, 80(s0)\n"
            : "=r" (time_sleep)
            );
            _time_sleep(time_sleep);
            asm volatile("sd a0, 72(s0)");
            break;
        case GETC_SIGNAL:
            _getc();
            asm volatile("sd a0, 72(s0)");
            break;
        case PUTC_SIGNAL:
            char putcChar;
            asm volatile(
            "ld %0, 80(s0)\n"
            : "=r" (putcChar)
            );
            _putc(putcChar);
            break;
        case KERNEL_TO_USER:
            kernelToUser();
            break;
        default:
            printf("Nepostojeci poziv\n");
            while (1);
            break;
    }
    if(caller != KERNEL_TO_USER) asm volatile("csrw sstatus, %0" :: "r" (sstatus));
    asm volatile("csrw sepc, %0" :: "r" (sepc));
    return;
}


extern "C" void consoleEcall() {
    uint64 sstatus, sepc;
    asm volatile("csrr %0, sstatus\n"
                 "csrr %1, sepc" : "=r" (sstatus), "=r" (sepc));
    int d = plic_claim();
    //if(d == CONSOLE_IRQ) console_handler();
    plic_complete(d);
    asm volatile("csrw sstatus, %0" :: "r" (sstatus));
    asm volatile("csrw sepc, %0" :: "r" (sepc));
}