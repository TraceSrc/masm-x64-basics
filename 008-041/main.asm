.data
myWord   word   1
mySWord1 sword -1
mySWord2 sword +1
myWordA  dw     1

.code
Main proc
    mov myWord, 7
    mov ax, myWord
    mov rdx, offset myWord
    mov word ptr [rdx], 5
    
    ret
Main endp
end
