
#include "../lib/hw.h"
#ifndef _PCB
#define _PCB

#include "Kernel.hpp"
#include "ABI.hpp"

enum States { initializing=0, ready=1, suspended=2, running=3, terminating=4};

class PCB {
public:
    static void* operator new(size_t count);
    static void operator delete (void*);
    using Body = void (*)(void*);
    static void yield();
    static uint64* getID();
    void setID(uint64*);
    static PCB *running;
    static PCB *createThread(Body body,void* arg,uint64* stack);

    int getState() { return state; }
    void setState(States state) { this->state = state; }
    uint64 getTimeSlice() const { return timeSlice; }

    ~PCB();

    static PCB* initKernelPCB(uint64* stack);
    static PCB* initIdlePCB(uint64* stack);

    static void* runningSaveA0(void* reg);
    static void* runningSaveA1(void* reg);
    static uint64 * getRunningStack();
    static void setRunningStack(uint64 reg);

    int blockThread(PCB* pcb);
    PCB* unblockThread();

    static void endSysCall();
    uint64* context;
private:
    struct BlockedNode{
        PCB* pcb;
        BlockedNode* next;
    };
    BlockedNode* blockedHead;

    static uint64* IDcounter;

    PCB(Body body, uint64 timeSlice, void* arg, uint64* stack, uint64* kernelStack, uint64* context);
    Body body; uint64 *stack, *kernelStack; uint64 timeSlice; void* arg;
    PCB* parent;
    int state;
    uint64* ID;

    static void threadWrapper();
    static void contextSwitch(uint64 *oldContext, uint64 *runningContext);

    friend void _thread_dispatch();
    static void dispatch();

    static uint64 timeSliceCounter;

    void initContext(uint64 ra, uint64 sp);

};

#endif