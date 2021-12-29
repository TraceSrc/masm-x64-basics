.data
var1 qword 1
var2 dword 2
var3 word  3
var4 byte  4

.code
Main proc
    push var1
    
    mov eax, var2
    push eax
    
    movzx rax, var3
    push rax
    
    movzx rax, var4
    push rax
    
    pop r8
    pop r9
    pop r10
    pop r11
    
    ret
Main endp
end
