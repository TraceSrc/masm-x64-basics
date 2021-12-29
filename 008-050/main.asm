.data
var1 dword 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0
var2 dword 1, 2, 3, 4, 5, 6, 7, 8

.code
Main proc
    mov rdx, offset var1
    vmovups ymm0, ymmword ptr [rdx]
    vmovups ymm1, ymm0
    
    mov rdx, offset var2
    vmovdqu ymm0, ymmword ptr [rdx]
    vmovdqu ymm1, ymm0
    
    ret
Main endp
end
