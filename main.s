	.file	"main.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.globl	_Z5buildii
	.type	_Z5buildii, @function
_Z5buildii:
.LFB2007:
	.cfi_startproc
	cmpl	%esi, m(%rip)
	jge	.L7
	ret
.L7:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movslq	%edi, %rdx
	leaq	(%rdx,%rdx), %rax
	leaq	(%rax,%rdx), %rcx
	movb	$1, nodes(,%rcx,4)
	addl	%edi, %edi
	movl	%edi, nodes+4(,%rcx,4)
	movl	%edi, %ebx
	orl	$1, %ebx
	movl	%ebx, nodes+8(,%rcx,4)
	leal	1(%rsi), %eax
	movl	%eax, %r14d
	movl	%eax, %esi
	call	_Z5buildii
	movl	%r14d, %esi
	movl	%ebx, %edi
	call	_Z5buildii
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2007:
	.size	_Z5buildii, .-_Z5buildii
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"error!"
	.text
	.globl	_Z5printiiii
	.type	_Z5printiiii, @function
_Z5printiiii:
.LFB2008:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	%edi, %r13d
	movl	%esi, %r12d
	movl	%edx, %ebx
	movl	%ecx, %ebp
	movslq	%ecx, %rdx
	movslq	%ebx, %rax
	salq	$11, %rax
	movb	$111, img(%rdx,%rax)
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	movl	nodes+4(,%rax,4), %edi
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	cmpb	$0, nodes(,%rax,4)
	je	.L9
	leal	1(%rbx), %esi
	leal	-1(%rcx), %ecx
	movl	$0, %edx
	jmp	.L10
	.p2align 6
.L11:
	movslq	%ecx, %r8
	movslq	%esi, %rax
	salq	$11, %rax
	movb	$47, img(%r8,%rax)
	addl	$1, %esi
	subl	$1, %ecx
	addl	$1, %edx
.L10:
	leal	1(%r12), %r8d
	movslq	%r8d, %rax
	movl	height(,%rax,4), %eax
	subl	$1, %eax
	cmpl	%edx, %eax
	jle	.L17
	testl	%ecx, %ecx
	jns	.L11
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	jmp	.L8
.L17:
	movl	%esi, %edx
	movl	%r8d, %esi
	call	_Z5printiiii
.L9:
	movslq	%r13d, %r13
	leaq	0(%r13,%r13,2), %rax
	movl	nodes+8(,%rax,4), %r8d
	movslq	%r8d, %rax
	leaq	(%rax,%rax,2), %rax
	cmpb	$0, nodes(,%rax,4)
	je	.L8
	leal	1(%rbx), %edx
	leal	1(%rbp), %ecx
	movl	$0, %esi
	jmp	.L14
	.p2align 6
.L15:
	movslq	%ecx, %rdi
	movslq	%edx, %rax
	salq	$11, %rax
	movb	$92, img(%rdi,%rax)
	addl	$1, %edx
	addl	$1, %ecx
	addl	$1, %esi
.L14:
	leal	1(%r12), %edi
	movslq	%edi, %rax
	movl	height(,%rax,4), %eax
	subl	$1, %eax
	cmpl	%esi, %eax
	jg	.L15
	movl	%edi, %esi
	movl	%r8d, %edi
	call	_Z5printiiii
.L8:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2008:
	.size	_Z5printiiii, .-_Z5printiiii
	.globl	_Z4initi
	.type	_Z4initi, @function
_Z4initi:
.LFB2009:
	.cfi_startproc
	movl	$0, %esi
	jmp	.L19
	.p2align 5
.L20:
	movslq	%eax, %rcx
	movslq	%esi, %rdx
	salq	$11, %rdx
	movb	$32, img(%rcx,%rdx)
	addl	$1, %eax
.L21:
	leal	(%rdi,%rdi), %edx
	cmpl	%eax, %edx
	jg	.L20
	addl	$1, %esi
.L19:
	cmpl	%edi, %esi
	jge	.L23
	movl	$0, %eax
	jmp	.L21
.L23:
	ret
	.cfi_endproc
.LFE2009:
	.size	_Z4initi, .-_Z4initi
	.globl	main
	.type	main, @function
main:
.LFB2010:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movl	$m, %esi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movq	%rax, %rdi
	movl	$n, %esi
	call	_ZNSirsERi
	movl	$1, %esi
	movl	$1, %edi
	call	_Z5buildii
	movl	m(%rip), %eax
	movslq	%eax, %rdx
	movl	$2, height(,%rdx,4)
	leal	-1(%rax), %edx
	movslq	%edx, %rdx
	movl	$3, height(,%rdx,4)
	subl	$2, %eax
	jmp	.L25
	.p2align 5
.L26:
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	movl	height(,%rdx,4), %edx
	addl	%edx, %edx
	movslq	%eax, %rcx
	movl	%edx, height(,%rcx,4)
	subl	$1, %eax
.L25:
	testl	%eax, %eax
	jg	.L26
	movl	height+4(%rip), %eax
	movl	%eax, img_height(%rip)
	movl	$0, %ebx
	jmp	.L27
.L28:
	leaq	8(%rsp), %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movq	%rax, %rdi
	leaq	12(%rsp), %rsi
	call	_ZNSirsERi
	movl	8(%rsp), %eax
	leal	-1(%rax), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	addl	12(%rsp), %eax
	subl	$1, %eax
	cltq
	leaq	(%rax,%rax,2), %rax
	movb	$0, nodes(,%rax,4)
	addl	$1, %ebx
.L27:
	cmpl	%ebx, n(%rip)
	jg	.L28
	movl	img_height(%rip), %edi
	call	_Z4initi
	movl	height+4(%rip), %eax
	leal	-1(%rax), %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	_Z5printiiii
	movl	$0, %ebx
	jmp	.L29
.L30:
	movslq	%ebx, %rsi
	salq	$11, %rsi
	addq	$img, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	addl	$1, %ebx
.L29:
	cmpl	%ebx, img_height(%rip)
	jg	.L30
	movl	$0, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2010:
	.size	main, .-main
	.globl	nodes
	.bss
	.align 32
	.type	nodes, @object
	.size	nodes, 24576
nodes:
	.zero	24576
	.globl	img
	.align 32
	.type	img, @object
	.size	img, 4194304
img:
	.zero	4194304
	.globl	img_height
	.align 4
	.type	img_height, @object
	.size	img_height, 4
img_height:
	.zero	4
	.globl	height
	.align 32
	.type	height, @object
	.size	height, 44
height:
	.zero	44
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.ident	"GCC: (GNU) 15.2.1 20250808 (Red Hat 15.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
