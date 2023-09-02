.section .data

f:
	.string  "%d\n"
	.section .text
	.globl   main

main:
	movl $2, %eax
	xor  %r8d, %r8d

loop:
	cmpl $250000, %eax
	jg   end_loop
	movl $2, %r10d
	movl %eax, %r11d

tst_loop:
	cmpl %r11d, %r10d
	jg   tst
	push %rax
	xor  %edx, %edx
	div  %r10d
	test %edx, %edx
	pop  %rax
	je   not_tst
	inc  %r10d
	jmp  tst_loop

tst:
	inc %r8d

not_tst:
	inc %eax
	jmp loop

end_loop:
	lea  (%rip), %rdi
	mov  %r8d, %esi
	xor  %eax, %eax
	call printf
