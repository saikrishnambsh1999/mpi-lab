.model small
assume cs:code,ds:data,es:extra
data segment
    str db 'hi cvr$'
    substr db 'hi$'
    strlen db
    data ends
code segment
                                    