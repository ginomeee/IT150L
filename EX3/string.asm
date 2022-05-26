.model small
.stack
.data
	strg db 'Mapua',0ah,'$' ;newline0dh ;dollar is terminating symbol
	x db 0ah,0dh, 39 dup (' '), 'Don$' ;newline,carriagereturn,39x duplicate space, string
.code
m	proc
	mov ax,@data
	mov ds,ax

	mov ah,6 ;cls
	mov al,0
	mov bh,7
	mov ch,0
	mov cl,0
	mov dh,24
	mov dh,79
	int 10h

	mov ah,2 ;set cursor
	mov bh,0
	mov dh,12
	mov dl,40
	int 10h

	mov ah,2 ;display char
	mov dl, 'A'
	int 21h

	mov ah,9 ;display char with attrib
	mov al, 'B'
	mov bh,0
	mov bl,10100100b
	mov cx,3
	int 10h

	mov ah,2 ;set cursor
	mov bh,0
	mov dh,14
	mov dl,39
	int 10h

	mov ah,9
	mov dx,offset strg
	int 21h
	mov dx,offset x
	int 21h

	mov ah,4ch		;terminate sequence
	int 21h
m	endp
end	m
