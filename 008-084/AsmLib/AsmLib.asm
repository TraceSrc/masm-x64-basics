.data
pArray1 qword 0
pArray2 qword 0
pArray3 qword 0

.code
InitProc proc
    push rbp
    mov rbp, rsp

    mov pArray1, rcx
    mov pArray2, rdx
    mov pArray3, r8

    mov rdx, pArray1
    vmovups ymm2, ymmword ptr [rdx]
    mov rdx, pArray2
    vmovups ymm3, ymmword ptr [rdx]

    leave
    ret
InitProc endp

AddProc proc
    push rbp
    mov rbp, rsp

    vaddps ymm1, ymm2, ymm3

    mov rdx, pArray3
    vmovups ymmword ptr [rdx], ymm1

    leave
    ret
AddProc endp

SubProc proc
    push rbp
    mov rbp, rsp

    vsubps ymm1, ymm2, ymm3

    mov rdx, pArray3
    vmovups ymmword ptr [rdx], ymm1

    leave
    ret
SubProc endp

MulProc proc
    push rbp
    mov rbp, rsp

    vmulps ymm1, ymm2, ymm3

    mov rdx, pArray3
    vmovups ymmword ptr [rdx], ymm1

    leave
    ret
MulProc endp

DivProc proc
    push rbp
    mov rbp, rsp

    vdivps ymm1, ymm2, ymm3

    mov rdx, pArray3
    vmovups ymmword ptr [rdx], ymm1

    leave
    ret
DivProc endp

AndProc proc
    push rbp
    mov rbp, rsp

    vandps ymm1, ymm2, ymm3

    mov rdx, pArray3
    vmovups ymmword ptr [rdx], ymm1

    leave
    ret
AndProc endp

AndNProc proc
    push rbp
    mov rbp, rsp

    vandnps ymm1, ymm2, ymm3

    mov rdx, pArray3
    vmovups ymmword ptr [rdx], ymm1

    leave
    ret
AndNProc endp

OrProc proc
    push rbp
    mov rbp, rsp

    vorps ymm1, ymm2, ymm3

    mov rdx, pArray3
    vmovups ymmword ptr [rdx], ymm1

    leave
    ret
OrProc endp

XorProc proc
    push rbp
    mov rbp, rsp

    vxorps ymm1, ymm2, ymm3

    mov rdx, pArray3
    vmovups ymmword ptr [rdx], ymm1

    leave
    ret
XorProc endp

end
