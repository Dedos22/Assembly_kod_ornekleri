.model small
.data 

taban db 3
us db 3
sonuc dw 0

.code
.startup

mov ch, 0
mov cl, us

cmp cx,0
je son
mov ax, 0
mov al,1
dongu:
    mul taban
loop dongu
mov sonuc, ax
.exit

son: add sonuc, 1 

end   