
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.model small
assume cs:code,ds:data
data segment
    arr db 1,4,2,3,9
    len db 5
    large db ?
data ends
code segment 
    start:
    mov ax,data
    mov ds,ax
    lea si,arr
    mov al,arr[si]
    mov large,al
    mov cl,len
    repeat:
    mov al,arr[si]
    cmp large,al
    jng nochange
    mov large,al
    nochange:
    inc si
    loop repeat
    mov ah,4ch
    int 21h
    code ends  
end start
end


