#include "../h/ABI.hpp"
#include "../h/PCB.hpp"
#include "../h/SCB.hpp"
#include "../h/Kernel.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

void* _mem_alloc (size_t size){
    return MemoryAllocator::allocate(size);
}

int _mem_free (void* add){
    MemoryAllocator::deallocate(add);
    return 0;
}

int _thread_create(thread_t* handle,
                   void(*start_routine)(void*), void* arg, void* stack_space){

    PCB* pcb = PCB::createThread(start_routine, arg, (uint64*) stack_space);
    if(!pcb) return -1;
    *handle = (thread_t) PCB::getID();
    if(Kernel::addThread(pcb, (uint64*) *handle) < 0){
        _mem_free(pcb);
        return -2;
    }
    pcb->setID((uint64*)*handle);
    pcb->setState(ready);
    Scheduler::put(pcb);
    return 0;
    /*
    asm volatile("sd %1, 0(%0)"
    : "=r" (handle)
    : "r" (temp));*/
}

int _thread_exit(){
    if(PCB::running->getState() == terminating || PCB::running->getState() == initializing) return -1;
    PCB::running->setState(terminating);
    while (1){
        PCB* pcb = PCB::running->unblockThread();
        if(!pcb) break;
        Scheduler::put(pcb);
    }
    return 0;
}

void _thread_dispatch(){
    uint64* userStack = PCB::getRunningStack();
    PCB::dispatch();
    PCB::setRunningStack((uint64) userStack);
}

int _thread_start(uint64* handle){
    PCB* cur = Kernel::findPCB(handle);
    if(!cur) return -1;
    States st = (States) cur->getState();
    if(st != initializing && st != terminating){return -1;}
    cur->setState(ready);
    Scheduler::put(cur);
    return 0;
}

int _thread_join(uint64* handle){
    PCB* pcb = Kernel::findPCB(handle);
    if(!pcb) return -1;
    States st = (States) pcb->getState();
    if(st == terminating || st == running) return -1;
    pcb->blockThread(PCB::running);
    PCB::running->setState(suspended);
    _thread_dispatch();
    return 0;
}

int _thread_close(uint64* handle){
    PCB* pcb = Kernel::findPCB(handle);
    if(!pcb) return -1;
    delete pcb;
    return 0;
}

int _sem_open(sem_t* handle, unsigned init){
    SCB* scb = SCB::createSemaphore(init);
    if(!scb) return -1;
    *handle = (sem_t) SCB::getID();
    if(Kernel::addSemaphore(scb, (uint64*) *handle) < 0){
        _mem_free(scb);
        return -2;
    }
    scb->setState(open);
    return 0;
}

int _sem_close(uint64* handle){
    SCB* scb = Kernel::findSCB(handle);
    if(!scb) return -1;
    if(scb->getState() == closed) return 0;
    delete scb;
    return 0;
}

int _sem_wait(uint64* id){
    SCB* scb = Kernel::findSCB(id);
    if(!scb) return -1;
    if(scb->getState() == closed) return -1;
    return scb->wait();
}

int _sem_signal(uint64* id){
    SCB* scb = Kernel::findSCB(id);
    if(!scb) return -1;
    if(scb->getState() == closed) return -1;
    return scb->signal();
}

int _time_sleep (time_t time){
    uint64 * handle = Kernel::findPCB(PCB::running);
    if(!handle) return -1;
    Kernel::blockThread(PCB::running, handle, time);
    return 0;
}

void _putc (char c){
    int complete = 0;
    while(!complete) {
        uint8 cd = *C_STATUS & CONSOLE_TX_STATUS_BIT;
        if (cd) {
            *C_PUT = c;
            complete = 1;
        }
        //else _thread_dispatch();
    }
}

char _getc (){
    int complete = 0;
    while(!complete) {
        uint8 cd = *C_STATUS & CONSOLE_RX_STATUS_BIT;
        if (cd) {
            return *C_GET;
        }
        //else _thread_dispatch();
    }
    return '0';
}

//enum States { initializing=0, ready=1, suspended=2, running=3, terminating=4};
//enum SemStates { initializing=0, open=1, closed=2};
