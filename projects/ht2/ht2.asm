include macros.asm

.model small

.data
    titleht db 10D, 'Pedro Martin Francisco - 201700656 - HT2', '$'
    new_line db 13D, 10D, '$'
    array1 dw 20, 50, 98, 54, 35, 789, 415, 347, 500, 600
    array2 dw 10, 5,  2,  5,  7,  63,  11,  21,  50,  60
    msg1  db 10D, 'Divisible', '$'
    msg2 db 10D, 'No Divisible', '$'


.code

;proc for the clear registers
clear_registers PROC 
    xor ax, ax
    xor bx, bx
    xor cx, cx
    xor dx, dx
    ret
clear_registers ENDP

main PROC
    print titleht ;print the title
    print new_line ;print a new line
    call clear_registers ;clear the registers
    mov si, 0 ;si = 0

    DO: ;loop for the arrays
        call clear_registers ;clear the registers
        mov ax, array1[si] ;ax = array1[si]
        mov bx, array2[si] ;bx = array2[si]
        div bx ;divide ax by bx

        cmp dl, 0 ;compare dl with 0
        je  TRUE_DIVISIBLE ;jump if dl = 0
        jmp FALSE_DIVISIBLE ;jump if dl != 0

        LOOPING: ;loop for the arrays
            inc si  ;si++ esta parte si incrementa dos veces por el del dato que es word
            inc si  ;si++
            cmp si, 20 ;si <= 20
            jne DO ;jump if si != 20
            jmp END_LOOPING ;jump if si = 20

    TRUE_DIVISIBLE:
        print msg1
        jmp LOOPING

    FALSE_DIVISIBLE: 
        print msg2
        jmp LOOPING
    END_LOOPING:    
        exit
    ret    
main ENDP
end main