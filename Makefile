.PHONY : all
all : sandbox upcase

sandbox : sandbox.o
	ld sandbox.o -o sandbox
sandbox.o : sandbox.s
	nasm -f elf64 -g -F dwarf sandbox.s -l sandbox.lst

upcase : upcase.o
	ld upcase.o -o upcase
upcase.o : upcase.s
	nasm -f elf64 -g -F dwarf upcase.s -l upcase.lst

clean:
	rm sandbox upcase *.o *.lst