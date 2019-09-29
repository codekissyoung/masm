.PHONY : all
all : sandbox upcase main

sandbox : sandbox.o
	ld sandbox.o -o sandbox
sandbox.o : sandbox.s
	nasm -f elf64 -g -F dwarf sandbox.s -l sandbox.lst

upcase : upcase.o
	ld upcase.o -o upcase
upcase.o : upcase.s
	nasm -f elf64 -g -F dwarf upcase.s -l upcase.lst

main : main.o
	gcc main.o -o main
	objdump main.o -D -M intel > main.objdump.s
main.o : main.s
	gcc -c main.s -o main.o
main.s : main.c
	gcc -masm=intel -S main.c -o main.s
clean:
	$(RM) sandbox upcase *.o *.lst
	$(RM) main.s main.objdump.s main