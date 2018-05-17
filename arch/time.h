#ifndef TIME_H
#define TIME_H

#include<stdint.h>

#define time_addr     (0x2000000+0xbff8)
#define timecmp_addr  (0x2000000+0x4000)

#define time (*(volatile uint64_t*)time_addr)
#define timecmp (*(volatile uint64_t*)timecmp_addr)

#define Time_Tick_Clk (10000)

//typedef uint64_t time_t;

extern uint64_t get_time(void);
extern void add_timecmp(uint64_t );
extern void next_timecmp(void);


#endif 

