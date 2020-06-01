data segment
number1 dw 6753h
number2 dw 8856h
sum     dw 2dup(0)
data ends
code segment
assume cs:code,ds:data
start:mov dx,data
mov ds,dx
mov ax,number1
mov bx,number2
add ax,bx
mov sum,ax
jnc exit
mov sum+1,o1
code ends
end start

