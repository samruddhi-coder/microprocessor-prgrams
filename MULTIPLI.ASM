data segment
num1 db 0AH
num2 db 02H
multiplication db ?
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
mov al,num1
mov bl,num2
mul bl
mov multiplication,al
code ends
end start
