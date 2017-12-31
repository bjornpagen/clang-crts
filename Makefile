#Makefile for musl-clang crt's

all:
	clang -fPIC -c crtbegin.c -o /usr/lib/crtbegin.o
	cp /usr/lib/crtbegin.o /usr/lib/crtbeginS.o
	cp /usr/lib/crtbegin.o /usr/lib/crtbeginT.o
	clang -fPIC -c crtend.c -o /usr/lib/crtend.o
	cp /usr/lib/crtend.o /usr/lib/crtendS.o
	cp /usr/lib/crtend.o /usr/lib/crtendT.o
	#x86_64 asm files. Generic .c files also available
	clang -c crti.c -o /usr/lib/crti.o
	clang -c crtn.c -o /usr/lib/crtn.o
	#crt_arch.h is for x86_64
	clang -fPIC -c crt1.c -o /usr/lib/crt1.o
