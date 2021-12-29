.data
var1 dword 1.0, 2.0, 3.0, 4.0
var2 dword 1, 2, 3, 4

.code
Main proc
    mov rdx, offset var1
    movups xmm0, xmmword ptr [rdx]
    movups xmm1, xmm0
    mov rdx, offset var2
    movdqu xmm0, xmmword ptr [rdx]
    movdqu xmm1, xmm0
    
    ret
Main endp
end
