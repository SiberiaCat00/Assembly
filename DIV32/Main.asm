mov dx,0x0009
mov ax,0x0006
mov cx,0x0002

push ax
mov ax,dx
mov dx,0

div cx

mov bx,ax

pop ax
div cx

