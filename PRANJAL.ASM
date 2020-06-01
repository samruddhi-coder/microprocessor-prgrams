
data segment
array dw 0005H,0004H,0003H
result dw ?
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
      mov dx,ax
      lea si,array
      mov cl,02H
      mov ax,0000H
      mov ax,[si]
      up:inc si
      add ax,[si]
      jnc skip
      inc dl
skip:dec cl
     jnz up
     mov result,ax
     code ends
     end start
