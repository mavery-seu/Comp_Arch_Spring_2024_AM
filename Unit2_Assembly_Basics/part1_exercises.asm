; 
; Base Author:  Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
; 	- comments
;	- dumping registers
;	- printing empty lines
;	- instructions: mov, add, sub, inc/dec

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        ; dump registers and printing new lines
        ; from Carter
        dump_regs 1     ; dump the registers
        call print_nl   ; print a newline

        ; the MOV instruction
        mov eax, 0      ; making EAX = 0
        mov ah, 18      ; AH = 18 (base 10)
        mov al, 0BAH    ; AL = 0xBA (base 16)
        dump_regs 2     ; dump the registers
        call print_nl   ; print a newline

        mov eax, 0FFH   ; update all of eax
        dump_regs 3     ; dump the registers
        call print_nl   ; print a newline

        ; the ADD instruction
        mov eax, 3      ; eax = 3
        mov ebx, 4      ; ebx = 4

        add eax, ebx    ; eax += ebx, eax = 7
        dump_regs 4     ; dump registers
        call print_nl   ; print a newline

        ; ADD instruction exercise
        mov eax, 40     ; eax = 40
        mov ebx, 2      ; ebx = 2

        dump_regs 5     ; dump registers
        call print_nl   ; print a newline

        add ebx, eax    ; ebx += eax (42)
        dump_regs 6     ; dump registers
        call print_nl   ; print newline

        ; SUB instruction 
        mov eax, 10     ; eax = 10
        mov ebx, 4      ; ebx = 4

        sub eax, ebx    ; eax -= ebx (6)
        dump_regs 7     ; dump registers
        call print_nl   ; print newline

        inc ebx         ; ebx += 1 (increment)
        dump_regs 8     ; dump registers
        call print_nl   ; print newline

        ; SUB intruction exercise
        mov eax, 16     ; eax = 16
        dump_regs 9     ; dump registers
        call print_nl   ; print newline

        mov ebx, 4      ; ebx = 4
        dump_regs 10    ; dump registers
        call print_nl   ; print newline

        sub eax, ebx    ; eax -= ebx (12)
        dump_regs 11   ; dump registers
        call print_nl   ; print newline

        mov ecx, eax    ; ecx = eax
        inc ecx         ; ecx += 1
        dump_regs 12    ; dump registers
        call print_nl   ; print newline

        ; Clever ADDing exercise
        ; given 12 multiply by 4
        mov eax, 12     ; eax = 12 (a)
        add eax, eax    ; eax = 24 (2a)
        add eax, eax    ; eax = 48 (2a + 2a = 4a)
        dump_regs 13    ; dump registers
        call print_nl   ; print newline

        ; given 4 multiply by 12
        ; note: 12 = 8 + 4
        mov eax, 4      ; eax = 4 (a)
        add eax, eax    ; eax = 8 (2a)
        add eax, eax    ; eax = 16 (2a + 2a = 4a)
        mov ebx, eax    ; ebx = eax (4a)

        add eax, eax    ; eax = 32 (4a + 4a = 8a)

        add eax, ebx    ; eax += 32 (8a + 4a = 12a)
        dump_regs 14    ; dump registers

        popa
        mov     eax, 0  ; return back to C
        leave                     
        ret


