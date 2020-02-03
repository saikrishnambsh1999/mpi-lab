
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.MODEL SMALL
ASSUME CS:CODE,DS:DATA
DATA SEGMENT
A DW 8,2,5,6,1,3
DATA ENDS
CODE SEGMENT
      ASSUME DS:DATA,CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
      MOV CX,0000
      MOV CL,06
      LEA BX,A
      MOV DX,WORD PTR[BX]
      MOV AX,0000
   L1:CMP AX,WORD PTR[BX]
      JNC L2
      MOV AX,WORD PTR[BX]
   L2:CMP DX,WORD PTR[BX]
      JC L3
      MOV DX,WORD PTR[BX]
   L3:ADD BX,02
      DEC CL
      CMP CL,00
      JNZ L1
      MOV AH,4CH
      INT 21H
CODE ENDS
END START



