.model small
.data

msg1 db '1. sayiyi gir', 13, 10, '$'
msg2 db '2. sayiyi gir', 13, 10 , '$'
msg3 db 'toplam = $'
num1 db ?
num2 db ? 
sum db ?


.code
.startup 

mov ax, @data
mov ds, ax
  
mov dx,  offset msg1
call puts

;1. sayi
call get 
sub al, 48 ; ascii den decimal sayiya cevirme
mov num1, al  

mov dx, offset msg2
call puts

;2.sayi
call get
sub al, 48 ; ascii den decimal sayiya cevirme
mov num2, al 
 

.exit

puts:
mov ah, 9h
int 21h
ret 

get:
mov ah, 1h
int 21h
ret 
 
addfunc:

mov al, num1
add al, num2
add al, 48 ;decimal den asciiye cevirme 
mov sum, al
mov dx, offset msg3
call puts


end

    
    



