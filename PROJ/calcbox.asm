.model small
.stack
.data
    p1    db 0dh,0ah,0dh,0ah, 'Project Calculator V1 | Computes for: (+ - x / !)$'
    p2    db 0dh,0ah, 'Enter the 1st number (if factorial, must be within 1-4): $'
    p3    db 0dh,0ah, 'Enter the 2nd number (disregard if factorial): $'
    p4    db 0dh,0ah, 'Choose the Operator(+,-,*,/,%,!): $'
    p5    db 0dh,0ah, 'Continue? (y/n): $'
    p6    db 'Result: $'
    box1topleftx db 0d		;change box coordinate X
    box1toplefty db 0d		;change box coordinate Y
    box2topleftx db 40d		;change box coordinate X
    box2toplefty db 13d		;change box coordinate Y
    boxheight db 11d		;change box HEIGHT
    boxlen db 38d			;change box LENGTH
    scrcolor db 00010111b	;change SCREEN color
    boxcolor db 01000000b	;change BOX color

.code

m    proc
    mov ax,@data
    mov ds,ax

    mov ax,@data
    mov ds,ax			; initializes data variables

    ;CLS FUNCTION
    mov ah,6 			; interrupt text func / cls
    mov al,0			; times to scroll
    mov bh,scrcolor
    mov ch,0
    mov cl,0
    mov dh,24			; clear entire screen row
    mov dl,79			; clear entire screen col
    int 10h

    ;BOX COLOR FUNCTION
    mov ah,6 			; interrupt text func / cls
    mov al,0			; times to scroll
    mov bh,boxcolor		; color attrib
    mov ch,box1toplefty
    mov cl,box1topleftx
    mov dx,cx
    add dh,boxheight
    add dl,boxlen
    inc dl				; increment to account for border
    inc dh
    int 10h



    ;BOX COLOR FUNCTION
    mov ah,6 			; interrupt text func / cls
    mov al,0			; times to scroll
    mov bh,boxcolor		; color attrib
    mov ch,box2toplefty
    mov cl,box2topleftx
    mov dx,cx
    add dh,boxheight
    add dl,boxlen
    inc dl				; increment to account for border
    inc dh
    int 10h

ulit:
        mov ah,9
        mov dx,offset p1
        int 21h
ulit2:
        mov ah,9
        mov dx,offset p2
        int 21h
        mov ah,1        ;input
        int 21h
;-----------------------------
        cmp al,30h
        jb ulit2        ;validation
        cmp al,39h
        ja ulit2
;-----------------------------
        sub al,30h
        push ax         ;push firstval into stack
ulit3:
        mov ah,9
        mov dx,offset p3
        int 21h
        mov ah,1
        int 21h
;-----------------------------
        cmp al,30h
        jb ulit3        ;validation
        cmp al,39h
        ja ulit3
;-----------------------------
        sub al,30h
        mov bl,al       ;put secondval to bl

select: mov ah,9
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
        cmp al,"%"
        je modu
        cmp al,"2"
        je squa
        cmp al,"!"
        je factv
        jmp select
factv:  pop ax      ;facto validation
        cmp al,0
        jb ulit
        cmp al,4
        ja ulit
        jmp facto

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

close:
         mov ah,9
         mov ah,4ch
         int 21h

 squa:   pop ax
         mul al
         call conv
         call newline
         call ans
         jmp y

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

modu:   pop ax
        mov ah,0
        div bl
        add ah,30h
        mov bl,ah
        call newline
        mov ah,9
        mov dl,offset p6
        int 21h
        mov ah,2
        mov dl,bl
        int 21h
        jmp y

facto:  mov bl,1
        mov ch,0
        mov cl,al
        mov al,1
zloop:  mul cl
        loop zloop
        call conv
        call newline
        call ans
        jmp y


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
    mov ah,9
    mov dl,offset p6
    int 21h
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
