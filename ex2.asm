global _start

section .text
_start:
    mov ebx, 42       ; Default exit status
    mov eax, 1        ; Linux exit syscall
    mov ecx, 30
    cmp ecx, ebx
    jg skip           ; Jump if ecx < ebx (signed comparison)
    mov ebx, 10

skip:
    int 0x80          ; Exit with status in ebx