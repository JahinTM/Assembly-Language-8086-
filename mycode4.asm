.model small
.stack 100h
.code

main proc
    ; 1st input
    mov ah,1
    int 21h
    mov bl,al
    
    ; new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ; 2nd input    
    mov ah,1
    int 21h
    mov bh,al
    
    ; new line print
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ; 1st output
    mov ah,2
    mov dl,bl
    int 21h
    
    ; new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
     
    ; 2nd output
    mov ah,2
    mov dl,bh
    int 21h
       
    ; beep
    mov ah,2
    mov dl,07
    int 21h
    
    
    
    exit: 
    mov ah,4ch
    main endp
end main