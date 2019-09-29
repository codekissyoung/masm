	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	long_var
	.data
	.align 8
	.type	long_var, @object
	.size	long_var, 8
long_var:
	.quad	10
	.globl	int_var
	.align 4
	.type	int_var, @object
	.size	int_var, 4
int_var:
	.long	1
	.globl	ch
	.type	ch, @object
	.size	ch, 1
ch:
	.byte	99
	.globl	hello
	.section	.rodata
.LC0:
	.string	"hello \344\270\255\346\226\207 abc"
	.section	.data.rel.local,"aw",@progbits
	.align 8
	.type	hello, @object
	.size	hello, 8
hello:
	.quad	.LC0
	.globl	int_arr
	.data
	.align 32
	.type	int_arr, @object
	.size	int_arr, 128
int_arr:
	.long	19
	.long	23
	.long	34
	.long	56
	.long	67
	.long	78
	.zero	104
	.globl	answer
	.align 8
	.type	answer, @object
	.size	answer, 8
answer:
	.quad	41
	.text
	.globl	multi_parm
	.type	multi_parm, @function

multi_parm:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi		# a
	mov	QWORD PTR -16[rbp], rsi		# b
	mov	QWORD PTR -24[rbp], rdx		# c
	mov	QWORD PTR -32[rbp], rcx		# d
	mov	QWORD PTR -40[rbp], r8		# e
	mov	QWORD PTR -48[rbp], r9		# f
	mov	rdx, QWORD PTR 16[rbp]		# g
	mov	rax, QWORD PTR 24[rbp]		# h
	add	rdx, rax
	mov	rax, QWORD PTR 32[rbp]		# i
	add	rax, rdx
	pop	rbp
	ret

.LFE0:
	.size	multi_parm, .-multi_parm
	.globl	imediate_mode
	.type	imediate_mode, @function
imediate_mode:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, 18
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	imediate_mode, .-imediate_mode
	.globl	register_mode
	.type	register_mode, @function
register_mode:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
#APP
# 20 "main.c" 1
	mov rax, 0x41
# 0 "" 2
# 21 "main.c" 1
	mov rbx, 0x45
# 0 "" 2
#NO_APP
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	register_mode, .-register_mode
	.globl	direct_mode
	.type	direct_mode, @function
direct_mode:
.LFB3:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, QWORD PTR answer[rip]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	direct_mode, .-direct_mode
	.globl	indexed_mode
	.type	indexed_mode, @function
indexed_mode:
.LFB4:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], 6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, int_arr[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	indexed_mode, .-indexed_mode
	.globl	indirect_mode
	.type	indirect_mode, @function
indirect_mode:
.LFB5:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	lea	rax, answer[rip]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 42
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	indirect_mode, .-indirect_mode
	.globl	base_pointer_mode
	.type	base_pointer_mode, @function
base_pointer_mode:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], 41
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	base_pointer_mode, .-base_pointer_mode
	.globl	calc_area
	.type	calc_area, @function
calc_area:
.LFB7:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	imul	rax, QWORD PTR -16[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	calc_area, .-calc_area
	.globl	calc_area_price
	.type	calc_area_price, @function
calc_area_price:
.LFB8:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	calc_area
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	calc_area_price, .-calc_area_price
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -32[rbp], 3
	mov	QWORD PTR -24[rbp], 4
	mov	QWORD PTR -16[rbp], 5
	mov	rdx, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	calc_area_price
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
