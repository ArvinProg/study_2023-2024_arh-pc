%include 'in_out.asm'

section .data
	msg1 db 'Введите х: ',0h
	msg2 db 'Введите а: ',0h
	msg3 db 'Результат: ',0h

section .bss
	result resb 10
	X resb 10
	A resb 10

section .text
	global _start

_start:
	mov eax, msg1
	call sprint
	mov ecx, X
	mov edx, 10
	call sread
	mov eax, X
	call atoi
	mov [X], eax

	mov eax, msg2
	call sprint
	mov ecx, A
	mov edx, 10
	call sread
	mov eax, A
	call atoi
	mov [A], eax

	cmp eax, 8
	jl _calc_first

	mov eax, [X]
	mov ebx, [A]
	mul ebx
	mov [result], eax

	jmp _end

_calc_first:
	mov eax, [A]
	add eax, 8
	mov [result], eax

	jmp _end

_end:
	mov eax, msg3
	call sprint
	mov eax, [result]
	call iprintLF

	call quit

