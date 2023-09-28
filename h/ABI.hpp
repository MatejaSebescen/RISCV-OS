#include "../lib/hw.h"

#ifndef _ABI
#define _ABI
#include "syscall_c.h"

void* _mem_alloc (size_t size);

int _mem_free (void*);

int _thread_create(thread_t* handle,
                   void(*start_routine)(void*), void* arg, void* stack_space);

int _thread_exit();

void _thread_dispatch();

int _thread_start(uint64* handle);

int _thread_join(uint64* handle);

int _thread_close(uint64* handle);

int _sem_open(sem_t* handle, unsigned init);

int _sem_close(uint64* handle);

int _sem_wait(uint64* id);

int _sem_signal(uint64* id);

int _time_sleep (time_t time);

void _putc (char c);

char _getc ();

//ISTO KAO U SYSCALL_C

#endif