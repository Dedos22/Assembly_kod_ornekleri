.model small
.data

  msg db 'satir sayisi giriniz', 13, 10, '$'
  msg2 db 13, 10, '$'
  
.code
.startup

mov dx, offset msg
mov ah,9h
int 21h
 
mov ah,1h
int 21h
   
sub al,48
mov bl, al

mov dx, offset msg2
mov ah,9h
int 21h
 
mov ch,0
mov cl,bl 

dongu:
push cx
    dongu2:
    mov dl,'*'
    mov ah, 2h
    int 21h
    loop dongu2
pop cx
     mov dx, offset msg2
    mov ah,9h
    int 21h 
loop  dongu 


.exit

 
end