#include<ucos_ii.h>
#include<stdint.h>
#include<time.h>
#include<host.h>
#include<cpu.h>


volatile uint64_t mstatus_save; 

#define STK_LEN (2048)

OS_STK task1_stk[STK_LEN];
OS_STK task2_stk[STK_LEN];
OS_STK start_stk[STK_LEN];


void task1(void *args)
{
	int cnt=0;
	for(;;)
	{
		cnt++;
		printf("task1 is runing... %d\n",cnt);
		OSTimeDly(10);
	}
}

void task2(void *args)
{
	int cnt=0;
	for(;;)
	{
		cnt++;
		printf("task2 is runing... %d\n",cnt);
		OSTimeDly(11);
	}
}

void start_task(void *args)
{

	printf("start all task...\n");
	next_timecmp();
	enable_time_int();
	enable_global_int();
	
	OSTaskCreate(task1,NULL,&task1_stk[STK_LEN-1],13);
	OSTaskCreate(task2,NULL,&task2_stk[STK_LEN-1],12);
	OSTaskDel(OS_PRIO_SELF);
	for(;;){}
}

int main(void)
{
	printf("init...\n");
	OSInit();
	OSTaskCreate(start_task,NULL,&start_stk[STK_LEN-1],10);
	printf("create start task success \r\n");
	OSStart();
	while(1){}
}


