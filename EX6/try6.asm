.model small
.stack
.data
    s1 db 'Enter name: $'
    s2 db 0ah,0dh,'Hello, $'
    vowels db 'aeiouAEIOU'

    buff db   20,?,20 dup('$')


.code
m    proc
   mov ax,@data
   mov ds,ax                ; ds is needed for si
   mov es,ax                ; es is needed for di

   mov ah,9                 ; display 'Enter name'
   mov dx,offset s1
   int 21h

   mov ah,0ah               ; get string input
   mov dx,offset buff       ; input string will be stored in 'buff'
   int 21h

   mov si, offset buff      ; si= offset of buff

   inc si                   ; since the value at si+1 contains number of characters entered
   mov cl,[si]              ; cl= number of characters in the entered string
   mov ch,0                 ; set ch=0
 L3:
   push cx                  ; store outer loop count to stack
   inc si                   ; increment si for reading character
   mov cx,10                ; cx=10 (count of vowels)
   mov al,[si]              ; al=characer at address pointed by si

   mov di,offset vowels     ; di=offset address of array vowels
L2:
   cmp al,[di]              ; check the character in al with [di]
   jne L1                   ; if it is not equal, goto L1
   mov bl,''               ; else replace the character at address si with ''
   mov [si],bl
   jmp L4                   ; jump to L4
L1:
    inc di                  ; di=di+1
    loop L2                 ; repeat from L2 and stop looping when cx=0
L4:
    pop cx                  ; restore outer loop count to cx
    loop L3                 ; repeat from L3 and stop looping when cx=0

    mov ah,9                ; display 'Converted name:'
   mov dx,offset s2
   int 21h

   mov ah,9                 ; display coverted string at buff+2
   mov dx,offset buff+2
   int 21h

   mov ah,4ch                ;terminate program
   int 21h
m   endp
end   m
