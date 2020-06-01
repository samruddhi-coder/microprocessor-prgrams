data segment
        num1 dw 000BH
        num2 dw 000BH
        sum dw  ?
data ends
code segment
        start:assume cs:code,ds:data
        mov ax,data
        mov ds,ax
        mov ax,num1
        mov bx,num2
        add ax,bx
        mov ax,sum
        end start
code ends
