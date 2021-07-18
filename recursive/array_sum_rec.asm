.model small
.data

    array db 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    sum db 0

.code
.startup

;mov bx, offset array
mov si, 0
mov cl, 10
call topla

.exit

topla proc near
    dec cx
    add al, array[si]
    
    inc si
    cmp cx, 0
    je son:
    call topla
son:mov sum , al
ret
endp topla



end