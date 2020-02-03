
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
assume cs:code, ds:data
data segment
    arr db 11,9,7,5,3,2,1
    data ends
code segment
    start:mov ax,data
    mov ds,ax
    mov si,0
    mov cx,6
    outer:mov bx,cx 
    mov si,0
    inner:mov al,arr[si]
    mov dl,arr[si+1]
    cmp al,dl
    jc noswap
    mov arr[si],dl
    mov arr[si+1],al
    noswap:inc si
    cmp si,bx
    jne inner   
    loop outer
    mov ah,4ch
    int 21h
    code ends
end start
end
    





