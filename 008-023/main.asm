extrn ExitProcess : proc
extrn MessageBoxA : proc

.data
szText db "Jestem wirusem komputerowym. "
       db "Jednak jestem zbyt etyczny, "
       db "by zainfekować Twój system. "
       db "Dlatego skopiuj mnie w różne "
       db "miejsca na dysku komputera.", 0
.data?

.code
Main proc

    sub rsp, 28h
    xor r9, r9
    xor r8, r8
    mov rdx, offset szText ;lea rdx, szText
    xor rcx, rcx
    call MessageBoxA
    add rsp, 28h
    
    sub rsp, 28h
    xor rcx, rcx
    call ExitProcess

Main endp
end
