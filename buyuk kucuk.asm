org 100h
.data
msg1 db 'bl 5ten buyuk$'
msg2 db 'bl 5ten kucuk$'

.code
mov ax, @data
mov ds, ax
 
mov bl, 4
cmp bl, 5

ja label1
    lea dx, msg2
    mov ah, 09h
    int 21h
jmp exit
label1:    
    lea dx, msg1
    mov ah, 09h
    int 21h
exit:
ret
end



