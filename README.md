# assembly_projects
How to build in Ubuntu 
- Make sure you have installed nasm already https://www.nasm.us/.
- Open a terminal and run the commands
 
nasm -f elf32 -o helloworld.o helloworld.asm 


ld -m elf_i386 -o helloworld helloworld.o 

./helloworld

