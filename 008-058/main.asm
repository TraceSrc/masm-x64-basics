extrn MessageBoxA : proc

potion struct
    itemName byte 128 dup(0)
    price real4 0.0
    healthBonus qword 0
    manaBonus qword 0
potion ends

.data
healthPotion1 potion <"Small health potion", 9.99, 10, 0>

.code
Main proc
    sub rsp, 28h
    xor r9, r9
    lea r8, healthPotion1.itemName
    lea rdx, healthPotion1.itemName
    xor rcx, rcx
    call MessageBoxA
    add rsp, 28h
    
    ret
Main endp
end
