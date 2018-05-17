#ifndef _HOST_H
#define _HOST_H

#include<stdint.h>
#include<stdarg.h>

#ifndef NULL
#define NULL ((void*)0)
#endif
typedef typeof(sizeof(0)) size_t;


extern volatile uint64_t tohost __attribute__((aligned(64)));
extern volatile uint64_t fromhost __attribute__((aligned(64)));

extern int putchar(int ch);
extern int printf(const char* fmt, ...);
extern int sprintf(char* str, const char* fmt, ...);
extern void sprintf_putch(int ch, void** data);
extern void* memcpy(void* dest, const void* src, size_t len);
extern void* memset(void* dest, int byte, size_t len);
extern size_t strlen(const char *s);
extern size_t strnlen(const char *s, size_t n);
extern int strcmp(const char* s1, const char* s2);
extern char* strcpy(char* dest, const char* src);
extern long atol(const char* str);
extern void printstr(const char* s);
extern void printhex(uint64_t x);

#endif

