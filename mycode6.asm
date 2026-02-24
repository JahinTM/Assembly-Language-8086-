.model small
.stack 100h
.data
a db 'Jump Concept: $'
b db 'Assembly Language $'
c db 'Programming $'
.code

main proc 
    ; data initialize
    mov ax,@data
    mov ds,ax
    
    ; print a
    mov ah,9
    lea dx,a
    int 21h
    
    ; new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    m:
    mov ah,9
    lea dx ,b
    int 21h
    jmp n
    
    n:
    mov ah,9
    lea dx,c
    int 21h
    jmp exit
      
    
    

    
    
    
    
    exit:
    mov ax,4ch
    main endp
end main