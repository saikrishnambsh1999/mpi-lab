
    CODE ENDS .model small
assume cs:code ds:data
data segment
       num db   06H
      str1 db "ODD$"
      str2 db "EVEN$"
 data ends
   code segment
      mov AX,DATA
      mov DS,AX
      mov BL,num
      shr BL,1
      jc odd
     mov DX,offset str2
     mov AH,09
     INT 21H
     JMP EXIT
     
  ODD:
      mov DX,offset str1
      mov AH,09
      int 21H
  EXIT:
  
      mov AH,4CH
      mov AL,0
      int 21H  
  
       





                                                