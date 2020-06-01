data segment
array dw 000ah,0005h,000bh
asc dw ?
data ends
code segment
assume cs:code, ds:data
start: mov ax,data
mov ds,ax
mov cl,02h
loop1:lea si, array
mov ch,02h
loop2: mov ax,[si]
inc si
inc si
cmp ax,[si]
jnc down
mov dx,[si]
mov [si],ax
dec si
dec si
mov [si],dx
inc si
inc si
down: dec ch
jnz loop2
dec cl
jnz loop1
code ends
end start
