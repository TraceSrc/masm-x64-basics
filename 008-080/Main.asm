extrn MessageBoxA : proc

.data
szCaption db "https://ethical.blue/", 0
szText    db "Hello, MASM x64 world!", 0

.code

Main proc
    sub rsp, 28h
    xor r9, r9
    lea r8, szCaption
    lea rdx, szText
    xor rcx, rcx
    call MessageBoxA
    add rsp, 28h

    ret
Main endp

end
