.data
one1 db 1
one2 BYTE 1
.data?
one3 db ?
.code
Main proc
    mov al, 7
    mov one1, al
    ret
Main endp
end
