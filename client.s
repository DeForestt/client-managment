.global	pub_Client_pay
.global	pub_Client_bill
.global	pub_Client_serialize
.global	pub_Client_deSerialize
.global	pub_Client_getBalance
.global	pub_Client_getEmail
.global	pub_Client_getPhone
.global	pub_Client_getAddress
.global	pub_Client_getName
.global	pub_Client_getId
.global	pub_Client_init
.global	cliFromSerial
.global	newClient


.text

newClient:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -12(%rbp)
	movq	%rdx, -20(%rbp)
	movq	%rcx, -28(%rbp)
	movq	%r8, -36(%rbp)
	movl	$40, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -44(%rbp)
	lea	-44(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	-12(%rbp), %rax
	movq	%rax, %rdx
	movq	-20(%rbp), %rax
	movq	%rax, %rcx
	movq	-28(%rbp), %rax
	movq	%rax, %r8
	movq	-36(%rbp), %rax
	movq	%rax, %r9
	call	pub_Client_init
	movq	-44(%rbp), %rax
	leave
	ret
cliFromSerial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$40, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	call	pub_Client_deSerialize
	movq	-16(%rbp), %rax
	leave
	ret
pub_Client_init:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -60(%rbp)
	movq	%rcx, -68(%rbp)
	movq	%r8, -76(%rbp)
	movq	%r9, -84(%rbp)
	movq	-48(%rbp), %rdx
	movl	-52(%rbp), %ebx
	movl	%ebx, 0(%rdx)
	movq	-48(%rbp), %rdx
	movq	-60(%rbp), %rbx
	movq	%rbx, 4(%rdx)
	movq	-48(%rbp), %rdx
	movq	-68(%rbp), %rbx
	movq	%rbx, 12(%rdx)
	movq	-48(%rbp), %rdx
	movq	-76(%rbp), %rbx
	movq	%rbx, 20(%rdx)
	movq	-48(%rbp), %rdx
	movq	-84(%rbp), %rbx
	movq	%rbx, 28(%rdx)
	movq	-48(%rbp), %rdx
	movl	$0, %ebx
	movl	%ebx, 36(%rdx)
	movl	$0, %eax
	leave
	ret
pub_Client_getId:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdx
	movl	0(%rdx), %eax
	leave
	ret
pub_Client_getName:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	4(%rdx), %rax
	leave
	ret
pub_Client_getAddress:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	12(%rdx), %rax
	leave
	ret
pub_Client_getPhone:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	20(%rdx), %rax
	leave
	ret
pub_Client_getEmail:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	28(%rdx), %rax
	leave
	ret
pub_Client_getBalance:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdx
	movl	36(%rdx), %ebx
	movl	%ebx, -52(%rbp)
	movl	-52(%rbp), %eax
	leave
	ret
pub_Client_deSerialize:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	$300, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movb	$126, %al
	movb	%al, %sil
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	lea	-90(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rcx
	call	str_split
	movl	$7, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, -76(%rbp)
	movl	$50, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -84(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-84(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movl	$50, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -92(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-92(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movl	$50, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -100(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-100(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movl	$50, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -108(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-108(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movl	$10, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -116(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-116(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movq	-116(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, -120(%rbp)
	movq	-48(%rbp), %rdx
	movl	-76(%rbp), %ebx
	movl	%ebx, 0(%rdx)
	movq	-48(%rbp), %rdx
	movq	-84(%rbp), %rbx
	movq	%rbx, 4(%rdx)
	movq	-48(%rbp), %rdx
	movq	-92(%rbp), %rbx
	movq	%rbx, 12(%rdx)
	movq	-48(%rbp), %rdx
	movq	-100(%rbp), %rbx
	movq	%rbx, 20(%rdx)
	movq	-48(%rbp), %rdx
	movq	-108(%rbp), %rbx
	movq	%rbx, 28(%rdx)
	movq	-48(%rbp), %rdx
	movl	-120(%rbp), %ebx
	movl	%ebx, 36(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	leave
	ret
pub_Client_serialize:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -98(%rbp)
	movq	%rsi, -106(%rbp)
	movl	$7, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -114(%rbp)
	movq	-98(%rbp), %rdx
	movl	0(%rdx), %ebx
	movl	%ebx, -118(%rbp)
	movl	-118(%rbp), %eax
	movl	%eax, %edi
	movq	-114(%rbp), %rax
	movq	%rax, %rsi
	call	int_toString
	movl	-118(%rbp), %eax
	movl	$0, %ecx
	cmpl	%ecx, %eax
	jne	.Lserialize0
	movq	$.strClient.serialize1, %rax
	movq	%rax, %rdi
	movq	$.strClient.serialize2, %rax
	movq	%rax, %rsi
	movq	-114(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
.Lserialize0:
	movl	$7, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -126(%rbp)
	movq	-98(%rbp), %rdx
	movl	36(%rdx), %ebx
	movl	%ebx, -130(%rbp)
	movl	-130(%rbp), %eax
	movl	%eax, %edi
	movq	-126(%rbp), %rax
	movq	%rax, %rsi
	call	int_toString
	movl	-130(%rbp), %eax
	movl	$0, %ecx
	cmpl	%ecx, %eax
	jne	.Lserialize3
	movq	$.strClient.serialize4, %rax
	movq	%rax, %rdi
	movq	$.strClient.serialize5, %rax
	movq	%rax, %rsi
	movq	-126(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
.Lserialize3:
	movq	$.strClient.serialize6, %rax
	movq	%rax, %rdi
	movq	$.strClient.serialize7, %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	-114(%rbp), %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strClient.serialize8, %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-98(%rbp), %rdx
	movq	4(%rdx), %rbx
	movq	%rbx, -138(%rbp)
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	-138(%rbp), %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strClient.serialize9, %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-98(%rbp), %rdx
	movq	12(%rdx), %rbx
	movq	%rbx, -146(%rbp)
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	-146(%rbp), %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strClient.serialize10, %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-98(%rbp), %rdx
	movq	20(%rdx), %rbx
	movq	%rbx, -154(%rbp)
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	-154(%rbp), %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strClient.serialize11, %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-98(%rbp), %rdx
	movq	28(%rdx), %rbx
	movq	%rbx, -162(%rbp)
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	-162(%rbp), %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strClient.serialize12, %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	-126(%rbp), %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strClient.serialize13, %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-106(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strClient.serialize14, %rax
	movq	%rax, %rsi
	movq	-106(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-114(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-126(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	leave
	ret
pub_Client_bill:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -98(%rbp)
	movl	%esi, -102(%rbp)
	movq	-98(%rbp), %rdx
	movl	36(%rdx), %ebx
	movl	%ebx, -106(%rbp)
	mov	-102(%rbp), %edx
	mov	-106(%rbp), %eax
	add	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -106(%rbp)
	movq	-98(%rbp), %rdx
	movl	-106(%rbp), %ebx
	movl	%ebx, 36(%rdx)
	movl	$0, %eax
	leave
	ret
pub_Client_pay:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -98(%rbp)
	movl	%esi, -102(%rbp)
	movq	-98(%rbp), %rdx
	movl	36(%rdx), %ebx
	movl	%ebx, -106(%rbp)
	mov	-102(%rbp), %edx
	mov	-106(%rbp), %eax
	sub	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -106(%rbp)
	movq	-98(%rbp), %rdx
	movl	-106(%rbp), %ebx
	movl	%ebx, 36(%rdx)
	movl	$0, %eax
	leave
	ret


.data

.strClient.serialize14:
	.asciz	 ";"
.strClient.serialize13:
	.asciz	 ","
.strClient.serialize12:
	.asciz	 ","
.strClient.serialize11:
	.asciz	 ","
.strClient.serialize10:
	.asciz	 ","
.strClient.serialize9:
	.asciz	 ","
.strClient.serialize8:
	.asciz	 ","
.strClient.serialize6:
	.asciz	 ""
.strClient.serialize7:
	.asciz	 ""
.strClient.serialize4:
	.asciz	 "0"
.strClient.serialize5:
	.asciz	 ""
.strClient.serialize1:
	.asciz	 "0"
.strClient.serialize2:
	.asciz	 ""


.bss

