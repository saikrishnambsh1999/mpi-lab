.model small
assume cs:code,ds:data
data segment
    arr dw 7999h,4566h,3210h,0fffeh,4565h
    len db 5
    data ends
code segment
    mov ax,data
    mov ds,ax
    mov si,offset arr
    xor cx,cx
    mov cl,len
    mov ax,[si]
max:
    cmp ax,[si]
    jl nostore
    mov ax,[si]
nostore:
    add si,02
    loop max  
    code ends
