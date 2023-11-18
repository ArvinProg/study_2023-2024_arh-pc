%include 'in_out.asm'

SECTION .data
 msg: DB 'Введите x: ',0
 ans: DB 'Ответ: ',0

SECTION .bss
 buf: RESB 80

SECTION .text
 GLOBAL _start
 _start:
  mov eax,msg
  call sprintLF

  mov ecx,buf
  mov edx,80
  call sread

  mov eax,buf
  call atoi

  add eax,1
  mov ebx,18
  mul ebx

  xor edx,edx
  mov ebx,6
  div ebx

  mov edi,eax

  mov eax,ans
  call sprint

  mov eax,edi
  call iprintLF

  call quit


