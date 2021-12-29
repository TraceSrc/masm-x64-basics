extrn MessageBoxA : proc

.data
szCaption db "https://ethical.blue/", 0
szText db "Nested procedures example.", 0

.code
Nested3 proc
    push rbp
    mov rbp, rsp
    sub rsp, 50h
    xor r9, r9
    lea r8, szCaption
    lea rdx, szText
    xor rcx, rcx
    call MessageBoxA
    add rsp, 50h
    leave
    ret
Nested3 endp

Nested2 proc
    push rbp
    mov rbp, rsp
    sub rsp, 40h
    call Nested3
    add rsp, 40h
    leave
    ret
Nested2 endp
    
Nested1 proc
    push rbp
    mov rbp, rsp
    sub rsp, 30h
    call Nested2
    add rsp, 30h
    leave
    ret
Nested1 endp

Main proc
    sub rsp, 28h
    call Nested1
    add rsp, 28h
    
    ret
Main endp
end
