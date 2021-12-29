.data
myQword   qword   1
mySQword1 sqword -1
mySQword2 sqword +1
myQwordA  dq     1

.code
Main proc
    mov myQword, 7
    mov rax, myQword
    mov rdx, offset myQword
    mov qword ptr [rdx], 5
    
    ret
Main endp
end
