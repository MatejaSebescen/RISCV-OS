#include "../h/utility.hpp"
#include "../h/syscall_cpp.hpp"
#include "../lib/hw.h"


char* intToChars(int number){
    int i=getNumLength(number);
    char* chars = new char[i];
    if(!chars) return nullptr;
    for(int j=0;j<i;j++){
        chars[j] = (char) (0x30+getNum(number,j,i));
    }
    return chars;
}

char* uint64ToChars(uint64 number){
    uint64 i= getNumLength(number);
    char* chars = new char[i];
    if(!chars) return nullptr;
    for(uint64 j=0;j<i;j++){
        chars[j] = (char) (0x30+getNum(number,j,i));
    }
    return chars;
}

int getNum(int number, int pos, int length){
    int del = pow(10,length-pos-1);
    return (number/del)%10;
}

uint64 getNum(uint64 number, uint64 pos, uint64 length){
    uint64 del = pow((uint64)10,length-pos-1);
    return (number/del)%10;
}

int getNumLength(int number){
    int i=1;
    for(;;i++){
        if(number % pow(10,i) == number) break;
    }
    return i;
}

uint64 getNumLength(uint64 number){
    uint64 i=1;
    for(;;i++){
        if(number % pow((uint64) 10,i) == number) break;
    }
    return i;
}

int pow(int number, int pow){
    if(pow<0) return 0;
    if(pow==0) return 1;
    if(pow==1) return number;
    int res=number;
    for(int i=1;i<pow;i++)
        res*=number;
    return res;
}

uint64 pow(uint64 number, uint64 pow){
    if(pow==0) return 1;
    if(pow==1) return number;
    uint64 res=number;
    for(uint64 i=1;i<pow;i++)
        res*=number;
    return res;
}

void printNumber(int number){
    if(number<0){
        putc('-');
        number *= -1;
    }
    char* num = intToChars(number);
    for(int i=0;i< getNumLength(number);i++)
        putc(num[i]);
    delete num;
}

void printNumber(int* number){
    printNumber(*number);
}

void printNumber(uint64 number){
    char* num = uint64ToChars(number);
    for(uint64 i=0;i< getNumLength(number);i++)
        putc(num[i]);
    delete num;
}

int getStringLength(char string[]){
    int length=0;
    for(int i=0;string[i] != '\0';i++)
        length++;
    return length;
}

void printf(char string[]){
    for(int i=0;i< getStringLength(string);i++)
        putc(string[i]);
}

int getStringLength(const char string[]){
    int length=0;
    for(int i=0;string[i] != '\0';i++)
        length++;
    return length;
}

void printf(const char string[]){
    for(int i=0;i< getStringLength(string);i++)
        putc(string[i]);
}

void printfNL(char string[]){
    for(int i=0;i< getStringLength(string);i++)
        putc(string[i]);
    putc('\n');
}
void printfNL(const char string[]){
    for(int i=0;i< getStringLength(string);i++)
        putc(string[i]);
    putc('\n');
}
