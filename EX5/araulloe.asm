; Made by Eugenio Araullo BM4
; Diagonal key is letter 'G'
; I made sure ALL sides do not go out of bounds (check & chklst jump)
.model small
.stack
.data
		row db 12
		col db 40
.code

main	proc
		mov ax,@data
		mov ds,ax
		call cls

print:	mov ah,2   ;set cursor
		mov bh,0
		mov dh,row
		mov dl,col
		int 10h

		mov ah,2    ;interrupt char
		mov dl,219  ;fill value
		int 21h

inp:	mov ah,0	; interrupt
		int 16h		; ah=scancode, al=ascii code
		cmp ah,1	;exit
		je exit
		cmp ah,04dh	;right arrow key
		je icol
		cmp ah,04bh	;left arrow key
		je dcol
		cmp ah,048h ;up arrow key
		je drow
		cmp ah,050h ;down arrow key
		je irow
		cmp ah,022h ;letter 'G' for Gino
		je diag
		jmp inp		;if something else is pressed

check:	cmp col,0	;if beyond left
		jl	icol	;increment col
		cmp row,0	;if beyond up (first row)
		jl 	irow	;increment row
		cmp col,79	;if beyond right
		ja  dcol	;decrement col
		cmp row,24	;if beyond down (last row)
		ja  drow	;decrement row

		jmp chklst

		jmp print	;print the char location

chklst:	cmp row,24
		jne print
		cmp col,79
		jne print
		dec col
		jmp print

dcol:	dec col
		jmp check
icol:	inc col
		jmp check
drow:	dec row
		jmp check
irow:	inc row
		jmp check
diag:	inc col
		inc row
		jmp check

exit: 	mov ah,4ch
		int 21h

cls		proc
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
cls		endp

main 	endp
		end		main
