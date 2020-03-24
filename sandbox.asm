section .data               ; 保存初始化的数据

    MyByte1 db 07H          ; 单字节
    MyByte2 db 10H          ; 单字节
    MyWord dw 0FFFFH        ; 双字节
    MyDouble dd 0B8000000H  ; 4字节

    eatmsg: db "iwannayou!",10,"do you know?",10 ; 10 是 \n 的 ASSIC 的编码
    eatlen: equ $-eatmsg    ; 编译时计算 eatmsg 的长度，记住这种格式的用法即可
    snippet: db "KANGAROO",10

section .bss                ; 保存未初始化的数据

section .text               ; 代码段 保存指令

    global _start           ; global告诉链接器让_start标号在程序的边界之外可见

_start:
    nop

    mov eax,0FFFFFFFFH
    mov ebx,03B2H
    mul ebx

    mov ax,-42
    movsx ebx,ax

    mov eax,-42
    neg eax                 ; 获取一个数的相反数(补码意义上 正确的二进制数)
    add eax,42

    mov eax,3

DoMore: 
    add byte [ebx],32
    inc ebx
    dec eax

    jnz DoMore              ; 如果 ZF 未被设置 则跳转

    mov ecx,eatmsg          ; eatmsg 是 "i wanna you " 的起始地址
    mov eax,[eatmsg]        
    mov [eatmsg],byte 'G'   

    mov ax,067FEH
    mov bx,ax
    mov cl,bh
    mov ch,bl
    xchg cl,ch
        
    nop