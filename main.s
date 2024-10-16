global _start
extern ft_write

section .data
message: db "Hello World!",10, 0
count equ $ - message

section .text
_start:
	mov rdi, count
	lea rsi, [message]
	call ft_write

	mov rax, 60
	syscall
