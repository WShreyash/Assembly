section .data
    name db "Shreeyash", 0xA
    namelen equ $ - name
    surname db "Wale", 0xA
    surnamelen equ $ - surname

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, namelen
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, surname
    mov edx, surnamelen
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80