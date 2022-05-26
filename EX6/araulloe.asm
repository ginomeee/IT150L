; Made by Eugenio Araullo BM4
.model small
.stack
.data
        input db 20,'',20 dup('$')
        query db 'Enter String: $'
        last db 0ah,0dh,'$'
        dos db ''
		vow db 'AEIOUaeiou'
        outtest db 'i$'
.code

main	proc
		mov ax,@data
        mov ds,ax
    	mov es,ax

        mov ah,9
        mov dx,offset query
        int 21h

        mov ah,0ah              ;func that stores user input
        mov dx,offset input     ;set pointer loc to dx
        int 21h

        mov si,offset input     ;copy input to si
        inc si                  ;point to actual bytes, not working size
        lodsb                   ;calculate numbers of si and store in al

        mov ch,0
        mov cl,al
Outer:
        inc si                  ;read next character of input
        push cx                 ;preserve outer loop value to stack
        mov al,[si]             ;copy si index character to al
        mov di,offset vow       ;copy vowels to di
        mov cx,10               ;vowelcount
Inner:
        cmp al,[di]             ;checks if al=di (input = vow)
        jne NextV               ;if not vowel, check next vowel
        mov bl,'*'
        mov [si],bl
        jmp NextW
NextV:
        inc di                  ;move vowel counter to next value
        loop Inner              ;check next vowel to same input char
NextW:
        pop cx
        loop Outer

        mov ah,9                ;print function
        mov dx,offset last      ;print space
        int 21h

        mov ah,9                ;print function
        mov dx,offset input     ;copy new input to cursor and output
        add dx,2                ;move cursor dx to actual input value
        int 21h


        mov ah,4ch              ;terminate program
    	int 21h
main 	endp
end		main
