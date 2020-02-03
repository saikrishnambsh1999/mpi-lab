.model small
assume cs:code,ds:data,es:extra
;;reverse of a string
data segment       
    str db 'cvr$'
    len db 3 
    str1 db 20 dup($)
data ends
code segment 
    mov ax,data
    mov ds,ax
    mov es,ax
    xor ax,ax
    mov si,offset str+len-2
    mov di,offset str1
    mov cl,len
    cld
    copy:
    mov al,[si]
    mov [di],al
    dec si
    inc di
    loop copy
    mov dl,"$"
    mov [di],dl
    
    mov dx,offset str1
    mov ah,09h
    int 21h
    mov ah,4ch
    int 21h
    code ends

    