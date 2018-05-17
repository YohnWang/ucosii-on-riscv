#ifndef _TRAP_H
#define _TRAP_H

#include<cpu.h>



#ifndef NULL
#define NULL ((void*)0)
#endif


extern void halt(xlen_t,xlen_t);
extern void syscall_handler(xlen_t sp[]);
extern xlen_t trap_handler(xlen_t mcause,xlen_t mepc,xlen_t sp[]);





#endif
