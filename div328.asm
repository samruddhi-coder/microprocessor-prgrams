data segment
div_lsb dw 00ffH
div_msb dw 0000H
divisor db 0FH
quotient db ?
remainder db ?
data ends

code segment
assume cs:code,ds:data
start:mov ax,data
mov ds,ax
mov ax,div_lsb
mov dx,div_msb
mov bl,divisor
div bl
mov quotient,al
mov remainder,ah
code ends
end start
