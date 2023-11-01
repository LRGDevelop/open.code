section .data
    byte_0 dd 0
    byte_2 dd 10
    byte_4 dd 100
    byte_8 dd 1000
    byte_16 dd 10000
    byte_32 dd 100000
    byte_64 dd 1000000
    byte_128 dd 10000000
    byte_256 dd 100000000
    byte_512 dd 1000000000

section .text
global _start

_start:
    ; Cargar los valores en registros de propósito general
    mov rax, [byte_0]
    mov rbx, [byte_2]
    mov rcx, [byte_4]
    mov rdx, [byte_8]
    mov rdx, [byte_16]
    mov rdx, [byte_32]
    mov rdx, [byte_64]
    mov rdx, [byte_128]
    mov rdx, [byte_256]
    mov rdx, [byte_512]

    ; Continúa este patrón para cargar los demás valores en otros registros

    ; Terminar el programa
    mov rax, 60         ; syscall para exit
    xor rdi, rdi        ; Código de salida (0)
    syscall
