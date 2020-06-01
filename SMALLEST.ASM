data segment
Array dw 0002h,0001h,0000h
smallest dw ?
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
mov ds,ax
lea si,Array
mov cl,02h
mov ax,[si]
up:inc si
inc si
cmp ax,[si]
jnc next
mov ax,[si]
next:dec cl
jnz up
mov smallest,ax
code ends
end start
