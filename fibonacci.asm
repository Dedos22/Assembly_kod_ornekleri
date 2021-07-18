.model small
.data
fibonacci db ?
sayac db 9       
.code
.startup
 
mov cl, sayac       
mov ah, 0       
mov bh, 1       
mov si, 1
mov fibonacci[si-1],1
fib:
add ah,bh
mov fibonacci[si],ah
mov ah,bh
mov bh,fibonacci[si]
inc si
loop fib

.exit
end
