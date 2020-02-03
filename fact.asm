
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
ASSUME CS:CODE,DS:DATA
DATA SEGMENT
    DATA ENDS
CODE SEGMENT
    MOV AL,01H
    XOR CX,CX
    XOR BX,BX
    MOV CX,05H
    LABEL: MUL CL
    LOOP LABEL
    INT 21H
CODE ENDS




