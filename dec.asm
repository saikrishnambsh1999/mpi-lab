
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
assume cs:code, ds:data
data segment
    arr db 1,2,3,4,5
    len db 5
data ends
code segment
    start:mov ax,data
    mov ds,ax
    mov si,offset arr
    mov cl,len
    mov ax,0000h
    sum:
        add al,[si]
        inc si
        loop sum
    
    code ends
end start
end
    





