assume cs:codesg    ; 伪指令 假设 cs 寄存器 与 codesg 段关联

codesg segment      ; 伪指令 段开始
    mov ax,0123H
    mov bx,0456H
    add ax,bx
    add ax,ax

    ; 程序结束，将CPU控制权给回调用程序
    mov ax,4c00H
    int 21H
codesg ends         ; codesg 段结束

end
