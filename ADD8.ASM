data segment
num1 db 0AH
num2 db 0BH
sum db ?
data ends
code segment
start: assume ds:data,cs:code
mov ax,data
mov ds,ax
mov al,num1
mov bl,num2
add al,bl
mov sum, al
end start
code ends

