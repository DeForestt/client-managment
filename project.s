.global	newProject
.global	projFromSerial
.global	pub_Project_deserialize
.global	pub_Project_serialize
.global	pub_Project_getClientId
.global	pub_Project_getStatus
.global	pub_Project_getDescription
.global	pub_Project_getName
.global	pub_Project_getId
.global	pub_Project_init


.text

pub_Project_init:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rcx, -52(%rbp)
	movq	%r8, -60(%rbp)
	movq	-36(%rbp), %rdx
	movl	-40(%rbp), %ebx
	movl	%ebx, 0(%rdx)
	movq	-36(%rbp), %rdx
	movl	-44(%rbp), %ebx
	movl	%ebx, 24(%rdx)
	movq	-36(%rbp), %rdx
	movq	-52(%rbp), %rbx
	movq	%rbx, 4(%rdx)
	movq	-36(%rbp), %rdx
	movq	-60(%rbp), %rbx
	movq	%rbx, 12(%rdx)
	movq	-36(%rbp), %rdx
	movl	$1, %ebx
	movl	%ebx, 20(%rdx)
	movl	$0, %eax
	leave
	ret
pub_Project_getId:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -36(%rbp)
	movq	-36(%rbp), %rdx
	movl	0(%rdx), %eax
	leave
	ret
pub_Project_getName:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -36(%rbp)
	movq	-36(%rbp), %rdx
	movq	4(%rdx), %rax
	leave
	ret
pub_Project_getDescription:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -36(%rbp)
	movq	-36(%rbp), %rdx
	movq	12(%rdx), %rax
	leave
	ret
pub_Project_getStatus:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -36(%rbp)
	movq	-36(%rbp), %rdx
	movl	20(%rdx), %eax
	leave
	ret
pub_Project_getClientId:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -36(%rbp)
	movq	-36(%rbp), %rdx
	movl	24(%rdx), %eax
	leave
	ret
pub_Project_serialize:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -36(%rbp)
	movq	%rsi, -44(%rbp)
	movl	$7, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -52(%rbp)
	movq	-36(%rbp), %rdx
	movl	0(%rdx), %ebx
	movl	%ebx, -56(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	movq	-52(%rbp), %rax
	movq	%rax, %rsi
	call	int_toString
	movl	-56(%rbp), %eax
	movl	$0, %ecx
	cmpl	%ecx, %eax
	jne	.Lserialize0
	movq	$.strProject.deserialize1, %rax
	movq	%rax, %rdi
	movq	$.strProject.deserialize2, %rax
	movq	%rax, %rsi
	movq	-52(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
.Lserialize0:
	movl	$7, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -64(%rbp)
	movq	-36(%rbp), %rdx
	movl	24(%rdx), %ebx
	movl	%ebx, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	int_toString
	movl	-68(%rbp), %eax
	movl	$0, %ecx
	cmpl	%ecx, %eax
	jne	.Lserialize3
	movq	$.strProject.deserialize4, %rax
	movq	%rax, %rdi
	movq	$.strProject.deserialize5, %rax
	movq	%rax, %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
.Lserialize3:
	movl	$7, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -76(%rbp)
	movq	-36(%rbp), %rdx
	movl	20(%rdx), %ebx
	movl	%ebx, -80(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	movq	-76(%rbp), %rax
	movq	%rax, %rsi
	call	int_toString
	movl	-80(%rbp), %eax
	movl	$0, %ecx
	cmpl	%ecx, %eax
	jne	.Lserialize6
	movq	$.strProject.deserialize7, %rax
	movq	%rax, %rdi
	movq	$.strProject.deserialize8, %rax
	movq	%rax, %rsi
	movq	-76(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
.Lserialize6:
	movq	-52(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strProject.deserialize9, %rax
	movq	%rax, %rsi
	movq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-36(%rbp), %rdx
	movq	4(%rdx), %rbx
	movq	%rbx, -88(%rbp)
	movq	-44(%rbp), %rax
	movq	%rax, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-44(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strProject.deserialize10, %rax
	movq	%rax, %rsi
	movq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-36(%rbp), %rdx
	movq	12(%rdx), %rbx
	movq	%rbx, -96(%rbp)
	movq	-44(%rbp), %rax
	movq	%rax, %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-44(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strProject.deserialize11, %rax
	movq	%rax, %rsi
	movq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-44(%rbp), %rax
	movq	%rax, %rdi
	movq	-76(%rbp), %rax
	movq	%rax, %rsi
	movq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-44(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strProject.deserialize12, %rax
	movq	%rax, %rsi
	movq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-44(%rbp), %rax
	movq	%rax, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-44(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strProject.deserialize13, %rax
	movq	%rax, %rsi
	movq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movq	-44(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strProject.deserialize14, %rax
	movq	%rax, %rsi
	movq	-44(%rbp), %rax
	movq	%rax, %rdx
	call	str_concat
	movl	$0, %eax
	leave
	ret
pub_Project_deserialize:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -36(%rbp)
	movq	%rsi, -44(%rbp)
	movl	$100, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -52(%rbp)
	movq	-44(%rbp), %rax
	movq	%rax, %rdi
	movb	$126, %al
	movb	%al, %sil
	movq	-52(%rbp), %rax
	movq	%rax, %rdx
	lea	-78(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rcx
	call	str_split
	movl	$7, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -60(%rbp)
	movq	-52(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-60(%rbp), %rax
	movq	%rax, %rdx
	movq	-52(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movq	-60(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, -64(%rbp)
	movl	$50, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -72(%rbp)
	movq	-52(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-52(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movl	$350, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -80(%rbp)
	movq	-52(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-52(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movl	$7, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -88(%rbp)
	movq	-52(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-52(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, -92(%rbp)
	movl	$7, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -100(%rbp)
	movq	-52(%rbp), %rax
	movq	%rax, %rdi
	movb	$44, %al
	movb	%al, %sil
	movq	-100(%rbp), %rax
	movq	%rax, %rdx
	movq	-52(%rbp), %rax
	movq	%rax, %rcx
	call	str_split
	movq	-100(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, -104(%rbp)
	movq	-36(%rbp), %rdx
	movl	-64(%rbp), %ebx
	movl	%ebx, 0(%rdx)
	movq	-36(%rbp), %rdx
	movq	-72(%rbp), %rbx
	movq	%rbx, 4(%rdx)
	movq	-36(%rbp), %rdx
	movq	-80(%rbp), %rbx
	movq	%rbx, 12(%rdx)
	movq	-36(%rbp), %rdx
	movl	-92(%rbp), %ebx
	movl	%ebx, 20(%rdx)
	movq	-36(%rbp), %rdx
	movl	-104(%rbp), %ebx
	movl	%ebx, 24(%rdx)
	movl	$0, %eax
	leave
	ret
projFromSerial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$78, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	call	pub_Project_deserialize
	movq	-16(%rbp), %rax
	leave
	ret
newProject:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$78, %eax
	movl	%eax, %edi
	call	malloc
	movq	%rax, -32(%rbp)
	lea	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %r8
	call	pub_Project_init
	movq	-32(%rbp), %rax
	leave
	ret


.data

.strProject.deserialize14:
	.asciz	 ";"
.strProject.deserialize13:
	.asciz	 ","
.strProject.deserialize12:
	.asciz	 ","
.strProject.deserialize11:
	.asciz	 ","
.strProject.deserialize10:
	.asciz	 ","
.strProject.deserialize9:
	.asciz	 ","
.strProject.deserialize7:
	.asciz	 "0"
.strProject.deserialize8:
	.asciz	 ""
.strProject.deserialize4:
	.asciz	 "0"
.strProject.deserialize5:
	.asciz	 ""
.strProject.deserialize1:
	.asciz	 "0"
.strProject.deserialize2:
	.asciz	 ""


.bss

