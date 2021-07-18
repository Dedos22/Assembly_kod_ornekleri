.model small
.data
sayilar db 5,6,7,8

.code
.startup

mov di, 0
mov cx,4

dongu:
    mov ah, sayilar[di]
    inc ah
    mov sayilar[di],ah
    inc di
loop dongu
.exit
end