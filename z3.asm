org 100h

mov AH,02h
mov BH,0
mov DH,0
mov DL,39
int 10h
mov AH,01h
int 21h
sub AL,'0'
mov ah,0
mov BP,AX
mov DH,1
petla:


mov AH,02h
mov DL,40
inc DH
int 10h

mov ah,09h
mov AL,179
mov BH,0
mov BL,1010b
mov cx,1
int 10h
dec BP
jnz petla

mov ah, 4Ch
int 21h 