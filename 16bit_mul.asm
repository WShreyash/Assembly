global _start

section .text
_start:
    mov ax, 111
    mov bx, 77
    mul bx

    mov eax,1
    xor ebx,ebx
    int 80h