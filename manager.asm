;Kevin Lam

;Your cwid: 1097

;Your section number: 240-3

;kevinlawc@csu.fullerton.edu

;April 23

;Identifier: Final program.

;-----------------CODE---------------------------
extern printf
extern scanf
extern getqword

global manager

section .data
    number      dq -17
    prompt      db "Please enter an address in hex: ", 0
    hex_fmt     db "%lx", 0
    out_fmt     db "The integer at that address is %016lx", 10, 0
    finish_msg  db "Function getqword has finished. A number will be returned to the driver.", 10, 0

section .bss
    input_addr  resq 1
    user_val    resq 1

section .text
manager:
    push rbp
    mov rbp, rsp

    ; Display the address of number
    lea rax, [number]
    mov rsi, rax
    mov rdi, hex_fmt
    xor rax, rax
    call printf
    call printf

    ; Ask for address
    mov rdi, prompt
    call printf

    ; Read address
    mov rdi, hex_fmt
    mov rsi, input_addr
    call scanf

    ; Call getqword
    mov rdi, [input_addr]
    call getqword
    mov [user_val], rax

    ; Display value
    mov rsi, rax
    mov rdi, out_fmt
    xor rax, rax
    call printf

    ; Notify done
    mov rdi, finish_msg
    call printf

    ; Return value to driver
    mov rax, [user_val]
    pop rbp
    ret
