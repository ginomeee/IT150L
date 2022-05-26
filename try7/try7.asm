.model small
.stack
.data
	row	db	12
	col	db	40
.code
m	proc
	mov ax,@data
	mov ds,ax

	call clr

ulit:	mov ah,2 ;set cursor position
	mov bh,0
	mov dh,row
	mov dl,col
	int 10h
	mov ah,2
	mov dl,178
	int 21h

getIn:	mov ah,0
	int 16h		;ah=scan code al= ascii


	cmp ah,4dh		;is it -->?
	je endright

	cmp ah,4bh		;is it <--?
	je endleft

	cmp ah,48h		;is it up?
	je endup

	cmp ah,50h		;is it down?
	je enddown

	cmp ah,39h		;space for diagonal
	je enddiagonal

	cmp ah,01		;is it esc?
	je exit
	jmp getIn

endright:mov dh,78
	cmp col,dh
	jne right
	jmp getIn

right:	inc col
	jmp ulit

endleft: mov dh,0
	cmp col,dh
	jne left
	jmp getIn

left:	dec col
	jmp ulit

endup:	mov dl,0
	cmp row,dl
	jne up
	jmp getIn

up:	dec row
	jmp ulit

enddown: mov dl,24
	cmp row,dl
	jne down
	jmp getIn

down:	inc row
	jmp ulit

enddiagonal:mov dl, 24
	cmp row,dl
	mov dl, 78
	cmp col,dl
	jne diagonal
	jmp getIn

diagonal:inc col
	inc row
	jmp ulit

exit:	mov ah,4ch
	int 21h

m	endp
clr	proc
	push ax
	push bx
	push cx
	push dx
	mov ah,6
	mov bh,7
	mov al,0
	mov cx,0
	mov dh,24
	mov dl,79
	int 10h
	pop dx
	pop cx
	pop bx
	pop ax
	ret
clr	endp
end	m
