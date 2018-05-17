#include<stdint.h>
#include<time.h>



uint64_t get_time(void)
{
	return time;
}

void add_timecmp(uint64_t tick)
{
	timecmp=time+tick;
}

void next_timecmp(void)
{
	add_timecmp(Time_Tick_Clk);
}

void delay(uint64_t t)
{
	uint64_t s=get_time();
	while(get_time()-s<t){}
}
