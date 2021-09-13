print macro buffered
    mov ax, @data
    mov ds, ax
    lea dx, buffered
    mov ah, 09H
    int 21H
    ;clear registers
    call clear_registers
endm

;exit to system
exit macro 
    mov ax, 4c00h
    int 21h
endm