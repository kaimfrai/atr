
build/Evaluation/bin/TagReplication:	file format elf64-x86-64

Disassembly of section .text:

<_start>:
               	endbr64
               	xor	ebp, ebp
               	mov	r9, rdx
               	pop	rsi
               	mov	rdx, rsp
               	and	rsp, -0x10
               	push	rax
               	push	rsp
               	xor	r8d, r8d
               	xor	ecx, ecx
               	lea	rdi,  <main>
               	call	qword ptr  <__libc_start_main+0x3828>
               	hlt
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<deregister_tm_clones>:
               	lea	rdi,  <__dso_handle>
               	lea	rax,  <__dso_handle>
               	cmp	rax, rdi
               	je	 <L0>
               	mov	rax, qword ptr  <__libc_start_main+0x3838>
               	test	rax, rax
               	je	 <L0>
               	jmp	rax
               	nop	dword ptr [rax]
<L0>:
               	ret
               	nop	dword ptr [rax]

<register_tm_clones>:
               	lea	rdi,  <__dso_handle>
               	lea	rsi,  <__dso_handle>
               	sub	rsi, rdi
               	mov	rax, rsi
               	shr	rsi, 0x3f
               	sar	rax, 0x3
               	add	rsi, rax
               	sar	rsi
               	je	 <L0>
               	mov	rax, qword ptr  <__libc_start_main+0x3840>
               	test	rax, rax
               	je	 <L0>
               	jmp	rax
               	nop	word ptr [rax + rax]
<L0>:
               	ret
               	nop	dword ptr [rax]

<__do_global_dtors_aux>:
               	endbr64
               	cmp	byte ptr , 0x0 <completed.0>
               	jne	 <L0>
               	push	rbp
               	cmp	qword ptr , 0x0 <__libc_start_main+0x3848>
               	mov	rbp, rsp
               	je	 <L1>
               	mov	rdi, qword ptr  <__dso_handle>
               	call	 <__cxa_finalize@plt>
<L1>:
               	call	 <deregister_tm_clones>
               	mov	byte ptr , 0x1 <completed.0>
               	pop	rbp
               	ret
               	nop	dword ptr [rax]
<L0>:
               	ret
               	nop	dword ptr [rax]

<frame_dummy>:
               	endbr64
               	jmp	 <register_tm_clones>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.PseudoRandomSequence>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW20PseudoRandomSequence__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW20PseudoRandomSequence__in_chrg>
               	call	 <initializer for module Meta.Math.Random>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Math.Random>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagReplication.Tag>:
<initializer for module Evaluation.TagReplication.Cube>:
<initializer for module Evaluation.TagReplication.Cuboid>:
<initializer for module Evaluation.TagReplication.Square>:
<initializer for module Evaluation.TagReplication.Rectangle>:
<initializer for module Std>:
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagReplication.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW6Circle__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.PiFraction>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW10PiFraction__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW10PiFraction__in_chrg>
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagReplication.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW7Ellipse__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagReplication.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW8Triangle__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.Fraction>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Dependency.Fraction>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW8Fraction__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW8Fraction__in_chrg>
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagReplication.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW7Pyramid__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.Fraction>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagReplication.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW6Sphere__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagReplication.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW8Cylinder__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagReplication.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW4Cone__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagReplication.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW9Ellipsoid__in_chrg>
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.TagReplication.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW4Head__in_chrg>
               	call	 <initializer for module Evaluation.TagReplication.Sphere>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Memory.Size>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4Size__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4Size__in_chrg>
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Memory.Size.Arithmetic>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW10Arithmetic__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW10Arithmetic__in_chrg>
               	jmp	 <initializer for module Meta.Memory.Size>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Memory.Size.Scale>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW5Scale__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW5Scale__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Count>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Memory.Count>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW5Count__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW5Count__in_chrg>
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Memory.Size.PointerArithmetic>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW17PointerArithmetic__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW17PointerArithmetic__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<_GLOBAL__sub_I_TagReplication.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.TagReplication.Circle>
               	call	 <initializer for module Evaluation.TagReplication.Ellipse>
               	call	 <initializer for module Std>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.TagReplication.Triangle>
               	call	 <initializer for module Std>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.TagReplication.Pyramid>
               	call	 <initializer for module Evaluation.TagReplication.Sphere>
               	call	 <initializer for module Evaluation.TagReplication.Cylinder>
               	call	 <initializer for module Evaluation.TagReplication.Cone>
               	call	 <initializer for module Evaluation.TagReplication.Ellipsoid>
               	call	 <initializer for module Evaluation.TagReplication.Head>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	call	 <initializer for module Meta.Memory.Size.Scale>
               	call	 <initializer for module Meta.Memory.Size.PointerArithmetic>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x28
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r14d, byte ptr [rcx]
               	movzx	edx, byte ptr [rcx + 0x1]
               	add	r14d, -0x30
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr [rax + rax]
<L1>:
               	lea	esi, [r14 + 4*r14]
               	movsx	edx, dl
               	lea	r14d, [rdx + 2*rsi - 0x30]
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	ebp, byte ptr [rax]
               	movzx	ecx, byte ptr [rax + 0x1]
               	add	ebp, -0x30
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	edx, [rbp + 4*rbp]
               	movsx	ecx, cl
               	lea	ebp, [rcx + 2*rdx - 0x30]
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	mov	rsi, qword ptr  <__libc_start_main+0x3850>
               	mov	ebx, ebp
               	lea	rax, [rbx + 4*rbx]
               	lea	rdi, [rbx + 8*rax]
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	rdi, rax
               	test	ebp, ebp
               	je	 <L4>
               	mov	qword ptr [rsp], rdi
               	movsxd	rax, r14d
               	movabs	rdi, 0x3c6ef372fe94f82a
               	movabs	r11, -0x40a7b892e31b1a47
               	movabs	rcx, -0x255992d382208bc1
               	movabs	r10, -0x6b2fb644ecceee15
               	shl	rbx, 0x3
               	xor	r9d, r9d
               	vxorps	xmm0, xmm0, xmm0
               	add	rdi, rax
               	add	rcx, rax
               	mov	r8, rdi
               	mov	rdx, rcx
               	shr	r8, 0x1e
               	shr	rdx, 0x1e
               	xor	r8, rdi
               	xor	rdx, rcx
               	imul	r8, r11
               	imul	rdx, r11
               	mov	rdi, r8
               	mov	rsi, rdx
               	shr	rdi, 0x1b
               	shr	rsi, 0x1b
               	xor	rdi, r8
               	movabs	r8, -0x61c8864680b583eb
               	xor	rsi, rdx
               	imul	rdi, r10
               	add	r8, rax
               	imul	rsi, r10
               	mov	r15, rdi
               	mov	r14, rsi
               	shr	r15, 0x1f
               	shr	r14, 0x1f
               	xor	r15, rdi
               	mov	rdi, r8
               	xor	r14, rsi
               	shr	rdi, 0x1e
               	xor	rdi, r8
               	mov	r8, rax
               	shr	r8, 0x1e
               	imul	rdi, r11
               	xor	r8, rax
               	imul	r8, r11
               	mov	rsi, rdi
               	shr	rsi, 0x1b
               	mov	rax, r8
               	xor	rsi, rdi
               	mov	rdi, qword ptr [rsp]
               	shr	rax, 0x1b
               	imul	rsi, r10
               	xor	rax, r8
               	imul	rax, r10
               	lea	r10,  <__libc_start_main+0x8ac>
               	mov	r12, rsi
               	shr	r12, 0x1f
               	mov	r13, rax
               	xor	r12, rsi
               	movabs	rsi, 0x4ec4ec4ec4ec4ec5
               	shr	r13, 0x1f
               	xor	r13, rax
               	lea	rax, [rbx + 4*rbx]
               	lea	r8, [rdi + rax]
               	mov	qword ptr [rsp + 0x18], rax
               	mov	qword ptr [rsp + 0x10], r8
               	nop	word ptr cs:[rax + rax]
<L7>:
               	lea	rax, [r12 + 4*r12]
               	rorx	rax, rax, 0x39
               	lea	rdx, [rax + 8*rax]
               	mulx	rax, rax, rsi
               	shr	rax, 0x2
               	lea	rcx, [rax + 2*rax]
               	lea	rax, [rax + 4*rcx]
               	sub	rdx, rax
               	cmp	rdx, 0xc
               	ja	 <L5>
               	movsxd	rax, dword ptr [r10 + 4*rdx]
               	add	rax, r10
               	jmp	rax
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	xor	eax, eax
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	qword ptr [rdi + 8*rax + 0x20], 0x0
               	mov	al, 0xb
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	dword ptr [rdi + 8*rax + 0x20], 0x0
               	mov	al, 0x4
               	jmp	 <L6>
               	mov	rsi, qword ptr  <__libc_start_main+0x3850>
               	mov	ebx, r9d
               	mov	dword ptr [rsp + 0xc], r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax + 0x8], ymm0
               	mov	edi, 0x20
               	mov	qword ptr [rsp + 0x20], rax
               	vzeroupper
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	rdi, qword ptr [rsp]
               	mov	rcx, qword ptr [rsp + 0x20]
               	mov	r9d, dword ptr [rsp + 0xc]
               	mov	r8, qword ptr [rsp + 0x10]
               	vxorps	xmm0, xmm0, xmm0
               	lea	r10,  <__libc_start_main+0x8ac>
               	movabs	rsi, 0x4ec4ec4ec4ec4ec5
               	mov	qword ptr [rdi + 8*rcx], rax
               	mov	al, 0xc
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	dword ptr [rdi + 8*rax + 0x20], 0x0
               	mov	al, 0x9
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	dword ptr [rdi + 8*rax + 0x20], 0x0
               	mov	al, 0x2
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	al, 0x3
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	qword ptr [rdi + 8*rax + 0x20], 0x0
               	mov	al, 0x7
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	dword ptr [rdi + 8*rax + 0x20], 0x0
               	mov	al, 0x1
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	al, 0x5
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	qword ptr [rdi + 8*rax + 0x20], 0x0
               	mov	al, 0x6
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	dword ptr [rdi + 8*rax + 0x20], 0x0
               	mov	al, 0xa
               	jmp	 <L6>
               	mov	ebx, r9d
               	lea	rax, [rbx + 4*rbx]
               	vmovups	ymmword ptr [rdi + 8*rax], ymm0
               	mov	al, 0x8
               	nop	word ptr cs:[rax + rax]
<L6>:
               	inc	r9d
               	mov	byte ptr [r8 + rbx], al
<L5>:
               	mov	rax, r12
               	xor	r15, r13
               	xor	r14, r12
               	shl	rax, 0x11
               	xor	r12, r15
               	xor	r13, r14
               	rorx	r14, r14, 0x13
               	xor	r15, rax
               	dec	ebp
               	jne	 <L7>
               	mov	r10, qword ptr [rsp + 0x18]
               	lea	rdx,  <__libc_start_main+0x8e0>
               	vxorps	xmm0, xmm0, xmm0
               	mov	ecx, 0x1c
               	movzx	esi, byte ptr [rdi + r10]
               	mov	rax, r10
               	neg	rax
               	movsxd	rsi, dword ptr [rdx + 4*rsi]
               	add	rsi, rdx
               	jmp	rsi
<L4>:
               	xor	ebp, ebp
<L10>:
               	test	rdi, rdi
               	jne	 <L8>
               	jmp	 <L9>
<L19>:
               	vcvttss2si	ebp, xmm0
               	test	r9d, r9d
               	je	 <L10>
               	mov	ebx, r9d
               	xor	r14d, r14d
               	mov	r15, rdi
               	jmp	 <L11>
               	nop	word ptr cs:[rax + rax]
<L13>:
               	inc	r14
               	add	r15, 0x28
               	cmp	rbx, r14
               	je	 <L12>
<L11>:
               	cmp	byte ptr [r8 + r14], 0xc
               	jne	 <L13>
               	mov	rdi, qword ptr [r15]
               	test	rdi, rdi
               	je	 <L13>
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	mov	r8, qword ptr [rsp + 0x10]
               	jmp	 <L13>
<L12>:
               	mov	rdi, qword ptr [rsp]
<L8>:
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L9>:
               	mov	eax, ebp
               	add	rsp, 0x28
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	vmulss	xmm2, xmm1, dword ptr  <__libc_start_main+0x89c>
               	jmp	 <L14>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x89c>
               	vmulss	xmm1, xmm1, dword ptr [rdi + rcx + 0x4]
               	jmp	 <L15>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm1, dword ptr [rdi + rcx + 0x4]
               	jmp	 <L15>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm1, xmm1
               	jmp	 <L15>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x8a4>
               	vmulss	xmm1, xmm1, dword ptr [rdi + rcx + 0x4]
               	jmp	 <L15>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	vmulss	xmm2, xmm1, xmm1
               	jmp	 <L14>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
<L16>:
               	vmulss	xmm1, xmm1, dword ptr [rdi + rcx + 0x4]
               	vmulss	xmm1, xmm1, dword ptr [rdi + rcx + 0x8]
               	jmp	 <L15>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x8a0>
               	jmp	 <L16>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	jmp	 <L17>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	vmulss	xmm2, xmm1, dword ptr  <__libc_start_main+0x89c>
<L18>:
               	vmulss	xmm1, xmm1, xmm2
               	vmulss	xmm1, xmm1, dword ptr [rdi + rcx + 0x4]
               	jmp	 <L15>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	vmulss	xmm2, xmm1, dword ptr  <__libc_start_main+0x898>
               	jmp	 <L18>
               	vmovss	xmm1, dword ptr [rdi + rcx] # xmm1 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x8a8>
               	jmp	 <L16>
               	vmovss	xmm1, dword ptr [rdi + rcx + 0x8] # xmm1 = mem[0],zero,zero,zero
<L17>:
               	vmulss	xmm2, xmm1, dword ptr  <__libc_start_main+0x8a8>
               	vmulss	xmm2, xmm1, xmm2
<L14>:
               	vmulss	xmm1, xmm1, xmm2
<L15>:
               	vaddss	xmm0, xmm0, xmm1
               	lea	rsi, [rax + rcx + 0x28]
               	cmp	rsi, 0x1c
               	je	 <L19>
               	inc	r10
               	add	rcx, 0x28
               	movzx	esi, byte ptr [rdi + r10]
               	movsxd	rsi, dword ptr [rdx + 4*rsi]
               	add	rsi, rdx
               	jmp	rsi

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x3830>
               	test	rax, rax
               	je	 <L0>
               	call	rax
<L0>:
               	add	rsp, 0x8
               	ret

Disassembly of section .fini:

<_fini>:
               	endbr64
               	sub	rsp, 0x8
               	add	rsp, 0x8
               	ret

Disassembly of section .plt:

<.plt>:
               	push	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x8>
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x10>
               	nop	dword ptr [rax]

<__cxa_finalize@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x18>
               	push	0x0
               	jmp	 <.plt>

<_ZdaPv@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x20>
               	push	0x1
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>
