#include<stdint.h>
#include<cpu.h>
#include<host.h>

static void init_bss(void)
{

	extern uint32_t __bss_start,__bss_end;

	uint32_t *start=(void*)&__bss_start;
	uint32_t *end  =(void*)(&__bss_end-1);
	while(start<=end)
	{
		*start=0;
		start++;
	}
}

static void init_sbss(void)
{
	extern uint32_t __sbss_start,__sbss_end;

	uint32_t *start=(void*)&__sbss_start;
	uint32_t *end  =(void*)(&__sbss_end-1);
	while(start<=end)
	{
		*start=0;
		start++;
	}
}

#ifndef NULL
#define NULL ((void*)0)
#endif

void __attribute__((weak)) exit(int rvalue)
{
	extern int printf(const char*,...);
	disable_global_int();
	tohost=1|(rvalue<<1);
	for(;;){}
}

void init(void)
{
	extern int main(int,char*[]);
	init_sbss();
	init_bss();
	char *argv[]={"ucosii",NULL};
	exit(main(1,argv));
}
