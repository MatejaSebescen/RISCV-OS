
#ifndef _interrupt
#define _interrupt

extern "C" void interruptvec();
extern "C" void interrupt();
extern "C" void changeVT();
extern "C" void yield();
#endif