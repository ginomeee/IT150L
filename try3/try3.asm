.model small
.stack
.data

strg db 'Mapua$'
row db 	12
col db  0

.code

m	proc
	mov ax, @data
	mov ds, ax
	
	mov cx, 40
ulit: call clear
	  call cursorpos
	  call disp
	  inc col
	  call delay
	  loop ulit
	  
	  mov ah, 4ch
	  int 21h
m 	  endp

delay proc
	  push cx
	  mov cx, 10 ;control speed
y:    push cx
;--------------------------------
	  mov cx, 0ffffh
x:    loop x
;--------------------------------
      pop cx
	  loop y
	  pop cx
	  ret
delay endp

disp proc
     push ax
	 push dx
	 mov ah, 9
	 mov dx, offset strg
	 int 21h
	 pop dx
	 pop ax
	 ret
disp endp
cursorpos proc
     push ax
	 push bx
	 push dx
	 mov ah, 2
	 mov bh, 0
	 mov dh, row
	 mov dl, col
	 int 10h
	 pop dx
	 pop bx
	 pop ax
	 ret
cursorpos endp
 
clear proc
      push ax
	  push bx
	  push cx
	  push dx
	  mov ah, 6
	  mov al, 0 
	  mov bh, 7
	  mov ch, 0
	  mov cl, 0
	  mov dh, 24
	  mov dl, 79
	  int 10h
	  pop dx
	  pop cx
	  pop bx
	  pop ax
	  ret
	  
clear endp
end   m