data segment
        num1 dw 0000H
        num2 dw 0007H
        difference dw  ?
data ends
code segment
        start:assume cs:code,ds:data
        mov ax,data
        mov ds,ax
        mov ax,num1
        mov bx,num2
        sub ax,bx
        mov ax,difference
        end start
code ends
