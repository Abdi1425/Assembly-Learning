global _start
section .data
addr db "yellow"
section .text
_start:
mov [addr], byte 'H'
mov [addr+5], byte '!'
mov eax, 4
mov ebx, 1
mov ecx, addr
mov edx,6
int 0x80