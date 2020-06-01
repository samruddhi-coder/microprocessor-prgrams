  data segment
  num1 db 0Ah
  num2 db 0Ah
  result dB ?
  data ends
  code segment
  start:assume cs:code,ds:data
  mov ax,data
  mov ds,ax                                       
  mov aL,num1
  mov bL,num2
  add aL,bL
  mov result,aL
  code ends
  end start

