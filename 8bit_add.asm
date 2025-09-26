global _start

section .bss
        num1 resb 2
        num2 resb 2

section .text

_start:
        mov eax, 3
        mov ebx, 0
        mov ecx, num1
        mov edx, 2
        int 0x80

        mov eax, 3
        mov ebx, 0
        mov ecx, num2
        mov edx, 2
        int 0x80

        mov al, [num1]
        sub al, '0'
        mov bl, al

        mov al, [num2]
        sub al, '0'

        add al, bl

        mov eax, 1
        xor ebx, ebx
        int 0x80