 data segment
num1 db -2AH
num2 db 1AH
result db ?
data ends
code segment
start:assume cs:code,ds:data
mov ax,data
mov ds,ax
mov al,num1
mov bl,num2
imul bl
mov result,al
code ends
end start
