.model small
.data 

taban db 2
us db 3
sonuc dw 0

.code
.startup

mov ax, 0
mov al, 1
mov cl, us 
call ustal 

.exit

ustal proc near

mul taban
mov sonuc, ax
dec cx    
cmp cx, 0
je son:

call ustal
son: 
ret
endp ustal

end   