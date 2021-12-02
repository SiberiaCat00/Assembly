mov cx, 100
;初始化循环

mov ax, 0x0000
;初始化寄存器

sum:
    add ax,cx
    loop sum
jmp $
