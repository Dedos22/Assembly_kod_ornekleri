.model small
.data

  msg db 'satir sayisi giriniz', 13, 10, '$'
  msg2 db 13, 10, '$' 
  sayi db ?
  
.code
.startup

mov dx, offset msg
mov ah,9h
int 21h
 
mov ah,1h
int 21h
  
sub al,48
mov sayi, al

call  enterkey
 
mov bl,1 

dongu:
    ;push cx
    mov cx, bx
    
    dongu2:
     
    cmp bl, sayi
    jg  bitir
    mov dl,'*'
    mov ah, 2h
    int 21h
    loop dongu2
    
    ;pop cx
    inc bl
    call enterkey
    
loop  dongu 

bitir:
.exit
 
 enterkey proc near
     mov dx, offset msg2
    mov ah,9h
    int 21h
    ret 
    endp enterkey
 
end