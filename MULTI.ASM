data segment
num1 db 47H
num2 db 53H
multiplication dw ?
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
       mov ds,ax
mov al,num1
mov bl,num2
mul bl
DAA
mov multiplication,al
code ends
end start
