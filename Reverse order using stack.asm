[org 0x0100]
mov cx,10
mov si,array
mov di,result

reverse:
mov ax,[si]
push ax
add si ,2
dec cx
jnz reverse

mov cx ,10
mov si,result

pop_loop:
pop ax
mov [si],ax
add si,2
dec cx
jnz pop_loop

mov ax,0x4c00
int 0x21

array: dw 1,2,3,4,5,6,7,8,9,10
result: dw 0