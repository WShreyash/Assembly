global _start
section .text
_start:
mov ecx, len
mov esi, s1
mov edi, s2
loop_lower:
lodsb
or al, 20h
stosb
loop loop_lower
mov edx, len
mov ecx, s2
mov ebx, 1
mov eax, 4
int 0x80

mov eax, 1
int 0x80
section .data

s1 db 'HELLO, WORLD',0
len equ $-s1
section .bss
s2 resb 20