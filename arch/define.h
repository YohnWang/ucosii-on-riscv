

#if __riscv_xlen == 64
# define STORE    sd
# define LOAD     ld
# define REGBYTES 8
#else
# define STORE    sw
# define LOAD     lw
# define REGBYTES 4
#endif

//store and restore register
.macro push_reg reg 
	addi sp,sp,-REGBYTES
	STORE \reg,0(sp)
.endm

.macro pop_reg reg 
	LOAD \reg,0(sp)
	addi sp,sp,REGBYTES
.endm


.macro STORE_CTX_REG
	addi sp,sp,-32*REGBYTES
	STORE     ra,   0 * REGBYTES(sp)
    STORE     t0,   4 * REGBYTES(sp)
    STORE     t1,   5 * REGBYTES(sp)
    STORE     t2,   6 * REGBYTES(sp)
    STORE     s0,   7 * REGBYTES(sp)
    STORE     s1,   8 * REGBYTES(sp)
    STORE     a0,   9 * REGBYTES(sp)
    STORE     a1,  10 * REGBYTES(sp)
    STORE     a2,  11 * REGBYTES(sp)
    STORE     a3,  12 * REGBYTES(sp)
    STORE     a4,  13 * REGBYTES(sp)
    STORE     a5,  14 * REGBYTES(sp)
    STORE     a6,  15 * REGBYTES(sp)
    STORE     a7,  16 * REGBYTES(sp)
    STORE     s2,  17 * REGBYTES(sp)
    STORE     s3,  18 * REGBYTES(sp)
    STORE     s4,  19 * REGBYTES(sp)
    STORE     s5,  20 * REGBYTES(sp)
    STORE     s6,  21 * REGBYTES(sp)
    STORE     s7,  22 * REGBYTES(sp)
    STORE     s8,  23 * REGBYTES(sp)
    STORE     s9,  24 * REGBYTES(sp)
    STORE     s10, 25 * REGBYTES(sp)
    STORE     s11, 26 * REGBYTES(sp)
    STORE     t3,  27 * REGBYTES(sp)
    STORE     t4,  28 * REGBYTES(sp)
    STORE     t5,  29 * REGBYTES(sp)
    STORE     t6,  30 * REGBYTES(sp)
	
.endm

.macro LOAD_CTX_REG
    LOAD     ra,   0 * REGBYTES(sp)
    LOAD     t0,   4 * REGBYTES(sp)
    LOAD     t1,   5 * REGBYTES(sp)
    LOAD     t2,   6 * REGBYTES(sp)
    LOAD     s0,   7 * REGBYTES(sp)
    LOAD     s1,   8 * REGBYTES(sp)
    LOAD     a0,   9 * REGBYTES(sp)
    LOAD     a1,  10 * REGBYTES(sp)
    LOAD     a2,  11 * REGBYTES(sp)
    LOAD     a3,  12 * REGBYTES(sp)
    LOAD     a4,  13 * REGBYTES(sp)
    LOAD     a5,  14 * REGBYTES(sp)
    LOAD     a6,  15 * REGBYTES(sp)
    LOAD     a7,  16 * REGBYTES(sp)
    LOAD     s2,  17 * REGBYTES(sp)
    LOAD     s3,  18 * REGBYTES(sp)
    LOAD     s4,  19 * REGBYTES(sp)
    LOAD     s5,  20 * REGBYTES(sp)
    LOAD     s6,  21 * REGBYTES(sp)
    LOAD     s7,  22 * REGBYTES(sp)
    LOAD     s8,  23 * REGBYTES(sp)
    LOAD     s9,  24 * REGBYTES(sp)
    LOAD     s10, 25 * REGBYTES(sp)
    LOAD     s11, 26 * REGBYTES(sp)
    LOAD     t3,  27 * REGBYTES(sp)
    LOAD     t4,  28 * REGBYTES(sp)
    LOAD     t5,  29 * REGBYTES(sp)
    LOAD     t6,  30 * REGBYTES(sp)
    addi sp,sp,32*REGBYTES
.endm


