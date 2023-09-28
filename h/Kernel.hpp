#include "../lib/hw.h"
#ifndef _kernel
#define _kernel


#define KERNEL_TO_USER      0xff
#define C_STATUS            (uint8*)CONSOLE_STATUS
#define C_GET               (uint8*)CONSOLE_RX_DATA
#define C_PUT               (uint8*)CONSOLE_TX_DATA

#include "PCB.hpp"
#include "SCB.hpp"
class PCB;
class SCB;

void kernelToUser();
void kernelToUserWrapper(uint64 name=KERNEL_TO_USER);

void idleThread(void*);

class Kernel {
public:

    static int initKernel();
    static uint64* getKernelStack();
    static void setKernelStack(uint64* address);

    static int addThread(PCB* pcb, uint64* handle);
    static int removeThread(uint64* handle);
    static PCB* findPCB(uint64* handle);
    static uint64 * findPCB(PCB* pcb);

    static int addSemaphore(SCB* scb, uint64* handle);
    static int removeSemaphore(SCB* scb);
    static SCB* findSCB(uint64* handle);

    static int blockThread(PCB* pcb, uint64* handle, time_t time);
    static PCB* getBlockedThread();       //IF ITS TIME=0
    static void tickBlocked();


    Kernel(const Kernel&) = delete; // rule of three
    Kernel& operator=(const Kernel&) = delete;

    static uint64* kernelStack;
    static PCB* kernelPCB;
    static PCB* idlePCB;
private:
    Kernel() = default; // no public constructor
    ~Kernel() = default; // no public destructor
    struct PCBNode{
        PCB* pcb;
        uint64* ID;
        PCBNode* next;
    };
    struct SCBNode{
        SCB* scb;
        uint64* ID;
        SCBNode* next;
    };
    struct BlockedNode{
        PCB* pcb;
        uint64* ID;
        time_t time;
        BlockedNode* next;
    };
    static PCBNode* pcbHead;
    static SCBNode* scbHead;
    static BlockedNode* blockedHead;
};

size_t BytsBlck(size_t size);
#endif
