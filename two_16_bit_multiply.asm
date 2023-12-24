[org 0x0100]
;16 bit multiplication

mov cx,16
mov dx,[multiplier]

check:
	shr dx,1
	jnc skip
	
	mov ax,[multiplicand]
	add [result],ax
	mov ax,[multiplicand+2]
	adc [result+2],ax
	
skip:
	shl word [multiplicand],1
	rcl word [multiplicand+2],1
	sub cx,1
	cmp cx,0
	jnz check
	
	mov ax,0x4c00
	int 0x21
	
multiplicand: dd 1500
multiplier: dw 600
result: dd 0