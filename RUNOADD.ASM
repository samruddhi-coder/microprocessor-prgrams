data segment
num1 db 0AH
num2 db 0AH
result db ?
data ends
code segment
start:assume cs:code,ds:data
mov ax,data
mov ds,ax
mov al,num1
mov bl,num2
add al,bl
mov result,al
code ends
end start
