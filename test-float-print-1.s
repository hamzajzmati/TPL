	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 16, 4
	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI0_0:
	.long	1069547520              ## float 1.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rax
Ltmp0:
	.cfi_def_cfa_offset 16
	leaq	L_fmt_integer(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_fmt_float(%rip), %rdi
	movss	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movb	$1, %al
	callq	_printf
	xorl	%eax, %eax
	popq	%rdx
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_fmt_integer:                          ## @fmt_integer
	.asciz	"%d\n"

L_fmt_float:                            ## @fmt_float
	.asciz	"%.2f\n"


.subsections_via_symbols
