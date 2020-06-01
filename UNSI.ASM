data segment
num1 dw 0012H
num2 dw -00A2H
product dw ?
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
mov ds,ax
mov ax,0000H
mov ax,num1
mov bx,num2
imul bx
mov product,ax
code ends
end start


