global _start


section .data 
    msg: db "Hello, "

    
section .bss
    buffer resb 64
    

section .text
_start:
    mov rax, 0      ; input syscall
    mov rdi, 0
    mov rsi, buffer
    mov rdx, 64
    syscall
    mov r12, rax

    mov rax, 1
    mov rdi, 1
    mov rsi, msg    ; print greeting
    mov rdx, 7
    syscall

    mov rax, 1      ; print input
    mov rdi, 1
    mov rsi, buffer
    mov rdx, r12
    syscall
    
    mov rax, 60
    mov rdi, 0
    syscall