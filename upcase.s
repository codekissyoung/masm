section .data               ; 保存初始化的数据

section .bss                ; 保存未初始化的数据
    bufflen equ 1024
    buff resb bufflen       ; 设置 1024 长度的缓冲区

section .text               ; 代码段 保存指令
    global _start           ; global告诉链接器让_start标号在程序的边界之外可见

_start:                     ; 该标号为程序的入口，这是 linux 要求的
    nop

read:
    mov eax,3               ; sys_read 调用
    mov ebx,0               ; 0 标准输入
    mov ecx,buff            ; 缓冲区地址
    mov edx,bufflen         ; 缓冲区长度
    int 80H

    mov esi,eax             ; eax 等于 0 表示到了标准输入的结尾
    cmp eax,0
    je exit

    mov ecx,esi
    mov ebp,buff
    dec ebp

scan:
    cmp byte [ebp+ecx],61H  ; 与 'a' 比较
    jb next                 ; 比 'a' 小，则不是小写字母

    cmp byte [ebp+ecx],7AH  ; 与 'z' 比较
    ja next                 ; 比 `z` 大，则不是小写字母

    sub byte [ebp+ecx],20H  ; 转化为大写字母，减去 20H

next:
    dec ecx
    jnz scan                ; 如果还有字符( 即 ecx > 0 ), 则继续scan

write:
    mov eax,4               ; 指定 sys_write 系统调用
    mov ebx,1               ; 指定 文件描述 1 : 标准输出
    mov ecx,buff            ; 传递显示信息的内存地址
    mov edx,esi             ; 传递显示信息的长度
    int 80H

    jmp read

exit:
    mov eax,1               ; 指定 exit 系统调用
    mov ebx,0               ; 程序结束 返回 0
    int 80H                 ; 进行系统调用来终止程序