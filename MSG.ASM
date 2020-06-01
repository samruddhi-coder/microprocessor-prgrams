data segment
msg1 db "Hello I am jinesh$"
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
mov ds,ax
mov ax,0600H
mov bh,71h
mov cx,0000h
mov dx,184Fh
int 10h
mov ah,02h
mov bh,00
mov dx,0C27h
int 10h
mov ah,09h
lea dx,msg1
int 21h
code ends
end start
