global ft_strcpy

section .text
ft_strcpy:
	mov rcx, 0					; i = 0

while_loop:
	cmp byte [rsi + rcx], 0		; if(src[i] == "\0")
	je exit						; exit
	mov al, [rsi + rcx]			; al = src[i]
	mov [rdi + rcx], al			; dst[i] = al
	add rcx, 1					; i++
	jmp while_loop				

exit:
	mov byte [rdi + rcx], 0		; dst[i] = "\0"
	mov rax, rdi				; rax = dst
	ret							; return rax
	 
	
		
