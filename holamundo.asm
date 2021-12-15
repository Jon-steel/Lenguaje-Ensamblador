.model small
.data
    hola db "Hola Mundo Jonathan","$"
    
.code
programa:
    mov ax,seg hola
    mov ds,ax
    
    mov ah,09h
    lea dx,hola
    int 21h
    
    mov ax,4c00h
    int 21h
    
    
    
end programa