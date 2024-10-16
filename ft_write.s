global ft_write:function

section .text
ft_write:
	mov rdx, rdi
	mov rdi, 1
	mov rax, 1
	syscall
	ret


