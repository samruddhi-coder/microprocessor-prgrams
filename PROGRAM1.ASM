data segment
num1 db 10h
num2 db 20h
num3 dw 1000h
num4 dw 2000h
data ends
code segment
start:
assume cs:code,ds:data
mov ax,data
mov ds,ax
mov al,num1
mov bl,num2
mov cx,num3
mov dx,num4
code ends
end start

