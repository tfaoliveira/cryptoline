	.att_syntax
	.text
	.p2align	5
	.globl	_mulmod
	.globl	mulmod
_mulmod:
mulmod:
	movq	%rsp, %rax
	leaq	-16(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 8(%rsp)
	movq	(%rdi), %rdx
	movq	(%rsi), %rax
	movq	8(%rdi), %r8
	movq	8(%rsi), %r9
	movq	16(%rdi), %rcx
	movq	16(%rsi), %r10
	movq	%rdi, (%rsp)
	movq	%rcx, %rsi
	imulq	%r10, %rsi
	MULXq	%rax, %rdi, %r11
	MULXq	%r9, %r9, %rdx
	imulq	%rax, %rcx
	addq	%rdx, %rcx
	addq	%r11, %rsi
	movq	%r8, %rdx
	MULXq	%r10, %r10, %r8
	MULXq	%rax, %rdx, %rax
	addq	%rsi, %r8
	addq	%r10, %rdi
	adcq	%r9, %r8
	adcq	%rax, %rcx
	movq	$-4, %rax
	movq	%rcx, %rsi
	andq	%rcx, %rax
	shrq	$2, %rsi
	andq	$3, %rcx
	addq	%rsi, %rax
	addq	%rdi, %rax
	adcq	%rdx, %r8
	adcq	$0, %rcx
	movq	(%rsp), %rdx
	movq	%rax, (%rdx)
	movq	%r8, 8(%rdx)
	movq	%rcx, 16(%rdx)
	movq	8(%rsp), %rsp
	ret 
