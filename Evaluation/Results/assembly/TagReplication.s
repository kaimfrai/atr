
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
               	call	qword ptr  <__libc_start_main+0x67f0>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6800>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6808>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x6810>
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
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
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

<initializer for module Meta.Auto.Simd.Cast>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW4Cast__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW4Cast__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
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

<initializer for module Meta.Auto.Simd.UInt32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
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

<initializer for module Meta.Auto.Simd.UInt8>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5UInt8__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5UInt8__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
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

<initializer for module Evaluation.Dependency.RandomAccessIteratorBase>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW24RandomAccessIteratorBase__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW24RandomAccessIteratorBase__in_chrg>
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

<initializer for module Evaluation.Dependency.TransformReduce>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW15TransformReduce__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW15TransformReduce__in_chrg>
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

<initializer for module Evaluation.Dependency.VerifyLoopSum>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW13VerifyLoopSum__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW13VerifyLoopSum__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	pop	rax
               	jmp	 <initializer for module Std>
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

<_GLOBAL__sub_I_TagReplication.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Evaluation.Dependency.RandomAccessIteratorBase>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
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
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3
               	int3

<main>:
               	push	rbp
               	mov	rbp, rsp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	and	rsp, -0x20
               	sub	rsp, 0x740
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	ebx, byte ptr [rcx]
               	add	ebx, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
<L1>:
               	lea	esi, [rbx + 4*rbx]
               	movsx	edx, dl
               	lea	ebx, [rdx + 2*rsi]
               	add	ebx, -0x30
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	ecx, byte ptr [rax]
               	add	ecx, -0x30
               	movzx	edx, byte ptr [rax + 0x1]
               	test	dl, dl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	ecx, [rcx + 4*rcx]
               	movsx	edx, dl
               	lea	ecx, [rdx + 2*rcx]
               	add	ecx, -0x30
               	movzx	edx, byte ptr [rax]
               	inc	rax
               	test	dl, dl
               	jne	 <L3>
<L2>:
               	mov	ecx, ecx
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x280], rcx
               	lea	rdi, [rcx + 8*rax]
               	mov	rsi, qword ptr  <__libc_start_main+0x6818>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x2c8], rbx
               	movsxd	rdx, ebx
               	movabs	rsi, -0x61c8864680b583eb
               	add	rsi, rdx
               	mov	rcx, rdx
               	shr	rcx, 0x1e
               	xor	rcx, rdx
               	movabs	r9, -0x40a7b892e31b1a47
               	imul	rcx, r9
               	mov	rdi, rcx
               	shr	rdi, 0x1b
               	xor	rdi, rcx
               	movabs	rcx, -0x6b2fb644ecceee15
               	imul	rdi, rcx
               	mov	r10, rdi
               	shr	r10, 0x1f
               	xor	r10, rdi
               	movabs	rdi, 0x3c6ef372fe94f82a
               	add	rdi, rdx
               	mov	r8, rsi
               	shr	r8, 0x1e
               	xor	r8, rsi
               	imul	r8, r9
               	mov	rsi, r8
               	shr	rsi, 0x1b
               	xor	rsi, r8
               	imul	rsi, rcx
               	mov	r8, rsi
               	shr	r8, 0x1f
               	xor	r8, rsi
               	movabs	rsi, -0x255992d382208bc1
               	add	rsi, rdx
               	mov	rdx, rdi
               	shr	rdx, 0x1e
               	xor	rdx, rdi
               	imul	rdx, r9
               	mov	rdi, rdx
               	shr	rdi, 0x1b
               	xor	rdi, rdx
               	imul	rdi, rcx
               	mov	r11, rdi
               	shr	r11, 0x1f
               	xor	r11, rdi
               	mov	rdx, rsi
               	shr	rdx, 0x1e
               	xor	rdx, rsi
               	imul	rdx, r9
               	mov	rsi, rdx
               	shr	rsi, 0x1b
               	xor	rsi, rdx
               	imul	rsi, rcx
               	mov	rcx, rsi
               	shr	rcx, 0x1f
               	xor	rcx, rsi
               	xor	edx, edx
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	rsi, rcx
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x2e8], r11
               	mov	rdi, r11
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x290], r8
               	mov	qword ptr [rsp + 0x258], r10
               	mov	r9, r10
               	xor	r10d, r10d
               	jmp	 <L4>
               	nop	dword ptr [rax + rax]
<L6>:
               	mov	rcx, r8
               	shl	rcx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L5>
<L4>:
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rdx
               	jae	 <L6>
               	xor	r10, r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L6>
<L5>:
               	movabs	r14, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop
<L9>:
               	mov	rdx, r8
               	shl	rdx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rdx
               	rol	rsi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L8>
<L7>:
               	bt	r14, rcx
               	jae	 <L9>
               	xor	r10, r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x1e8], r10
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	dword ptr [rax]
<L12>:
               	mov	r10, r8
               	shl	r10, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r10
               	rol	rsi, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L11>
<L10>:
               	bt	rcx, rdx
               	mov	r10, qword ptr [rsp + 0x1e8]
               	jae	 <L12>
               	xor	r10, r9
               	mov	qword ptr [rsp + 0x1e8], r10
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r10d, r10d
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
<L15>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L14>
<L13>:
               	bt	rdx, r10
               	jae	 <L15>
               	xor	qword ptr [rsp + 0x1e8], r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1e0], rsi
               	mov	rsi, r15
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	mov	rdi, r12
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x2a0], r8
               	mov	r8, r13
               	mov	r9, qword ptr [rsp + 0x1e8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1d0], r11
               	jmp	 <L16>
               	nop	dword ptr [rax]
<L18>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L17>
<L16>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L18>
<L17>:
               	xor	r10d, r10d
               	jmp	 <L19>
               	nop	word ptr [rax + rax]
<L21>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L20>
<L19>:
               	bt	r14, r10
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
<L24>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L23>
<L22>:
               	bt	rcx, r10
               	jae	 <L24>
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
<L27>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L26>
<L25>:
               	bt	rdx, r10
               	jae	 <L27>
               	xor	qword ptr [rsp + 0x1d0], r9
               	xor	qword ptr [rsp + 0x2a0], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1c8], rsi
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	mov	rdi, qword ptr [rsp + 0x1d8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x240], r8
               	mov	r8, qword ptr [rsp + 0x2a0]
               	mov	r9, qword ptr [rsp + 0x1d0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1b8], r11
               	jmp	 <L28>
               	nop	word ptr [rax + rax]
<L30>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L29>
<L28>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L30>
<L29>:
               	xor	r10d, r10d
               	jmp	 <L31>
               	nop	word ptr [rax + rax]
<L33>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L32>
<L31>:
               	bt	r14, r10
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L33>
<L32>:
               	xor	r10d, r10d
               	jmp	 <L34>
<L36>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L35>
<L34>:
               	bt	rcx, r10
               	jae	 <L36>
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L36>
<L35>:
               	xor	r10d, r10d
               	jmp	 <L37>
<L39>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L38>
<L37>:
               	bt	rdx, r10
               	jae	 <L39>
               	xor	qword ptr [rsp + 0x1b8], r9
               	xor	qword ptr [rsp + 0x240], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	xor	qword ptr [rsp + 0x1c8], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1b0], rsi
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x230], r8
               	mov	r8, qword ptr [rsp + 0x240]
               	mov	r9, qword ptr [rsp + 0x1b8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1a0], r11
               	jmp	 <L40>
               	nop	word ptr [rax + rax]
<L42>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L41>
<L40>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L42>
<L41>:
               	xor	r10d, r10d
               	jmp	 <L43>
               	nop	word ptr [rax + rax]
<L45>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L44>
<L43>:
               	bt	r14, r10
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L45>
<L44>:
               	xor	r10d, r10d
               	jmp	 <L46>
<L48>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L47>
<L46>:
               	bt	rcx, r10
               	jae	 <L48>
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L48>
<L47>:
               	xor	r10d, r10d
               	jmp	 <L49>
<L51>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L50>
<L49>:
               	bt	rdx, r10
               	jae	 <L51>
               	xor	qword ptr [rsp + 0x1a0], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	xor	qword ptr [rsp + 0x1b0], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x198], rsi
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x220], r8
               	mov	r8, qword ptr [rsp + 0x230]
               	mov	r9, qword ptr [rsp + 0x1a0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x188], r11
               	jmp	 <L52>
               	nop	word ptr [rax + rax]
<L54>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L53>
<L52>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x220], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L54>
<L53>:
               	xor	r10d, r10d
               	jmp	 <L55>
               	nop	word ptr [rax + rax]
<L57>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L56>
<L55>:
               	bt	r14, r10
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x220], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L57>
<L56>:
               	xor	r10d, r10d
               	jmp	 <L58>
<L60>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L59>
<L58>:
               	bt	rcx, r10
               	jae	 <L60>
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x220], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L60>
<L59>:
               	xor	r10d, r10d
               	jmp	 <L61>
<L63>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L62>
<L61>:
               	bt	rdx, r10
               	jae	 <L63>
               	xor	qword ptr [rsp + 0x188], r9
               	xor	qword ptr [rsp + 0x220], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	xor	qword ptr [rsp + 0x198], rsi
               	jmp	 <L63>
<L62>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x180], rsi
               	mov	rsi, qword ptr [rsp + 0x198]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	mov	rdi, qword ptr [rsp + 0x190]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x210], r8
               	mov	r8, qword ptr [rsp + 0x220]
               	mov	r9, qword ptr [rsp + 0x188]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x170], r11
               	jmp	 <L64>
               	nop	word ptr [rax + rax]
<L66>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L65>
<L64>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x210], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L66>
<L65>:
               	xor	r10d, r10d
               	jmp	 <L67>
               	nop	word ptr [rax + rax]
<L69>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L68>
<L67>:
               	bt	r14, r10
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x210], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L69>
<L68>:
               	xor	r10d, r10d
               	jmp	 <L70>
<L72>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L71>
<L70>:
               	bt	rcx, r10
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x210], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L72>
<L71>:
               	xor	r10d, r10d
               	jmp	 <L73>
<L75>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L74>
<L73>:
               	bt	rdx, r10
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x170], r9
               	xor	qword ptr [rsp + 0x210], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	xor	qword ptr [rsp + 0x180], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x168], rsi
               	mov	rsi, qword ptr [rsp + 0x180]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	mov	rdi, qword ptr [rsp + 0x178]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x200], r8
               	mov	r8, qword ptr [rsp + 0x210]
               	mov	r9, qword ptr [rsp + 0x170]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x158], r11
               	jmp	 <L76>
               	nop	word ptr [rax + rax]
<L78>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L77>
<L76>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L78>
<L77>:
               	xor	r10d, r10d
               	jmp	 <L79>
               	nop	word ptr [rax + rax]
<L81>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L80>
<L79>:
               	bt	r14, r10
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L81>
<L80>:
               	xor	r10d, r10d
               	jmp	 <L82>
<L84>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L83>
<L82>:
               	bt	rcx, r10
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L84>
<L83>:
               	xor	r10d, r10d
               	jmp	 <L85>
<L87>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L86>
<L85>:
               	bt	rdx, r10
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x158], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	xor	qword ptr [rsp + 0x168], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x150], rsi
               	mov	rsi, qword ptr [rsp + 0x168]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	mov	rdi, qword ptr [rsp + 0x160]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1f0], r8
               	mov	r8, qword ptr [rsp + 0x200]
               	mov	r9, qword ptr [rsp + 0x158]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x140], r11
               	jmp	 <L88>
               	nop	word ptr [rax + rax]
<L90>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L89>
<L88>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x1f0], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L90>
<L89>:
               	xor	r10d, r10d
               	jmp	 <L91>
               	nop	word ptr [rax + rax]
<L93>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L92>
<L91>:
               	bt	r14, r10
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x1f0], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L93>
<L92>:
               	xor	r10d, r10d
               	jmp	 <L94>
<L96>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L95>
<L94>:
               	bt	rcx, r10
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x1f0], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L96>
<L95>:
               	xor	r10d, r10d
               	jmp	 <L97>
<L99>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L98>
<L97>:
               	bt	rdx, r10
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x140], r9
               	xor	qword ptr [rsp + 0x1f0], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	xor	qword ptr [rsp + 0x150], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x138], rsi
               	mov	rsi, qword ptr [rsp + 0x150]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	mov	rdi, qword ptr [rsp + 0x148]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x260], r8
               	mov	r8, qword ptr [rsp + 0x1f0]
               	mov	r9, qword ptr [rsp + 0x140]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x128], r11
               	jmp	 <L100>
               	nop	word ptr [rax + rax]
<L102>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L101>
<L100>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L102>
<L101>:
               	xor	r10d, r10d
               	jmp	 <L103>
               	nop	word ptr [rax + rax]
<L105>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L104>
<L103>:
               	bt	r14, r10
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L105>
<L104>:
               	xor	r10d, r10d
               	jmp	 <L106>
<L108>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L107>
<L106>:
               	bt	rcx, r10
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L108>
<L107>:
               	xor	r10d, r10d
               	jmp	 <L109>
<L111>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L110>
<L109>:
               	bt	rdx, r10
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x128], r9
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	xor	qword ptr [rsp + 0x138], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x120], rsi
               	mov	rsi, qword ptr [rsp + 0x138]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	mov	rdi, qword ptr [rsp + 0x130]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], r8
               	mov	r8, qword ptr [rsp + 0x260]
               	mov	r9, qword ptr [rsp + 0x128]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x110], r11
               	jmp	 <L112>
               	nop	word ptr [rax + rax]
<L114>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L113>
<L112>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L114>
<L113>:
               	xor	r10d, r10d
               	jmp	 <L115>
               	nop	word ptr [rax + rax]
<L117>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L116>
<L115>:
               	bt	r14, r10
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L117>
<L116>:
               	xor	r10d, r10d
               	jmp	 <L118>
               	nop	dword ptr [rax]
<L120>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L119>
<L118>:
               	bt	rcx, r10
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L120>
<L119>:
               	xor	r10d, r10d
               	jmp	 <L121>
               	nop	dword ptr [rax]
<L123>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L122>
<L121>:
               	bt	rdx, r10
               	jae	 <L123>
               	xor	qword ptr [rsp + 0x110], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	xor	qword ptr [rsp + 0x120], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x108], rsi
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	mov	rdi, qword ptr [rsp + 0x118]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0x110]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xf8], r11
               	jmp	 <L124>
               	nop	word ptr cs:[rax + rax]
<L126>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L125>
<L124>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L126>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L126>
<L125>:
               	xor	r10d, r10d
               	jmp	 <L127>
               	nop	word ptr [rax + rax]
<L129>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L128>
<L127>:
               	bt	r14, r10
               	jae	 <L129>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L129>
<L128>:
               	xor	r10d, r10d
               	jmp	 <L130>
               	nop	dword ptr [rax]
<L132>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L131>
<L130>:
               	bt	rcx, r10
               	jae	 <L132>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L132>
<L131>:
               	xor	r10d, r10d
               	jmp	 <L133>
               	nop	dword ptr [rax]
<L135>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L134>
<L133>:
               	bt	rdx, r10
               	jae	 <L135>
               	xor	qword ptr [rsp + 0xf8], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	xor	qword ptr [rsp + 0x108], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xf0], rsi
               	mov	rsi, qword ptr [rsp + 0x108]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	mov	rdi, qword ptr [rsp + 0x100]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x38], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0xf8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xe0], r11
               	jmp	 <L136>
               	nop	word ptr cs:[rax + rax]
<L138>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L137>
<L136>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L138>
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L138>
<L137>:
               	xor	r10d, r10d
               	jmp	 <L139>
               	nop	word ptr [rax + rax]
<L141>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L140>
<L139>:
               	bt	r14, r10
               	jae	 <L141>
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L141>
<L140>:
               	xor	r10d, r10d
               	jmp	 <L142>
               	nop	dword ptr [rax]
<L144>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L143>
<L142>:
               	bt	rcx, r10
               	jae	 <L144>
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L144>
<L143>:
               	xor	r10d, r10d
               	jmp	 <L145>
               	nop	dword ptr [rax]
<L147>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L146>
<L145>:
               	bt	rdx, r10
               	jae	 <L147>
               	xor	qword ptr [rsp + 0xe0], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	xor	qword ptr [rsp + 0xf0], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xd8], rsi
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd0], rdi
               	mov	rdi, qword ptr [rsp + 0xe8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x30], r8
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	r9, qword ptr [rsp + 0xe0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xc8], r11
               	jmp	 <L148>
               	nop	word ptr cs:[rax + rax]
<L150>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L149>
<L148>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L150>
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
               	jmp	 <L150>
<L149>:
               	xor	r10d, r10d
               	jmp	 <L151>
               	nop	word ptr [rax + rax]
<L153>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L152>
<L151>:
               	bt	r14, r10
               	jae	 <L153>
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
               	jmp	 <L153>
<L152>:
               	xor	r10d, r10d
               	jmp	 <L154>
               	nop	dword ptr [rax]
<L156>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L155>
<L154>:
               	bt	rcx, r10
               	jae	 <L156>
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
               	jmp	 <L156>
<L155>:
               	xor	r10d, r10d
               	jmp	 <L157>
               	nop	dword ptr [rax]
<L159>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L158>
<L157>:
               	bt	rdx, r10
               	jae	 <L159>
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xc0], rsi
               	mov	rsi, qword ptr [rsp + 0xd8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], rdi
               	mov	rdi, qword ptr [rsp + 0xd0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x28], r8
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	r9, qword ptr [rsp + 0xc8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xb0], r11
               	jmp	 <L160>
               	nop	word ptr cs:[rax + rax]
<L162>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L161>
<L160>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L162>
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
               	jmp	 <L162>
<L161>:
               	xor	r10d, r10d
               	jmp	 <L163>
               	nop	word ptr [rax + rax]
<L165>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L164>
<L163>:
               	bt	r14, r10
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
               	jmp	 <L165>
<L164>:
               	xor	r10d, r10d
               	jmp	 <L166>
               	nop	dword ptr [rax]
<L168>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L167>
<L166>:
               	bt	rcx, r10
               	jae	 <L168>
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
               	jmp	 <L168>
<L167>:
               	xor	r10d, r10d
               	jmp	 <L169>
               	nop	dword ptr [rax]
<L171>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L170>
<L169>:
               	bt	rdx, r10
               	jae	 <L171>
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	xor	qword ptr [rsp + 0xc0], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xa8], rsi
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa0], rdi
               	mov	rdi, qword ptr [rsp + 0xb8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x20], r8
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0xb0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x98], r11
               	jmp	 <L172>
               	nop	word ptr cs:[rax + rax]
<L174>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L173>
<L172>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L174>
<L173>:
               	xor	r10d, r10d
               	jmp	 <L175>
               	nop	word ptr [rax + rax]
<L177>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L176>
<L175>:
               	bt	r14, r10
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L177>
<L176>:
               	xor	r10d, r10d
               	jmp	 <L178>
               	nop	dword ptr [rax]
<L180>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L179>
<L178>:
               	bt	rcx, r10
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L180>
<L179>:
               	xor	r10d, r10d
               	jmp	 <L181>
               	nop	dword ptr [rax]
<L183>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L182>
<L181>:
               	bt	rdx, r10
               	jae	 <L183>
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x90], rsi
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], rdi
               	mov	rdi, qword ptr [rsp + 0xa0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x18], r8
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x98]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x80], r11
               	jmp	 <L184>
               	nop	word ptr cs:[rax + rax]
<L186>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L185>
<L184>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L186>
<L185>:
               	xor	r10d, r10d
               	jmp	 <L187>
               	nop	word ptr [rax + rax]
<L189>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L188>
<L187>:
               	bt	r14, r10
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L189>
<L188>:
               	xor	r10d, r10d
               	jmp	 <L190>
               	nop	dword ptr [rax]
<L192>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L191>
<L190>:
               	bt	rcx, r10
               	jae	 <L192>
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L192>
<L191>:
               	xor	r10d, r10d
               	jmp	 <L193>
               	nop	dword ptr [rax]
<L195>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L194>
<L193>:
               	bt	rdx, r10
               	jae	 <L195>
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x90], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x78], rsi
               	mov	rsi, qword ptr [rsp + 0x90]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x70], rdi
               	mov	rdi, qword ptr [rsp + 0x88]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x10], r8
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	r9, qword ptr [rsp + 0x80]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x68], r11
               	jmp	 <L196>
               	nop	dword ptr [rax + rax]
<L198>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L197>
<L196>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x70], rdi
               	xor	qword ptr [rsp + 0x78], rsi
               	jmp	 <L198>
<L197>:
               	xor	r10d, r10d
               	jmp	 <L199>
               	nop
<L201>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L200>
<L199>:
               	bt	r14, r10
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x70], rdi
               	xor	qword ptr [rsp + 0x78], rsi
               	jmp	 <L201>
<L200>:
               	xor	r10d, r10d
               	jmp	 <L202>
               	nop	word ptr cs:[rax + rax]
<L204>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L203>
<L202>:
               	bt	rcx, r10
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x70], rdi
               	xor	qword ptr [rsp + 0x78], rsi
               	jmp	 <L204>
<L203>:
               	xor	r10d, r10d
               	jmp	 <L205>
               	nop	word ptr cs:[rax + rax]
<L207>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L206>
<L205>:
               	bt	rdx, r10
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x70], rdi
               	xor	qword ptr [rsp + 0x78], rsi
               	jmp	 <L207>
<L206>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x60], rsi
               	mov	rsi, qword ptr [rsp + 0x78]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x58], rdi
               	mov	rdi, qword ptr [rsp + 0x70]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x8], r8
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	r9, qword ptr [rsp + 0x68]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x50], r11
               	jmp	 <L208>
               	nop	word ptr cs:[rax + rax]
<L210>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L209>
<L208>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x58], rdi
               	xor	qword ptr [rsp + 0x60], rsi
               	jmp	 <L210>
<L209>:
               	xor	r10d, r10d
               	jmp	 <L211>
               	nop
<L213>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L212>
<L211>:
               	bt	r14, r10
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x58], rdi
               	xor	qword ptr [rsp + 0x60], rsi
               	jmp	 <L213>
<L212>:
               	xor	r10d, r10d
               	jmp	 <L214>
               	nop	word ptr cs:[rax + rax]
<L216>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, r10
               	jae	 <L216>
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x58], rdi
               	xor	qword ptr [rsp + 0x60], rsi
               	jmp	 <L216>
<L215>:
               	xor	r10d, r10d
               	jmp	 <L217>
               	nop	word ptr cs:[rax + rax]
<L219>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L218>
<L217>:
               	bt	rdx, r10
               	jae	 <L219>
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x58], rdi
               	xor	qword ptr [rsp + 0x60], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x288], r13
               	mov	qword ptr [rsp + 0x2d8], r12
               	mov	qword ptr [rsp + 0x2e0], r15
               	mov	qword ptr [rsp + 0x278], rax
               	xor	r10d, r10d
               	xor	r15d, r15d
               	mov	rsi, qword ptr [rsp + 0x60]
               	xor	r12d, r12d
               	mov	rdi, qword ptr [rsp + 0x58]
               	xor	r13d, r13d
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	r9, qword ptr [rsp + 0x50]
               	xor	ebx, ebx
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L220>
               	nop	dword ptr [rax]
<L222>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L221>
<L220>:
               	bt	rax, r10
               	jae	 <L222>
               	xor	rbx, r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	jmp	 <L223>
               	nop	dword ptr [rax]
<L225>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L224>
<L223>:
               	bt	r14, r10
               	jae	 <L225>
               	xor	rbx, r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	jmp	 <L226>
               	nop	dword ptr [rax + rax]
<L228>:
               	mov	r10, r8
               	shl	r10, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r10
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L227>
<L226>:
               	bt	rcx, rax
               	jae	 <L228>
               	xor	rbx, r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	jmp	 <L229>
               	nop	dword ptr [rax + rax]
<L231>:
               	mov	rcx, r8
               	shl	rcx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L230>
<L229>:
               	bt	rdx, rax
               	jae	 <L231>
               	xor	rbx, r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L231>
<L230>:
               	mov	rsi, qword ptr [rsp + 0x290]
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x360], rax
               	mov	rcx, qword ptr [rsp + 0x288]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x368], rcx
               	mov	rcx, qword ptr [rsp + 0x2a0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x240]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x370], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	rcx, qword ptr [rsp + 0x230]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x380], rcx
               	mov	rcx, qword ptr [rsp + 0x220]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	rcx, qword ptr [rsp + 0x210]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x200]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x390], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a0], rcx
               	mov	rcx, qword ptr [rsp + 0x260]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3a8], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x40]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3b0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3b8], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c0], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3c8], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x20]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3d0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3d8], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e0], rcx
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e8], rcx
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [4*r13]
               	add	rdx, r13
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x3f0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3f8], rcx
               	mov	rdi, qword ptr [rsp + 0x280]
               	test	rdi, rdi
               	je	 <L232>
               	lea	rcx, [8*rdi]
               	lea	rcx, [rcx + 4*rcx]
               	mov	r14, qword ptr [rsp + 0x278]
               	add	rcx, r14
               	mov	qword ptr [rsp], rcx
               	xor	esi, esi
               	vpbroadcastq	ymm5, qword ptr  <__libc_start_main+0x980>
               	vpbroadcastw	xmm6, word ptr  <__libc_start_main+0x9d8>
               	lea	r8,  <__libc_start_main+0x9dc>
               	mov	r9, r14
               	mov	r14, rbx
               	mov	r10, qword ptr [rsp + 0x258]
               	mov	rbx, qword ptr [rsp + 0x2d0]
               	vmovdqa	ymmword ptr [rsp + 0x700], ymm5
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L239>:
               	mov	rdx, qword ptr [rsp + 0x290]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2e8]
               	xor	rcx, r10
               	xor	rbx, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x290], rdx
               	xor	r10, rbx
               	mov	qword ptr [rsp + 0x258], r10
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x2d0], rbx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	r8, qword ptr [rsp + 0x288]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x2d8]
               	mov	r11, qword ptr [rsp + 0x1e8]
               	xor	rdx, r11
               	mov	rcx, qword ptr [rsp + 0x2e0]
               	xor	rcx, r8
               	xor	r8, rdx
               	mov	qword ptr [rsp + 0x288], r8
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x1e8], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x2d8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x2e0], rcx
               	mov	r8, qword ptr [rsp + 0x2a0]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1d8]
               	mov	rbx, qword ptr [rsp + 0x1d0]
               	xor	rdx, rbx
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	xor	rcx, r8
               	xor	r8, rdx
               	mov	qword ptr [rsp + 0x2a0], r8
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x1d0], rbx
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1d8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1e0], rcx
               	mov	r8, qword ptr [rsp + 0x240]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	rdx, qword ptr [rsp + 0x1b8]
               	xor	rcx, rdx
               	xor	rdi, r8
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x240], r8
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x1b8], rdx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x1c0], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x1c8], rdi
               	mov	rdi, qword ptr [rsp + 0x230]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1a8]
               	mov	rbx, qword ptr [rsp + 0x1a0]
               	xor	rdx, rbx
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x1a0], rbx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1b0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1a8], rdx
               	mov	rdi, qword ptr [rsp + 0x220]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x190]
               	mov	r8, qword ptr [rsp + 0x188]
               	xor	rdx, r8
               	mov	rcx, qword ptr [rsp + 0x198]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x220], rdi
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x188], r8
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x190], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x198], rcx
               	mov	rdi, qword ptr [rsp + 0x210]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x178]
               	mov	rcx, qword ptr [rsp + 0x170]
               	mov	qword ptr [rsp + 0x338], r9
               	mov	r9, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x180]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x210], rdi
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x170], r9
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x178], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x180], rcx
               	mov	rdi, qword ptr [rsp + 0x200]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x160]
               	mov	rcx, qword ptr [rsp + 0x158]
               	mov	qword ptr [rsp + 0x340], r12
               	mov	r12, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x168]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x200], rdi
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x158], r12
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x160], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x168], rcx
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x148]
               	mov	rcx, qword ptr [rsp + 0x140]
               	mov	qword ptr [rsp + 0x300], r13
               	mov	r13, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x150]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x1f0], rdi
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x140], r13
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x150], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x148], rdx
               	mov	r13, qword ptr [rsp + 0x260]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x130]
               	mov	rcx, qword ptr [rsp + 0x128]
               	mov	qword ptr [rsp + 0x2f0], r15
               	mov	r15, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x138]
               	xor	rcx, r13
               	xor	r13, rdx
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x128], r15
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x130], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x138], rcx
               	mov	r12, qword ptr [rsp + 0x48]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x118]
               	mov	rcx, qword ptr [rsp + 0x110]
               	mov	qword ptr [rsp + 0x298], r14
               	mov	r14, rcx
               	xor	rdx, rcx
               	mov	rcx, qword ptr [rsp + 0x120]
               	xor	rcx, r12
               	xor	r12, rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x110], r14
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x118], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x120], rcx
               	mov	r15, qword ptr [rsp + 0x40]
               	mov	qword ptr [rsp + 0x250], rsi
               	mov	rsi, r15
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x100]
               	mov	rax, qword ptr [rsp + 0xf8]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x108]
               	xor	rcx, r15
               	xor	r15, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x100], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x108], rcx
               	mov	r14, qword ptr [rsp + 0x38]
               	mov	rsi, r14
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xe8]
               	mov	rax, qword ptr [rsp + 0xe0]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rcx, r14
               	xor	r14, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xe0], rax
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf0], rcx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xe8], rdx
               	mov	rbx, qword ptr [rsp + 0x30]
               	mov	rsi, rbx
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xd0]
               	mov	rax, qword ptr [rsp + 0xc8]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xc8], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xd0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xd8], rcx
               	mov	r11, qword ptr [rsp + 0x28]
               	mov	rsi, r11
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xb8]
               	mov	rax, qword ptr [rsp + 0xb0]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xb8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xc0], rcx
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rsi, r10
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xa0]
               	mov	rax, qword ptr [rsp + 0x98]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xa8]
               	xor	rcx, r10
               	xor	r10, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x98], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xa0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xa8], rcx
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rsi, r9
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x88]
               	mov	rax, qword ptr [rsp + 0x80]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x90]
               	xor	rcx, r9
               	xor	r9, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x80], rax
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x90], rcx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x88], rdx
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	rsi, r8
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x70]
               	mov	rax, qword ptr [rsp + 0x68]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x78]
               	xor	rcx, r8
               	xor	r8, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x68], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x70], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x78], rcx
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	rsi, rdi
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rax, qword ptr [rsp + 0x50]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x60]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x50], rax
               	xor	rdx, rsi
               	mov	rsi, qword ptr [rsp + 0x250]
               	mov	qword ptr [rsp + 0x58], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x60], rcx
               	mov	rax, qword ptr [rsp + 0x300]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x298]
               	xor	qword ptr [rsp + 0x340], rcx
               	mov	rcx, qword ptr [rsp + 0x300]
               	xor	qword ptr [rsp + 0x2f0], rcx
               	mov	rcx, qword ptr [rsp + 0x300]
               	xor	rcx, qword ptr [rsp + 0x340]
               	mov	qword ptr [rsp + 0x300], rcx
               	xor	qword ptr [rsp + 0x340], rax
               	mov	rax, qword ptr [rsp + 0x290]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x288]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x2a0]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x360], rax
               	mov	qword ptr [rsp + 0x368], rcx
               	mov	rcx, qword ptr [rsp + 0x240]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x370], rdx
               	mov	rdx, qword ptr [rsp + 0x230]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	rcx, qword ptr [rsp + 0x220]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x380], rdx
               	mov	rdx, qword ptr [rsp + 0x210]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	rcx, qword ptr [rsp + 0x200]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x390], rdx
               	mov	rdx, qword ptr [rsp + 0x1f0]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	qword ptr [rsp + 0x260], r13
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	mov	r13, qword ptr [rsp + 0x300]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3a0], rdx
               	mov	qword ptr [rsp + 0x48], r12
               	lea	rdx, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x340]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3a8], rcx
               	mov	qword ptr [rsp + 0x40], r15
               	lea	rcx, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x2f0]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3b0], rdx
               	mov	qword ptr [rsp + 0x38], r14
               	lea	rdx, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x298]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3b8], rcx
               	mov	qword ptr [rsp + 0x30], rbx
               	lea	rcx, [rbx + 4*rbx]
               	mov	rbx, qword ptr [rsp + 0x2d0]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3c0], rdx
               	mov	qword ptr [rsp + 0x28], r11
               	lea	rdx, [r11 + 4*r11]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3c8], rcx
               	mov	qword ptr [rsp + 0x20], r10
               	lea	rcx, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x258]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3d0], rdx
               	mov	qword ptr [rsp + 0x18], r9
               	lea	rdx, [r9 + 4*r9]
               	mov	r9, qword ptr [rsp + 0x338]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x3d8], rcx
               	mov	qword ptr [rsp + 0x10], r8
               	lea	rcx, [r8 + 4*r8]
               	lea	r8,  <__libc_start_main+0x9dc>
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3e0], rdx
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3e8], rcx
               	mov	qword ptr [rsp + 0x8], rdi
               	lea	rcx, [rdi + 4*rdi]
               	mov	rdi, qword ptr [rsp + 0x280]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3f0], rcx
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x3f8], rcx
               	xor	r14, r15
               	rol	r15, 0x2d
               	add	r9, 0x28
               	cmp	rdi, rsi
               	je	 <L234>
<L233>:
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x368]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x388]
               	vpand	ymm0, ymm3, ymm5
               	vpand	ymm1, ymm2, ymm5
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm1, xmm0, xmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x3a8]
               	vpshufb	xmm0, xmm0, xmm6
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	movsxd	rax, dword ptr [r8 + 4*rax]
               	add	rax, r8
               	jmp	rax
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0x0
               	jmp	 <L235>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0xb
               	jmp	 <L236>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0x4
               	jmp	 <L237>
               	mov	qword ptr [rsp + 0x258], r10
               	mov	edi, 0x20
               	mov	qword ptr [rsp + 0x250], rsi
               	mov	rsi, qword ptr  <__libc_start_main+0x6818>
               	mov	qword ptr [rsp + 0x298], r14
               	mov	r14, r9
               	vmovdqa	ymmword ptr [rsp + 0x300], ymm2
               	vmovdqa	ymmword ptr [rsp + 0x340], ymm3
               	vmovdqa	xmmword ptr [rsp + 0x2f0], xmm1
               	vzeroupper
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vmovdqa	ymm3, ymmword ptr [rsp + 0x340]
               	vmovdqa	ymm2, ymmword ptr [rsp + 0x300]
               	mov	r9, r14
               	mov	r14, qword ptr [rsp + 0x298]
               	lea	r8,  <__libc_start_main+0x9dc>
               	vpbroadcastw	xmm6, word ptr  <__libc_start_main+0x9d8>
               	vmovdqa	ymm5, ymmword ptr [rsp + 0x700]
               	mov	rsi, qword ptr [rsp + 0x250]
               	mov	r10, qword ptr [rsp + 0x258]
               	mov	rdi, qword ptr [rsp + 0x280]
               	mov	qword ptr [r9], rax
               	mov	rcx, qword ptr [rsp]
               	mov	byte ptr [rcx + rsi], 0xc
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x2f0]
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [r9 + 0x8], ymm0
               	vmovups	ymm0, ymmword ptr [rsp + 0x3b8]
               	vmovups	ymm1, ymmword ptr [rsp + 0x3c8]
               	vinsertf128	ymm1, ymm1, xmmword ptr [rsp + 0x3e8], 0x1
               	vinsertf128	ymm0, ymm0, xmmword ptr [rsp + 0x3d8], 0x1
               	vshufps	ymm0, ymm0, ymm1, 0x88  # ymm0 = ymm0[0,2],ymm1[0,2],ymm0[4,6],ymm1[4,6]
               	vandps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0x9a0>
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax], ymm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0x9
               	jmp	 <L240>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0x2
               	jmp	 <L237>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0x3
               	jmp	 <L235>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0x7
               	jmp	 <L236>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0x1
<L237>:
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [r9], ymm1
               	vpextrb	eax, xmm0, 0x0
               	jmp	 <L241>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0x5
               	jmp	 <L235>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0x6
<L236>:
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [r9], ymm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [r9 + 0x20], xmm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0xa
<L240>:
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [r9], ymm1
               	vpextrb	eax, xmm0, 0x1
<L241>:
               	vcvtsi2ss	xmm0, xmm7, eax
               	vmovss	dword ptr [r9 + 0x20], xmm0
               	inc	rsi
               	test	sil, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	rax, qword ptr [rsp]
               	mov	byte ptr [rax + rsi], 0x8
<L235>:
               	vpmovzxbd	ymm0, xmm1      # ymm0 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [r9], ymm0
               	inc	rsi
               	test	sil, 0x7
               	je	 <L239>
<L238>:
               	vpblendd	ymm0, ymm3, ymm2, 0xc0  # ymm0 = ymm3[0,1,2,3,4,5],ymm2[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x360]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x3a0]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x3c0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x3e0]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x360], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x380], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3a0], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3c0], ymm0
               	vpsrlq	ymm0, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3e0], ymm0
               	vmovq	rax, xmm1
               	add	r9, 0x28
               	cmp	rdi, rsi
               	jne	 <L233>
<L234>:
               	test	rdi, rdi
               	mov	r15, qword ptr [rsp + 0x278]
               	je	 <L242>
               	mov	qword ptr [rsp + 0x250], rsi
               	vmovq	xmm0, qword ptr [rsp]
               	vmovq	xmm1, r15
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	mov	r12d, 0x1
               	xor	r13d, r13d
               	mov	eax, 0x1
               	jmp	 <L243>
               	nop	word ptr cs:[rax + rax]
<L245>:
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x2a0]
               	vpaddq	xmm0, xmm0, xmmword ptr  <__libc_start_main+0x990>
               	inc	r12d
               	popcnt	eax, r12d
               	vmovq	rcx, xmm0
               	mov	r13d, ebx
               	cmp	rcx, qword ptr [rsp]
               	je	 <L244>
<L243>:
               	mov	ebx, eax
               	vmovq	r14, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x2a0], xmm0
               	vpextrq	r15, xmm0, 0x1
               	movzx	esi, byte ptr [r15]
               	mov	rdi, r14
               	vzeroupper
               	call	 <Bodies3D::Body3DReference::ComputeVolume() const>
               	vmovdqa	xmmword ptr [rsp + 0x240], xmm0
               	lea	rdi, [r14 + 0x28]
               	movzx	esi, byte ptr [r15 + 0x1]
               	call	 <Bodies3D::Body3DReference::ComputeVolume() const>
               	vmovdqa	xmmword ptr [rsp + 0x230], xmm0
               	lea	rdi, [r14 + 0x50]
               	movzx	esi, byte ptr [r15 + 0x2]
               	call	 <Bodies3D::Body3DReference::ComputeVolume() const>
               	vmovdqa	xmmword ptr [rsp + 0x220], xmm0
               	lea	rdi, [r14 + 0x78]
               	movzx	esi, byte ptr [r15 + 0x3]
               	call	 <Bodies3D::Body3DReference::ComputeVolume() const>
               	vmovdqa	xmmword ptr [rsp + 0x210], xmm0
               	lea	rdi, [r14 + 0xa0]
               	movzx	esi, byte ptr [r15 + 0x4]
               	call	 <Bodies3D::Body3DReference::ComputeVolume() const>
               	vmovdqa	xmmword ptr [rsp + 0x200], xmm0
               	lea	rdi, [r14 + 0xc8]
               	movzx	esi, byte ptr [r15 + 0x5]
               	call	 <Bodies3D::Body3DReference::ComputeVolume() const>
               	vmovdqa	xmmword ptr [rsp + 0x1f0], xmm0
               	lea	rdi, [r14 + 0xf0]
               	movzx	esi, byte ptr [r15 + 0x6]
               	call	 <Bodies3D::Body3DReference::ComputeVolume() const>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	add	r14, 0x118
               	movzx	esi, byte ptr [r15 + 0x7]
               	mov	rdi, r14
               	call	 <Bodies3D::Body3DReference::ComputeVolume() const>
               	vmovaps	xmm1, xmmword ptr [rsp + 0x200]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x1f0], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x260], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm0, xmm1, xmm0, 0x30 # xmm0 = xmm1[0,1,2],xmm0[0]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x240]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x230], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x220], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x210], 0x30 # xmm1 = xmm1[0,1,2],mem[0]
               	movsxd	rcx, r13d
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x360], xmm1
               	vmovaps	xmmword ptr [rsp + rax + 0x370], xmm0
               	sub	ecx, ebx
               	jb	 <L245>
               	mov	eax, r13d
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x360]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L246>
               	lea	rsi, [rsp + 0x340]
               	add	rdx, rsi
               	xor	esi, esi
               	nop	word ptr [rax + rax]
<L247>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L247>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, ebx
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L245>
               	jmp	 <L248>
<L246>:
               	mov	rcx, rax
               	mov	edx, ebx
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L245>
<L248>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	lea	rsi, [rsp + 0x340]
               	add	rax, rsi
               	inc	rcx
               	nop	word ptr cs:[rax + rax]
<L249>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x40]
               	vmovaps	ymmword ptr [rax - 0x40], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x60]
               	vmovaps	ymmword ptr [rax - 0x60], ymm0
               	add	rax, -0x80
               	add	rcx, -0x4
               	cmp	rcx, rdx
               	jg	 <L249>
               	jmp	 <L245>
<L244>:
               	cmp	ebx, 0x2
               	mov	r15, qword ptr [rsp + 0x278]
               	mov	rsi, qword ptr [rsp + 0x250]
               	jb	 <L242>
               	mov	eax, ebx
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x340]
               	test	bl, 0x1
               	jne	 <L250>
               	dec	rax
               	lea	rdx, [rsp + 0x360]
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L250>:
               	cmp	ebx, 0x2
               	je	 <L242>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	lea	rdx, [rsp + 0x360]
               	add	rax, rdx
               	add	rax, -0x40
               	nop	word ptr [rax + rax]
<L251>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L251>
<L242>:
               	vmovaps	ymm0, ymmword ptr [rsp + 0x360]
               	vmovaps	ymmword ptr [rsp + 0x2a0], ymm0
               	test	esi, esi
               	je	 <L252>
               	dec	rsi
               	mov	rbx, -0x1
               	mov	r14, r15
               	jmp	 <L253>
               	nop	word ptr cs:[rax + rax]
<L255>:
               	add	r14, 0x28
               	inc	rbx
               	cmp	rsi, rbx
               	je	 <L254>
<L253>:
               	mov	rax, qword ptr [rsp]
               	cmp	byte ptr [rax + rbx + 0x1], 0xc
               	jne	 <L255>
               	mov	rdi, qword ptr [r14]
               	test	rdi, rdi
               	je	 <L255>
               	mov	r12, rsi
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	mov	rsi, r12
               	jmp	 <L255>
<L254>:
               	mov	rbx, qword ptr [rsp + 0x2c8]
               	jmp	 <L256>
<L232>:
               	vmovaps	ymm0, ymmword ptr [rsp + 0x360]
               	vmovaps	ymmword ptr [rsp + 0x2a0], ymm0
               	mov	r15, qword ptr [rsp + 0x278]
<L252>:
               	mov	rbx, qword ptr [rsp + 0x2c8]
               	test	r15, r15
               	je	 <L257>
<L256>:
               	mov	rdi, r15
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L257>:
               	cmp	ebx, 0x2a
               	jne	 <L258>
               	cmp	dword ptr [rsp + 0x280], 0x186a0
               	jne	 <L258>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x2a0]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0x9d0>
               	jne	 <L259>
<L258>:
               	xor	eax, eax
               	lea	rsp, [rbp - 0x28]
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L259>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x2a0], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x2a0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x6820>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
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

<Bodies3D::Body3DReference::ComputeVolume() const>:
               	movzx	eax, sil
               	lea	rcx,  <__libc_start_main+0xa10>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9c4>
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9d4>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9cc>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x9d4>
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9c4>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9c8>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9c4>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9c0>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	ret
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x9d4>
               	vmulss	xmm0, xmm1, xmm0
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x67f8>
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

<__cxa_throw@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>

<__cxa_allocate_exception@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	push	0x3
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>
