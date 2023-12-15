%include 'in_out.asm'

SECTION .data
	msg db "Результат: ",0h

SECTION .text
	global _start

_start:
	pop ecx
	pop edx
	sub ecx, 1
	mov esi, 0

next:
	cmp ecx, 0
	jz _end

	pop eax
	call atoi

	sub eax, 1
	mov edx, 10
	mul edx
	add esi, eax
	
	loop next

_end:
	mov eax, msg
	call sprint
	mov eax, esi
	call iprintLF
	call quit
