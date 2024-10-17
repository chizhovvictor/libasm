; rax - system call ex: rax 60 - exit, rax 1 - output
; rdi - first arg
; rsi - second arg
; rdx - third arg

global ft_write
extern __errno_location

section .data
message: db "error",10

section .text
ft_write: 
	
	mov rax, 1
	syscall

	cmp rax, -1
	jl error_exit	
	ret


error_exit:
	
	; mov rsi, message
	; mov rdi, 1
 	; mov rdx, 5
	; mov rax, 1
	; syscall

	
	call __errno_location
	; mov [rax], -9
	mov rax, -1
	ret



