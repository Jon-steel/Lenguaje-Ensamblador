.model small
.data
    msg db 10,13,7,'Ingrese cadena: ','$'
    cadena db 100 dup(' '),'$'
.code
main: 
    mov ax,seg  msg
    mov ds,ax
    
    mov ah,09h
    lea dx,msg
    int 21h
     
        
    mov ah,3fh    
    mov bx,00
    mov cx,100
    mov dx,offset[cadena]     
    int 21h
    
    mov ah,09h
    mov dx,offset[cadena]
    int 21h
        
        
end main