.model small
.data
fibo db ?
sayac db 3       
.code
.startup
 
mov cl,sayac
mov ah,0       
mov bh,1       
call fibonacci       
 
.exit

fibonacci proc near

add ah,bh
mov fibo[si],ah
mov ah,bh
mov bh,fibo[si]
inc si
dec cl
cmp cl, 0
jnz  call fibonacci
ret
endp fibonacci


end
