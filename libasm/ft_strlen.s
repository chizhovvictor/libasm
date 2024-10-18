global ft_strlen

section .text
global ft_strlen

ft_strlen:
 	mov rax, 0							; rax = 0	

while_loop:
    cmp byte [rdi + rax], 0 		; if(str[i] == '\0') exit 
	je exit							
    add rax, 1						; rax++
    jmp while_loop					; next iteration

exit:
    ret									; return rax

