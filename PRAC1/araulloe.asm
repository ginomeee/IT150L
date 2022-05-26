.model small
.stack
.data
	myname db '   Eugenio Emmanuel A Araullo   ',0ah,'$' ;newline0dh ;dollar is terminating symbol
	box1topleftx db 0d		;change box coordinate X
	box1toplefty db 0d		;change box coordinate Y
	box2topleftx db 40d		;change box coordinate X
	box2toplefty db 13d		;change box coordinate Y
	boxheight db 11d		;change box HEIGHT
	boxlen db 38d			;change box LENGTH
	scrcolor db 00010111b	;change SCREEN color
	boxcolor db 01000000b	;change BOX color
.code
m	proc
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




	mov ah,4ch		;terminate sequence
	int 21h
m	endp
end	m
