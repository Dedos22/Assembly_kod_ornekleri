.model small
.data

dizi db 'dizi', 13, 10, '$'          
dizi2 db 'dizi2$ '

.code
.startup

mov dx, offset dizi
mov ah, 9h
int 21h

mov dx, offset dizi2
mov ah,9h
int 21h 

 println("dizi" + "dizi2");
.exit
end





