extrn lstrcatA    : proc
extrn MessageBoxA : proc

.data
szText1 byte "Hello "
        byte 128 dup(0)

szText2 byte "world!", 0

.code
Main proc
    sub rsp, 28h
    lea rdx, szText2
    lea rcx, szText1
    call lstrcatA
    add rsp, 28h
    
    sub rsp, 28h
    xor r9, r9
    lea r8, szText1
    lea rdx, szText1
    xor rcx, rcx
    call MessageBoxA
    add rsp, 28h
    
    ret
Main endp
end
