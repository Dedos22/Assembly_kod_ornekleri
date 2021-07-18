data segment

ends

code segment
start:

    mov dl, 'a'
    mov ah,2h
    int 21h

mov ax, 4c00h
int 21h  

ends

end start
