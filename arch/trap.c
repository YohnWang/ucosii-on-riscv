#include<encoding.h>
#include<trap.h>
#include<init.h>
#include<host.h>


void syscall_handler(xlen_t sp[])
{
	extern void task_switch(xlen_t sp[]);
	task_switch(sp);
}

void time_handler(xlen_t sp[])
{
	extern void next_timecmp(void);
	extern void task_switch(xlen_t sp[]);
	next_timecmp();
	OSIntEnter();
	OSTimeTick();
	OSIntExit(); //change OSIntExit , now it must be used with task_switch()
	task_switch(sp);
}


xlen_t trap_handler(xlen_t mcause,xlen_t mepc,xlen_t sp[])
{

	if(mcause<0)
	{
		mcause<<=1;
		mcause>>=1;
		switch(mcause)
		{
			case 7://timer interrupt
				
				sp[31]=mepc;
				time_handler(sp);
				break;
			default:
				halt(mcause,mepc);
				break;
		}
	}
	else 
	{
		switch(mcause)
		{
			case 11://scall M-mode
				sp[31]=mepc+4;
				syscall_handler(sp);
				mepc+=4;
				break;
			default:
				halt(mcause,mepc);
				break;
		}
	}
	return mepc;
}

void halt(xlen_t mcause,xlen_t mepc)
{
	extern void exit(int);
	disable_global_int();
	printf("halt ,mcause=%llx ,mepc=%llx\n",mcause,mepc);
	exit(0);
}



