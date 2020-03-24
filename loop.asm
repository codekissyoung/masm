assume cs:code

code segment

    mov ax,0
    mov cx,236

mul:
    add ax,123
    loop mul

    mov ax,4C00H
    int 21H
code ends

end