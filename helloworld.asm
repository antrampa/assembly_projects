section .data
	msg db 'Hello, World by Assembly!\n', 0

section .text
	global _start

_start:
	; write system call
	mov eax, 4	;syscall number for write
	mov ebx, 1	; file descriptor (1 for stdout)
	mov ecx, msg	; message to write
	mov edx, 27	; length of message
	int 0x80	; call kernel

	; exit system call
	mov eax, 1	; syscall number for exit
	xor ebx, ebx	; exit status (o for success) 
	int 0x80	; call kernel
