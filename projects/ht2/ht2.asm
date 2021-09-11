include macros.asm

.MODEL small

.STACK 

.DATA
    count DB 0
    array1 DW 11 dup('$'), 20, 50, 98, 54, 35, 789, 415, 347, 500, 600, '$'
    array2 DW 11 dup('$'), 10, 5,  2,  5,  7,  63,  11,  21,  50,  60, '$'

.CODE

main PROC
    print array1
    print array2
    ; MOV AX, @data
    ; MOV DS, AX

    ; MOV AX,55
    ; MOV BX,AX

    ; xor AX,AX
    ; MOV AX,BX
    ; MOV DL,30
    ; DIV DL,30
    ; MOV count, AH
    
main ENDP
end main    