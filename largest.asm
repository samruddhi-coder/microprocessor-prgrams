data segment
array db 25H,03H,0AH
largest db ?
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
      JNC Next
      MOV AL,[SI]
      Next:DEC CL
      JNZ UP
      MOV largest,AL
      Code Ends
      End Start
