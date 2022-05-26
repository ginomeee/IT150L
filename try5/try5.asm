.model small
.stack
.data
		prompt1 db "Goodbye$"
.code

main	proc
		mov ax,@data
		mov ds,ax

ulit:	mov ah,8	;keypressed
		int 21h

		cmp al,27d	;is keypress==esc
		je exit
		jmp ulit

exit:	mov ah,9
		mov dx,offset prompt1
		int 21h
		mov ah, 4ch
		int 21h

main 	endp
		end		main
