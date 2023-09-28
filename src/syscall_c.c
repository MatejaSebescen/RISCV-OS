#include "../h/syscall_c.h"
#include "../lib/hw.h"


void* mem_alloc (size_t size){
    size_t blockSize = BytesToBlock(size);
    return (char*) mem_allocWrapper(MEM_ALLOC, blockSize);
}
void* mem_allocWrapper(uint64 name,size_t size){
    asm volatile("ecall");
    void* result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}

size_t BytesToBlock(size_t size){
    size_t sz = sizeof(uint64*)*2 + sizeof(size_t);
    return ((size+sz) % MEM_BLOCK_SIZE == 0) ? (size+sz) / MEM_BLOCK_SIZE :
           (size+sz) / MEM_BLOCK_SIZE + 1;
}

int mem_free(void* address){
    return mem_freeWrapper(MEM_FREE, address);
}

int mem_freeWrapper(uint64 name, void* address){
    asm volatile("ecall");
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}


int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    uint64* sp = (uint64*) mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
    if(!sp){
        return -1;
    }
    return thread_createWrapper(THREAD_CREATE, handle, start_routine, arg, sp);
}

int thread_createWrapper(uint64 name, thread_t* handle,
                         void(*start_routine)(void*), void* arg, uint64* sp){
    asm volatile("ecall");
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}

int thread_exit (){
    return thread_exitWrapper(THREAD_EXIT);
}

int thread_exitWrapper(uint64 name) {
    asm volatile("ecall");
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}

void thread_dispatch(){
    thread_dispatchWrapper(THREAD_DISPATCH);
}
void thread_dispatchWrapper(uint64 name){
    asm volatile("ecall");
}

int thread_start(thread_t handle){
    return thread_startWrapper(THREAD_START, handle);
}
int thread_startWrapper(uint64 name, thread_t handle){
    asm volatile("ecall");
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}

void thread_join(thread_t handle){
    thread_joinWrapper(THREAD_JOIN, handle);
}
void thread_joinWrapper(uint64 name, thread_t handle){
    asm volatile("ecall");
}

void deleteThread(thread_t handle){
    deleteThreadWrapper(THREAD_CLOSE, handle);
}
void deleteThreadWrapper(uint64 name, thread_t handle){
    asm volatile("ecall");
}

int sem_open (sem_t* handle,unsigned init){
    return sem_openWrapper(SEM_OPEN, handle, init);
}
int sem_openWrapper(uint64 name, sem_t* handle, unsigned init){
    asm volatile("ecall");
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}

int sem_close (sem_t handle){
    return sem_closeWrapper(SEM_CLOSE, handle);
}
int sem_closeWrapper (uint64 name,sem_t handle){
    asm volatile("ecall");
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}

int sem_wait (sem_t id){
    return sem_waitWrapper(SEM_WAIT, id);
}
int sem_waitWrapper(uint64 name,sem_t id){
    asm volatile("ecall");
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}

int sem_signal (sem_t id){
    return sem_signalWrapper(SEM_SIGNAL, id);
}
int sem_signalWrapper (uint64 name,sem_t id){
    asm volatile("ecall");
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}

int time_sleep (time_t t){
    return time_sleepWrapper(TIME_SLEEP, t);
}
int time_sleepWrapper (uint64 name, time_t t){
    asm volatile("ecall");
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}

char getc (){
    return getcWrapper(GETC_SIGNAL);
}
char getcWrapper (uint64 name){
    asm volatile("ecall");
    int result;
    asm volatile("mv %0, a0" : "=r" (result));
    return result;
}

void putc (char c){
    putcWrapper(PUTC_SIGNAL,c);
}
void putcWrapper (uint64 name, char c){
    asm volatile("ecall");
}

