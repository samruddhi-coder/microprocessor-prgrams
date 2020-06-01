data segment
string1 db "A$"
string2 db "A$"
msg1 db "String1 is greater than String2$"
msg2 db "String1 is less than String2$"
msg3 db "String1 is equal to String2$"
data ends

code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax

lea si,string1
lea di,string2                                                                                                                                                                                                                                                                                                                                                                                             
mov al,[si]
mov dl,[di]
cmp al,dl
 
jc up2
jz up3
jnc up1

up1:call greater
jmp exit
up2:call less
jmp exit
up3:call equal
jmp exit

greater proc
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
ret
greater endp

less proc
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
lea dx,msg2
int 21h
ret
less endp

equal proc
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
lea dx,msg3
int 21h
ret
equal endp

exit: code ends
end start
