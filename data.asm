assume cs:code

code segment

    start:             ; start 标记 : 链接后, CS:IP 指向的位置
        mov ax, 1
        mov cx, 3
        
        call func      ; 调用 子过程
        mov bx, ax     ; bx = 8

        mov ax, 4c00h
        int 21h

    func:
        add ax, ax
        loop func
        ret             ; 返回

code ends
end start