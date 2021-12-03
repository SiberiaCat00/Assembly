mov cx, 100

mov ax, 0

sum:
    add ax,cx
    loop sum

jmp $
