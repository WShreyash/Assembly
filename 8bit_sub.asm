global _start

section .data
    num1 db 8
    num2 db 4

section .text
_start:
    mov al,[num1]
    sub al,[num2]

    mov eax,1
    xor ebx,ebx
    int 80h