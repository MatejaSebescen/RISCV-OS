#include "../lib/hw.h"
#ifndef _semaphore
#define _semaphore

enum SemStates { starting=0, open=1, closed=2};

class PCB;

class SCB{
public:
    static void* operator new(size_t count);
    static void operator delete (void*);

    int getState() { return state; }
    void setState(SemStates state) { this->state = state; }
    ~SCB();
    int wait();
    int signal();
    static uint64* getID();
    static SCB* createSemaphore(unsigned init);
    int closeSemaphore();
private:
    static uint64* IDcounter;

    int block();
    int deblock(int value);
    SCB(int init);

    struct BlockedNode{
        PCB* pcb;
        BlockedNode* next;
    };
    BlockedNode* blockedHead;


    int value;
    int state;
};

#endif