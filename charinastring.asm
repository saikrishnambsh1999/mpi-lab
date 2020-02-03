.model small
assume cs:code,ds:data,es:extra
;;finding a character in a string
data segment 
    str1 db 'cvr$'
    strf db 'found$'
    strnf db 'notfound$'
    data ends
code segment
    mov ax,data
    mov ds,ax
    mov es,ax
    xor ax,ax
    mov al,'c'
    mov si,offset str1
    mov cx,3
    repne scasb
    jnz unsuc
        mov dx,offset str1
        jmp end
        unsuc:
        mov dx,offset strnf
        end:
        mov ah,09h
        int 21h
        mov ah,4ch
        int 21h
code ends
        