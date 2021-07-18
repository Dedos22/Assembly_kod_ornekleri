.model small
.stack 100h
.data 

msg1 db 'Bir karakter giriniz: $'
msg2 db 13, 10, 'Girilen karakter: $'

.code
.startup

; msg1'in adresini dx'e kopyala
mov dx, offset msg1
call puts ; msg1'i yazdir
call getc ; karakteri oku ve al'ye yaz
mov bl, al ; okuanan karakteri bl'ye kaydet

;bir sonraki mesaji goster
mov dx, offset msg2
call puts ; msg2'yi yazdir

; klavyeden okunan karakteri yazdir
mov dl, bl ; karakteri dl'ye kaydet
call putc

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
mov ah, 2h
int 21h
ret