.data
mem64 mmword 1.0

.code
Main proc
    mov rax, 7
    movq mm0, rax
    movq mm1, mem64
    
    ret
Main endp
end
