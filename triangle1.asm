.model small
.data

  msg db 'satir sayisi giriniz', 13, 10, '$'
  msg2 db 13, 10, '$'
  
.code
.startup

mov dx, offset msg
call puts

call  getc   

sub al,48 ; decimal 48 ya da hexadecimal 30h

mov ch,0
mov cl,al

mov dx, offset msg2 ; enter
call puts 

dongu:
push cx
    dongu2:
    call putc
    loop dongu2
mov dx, offset msg2
call puts
pop cx
loop  dongu

.exit

puts:
mov ah,9h
int 21h
ret

getc:
mov ah,1h
int 21h
ret

putc:
mov dl,'*'
mov ah, 2h
int 21h
ret

end