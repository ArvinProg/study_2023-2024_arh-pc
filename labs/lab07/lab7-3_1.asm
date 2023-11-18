%include 'in_out.asm'

section .data
	msg2 db 'Наибольшее число: ',0h
	A dd 20
	B dd 130
	C dd 50

section .bss
	max resb 10

section .text
	global _start

_start:
	mov ecx, [A]
	mov [max], ecx

	cmp ecx, [C]
	jg check_B
	mov ecx, [C]
	mov [max], ecx

check_B:
	mov ecx, [max]
	cmp ecx, [B]
	jg fin
	mov ecx, [B]
	mov [max], ecx

fin:
	mov eax, msg2
	call sprint
	mov eax, [max]
	call iprintLF
	call quit
