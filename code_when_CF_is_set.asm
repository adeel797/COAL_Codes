[org 0x0100]
;program that add two numbers and check if the carry is set or not
mov ax,[value1]
mov bx,[value2]
add ax,bx
jc set		; Jump if CF is set
jnc not_set	; Jump if CF is not set
set:
    mov cx,1
	jmp end_program

not_set:
	mov cx,0
	jmp end_program

end_program:
	mov ax,0x4c00
	int 0x21
	
value1: dw 444
value2: dw 212