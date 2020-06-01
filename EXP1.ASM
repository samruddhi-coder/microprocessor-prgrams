data segment
Num1 db 10h
Num2 db 20h
Num3 dw 1000h
Num4 dw 2000h
data ends
code segment
Start:assume cs:code,ds:data
mov ax,data
mov ds,ax
mov al,num1
mov bl,num2
mov cx,num3
mov dx,num4
code ends
End Start
