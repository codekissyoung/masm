	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	add
	.type	add, @function
add:
.LFB0:
	.cfi_startproc
	lea	eax, [rdi+rsi]
	ret
	.cfi_endproc
.LFE0:
	.size	add, .-add
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	mov	eax, 1
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
