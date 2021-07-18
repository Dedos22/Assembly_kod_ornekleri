.model small
.data
msg db 10,13,'string giriniz: $'
enter db 13, 10 
string db ? 
.code
.startup

mov dx,offset msg
call putstring
mov si,offset string
input:
    call getchar
    mov [si],al
    inc si
    cmp al,13d
    jnz input
    mov [si],'$'
    mov dx, offset enter
    call putstring
    mov dx, offset string
    call putstring

.exit

putstring proc near
    mov ah, 9h
    int 21h 
    ret
endp putstring

getchar proc near
    mov ah, 1h
    int 21h
    ret
endp getchar

end 