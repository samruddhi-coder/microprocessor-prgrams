 data segment
 num1 db 0AH
 num2 db 0AH
 sum db  ?
  data ends
  code segment
  start:assume cs:code,ds:data
  mov ax,data
  mov ds,ax
  mov al,num1
  mov bl,num2
  add al,bl
  mov al,sum
  end start
  code ends
