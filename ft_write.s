extern __errno_location
global	ft_write

section	.text

ft_write:
	push	rbp
	mov	rbp, rsp

	call	__errno_location
	mov	r8, rax	
	mov	rax, 1
	syscall
	neg	rax
	mov	[r8], rax
	cmp	rax, 0
	jb	exit
	mov	rax, -1
	
exit:
	pop	rbp
	ret
