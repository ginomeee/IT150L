.model small
.stack
.data
        p1          db          0ah,0dh,'Enter op1: $'
        p2          db          0ah,0dh,'Enter op2: $'
        p3          db          0ah,0dh,'Enter operator(+, -, *, /):  $'
        p4          db          0ah,0dh,'Continue(y/n): $'
.code
m             proc
              mov ax,@data
              mov ds,ax

              ;get input p1
ulit:         mov ah,9
              mov dx,offset p1
              int 21h

              mov ah,1
              int 21h               ;ax = 35h
              ;---------------------validation--------------
              cmp al,'a'
              jae firstval                                  ;compare if input is above or equal to 'a'
              ;---------------------------------------------
              sub al,30h            ;convert to decimal    al=5
              push ax               ;store first input

              ;get input p2
ulit2:        mov ah,9
              mov dx,offset p2
              int 21h
              mov ah,1
              int 21h               ;ax = 35h
              ;---------------------validation--------------
              cmp al,'a'
              jae secondval                               ;compare if input is above or equal to 'a'
              ;---------------------------------------------
              sub al,30h             ;convert to decimal
              push ax

              ;get input p3
ulit3:        mov ah,9
              mov dx,offset p3
              int 21h
              mov ah,1
              int 21h               ;ax = '*'
              ;---------------------validation-------------------------------------------------------------------------
              cmp al,'*'
              jne ulit3                                ;compare if input is '*' if not, jump to thirdval
              je opMul                                    ;if yes continue to opMul
              ;--------------------------------------------------------------------------------------------------------

              ;---------------------validation-------------------------------------------------------------------------
              cmp al,'+'
              jne ulit3                                   ;compare if input is '+' if not, jump to thirdval
              je opMul                                    ;if yes continue to opMul
              ;--------------------------------------------------------------------------------------------------------

;---------------------------------------------------------------------------------------------------------------------
opMul:        pop bx                ;pop second input             bh= 00 bl=05
              pop ax                ; pop first input

              ;multiply
              mul bl                ;quotient will be stored in ax      ax=25

              ;convert quotient into ascii code
              mov bh,0
              mov bl,10             ;divide to 10 to split digits
              div bl                ;divide to 10 to split digits     al=2 ah=5

              ;add 30 to make ascii
              add al,30h            ;32h
              add ah,30h            ;35h

              mov bl,ah             ;storing ah to avoid overwriting      bl=35h
;---------------------------------------------------------------------------------------------------------------------


              ;display--------------------------------
              ;new line
              push ax               ;store al
              mov ah,2
              mov dl,0ah
              int 21h
              mov dl,0dh
              int 21h
              pop ax                ;pop al

              mov ah,2
              mov dl,al             ;display first digit
              int 21h               ;display first digit

              mov ah,2
              mov dl,bl             ;display second digit
              int 21h               ;display second digit
              ;--------------------------------------------
              ;ask user to continue or not
ulit4:        mov ah,9
              mov dx,offset p4
              int 21h
              mov ah,1
              int 21h

              cmp al,'n'
              je ex

              cmp al,'y'
              je ulit
              jne ulit4


              ;----------------------------------firstval------------
firstval:     cmp al,'z'
              jbe ulit
              ;-----------------------------------------------------

              ;----------------------------------secondval------------
secondval:    cmp al,'z'
              jbe ulit2
              ;-----------------------------------------------------


ex:           mov ah,4ch
              int 21h



m             endp
end           m
