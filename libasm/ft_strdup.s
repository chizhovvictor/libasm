
global ft_strdup
extern malloc
extern __errno_location
extern ft_strlen
extern ft_strcpy

section .data
message: db "Hello", 10

section .text
ft_strdup:
  push  rdi             ; Save the original string pointer on the stack
  call  ft_strlen      ; Call ft_strlen to get the length of the string
  inc   rax             ; Increment length by 1 for the null terminator
  mov   rdi, rax        ; Move the size (length + 1) to rdi for malloc
  call  malloc         ; Call malloc to allocate memory for the new string
  mov   rdi, rax        ; Move the pointer returned by malloc to rdi (destination)
  pop   rsi             ; Restore the original string pointer from the stack to rsi
  call  ft_strcpy      ; Call ft_strcpy to copy the original string to the new memory
  ret                   ; Return from the function


error:
	mov rdi, rax
	neg rdi
	call __errno_location
	mov [rax], rdi
	mov rax, -1
	ret
