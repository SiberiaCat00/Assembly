
NUL  EQU       0X00
SETCHAR  EQU       0X07
VIDEOMEM  EQU       0XB800
STRINGLEN  EQU       0XFFFF
section code align=16 vstart=0x7c00
mov       SI, SAYHELLO
xor       DI, DI
CALL      PRINTSTRING
MOV       SI, SAYBYEBYE
CALL      PRINTSTRING
JMP       END
PRINTSTRING:
.SETUP:
MOV       AX, VIDEOMEM
MOV       ES, AX

MOV       BH, SETCHAR
MOV       CX, STRINGLEN

    .PRINTCHAR:
MOV       BL, [DS:SI]
INC       SI
MOV       [ES:DI], BL
INC       DI
MOV       [ES:DI], BH
INC       DI
OR        BL, NUL
JZ        .RETURN
LOOP      .PRINTCHAR
    .RETURN:
RET

SAYHELLO  DB 'Hi there,I am SiberiaCat!'
DB 0X00

SAYBYEBYE  DB 'I think you can handle it,bye!'
DB 0X00

END:  JMP  END


times 510-($-$$) db 0
db 0x55,0xaa
