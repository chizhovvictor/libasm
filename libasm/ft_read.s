global ft_read
extern __errno_location

section .text
ft_read:
	mov rax, 0
	syscall
	
	cmp rax, -1
	jl error_exit
	ret

error_exit:
	mov rdi, rax
	neg rdi
	call __errno_location
	mov [rax], rdi
	mov rax, -1
	ret
	
