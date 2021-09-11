print macro buffered
MOV AX, @data
MOV DS, DX
MOV AH, 09H   ;print macro buffered
MOV DX, offset buffered ;print macro buffered
int 21h
endm

