data segment
num1 db 0AH
num2 db 0CH
BCD_ADD db ?
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov al,num1
mov bl,num2
add al,bl
DAA
mov BCD_ADD,al
code ends
end start
