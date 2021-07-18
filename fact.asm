.model small
.data 
a dw 5
n dw ?
.code
.startup 

      mov ax,a
 fact:
      dec a
      mul a
      mov cx,a
      cmp cx,01
      jnz fact
      mov a, ax
.exit
end
 
