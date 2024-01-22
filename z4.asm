org 100h


mov SI,slowo
mov CX,0
licz:
mov AL,[SI]
cmp AL,'$'
 je koniec           ; Jeśli znaleziono koniec ciągu, skocz do etykiety koniec
  inc SI              ; Przejdź do następnego znaku
  inc CX              ; Zwiększ licznik długości ciągu
  jmp licz 
  koniec:
mov DX,0
mov AX,CX
mov BP, 2
div BP 
mov CX,AX
mov AH, 40h      ; Funkcja zapisu do pliku (w tym przypadku konsoli)
mov BX, 1        ; Uchwyt 1 jest standardowym wyjściem (konsolą)    ; Liczba znaków do wyświetlenia (bez ostatniego znaku i znaku '$')
mov DX, slowo ; Adres ciągu znaków
int 21h          ; Wywołanie przerwania

mov ah, 4Ch      ; Zakończenie programu
int 21h          ; Wywołanie przerwania

slowo db 'michal hyla jest najpiekniejszy$'

