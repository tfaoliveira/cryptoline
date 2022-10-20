	.att_syntax
	.text
	.p2align	5
	.globl	_basemul_red
	.globl	basemul_red
_basemul_red:
basemul_red:
	vmovdqu	(%rsi), %ymm2
	vmovdqu	32(%rsi), %ymm3
	vmovdqu	(%rdx), %ymm4
	vmovdqu	32(%rdx), %ymm5
	vmovdqu	(%rcx), %ymm0
	vmovdqu	32(%rcx), %ymm1
	vpxor	%ymm6, %ymm6, %ymm6
	vpblendw	$-86, %ymm6, %ymm2, %ymm7
	vpblendw	$-86, %ymm6, %ymm3, %ymm8
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpblendw	$-86, %ymm6, %ymm4, %ymm3
	vpblendw	$-86, %ymm6, %ymm5, %ymm6
	vpsrld	$16, %ymm4, %ymm4
	vpsrld	$16, %ymm5, %ymm5
	vpackusdw	%ymm6, %ymm3, %ymm3
	vpackusdw	%ymm5, %ymm4, %ymm4
	vpmullw	%ymm1, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm3, %ymm1
	vpmulhw	%ymm0, %ymm5, %ymm3
	vpmulhw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm3, %ymm2, %ymm1
	vpsubw	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm1, (%rdi)
	vmovdqu	%ymm0, 32(%rdi)
	ret 
