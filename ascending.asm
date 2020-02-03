.model small
assume cs:code,ds:data
data segment
    arr dw 1h,4h,3h
    len db 03
    msg db "sorted array:$"
    sep db "$"
    data ends
code segment
    mov ax,data
    mov ds,ax
    mov cl,len
    sub cl, 1
outer:
    mov bx,cx
    mov si, offset arr
    mov di,0
inner:
    mov ax,arr[si]
    mov dx,arr[si+2]
    cmp ax,dx
    jc noswap
    mov arr[si],dx
    mov arr[si+2],ax
noswap:
    add si, 02
    inc di
    cmp di,bx
    jne inner
    loop outer
code ends
