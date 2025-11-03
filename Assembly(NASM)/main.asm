section .data
    msg db 'Hello, World!', 10, 0

section .text
    global main
    extern printf
    extern exit

main:
    sub rsp, 40
    lea rcx, [rel msg]
    call printf
    xor ecx, ecx
    call exit