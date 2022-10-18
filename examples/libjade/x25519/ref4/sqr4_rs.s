	.att_syntax
	.text
	.p2align	5
	.globl	_sqr4_rs
	.globl	sqr4_rs
_sqr4_rs:
sqr4_rs:
	movq	%rsp, %rax
	leaq	-80(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 72(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rbp, 48(%rsp)
	movq	%r12, 56(%rsp)
	movq	%r13, 64(%rsp)
	movq	%rdi, (%rsp)
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rsi
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	$0, %r8
	movq	$0, %rcx
	movq	16(%rsp), %rax
	mulq	8(%rsp)
	movq	%rax, %r12
	movq	%rdx, %r11
	movq	24(%rsp), %rax
	mulq	16(%rsp)
	movq	%rax, %rbp
	movq	%rdx, %rdi
	movq	32(%rsp), %rax
	mulq	24(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rsi
	movq	24(%rsp), %rax
	mulq	8(%rsp)
	addq	%rax, %r11
	adcq	%rdx, %rbp
	adcq	%rcx, %rdi
	movq	32(%rsp), %rax
	mulq	16(%rsp)
	addq	%rax, %rdi
	adcq	%rdx, %rbx
	adcq	%rcx, %rsi
	movq	32(%rsp), %rax
	mulq	8(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %rdi
	adcq	%rcx, %rbx
	adcq	%rcx, %rsi
	adcq	%rcx, %r8
	addq	%r12, %r12
	adcq	%r11, %r11
	adcq	%rbp, %rbp
	adcq	%rdi, %rdi
	adcq	%rbx, %rbx
	adcq	%rsi, %rsi
	adcq	%r8, %r8
	movq	8(%rsp), %rax
	mulq	8(%rsp)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	16(%rsp), %rax
	mulq	16(%rsp)
	movq	%rax, %r10
	movq	%rdx, %r13
	movq	24(%rsp), %rax
	mulq	24(%rsp)
	addq	%r9, %r12
	adcq	%r10, %r11
	adcq	%r13, %rbp
	adcq	%rax, %rdi
	adcq	%rdx, %rbx
	adcq	$0, %rsi
	adcq	$0, %r8
	movq	32(%rsp), %rax
	mulq	32(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %r8
	movq	$38, %r9
	movq	%rdi, %rax
	mulq	%r9
	movq	%rax, %rdi
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%rsi, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rsi
	movq	%r8, %rax
	adcq	%rdx, %rsi
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %rdi
	adcq	%r12, %r10
	adcq	%r11, %rbx
	adcq	%rbp, %rsi
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rdi
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %rsi
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rdi
	movq	(%rsp), %rax
	movq	%rdi, (%rax)
	movq	%r10, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	%rsi, 24(%rax)
	movq	40(%rsp), %rbx
	movq	48(%rsp), %rbp
	movq	56(%rsp), %r12
	movq	64(%rsp), %r13
	movq	72(%rsp), %rsp
	ret 
