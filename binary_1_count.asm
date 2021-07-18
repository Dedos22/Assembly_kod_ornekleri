.model small
.data
axeyukle dw 1010101010101010b
string dw ?
.code
.startup

mov cx,16                
mov ax,axeyukle    
mov bx,0      		   

dongu:
    shr ax,1  
    jnc atla  
    rcr bx,1  
    
    atla:      
    loop dongu 
    mov string,bx   
    .exit
end
