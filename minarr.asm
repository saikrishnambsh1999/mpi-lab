
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
assume cs:code, ds:data
data segment
    arr db 11,9,7,5,8
    len db 5 
data ends
code segment
    start:mov ax,data
    mov ds,ax
    mov si,offset  arr
    xor  cx,cx
    mov cl,len
    mov ax,0000h
    max:
        cmp al,[si]
        jl nostore
        mov al,[si]
        nostore: 
        inc si
        loop max
    
    code ends
end start
end
    





