nasm -f elf32 -g hello.asm -o hello.o
ld -m elf_i386 -o hello hello.o
gdb ./hello

break _start
run
nexti
nexti
nexti
nexti
quit 