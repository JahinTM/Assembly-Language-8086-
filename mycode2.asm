.model small
.stack 100h
.code   
.data
msg db 3  ; initialize value
msg1 db ? ; user define
main proc
    mov ax, @data
    mov ds,ax
    
    ; msg print
    mov ah,2 
    ;add msg, 48
    mov dl,msg
    int 21h  
    
    ;msg 1 call
    mov ah,1
    int 21h
    mov msg1,al
    
    ; new line 
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
     
    ;msg1 print
    mov ah,2
    mov dl,msg1
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
     
    