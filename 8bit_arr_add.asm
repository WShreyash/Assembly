section .text
global _start

_start:
    mov eax, x        
    mov ebx, 0        
    mov ecx, 5        

top:
    add bl, [eax]     
    inc eax           
    loop top

    add bl, '0'       
    mov [sum], bl

    mov edx, 1
    mov ecx, sum
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80

section .data
x:  db 1,2,3,1,2
sum db 0,0x0a


;run
;nasm -f elf32 8bit_arr_add.asm -o 8bit_arr_add.o
;ld -m elf_i386 8bit_arr_add.o -o 8bit_arr_add
;./8bit_arr_add
