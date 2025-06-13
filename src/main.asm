; main.asm
BITS 16

section .text
	global _start

_start:
	
exit:
	mov ah, 0
	int 0x21

section .data
