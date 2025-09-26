global _start

section .data
    num1 dw 3333
    num2 dw 1111

section .text
_start:
    mov ax,[num1]
    sub ax,[num2]

    mov eax,1
    xor ebx,ebx
    int 80h