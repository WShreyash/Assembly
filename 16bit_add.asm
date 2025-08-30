;addition of two 16bit numbers using gdb

global _start

section .data
    num1 dw 1234
    num2 dw 4321

section .text
_start:
    mov ax,[num1]
    add ax,[num2]

    mov eax,1
    xor ebx,ebx
    int 80h


;GDB cmds
;nasm -f elf32 -g -F dwarf 16bit_add.asm -o 16bit_add.o
;ld -m elf_i386 16bit_add.o -o 16bit_add
;gdb ./16bit_add
;break _start
;run
;nexti         

