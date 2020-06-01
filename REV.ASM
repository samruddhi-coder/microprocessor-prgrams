data segment
string db "good$"
rev db 05h dup(0)
data ends
code segment
assume cs:code, ds:data
start:mov ax,data
mov ds,ax
lea si,string
mov cx,05h
lea di,rev
add di,05h
up:mov al,[si]
mov [di],al
inc si
dec di
loop up
code ends
end start
