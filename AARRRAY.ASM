data segment
array dw 1000H,2000H,1500H,1200H,3500H
result dw ?
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea si,array
mov cl,04H
mov ax,0000H
mov ax,[si]
up:inc si,
inc si
add ax,[si]
jnc skip
inc ah
skip: dec cl
jnz up
mov result,ax
code ends
end start

