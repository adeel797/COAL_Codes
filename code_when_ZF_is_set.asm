[org 0x0100]
;program that campre two numbers and check if the result is zero or not
mov ax,5
mov bx,10
cmp ax,bx
jz equal		; Jump if Zero (ZF is set)
jnz not_equal	; Jump if Not Zero (ZF is not set)
equal:
    mov cx,1
	jmp end_program

not_equal:
	mov cx,1
	jmp end_program

end_program:
	mov ax,0x4c00
	int 0x21
