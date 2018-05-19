include ./Makefile.inc


INCLUDES = \
	-I. \
	-I./source \
	-I./arch \
	-I./cfg \


CFLAGS = \
	$(WARNINGS) $(INCLUDES) \
	-fomit-frame-pointer -fno-strict-aliasing -fno-builtin \
	-D__gracefulExit -mcmodel=medany -O2 #-fPIC

GCCVER 	= $(shell $(GCC) --version | grep gcc | cut -d" " -f9)

#
# Define all object files.
#
OBJS = ./arch/start.o ./arch/init.o ./source/ucos_ii.o ./cfg/app_hooks.o ./cfg/os_cpu_a.o ./cfg/os_cpu_c.o    ./arch/time.o ./arch/host.o ./arch/trap.o main.o

LDFLAGS	 = -T arch/link.ld -nostartfiles -static -nostdlib
LIBS	 = -L$(CCPATH)/lib/gcc/$(TARGET)/$(GCCVER) \
		   -L$(CCPATH)/$(TARGET)/lib \
		   -lc -lgcc

%.o: %.c
	@echo "    CC $<"
	@$(GCC) -c $(CFLAGS) -o $@ $<

%.o: %.S
	@echo "    CC $<"
	@$(GCC) -c $(CFLAGS) -o $@ $<

all: $(PROG).elf

$(PROG).elf  : $(OBJS) Makefile 
	@echo Linking....
	@$(GCC) -o $@ $(LDFLAGS) $(OBJS) $(LIBS)
	@$(OBJDUMP) -S $(PROG).elf > $(PROG).asm	
	@echo Completed $@

clean :
	-find . -name "*.o" | xargs rm 
	-find . -name "*.elf" | xargs rm 
	-find . -name "*.out" | xargs rm 
	-rm $(PROG).asm

force_true:
	@true

#-------------------------------------------------------------
sim: all
	spike -l $(PROG).elf


