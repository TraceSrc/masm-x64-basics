.data
myDword   dword   1
mySDword1 sdword -1
mySDword2 sdword +1
myDwordA  dd     1

.code
Main proc
    mov myDword, 7
    mov eax, myDword
    mov rdx, offset myDword
    mov dword ptr [rdx], 5
    
    ret
Main endp
end
