;;2 strings are equal or not
.model small
assume cs:code,ds:data es:extra
data segment 
    str1 db 'cvr$'
    str2 db 'cvr$'
    strs db 'same$'
    strns db 'notsame$' 
    data ends

code segment 
    mov ax,data
    mov ds,ax
    mov es,ax
    mov si,offset str1
    mov di,offset str2
    mov cx,3
    repe cmpsb
    jz same 
        mov dx,offset strns
        jmp end
    same:
        mov dx,offset strs
        end:
        mov ah,09h
        int 21h
        mov ah,4ch
        int 21h
     code ends   