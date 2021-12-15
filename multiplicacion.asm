include 'emu8086.inc'
org 100h

.data  
mult db 2 dup (?)
.code
main proc
    
    printn ""
    print "primer numero: "
    call scan_num
    mov mult[0],cl
    printn ""
    print "segudo numero: "
    call scan_num
    mov mult[1],cl
    
    xor ax,ax
    
    mov al,mult[0]
    mul mult[1] 
    
    printn ""
    print "la multiplcacion es: "
    call print_num
    
main endp
    exit:
    printn ""
    print  "enter para salir"
    mov ah,0
    int 16h
    ret 
    
    define_print_string
    define_print_num
    define_print_num_uns
    define_scan_num