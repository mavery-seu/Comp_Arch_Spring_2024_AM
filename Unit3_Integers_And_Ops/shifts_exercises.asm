; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]

; Purpose - to learn the following:
; 	- logical shifts
;	- arithmetic shifts
;	- rotate shifts

%include "asm_io.inc"

; initialized data
segment .data
left_prompt db "Shift left by: ", 0

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        ; mov eax, 10
        ; shl eax, 3      ; multiply by 2^3 = 8
        ; call print_int
        ; call print_nl

        ; mov eax, 080000045H
        ; call print_int
        ; call print_nl
        ; shl eax, 1
        ; call print_int

        ; INCORRECT
        ; mov ebx, 3
        ; mov eax, 20
        ; shl eax, ebx
        ; call print_int

        ; mov eax, 23
        ; shr eax, 2 ; divide by 4
        ; call print_int

        ; mov eax, 4
        ; mov ebx, 2
        ; test eax, ebx
        ; dump_regs 1

        ; zero out a register
        ; shift by # of bits in register
        ; and 0
        ; xor with itself
        ; mov eax, 56
        ; ; and eax, 0 ; works but not exactly
        ; xor eax, eax

        ; dump_regs 1

        ; calculate the 1s complement
        ; just not

        ; turn on specific bit
        ; mov ebx, 1
        ; shl ebx, 2

        ; mov eax, 11
        ; or eax, ebx

        ; call print_int

        ; turn off a specific bit
        ; mov ebx, 1
        ; shl ebx, 3
        ; not ebx

        ; mov eax, 15
        ; and eax, ebx

        ; call print_int

        ; mov ebx, 1
        ; shl ebx, 3

        ; mov eax, 1
        ; xor eax, ebx

        ; call print_int

        ; zero out top 16 bits
        mov eax, -1
        and eax, 0FFFFH
        dump_regs 1

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret




