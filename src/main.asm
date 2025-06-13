; main.asm
BITS 16

section .data
	old_video_mode	resb 1  ; variable to store old video mode to return to

section .text
	global _start

_start:
set_video_mode:
	mov	ah, 0x0F
	int	0x10
	mov	[old_video_mode], al ; save current video mode
	
	mov	ah, 0x00
	mov	al, 0x13 ; 320x200@8bits
	int	0x10	

reset_video_mode:
	mov	ah, 0x00
	mov	al, [old_video_mode]
	int	0x10
exit:	
	mov	ah, 0x4C
	mov	al, 0
	int	0x21
		

