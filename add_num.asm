section .bss
    num1   resb 2
    num2   resb 2
    result resb 2    

section .text
_start:
    print msg, msglen
    scan num1, 2

    print msg1, msglen1
    scan num2, 2

    mov al, [num1]
    sub al, '0'
    mov bl, al

    mov al, [num2]
    sub al, '0'

    add al, bl

    add al, '0'
    mov [result], al

    print msg2, msglen2
    print result, 1
    print newl, 2

    mov eax, 1
    xor ebx, ebx
    int 80h
