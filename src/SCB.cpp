#include "../h/SCB.hpp"
#include "../h/PCB.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Kernel.hpp"

void* SCB::operator new(size_t count)
{
    return _mem_alloc(BytsBlck(count));
}

void SCB::operator delete (void* add){
    _mem_free(add);
}

uint64* SCB::IDcounter = nullptr;

uint64* SCB::getID(){
    if(!SCB::IDcounter) {
        SCB::IDcounter =  (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)));
        if(!SCB::IDcounter) return nullptr;
    }
    SCB::IDcounter =(uint64*) ((char*) SCB::IDcounter+1);
    return SCB::IDcounter;
}

SCB* SCB::createSemaphore(unsigned init) {
    return new SCB(init);
}

SCB::SCB(int init) : value(init){
    blockedHead = nullptr;
    state = starting;
}

int SCB::wait(){
    if(state == closed) return -1;
    if(--value<0) return block();
    else return 0;
}
int SCB::signal(){
    if(state == closed) return -1;
    if(++value<=0) return deblock(0);
    else return 0;
}

int SCB::block(){
    PCB* pcb = PCB::running;
    BlockedNode* node = (BlockedNode*) _mem_alloc(BytsTBlck(sizeof(BlockedNode)));  //NEW !!!
    if(node == nullptr) return -1; //NEMA MEMORIJE
    node->pcb = pcb;
    node->next = nullptr;
    if(blockedHead == nullptr){
        blockedHead = node;
    }
    else {
        BlockedNode *curr = blockedHead;
        for (; curr->next != nullptr; curr = curr->next);
        curr->next = node;
    }
    pcb->setState(suspended);
    _thread_dispatch();
    if(pcb->getState() == suspended) return -1;
    return 0;
}

int SCB::deblock(int value){
    if(!blockedHead) return -1;
    PCB* pcb = blockedHead->pcb;
    BlockedNode* node = blockedHead;
    blockedHead = node->next;
    _mem_free(node);
    if(value == 0) pcb->setState(ready);
    Scheduler::put(pcb);
    return 0;
}

int SCB::closeSemaphore(){
    state = closed;
    while (1){
        if(deblock(-1) <0) break;
    }
    return 0;
}

SCB::~SCB(){
    closeSemaphore();
    Kernel::removeSemaphore(this);
}