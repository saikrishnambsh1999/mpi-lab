.MODEL SMALL
ASSUME CS:CODE,DS:DATA
DATA SEGMENT
ARR DW 1234H,6895H,3456H
LEN DB 3
SMALL DW ?
DATA ENDS
CODE SEGMENT
    START:
        MOV AX,DATA
        MOV DS,AX
        LEA SI,ARR[SI]
        MOV SMALL,AX
        MOV CL,LEN
     REPEAT:
        MOV AX,ARR[SI]
        CMP SMALL,AX
     JL NOCHANGE
     MOV SMALL,AX
     NOCHANGE:
        ADD SI,2
        LOOP REPEAT
        MOV AH,4CH
        INT 21H
        CODE ENDS
END START

       
        