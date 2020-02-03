.model small
assume cs:code,ds:data,es:data
data segment
    str1 db "abc$"
    str2 db 4 dup(?)
    data ends
code segment
start:
    mov ax,data
    mov ds,ax
    mov es,ax
    xor cx,cx
    lea si,str2
    lea di,str1
    add di,2
    mov cl,3
    rev:
    mov al,[di]
    mov [si],al
    inc si
    dec di
    loop rev
    mov dx,offset str2
    mov ah,09h
    int 21h
    mov ah,4ch
    int 21h
code ends   
end start
