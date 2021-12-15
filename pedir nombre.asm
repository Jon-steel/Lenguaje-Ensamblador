include 'emu8086.inc'
org 100h
.data
    mensaje          db 10,13,"Hola Mucho Gusto ", "$"
    palabra          db 100 dup(0), "$" 
    codificada       db 100 dup(0), "$"
.code
    printn "Ingresa tu nombre"        
    mov ax,@data
    mov ds, ax    
    mov di, 00h
    mov si, 00h
    mov cx, 100

    codificar:

        call read
.   
        cmp al, 13
        je mostrar 

        mov palabra[si],al 
        inc si    

        else:
            mov codificada[di],al
            inc di
            jmp codificar

    read: 
        mov ah,01h
        int 21h
        ret


    mostrar: 

       mov dx, offset mensaje
       mov ah, 09h
       int 21h   

     
       mov dx, offset[codificada]
       mov ah, 09h
       int 21h
ret
