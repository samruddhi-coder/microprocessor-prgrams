data segment
num1 db 000CH
num2 db 000CH
sum db  ?
data ends
code segment
start:assume cs:code,ds:data
mov ax,data
mov data,ax
mov ax,num1
mov bx,num2
add ax,bx
mov ax,sum
end start
code ends
