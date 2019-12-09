# stack initialization

stack structure

stk[1] is the register of mstatus,MPIE must be set

stk[9] is task argument

stk[31] is task start address

other position can be ignored.



# how does trap process

1. store register (x1-x31)
2. store mstatus
3. get mcause,mepc,sp
4. call trap_handler
5. set mepc(next instruction or next task)
6. restore mstatus
7. load register
8. mret



`trap_handler`will analyise which interrupt or exception occur,and process it.

If mcause is lower than zero,it is interrput,or it is exception



# how to switch task

ucos-ii will use `OSCtxSw` to switch task,but now we use `task_switch` .

In `time_handler`,it will replace `OSTickISR` .

And in `OSIntExit` ,`OSIntCtxSw`is removed,but in `time_handler`,`task_switch` will do its work.

If task give up processor,`scall`should be call,then `syscall_handler`  will finish task switch.(This work was originally completed by the macro `OS_TASK_SW`)

666
