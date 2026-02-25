.model small
.stack 100h
.data
msg1 db 'Input three numbers: $'
msg2 db 10,13,'Largest Number: $'

.code
main proc

    mov ax,@data
    mov ds,ax

    ; message
    mov ah,9
    lea dx,msg1
    int 21h

    ; input
    mov ah,1
    int 21h
    mov bl,al

    mov ah,1
    int 21h
    mov bh,al

    mov ah,1
    int 21h
    mov cl,al

    ; compare BL & BH
    cmp bl,bh
    jge checkBL

    ; BH bigger
    cmp bh,cl
    jge printBH
    jmp printCL

checkBL:
    cmp bl,cl
    jge printBL
    jmp printCL

printBL:
    mov ah,9
    lea dx,msg2
    int 21h

    mov ah,2
    mov dl,bl
    int 21h
    jmp exit

printBH:
    mov ah,9
    lea dx,msg2
    int 21h

    mov ah,2
    mov dl,bh
    int 21h
    jmp exit

printCL:
    mov ah,9
    lea dx,msg2
    int 21h

    mov ah,2
    mov dl,cl
    int 21h

exit:
    mov ah,4ch
    int 21h

main endp
end main
