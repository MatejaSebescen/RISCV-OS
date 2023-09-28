
#include "../lib/hw.h"
#ifndef _queue
#define _queue

class PCB;

template <typename T>
struct block{
    T* element;
    block<T>* next;
    block<T>* prev;
};

template <typename T>
class Queue{
public:
    Queue(T* element);
    Queue();
    void put(T*);
    T* getFirst();
    T* getLast();
    T* findByNumber(int point);
    T* findByElementAndRemove(T* elem);
    T* findByElement(T* elem);
private:
    block<T>* head, *tail;
    int size;
};

template <typename T>
Queue<T>::Queue(T* element){
    head = new block<T>;
    head->element = element;
    head->next = nullptr;
    head->prev = nullptr;
    tail = head;
    size = 1;
}

template <typename T>
Queue<T>::Queue(){
    head = nullptr;
    tail = nullptr;
    size = 0;
}

template <typename T>
void Queue<T>::put(T* element){
    if(head == nullptr){
        head = new block<T>;
        if(!head){} //ERROR
        tail = head;
        head->element = element;
        head->next = nullptr;
        head->prev = nullptr;
        size++;
    }
    else{
        tail->next = new block<T>;
        if(!tail->next){} //ERROR
        tail->next->prev = tail;
        tail = tail->next;
        tail->element = element;
        tail->next = nullptr;
        size++;
    }
}

template <typename T>
T* Queue<T>::getFirst(){
    if(size == 0) return nullptr;
    block<T> *temp = head;
    T* elem = temp->element;
    head = head->next;
    if(head) head->prev = nullptr;
    delete temp;
    size--;
    return elem;
}

template <typename T>
T* Queue<T>::getLast(){
    if(size == 0) return nullptr;
    block<T> *temp = tail;
    T* elem = temp->element;
    tail = tail->prev;
    if(tail) tail->next = nullptr;
    delete temp;
    size--;
    return elem;
}

template <typename T>
T* Queue<T>::findByNumber(int point){
    if(point > size || point <= 0) return nullptr;
    block<T> *temp = head;
    for(int i=1;i<point;i++){
        temp = temp->next;
    }
    return temp->element;
}

template <typename T>
T* Queue<T>::findByElementAndRemove(T* elem){
    if(elem == nullptr) return nullptr;
    block<T> *temp = head;
    while (temp != nullptr){
        if(temp->element == elem) break;
        else temp = temp->next;
    }
    if(temp == nullptr) return nullptr;
    else {
        if(temp->next) temp->next->prev = temp->prev;
        else tail = temp->prev;
        if(temp->prev) temp->prev->next = temp->next;
        else head = temp->next;
        T* element = temp->element;
        delete temp;
        size--;
        return element;
    }
}
template <typename T>
T* Queue<T>::findByElement(T* elem){
    if(elem == nullptr) return nullptr;
    block<T> *temp = head;
    while (temp != nullptr){
        if(temp->element == elem) break;
        else temp = temp->next;
    }
    if(temp == nullptr) return nullptr;
    else return temp->element;
}

template class Queue<PCB>;
template class block<PCB>;
#endif