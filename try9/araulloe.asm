.model small
.stack
.data
p1		db		0ah,0dh,'Enter op1:$'
p2		db		0ah,0dh,'Enter op2:$'
p3		db		0ah,0dh,'Enter operator:$'
p4		db		0ah,0dh,'Continue y/n:$'
.code
m		proc
		mov ax,@data
		mov ds,ax
ulit:
		mov ah,9
		mov dx,offset p1
		int 21h

		mov ah,1
		int 21h			;ax=32h

		sub al,30h		;al=actual number

		push ax
		mov ah,9
		mov dx,offset p2
		int 21h
		mov ah,1
		int 21h			;ax=input
		sub al,30h		;al=actual number
		push ax

		mov ah,9
		mov dx,offset p3
		int 21h
		mov ah,1
		int 21h			;ax='*'

		pop bx			;bx=input, sample bx=0005 bl=05
		pop ax			;ax=another input, sample 2

		mul bl			;ax = ax*bl ;ax=10

		mov bl,10		;dividend
		div bl			;al=2	ah=5
		add al,30h		;32h		1st val
		add ah,30h		;35h
		mov bl,ah		;bl=35h		2nd val

		;----------------disp ans
		push ax
		mov ah,2
		mov dl,al
		int 21h			;disp 2

		mov ah,2
		mov dl,0dh
		int 21h

		pop ax

		mov ah,2
		mov dl,al		;disp 5
		int 21h

		mov ah,9
		mov dx,offset p4
		int 21h
		mov ah,1
		int 21h

		cmp al,'y'
		je ulit
		mov ah,4ch;
		int 21h

m		endp
end		m
