.model small
.stack
.data
    p1    db 0dh,0ah, 'Calculator$'
    p2    db 0dh,0ah, 'Enter the 1st number: $'
    p3    db 0dh,0ah, 'Enter the 2nd number: $'
    p4    db 0dh,0ah, 'Choose the Operator(+,-,*,/): $'
    p5    db 0dh,0ah, 'Continue? (y/n): $'
.code

m    proc
    mov ax,@data
    mov ds,ax

ulit:
        mov ah,9
        mov dx,offset p1
        int 21h
ulit2:
        mov ah,9
        mov dx,offset p2
        int 21h

        mov ah,1
        int 21h
;-----------------------------
        cmp al,'a'
        jae firstval
;-----------------------------
        sub al,30h
        push ax
ulit3:
        mov ah,9
        mov dx,offset p3
        int 21h

        mov ah,1
        int 21h
;-----------------------------
        cmp al,'a'
        jae secondval
;-----------------------------
        sub al,30h
        mov bl,al

        mov ah,9
        mov dx,offset p4
        int 21h
        mov ah,1
        int 21h

        cmp al,'+'
        je addt
        cmp al,'-'
        je subt
        cmp al,'*'
        je mult
        cmp al,"/"
        je divn

y:       mov ah,9
         mov dx,offset p5
         int 21h
         mov ah,1
         int 21h

         cmp al,'n'
         je close

         cmp al,'y'
         je ulit
         jne y

;----------------------------------firstval------------
firstval:     cmp al,'z'
              jbe ulit2
;-----------------------------------------------------
;----------------------------------secondval------------
secondval:    cmp al,'z'
              jbe ulit3
;-----------------------------------------------------

addt:     pop ax
        add al,bl
        call conv
        call newline
        call ans
        jmp y

subt:    pop ax
        sub al,bl
        call conv
        call newline
        call ans
        jmp y

mult:    pop ax
        mul bl
        call conv
        call newline
        call ans
        jmp y

divn:    pop ax
        mov ah,0
        div bl
        call conv
        call newline
        call ans
        jmp y

close:  mov ah,9
        mov ah,4ch
        int 21h
m    endp

newline    proc
        push ax
        push dx
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        pop dx
        pop ax
        ret
newline    endp

ans    proc
    mov ah,2
    mov dl,al
    int 21h
    mov ah,2
    mov dl,bl
    int 21h
    ret
ans    endp


conv proc
     mov bh,0
     mov ah,0
     mov bl,10
     div bl
     add ah,30h
     add al,30h
     mov bl,ah
     ret
conv endp

end m
