assume cs:codesg

codesg segment

	mov ax,2000H
	mov ss,ax
	mov sp,0H
	add sp,10H
	pop ax
	pop bx
	push ax
	push bx
	pop ax
	pop bx

	mov ax,4C00H
	int 21H
codesg ends
end