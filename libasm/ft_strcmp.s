global ft_strcmp

section .text
ft_strcmp:
	mov rax, 0					; rax = 0
	mov rcx, 0					; i = 0

while_loop:
	
	mov al, byte [rdi + rcx]	; unsigned char al = rdi[i]
	mov bl, byte [rsi + rcx]	; unsigned char bl = rsi[i]
	
	cmp al, 0					; if (al[i] == "\0") return
	je return
	
	cmp al, bl					; if (al[i] == bl[i]) return
	jne return

	add rcx, 1					; i++
	jmp while_loop


return:
	movzx rax, al				; convert al to int
	movzx rbx, bl				; convert bl to int
	sub rax, rbx				; compare rax and rbx and save result to rax
	ret


