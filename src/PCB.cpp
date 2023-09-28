#include "../h/PCB.hpp"
#include "../h/Scheduler.hpp"
#include "../h/ABI.hpp"
#include "../h/utility.hpp"
#include "../h/syscall_cpp.hpp"

PCB *PCB::running = nullptr;

uint64 PCB::timeSliceCounter = 0;

uint64* PCB::IDcounter = nullptr;

uint64* PCB::getID(){
    IDcounter =(uint64*) ((char*) IDcounter+1);
    return IDcounter;
}

void PCB::setID(uint64* id){
    this->ID = id;
}

void* PCB::operator new(size_t count)
{
    return _mem_alloc(BytsBlck(count));
}

void PCB::operator delete (void* add){
    _mem_free(add);
}

extern "C" uint64 * PCB::getRunningStack(){
    return (uint64*) *(running->context+1);
}
extern "C" void PCB::setRunningStack(uint64 reg){
    *(running->context+1) = reg;
}

PCB::PCB(Body body, uint64 timeSlice, void* arg, uint64* stack, uint64* kernelStack, uint64* context){
    this->body = body;
    this->stack = stack;
    this->kernelStack = kernelStack;
    //kernelStack se menja u threadWrapper
    this->timeSlice = timeSlice;
    this->arg = arg;
    state = initializing;
    parent = running;
    ID = nullptr;
    blockedHead = nullptr;
    this->context = context;
    initContext((uint64) &threadWrapper,(uint64) ((stack != nullptr) ? &stack[DEFAULT_STACK_SIZE] : 0));
}

PCB::~PCB(){
    while (1){
        PCB* pcb = this->unblockThread();
        if(!pcb) break;
        Scheduler::put(pcb);
    }
    _mem_free(stack);
    _mem_free(kernelStack);
    _mem_free(context);
    Kernel::removeThread(this->ID);
}

PCB *PCB::createThread(Body body,void* arg,uint64* stack) {
    uint64 * kernelStack = (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)*DEFAULT_STACK_SIZE));
    if(!kernelStack) return nullptr;
    uint64 * context = (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)*31));
    if(!context) return nullptr;
    PCB* node = new PCB(body,DEFAULT_TIME_SLICE,arg,stack, kernelStack, context);
    return node;
}

void PCB::yield() {
    _thread_dispatch();
}

void PCB::dispatch() {
    PCB *old = running;
    if (old->state != terminating && old->state != suspended) { old->setState(ready); Scheduler::put(old); }
    running = Scheduler::get();
    running->setState(States::running);
    PCB::contextSwitch(old->context, running->context);
}

void PCB::endSysCall(){
    asm volatile ("csrw sepc, ra");
    asm volatile("sret");
}

//U KORISNICKOM REZIMU
void PCB::threadWrapper() {
    endSysCall();
        //TRENUTNO U USERSTACK-A, DAKLE UBACUJE SE KERNEL STACK NA CONTEXT
    setRunningStack((uint64) &running->kernelStack[DEFAULT_STACK_SIZE]);
    running->body(running->arg);
    if(thread_exit() <0) printfNL("Nepravilan izlazak iz niti"); //GRESKA
    while (1);
}

PCB* PCB::initKernelPCB(uint64* stack){
    IDcounter =  (uint64*) _mem_alloc(BytsBlck(sizeof(uint64)));
    if(!IDcounter) return nullptr;
    PCB* node = createThread(0, nullptr,stack);
    if(!node) return nullptr;
    //printNumber((uint64)node);
    node->state = States::running;
    node->ID = IDcounter;
    running = node;
    return node;
}

PCB* PCB::initIdlePCB(uint64* stack){
    PCB* node = createThread(&idleThread, nullptr,stack);
    if(!node) return nullptr;
    //printNumber((uint64)node);
    node->state = States::ready;
    node->ID = getID();
    return node;
}

void PCB::initContext(uint64 ra, uint64 sp){
    *context = ra;
    *(context+1) = sp;
}

void* PCB::runningSaveA0(void* reg){
    asm volatile("sd a0, 9*8(%[context])" :: [context] "r" (running->context));
    return reg;
}

void* PCB::runningSaveA1(void* reg){
    asm volatile("sd %0, 10*8(%1)" : "=r" (reg) : "r" (running->context));
    return reg;
}

int PCB::blockThread(PCB* pcb){
    if(pcb == nullptr) return -1;
    BlockedNode* node = (BlockedNode*) _mem_alloc(BytsTBlck(sizeof(BlockedNode)));  //NEW !!!
    if(node == nullptr) return -2; //NEMA MEMORIJE
    node->pcb = pcb;
    node->next = nullptr;
    if(blockedHead == nullptr){
        blockedHead = node;
        return 0;
    }
    BlockedNode* curr = blockedHead;
    for(; curr->next != nullptr; curr = curr->next);
    curr->next = node;
    return 0;
}

PCB* PCB::unblockThread(){
    if(!blockedHead) return nullptr;
    PCB* pcb = blockedHead->pcb;
    BlockedNode* node = blockedHead;
    blockedHead = node->next;
    _mem_free(node);
    return pcb;
}
