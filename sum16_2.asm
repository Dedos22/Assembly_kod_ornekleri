.model small
.data

num1 dw 0304h
num2 dw 0502h

.code
.startup

mov ax, num1
mov bx, num2
;add ax,bx
add al,bl
add ah,bh 


.exit
end