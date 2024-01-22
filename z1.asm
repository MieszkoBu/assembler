org 100h
push word [b]
push word [a]
pop AX
pop bx
mov dx,0
div bx 
push ax

int 21h
a dw 20d
b dw 5d