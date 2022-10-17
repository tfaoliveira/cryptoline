	.att_syntax
	.text
	.p2align	5
	.globl	_mul4_rsr
	.globl	mul4_rsr
_mul4_rsr:
mul4_rsr:
	movq	%rsp, %rax
	leaq	-88(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 80(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rbp, 48(%rsp)
	movq	%r12, 56(%rsp)
	movq	%r13, 64(%rsp)
	movq	%r14, 72(%rsp)
	movq	%rdi, (%rsp)
	movq	(%rsi), %r8
	movq	(%rdx), %rax
	movq	8(%rsi), %r9
	movq	8(%rdx), %rcx
	movq	16(%rsi), %r10
	movq	16(%rdx), %rdi
	movq	24(%rsi), %rsi
	movq	24(%rdx), %rbx
	movq	%r8, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%rsi, 32(%rsp)
	xorq	%rsi, %rsi
	movq	8(%rsp), %rdx
	MULXq	%rax, %r9, %r8
	MULXq	%rcx, %r11, %r10
	adcxq	%r11, %r8
	MULXq	%rdi, %rbp, %r11
	adcxq	%rbp, %r10
	MULXq	%rbx, %rdx, %rbp
	adcxq	%rdx, %r11
	adcxq	%rsi, %rbp
	movq	16(%rsp), %rdx
	MULXq	%rax, %r13, %r12
	adoxq	%r13, %r8
	adcxq	%r12, %r10
	MULXq	%rcx, %r13, %r12
	adoxq	%r13, %r10
	adcxq	%r12, %r11
	MULXq	%rdi, %r13, %r12
	adoxq	%r13, %r11
	adcxq	%r12, %rbp
	MULXq	%rbx, %rdx, %r12
	adoxq	%rdx, %rbp
	adcxq	%rsi, %r12
	adoxq	%rsi, %r12
	movq	24(%rsp), %rdx
	MULXq	%rax, %r14, %r13
	adoxq	%r14, %r10
	adcxq	%r13, %r11
	MULXq	%rcx, %r14, %r13
	adoxq	%r14, %r11
	adcxq	%r13, %rbp
	MULXq	%rdi, %r14, %r13
	adoxq	%r14, %rbp
	adcxq	%r13, %r12
	MULXq	%rbx, %rdx, %r13
	adoxq	%rdx, %r12
	adcxq	%rsi, %r13
	adoxq	%rsi, %r13
	movq	32(%rsp), %rdx
	MULXq	%rax, %r14, %rax
	adoxq	%r14, %r11
	adcxq	%rax, %rbp
	MULXq	%rcx, %rcx, %rax
	adoxq	%rcx, %rbp
	adcxq	%rax, %r12
	MULXq	%rdi, %rcx, %rax
	adoxq	%rcx, %r12
	adcxq	%rax, %r13
	MULXq	%rbx, %rcx, %rax
	adoxq	%rcx, %r13
	adcxq	%rsi, %rax
	adoxq	%rsi, %rax
	movq	$38, %rdx
	MULXq	%rbp, %rdi, %rcx
	adoxq	%rdi, %r9
	adcxq	%rcx, %r8
	MULXq	%r12, %rdi, %rcx
	adoxq	%rdi, %r8
	adcxq	%rcx, %r10
	MULXq	%r13, %rdi, %rcx
	adoxq	%rdi, %r10
	adcxq	%rcx, %r11
	MULXq	%rax, %rcx, %rax
	adoxq	%rcx, %r11
	adcxq	%rsi, %rax
	adoxq	%rsi, %rax
	imulq	$38, %rax, %rax
	addq	%rax, %r9
	adcq	%rsi, %r8
	adcq	%rsi, %r10
	adcq	%rsi, %r11
	sbbq	%rsi, %rsi
	andq	$38, %rsi
	addq	%rsi, %r9
	movq	(%rsp), %rax
	movq	%r9, (%rax)
	movq	%r8, 8(%rax)
	movq	%r10, 16(%rax)
	movq	%r11, 24(%rax)
	movq	40(%rsp), %rbx
	movq	48(%rsp), %rbp
	movq	56(%rsp), %r12
	movq	64(%rsp), %r13
	movq	72(%rsp), %r14
	movq	80(%rsp), %rsp
	ret 
