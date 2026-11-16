section .data
    msg db 'Hello, World!', 0xA   ; The text string followed by a newline (0xA)
    len equ $ - msg               ; Automatically calculate the length of the string

section .text
    global _start

_start:
    ; Print to screen (sys_write)
    mov eax, 4                    ; System call 4 = sys_write
    mov ebx, 1                    ; File descriptor 1 = standard output (screen)
    mov ecx, msg                  ; Memory address of our message
    mov edx, len                  ; Number of bytes to print
    int 0x80                      ; Call the Linux kernel

    ; Exit program (sys_exit)
    mov eax, 1                    ; System call 1 = sys_exit
    mov ebx, 0                    ; Exit status 0 (no errors)
    int 0x80                      ; Call the Linux kernel
    

