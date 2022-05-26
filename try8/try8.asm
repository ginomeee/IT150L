.model small
.stack
.data
s1   db  'Enter name: $'
s2   db  0ah,0dh,'Hello, $'
buff db	 20,?,20 dup(?)
temp db	 20 dup(?)

.code
m 	proc
	mov ax,@data
	mov ds,ax	; ds is needed for si
	mov es,ax	; es is needed for di

	mov ah,9	; display 'Enter name'
	mov dx,offset s1
	int 21h

	mov ah,0ah	; get string input
	mov dx,offset buff  ; input string will be stored in 'buff'
	int 21h

	mov si,offset buff	;point si to 'buff' where the string is
	mov di,offset temp	;point di to 'temp'

	inc si			;point si to the number of characters in the string
	lodsb    		;load the number pointed to by si into al; al now will hold the number of characters in the string
	mov ch,0
	mov cl,al	;copy al to cl; the number in cl will now serve as the counter for the loop
ulit:	movsb		;copy the character pointed to by si to the location pointed to by di in each iteration
	loop ulit

	mov al,'$'	;append the $ at the end of the string in 'temp'
	stosb

	mov ah,9	;display 'Hello'
	mov dx,offset s2
	int 21h
	mov dx,offset temp ; display the string in 'temp'
	int 21h

	mov ah,4ch	;terminate program
	int 21h
m	endp
end	m
