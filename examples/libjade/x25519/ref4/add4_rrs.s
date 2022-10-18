	.att_syntax
	.text
	.p2align	5
	.globl	_add4_rrs
	.globl	add4_rrs
_add4_rrs:
add4_rrs:
	movq	%rsp, %r11
	leaq	-40(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rdi, (%rsp)
	movq	(%rsi), %rax
	movq	(%rdx), %rcx
	movq	8(%rsi), %rdi
	movq	8(%rdx), %r8
	movq	16(%rsi), %r9
	movq	16(%rdx), %r10
	movq	24(%rsi), %rsi
	movq	24(%rdx), %rdx
	movq	%rcx, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%rdx, 32(%rsp)
	xorq	%rcx, %rcx
	addq	8(%rsp), %rax
	adcq	16(%rsp), %rdi
	adcq	24(%rsp), %r9
	adcq	32(%rsp), %rsi
	sbbq	%rcx, %rcx
	andq	$38, %rcx
	addq	%rcx, %rax
	adcq	$0, %rdi
	adcq	$0, %r9
	adcq	$0, %rsi
	sbbq	%rcx, %rcx
	andq	$38, %rcx
	addq	%rcx, %rax
	movq	(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	%rdi, 8(%rcx)
	movq	%r9, 16(%rcx)
	movq	%rsi, 24(%rcx)
	movq	%r11, %rsp
	ret 
