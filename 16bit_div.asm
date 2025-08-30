;Division of two 16bit numbers using GDB

global _start

section .data
    num1 dw 300       
    num2 dw 12       

section .text
_start:
    mov ax,[num1]    
    mov bx,[num2]     
    xor dx,dx         
    div bx            

    mov eax,1
    xor ebx,ebx
    int 80h


;GDB cmds
;nasm -f elf32 -g -F dwarf 16bit_div.asm -o 16bit_div.o
;ld -m elf_i386 16bit_div.o -o 16bit_div
;gdb ./16bit_div
;break _start
;run
;layout asm
;layout regs
;nexti                       
;nexti
;nexti
;nexti       