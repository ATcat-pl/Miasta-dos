; main.asm
BITS 16

section .data
	msg	db	"Hello world", '$'

section .text
	global _start

_start:
	mov	ax, seg msg
	mov	ds, ax

	mov	ah, 0x09
	mov	dx, msg
	int	0x21
	
	mov	ah, 0x4C
	mov	al, 0
	int	0x21
		

