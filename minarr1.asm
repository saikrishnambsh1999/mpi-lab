
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.model small
assume cs:code,ds:data,es:data
data segment
    str1 db "cvr$"
    str2 db 10 dup(?)
    count db 3
data ends
code segment 
    start:
    mov ax,data
    mov ds,ax
    mov es,ax
    xor ax,ax
    lea di,str2
    mov cl,count
    cld
    rep movsb
    lea dx,str2
    mov ah,09h
    int 21h
    mov ah,4ch
    int 21h
    
    code ends  
end start
end


