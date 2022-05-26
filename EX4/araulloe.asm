.model small
.stack
.data
		lin1 db 'Grade ko',0ah,'$' ;newline0dh ;dollar is terminating symbol
		lin2 db '   /\   ',0ah,'$'
	    lin3 db '  (  )  ',0ah,'$'
	    lin4 db '  (  )  ',0ah,'$'
	    lin5 db ' /|/\|\ ',0ah,'$'
	    lin6 db '/_||||_\',0ah,'$'
		row db 		22	;y-axis
		col db		35	;x-axis
		speed db	5	;delay ms
		moves db	22	;moves char
.code
m		proc
		mov ax,@data
		mov ds,ax			; initializes data variables
		mov cl,moves		;moves char
ulit:	call clear
		call cursorpos
		call disp
		dec row
		call delay
		loop ulit
		call cursorpos

		mov ah,4ch		;terminate sequence
		int 21h
m		endp

delay	proc
		push cx
		mov cl, speed		;control speed here

y:		push cx			;loopyyyy
;----------------
		mov cx,0ffffh
x:		loop x
;----------------
		pop cx
		loop y
		pop cx
		ret
delay	endp

disp	proc
		push ax
		push dx
		mov ah,9d			; interrupt code
		mov dh,0
		mov dl,offset lin1
		int 21h

		mov ah,2			;interrupt setcur
		mov bh,0
		mov dh,row
		mov dl,col
		add dh,1
		int 10h

		mov ah,9d			;interrupt for setting text
		mov dx,offset lin2
		int 21h

		mov ah,2			;interrupt setcur
		mov bh,0
		mov dh,row
		mov dl,col
		add dh,2
		int 10h

		mov ah,9d			;interrupt for setting text
		mov dx,offset lin3
		int 21h

		mov ah,2			;interrupt setcur
		mov bh,0
		mov dh,row
		mov dl,col
		add dh,3
		int 10h

		mov ah,9d			;interrupt for setting text
		mov dx,offset lin4
		int 21h

		mov ah,2			;interrupt setcur
		mov bh,0
		mov dh,row
		mov dl,col
		add dh,4
		int 10h

		mov ah,9d			;interrupt for setting text
		mov dx,offset lin5
		int 21h

		mov ah,2			;interrupt setcur
		mov bh,0
		mov dh,row
		mov dl,col
		add dh,5
		int 10h

		mov ah,9d			;interrupt for setting text
		mov dx,offset lin6
		int 21h


		pop dx
		pop ax
		ret
disp	endp

cursorpos	proc
		push ax
		push bx
		push dx
		mov ah,2
		mov bh,0
		mov dh,row
		mov dl,col
		int 10h
		pop dx
		pop bx
		pop ax
		ret
cursorpos	endp

clear	proc
		push ax
		push bx
		push cx
		push dx
		mov ah,6
		mov al,0
		mov bh,7
		mov ch,0
		mov cl,0
		mov dh,24
		mov dl,79
		int 10h
		pop dx
		pop cx
		pop bx
		pop ax
		ret
clear	endp
end		m
