global _start

section .text
_start:
    mov al, 8
    mov bl, 7
    mul bl

    mov eax,1
    xor ebx,ebx
    int 80h