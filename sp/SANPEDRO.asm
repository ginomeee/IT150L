model small
.stack
.data
	strg	db	'Ireland John San Pedro$'
.code
main	proc
	mov ax,@data
	mov ds,ax

	mov ah,6 
	mov al,0
	mov bh,01011111b
	mov ch,0
	mov cl,0
	mov dh,24
	mov dl,79
	int 10h
	
	;red box 
	mov al,0
	mov bh,01001000b
	mov ch,1
	mov cl,18
	mov dh,20
	mov dl,61
	int 10h

	;green box 
	mov al,0
	mov bh,00101000b
	mov ch,2
	mov cl,20
	mov dh,19
	mov dl,59
	int 10h

	;orange box 
	mov al,0
	mov bh,01101000b
	mov ch,3
	mov cl,22
	mov dh,18
	mov dl,57
	int 10h
	
	;cyan box
	mov al,0
	mov bh,00111111b
	mov ch,4
	mov cl,24
	mov dh,17
	mov dl,55
	int 10h
	
	;black box
	mov al,0
	mov bh,00001111b
	mov ch,5
	mov cl,25
	mov dh,16
	mov dl,54
	int 10h

	mov ah,6 ;inner blue box
	mov al,0
	mov bh,00011010b
	mov ch,8
	mov cl,27
	mov dh,14
	mov dl,52
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,8
	mov dl,26
	int 10h

	mov ah,9 
	mov al,201
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,8
	mov dl,27
	int 10h

	mov ah,9 
	mov al,205
	mov bh,0
	mov bl,01111111b
	mov cx,26
	int 10h
	
	mov ah,2 
	mov bh,0
	mov dh,8
	mov dl,53
	int 10h

	mov ah,9 
	mov al,187
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,9
	mov dl,26
	int 10h

	mov ah,9 
	mov al,186
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,10
	mov dl,26
	int 10h

	mov ah,9 
	mov al,186
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,11
	mov dl,26
	int 10h

	mov ah,9 
	mov al,186
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,12
	mov dl,26
	int 10h

	mov ah,9 
	mov al,186
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,13
	mov dl,26
	int 10h

	mov ah,9 
	mov al,186
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,9
	mov dl,53
	int 10h

	mov ah,9 
	mov al,186
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,10
	mov dl,53
	int 10h

	mov ah,9 
	mov al,186
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,11
	mov dl,53
	int 10h

	mov ah,9 
	mov al,186
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,12
	mov dl,53
	int 10h

	mov ah,9 
	mov al,186
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,13
	mov dl,53
	int 10h

	mov ah,9 
	mov al,186
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,11
	mov dl,29
	int 10h

	mov ah,9 
	mov dx,offset strg
	int 21h

	mov ah,2 
	mov bh,0
	mov dh,14
	mov dl,26
	int 10h

	mov ah,9 
	mov al,200
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,2 
	mov bh,0
	mov dh,14
	mov dl,27
	int 10h

	mov ah,9 
	mov al,205
	mov bh,0
	mov bl,01111111b
	mov cx,26
	int 10h

	mov ah,2
	mov bh,0
	mov dh,14
	mov dl,53
	int 10h

	mov ah,9 
	mov al,188
	mov bh,0
	mov bl,01111111b
	mov cx,1
	int 10h

	mov ah,4ch
	int 21h

main	endp
end	main