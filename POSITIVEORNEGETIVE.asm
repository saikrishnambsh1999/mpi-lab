.MODEL SMALL 
ASSUME CS.CODE,DS:DATA
DATA SEGMENT
    POSITIVE db "positive$"
    NEGETIVE db "negetive$"
DATA ENDS
CODE SEGMENT
     START:
      MOV AX,DATA
      MOV ds,ax
      Mov es,ax
      Mov AL,5
      ROL AL,1
      JNC PV
      JC NV
     PV:MOV DX,OFFSET POSITIVE
         
          JMP rv
     NV:MOV DX,OFFSET NEGETIVE
      
     RV:MOV AH,09H
        
         INT 21H
     CODE ENDS 
     END START
     
     
     
     