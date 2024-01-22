org 100h

mov ah,01h
int 21h

cmp al,65
jge wieksza
jl znak
wieksza:
cmp al,90
jle mniejsza
jg w
mniejsza:
add al,5
mov ah,02h
mov dl,al
int 21h
jmp koniec
znak:
mov ah,02h
mov dl,al
int 21h
jmp koniec

w:
cmp al,97
jge mal
jl z

mal:
cmp al,122
jle mala
jg zna

z:
mov ah,02h
mov dl,al
int 21h
jmp koniec

mala:
sub al,5
mov ah,02h
mov dl,al
int 21h
jmp koniec 

zna:
mov ah,02h
mov dl,al
int 21h 


koniec:
mov ah,4Ch
int 21h

a db 'michal$'
