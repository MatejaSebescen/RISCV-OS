#include "../h/Kernel.hpp"
#include "../h/ABI.hpp"
#include "../h/PCB.hpp"
#include "../h/utility.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.h"

Kernel::PCBNode* Kernel::pcbHead = nullptr;
Kernel::SCBNode* Kernel::scbHead = nullptr;
Kernel::BlockedNode* Kernel::blockedHead = nullptr;
PCB* Kernel::kernelPCB = nullptr;
PCB* Kernel::idlePCB = nullptr;
uint64 * Kernel::kernelStack = nullptr;


void lock(){
    uint64 ssie = 0x202;
    asm volatile("csrc sie, %0" :: "r" (ssie));
}
void unlock(){
    uint64 ssie = 0x202;
    asm volatile("csrs sie, %0" :: "r" (ssie));
}

void kernelToUser(){
    asm volatile("li t0, 0x120\n"
                 "csrc sstatus, t0\n");

    asm volatile("li t0, 0x200\n"
                 "csrc sie, t0\n");
}

void kernelToUserWrapper(uint64 name){
    asm volatile("ecall");
}

uint64* Kernel::getKernelStack(){
    return kernelStack;
}
void Kernel::setKernelStack(uint64* address){
    kernelStack = address;
}

int Kernel::initKernel() {
    kernelStack = (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)*DEFAULT_STACK_SIZE));
    if(!kernelStack) return -1;
    uint64 * idleStack = (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)*DEFAULT_STACK_SIZE));
    if(!idleStack) return -2;
    kernelPCB = PCB::initKernelPCB(kernelStack);
    if(!kernelPCB) return -3;
    idlePCB = PCB::initIdlePCB(idleStack);
    if(!idlePCB) return -4;
    kernelStack = &kernelStack[DEFAULT_STACK_SIZE];
    if(addThread(kernelPCB,0) < 0) return -5;
    return 0;
}

void idleThread(void* arg){
    while(1){
        thread_dispatch();
    }
}

size_t BytsBlck(size_t size){
    size_t sz = MemoryAllocator::getSizeOfDescrp();
    return ((size+sz) % MEM_BLOCK_SIZE == 0) ? (size+sz) / MEM_BLOCK_SIZE :
           (size+sz) / MEM_BLOCK_SIZE + 1;
}

int Kernel::addThread(PCB *pcb, uint64* handle) {
    if(pcb == nullptr) return -1;
    PCBNode* node = (PCBNode*) _mem_alloc(BytsBlck(sizeof(PCBNode)));
    if(!node) return -1;
    node->pcb = pcb;
    node->ID = handle;
    node->next = nullptr;
    if(pcbHead == nullptr){
        pcbHead = node;
        return 0;
    }
    PCBNode* curr = pcbHead;
    for(; curr->next != nullptr; curr = curr->next);
    curr->next = node;
    return 0;
}

int Kernel::removeThread(uint64* handle){
    PCBNode* cur = pcbHead, *prev = nullptr;
    for(;cur && cur->ID != handle;prev = cur, cur = cur->next);
    if(!cur) return -1;
    if(prev) prev->next = cur->next;
    else pcbHead = cur->next;
    _mem_free(cur);
    return 0;
}

int Kernel::addSemaphore(SCB* scb, uint64* handle){
    if(scb == nullptr) return -1;
    SCBNode* node = (SCBNode*) _mem_alloc(BytsBlck(sizeof(SCBNode)));
    if(!node) return -1;
    node->scb = scb;
    node->ID = handle;
    node->next = nullptr;
    if(scbHead == nullptr){
        scbHead = node;
        return 0;
    }
    SCBNode* curr = scbHead;
    for(; curr->next != nullptr; curr = curr->next);
    curr->next = node;
    return 0;
}

int Kernel::removeSemaphore(SCB* scb){
    SCBNode* cur = scbHead, *prev = nullptr;
    for(;cur && cur->scb != scb;prev = cur, cur = cur->next);
    if(!cur) return -1;
    if(prev) prev->next = cur->next;
    else scbHead = cur->next;
    _mem_free(cur);
    return 0;
}

PCB* Kernel::findPCB(uint64* handle){
    for(PCBNode* pcb = pcbHead; pcb != nullptr; pcb = pcb->next){
        if(pcb->ID == handle) return pcb->pcb;
    }
    return nullptr;
}

uint64* Kernel::findPCB(PCB* pcb){
    for(PCBNode* pcbnode = pcbHead; pcbnode != nullptr; pcbnode = pcbnode->next){
        if(pcbnode->pcb == pcb) return pcbnode->ID;
    }
    return nullptr;
}

SCB* Kernel::findSCB(uint64* handle){
    for(SCBNode* scb = scbHead; scb != nullptr; scb = scb->next){
        if(scb->ID == handle) return scb->scb;
    }
    return nullptr;
}

int Kernel::blockThread(PCB* pcb, uint64* handle, time_t time){
    if(pcb == nullptr) return -1;
    BlockedNode* node = (BlockedNode*) _mem_alloc(BytsBlck(sizeof(BlockedNode)));
    if(!node) return -1;
    node->pcb = pcb;
    node->ID = handle;
    node->time = time;
    node->next = nullptr;
    if(blockedHead == nullptr){
        blockedHead = node;
        return 0;
    }
    BlockedNode* curr = blockedHead;
    for(; curr->next != nullptr && curr->time < node->time; curr = curr->next);
    if(curr->next) node->next = curr->next;
    curr->next = node;
    return 0;
}

PCB* Kernel::getBlockedThread(){
    if(!blockedHead || blockedHead->time > 0) return nullptr;
    PCB* pcb = blockedHead->pcb;
    BlockedNode* node = blockedHead;
    blockedHead = node->next;
    _mem_free(node);
    return pcb;
}

void Kernel::tickBlocked(){
    for(BlockedNode* curr=blockedHead; curr; curr=curr->next)
        curr->time--;
}