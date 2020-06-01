data segment
block1 db 01h,02h,03h,04h,05h,06h,07h,08h,09h,10h
data ends
extra segment
block2 db 10 dup(0)
extra ends
code segment
assume cs:code, ds:data, es:extra
start: mov ax,data
mov ds,ax
mov ax,extra
mov es,ax
lea si,block1
lea di,block2
mov cx,000ah
cld
rep movsb
code ends
end start
