global sum:function
section .text
sum:
	mov rax, rdi
	add rax, rsi
	ret
