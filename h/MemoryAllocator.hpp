#include "../lib/hw.h"

#ifndef _MemoryAllocator
#define _MemoryAllocator


class MemoryAllocator{
        public:
        static MemoryAllocator* get();
        static int initMemAlloc();
        static size_t getSizeOfDescrp();

        MemoryAllocator(const MemoryAllocator&) = delete; // rule of three
        MemoryAllocator& operator=(const MemoryAllocator&) = delete;

        static void deallocate(void* obj);
        static void* allocate(size_t size);

        private:
        struct memBlock{
            size_t size;
            memBlock* next;
            memBlock* prev;
        };
        static memBlock* freeMemHead;
        static memBlock* takenMemHead;
        MemoryAllocator() = default; // no public constructor
        ~MemoryAllocator() = default; // no public destructor
};

#endif
