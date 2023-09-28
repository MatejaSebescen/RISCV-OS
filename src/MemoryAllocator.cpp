#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"
#include "../h/utility.hpp"

MemoryAllocator::memBlock* MemoryAllocator::freeMemHead = nullptr;
MemoryAllocator::memBlock* MemoryAllocator::takenMemHead = nullptr;

size_t MemoryAllocator::getSizeOfDescrp(){
    return sizeof(memBlock);
}

int MemoryAllocator::initMemAlloc(){
    freeMemHead = (memBlock*) HEAP_START_ADDR;
    freeMemHead->prev = nullptr;
    freeMemHead->next = nullptr;
    size_t freeSize = (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR;
    freeMemHead->size = ((freeSize) % MEM_BLOCK_SIZE == 0) ? (freeSize) / MEM_BLOCK_SIZE :
                        (freeSize) / MEM_BLOCK_SIZE + 1;
    takenMemHead = nullptr;
    return 0;
}

void MemoryAllocator::deallocate(void* obj){
    if(!obj) return;
    memBlock* cur = (memBlock*) ((char*)obj-sizeof(memBlock));
    int found = 0;
    for(memBlock* taken = takenMemHead;taken;taken = taken->next)
        if(taken == cur){
            found = 1;
            break;
        }
    if(!found){
        printf("Dealociranje nezauzete adrese");
        while (1);
    }
    if(cur->prev)cur->prev->next = cur->next;
    if(cur->next)cur->next->prev = cur->prev;
    if(takenMemHead == cur) takenMemHead = cur->next;
        memBlock *fCur = freeMemHead, *fPrev = nullptr;
        if(fCur){
            if(cur < fCur){
                fCur->prev = cur;
                cur->next = fCur;
                freeMemHead = cur;
                cur->prev = nullptr;
            }
            else {
                for (; fCur; fPrev = fCur, fCur = fCur->next)
                    if (fCur > cur) break;
                cur->next = fCur;
                cur->prev = fPrev;
                if (fPrev) fPrev->next = cur;
                if (fCur) fCur->prev = cur;
            }
        }
        else{
            freeMemHead = cur;
            cur->next = nullptr;
            cur->prev = nullptr;
        }

    if(cur->next && (char *) cur->next == (char *) cur + cur->size*MEM_BLOCK_SIZE){
        cur->size = cur->size + cur->next->size;
        cur->next = cur->next->next;
        if(cur->next) cur->next->prev = cur;
    }

    if(cur->prev && (char *) cur->prev + cur->prev->size*MEM_BLOCK_SIZE == (char *) cur){
        cur->prev->size = cur->size + cur->prev->size;
        cur->prev->next = cur->next;
        if(cur->next) cur->next->prev = cur->prev;
    }
}

void* MemoryAllocator::allocate(size_t size){
    if (freeMemHead == nullptr || size <= 0)
        return nullptr;

    memBlock* cur = freeMemHead;
    for( ; cur; cur = cur->next)
        if(cur->size >= size) break;
    if(!cur) return nullptr;
    if(cur == freeMemHead) freeMemHead = cur->next;

    //Ako ima mesta za jos jedan memBlock blok
    if(cur->size-size != 0){                 //pretpostavlja se da je memBlock struktura manja od jednog bloka
        memBlock* newBlk = (memBlock*) ((char*)cur + size*MEM_BLOCK_SIZE);
        newBlk->size = cur->size-size;
        newBlk->next = cur->next;
        newBlk->prev = cur->prev;
        if(cur->prev)cur->prev->next = newBlk;
        else freeMemHead = newBlk;
        if(cur->next)cur->next->prev = newBlk;
    }
    else{
        if(cur->prev)cur->prev->next = cur->next;
        if(cur->next)cur->next->prev = cur->prev;
        if(!cur->prev && !cur->next) freeMemHead = nullptr;
    }

    if(freeMemHead && freeMemHead->size == 0) freeMemHead = nullptr;

    memBlock* goal = (memBlock*) cur;
    goal->size = size;

    memBlock* tCur = takenMemHead, *tPrev = nullptr;
    if(tCur){
        if(goal < tCur){
            tCur->prev = goal;
            goal->next = tCur;
            takenMemHead = goal;
            goal->prev = nullptr;
        }
        else{
            for( ; tCur; tPrev = tCur, tCur = tCur->next)
                if(tCur > goal) break;
            goal->next = tCur;
            goal->prev = tPrev;
            if(tCur) tCur->prev = goal;
            if(tPrev) tPrev->next = goal;
        }

    }
    else{
        takenMemHead = goal;
        goal->next = nullptr;
        goal->prev = nullptr;
    }

    return (char*) goal + sizeof(memBlock);
}