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
je topla  ; if zf=1 then goto topla
sub ax,bx
mov sonuc, ax
  .exit

topla:
add ax,bx
mov sonuc, ax



end                