data segment
array db 'radhika$'
data ends
code segment
assume cs:code, ds:data
start: mov ax,data
mov ds,ax
mov cl,00h
lea si,array
up:mov al,[si]
inc si
inc cl
cmp al,'$'
jnz up
code ends
end start


