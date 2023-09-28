#include "../lib/hw.h"
#include "../h/syscall_cpp.hpp"
#include "../h/interrupt_connection.h"
#include "../h/Kernel.hpp"
#include "../h/utility.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../test/userMain.hpp"

void wrap(void*);

int main() {

    MemoryAllocator::initMemAlloc();
    if(Kernel::initKernel() < 0) return -2;
    changeVT();
    kernelToUserWrapper();

    Thread* uMain = new Thread(&wrap, nullptr);
    uMain->join();
    return 0;
}

void wrap(void*){
    userMain();
}

//SSTATUS
//8                      1                              5
//SPP (KOJI REZIM) | SIE (MASKIRANJE PREKIDA) | SPIE (PREV SIE VALUE)

//SIP
//1                                     9
//SSIP (GOTOV ZAHTEV ZA SYSCALL) | SEIP (ZAHTEV ZA SYSCALL)

//SIE
//1                             9
//SSIE (DOZVOLA ZA SYSCALL) | SEIE (DOZVOLA ZA HARDVER CALL)

//CONSOLE_STATUS
//BIT 0 - GETC ALLOWED
//BIT 5 - PUTC ALLOWED

//CONSOLE_TX_DATA PUTC
//CONSOLE_RX_DATA GETC