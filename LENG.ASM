data segment
string db "good$"
len db ?
data ends
code segment
assume cs:code, ds:data
start:mov ax,data
mov ds,ax
lea si,string
mov cl,00h
mov al,'$'
next: cmp al,[si]
jz exit
add cl,01h
inc si
jmp next
exit: mov len,cl
code ends
end start
