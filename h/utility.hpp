#include "../lib/hw.h"

#ifndef _utility
#define _utility

int getNum(int number, int pos, int length);
uint64 getNum(uint64 number, uint64 pos, uint64 length);

char* intToChars(int number);
char* uint64ToChars(uint64 number);

int getNumLength(int number);
uint64 getNumLength(uint64 number);

int pow(int number, int pow);
uint64 pow(uint64 number, uint64 pow);

void printNumber(int number);
void printNumber(int* number);
void printNumber(uint64 number);

int getStringLength(char string[]);
void printf(char string[]);
int getStringLength(const char string[]);
void printf(const char string[]);
void printfNL(char string[]);
void printfNL(const char string[]);

#endif
