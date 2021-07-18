.model small
.data

num1 dw 9
num2 dw 7
sonuc dw 0

.code
.startup

mov ax, num1
mov bx, num2

cmp ax,bx ; if ax-bx=0 then zf=1
call topla  ; if zf=1 then goto topla
  
  .exit

topla proc near
add ax,bx
mov sonuc, ax
ret
endp topla

cikar proc near
sub ax, bx
mov sonuc, ax
ret
endp cikar


end                