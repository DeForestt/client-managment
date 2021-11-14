.global	main
.global	showProjects
.global	initProject
.global	creditClient
.global	billClient
.global	AddClient
.global	accoutsReceivable
.global	showClient
.global	showAll
.global	saveProjects
.global	saveData
.global	loadProjects
.global	loadData


.text

loadData:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$336, %rsp
	movq	%rdi, -8(%rbp)
	movq	$.strloadData0, %rax
	movq	%rax, %rdi
	call	openFile
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	jne	.LloadData1
	movq	$.strloadData2, %rax
	movq	%rax, %rdi
	call	createFile
	movq	%rax, %rbx
	movq	%rbx, -16(%rbp)
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	$.strloadData3, %rax
	movq	%rax, %rsi
	call	pub_File_write
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	$.strloadData4, %rax
	movq	%rax, %rsi
	call	pub_File_write
	movq	-16(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	jne	.LloadData5
	movl	$1, %eax
	leave
	ret
.LloadData5:
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_File_close
	movq	$.strloadData6, %rax
	movq	%rax, %rdi
	call	openFile
	movq	%rax, %rbx
	movq	%rbx, -16(%rbp)
.LloadData1:
	movl	$0, %eax
	movl	%eax, %edi
	call	ascii
	movb	%al, -317(%rbp)
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	lea	-316(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rsi
	movb	$59, %al
	movb	%al, %dl
	movb	$126, %al
	movb	%al, %cl
	call	pub_File_read
	movl	%eax, -321(%rbp)
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	lea	-316(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rsi
	movb	$59, %al
	movb	%al, %dl
	movb	$126, %al
	movb	%al, %cl
	call	pub_File_read
	movl	%eax, %ebx
	movl	%ebx, -321(%rbp)
	jmp	.LloadData8
.LloadData7:
	lea	-316(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rdi
	call	cliFromSerial
	movq	%rax, -329(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-329(%rbp), %rax
	movq	%rax, %rsi
	call	pub_LinkedList_append
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	lea	-316(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rsi
	movb	$59, %al
	movb	%al, %dl
	movb	$126, %al
	movb	%al, %cl
	call	pub_File_read
	movl	%eax, %ebx
	movl	%ebx, -321(%rbp)
.LloadData8:
	movl	-321(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LloadData7
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_File_close
	movl	$0, %eax
	leave
	ret
loadProjects:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$336, %rsp
	movq	%rdi, -8(%rbp)
	movq	$.strloadProjects9, %rax
	movq	%rax, %rdi
	call	openFile
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	jne	.LloadProjects10
	movq	$.strloadProjects11, %rax
	movq	%rax, %rdi
	call	createFile
	movq	%rax, %rbx
	movq	%rbx, -16(%rbp)
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	$.strloadProjects12, %rax
	movq	%rax, %rsi
	call	pub_File_write
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	$.strloadProjects13, %rax
	movq	%rax, %rsi
	call	pub_File_write
	movq	-16(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	jne	.LloadProjects14
	movl	$1, %eax
	leave
	ret
.LloadProjects14:
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_File_close
	movq	$.strloadProjects15, %rax
	movq	%rax, %rdi
	call	openFile
	movq	%rax, %rbx
	movq	%rbx, -16(%rbp)
.LloadProjects10:
	movl	$0, %eax
	movl	%eax, %edi
	call	ascii
	movb	%al, -317(%rbp)
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	lea	-316(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rsi
	movb	$59, %al
	movb	%al, %dl
	movb	$126, %al
	movb	%al, %cl
	call	pub_File_read
	movl	%eax, -321(%rbp)
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	lea	-316(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rsi
	movb	$59, %al
	movb	%al, %dl
	movb	$126, %al
	movb	%al, %cl
	call	pub_File_read
	movl	%eax, %ebx
	movl	%ebx, -321(%rbp)
	jmp	.LloadProjects17
.LloadProjects16:
	lea	-316(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rdi
	call	projFromSerial
	movq	%rax, -329(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-329(%rbp), %rax
	movq	%rax, %rsi
	call	pub_LinkedList_append
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	lea	-316(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rsi
	movb	$59, %al
	movb	%al, %dl
	movb	$126, %al
	movb	%al, %cl
	call	pub_File_read
	movl	%eax, %ebx
	movl	%ebx, -321(%rbp)
.LloadProjects17:
	movl	-321(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LloadProjects16
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_File_close
	movl	$0, %eax
	leave
	ret
saveData:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$336, %rsp
	movq	%rdi, -8(%rbp)
	movq	$.strsaveData18, %rax
	movq	%rax, %rdi
	call	createFile
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	jne	.LsaveData19
	movl	$1, %eax
	leave
	ret
.LsaveData19:
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	$.strsaveData20, %rax
	movq	%rax, %rsi
	call	pub_File_write
	movl	$0, -20(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_LinkedList_size
	movl	%eax, -24(%rbp)
	jmp	.LsaveData22
.LsaveData21:
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	call	pub_LinkedList_get
	movq	%rax, -332(%rbp)
	lea	-332(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	lea	-324(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rsi
	call	pub_Client_serialize
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	lea	-324(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rsi
	call	pub_File_write
	movq	$.strsaveData23, %rax
	movq	%rax, %rdi
	movq	$.strsaveData24, %rax
	movq	%rax, %rsi
	lea	-324(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rdx
	call	str_concat
	mov	$1, %edx
	mov	-20(%rbp), %eax
	add	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
.LsaveData22:
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LsaveData21
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	$.strsaveData25, %rax
	movq	%rax, %rsi
	call	pub_File_write
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_File_close
	movl	$0, %eax
	leave
	ret
saveProjects:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1040, %rsp
	movq	%rdi, -8(%rbp)
	movq	$.strsaveProjects26, %rax
	movq	%rax, %rdi
	call	createFile
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, %rcx
	cmpq	%rcx, %rax
	jne	.LsaveProjects27
	movl	$1, %eax
	leave
	ret
.LsaveProjects27:
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	$.strsaveProjects28, %rax
	movq	%rax, %rsi
	call	pub_File_write
	movl	$0, -20(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_LinkedList_size
	movl	%eax, -24(%rbp)
	jmp	.LsaveProjects30
.LsaveProjects29:
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	call	pub_LinkedList_get
	movq	%rax, -1032(%rbp)
	lea	-1032(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	lea	-1024(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rsi
	call	pub_Project_serialize
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	lea	-1024(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rsi
	call	pub_File_write
	movq	$.strsaveProjects31, %rax
	movq	%rax, %rdi
	movq	$.strsaveProjects32, %rax
	movq	%rax, %rsi
	lea	-1024(%rbp), %rax
	movq	%rax, %rax
	movq	%rax, %rdx
	call	str_concat
	mov	$1, %edx
	mov	-20(%rbp), %eax
	add	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
.LsaveProjects30:
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LsaveProjects29
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	$.strsaveProjects33, %rax
	movq	%rax, %rsi
	call	pub_File_write
	lea	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_File_close
	movl	$0, %eax
	leave
	ret
showAll:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_LinkedList_size
	movl	%eax, -16(%rbp)
	movq	$.strshowAll34, %rax
	movq	%rax, %rdi
	call	print
	jmp	.LshowAll36
.LshowAll35:
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	call	pub_LinkedList_get
	movq	%rax, -24(%rbp)
	lea	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getName
	movq	%rax, -32(%rbp)
	lea	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getBalance
	movl	%eax, -36(%rbp)
	lea	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getId
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	printInt
	movq	$.strshowAll37, %rax
	movq	%rax, %rdi
	call	print
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	$.strshowAll38, %rax
	movq	%rax, %rdi
	call	print
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	printInt
	movq	$.strshowAll39, %rax
	movq	%rax, %rdi
	call	print
	mov	$1, %edx
	mov	-12(%rbp), %eax
	add	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -12(%rbp)
.LshowAll36:
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LshowAll35
	movl	$0, %eax
	leave
	ret
showClient:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_LinkedList_size
	movl	%eax, -20(%rbp)
	movq	$.strshowClient40, %rax
	movq	%rax, %rdi
	call	print
	jmp	.LshowClient42
.LshowClient41:
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	call	pub_LinkedList_get
	movq	%rax, -28(%rbp)
	lea	-28(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getId
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LshowClient43
	lea	-28(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getName
	movq	%rax, -40(%rbp)
	lea	-28(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getEmail
	movq	%rax, -48(%rbp)
	lea	-28(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getPhone
	movq	%rax, -56(%rbp)
	lea	-28(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getAddress
	movq	%rax, -64(%rbp)
	lea	-28(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getBalance
	movl	%eax, -68(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	printInt
	movq	$.strshowClient44, %rax
	movq	%rax, %rdi
	call	print
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	$.strshowClient45, %rax
	movq	%rax, %rdi
	call	print
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	$.strshowClient46, %rax
	movq	%rax, %rdi
	call	print
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	$.strshowClient47, %rax
	movq	%rax, %rdi
	call	print
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	$.strshowClient48, %rax
	movq	%rax, %rdi
	call	print
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	printInt
	movq	$.strshowClient49, %rax
	movq	%rax, %rdi
	call	print
	movl	$0, %eax
	leave
	ret
.LshowClient43:
	mov	$1, %edx
	mov	-16(%rbp), %eax
	add	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -16(%rbp)
.LshowClient42:
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LshowClient41
	movl	$1, %eax
	leave
	ret
accoutsReceivable:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_LinkedList_size
	movl	%eax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LaccoutsReceivable51
.LaccoutsReceivable50:
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	call	pub_LinkedList_get
	movq	%rax, -28(%rbp)
	lea	-28(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getBalance
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$0, %ecx
	cmpl	%ecx, %eax
	jle	.LaccoutsReceivable52
	mov	-32(%rbp), %edx
	mov	-20(%rbp), %eax
	add	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
.LaccoutsReceivable52:
	mov	$1, %edx
	mov	-12(%rbp), %eax
	add	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -12(%rbp)
.LaccoutsReceivable51:
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LaccoutsReceivable50
	movl	-20(%rbp), %eax
	leave
	ret
AddClient:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	pub_LinkedList_append
	movl	$0, %eax
	leave
	ret
billClient:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_LinkedList_size
	movl	%eax, -24(%rbp)
	jmp	.LbillClient54
.LbillClient53:
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	call	pub_LinkedList_get
	movq	%rax, -32(%rbp)
	lea	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getId
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LbillClient55
	lea	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	call	pub_Client_bill
	movl	$0, %eax
	leave
	ret
.LbillClient55:
	mov	$1, %edx
	mov	-20(%rbp), %eax
	add	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
.LbillClient54:
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LbillClient53
	movl	$1, %eax
	leave
	ret
creditClient:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_LinkedList_size
	movl	%eax, -24(%rbp)
	jmp	.LcreditClient57
.LcreditClient56:
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	call	pub_LinkedList_get
	movq	%rax, -32(%rbp)
	lea	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Client_getId
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LcreditClient58
	lea	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	call	pub_Client_pay
	movl	$0, %eax
	leave
	ret
.LcreditClient58:
	mov	$1, %edx
	mov	-20(%rbp), %eax
	add	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
.LcreditClient57:
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LcreditClient56
	movl	$1, %eax
	leave
	ret
initProject:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	pub_LinkedList_append
	movl	$0, %eax
	leave
	ret
showProjects:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_LinkedList_size
	movl	%eax, -20(%rbp)
	movl	$1, -24(%rbp)
	movq	$.strshowProjects59, %rax
	movq	%rax, %rdi
	call	print
	jmp	.LshowProjects61
.LshowProjects60:
	lea	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	call	pub_LinkedList_get
	movq	%rax, -32(%rbp)
	lea	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Project_getClientId
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LshowProjects62
	lea	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Project_getId
	movl	%eax, -40(%rbp)
	lea	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Project_getName
	movq	%rax, -48(%rbp)
	lea	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Project_getStatus
	movl	%eax, -52(%rbp)
	lea	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_Project_getDescription
	movq	%rax, -60(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	printInt
	movq	$.strshowProjects63, %rax
	movq	%rax, %rdi
	call	print
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	printInt
	movq	$.strshowProjects64, %rax
	movq	%rax, %rdi
	call	print
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	$.strshowProjects65, %rax
	movq	%rax, %rdi
	call	print
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	printInt
	movq	$.strshowProjects66, %rax
	movq	%rax, %rdi
	call	print
	movq	-60(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	$.strshowProjects67, %rax
	movq	%rax, %rdi
	call	print
	movl	$0, %ebx
	movl	%ebx, -24(%rbp)
.LshowProjects62:
	mov	$1, %edx
	mov	-16(%rbp), %eax
	add	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, -16(%rbp)
.LshowProjects61:
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LshowProjects60
	movl	-24(%rbp), %eax
	leave
	ret
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -12(%rbp)
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.Lmain68
	movq	$.strmain69, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain70, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain71, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain72, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain73, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain74, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain75, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain76, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain77, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain78, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain68:
	movq	$0, -20(%rbp)
	movq	-12(%rbp), %rbx
	movq	%rbx, -20(%rbp)
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -28(%rbp)
	movq	-28(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strmain79, %rax
	movq	%rax, %rsi
	call	str_comp
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain80
	call	newList
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	loadData
	movl	-4(%rbp), %eax
	movl	$6, %ecx
	cmpl	%ecx, %eax
	jge	.Lmain81
	movq	$.strmain82, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain81:
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	lea	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_LinkedList_size
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %r8
	call	newClient
	movq	%rax, -84(%rbp)
	lea	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-84(%rbp), %rax
	movq	%rax, %rsi
	call	pub_LinkedList_append
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	saveData
	movl	$0, %eax
	leave
	ret
.Lmain80:
	movq	-28(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strmain83, %rax
	movq	%rax, %rsi
	call	str_comp
	movl	%eax, %ebx
	movl	%ebx, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain84
	call	newList
	movq	%rax, %rbx
	movq	%rbx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	loadData
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	showAll
	movl	$0, %eax
	leave
	ret
.Lmain84:
	movq	-28(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strmain85, %rax
	movq	%rax, %rsi
	call	str_comp
	movl	%eax, %ebx
	movl	%ebx, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain86
	call	newList
	movq	%rax, %rbx
	movq	%rbx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	loadData
	movl	-4(%rbp), %eax
	movl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.Lmain87
	movq	$.strmain88, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain87:
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -92(%rbp)
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -100(%rbp)
	movq	-92(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, %ebx
	movl	%ebx, -76(%rbp)
	movq	-100(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	call	billClient
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain89
	movq	$.strmain90, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain89:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	saveData
	movl	$0, %eax
	leave
	ret
.Lmain86:
	movq	-28(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strmain91, %rax
	movq	%rax, %rsi
	call	str_comp
	movl	%eax, %ebx
	movl	%ebx, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain92
	call	newList
	movq	%rax, %rbx
	movq	%rbx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	loadData
	movl	-4(%rbp), %eax
	movl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.Lmain93
	movq	$.strmain94, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain93:
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, -92(%rbp)
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, -100(%rbp)
	movq	-92(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, %ebx
	movl	%ebx, -76(%rbp)
	movq	-100(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, %ebx
	movl	%ebx, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	call	creditClient
	movl	%eax, %ebx
	movl	%ebx, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain95
	movq	$.strmain96, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain95:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	saveData
	movl	$0, %eax
	leave
	ret
.Lmain92:
	movq	-28(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strmain97, %rax
	movq	%rax, %rsi
	call	str_comp
	movl	%eax, %ebx
	movl	%ebx, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain98
	call	newList
	movq	%rax, %rbx
	movq	%rbx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	loadData
	movl	-4(%rbp), %eax
	movl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.Lmain99
	movq	$.strmain100, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain99:
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, -92(%rbp)
	movq	-92(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, %ebx
	movl	%ebx, -76(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	call	showClient
	movl	%eax, %ebx
	movl	%ebx, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain101
	movq	$.strmain102, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain101:
	movl	$0, %eax
	leave
	ret
.Lmain98:
	movq	-28(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strmain103, %rax
	movq	%rax, %rsi
	call	str_comp
	movl	%eax, %ebx
	movl	%ebx, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain104
	call	newList
	movq	%rax, %rbx
	movq	%rbx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	loadData
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.Lmain105
	movq	$.strmain106, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain105:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	accoutsReceivable
	movl	%eax, -112(%rbp)
	movq	$.strmain107, %rax
	movq	%rax, %rdi
	call	print
	movl	-112(%rbp), %eax
	movl	%eax, %edi
	call	printInt
	movq	$.strmain108, %rax
	movq	%rax, %rdi
	call	print
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	saveData
	movl	$0, %eax
	leave
	ret
.Lmain104:
	movq	-28(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strmain109, %rax
	movq	%rax, %rsi
	call	str_comp
	movl	%eax, %ebx
	movl	%ebx, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain110
	call	newList
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	loadProjects
	movl	-4(%rbp), %eax
	movl	$5, %ecx
	cmpl	%ecx, %eax
	jge	.Lmain111
	movq	$.strmain112, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain111:
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, -92(%rbp)
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, -48(%rbp)
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-92(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, -132(%rbp)
	lea	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pub_LinkedList_size
	movl	%eax, %ebx
	movl	%ebx, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	movl	-132(%rbp), %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	call	newProject
	movq	%rax, -140(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	movq	-140(%rbp), %rax
	movq	%rax, %rsi
	call	initProject
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	saveProjects
	movl	$0, %eax
	leave
	ret
.Lmain110:
	movq	-28(%rbp), %rax
	movq	%rax, %rdi
	movq	$.strmain113, %rax
	movq	%rax, %rsi
	call	str_comp
	movl	%eax, %ebx
	movl	%ebx, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain114
	call	newList
	movq	%rax, %rbx
	movq	%rbx, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	loadProjects
	movl	-4(%rbp), %eax
	movl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.Lmain115
	movq	$.strmain116, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret
.Lmain115:
	mov	$8, %edx
	mov	-20(%rbp), %rax
	add	%rdx, %rax
	movl	%eax, %ebx
	movl	%ebx, -20(%rbp)
	movq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, -92(%rbp)
	movq	-92(%rbp), %rax
	movq	%rax, %rdi
	call	str_toInt
	movl	%eax, %ebx
	movl	%ebx, -76(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	call	showProjects
	movl	%eax, %ebx
	movl	%ebx, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.Lmain117
	movl	$1, %eax
	leave
	ret
.Lmain117:
	movl	$0, %eax
	leave
	ret
.Lmain114:
	movq	$.strmain118, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain119, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain120, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain121, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain122, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain123, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain124, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain125, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain126, %rax
	movq	%rax, %rdi
	call	print
	movq	$.strmain127, %rax
	movq	%rax, %rdi
	call	print
	movl	$1, %eax
	leave
	ret


.data

.strmain127:
	.asciz	 "\tprojects\tShow all projects for a client\n"
.strmain126:
	.asciz	 "\tinit\t\tInitialize a new project\n"
.strmain125:
	.asciz	 "\trecive\t\tShow the total acounts receivable\n"
.strmain124:
	.asciz	 "\tinfo\t\tShow all info on a client\n"
.strmain123:
	.asciz	 "\tcredit\t\tCredit a client\n"
.strmain122:
	.asciz	 "\tbill\t\tBill a client\n"
.strmain121:
	.asciz	 "\tlist\t\tList all clients\n"
.strmain120:
	.asciz	 "\tadd\t\tAdd a client\n"
.strmain119:
	.asciz	 "Commands:\n"
.strmain118:
	.asciz	 "Usage: ClientList [Command] [Arguments]\n"
.strmain116:
	.asciz	 "Usage: ClientList projects [Client Id]\n"
.strmain113:
	.asciz	 "projects"
.strmain112:
	.asciz	 "Usage: ClientList [client id] [name] [description]\n"
.strmain109:
	.asciz	 "init"
.strmain108:
	.asciz	 "\n"
.strmain107:
	.asciz	 "Total Acounts Receivable:\t"
.strmain106:
	.asciz	 "Usage: ClientList recive\n"
.strmain103:
	.asciz	 "recive"
.strmain102:
	.asciz	 "Client not found\n"
.strmain100:
	.asciz	 "Usage: ClientList info [Id]\n"
.strmain97:
	.asciz	 "info"
.strmain96:
	.asciz	 "Client not found\n"
.strmain94:
	.asciz	 "Usage: ClientList credit [Id] [Amount]\n"
.strmain91:
	.asciz	 "credit"
.strmain90:
	.asciz	 "Client not found\n"
.strmain88:
	.asciz	 "Usage: ClientList bill [Id] [Amount]\n"
.strmain85:
	.asciz	 "bill"
.strmain83:
	.asciz	 "list"
.strmain82:
	.asciz	 "Usage: ClientList add [Name] [Address] [Phone] [Email]\n"
.strmain79:
	.asciz	 "add"
.strmain78:
	.asciz	 "\tprojects\t\tList all projects for a client\n"
.strmain77:
	.asciz	 "\tinit\t\tInitialize a new project\n"
.strmain76:
	.asciz	 "\trecive\t\tShow the total acounts receivable\n"
.strmain75:
	.asciz	 "\tinfo\t\tShow all info on a client\n"
.strmain74:
	.asciz	 "\tcredit\t\tCredit a client\n"
.strmain73:
	.asciz	 "\tbill\t\tBill a client\n"
.strmain72:
	.asciz	 "\tlist\t\tList all clients\n"
.strmain71:
	.asciz	 "\tadd\t\tAdd a client\n"
.strmain70:
	.asciz	 "Commands:\n"
.strmain69:
	.asciz	 "Usage: ClientList [Command] [Arguments]\n"
.strshowProjects67:
	.asciz	 "\n"
.strshowProjects66:
	.asciz	 "\t"
.strshowProjects65:
	.asciz	 "\t"
.strshowProjects64:
	.asciz	 "\t"
.strshowProjects63:
	.asciz	 ":\t"
.strshowProjects59:
	.asciz	 "ID:\tClient:\tName:\tStatus:\tDescription:\n"
.strshowClient49:
	.asciz	 "\n"
.strshowClient48:
	.asciz	 "\t"
.strshowClient47:
	.asciz	 "\t"
.strshowClient46:
	.asciz	 "\t"
.strshowClient45:
	.asciz	 "\t"
.strshowClient44:
	.asciz	 ":\t"
.strshowClient40:
	.asciz	 "ID:\tName:\tEmail:\tphone\taddress\tBalance:\n"
.strshowAll39:
	.asciz	 "\n"
.strshowAll38:
	.asciz	 "\t"
.strshowAll37:
	.asciz	 ":\t"
.strshowAll34:
	.asciz	 "ID:\tName:\t\tBalance:\n"
.strsaveProjects33:
	.asciz	 "~"
.strsaveProjects31:
	.asciz	 ""
.strsaveProjects32:
	.asciz	 ""
.strsaveProjects28:
	.asciz	 "Header, 0,;"
.strsaveProjects26:
	.asciz	 "ProjectsData"
.strsaveData25:
	.asciz	 "~"
.strsaveData23:
	.asciz	 ""
.strsaveData24:
	.asciz	 ""
.strsaveData20:
	.asciz	 "Header, 0,;"
.strsaveData18:
	.asciz	 "ClientsData"
.strloadProjects15:
	.asciz	 "ProjectsData"
.strloadProjects13:
	.asciz	 "~"
.strloadProjects12:
	.asciz	 "Header, 0,;"
.strloadProjects11:
	.asciz	 "ProjectsData"
.strloadProjects9:
	.asciz	 "ProjectsData"
.strloadData6:
	.asciz	 "ClientsData"
.strloadData4:
	.asciz	 "~"
.strloadData3:
	.asciz	 "Header, 0,;"
.strloadData2:
	.asciz	 "ClientsData"
.strloadData0:
	.asciz	 "ClientsData"


.bss

