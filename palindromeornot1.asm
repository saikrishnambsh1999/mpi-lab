.model small
assume cs:code,ds:data,es:extra
;;palindrome or not
data segment       
    str db 'cvr$'
    len db 3 
    str1 db 20 dup($) 
    strs db 'palindrome$'
    strns db 'notpalindrome$'
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
    xor si,si
    xor di,di
    xor cx,cx
    mov si,offset str
    mov di,offset str1
    mov cl,len
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

    

