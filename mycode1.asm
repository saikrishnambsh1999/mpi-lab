.model small
assume ds:data,cs:code
data segment
    n db 05h
    res db ?
    data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    xor bx,bx
    mov cl,n
    mov cl,n
    up:mov al,cl
        mul cl
    mul cl
    add bl,al
    loop up
    mov res,bl
    code ends
end start