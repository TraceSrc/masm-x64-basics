.data
myReal4  real4  0.5
quarter  real4  0.25

.code
Main proc
    fld myReal4
    fadd quarter
    
    ret
Main endp
end
