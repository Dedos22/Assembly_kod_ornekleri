.model small
.data

ax_yukle dw 1010101000010011b
son dw ?

.code
.startup 

mov cx, 16
mov bx, 0
mov ax, ax_yukle

dongu:
    shr ax, 1 ; varolan bit 1 ise cf 1 olur  
    jnc atla
    rcl bx, 1
                 
    atla:
    loop dongu
    mov son, bx
    
  .exit
 end