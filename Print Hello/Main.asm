mov ax, 0b800h
mov ds, ax
;定位显存地址

mov byte [0x00],'S'
mov byte [0x02],'i'
mov byte [0x04],'b'
mov byte [0x06],'e'
mov byte [0x08],'r'
mov byte [0x0a],'i'
mov byte [0x0c],'a'
mov byte [0x0e],'C'
mov byte [0x10],'a'
mov byte [0x12],'t'
;在显存中输g入SiberiaCat

jmp $
;循环运行，一个死循环

times 510-($-$$) db 0
db 0x55,0xaa
;看不懂  