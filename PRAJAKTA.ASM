data segment
array db 05H,04H,03H
result db ?
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
      mov ds,ax
      lea si,array
      mov cl,02H
      mov ax,0000H
      mov al,[si]
 up: inc si
      add al,[si]
      jnc skip
skip: dec cl
     jnz up
      mov result,al
      code ends
      end start
