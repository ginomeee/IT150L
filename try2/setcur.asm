.model small
.stack
.code
m	proc
	mov ah,6 ;cls
	mov al,0
	mov bh,7
	mov ch,0
	mov cl,0
	mov dh,24
	mov dh,79
	int 10h

	mov ah,2
	mov bh,0
	mov dh,12
	mov dl,40
	int 10h

	mov ah,2
	mov dl, 'A'
	int 21h

	mov ah,9
	mov al, 'B'
	mov bh,0
	mov bl,10100100b
	mov cx,3
	int 10h
	
	mov ah,4ch		;terminate sequence
	int 21h
m	endp
end	m
