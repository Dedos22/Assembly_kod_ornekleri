.model small
.data
 Num dw 4321h
.code
.startup
Mov ax, 1234h ; immediate addressing
Mov bx, ax ; register addressing
Mov ax, num ; direct addressing
Mov si, 1000h
Mov al, [si] ; indirect addressing
Mov bl, [si+100h] ; relative addressing
Mov bx, 1000h
Mov ax, [si+bx] ; base index addressing
Mov cx, [si+bx+100h]; relative base index addressing
.exit
end 