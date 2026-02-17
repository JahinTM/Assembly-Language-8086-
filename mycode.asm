.model small       -- ekhane ekta code sigment and ekta data sigment ache
.stack 100h        -- memory size
.code              -- 
main proc          --main procedure
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
