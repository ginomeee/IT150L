.model small
.stack
.code
main proc
    mov ax, 0b800h
    mov es, ax
    mov di, 0

    mov al, '6'
    mov dl, al
    mov ah,7 ;normal attrib
    mov al,'A'
    push ax
    mov dh, ''
    mov al, dh
    mov cx,6
x:    stosw
    mov dh, al
    pop ax
    stosw
    push ax
    push di
    mov al, dl
    stosw
    dec al
    mov dl,al
    mov al, ''
    stosw
    pop di ;7d0h
    add di,156
    pop ax
    inc al
    push ax
    mov al, dh
    loop x

    mov ah, 4ch
    int 21h

main endp

end main
