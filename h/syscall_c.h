
#include "../lib/hw.h"
#ifndef _syscall_c
#define _syscall_c

#define MEM_ALLOC       0x01
#define MEM_FREE        0x02
#define THREAD_CREATE   0x11
#define THREAD_EXIT     0x12
#define THREAD_DISPATCH 0x13
#define THREAD_JOIN     0x14
#define THREAD_START    0x15
#define THREAD_CLOSE    0x16
#define SEM_OPEN        0x21
#define SEM_CLOSE       0x22
#define SEM_WAIT        0x23
#define SEM_SIGNAL      0x24
#define TIME_SLEEP      0x31
#define GETC_SIGNAL     0x41
#define PUTC_SIGNAL     0x42


#ifdef __cplusplus
extern "C" {
#endif

void* mem_alloc (size_t size);
void* mem_allocWrapper(uint64 name,size_t size);

int mem_free (void*);
int mem_freeWrapper(uint64,void*);

size_t BytesToBlock(size_t size);

typedef struct _thread {
} _thread;
typedef _thread *thread_t;
int thread_create(
        thread_t *handle,
        void(*start_routine)(void *),
        void *arg
);
int thread_createWrapper(uint64, thread_t *, void(*start_routine)(void *), void *, uint64 *);

int thread_exit();
int thread_exitWrapper(uint64 name);

void thread_dispatch();
void thread_dispatchWrapper(uint64 name);

int thread_start(thread_t handle);
int thread_startWrapper(uint64 name, thread_t handle);

void thread_join(thread_t handle);
void thread_joinWrapper(uint64 name, thread_t handle);

void deleteThread(thread_t handle);
void deleteThreadWrapper(uint64 name, thread_t handle);

typedef struct _sem {
} _sem;
typedef _sem *sem_t;
int sem_open(sem_t *handle, unsigned init);
int sem_openWrapper(uint64 name, sem_t *handle, unsigned init);

int sem_close(sem_t handle);
int sem_closeWrapper(uint64 name, sem_t handle);

int sem_wait(sem_t id);
int sem_waitWrapper(uint64 name, sem_t id);

int sem_signal(sem_t id);
int sem_signalWrapper(uint64 name, sem_t id);

typedef unsigned long time_t;
int time_sleep(time_t);
int time_sleepWrapper(uint64 name, time_t);

const int EOF = -1;
char getc();
char getcWrapper(uint64 name);

void putc(char);
void putcWrapper(uint64 name, char);

#ifdef __cplusplus
}
#endif
#endif