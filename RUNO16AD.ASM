data segment
num1 dw 000AH
num2 dw 000AH
result dw ?
data ends
code segment
start:assume cs:code,ds:data
mov ax,data
mov ds,ax
mov ax,num1
mov bx,num2
add ax,bx
mov result,ax
code ends
end start
