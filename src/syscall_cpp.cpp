#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.h"
#include "../lib/hw.h"


void* operator new(size_t size){
    return mem_alloc(size);
}

void* operator new[](size_t size){
    return mem_alloc(size);
}

void operator delete (void* address){
    mem_free(address);
}

void operator delete[] (void* address){
    mem_free(address);
}

void Thread::wrapper(void* t){
    if(t)((Thread*)t)->run();
}

Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg) {
    int res = thread_create((thread_t*) &myHandle,body,arg);
    if(res < 0){return;}
}

Thread::Thread() : body(wrapper), arg(this){
    int res = thread_create((thread_t*) &myHandle,body,arg);
    if(res < 0){return;}
}

Thread::~Thread() {
    this->join();
    deleteThread(this->myHandle);
    myHandle = nullptr;
}

int Thread::start () {
    return thread_start(myHandle);
}

void Thread::join(){
    thread_join(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}


Semaphore::Semaphore (unsigned init){
    int res = sem_open((sem_t*) &myHandle,init);
    if(res){return;}
}
Semaphore::~Semaphore (){
    sem_close(myHandle);
    myHandle = nullptr;
}
int Semaphore::wait (){
    return sem_wait(myHandle);
}
int Semaphore::signal (){
    return sem_signal(myHandle);
}
/*
int Thread::sleep (time_t){

    return 0;
}
*/
char Console::getc (){
    return ::getc();
}

void Console::putc (char c){
    ::putc(c);
}