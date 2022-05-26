.model small
.stack
.data
	myname db '   Eugenio Emmanuel A Araullo   ',0ah,'$' ;newline0dh ;dollar is terminating symbol
	boxtopleftx db 23d		;change box coordinate X
	boxtoplefty db 9d		;change box coordinate Y
	boxheight db 5			;change box HEIGHT
	boxlen db 30d			;change box LENGTH
	scrcolor db 00010111b	;change SCREEN color
	boxcolor db 00110000b	;change BOX color
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
	mov ch,boxtoplefty
	mov cl,boxtopleftx
	mov dx,cx
	add dh,boxheight
	add dl,boxlen
	inc dl				; increment to account for border
	inc dh
	int 10h

	;CORNER FUNCTION
	mov ah,2 			;set cursor for corner
	mov bh,0
	mov dh,boxtoplefty
	mov dl,boxtopleftx
	int 10h
	mov ah,2 			;display char
	mov dl,'É'
	int 21h

	;LOOP FOR =
	mov ah,2 			;set cursor for =
	mov dh,boxtoplefty
	mov dl,boxtopleftx
	inc dl				;add 1 after corner
	int 10h
	mov ah,9d			;char attrib
	mov al,'Í'			;actual char
	mov bh,0			;noscroll
	mov bl,boxcolor		;background attribute
	mov ch,0			;make sure ch has no junk mem
	mov cl,boxlen		;repeat amount
	int 10h

	;CLOSING TOP CORNER
	mov ah,2 			;set cursor for closing corner
	add dl,boxlen		;add boxlen
	int 10h
	mov ah,2 			;display char interrupt
	mov dh,9d			;char attribute
	mov dl,'»'			;add closing corner
	int 21h

	mov ah,2 			;set cursor interrupt
	mov bh,0			;for next var myname
	mov dh,boxtoplefty	;set myname y-axis
	add dh,3			;increment 3
	mov dl,boxtopleftx
	int 10h

	mov ah,9d			;interrupt text code
	mov dx,offset myname
	int 21h

	;LOOP FOR SIDES
	mov ah,2 			;LEAVE THIS ALONE FOR INTERRUPT
	mov bh,0			;ALSO LEAVE THIS :)
	mov dh,boxtoplefty
	mov dl,boxtopleftx
	inc dh
	int 10h

	mov cl,boxheight
x1:	mov ah,2 			;display char interrupt
	mov dl,'º'			;add closing corner
	int 21h				;print
	mov dl,boxtopleftx
	add dl,boxlen
	inc dl
	int 10h
	mov dl,'º'
	int 21h
	inc dh
	mov dl,boxtopleftx
	int 10h
	loop x1

	;CORNER FUNCTION
	mov ah,2 			;set cursor for corner
	mov bh,0
	mov dh,boxtoplefty
	add dh,boxheight
	inc dh
	mov dl,boxtopleftx
	int 10h
	mov ah,2 			;display char
	mov dl,'È'
	int 21h

	;LOOP FOR =
	mov ah,2 			;set cursor for =
	mov dh,boxtoplefty
	add dh,boxheight
	inc dh
	mov dl,boxtopleftx
	inc dl				;add 1 after corner
	int 10h
	mov ah,9d			;char attrib
	mov al,'Í'			;actual char
	mov bh,0			;noscroll
	mov bl,boxcolor		;background attribute
	mov ch,0			;make sure ch has no junk mem
	mov cl,boxlen		;repeat amount
	int 10h

	;CLOSING TOP CORNER
	mov ah,2 			;set cursor for closing corner
	add dl,boxlen		;add boxlen
	int 10h
	mov ah,2 			;display char interrupt
	mov dh,9d			;char attribute
	mov dl,'¼'			;add closing corner
	int 21h



	mov ah,4ch		;terminate sequence
	int 21h
m	endp
end	m
