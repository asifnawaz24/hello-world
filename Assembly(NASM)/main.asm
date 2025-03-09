; This example was used from https://gist.github.com/mcandre/b3664ffbeb4f5764b36a397fafb04f1c

section .data
    hello db 'Hello, World!', 0  
    helloLen equ $ - hello        

section .text
    global main
    extern ExitProcess, WriteConsoleA, GetStdHandle

main:
    sub rsp, 28h               
    mov rcx, -11                
    call GetStdHandle

    mov r9, 0                
    mov r8, helloLen          
    mov rdx, hello            
    mov rcx, rax               
    call WriteConsoleA        

    mov rcx, 0                 
    call ExitProcess  