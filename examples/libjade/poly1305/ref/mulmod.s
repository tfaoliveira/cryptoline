	.att_syntax
	.text
	.p2align	5
	.globl	_mulmod
	.globl	mulmod
_mulmod:
mulmod:
	movq	%rsp, %rax
	leaq	-32(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 24(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	(%rdi), %r8
	movq	(%rsi), %rbp
	movq	8(%rdi), %r11
	movq	8(%rsi), %r9
	movq	16(%rdi), %rcx
	movq	16(%rsi), %rbx
	movq	%rdi, (%rsp)
	movq	%rbx, %rdi
	imulq	%rcx, %rdi
	imulq	%rbp, %rcx
	movq	%rbp, %rax
	mulq	%r8
	movq	%rax, %rsi
	movq	%rdx, %r10
	movq	%rbp, %rax
	mulq	%r11
	addq	%rax, %r10
	adcq	%rdx, %rcx
	movq	%rbx, %rax
	mulq	%r11
	movq	%rdx, %r11
	addq	%rdi, %r11
	movq	%rax, %rdi
	movq	%r9, %rax
	mulq	%r8
	addq	%rdi, %rsi
	adcq	%rax, %r10
	adcq	%rdx, %rcx
	movq	$-4, %rax
	movq	%rcx, %rdx
	shrq	$2, %rdx
	andq	%rcx, %rax
	addq	%rdx, %rax
	andq	$3, %rcx
	addq	%rsi, %rax
	adcq	%r10, %r11
	adcq	$0, %rcx
	movq	(%rsp), %rdx
	movq	%rax, (%rdx)
	movq	%r11, 8(%rdx)
	movq	%rcx, 16(%rdx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %rsp
	ret 
