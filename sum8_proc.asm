.model small
.data
a db 8
b db 3
toplam db ?  

.code
.startup 

mov al, a
mov bl, b 
call topla

.exit 

topla proc near
    add al, bl
    mov toplam, al
    ret
endp topla
end

    
    



