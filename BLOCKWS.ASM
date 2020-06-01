data segment
block1 db 01h,02h,03h,04h,05h
block2 db 05h dup(0)
data ends
code segment
assume cs:code, ds:data
start:mov ax,data
mov ds,ax
lea si,block1
mov cx,05h
lea di,block2
up:mov al,[si]
mov [di],al
inc si
inc di
loop up
code ends
end start

