	.att_syntax
	.text
	.p2align	5
	.globl	_mul4_rss
	.globl	mul4_rss
_mul4_rss:
mul4_rss:
	movq	%rsp, %rax
	leaq	-104(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 96(%rsp)
	movq	%rbx, 72(%rsp)
	movq	%rbp, 80(%rsp)
	movq	%r12, 88(%rsp)
	movq	%rdi, (%rsp)
	movq	(%rsi), %rax
	movq	(%rdx), %rcx
	movq	8(%rsi), %rdi
	movq	8(%rdx), %r8
	movq	16(%rsi), %r9
	movq	16(%rdx), %r10
	movq	24(%rsi), %rsi
	movq	24(%rdx), %rdx
	movq	%rax, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%r9, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	$0, %rdi
	movq	$0, %rbp
	movq	$0, %rsi
	movq	$0, %rbx
	movq	$0, %r12
	movq	$0, %r11
	movq	8(%rsp), %r9
	movq	40(%rsp), %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	48(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	%rdx, %rdi
	movq	56(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	%rdx, %rbp
	movq	64(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %rsi
	movq	16(%rsp), %r9
	movq	40(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	48(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	56(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	64(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	adcq	%rdx, %rbx
	movq	24(%rsp), %r9
	movq	40(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	48(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	56(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	64(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %r12
	movq	32(%rsp), %r9
	movq	40(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	48(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	56(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	64(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
	adcq	%rdx, %r11
	movq	$38, %r9
	movq	%rsi, %rax
	mulq	%r9
	movq	%rax, %rsi
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%r12, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %r12
	movq	%r11, %rax
	adcq	%rdx, %r12
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%r8, %rsi
	adcq	%rcx, %r10
	adcq	%rdi, %rbx
	adcq	%rbp, %r12
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rsi
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %r12
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rsi
	movq	(%rsp), %rax
	movq	%rsi, (%rax)
	movq	%r10, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	%r12, 24(%rax)
	movq	72(%rsp), %rbx
	movq	80(%rsp), %rbp
	movq	88(%rsp), %r12
	movq	96(%rsp), %rsp
	ret 
