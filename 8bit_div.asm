;Division of two 8bit numbers using GDB

global _start

section .data
    num1 db 20      
    num2 db 5       

section .text
_start:
    mov al,[num1]   
    mov bl,[num2]   
    xor ah,ah       
    div bl          

    mov eax,1
    xor ebx,ebx
    int 80h


;GDB cmds
;nasm -f elf32 -g -F dwarf 8bit_div.asm -o 8bit_div.o
;ld -m elf_i386 8bit_div.o -o 8bit_div
;gdb ./8bit_div
;break _start
;run
;layout asm
;layout regs
;nexti                       
;nexti
;nexti
;nexti       



