.model small
.stack
.code
m	proc
	mov ax,0b800h
	mov es,ax	  	;write ax to es which is the vid memory
	mov di,1832		;set pointer at char 1992 (4 chars offset from center)
	mov ah,07h		;attrib
	;div al,30h
	mov ah,07h
	stosw
	mov al,'A'
	push di
	mov cx,5
x:	stosw
	push ax
	sub ax,010h
	stosw
	pop ax
	inc al
	pop di
	add di,160
	push di
	loop x

	mov ah,4ch		;terminate sequence
	int 21h
m	endp
end	m
