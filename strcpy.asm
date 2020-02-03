 .model small
 assume cs:code,ds:data,es:data
 data segment
    str1 db "hello$"
    str2 db 6lup(0)
    data ends
 code segment
    start:
          mov ax,data
          mov ds,ax
          mov es,ax
          mov cl,6
          
          mov SI,offset str1
          mov DI,offset str2
          
          loop: REP MOVSB
      
           mov dx,offset str2
           mov ah,09h
           
           int 21h
           mov ah,4eh
           int 21h
           code ends
           end start
           end