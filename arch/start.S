/* */
#include"define.h"

	.global _mstart
	.text 
	.align 4
_mstart:
	//set MPP 
	li t6, 0x1800
    csrw mstatus, t6
	//set trap-vector base-address register
    la t0, trap_vector
    csrw mtvec, t0

    //initialize all general register
    li	x1, 0
    li	x2, 0
    li	x3, 0
    li	x4, 0
    li	x5, 0
	li	x6, 0
    li	x7, 0
    li	x8, 0
    li	x9, 0
    li	x10, 0
    li	x11, 0
    li	x12, 0
    li	x13, 0
    li	x14, 0
    li	x15, 0
    li	x16, 0
    li	x17, 0
    li	x18, 0
    li	x19, 0
    li	x20, 0
    li	x21, 0
    li	x22, 0
    li	x23, 0
    li	x24, 0
    li	x25, 0
    li	x26, 0
    li	x27, 0
    li	x28, 0
    li	x29, 0
    li	x30, 0
    li	x31, 0

    /* initialize global pointer */
    la	gp, _gp
    la  sp,_stack
    
    .extern init
    j init
     
    
    .global trap_handler
    .text
    .align 4
trap_vector:
	
    STORE_CTX_REG
    
    csrr t0,mstatus 
    STORE t0,1*REGBYTES(sp)

    //call xlen_t trap_handler(mcause,mepc,sp);
    csrr a0,mcause
    csrr a1,mepc
    mv a2,sp
    jal trap_handler
    csrw mepc,a0
    
    LOAD t0,1*REGBYTES(sp)
    csrw mstatus,t0
    
    LOAD_CTX_REG
    
    mret


	.global task_switch
task_switch:
	//restore sp when trap occur ,it's important
	mv sp,a0
	
	//then store sp
	la t0,OSTCBCur
	LOAD t1,0(t0)
	STORE sp,0(t1)
	
	jal OSTaskSwHook
	
	//load OSTCBCur
	la t0,OSTCBHighRdy
	LOAD t1,0(t0)
	la t0,OSTCBCur
	STORE t1,0(t0)
	
	//load OSPrioCur
	la t0,OSPrioHighRdy //uint8
	lbu t1,0(t0)
	la t0,OSPrioCur //uint8
	sb t1,0(t0)
	
	//load new sp
	la     t0, OSTCBHighRdy
    LOAD   t1, 0(t0)
    LOAD   sp, 0(t1) //load sp
	
	//restore context
	LOAD t0,31*REGBYTES(sp)
	csrw mepc,t0
	LOAD t0,1*REGBYTES(sp)
	csrs mstatus,t0
	
	LOAD_CTX_REG

	mret


	
	.global cpu_sr_set
	.align 4
cpu_sr_set:
	csrr a0,mstatus
	csrci mstatus,0x8
	ret 
	
	.global cpu_sr_reset
cpu_sr_reset:
	csrw mstatus,a0
	ret 
	
    .end
    
