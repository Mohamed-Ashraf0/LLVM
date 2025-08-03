	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"test.cpp"
	.def	"?add@@YAHHH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?add@@YAHHH@Z"                 # -- Begin function ?add@@YAHHH@Z
	.p2align	4, 0x90
"?add@@YAHHH@Z":                        # @"?add@@YAHHH@Z"
.seh_proc "?add@@YAHHH@Z"
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $ecx killed $ecx def $rcx
	movl	%edx, 4(%rsp)
	movl	%ecx, (%rsp)
	leal	(%rcx,%rdx), %eax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	$0, 36(%rsp)
	movl	$5, %ecx
	movl	$6, %edx
	callq	"?add@@YAHHH@Z"
	movl	%eax, 32(%rsp)
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.section	.drectve,"yni"
	.ascii	" /FAILIFMISMATCH:\"_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\""
