.model small
.stack
.code
m	proc
	mov ax,0b800h
	mov es,ax	  	;write ax to es which is the vid memory
	mov di,1992		;set pointer at char 1992 (4 chars offset from center)
	mov ah,07h		;attrib
	mov al,45h		;letter E
	stosw
	mov al,55h		;letter U
	stosw
	mov al,47h		;letter G
	stosw
	mov al,45h		;letter E
	stosw
	mov al,4Eh		;letter N
	stosw
	mov al,49h		;letter I
	stosw
	mov al,4Fh		;letter O
	stosw
	mov di,2152       	;move cursor to line position below first char(+160 from 1992)
				;using ax, adding design with attribute byte
	mov ax,0C741h		;letter A
	stosw
	mov ax,0A052h		;letter R
	stosw
	mov ax,9741h		;letter A
	stosw
	mov ax,0F455h		;letter U
	stosw
	mov ax,0EA4Ch		;letter L
	stosw
	mov ax,0BA4Ch		;letter L
	stosw
	mov ax,0EF4Fh		;letter O
	stosw
	mov ah,4ch		;terminate sequence
	int 21h
m	endp
end	m
