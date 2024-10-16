; rax - system call ex: rax 60 - exit, rax 1 - output
; rdi - first arg
; rsi - second arg
; rdx - third arg

global ft_write
section .text
ft_write: 
	
	mov rax, 1
	syscall
	jc error
	ret

error:
	mov rax, -1
	ret



