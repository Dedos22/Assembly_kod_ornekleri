.model small
.data
a db 8
b db 3

.code
.startup 

mov al, a
mov bl, b
add al, bl 
mov bh, al

.exit
end

    
    



