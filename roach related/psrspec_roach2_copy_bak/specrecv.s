	.file	"specrecv.c"
	.text
	.type	tsfifo_create, @function
tsfifo_create:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$32, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	tsfifo_create, .-tsfifo_create
	.type	tsfifo_destroy, @function
tsfifo_destroy:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	tsfifo_destroy, .-tsfifo_destroy
	.type	tsfifo_empty, @function
tsfifo_empty:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	tsfifo_empty, .-tsfifo_empty
	.type	tsfifo_full, @function
tsfifo_full:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	tsfifo_full, .-tsfifo_full
	.type	tsfifo_put, @function
tsfifo_put:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_full
	testl	%eax, %eax
	je	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rcx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	tsfifo_put, .-tsfifo_put
	.type	tsfifo_get, @function
tsfifo_get:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_empty
	testl	%eax, %eax
	je	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rcx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	tsfifo_get, .-tsfifo_get
	.globl	RECEIVE_BUFSIZE
	.section	.rodata
	.align 4
	.type	RECEIVE_BUFSIZE, @object
	.size	RECEIVE_BUFSIZE, 4
RECEIVE_BUFSIZE:
	.long	65536
	.globl	FIFO_DEPTH
	.align 4
	.type	FIFO_DEPTH, @object
	.size	FIFO_DEPTH, 4
FIFO_DEPTH:
	.long	256
	.globl	g_finished
	.bss
	.align 4
	.type	g_finished, @object
	.size	g_finished, 4
g_finished:
	.zero	4
	.text
	.type	be2le_u64, @function
be2le_u64:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ntohl
	movl	%eax, %eax
	salq	$32, %rax
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ntohl
	movl	%eax, %eax
	orq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	be2le_u64, .-be2le_u64
	.type	block_sigint, @function
block_sigint:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sigemptyset
	leaq	-128(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	sigaddset
	leaq	-128(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	pthread_sigmask
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	block_sigint, .-block_sigint
	.section	.rodata
.LC0:
	.string	"specrecv.c"
.LC1:
	.string	"nelems % 2 == 0"
	.text
	.type	packed2_to_planar, @function
packed2_to_planar:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L20
	movl	$__PRETTY_FUNCTION__.10785, %ecx
	movl	$119, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L20:
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L21
.L22:
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-32(%rbp), %rdx
	movzwl	(%rdx), %edx
	movw	%dx, (%rax)
	addq	$4, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movzwl	(%rdx), %edx
	movw	%dx, (%rax)
	addq	$4, -24(%rbp)
	addq	$1, -40(%rbp)
.L21:
	movq	-72(%rbp), %rax
	shrq	%rax
	cmpq	-40(%rbp), %rax
	ja	.L22
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	packed2_to_planar, .-packed2_to_planar
	.section	.rodata
.LC2:
	.string	"nelems % 4 == 0"
	.text
	.type	packed4_to_planar, @function
packed4_to_planar:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L25
	movl	$__PRETTY_FUNCTION__.10799, %ecx
	movl	$150, %edx
	movl	$.LC0, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L25:
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L26
.L27:
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-32(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	addq	$8, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	addq	$8, -24(%rbp)
	addq	$1, -40(%rbp)
.L26:
	movq	-72(%rbp), %rax
	shrq	$2, %rax
	cmpq	-40(%rbp), %rax
	ja	.L27
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	packed4_to_planar, .-packed4_to_planar
	.section	.rodata
.LC3:
	.string	"nelems % 8 == 0"
	.text
	.type	packed8_to_planar, @function
packed8_to_planar:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L30
	movl	$__PRETTY_FUNCTION__.10813, %ecx
	movl	$181, %edx
	movl	$.LC0, %esi
	movl	$.LC3, %edi
	call	__assert_fail
.L30:
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L31
.L32:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	addq	$16, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	addq	$16, -24(%rbp)
	addq	$1, -40(%rbp)
.L31:
	movq	-72(%rbp), %rax
	shrq	$3, %rax
	cmpq	-40(%rbp), %rax
	ja	.L32
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	packed8_to_planar, .-packed8_to_planar
	.section	.rodata
	.align 8
.LC4:
	.string	"Caught signal %d, stop record.\n"
	.text
	.globl	stop_processing
	.type	stop_processing, @function
stop_processing:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	stderr(%rip), %rax
	movl	-4(%rbp), %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$1, g_finished(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	stop_processing, .-stop_processing
	.globl	destroy_memory_pool
	.type	destroy_memory_pool, @function
destroy_memory_pool:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L36
.L37:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_get
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
.L36:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_empty
	testl	%eax, %eax
	je	.L37
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	destroy_memory_pool, .-destroy_memory_pool
	.globl	init_memory_pool
	.type	init_memory_pool, @function
init_memory_pool:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L39
.L42:
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L40
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_memory_pool
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tsfifo_put
.L39:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_full
	testl	%eax, %eax
	je	.L42
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	init_memory_pool, .-init_memory_pool
	.section	.rodata
.LC5:
	.string	"\nno more storage pool!\n"
	.align 8
.LC6:
	.string	"pool w:%zu r:%zu  writeq w:%zu r:%zu\n"
.LC7:
	.string	"p_blk->used == 0"
	.text
	.type	record_packet, @function
record_packet:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movl	$65536, %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	jae	.L44
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tsfifo_put
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	tsfifo_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L45
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	movl	$.LC5, %edi
	call	fwrite
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rdx
	movq	stderr(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$12, %edi
	call	exit
.L45:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movl	$__PRETTY_FUNCTION__.10845, %ecx
	movl	$278, %edx
	movl	$.LC0, %esi
	movl	$.LC7, %edi
	call	__assert_fail
.L44:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	record_packet, .-record_packet
	.section	.rodata
.LC8:
	.string	"p_blk != ((void *)0)"
.LC9:
	.string	"\nrecv(): %s<%d>\n"
.LC10:
	.string	"\npeer shutdown?!\n\n"
.LC11:
	.string	"Got PPS, start recording.\n"
	.align 8
.LC12:
	.string	"recv_len=%zd prev_cnt=%lu curr_cnt=%lu incr=%zd packet lost %lu @ %lu\n"
	.text
	.globl	receive_thread
	.type	receive_thread, @function
receive_thread:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	$-1, -72(%rbp)
	movq	$0, -56(%rbp)
	movl	$1, -84(%rbp)
	call	block_sigint
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	tsfifo_get
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L48
	movl	$__PRETTY_FUNCTION__.10854, %ecx
	movl	$298, %edx
	movl	$.LC0, %esi
	movl	$.LC8, %edi
	call	__assert_fail
.L48:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movl	$__PRETTY_FUNCTION__.10854, %ecx
	movl	$299, %edx
	movl	$.LC0, %esi
	movl	$.LC7, %edi
	call	__assert_fail
.L49:
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L50
	movl	$0, -84(%rbp)
.L50:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	$65536, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movq	-40(%rbp), %rsi
	movl	$64, %ecx
	movl	%eax, %edi
	call	recv
	movq	%rax, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.L51
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$11, %eax
	je	.L52
	call	__errno_location
	movl	(%rax), %ebx
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	%ebx, %ecx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L53
.L52:
	movl	g_finished(%rip), %eax
	testl	%eax, %eax
	je	.L54
	jmp	.L55
.L54:
	jmp	.L53
.L51:
	cmpq	$0, -32(%rbp)
	jne	.L56
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	movl	$1, %esi
	movl	$.LC10, %edi
	call	fwrite
	jmp	.L53
.L56:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	be2le_u64
	movq	%rax, -56(%rbp)
	cmpq	$-1, -72(%rbp)
	je	.L57
	cmpl	$0, -84(%rbp)
	jne	.L58
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jae	.L58
	movl	$1, -84(%rbp)
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	movl	$.LC11, %edi
	call	fwrite
	jmp	.L57
.L58:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-56(%rbp), %rax
	je	.L57
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	subq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rbx
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rbx
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-48(%rbp), %rax
	movq	32(%rax), %r8
	movq	stderr(%rip), %rax
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rsi, 8(%rsp)
	movq	-24(%rbp), %rsi
	movq	%rsi, (%rsp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$0, -84(%rbp)
	je	.L57
	movq	$0, -64(%rbp)
	jmp	.L59
.L60:
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	record_packet
	movq	%rax, -80(%rbp)
	addq	$1, -64(%rbp)
.L59:
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L60
.L57:
	cmpl	$0, -84(%rbp)
	je	.L61
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	record_packet
	movq	%rax, -80(%rbp)
.L61:
	movl	g_finished(%rip), %eax
	testl	%eax, %eax
	je	.L62
	jmp	.L55
.L62:
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L50
.L53:
	jmp	.L50
.L55:
	movl	$0, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	receive_thread, .-receive_thread
	.section	.rodata
	.align 8
.LC13:
	.string	"p_blk->used == p_ws->pf->hdr.nsblk * (nchan * npol + 8)"
	.align 8
.LC14:
	.string	"p_ws->intlv_size == 2 || p_ws->intlv_size == 4 || p_ws->intlv_size == 8"
.LC15:
	.string	"Wrong interleave size\n"
	.text
	.globl	write_thread
	.type	write_thread, @function
write_thread:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	call	block_sigint
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	$976, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	928(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	932(%rax), %eax
	movl	%eax, -36(%rbp)
.L85:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	tsfifo_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L65
	movl	g_finished(%rip), %eax
	testl	%eax, %eax
	je	.L66
	jmp	.L67
.L66:
	nop
	jmp	.L85
.L65:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	936(%rax), %ecx
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	addl	$8, %eax
	imull	%ecx, %eax
	cltq
	cmpq	%rax, %rdx
	je	.L69
	movl	$__PRETTY_FUNCTION__.10880, %ecx
	movl	$424, %edx
	movl	$.LC0, %esi
	movl	$.LC13, %edi
	call	__assert_fail
.L69:
	movl	$8, -48(%rbp)
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	je	.L70
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$4, %eax
	je	.L70
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$8, %eax
	je	.L70
	movl	$__PRETTY_FUNCTION__.10880, %ecx
	movl	$431, %edx
	movl	$.LC0, %esi
	movl	$.LC14, %edi
	call	__assert_fail
.L70:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$4, %eax
	je	.L72
	cmpl	$8, %eax
	je	.L73
	cmpl	$2, %eax
	jne	.L88
	movl	$0, -52(%rbp)
	jmp	.L75
.L76:
	movl	-40(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	1128(%rdx), %rcx
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rcx
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	packed2_to_planar
	movl	-32(%rbp), %eax
	addl	%eax, -48(%rbp)
	movl	-28(%rbp), %eax
	addl	%eax, -44(%rbp)
	addl	$1, -52(%rbp)
.L75:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	936(%rax), %eax
	cmpl	-52(%rbp), %eax
	jg	.L76
	jmp	.L77
.L72:
	movl	$0, -52(%rbp)
	jmp	.L78
.L79:
	movl	-40(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	1128(%rdx), %rcx
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rcx
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	packed4_to_planar
	movl	-32(%rbp), %eax
	addl	%eax, -48(%rbp)
	movl	-28(%rbp), %eax
	addl	%eax, -44(%rbp)
	addl	$1, -52(%rbp)
.L78:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	936(%rax), %eax
	cmpl	-52(%rbp), %eax
	jg	.L79
	jmp	.L77
.L73:
	movl	$0, -52(%rbp)
	jmp	.L80
.L81:
	movl	-40(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	1128(%rdx), %rcx
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rcx
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	packed8_to_planar
	movl	-32(%rbp), %eax
	addl	%eax, -48(%rbp)
	movl	-28(%rbp), %eax
	addl	%eax, -44(%rbp)
	addl	$1, -52(%rbp)
.L80:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	936(%rax), %eax
	cmpl	-52(%rbp), %eax
	jg	.L81
	jmp	.L77
.L88:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	movl	$1, %esi
	movl	$.LC15, %edi
	call	fwrite
	movl	$0, %eax
	jmp	.L82
.L77:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	psrfits_write_subint
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	96(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tsfifo_put
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.L86
	jmp	.L85
.L86:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movsd	408(%rax), %xmm0
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jae	.L87
	jmp	.L85
.L87:
	movl	$1, g_finished(%rip)
	nop
.L67:
	movl	$0, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	write_thread, .-write_thread
	.section	.rodata
.LC17:
	.string	"%FT%T"
.LC18:
	.string	"%s.%03ld"
	.text
	.globl	get_current_date
	.type	get_current_date, @function
get_current_date:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday
	movl	%eax, -132(%rbp)
	cmpl	$0, -132(%rbp)
	je	.L90
	movl	-132(%rbp), %eax
	jmp	.L92
.L90:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	gmtime
	movq	(%rax), %rdx
	movq	%rdx, -112(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -104(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -96(%rbp)
	movq	24(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movq	32(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	40(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$.LC17, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	strftime
	movq	-120(%rbp), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	leaq	-48(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$.LC18, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf
	movl	$0, %eax
.L92:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L93
	call	__stack_chk_fail
.L93:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	get_current_date, .-get_current_date
	.section	.rodata
.LC19:
	.string	"failed to gettimeofday: %s\n"
	.text
	.globl	get_current_mjd
	.type	get_current_mjd, @function
get_current_mjd:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	$40587, -76(%rbp)
	movl	$86400, -72(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L95
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$0, %eax
	movl	$0, %edx
	jmp	.L97
.L95:
	movq	-64(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rbx
	cqto
	idivq	%rbx
	movq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	fildq	-88(%rbp)
	fstpt	-48(%rbp)
	movq	-64(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rcx
	cqto
	idivq	%rcx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
	fildq	-88(%rbp)
	fildl	-72(%rbp)
	fdivrp	%st, %st(1)
	fstpt	-32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	fildq	-88(%rbp)
	fldt	.LC21(%rip)
	fdivrp	%st, %st(1)
	fildl	-72(%rbp)
	fdivrp	%st, %st(1)
	fldt	-32(%rbp)
	faddp	%st, %st(1)
	fstpt	-32(%rbp)
	fldt	-48(%rbp)
	fldt	-32(%rbp)
	faddp	%st, %st(1)
	fstpt	-112(%rbp)
	movq	-112(%rbp), %rax
	movl	-104(%rbp), %edx
.L97:
	movq	%rax, -112(%rbp)
	movl	%edx, -104(%rbp)
	fldt	-112(%rbp)
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	get_current_mjd, .-get_current_mjd
	.section	.rodata
.LC23:
	.string	"SEARCH"
.LC24:
	.string	","
.LC25:
	.string	"PSRSPEC0"
.LC26:
	.string	""
.LC27:
	.string	"TRACK"
.LC28:
	.string	"OFF"
.LC29:
	.string	"FA"
	.text
	.globl	fill_psrfits_header
	.type	fill_psrfits_header, @function
fill_psrfits_header:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movl	%ecx, -136(%rbp)
	movl	%r8d, -140(%rbp)
	movq	%r9, -152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-120(%rbp), %rax
	movl	$1136, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rcx
	movl	$200, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-120(%rbp), %rax
	movl	$1000, 432(%rax)
	movq	-120(%rbp), %rax
	movl	$1, 448(%rax)
	movq	-120(%rbp), %rax
	movl	$0, 452(%rax)
	movq	-120(%rbp), %rax
	addq	$464, %rax
	movl	$8, %edx
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	strncpy
	leaq	-96(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	strtok_r
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	leaq	496(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$24, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	$0, %edi
	call	strtok_r
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	leaq	520(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$24, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	$0, %edi
	call	strtok_r
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	leaq	592(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$24, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	$0, %edi
	call	strtok_r
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-120(%rbp), %rax
	leaq	640(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	$0, %edi
	call	strtok_r
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-120(%rbp), %rax
	leaq	656(%rax), %rcx
	leaq	-64(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	$0, %edi
	call	strtok_r
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	leaq	472(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$24, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	$0, %edi
	call	strtok_r
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	leaq	544(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$24, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	movq	-120(%rbp), %rax
	addq	$568, %rax
	movl	$24, %edx
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	strncpy
	leaq	-48(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	get_current_date
	movq	-120(%rbp), %rax
	leaq	616(%rax), %rcx
	leaq	-48(%rbp), %rax
	movl	$24, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	$0, %edi
	call	strtok_r
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	leaq	672(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	movq	-120(%rbp), %rax
	addq	$680, %rax
	movl	$16, %edx
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	strncpy
	movq	-120(%rbp), %rax
	addq	$696, %rax
	movl	$16, %edx
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	strncpy
	movq	-120(%rbp), %rax
	addq	$712, %rax
	movl	$8, %edx
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	strncpy
	movq	-120(%rbp), %rax
	addq	$720, %rax
	movl	$8, %edx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strncpy
	call	get_current_mjd
	movq	-120(%rbp), %rax
	fstpt	736(%rax)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	$0, %edi
	call	strtok_r
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	atof
	movsd	%xmm0, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 760(%rdx)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC24, %esi
	movl	$0, %edi
	call	strtok_r
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	atof
	movsd	%xmm0, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 784(%rdx)
	movl	-140(%rbp), %eax
	addl	$1, %eax
	imull	-136(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movq	-120(%rbp), %rax
	movsd	784(%rax), %xmm2
	movsd	.LC30(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movq	-120(%rbp), %rax
	movsd	%xmm0, 752(%rax)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 792(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 800(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 808(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 816(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 824(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 832(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 840(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 848(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 856(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 864(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 872(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 880(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 888(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 896(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 904(%rdx)
	movq	-120(%rbp), %rax
	movl	$0, 912(%rax)
	movq	-120(%rbp), %rax
	movl	$1, 916(%rax)
	movq	-120(%rbp), %rax
	movl	$8, 920(%rax)
	movq	-120(%rbp), %rax
	movl	$0, 924(%rax)
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movl	%edx, 928(%rax)
	movq	-120(%rbp), %rax
	movl	-132(%rbp), %edx
	movl	%edx, 932(%rax)
	movq	-120(%rbp), %rax
	movsd	784(%rax), %xmm0
	ucomisd	.LC31(%rip), %xmm0
	jae	.L99
	cvttsd2siq	%xmm0, %rax
	jmp	.L100
.L99:
	movsd	.LC31(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L100:
	imulq	$1000000, %rax, %rax
	movl	-140(%rbp), %edx
	addl	$1, %edx
	imull	-136(%rbp), %edx
	imull	-132(%rbp), %edx
	movslq	%edx, %rbx
	movl	$0, %edx
	divq	%rbx
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 936(%rax)
	movq	-120(%rbp), %rax
	movl	936(%rax), %eax
	cmpl	$8192, %eax
	jle	.L101
	movq	-120(%rbp), %rax
	movl	$8192, 936(%rax)
	jmp	.L102
.L101:
	movq	-120(%rbp), %rax
	movl	936(%rax), %eax
	testl	%eax, %eax
	jg	.L102
	movq	-120(%rbp), %rax
	movl	$1, 936(%rax)
.L102:
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movl	%edx, 940(%rax)
	movq	-120(%rbp), %rax
	movl	$0, 944(%rax)
	movq	-120(%rbp), %rax
	movl	-132(%rbp), %edx
	movl	%edx, 948(%rax)
	movq	-120(%rbp), %rax
	movl	$0, 952(%rax)
	movq	-120(%rbp), %rax
	movl	$1, 956(%rax)
	movq	-120(%rbp), %rax
	movl	$1, 960(%rax)
	movq	-120(%rbp), %rax
	movl	$0, 964(%rax)
	movq	-120(%rbp), %rax
	movl	$1, 968(%rax)
	movq	-120(%rbp), %rax
	movl	$1, 972(%rax)
	movq	-120(%rbp), %rax
	movsd	784(%rax), %xmm1
	movq	-120(%rbp), %rax
	movl	940(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	-120(%rbp), %rax
	movsd	%xmm0, 768(%rax)
	movq	-120(%rbp), %rax
	movsd	784(%rax), %xmm1
	movq	-120(%rbp), %rax
	movl	928(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	-120(%rbp), %rax
	movsd	%xmm0, 776(%rax)
	movq	-120(%rbp), %rax
	movl	936(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	movq	-120(%rbp), %rax
	movsd	752(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-120(%rbp), %rax
	movsd	%xmm0, 976(%rax)
	movq	-120(%rbp), %rax
	movsd	976(%rax), %xmm1
	movsd	.LC32(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-120(%rbp), %rax
	movsd	%xmm0, 984(%rax)
	movq	-120(%rbp), %rax
	movq	872(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 992(%rdx)
	movq	-120(%rbp), %rax
	movq	792(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 1000(%rdx)
	movq	-120(%rbp), %rax
	movq	800(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 1008(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 1016(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 1024(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 1032(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 1040(%rdx)
	movq	-120(%rbp), %rdx
	movl	$0, %eax
	movq	%rax, 1048(%rdx)
	movq	-120(%rbp), %rax
	movq	808(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 1056(%rdx)
	movq	-120(%rbp), %rax
	movq	816(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 1064(%rdx)
	movq	-120(%rbp), %rax
	movl	920(%rax), %edx
	movq	-120(%rbp), %rax
	movl	928(%rax), %eax
	imull	%eax, %edx
	movq	-120(%rbp), %rax
	movl	932(%rax), %eax
	imull	%eax, %edx
	movq	-120(%rbp), %rax
	movl	936(%rax), %eax
	imull	%edx, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 1072(%rax)
	movq	-120(%rbp), %rax
	movl	$11, 1076(%rax)
	movq	-120(%rbp), %rax
	movl	928(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 1080(%rax)
	movq	-120(%rbp), %rax
	movl	928(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 1088(%rax)
	movl	$0, -100(%rbp)
	jmp	.L103
.L104:
	movq	-120(%rbp), %rax
	movq	1080(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movsd	760(%rax), %xmm1
	movq	-120(%rbp), %rax
	movsd	784(%rax), %xmm2
	movsd	.LC32(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	cvtsi2sd	-100(%rbp), %xmm0
	movsd	.LC32(%rip), %xmm2
	addsd	%xmm2, %xmm0
	movq	-120(%rbp), %rax
	movsd	776(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, (%rdx)
	movq	-120(%rbp), %rax
	movq	1088(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	.LC33(%rip), %eax
	movl	%eax, (%rdx)
	addl	$1, -100(%rbp)
.L103:
	movq	-120(%rbp), %rax
	movl	928(%rax), %eax
	cmpl	-100(%rbp), %eax
	jg	.L104
	movq	-120(%rbp), %rax
	movl	928(%rax), %edx
	movq	-120(%rbp), %rax
	movl	932(%rax), %eax
	imull	%edx, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 1096(%rax)
	movq	-120(%rbp), %rax
	movl	928(%rax), %edx
	movq	-120(%rbp), %rax
	movl	932(%rax), %eax
	imull	%edx, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 1104(%rax)
	movl	$0, -100(%rbp)
	jmp	.L105
.L106:
	movq	-120(%rbp), %rax
	movq	1096(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	.LC34(%rip), %eax
	movl	%eax, (%rdx)
	movq	-120(%rbp), %rax
	movq	1104(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	.LC33(%rip), %eax
	movl	%eax, (%rdx)
	addl	$1, -100(%rbp)
.L105:
	movq	-120(%rbp), %rax
	movl	928(%rax), %edx
	movq	-120(%rbp), %rax
	movl	932(%rax), %eax
	imull	%edx, %eax
	cmpl	-100(%rbp), %eax
	jg	.L106
	movq	-120(%rbp), %rax
	movl	1072(%rax), %eax
	cltq
	movq	%rax, %rdi
	call	malloc
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 1128(%rax)
	movq	-120(%rbp), %rax
	movq	1128(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 1120(%rax)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L108
	call	__stack_chk_fail
.L108:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	fill_psrfits_header, .-fill_psrfits_header
	.section	.rodata
.LC35:
	.string	"yulei"
	.align 8
.LC36:
	.string	"\nUsage: %s <local_ip> <port_num> <file_name> <num_fft_channels> <acclen> <interleave_size> <seconds_to_record> <wait_for_pps> <\"psrfits args\">\n\n"
.LC37:
	.string	"Wrong acclen\n"
	.align 8
.LC38:
	.string	"Wrong spectra bins interleave size %d, valid values are 2, 4, 8.\n"
.LC39:
	.string	"getaddrinfo(): %s\n"
.LC40:
	.string	"failed to create socket\n"
.LC41:
	.string	"bind(): %s\n"
	.align 8
.LC42:
	.string	"faileded to create memory pool.\n"
	.align 8
.LC43:
	.string	"faileded to create write queue.\n"
	.align 8
.LC44:
	.string	"failed to initialize memory pool.\n"
	.align 8
.LC45:
	.string	"failed to create write thread: %s\n"
	.align 8
.LC46:
	.string	"failed to create receive thread: %s\n"
	.align 8
.LC47:
	.string	"recv:%8.3f MB/s  write:%8.3f MB/s  packets lost: %lu  writeq/pool: %3lu/%3lu  elapsed: %8.3f s\n"
	.align 8
.LC48:
	.string	"failed to join receive thread: %s\n"
	.align 8
.LC49:
	.string	"failed to join write thread: %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1512, %rsp
	.cfi_offset 3, -24
	movl	%edi, -1492(%rbp)
	movq	%rsi, -1504(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$-1, -1488(%rbp)
	movl	$0, %eax
	movq	%rax, -1424(%rbp)
	movl	$0, -1484(%rbp)
	cmpl	$1, -1492(%rbp)
	je	.L110
	movl	$.LC35, %edi
	movl	$0, %eax
	call	printf
.L110:
	cmpl	$10, -1492(%rbp)
	je	.L111
	movq	-1504(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$0, %eax
	jmp	.L137
.L111:
	movq	-1504(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1416(%rbp)
	movq	-1504(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -1408(%rbp)
	movq	-1504(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -1400(%rbp)
	movq	-1504(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -1480(%rbp)
	movq	-1504(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -1476(%rbp)
	cmpl	$0, -1476(%rbp)
	je	.L113
	cmpl	$1048576, -1476(%rbp)
	jbe	.L114
.L113:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$13, %edx
	movl	$1, %esi
	movl	$.LC37, %edi
	call	fwrite
	movl	$-1, %eax
	jmp	.L137
.L114:
	movq	-1504(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -1472(%rbp)
	cmpl	$2, -1472(%rbp)
	je	.L115
	cmpl	$4, -1472(%rbp)
	je	.L115
	cmpl	$6, -1472(%rbp)
	je	.L115
	movq	stderr(%rip), %rax
	movl	-1472(%rbp), %edx
	movl	$.LC38, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$-1, %eax
	jmp	.L137
.L115:
	movq	-1504(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof
	movsd	%xmm0, -1512(%rbp)
	movq	-1512(%rbp), %rax
	movq	%rax, -1424(%rbp)
	movq	-1504(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -1484(%rbp)
	movq	-1504(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -1392(%rbp)
	leaq	-1328(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	$0, -1324(%rbp)
	movl	$1, -1328(%rbp)
	movl	$2, -1320(%rbp)
	movl	$17, -1316(%rbp)
	leaq	-1464(%rbp), %rcx
	leaq	-1328(%rbp), %rdx
	movq	-1408(%rbp), %rsi
	movq	-1416(%rbp), %rax
	movq	%rax, %rdi
	call	getaddrinfo
	movl	%eax, -1468(%rbp)
	cmpl	$0, -1468(%rbp)
	je	.L116
	movl	-1468(%rbp), %eax
	movl	%eax, %edi
	call	gai_strerror
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$-1, %eax
	jmp	.L137
.L116:
	movq	-1464(%rbp), %rax
	movq	%rax, -1432(%rbp)
	jmp	.L117
.L120:
	movq	-1432(%rbp), %rax
	movl	12(%rax), %edx
	movq	-1432(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-1432(%rbp), %rax
	movl	4(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	socket
	movl	%eax, -1488(%rbp)
	cmpl	$-1, -1488(%rbp)
	je	.L118
	jmp	.L119
.L118:
	movq	-1432(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -1432(%rbp)
.L117:
	cmpq	$0, -1432(%rbp)
	jne	.L120
.L119:
	cmpq	$0, -1432(%rbp)
	jne	.L121
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	movl	$1, %esi
	movl	$.LC40, %edi
	call	fwrite
	movq	-1464(%rbp), %rax
	movq	%rax, %rdi
	call	freeaddrinfo
	movl	$-1, %eax
	jmp	.L137
.L121:
	movq	-1432(%rbp), %rax
	movl	16(%rax), %edx
	movq	-1432(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-1488(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind
	movl	%eax, -1468(%rbp)
	cmpl	$-1, -1468(%rbp)
	jne	.L122
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	$.LC41, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	-1488(%rbp), %eax
	movl	%eax, %edi
	call	close
	movq	-1464(%rbp), %rax
	movq	%rax, %rdi
	call	freeaddrinfo
	movl	$-1, %eax
	jmp	.L137
.L122:
	movq	-1464(%rbp), %rax
	movq	%rax, %rdi
	call	freeaddrinfo
	movl	$256, %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	tsfifo_create
	movq	%rax, -1384(%rbp)
	cmpq	$0, -1384(%rbp)
	jne	.L123
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	movl	$1, %esi
	movl	$.LC42, %edi
	call	fwrite
	movq	-1464(%rbp), %rax
	movq	%rax, %rdi
	call	freeaddrinfo
	movl	-1488(%rbp), %eax
	movl	%eax, %edi
	call	close
	movl	$-1, %eax
	jmp	.L137
.L123:
	movl	$256, %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	tsfifo_create
	movq	%rax, -1376(%rbp)
	cmpq	$0, -1376(%rbp)
	jne	.L124
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	movl	$1, %esi
	movl	$.LC43, %edi
	call	fwrite
	movq	-1384(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_destroy
	movq	-1464(%rbp), %rax
	movq	%rax, %rdi
	call	freeaddrinfo
	movl	-1488(%rbp), %eax
	movl	%eax, %edi
	call	close
	movl	$-1, %eax
	jmp	.L137
.L124:
	movl	-1476(%rbp), %ecx
	movl	-1480(%rbp), %edx
	movq	-1392(%rbp), %rdi
	movq	-1400(%rbp), %rsi
	leaq	-1168(%rbp), %rax
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	fill_psrfits_header
	movl	-232(%rbp), %eax
	movl	-1480(%rbp), %edx
	addl	$4, %edx
	imull	%edx, %eax
	leal	(%rax,%rax), %edx
	movl	$65536, %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movq	%rax, -1368(%rbp)
	movq	-1368(%rbp), %rdx
	movq	-1384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	init_memory_pool
	testl	%eax, %eax
	jne	.L125
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	movl	$.LC44, %edi
	call	fwrite
	movq	-1376(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_destroy
	movq	-1384(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_destroy
	movq	-1464(%rbp), %rax
	movq	%rax, %rdi
	call	freeaddrinfo
	movl	-1488(%rbp), %eax
	movl	%eax, %edi
	call	close
	movl	$-1, %eax
	jmp	.L137
.L125:
	movq	-1384(%rbp), %rax
	movq	%rax, -1280(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1272(%rbp)
	movq	$0, -1240(%rbp)
	leaq	-1168(%rbp), %rax
	movq	%rax, -1264(%rbp)
	movq	-1424(%rbp), %rax
	movq	%rax, -1248(%rbp)
	movl	-1472(%rbp), %eax
	movl	%eax, -1256(%rbp)
	leaq	-1280(%rbp), %rdx
	leaq	-1448(%rbp), %rax
	movq	%rdx, %rcx
	movl	$write_thread, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	movl	%eax, -1468(%rbp)
	cmpl	$0, -1468(%rbp)
	je	.L126
	movl	-1468(%rbp), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	$.LC45, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-1384(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_memory_pool
	movq	-1376(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_destroy
	movq	-1384(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_destroy
	movq	-1464(%rbp), %rax
	movq	%rax, %rdi
	call	freeaddrinfo
	movl	-1488(%rbp), %eax
	movl	%eax, %edi
	call	close
	movl	$-1, %eax
	jmp	.L137
.L126:
	movl	-1488(%rbp), %eax
	movl	%eax, -1232(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1224(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1216(%rbp)
	movl	-1484(%rbp), %eax
	movl	%eax, -1208(%rbp)
	movq	$1, -1200(%rbp)
	movq	$0, -1192(%rbp)
	movq	$0, -1184(%rbp)
	leaq	-1232(%rbp), %rdx
	leaq	-1456(%rbp), %rax
	movq	%rdx, %rcx
	movl	$receive_thread, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	movl	%eax, -1468(%rbp)
	cmpl	$0, -1468(%rbp)
	je	.L127
	movl	-1468(%rbp), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	$.LC46, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-1448(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_cancel
	movq	-1384(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_memory_pool
	movq	-1376(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_destroy
	movq	-1384(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_destroy
	movq	-1464(%rbp), %rax
	movq	%rax, %rdi
	call	freeaddrinfo
	movl	-1488(%rbp), %eax
	movl	%eax, %edi
	call	close
	movl	$-1, %eax
	jmp	.L137
.L127:
	movl	$stop_processing, %esi
	movl	$2, %edi
	call	signal
.L134:
	movq	-1184(%rbp), %rax
	movq	%rax, -1360(%rbp)
	movq	-1240(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movl	$1, %edi
	call	sleep
	movq	-1184(%rbp), %rax
	subq	-1360(%rbp), %rax
	testq	%rax, %rax
	js	.L128
	cvtsi2sdq	%rax, %xmm0
	jmp	.L129
.L128:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L129:
	movsd	.LC30(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1344(%rbp)
	movq	-1240(%rbp), %rax
	subq	-1352(%rbp), %rax
	testq	%rax, %rax
	js	.L130
	cvtsi2sdq	%rax, %xmm0
	jmp	.L131
.L130:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L131:
	movsd	.LC30(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1336(%rbp)
	movq	-760(%rbp), %rcx
	movq	-1384(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-1384(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-1384(%rbp), %rax
	movq	8(%rax), %rsi
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %r8
	movq	-1376(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-1376(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-1376(%rbp), %rax
	movq	8(%rax), %rsi
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %r9
	movq	-1192(%rbp), %rdx
	movq	stderr(%rip), %rdi
	movq	-1336(%rbp), %rsi
	movq	-1344(%rbp), %rax
	movq	%rcx, -1512(%rbp)
	movsd	-1512(%rbp), %xmm2
	movq	%r9, %rcx
	movq	%rsi, -1512(%rbp)
	movsd	-1512(%rbp), %xmm1
	movq	%rax, -1512(%rbp)
	movsd	-1512(%rbp), %xmm0
	movl	$.LC47, %esi
	movl	$3, %eax
	call	fprintf
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
	movl	g_finished(%rip), %eax
	testl	%eax, %eax
	je	.L132
	nop
	movq	-1456(%rbp), %rax
	leaq	-1440(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_join
	movl	%eax, -1468(%rbp)
	cmpl	$0, -1468(%rbp)
	je	.L135
	jmp	.L139
.L132:
	jmp	.L134
.L139:
	movl	-1468(%rbp), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	$.LC48, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L135:
	movq	-1448(%rbp), %rax
	leaq	-1440(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_join
	movl	%eax, -1468(%rbp)
	cmpl	$0, -1468(%rbp)
	je	.L136
	movl	-1468(%rbp), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	$.LC49, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L136:
	leaq	-1168(%rbp), %rax
	movq	%rax, %rdi
	call	psrfits_close
	movq	-1384(%rbp), %rax
	movq	%rax, %rdi
	call	destroy_memory_pool
	movq	-1376(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_destroy
	movq	-1384(%rbp), %rax
	movq	%rax, %rdi
	call	tsfifo_destroy
	movq	-1464(%rbp), %rax
	movq	%rax, %rdi
	call	freeaddrinfo
	movl	-1488(%rbp), %eax
	movl	%eax, %edi
	call	close
	movl	$0, %eax
.L137:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L138
	call	__stack_chk_fail
.L138:
	addq	$1512, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.10854, @object
	.size	__PRETTY_FUNCTION__.10854, 15
__PRETTY_FUNCTION__.10854:
	.string	"receive_thread"
	.type	__PRETTY_FUNCTION__.10845, @object
	.size	__PRETTY_FUNCTION__.10845, 14
__PRETTY_FUNCTION__.10845:
	.string	"record_packet"
	.type	__PRETTY_FUNCTION__.10880, @object
	.size	__PRETTY_FUNCTION__.10880, 13
__PRETTY_FUNCTION__.10880:
	.string	"write_thread"
	.align 16
	.type	__PRETTY_FUNCTION__.10785, @object
	.size	__PRETTY_FUNCTION__.10785, 18
__PRETTY_FUNCTION__.10785:
	.string	"packed2_to_planar"
	.align 16
	.type	__PRETTY_FUNCTION__.10799, @object
	.size	__PRETTY_FUNCTION__.10799, 18
__PRETTY_FUNCTION__.10799:
	.string	"packed4_to_planar"
	.align 16
	.type	__PRETTY_FUNCTION__.10813, @object
	.size	__PRETTY_FUNCTION__.10813, 18
__PRETTY_FUNCTION__.10813:
	.string	"packed8_to_planar"
	.align 16
.LC21:
	.long	0
	.long	4096000000
	.long	16402
	.long	0
	.align 8
.LC30:
	.long	0
	.long	1093567616
	.align 8
.LC31:
	.long	0
	.long	1138753536
	.align 8
.LC32:
	.long	0
	.long	1071644672
	.align 4
.LC33:
	.long	1065353216
	.align 4
.LC34:
	.long	0
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
