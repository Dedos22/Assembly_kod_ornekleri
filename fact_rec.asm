.model small
.data      
n dw 4
faktor dw ?
.code
.startup

mov ax, 1
mov bx, n
call faktoriyel_hesap
mov faktor, ax

.exit 

    faktoriyel_hesap proc near
    cmp bx, 1
    je son
    push bx
    dec bx
    call faktoriyel_hesap
    pop bx
    mul bx
        
son: ret 
     endp faktoriyel_hesap 

end
