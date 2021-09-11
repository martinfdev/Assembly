
.MODEL samll

.STACK 100h

.DATA
    array1 DB 20, 50, 98, 54, 35, 789, 415, 347, 500, 600, '$'
    array2 DB 10, 5,  2,  5,  7,  63,  11,  21,  50,  60, '$'

.CODE

BEG:
    MOV AX,DATA
    MOV DS,AX
    MOV AH,9
    MOV DX, OFFSET array1
    INT 21H
    MOV AH,4CH
    INT 21H;back to dos
CODE ENDS
END BEG   
