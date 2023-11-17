stack0	segment	stack		
	dw 40h dup(0)
stack0	ends

data	segment
	db 50h dup(0)
data	ends

code	segment
	assume	cs:code,ds:data,ss:stack0
main:	mov	ax,	data
	mov	ds,	ax
	mov	ah,	4dh
	int	21h
code	ends
	end	main