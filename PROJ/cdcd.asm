.model small
.386
.stack
.data
    p1    db 0dh,0ah,0dh,0ah, 13 dup (' '), 'Project Calculator V1 | By Araullo, Domondon, Mangubat',0dh,0ah,27 dup (' '),'Computes for: (+ - x / ! ^2)$'
    p2    db 0dh,0ah,0dh,0ah, 9 dup (' '), '1st number (if factorial, must be within 1-4): $'
    p3    db 0dh,0ah, 9 dup (' '), '2nd number (disregard if factorial or squared): $'
    p4    db 0dh,0ah, 0dh,0ah, 9 dup (' '), 'Choose the Operator(+,-,*,/,%,!,2): $'
    p5    db 0dh,0ah, 0dh,0ah,9 dup (' '),  'Continue? (y/n): $'
    p6    db 0dh,0ah, 9 dup (' '), 'Result: $'
    p7    db 0dh,0ah, 9 dup (' '), 'Result: -$'
    in1   db 0dh,0ah,0dh,0ah,11 dup (' '), '2 : Number Squared',12 dup (' '),'! : Factorial',0dh,0ah,11 dup (' '),'+-: Addition/Subtraction',6 dup (' '),'*/: Multiplication/Division$'


    box1topleftx db 8d		;change box coordinate X
    box1toplefty db 0d		;change box coordinate Y
    box2topleftx db 8d		;change box coordinate X
    box2toplefty db 12d		;change box coordinate Y
    boxheight db 12d		;change box HEIGHT
    boxlen db 62d			;change box LENGTH
    scrcolor db 00100111b	;change SCREEN color  GREEN
    boxcolor db 01110000b	;change BOX color     GRAY

.code

m    proc
    mov ax,@data
    mov ds,ax

    mov ax,@data
    mov ds,ax			; initializes data variables

    ;CLS FUNCTION
ulit:    mov ah,6 			; interrupt text func / cls
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
    ;set cursor
    mov ah,2
    mov bh,0
    mov dh,0
    mov dl,0
    int 10h
        mov ah,9
        mov dx,offset p1
        int 21h
        mov ah,9
        mov dx,offset in1
        int 21h
ulit2:
        mov ah,9
        mov dx,offset p2
        int 21h
        mov ah,1        ;input
        int 21h
;-----------------------------
        cmp al,01Bh      ;check if esc
        je close
        cmp al,30h
        jb ulit        ;validation
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
        cmp al,01Bh
        je close       ;check if esc
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
        cmp al,01Bh       ;check if esc
        je close
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

         cmp al,'y' ;check if yes/no
         je ulit
         cmp al,'Y' ;check if yes/no
         je ulit
         cmp al,'n'
         je close
         cmp al,'N'
         je close
         jne y

squa:    pop ax
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

subt:   pop ax
		    cmp al,bl
		    jl nega
        sub al,bl
        call conv
        call newline
        call ans
        jmp y

nega:   sub bl, al
        mov al,bl
        call conv
        call newline

        mov ah,9
        mov dx,offset p7
        int 21h

        mov ah,2
        mov dl,al
        int 21h
        mov ah,2
        mov dl,bl
        int 21h

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
        mov dx,offset p6
        int 21h
        mov dh,0
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

close:
         mov ah,6 			; interrupt text func / cls
         mov al,0			; times to scroll
         mov bh,07
         mov ch,0
         mov cl,0
         mov dh,24			; clear entire screen row
         mov dl,79			; clear entire screen col
         int 10h
         mov ah,9
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
    mov ah,9
    mov dx,offset p6
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
