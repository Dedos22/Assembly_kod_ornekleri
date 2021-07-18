.model small
.data

num1 dw 03h
num2 dw 05h

.code
.startup

mov ax, num1
add ax, num2

.exit
end