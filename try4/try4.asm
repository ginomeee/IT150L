.model small
.stack
.data
		prompt1 db "enter character: $"
		prompt2 db 0ah,0ah,"enter number: $"
		prompt3 db 0ah,0ah,"Continue? (y/n): $"
.code

main	proc
		mov ax,@data
		mov ds,ax
ulit:	call newline
		mov ah,9
		mov dx,offset prompt1
		int 21h

		mov ah, 1 ;char input
		int 21h   ;al='char'

		push ax   ;al to stack

		mov ah,9
		mov dx,offset prompt2
		int 21h

		mov ah, 1 ;char input
		int 21h   ;al='num'
		sub al,30

		pop ax    ;al='char' from stack
		mov ch,0
		mov cl,al ;set cx to loop
		mov ah,2
		mov dl,al
x:      int 21h
		loop x

getit:	mov ah,9
		mov dx,offset prompt3 ;disp
		int 21h

		mov ah,1 ;char input interrupt
		int 21h  ;al='y'

		cmp al,'y'
		je ulit
		cmp al,'Y'
		je ulit
		cmp al,'n'
		je exit
		cmp al,'N'
		je exit

		jmp getit

exit:   mov ah,4ch
		int 21h
main	endp
newline proc
		push ax
		push dx
		mov ah, 2
		mov dl, 0ah
		int 21h
newline endp
		end		main
