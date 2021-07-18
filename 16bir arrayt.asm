.model small
.data
dizi dw 1,3,5,7

.code
.startup

mov cx,4
mov si,0

dongu:
    mov bx, dizi[si]
    inc bx
    mov dizi[si],bx
    inc si
    inc si;add si,2
loop dongu 

.exit





