
#include "../lib/hw.h"
#ifndef _scheduler
#define _scheduler

class PCB;

class Scheduler{
public:

    Scheduler(const Scheduler&) = delete; // rule of three
    Scheduler& operator=(const Scheduler&) = delete;

    static void put(PCB*);
    static PCB* get();
private:
    struct PCBNode{
        PCB* pcb;
        PCBNode* next;
    };
    Scheduler() = default; // no public constructor
    ~Scheduler() = default; // no public destructor
    static PCBNode* activeList;
};

size_t BytsTBlck(size_t size);
#endif
