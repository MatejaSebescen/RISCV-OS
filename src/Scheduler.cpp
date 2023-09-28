#include "../h/Scheduler.hpp"
#include "../h/ABI.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Kernel.hpp"

Scheduler::PCBNode* Scheduler::activeList = nullptr;

size_t BytsTBlck(size_t size){
    size_t sz = MemoryAllocator::getSizeOfDescrp();
    return ((size+sz) % MEM_BLOCK_SIZE == 0) ? (size+sz) / MEM_BLOCK_SIZE :
           (size+sz) / MEM_BLOCK_SIZE + 1;
}

void Scheduler::put(PCB* elem){
    if(elem == nullptr) return;
    PCBNode* node = (PCBNode*) _mem_alloc(BytsTBlck(sizeof(PCBNode)));  //NEW !!!
    if(node == nullptr) return; //NEMA MEMORIJE
    node->pcb = elem;
    node->next = nullptr;
    if(activeList == nullptr){
        activeList = node;
        return;
    }
    PCBNode* curr = activeList;
    for(; curr->next != nullptr; curr = curr->next);
    curr->next = node;
}

PCB* Scheduler::get(){
    if(!activeList) return Kernel::idlePCB;
    PCB* pcb = activeList->pcb;
    PCBNode* node = activeList;
    activeList = node->next;
    _mem_free(node);
    return pcb;
}