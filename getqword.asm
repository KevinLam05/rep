//Kevin Lam

//Your cwid: 1097

//Your section number: 240-3

//kevinlawc@csu.fullerton.edu

//April 23

//Identifier: Final program.

//-----------------CODE---------------------------
global getqword

segment .text
getqword:
    ; rdi contains address
    mov rax, [rdi]  ; Load 8 bytes from address in rdi
    ret
