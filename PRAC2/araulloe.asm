.model small
.stack
.code
m	proc
	mov ax,0b800h
	mov es,ax	  	;write ax to es which is the vid memory
	mov di,0

	;CLS FUNCTION
	mov ah,6 			; interrupt text func / cls
	mov al,0			; times to scroll
	mov bh,00000111b
	mov ch,0
	mov cl,0
	mov dh,24			; clear entire screen row
	mov dl,79			; clear entire screen col
	int 10h

	mov ah,07h
	mov al,'A'
	mov cx,6

x:	push ax
	mov al,'*'		; add left asterisk
	stosw
	pop ax
	stosw
	stosw
	stosw
	push ax
	mov al,'*'		; add right asterisk
	stosw
	pop ax
	add al,5		; increment the letters
	add di,150
	loop x

	mov ah,4ch		;terminate sequence
	int 21h
m	endp
end	m
