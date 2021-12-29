.const
ONE equ 1
TWO equ ONE+ONE
TRUE equ 1
FALSE equ 0
NULL equ 0
MINUS1 equ -1
LETTER_A equ 'A'
MSG01 equ "Hello!", 0
NOT0FF equ NOT 0FFh

.data
szMessageHello db MSG01
szMessageBye db "Bye, bye.", 0

.code
Main proc
    ;debug me!
    mov rax, ONE
    mov rax, TWO
    mov rax, TRUE
    mov rax, FALSE
    mov rax, NULL
    mov rax, MINUS1
    mov al, LETTER_A
    mov rax, offset szMessageHello
    mov rax, NOT0FF
    
    xor rax, rax
    ret
Main endp
end
