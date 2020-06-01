data segment
num1 db 0AH
num2 db -02H
product db ?
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
mov ax,0000H
mov al,num1
mov bl,num2
imul bl
mov product,al
code ends
end start
