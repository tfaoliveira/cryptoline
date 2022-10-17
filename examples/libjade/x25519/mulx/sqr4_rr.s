	.att_syntax
	.text
	.p2align	5
	.globl	_sqr4_rr
	.globl	sqr4_rr
_sqr4_rr:
sqr4_rr:
	movq	%rsp, %rax
	leaq	-64(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 56(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%r12, 24(%rsp)
	movq	%r13, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movq	%rdi, (%rsp)
	movq	(%rsi), %rdx
	movq	8(%rsi), %r11
	movq	16(%rsi), %r13
	movq	24(%rsi), %rbx
	xorq	%rax, %rax
	MULXq	%rdx, %rsi, %rcx
	MULXq	%r11, %r8, %rdi
	MULXq	%r13, %r10, %r9
	adcxq	%r10, %rdi
	MULXq	%rbx, %rdx, %r10
	adcxq	%rdx, %r9
	movq	%r11, %rdx
	MULXq	%r13, %rbp, %r11
	adoxq	%rbp, %r9
	adcxq	%r11, %r10
	MULXq	%rbx, %rbp, %r11
	adoxq	%rbp, %r10
	MULXq	%rdx, %r12, %rbp
	movq	%r13, %rdx
	MULXq	%rbx, %r14, %r13
	adcxq	%r14, %r11
	adoxq	%rax, %r11
	adcxq	%rax, %r13
	adoxq	%rax, %r13
	MULXq	%rdx, %r15, %r14
	movq	%rbx, %rdx
	MULXq	%rdx, %rdx, %rbx
	adcxq	%r8, %r8
	adoxq	%rcx, %r8
	adcxq	%rdi, %rdi
	adoxq	%r12, %rdi
	adcxq	%r9, %r9
	adoxq	%rbp, %r9
	adcxq	%r10, %r10
	adoxq	%r15, %r10
	adcxq	%r11, %r11
	adoxq	%r14, %r11
	adcxq	%r13, %r13
	adoxq	%rdx, %r13
	adcxq	%rax, %rbx
	adoxq	%rax, %rbx
	movq	$38, %rdx
	MULXq	%r10, %r10, %rcx
	adoxq	%r10, %rsi
	adcxq	%rcx, %r8
	MULXq	%r11, %r10, %rcx
	adoxq	%r10, %r8
	adcxq	%rcx, %rdi
	MULXq	%r13, %r10, %rcx
	adoxq	%r10, %rdi
	adcxq	%rcx, %r9
	MULXq	%rbx, %rdx, %rcx
	adoxq	%rdx, %r9
	adcxq	%rax, %rcx
	adoxq	%rax, %rcx
	imulq	$38, %rcx, %rcx
	addq	%rcx, %rsi
	adcq	%rax, %r8
	adcq	%rax, %rdi
	adcq	%rax, %r9
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rsi
	movq	(%rsp), %rax
	movq	%rsi, (%rax)
	movq	%r8, 8(%rax)
	movq	%rdi, 16(%rax)
	movq	%r9, 24(%rax)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	movq	56(%rsp), %rsp
	ret 
