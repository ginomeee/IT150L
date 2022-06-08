.model small
.stack
.code
m	proc

MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
;=========================20 spaces for center======================
MOV AH, 02  ;[_]1
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]2
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]3
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]4
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]5
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]6
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]7
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]8
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]9
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]10
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]11
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]12
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]13
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]14
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]15
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]16
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]17
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]18
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]19
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]20
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]21
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]22
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]23
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]24
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]25
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]26
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]27
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]28
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]29
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]30
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]31
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]32
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]33
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]34
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]35
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]36
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]37
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]38
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]39
MOV DL, 5Fh
int 21h
MOV AH, 02  ;[_]40
MOV DL, 5Fh
int 21h
;=========================40 spaces for roof========================
MOV AH, 02  ;carriage return
MOV DL, 0Dh
int 21h
MOV AH, 02  ;next line
MOV DL, 0Ah
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
;==================next line and 20 spaces for center===============
MOV AH, 02  ;[|]
MOV DL, 7Ch
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[|]
MOV DL, 7Ch
int 21h
;===========================top margin==============================
MOV AH, 02  ;carriage return
MOV DL, 0Dh
int 21h
MOV AH, 02  ;next line
MOV DL, 0Ah
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
;==================next line and 20 spaces for center===============
MOV AH, 02  ;[|]
MOV DL, 7Ch
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[M]
MOV DL, 4Dh
int 21h
MOV AH, 02  ;[A]
MOV DL, 41h
int 21h
MOV AH, 02  ;[P]
MOV DL, 50h
int 21h
MOV AH, 02  ;[U]
MOV DL, 55h
int 21h
MOV AH, 02  ;[A]
MOV DL, 41h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[U]
MOV DL, 55h
int 21h
MOV AH, 02  ;[N]
MOV DL, 4Eh
int 21h
MOV AH, 02  ;[I]
MOV DL, 49h
int 21h
MOV AH, 02  ;[V]
MOV DL, 56h
int 21h
MOV AH, 02  ;[E]
MOV DL, 45h
int 21h
MOV AH, 02  ;[R]
MOV DL, 52h
int 21h
MOV AH, 02  ;[S]
MOV DL, 53h
int 21h
MOV AH, 02  ;[I]
MOV DL, 49h
int 21h
MOV AH, 02  ;[T]
MOV DL, 54h
int 21h
MOV AH, 02  ;[Y]
MOV DL, 59h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[|]
MOV DL, 7Ch
int 21h
;============================My University==========================
MOV AH, 02  ;carriage return
MOV DL, 0Dh
int 21h
MOV AH, 02  ;next line
MOV DL, 0Ah
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
;==================next line and 20 spaces for center===============
MOV AH, 02  ;[|]
MOV DL, 7Ch
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[R]
MOV DL, 52h
int 21h
MOV AH, 02  ;[e]
MOV DL, 65h
int 21h
MOV AH, 02  ;[y]
MOV DL, 79h
int 21h
MOV AH, 02  ;[m]
MOV DL, 6Dh
int 21h
MOV AH, 02  ;[a]
MOV DL, 61h
int 21h
MOV AH, 02  ;[r]
MOV DL, 72h
int 21h
MOV AH, 02  ;[t]
MOV DL, 74h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[P]
MOV DL, 50h
int 21h
MOV AH, 02  ;[a]
MOV DL, 61h
int 21h
MOV AH, 02  ;[g]
MOV DL, 67h
int 21h
MOV AH, 02  ;[a]
MOV DL, 61h
int 21h
MOV AH, 02  ;[n]
MOV DL, 6Eh
int 21h
MOV AH, 02  ;[a]
MOV DL, 61h
int 21h
MOV AH, 02  ;[p]
MOV DL, 70h
int 21h
MOV AH, 02  ;[a]
MOV DL, 61h
int 21h
MOV AH, 02  ;[n]
MOV DL, 6Eh
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[A]
MOV DL, 41h
int 21h
MOV AH, 02  ;[m]
MOV DL, 6Dh
int 21h
MOV AH, 02  ;[b]
MOV DL, 62h
int 21h
MOV AH, 02  ;[a]
MOV DL, 61h
int 21h
MOV AH, 02  ;[y]
MOV DL, 79h
int 21h
MOV AH, 02  ;[o]
MOV DL, 6Fh
int 21h
MOV AH, 02  ;[n]
MOV DL, 6Eh
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[|]
MOV DL, 7Ch
int 21h
;=============================My Name===============================
MOV AH, 02  ;carriage return
MOV DL, 0Dh
int 21h
MOV AH, 02  ;next line
MOV DL, 0Ah
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
;==================next line and 20 spaces for center===============
MOV AH, 02  ;[|]
MOV DL, 7Ch
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[B]
MOV DL, 42h
int 21h
MOV AH, 02  ;[.]
MOV DL, 2Eh
int 21h
MOV AH, 02  ;[S]
MOV DL, 53h
int 21h
MOV AH, 02  ;[.]
MOV DL, 2Eh
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[I]
MOV DL, 49h
int 21h
MOV AH, 02  ;[n]
MOV DL, 6Eh
int 21h
MOV AH, 02  ;[f]
MOV DL, 66h
int 21h
MOV AH, 02  ;[o]
MOV DL, 6Fh
int 21h
MOV AH, 02  ;[r]
MOV DL, 72h
int 21h
MOV AH, 02  ;[m]
MOV DL, 6dh
int 21h
MOV AH, 02  ;[a]
MOV DL, 61h
int 21h
MOV AH, 02  ;[t]
MOV DL, 74h
int 21h
MOV AH, 02  ;[i]
MOV DL, 69h
int 21h
MOV AH, 02  ;[o]
MOV DL, 6Fh
int 21h
MOV AH, 02  ;[n]
MOV DL, 6Eh
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[T]
MOV DL, 54h
int 21h
MOV AH, 02  ;[e]
MOV DL, 65h
int 21h
MOV AH, 02  ;[c]
MOV DL, 63h
int 21h
MOV AH, 02  ;[h]
MOV DL, 68h
int 21h
MOV AH, 02  ;[n]
MOV DL, 6Eh
int 21h
MOV AH, 02  ;[o]
MOV DL, 6Fh
int 21h
MOV AH, 02  ;[l]
MOV DL, 6Ch
int 21h
MOV AH, 02  ;[o]
MOV DL, 6Fh
int 21h
MOV AH, 02  ;[g]
MOV DL, 67h
int 21h
MOV AH, 02  ;[y]
MOV DL, 79h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[|]
MOV DL, 7Ch
int 21h
;=============================My Program============================
MOV AH, 02  ;carriage return
MOV DL, 0Dh
int 21h
MOV AH, 02  ;next line
MOV DL, 0Ah
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
;==================next line and 20 spaces for center===============
MOV AH, 02  ;[|]
MOV DL, 7Ch
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;[|]
MOV DL, 7Ch
int 21h
;===========================top margin==============================
MOV AH, 02  ;carriage return
MOV DL, 0Dh
int 21h
MOV AH, 02  ;next line
MOV DL, 0Ah
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;tab
MOV DL, 09h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
MOV AH, 02  ;space
MOV DL, 20h
int 21h
;==================next line and 20 spaces for center===============
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h
MOV AH, 02  ;[-]
MOV DL, 2Dh
int 21h


	int 10h

	mov ah,4ch		;terminate sequence
	int 21h
m	endp
end	m
