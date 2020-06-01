data segment
array db 25H,03H,0AH
smallest db ?
data ends
code segment
assume cs:code,ds:data
start:MOV AX,Data
      MOV DS,AX
LEA SI,Array
      MOV CL,02H
      MOV AL,[SI]
      UP:INC SI
      CMP AL,[SI]
      JC Next
      MOV AL,[SI]
      Next:DEC CL
      JNZ UP
      MOV smallest,AL
      Code Ends
      End Start
