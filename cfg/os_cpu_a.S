/**/
#include "../arch/encoding.h"
#include "../arch/define.h"
#********************************************************************************************************
#                                          PUBLIC FUNCTIONS
#********************************************************************************************************

    .extern  OSRunning                               # External references
    .extern  OSPrioCur
    .extern  OSPrioHighRdy
    .extern  OSTCBCur
    .extern  OSTCBHighRdy
    .extern  OSIntEnter
    .extern  OSIntExit
    .extern  OSTimeTick
    .extern  OSTaskSwHook


    .global  OSStartHighRdy                          # Functions declared in this file
    .global  OS_CPU_SR_Save
    .global  OS_CPU_SR_Restore
    .global  OSCtxSw
    .global  OSIntCtxSw
    .global  OSTickISR
    //.global  Software_IRQHandler


#********************************************************************************************************
#                                               EQUATES
#********************************************************************************************************

    .equ  RISCV_MSTATUS_MIE,         0x08

    .equ  RISCV_MIE_MSIE,            0x08            # M Soft Interrupt bit

    .equ  RISCV_PRCI_BASE_ADDR,      0x44000000


#********************************************************************************************************
#                                     CODE GENERATION DIRECTIVES
#********************************************************************************************************

.section .text


#********************************************************************************************************
#                                 CRITICAL SECTION METHOD 3 FUNCTIONS
#
# Description: Disable/Enable interrupts by preserving the state of interrupts.  Generally speaking you
#              would store the state of the interrupt disable flag in the local variable 'cpu_sr' and then
#              disable interrupts.  'cpu_sr' is allocated in all of uC/OS-II's functions that need to
#              disable interrupts.  You would restore the interrupt disable state by copying back 'cpu_sr'
#              into the CPU's status register.
#
# Prototypes :     OS_CPU_SR  OS_CPU_SR_Save(void);
#                  void       OS_CPU_SR_Restore(OS_CPU_SR cpu_sr);
#
#
# Note(s)    : 1) These functions are used in general like this:
#
#                 void Task (void *p_arg)
#                 {
#                 #if OS_CRITICAL_METHOD == 3          /* Allocate storage for CPU status register */
#                     OS_CPU_SR  cpu_sr;
#                 #endif
#
#                          :
#                          :
#                     OS_ENTER_CRITICAL();             /* cpu_sr = OS_CPU_SaveSR();                */
#                          :
#                          :
#                     OS_EXIT_CRITICAL();              /* OS_CPU_RestoreSR(cpu_sr);                */
#                          :
#                          :
#                 }
#********************************************************************************************************
	.align 8
OS_CPU_SR_Save:
# Save the Machine status register
    csrr   a0, mstatus

# Disable global interupt
//RISCV_MSTATUS_MIE = 0x8 (0b1000) it is the bit of MIE in mstatus
    csrci mstatus,0x8
    ret

OS_CPU_SR_Restore:
# Restore the Machine status register previous state
    csrw   mstatus, a0
    ret


#********************************************************************************************************
#                                         START MULTITASKING
#                                      void OSStartHighRdy(void)
#
# Note(s) : 1) OSStartHighRdy() MUST:
#              a) Call OSTaskSwHook() then,
#              b) Set OSRunning to TRUE,
#              c) Set OSTCBHighRdy->OSTCBStkPtr = SP
#              d) Restore x1-x31; There is no need to restore x0 since it is always zero.
#              e) Enable interrupts (tasks will run with interrupts enabled).
#              f) Switch to highest priority task.
#********************************************************************************************************

#if __riscv_xlen == 64
#define STORE    sd
#define LOAD     ld
#define REGBYTES 8
#else
#define STORE    sw
#define LOAD     lw
#define REGBYTES 4
#endif



/*
void OSStartHighRdy (void)
{
	Call user definable OSTaskSwHook();
	Get the stack pointer of the task to resume:
	Stack pointer = OSTCBHighRdy->OSTCBStkPtr;
	OSRunning = TRUE;
	Restore all processor registers from the new task's stack;
	Execute a return from interrupt instruction;
}

notice: in this function, t6 must be used to jump, and t5 must be used to save mstatus
*/
//this function don't set mstauts. So the first task should let user to enable global interrupt 
OSStartHighRdy:

	//call OSTaskSwHook
    jal    OSTaskSwHook

	//OSRunning=1
    li     t0, 0x01
    la     t1, OSRunning
    sb     t0, 0(t1)

	//get new sp
	//sp=OSTCBHighRdy->OSTCBStkPtr;

    la     t0, OSTCBHighRdy
    LOAD   t1, 0(t0)
    LOAD   sp, 0(t1) //load sp
	
	LOAD t0,31*REGBYTES(sp)
	csrw mepc,t0
	
    LOAD_CTX_REG
	//run task 
    mret

	.align 4

OSCtxSw:
	scall
	ret 

//never be used! 
//I delete it in OSIntexit
OSIntCtxSw:
	
	j task_switch
	
	.end

