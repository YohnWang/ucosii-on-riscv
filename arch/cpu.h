#ifndef _CPU_H
#define _CPU_H

#include<stdint.h>

#if __riscv_xlen == 64
typedef int64_t xlen_t;


#else 
typedef int32_t xlen_t;


#endif
 
typedef uint32_t ilen_t;

#define enable_global_int() asm("csrsi mstatus,0x8")
#define disable_global_int() asm("csrci mstatus,0x8")
#define enable_time_int() asm("li t0,0x80\n\tcsrs mie,t0")
#define disable_time_int() asm("li t0,0x80\n\tcsrc mie,t0")


extern void cpu_sr_reset(xlen_t);
extern xlen_t   cpu_sr_set(void);

#define atomic_begin(_sr)  ({_sr=cpu_sr_set();})
#define atomic_end(_sr)   cpu_sr_reset(_sr)

#endif

