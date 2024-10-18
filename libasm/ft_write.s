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

	mov rax, 1				; output 
	syscall					; write(rdi, rsi, rdx)			

	cmp rax, -1				; cmp(rax, -1)
	jl error_exit			; if (rax <= -1) jump	
	ret						; return rax


error_exit:
	
	
	mov rdi, rax			; rdi = rax
	neg rdi					; rdi = -rdi (need pisitive number)
	call __errno_location	; rax = &errno
	mov [rax], rdi			; *rax = rdi 
	mov rax, -1				; rax = -1
	ret						; return rax


