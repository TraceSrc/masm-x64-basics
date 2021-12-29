.data
myReal4   real4   0.54321

myReal8   real8   7.2e-25
myReal10  real10  7.2e+25

.code
Main proc
    fld myReal4
    fld myReal8
    fld myReal10
    
    ret
Main endp
end
