# File to be included in all makefiles

RISCV_XLEN ?= 64
RISCV_LIB  ?= elf
RISCV = /home/wang/risc-v/riscv-tool-chain
CCPATH	= $(RISCV)
TARGET=$(CCPATH)/bin/riscv${RISCV_XLEN}-unknown-${RISCV_LIB}

#-----------------------------------------------------------

GCC = riscv64-unknown-elf-gcc
OBJCOPY	= riscv64-unknown-elf-objcopy
OBJDUMP	= riscv64-unknown-elf-objdump
AR		= riscv64-unknown-elf-ar
RANLIB	= riscv64-unknown-elf-ranlib

PROG	= riscv-spike
CRT0	= arch/boot.S

UCOS_SOURCE_DIR	= ./source
#CUNIT	= ../../../cunit

#-----------------------------------------------------------
WARNINGS= -Wall -Wextra -Wshadow -Wpointer-arith -Wbad-function-cast -Wcast-align -Wsign-compare \
		-Waggregate-return -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wunused

