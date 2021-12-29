extrn MessageBoxW : proc
extrn MultiByteToWideChar : proc

.const
CP_UTF8 equ 65001

.data
multibyteText db "Errør", 0
wideText db 512 dup(0)
caption dw "I", "n", "f", "o", "r", "m", "a", "c", "j", "a", 0

.code
Main proc
    sub rsp, 30h
    mov qword ptr [rsp+28h], sizeof wideText
    lea rdx, wideText
    mov qword ptr [rsp+20h], rdx
    mov r9, sizeof multibyteText
    lea r8, multibyteText
    xor rdx, rdx
    mov rcx, CP_UTF8
    call MultiByteToWideChar
    add rsp, 30h
    
    sub rsp, 28h
    xor r9, r9
    lea r8, caption
    lea rdx, wideText
    xor rcx, rcx
    call MessageBoxW
    add rsp, 28h
    
    ret
Main endp
end
