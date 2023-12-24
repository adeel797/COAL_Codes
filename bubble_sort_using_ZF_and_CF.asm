[org 0x0100]
;Bubble sort which uses conditional jumps that based on zero and carry flag
start:
	mov bx,0
	mov byte [swap],0
	
loop1:
	mov ax,[array+bx]
	cmp ax,[array+bx+2]
	jbe noswap
	
	mov dx,[array+bx+2]
	mov [array+bx+2],ax
	mov [array+bx],dx
	mov byte [swap],1
	
noswap:
	add bx,2
	cmp bx,18
	jne loop1
	
	cmp byte [swap],1
	je start
	
	mov ax,0x4c00
	int 0x21
	
array: dw 0,2,8,6,7,3,1,9,0,2
swap: db 0