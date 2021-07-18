.model small
.data

A dw 2
B dw 3
C dw 2
D dw 0
 ; D = AxB + C
.code
.startup

mov cx, B
   cmp cx,0 ; if cx-0=0 then zf=1
    jz sifir  
dongu:
     
    add bx, A
loop dongu

sifir: add bx, C
       mov D, bx
       
.exit
end    


