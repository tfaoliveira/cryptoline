	.att_syntax
	.text
	.p2align	5
	.globl	_tobytes4
	.globl	tobytes4
_tobytes4:
tobytes4:
	movq	%rsp, %r10
	leaq	-8(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rdi, (%rsp)
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rsi
	leaq	(%rsi,%rsi), %rdi
	sarq	$63, %rsi
	shrq	$1, %rdi
	andq	$19, %rsi
	addq	$19, %rsi
	addq	%rsi, %rax
	adcq	$0, %rcx
	adcq	$0, %rdx
	adcq	$0, %rdi
	leaq	(%rdi,%rdi), %rsi
	sarq	$63, %rdi
	shrq	$1, %rsi
	notq	%rdi
	andq	$19, %rdi
	subq	%rdi, %rax
	sbbq	$0, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %rsi
	movq	(%rsp), %rdi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rdx, 16(%rdi)
	movq	%rsi, 24(%rdi)
	movq	%r10, %rsp
	ret 
