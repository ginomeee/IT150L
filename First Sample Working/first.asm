.model small
.stack
.code
m	proc
	mov ax,0b800h
	mov es,ax	  	;write ax to es which is the vid mem
	mov di,1998		;7d0 is equiv of 2000th character sa gitna
	mov ah,00000111b	;attrib
	mov al,45h		;letter G
	stosw
	mov di,2160       	;letter sa ilalim
	mov ah,11010010b  	;attrib
	mov al,47h        	;letter G
	stosw
	mov ah,4ch
	int 21h
m	endp
end	m