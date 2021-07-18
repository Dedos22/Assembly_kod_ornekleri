.model small
.data

dizi dw 3, 8, 11, 5, 7
diziuzunluk dw 5

.code
.startup

mov cx, diziuzunluk
mov si, 0

dongu:
mov bx, dizi[si]
inc bx
mov dizi[si], bx
inc si
inc si
loop dongu

.exit
end





