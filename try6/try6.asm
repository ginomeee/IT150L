.model small
.stack
.data
		row db 12
		col db 40
.code

main	proc
		mov ax,@data
		mov ds,ax
		call clr

ulit:		mov ah,2
		mov bh,0
		mov dh,row
		mov dl,col
		int 10h
		mov ah,2
		mov dl,'*'
		int 21h

inp:	mov ah,0	;interrupt
		int 16h		;ah=scancode, al=ascii code

		cmp ah,04dh			;right arrow key
		je process
		cmp ah,1
		je exit
		jmp inp

process: inc col
		jmp ulit

exit: 	mov ah,4ch
		int 21h

clr		proc
		push ax
		push bx
		push cx
		push dx
		mov ah,6
		mov al,7
		mov bh,7
		mov ch,0
		mov cl,0
		mov dh,24
		mov dl,70
		int 10h
		pop ax
		pop bx
		pop cx
		pop dx
		ret
clr		endp

main 	endp
		end		main
