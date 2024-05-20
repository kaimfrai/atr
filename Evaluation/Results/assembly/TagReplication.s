
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
               	call	qword ptr  <memset+0x6890>
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
               	mov	rax, qword ptr  <memset+0x68a0>
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
               	mov	rax, qword ptr  <memset+0x68a8>
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
               	cmp	qword ptr , 0x0 <memset+0x68b0>
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
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.Int32>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Float>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Float__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Float__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Int32>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.UInt64>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.UInt64>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW6UInt64__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW6UInt64__in_chrg>
               	call	 <initializer for module Meta.Auto.Array.Bounded>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Array.Bounded>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
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

<initializer for module Meta.Generic.RandomAccessIteratorBase>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW7GenericW24RandomAccessIteratorBase__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW7GenericW24RandomAccessIteratorBase__in_chrg>
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

<_GLOBAL__sub_I_TagReplication.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
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
               	call	 <initializer for module Meta.Generic.RandomAccessIteratorBase>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x3f8
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	ebx, byte ptr [rcx]
               	add	ebx, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	dword ptr [rax + rax]
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
               	movsx	r12d, byte ptr [rax]
               	add	r12d, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	word ptr [rax + rax]
<L3>:
               	lea	edx, [r12 + 4*r12]
               	movsx	ecx, cl
               	lea	r12d, [rcx + 2*rdx]
               	add	r12d, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	mov	ecx, r12d
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x268], rcx
               	lea	rdi, [rcx + 8*rax]
               	mov	rsi, qword ptr  <memset+0x68b8>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x228], rax
               	movsxd	rdx, ebx
               	movabs	rsi, -0x61c8864680b583eb
               	add	rsi, rdx
               	mov	rcx, rdx
               	shr	rcx, 0x1e
               	xor	rcx, rdx
               	movabs	rax, -0x40a7b892e31b1a47
               	imul	rcx, rax
               	mov	rdi, rcx
               	shr	rdi, 0x1b
               	xor	rdi, rcx
               	movabs	rcx, -0x6b2fb644ecceee15
               	imul	rdi, rcx
               	mov	r9, rdi
               	shr	r9, 0x1f
               	xor	r9, rdi
               	movabs	rdi, 0x3c6ef372fe94f82a
               	add	rdi, rdx
               	mov	r8, rsi
               	shr	r8, 0x1e
               	xor	r8, rsi
               	imul	r8, rax
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
               	imul	rdx, rax
               	mov	rdi, rdx
               	shr	rdi, 0x1b
               	xor	rdi, rdx
               	imul	rdi, rcx
               	mov	r10, rdi
               	shr	r10, 0x1f
               	xor	r10, rdi
               	mov	rdx, rsi
               	shr	rdx, 0x1e
               	xor	rdx, rsi
               	imul	rdx, rax
               	mov	rax, rdx
               	shr	rax, 0x1b
               	xor	rax, rdx
               	imul	rax, rcx
               	mov	rsi, rax
               	shr	rsi, 0x1f
               	xor	rsi, rax
               	xor	eax, eax
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x238], rsi
               	xor	ebp, ebp
               	mov	qword ptr [rsp + 0x240], r10
               	mov	rdi, r10
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x260], r8
               	mov	qword ptr [rsp + 0x330], r9
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
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L5>
<L4>:
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rax
               	jae	 <L6>
               	xor	r10, r9
               	xor	r14, r8
               	xor	rbp, rdi
               	xor	r15, rsi
               	jmp	 <L6>
<L5>:
               	movabs	rax, -0x2a59ed990f36c6d4
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
               	bt	rax, rcx
               	jae	 <L9>
               	xor	r10, r9
               	xor	r14, r8
               	xor	rbp, rdi
               	xor	r15, rsi
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x248], r10
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
               	jae	 <L12>
               	mov	r10, r14
               	xor	qword ptr [rsp + 0x248], r9
               	xor	r10, r8
               	mov	r14, r10
               	xor	rbp, rdi
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
               	xor	qword ptr [rsp + 0x248], r9
               	xor	r14, r8
               	xor	rbp, rdi
               	xor	r15, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x218], rsi
               	mov	rsi, r15
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x210], rdi
               	mov	rdi, rbp
               	xor	r8d, r8d
               	mov	qword ptr [rsp], r8
               	mov	r8, r14
               	mov	r9, qword ptr [rsp + 0x248]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x208], r11
               	jmp	 <L16>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
               	jmp	 <L18>
<L17>:
               	xor	r10d, r10d
               	jmp	 <L19>
               	nop	word ptr cs:[rax + rax]
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
               	bt	rax, r10
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x200], rsi
               	mov	rsi, qword ptr [rsp + 0x218]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f8], rdi
               	mov	rdi, qword ptr [rsp + 0x210]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x30], r8
               	mov	r8, qword ptr [rsp]
               	mov	r9, qword ptr [rsp + 0x208]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1f0], r11
               	jmp	 <L28>
               	nop
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
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
               	bt	rax, r10
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
               	jmp	 <L33>
<L32>:
               	xor	r10d, r10d
               	jmp	 <L34>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
               	jmp	 <L36>
<L35>:
               	xor	r10d, r10d
               	jmp	 <L37>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1e8], rsi
               	mov	rsi, qword ptr [rsp + 0x200]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	mov	rdi, qword ptr [rsp + 0x1f8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x28], r8
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	r9, qword ptr [rsp + 0x1f0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1d8], r11
               	jmp	 <L40>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
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
               	bt	rax, r10
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
               	jmp	 <L45>
<L44>:
               	xor	r10d, r10d
               	jmp	 <L46>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
               	jmp	 <L48>
<L47>:
               	xor	r10d, r10d
               	jmp	 <L49>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1d0], rsi
               	mov	rsi, qword ptr [rsp + 0x1e8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], rdi
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x20], r8
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x1d8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1c0], r11
               	jmp	 <L52>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
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
               	bt	rax, r10
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
               	jmp	 <L57>
<L56>:
               	xor	r10d, r10d
               	jmp	 <L58>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
               	jmp	 <L60>
<L59>:
               	xor	r10d, r10d
               	jmp	 <L61>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
               	jmp	 <L63>
<L62>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1b8], rsi
               	mov	rsi, qword ptr [rsp + 0x1d0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b0], rdi
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x18], r8
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x1c0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1a8], r11
               	jmp	 <L64>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1a8], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	xor	qword ptr [rsp + 0x1b8], rsi
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
               	bt	rax, r10
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x1a8], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	xor	qword ptr [rsp + 0x1b8], rsi
               	jmp	 <L69>
<L68>:
               	xor	r10d, r10d
               	jmp	 <L70>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1a8], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	xor	qword ptr [rsp + 0x1b8], rsi
               	jmp	 <L72>
<L71>:
               	xor	r10d, r10d
               	jmp	 <L73>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1a8], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	xor	qword ptr [rsp + 0x1b8], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1a0], rsi
               	mov	rsi, qword ptr [rsp + 0x1b8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x198], rdi
               	mov	rdi, qword ptr [rsp + 0x1b0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x10], r8
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	r9, qword ptr [rsp + 0x1a8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x190], r11
               	jmp	 <L76>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x190], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	xor	qword ptr [rsp + 0x1a0], rsi
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
               	bt	rax, r10
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x190], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	xor	qword ptr [rsp + 0x1a0], rsi
               	jmp	 <L81>
<L80>:
               	xor	r10d, r10d
               	jmp	 <L82>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x190], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	xor	qword ptr [rsp + 0x1a0], rsi
               	jmp	 <L84>
<L83>:
               	xor	r10d, r10d
               	jmp	 <L85>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x190], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	xor	qword ptr [rsp + 0x1a0], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x188], rsi
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x180], rdi
               	mov	rdi, qword ptr [rsp + 0x198]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x8], r8
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	r9, qword ptr [rsp + 0x190]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x178], r11
               	jmp	 <L88>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	xor	qword ptr [rsp + 0x188], rsi
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
               	bt	rax, r10
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	xor	qword ptr [rsp + 0x188], rsi
               	jmp	 <L93>
<L92>:
               	xor	r10d, r10d
               	jmp	 <L94>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	xor	qword ptr [rsp + 0x188], rsi
               	jmp	 <L96>
<L95>:
               	xor	r10d, r10d
               	jmp	 <L97>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	xor	qword ptr [rsp + 0x188], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x170], rsi
               	mov	rsi, qword ptr [rsp + 0x188]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], rdi
               	mov	rdi, qword ptr [rsp + 0x180]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x80], r8
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	r9, qword ptr [rsp + 0x178]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x160], r11
               	jmp	 <L100>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
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
               	bt	rax, r10
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x158], rsi
               	mov	rsi, qword ptr [rsp + 0x170]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	mov	rdi, qword ptr [rsp + 0x168]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	r9, qword ptr [rsp + 0x160]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x148], r11
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
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
               	bt	rax, r10
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x140], rsi
               	mov	rsi, qword ptr [rsp + 0x158]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	mov	rdi, qword ptr [rsp + 0x150]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	r9, qword ptr [rsp + 0x148]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x130], r11
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
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
               	bt	rax, r10
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x128], rsi
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	mov	rdi, qword ptr [rsp + 0x138]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0x130]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x118], r11
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
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
               	bt	rax, r10
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x110], rsi
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	mov	rdi, qword ptr [rsp + 0x120]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r9, qword ptr [rsp + 0x118]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x100], r11
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	bt	rax, r10
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xf8], rsi
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	mov	rdi, qword ptr [rsp + 0x108]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x58], r8
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0x100]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xe8], r11
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
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
               	bt	rax, r10
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xe0], rsi
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	mov	rdi, qword ptr [rsp + 0xf0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	r9, qword ptr [rsp + 0xe8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xd0], r11
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
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
               	bt	rax, r10
               	jae	 <L177>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xc8], rsi
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	mov	rdi, qword ptr [rsp + 0xd8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], r8
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	r9, qword ptr [rsp + 0xd0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xb8], r11
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
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
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
               	bt	rax, r10
               	jae	 <L189>
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
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
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
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
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xb0], rsi
               	mov	rsi, qword ptr [rsp + 0xc8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	mov	rdi, qword ptr [rsp + 0xc0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0xb8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xa0], r11
               	jmp	 <L196>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L198>
<L197>:
               	xor	r10d, r10d
               	jmp	 <L199>
               	nop	word ptr [rax + rax]
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
               	bt	rax, r10
               	jae	 <L201>
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L201>
<L200>:
               	xor	r10d, r10d
               	jmp	 <L202>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L204>
<L203>:
               	xor	r10d, r10d
               	jmp	 <L205>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	xor	qword ptr [rsp + 0xb0], rsi
               	jmp	 <L207>
<L206>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x98], rsi
               	mov	rsi, qword ptr [rsp + 0xb0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x90], rdi
               	mov	rdi, qword ptr [rsp + 0xa8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x38], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0xa0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x88], r11
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
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x90], rdi
               	xor	qword ptr [rsp + 0x98], rsi
               	jmp	 <L210>
<L209>:
               	xor	r10d, r10d
               	jmp	 <L211>
               	nop	word ptr [rax + rax]
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
               	bt	rax, r10
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x90], rdi
               	xor	qword ptr [rsp + 0x98], rsi
               	jmp	 <L213>
<L212>:
               	xor	r10d, r10d
               	jmp	 <L214>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x90], rdi
               	xor	qword ptr [rsp + 0x98], rsi
               	jmp	 <L216>
<L215>:
               	xor	r10d, r10d
               	jmp	 <L217>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x90], rdi
               	xor	qword ptr [rsp + 0x98], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x318], rbp
               	mov	qword ptr [rsp + 0x320], r15
               	mov	qword ptr [rsp + 0x328], rbx
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, qword ptr [rsp + 0x98]
               	xor	r15d, r15d
               	mov	rdi, qword ptr [rsp + 0x90]
               	xor	ebp, ebp
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	r9, qword ptr [rsp + 0x88]
               	xor	r13d, r13d
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
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L222>
               	xor	r13, r9
               	xor	rbp, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
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
               	bt	rax, r10
               	jae	 <L225>
               	xor	r13, r9
               	xor	rbp, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	mov	r11, r13
               	jmp	 <L226>
               	nop
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
               	xor	r11, r9
               	xor	rbp, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x258], r14
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
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
               	xor	r11, r9
               	xor	rbp, r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L231>
<L230>:
               	mov	rdx, qword ptr [rsp + 0x260]
               	lea	rax, [rdx + 4*rdx]
               	rol	rax, 0x7
               	lea	r14, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x270], r14
               	mov	rax, qword ptr [rsp + 0x258]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x278], rax
               	mov	rax, qword ptr [rsp]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x280], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x290], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x298], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2a0], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a8], rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b0], rax
               	mov	rax, qword ptr [rsp + 0x80]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b8], rax
               	mov	rax, qword ptr [rsp + 0x78]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x70]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2c0], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rax
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2d0], rax
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2d8], rax
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2e0], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e8], rax
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f0], rax
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f8], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [4*rbp]
               	add	rcx, rbp
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x300], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x308], rax
               	test	r12d, r12d
               	je	 <L232>
               	mov	qword ptr [rsp + 0x310], r12
               	mov	rcx, qword ptr [rsp + 0x268]
               	lea	rax, [8*rcx]
               	lea	rax, [rax + 4*rax]
               	mov	r12, qword ptr [rsp + 0x228]
               	mov	rsi, r12
               	add	rsi, rax
               	neg	rcx
               	mov	qword ptr [rsp + 0x268], rcx
               	mov	r8d, 0x1
               	vbroadcastss	ymm5, dword ptr  <memset+0xa10>
               	vmovdqa	xmm6, xmmword ptr  <memset+0xa30>
               	lea	rdi,  <memset+0xa40>
               	mov	r9, r12
               	mov	r13, qword ptr [rsp + 0x330]
               	mov	r10, qword ptr [rsp + 0x240]
               	mov	r12, qword ptr [rsp + 0x238]
               	mov	qword ptr [rsp + 0x250], rsi
               	vmovups	ymmword ptr [rsp + 0x3b0], ymm5
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L235>:
               	vpermpd	ymm0, ymm2, 0x93        # ymm0 = ymm2[3,0,1,2]
               	vpermq	ymm1, ymm3, 0x39        # ymm1 = ymm3[1,2,3,0]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x270]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x2b0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x2f0]
               	vpsrlq	ymm2, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x270], ymm2
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x290], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm0
               	vpsrlq	ymm0, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm0
               	vpsrlq	ymm0, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2f0], ymm0
               	vmovq	r14, xmm2
<L238>:
               	add	r9, 0x28
               	mov	rax, qword ptr [rsp + 0x268]
               	add	rax, r8
               	inc	rax
               	inc	r8
               	cmp	rax, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2b8]
               	vpshufb	xmm0, xmm0, xmm6
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x2e8]
               	vmovups	ymm2, ymmword ptr [rsp + 0x298]
               	vperm2f128	ymm3, ymm2, ymmword ptr [rsp + 0x278], 0x2 # ymm3 = mem[0,1],ymm2[0,1]
               	vmovups	ymm4, ymmword ptr [rsp + 0x288]
               	vinsertf128	ymm4, ymm4, xmmword ptr [rsp + 0x2a8], 0x1
               	vshufps	ymm3, ymm3, ymm4, 0x88  # ymm3 = ymm3[0,2],ymm4[0,2],ymm3[4,6],ymm4[4,6]
               	vandps	ymm3, ymm3, ymm5
               	vcvtdq2ps	ymm4, ymm3
               	vcvtdq2ps	xmm0, xmm0
               	movzx	eax, r14b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	vblendps	ymm2, ymm2, ymmword ptr [rsp + 0x278], 0xc0 # ymm2 = ymm2[0,1,2,3,4,5],mem[6,7]
               	vpblendd	ymm3, ymm1, ymmword ptr [rsp + 0x2c8], 0xfc # ymm3 = ymm1[0,1],mem[2,3,4,5,6,7]
               	sub	r14b, al
               	movzx	eax, r14b
               	movsxd	rax, dword ptr [rdi + 4*rax]
               	add	rax, rdi
               	jmp	rax
               	vmovups	ymmword ptr [r9], ymm4
               	mov	byte ptr [rsi + r8 - 0x1], r14b
               	test	r8b, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	vmovups	ymmword ptr [r9], ymm4
               	vmovss	dword ptr [r9 + 0x20], xmm0
               	mov	byte ptr [rsi + r8 - 0x1], r14b
               	test	r8b, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	nop
               	vmovups	ymmword ptr [r9], ymm4
               	vmovlps	qword ptr [r9 + 0x20], xmm0
               	mov	byte ptr [rsi + r8 - 0x1], r14b
               	test	r8b, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	vmovups	ymmword ptr [r9], ymm4
               	vextractps	dword ptr [r9 + 0x20], xmm0, 0x1
               	mov	byte ptr [rsi + r8 - 0x1], r14b
               	test	r8b, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	vmovups	ymmword ptr [rsp + 0x330], ymm4
               	vmovdqu	ymmword ptr [rsp + 0x350], ymm3
               	vmovups	ymmword ptr [rsp + 0x370], ymm2
               	mov	qword ptr [rsp + 0x220], r14
               	mov	rax, r12
               	mov	r12, r9
               	mov	qword ptr [rsp + 0x230], r8
               	mov	r14, r11
               	mov	qword ptr [rsp + 0x238], rax
               	mov	qword ptr [rsp + 0x240], r10
               	vperm2i128	ymm0, ymm1, ymmword ptr [rsp + 0x2c8], 0x2 # ymm0 = mem[0,1],ymm1[0,1]
               	vmovdqu	ymmword ptr [rsp + 0x390], ymm0
               	vmovups	ymm0, ymmword ptr [rsp + 0x2d8]
               	vinsertf128	ymm0, ymm0, xmmword ptr [rsp + 0x2f8], 0x1
               	vmovups	ymmword ptr [rsp + 0x3d0], ymm0
               	mov	edi, 0x20
               	mov	rsi, qword ptr  <memset+0x68b8>
               	vzeroupper
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vmovups	ymm5, ymmword ptr [rsp + 0x3b0]
               	test	rax, rax
               	je	 <L237>
               	vmovups	ymm0, ymmword ptr [rsp + 0x390]
               	vshufps	ymm0, ymm0, ymmword ptr [rsp + 0x3d0], 0x88 # ymm0 = ymm0[0,2],mem[0,2],ymm0[4,6],mem[4,6]
               	vandps	ymm0, ymm0, ymm5
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax], ymm0
<L237>:
               	mov	r9, r12
               	mov	qword ptr [r12], rax
               	vmovups	ymm0, ymmword ptr [rsp + 0x330]
               	vmovups	ymmword ptr [r12 + 0x8], ymm0
               	mov	r10, qword ptr [rsp + 0x240]
               	mov	r12, qword ptr [rsp + 0x238]
               	mov	r11, r14
               	mov	rsi, qword ptr [rsp + 0x250]
               	mov	r8, qword ptr [rsp + 0x230]
               	vmovdqa	xmm6, xmmword ptr  <memset+0xa30>
               	lea	rdi,  <memset+0xa40>
               	mov	r14, qword ptr [rsp + 0x220]
               	vmovups	ymm2, ymmword ptr [rsp + 0x370]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x350]
               	mov	byte ptr [rsi + r8 - 0x1], r14b
               	test	r8b, 0x7
               	jne	 <L235>
               	nop	word ptr [rax + rax]
<L236>:
               	mov	rcx, qword ptr [rsp + 0x260]
               	mov	rax, rcx
               	shl	rax, 0x11
               	xor	r10, r13
               	xor	r12, rcx
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x260], rcx
               	xor	r13, r12
               	mov	qword ptr [rsp + 0x330], r13
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x238], r12
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x240], r10
               	mov	rdx, qword ptr [rsp + 0x258]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	qword ptr [rsp + 0x390], r9
               	mov	r9, qword ptr [rsp + 0x318]
               	mov	qword ptr [rsp + 0x350], r11
               	mov	r11, qword ptr [rsp + 0x248]
               	xor	r9, r11
               	mov	rcx, qword ptr [rsp + 0x320]
               	xor	rcx, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x258], rdx
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x248], r11
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x318], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x320], rcx
               	mov	rdx, qword ptr [rsp]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x210]
               	mov	r14, qword ptr [rsp + 0x208]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x218]
               	xor	rcx, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp], rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x208], r14
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x210], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x218], rcx
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x1f8]
               	mov	r14, qword ptr [rsp + 0x1f0]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x200]
               	xor	rcx, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x30], rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x1f0], r14
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x1f8], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x200], rcx
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x1e0]
               	mov	r14, qword ptr [rsp + 0x1d8]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x1e8]
               	xor	rcx, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x28], rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x1d8], r14
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1e8], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x1e0], r9
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x1c8]
               	mov	r14, qword ptr [rsp + 0x1c0]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	xor	rcx, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x20], rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x1c0], r14
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x1c8], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1d0], rcx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x1b0]
               	mov	r14, qword ptr [rsp + 0x1a8]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	xor	rcx, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x18], rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x1a8], r14
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x1b0], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1b8], rcx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x198]
               	mov	r14, qword ptr [rsp + 0x190]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	xor	rcx, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x10], rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x190], r14
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x198], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1a0], rcx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x180]
               	mov	r14, qword ptr [rsp + 0x178]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x188]
               	xor	rcx, rdx
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x8], rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x178], r14
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x188], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x180], r9
               	mov	qword ptr [rsp + 0x370], rbx
               	mov	r13, qword ptr [rsp + 0x80]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x168]
               	mov	r14, qword ptr [rsp + 0x160]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x170]
               	xor	rcx, r13
               	xor	r13, r9
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x160], r14
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x168], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x170], rcx
               	mov	qword ptr [rsp + 0x220], rbp
               	mov	rbp, qword ptr [rsp + 0x78]
               	mov	rax, rbp
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x150]
               	mov	r14, qword ptr [rsp + 0x148]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x158]
               	xor	rcx, rbp
               	xor	rbp, r9
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x148], r14
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x150], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x158], rcx
               	mov	rbx, r15
               	mov	r15, qword ptr [rsp + 0x70]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x138]
               	mov	r14, qword ptr [rsp + 0x130]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x140]
               	xor	rcx, r15
               	xor	r15, r9
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x130], r14
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x138], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x140], rcx
               	mov	r12, qword ptr [rsp + 0x68]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x120]
               	mov	r14, qword ptr [rsp + 0x118]
               	xor	r9, r14
               	mov	rcx, qword ptr [rsp + 0x128]
               	xor	rcx, r12
               	xor	r12, r9
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x118], r14
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x128], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x120], r9
               	mov	r14, qword ptr [rsp + 0x60]
               	mov	rdx, r14
               	shl	rdx, 0x11
               	mov	r9, qword ptr [rsp + 0x108]
               	mov	rax, qword ptr [rsp + 0x100]
               	xor	r9, rax
               	mov	rcx, qword ptr [rsp + 0x110]
               	xor	rcx, r14
               	xor	r14, r9
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x100], rax
               	xor	r9, rdx
               	mov	qword ptr [rsp + 0x108], r9
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x110], rcx
               	mov	r11, qword ptr [rsp + 0x58]
               	mov	rsi, r11
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xf0]
               	mov	rax, qword ptr [rsp + 0xe8]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xf8]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xe8], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xf0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf8], rcx
               	mov	r10, qword ptr [rsp + 0x50]
               	mov	rsi, r10
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xd8]
               	mov	rax, qword ptr [rsp + 0xd0]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xe0]
               	xor	rcx, r10
               	xor	r10, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xd8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xe0], rcx
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	rsi, r9
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xc0]
               	mov	rax, qword ptr [rsp + 0xb8]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	rcx, r9
               	xor	r9, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xb8], rax
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xc8], rcx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xc0], rdx
               	mov	qword ptr [rsp + 0x230], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	rsi, r8
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xa8]
               	mov	rax, qword ptr [rsp + 0xa0]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, r8
               	xor	r8, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xa0], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xa8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	rdi, qword ptr [rsp + 0x38]
               	mov	rsi, rdi
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x90]
               	mov	rax, qword ptr [rsp + 0x88]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x98]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x88], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x90], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x98], rcx
               	mov	rax, qword ptr [rsp + 0x220]
               	shl	rax, 0x11
               	xor	rbx, qword ptr [rsp + 0x350]
               	mov	rcx, qword ptr [rsp + 0x220]
               	xor	qword ptr [rsp + 0x370], rcx
               	xor	qword ptr [rsp + 0x220], rbx
               	xor	rbx, rax
               	mov	rax, qword ptr [rsp + 0x260]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rdx, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x258]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x270], rdx
               	mov	qword ptr [rsp + 0x278], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x280], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x290], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x298], rax
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a0], rcx
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a8], rax
               	mov	qword ptr [rsp + 0x80], r13
               	lea	rax, [4*r13]
               	add	rax, r13
               	mov	r13, qword ptr [rsp + 0x330]
               	mov	rsi, qword ptr [rsp + 0x370]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2b0], rcx
               	mov	qword ptr [rsp + 0x78], rbp
               	lea	rcx, [4*rbp]
               	add	rcx, rbp
               	mov	rbp, qword ptr [rsp + 0x220]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rax
               	mov	qword ptr [rsp + 0x70], r15
               	lea	rax, [r15 + 4*r15]
               	mov	r15, rbx
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c0], rcx
               	mov	qword ptr [rsp + 0x68], r12
               	lea	rcx, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x238]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rax
               	mov	qword ptr [rsp + 0x60], r14
               	lea	rax, [r14 + 4*r14]
               	mov	r14, rdx
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	qword ptr [rsp + 0x58], r11
               	lea	rcx, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x350]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rax
               	mov	qword ptr [rsp + 0x50], r10
               	lea	rax, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x240]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e0], rcx
               	mov	qword ptr [rsp + 0x48], r9
               	lea	rcx, [r9 + 4*r9]
               	mov	r9, qword ptr [rsp + 0x390]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e8], rax
               	mov	qword ptr [rsp + 0x40], r8
               	lea	rax, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x230]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2f0], rcx
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f8], rax
               	mov	qword ptr [rsp + 0x38], rdi
               	lea	rax, [rdi + 4*rdi]
               	lea	rdi,  <memset+0xa40>
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x300], rax
               	lea	rax, [4*rbp]
               	add	rax, rbp
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x308], rax
               	xor	r11, rsi
               	rol	rsi, 0x2d
               	mov	rbx, rsi
               	mov	rsi, qword ptr [rsp + 0x250]
               	jmp	 <L238>
<L234>:
               	mov	r12, qword ptr [rsp + 0x310]
               	test	r12d, r12d
               	je	 <L239>
               	mov	qword ptr [rsp + 0x230], r8
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x290], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x270], ymm0
               	lea	r15,  <memset+0xa74>
               	vmovss	xmm4, dword ptr  <memset+0xa18>
               	vxorps	xmm5, xmm5, xmm5
               	vmovss	xmm6, dword ptr  <memset+0xa20>
               	vmovss	xmm7, dword ptr  <memset+0xa1c>
               	vmovss	xmm8, dword ptr  <memset+0xa28>
               	vmovss	xmm9, dword ptr  <memset+0xa14>
               	mov	ebp, r12d
               	mov	rax, qword ptr [rsp + 0x228]
               	mov	rcx, rsi
               	jmp	 <L240>
               	nop	dword ptr [rax]
<L253>:
               	mov	eax, esi
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x270]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovss	xmm9, dword ptr  <memset+0xa14>
               	vmovss	xmm8, dword ptr  <memset+0xa28>
               	vmovss	xmm7, dword ptr  <memset+0xa1c>
               	vmovss	xmm6, dword ptr  <memset+0xa20>
               	vxorps	xmm5, xmm5, xmm5
               	vmovss	xmm4, dword ptr  <memset+0xa18>
               	mov	rax, r12
               	mov	rcx, rbx
<L240>:
               	mov	edx, ebp
               	neg	edx
               	and	edx, ebp
               	lea	rsi, [rdx + 4*rdx]
               	lea	r12, [rax + 8*rsi]
               	lea	rbx, [rcx + rdx]
               	test	edx, edx
               	je	 <L241>
               	mov	qword ptr [rsp], rbx
               	mov	edi, 0x1
               	xor	r11d, r11d
               	mov	r9d, 0x1
               	jmp	 <L242>
               	nop	dword ptr [rax]
<L248>:
               	movsxd	r10, esi
               	vmovss	dword ptr [rsp + 4*r10 + 0x270], xmm0
               	add	rax, 0x28
               	inc	rcx
               	mov	r9d, 0xfffffffe
               	sub	r9d, edi
               	inc	edi
               	bsr	ebx, edi
               	xor	ebx, 0x1f
               	popcnt	r11d, r9d
               	sub	r11d, ebx
               	mov	r9, r8
               	cmp	rax, r12
               	je	 <L243>
<L242>:
               	mov	esi, r11d
               	movzx	r8d, byte ptr [rcx]
               	movsxd	r8, dword ptr [r15 + 4*r8]
               	add	r8, r15
               	jmp	r8
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, xmm4
               	jmp	 <L244>
               	vmulss	xmm0, xmm8, dword ptr [rax + 0x1c]
               	jmp	 <L245>
               	vmulss	xmm0, xmm6, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L244>
               	vmovss	xmm0, dword ptr [rax + 0x24]
               	jmp	 <L246>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, xmm4
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L244>
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	jmp	 <L244>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	jmp	 <L244>
               	vmulss	xmm0, xmm7, dword ptr [rax + 0x1c]
<L245>:
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	jmp	 <L244>
               	vmulss	xmm0, xmm4, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L244>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	jmp	 <L247>
               	vmovss	xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	jmp	 <L244>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm9, xmm0
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	jmp	 <L244>
               	vmovss	xmm0, dword ptr [rax + 0x1c]
<L246>:
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm8, xmm1
<L247>:
               	vmulss	xmm0, xmm1, xmm0
<L244>:
               	mov	r8d, esi
               	cmp	esi, r9d
               	jl	 <L248>
               	movsxd	r9, r9d
               	mov	r10d, r8d
               	sub	r10d, r9d
               	cmp	r10d, 0x1f
               	jb	 <L249>
               	inc	r10
               	mov	r11, r10
               	and	r11, -0x20
               	vblendps	xmm0, xmm5, xmm0, 0x1   # xmm0 = xmm0[0],xmm5[1,2,3]
               	lea	rbx, [4*r10]
               	and	rbx, -0x80
               	lea	r14, [rsp + 0x2d0]
               	lea	r14, [r14 + 4*r9]
               	vpxor	xmm1, xmm1, xmm1
               	xor	r13d, r13d
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	dword ptr [rax + rax]
<L250>:
               	vaddps	ymm0, ymm0, ymmword ptr [r14 + r13 - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [r14 + r13 - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [r14 + r13 - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [r14 + r13]
               	sub	r13, -0x80
               	cmp	rbx, r13
               	jne	 <L250>
               	vaddps	ymm0, ymm1, ymm0
               	vaddps	ymm1, ymm3, ymm2
               	vaddps	ymm0, ymm1, ymm0
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	r10, r11
               	je	 <L248>
               	add	r9, r11
<L249>:
               	mov	r10d, esi
               	sub	r10d, r9d
               	inc	r10d
               	lea	r9, [rsp + 4*r9]
               	add	r9, 0x270
               	xor	r11d, r11d
               	nop
<L251>:
               	vaddss	xmm0, xmm0, dword ptr [r9 + 4*r11]
               	inc	r11
               	cmp	r10d, r11d
               	jne	 <L251>
               	jmp	 <L248>
               	nop	word ptr cs:[rax + rax]
<L243>:
               	vmovd	xmm0, dword ptr [rsp + 4*r10 + 0x270]
               	sub	ebp, edx
               	je	 <L252>
               	vmovd	dword ptr [rsp + 4*r10 + 0x274], xmm0
               	mov	rax, r12
               	mov	rbx, qword ptr [rsp]
               	mov	rcx, rbx
               	test	esi, esi
               	jns	 <L253>
               	jmp	 <L240>
               	nop
<L241>:
               	vmovd	xmm0, dword ptr [rsp + 0x274]
               	sub	ebp, edx
               	je	 <L252>
               	vmovd	dword ptr [rsp + 0x278], xmm0
               	mov	esi, 0x1
               	jmp	 <L253>
<L252>:
               	mov	r12, qword ptr [rsp + 0x310]
               	mov	rsi, qword ptr [rsp + 0x250]
               	mov	r8, qword ptr [rsp + 0x230]
               	jmp	 <L254>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	cmp	qword ptr [rsp + 0x228], 0x0
               	je	 <L255>
<L259>:
               	vmovd	dword ptr [rsp], xmm0
               	mov	rdi, qword ptr [rsp + 0x228]
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovd	xmm0, dword ptr [rsp]
<L255>:
               	cmp	dword ptr [rsp + 0x328], 0x2a
               	jne	 <L256>
               	cmp	r12d, 0x186a0
               	jne	 <L256>
               	vucomiss	xmm0, dword ptr  <memset+0xa24>
               	jne	 <L257>
<L256>:
               	xor	eax, eax
               	add	rsp, 0x3f8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	ret
<L239>:
               	vpxor	xmm0, xmm0, xmm0
<L254>:
               	add	r8, -0x2
               	mov	rbx, -0x1
               	mov	r14, qword ptr [rsp + 0x228]
               	vmovd	dword ptr [rsp], xmm0
               	jmp	 <L258>
               	nop	word ptr cs:[rax + rax]
<L260>:
               	add	r14, 0x28
               	inc	rbx
               	cmp	r8, rbx
               	je	 <L259>
<L258>:
               	cmp	byte ptr [rsi + rbx + 0x1], 0xc
               	jne	 <L260>
               	mov	rdi, qword ptr [r14]
               	test	rdi, rdi
               	je	 <L260>
               	mov	r15, r8
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovd	xmm0, dword ptr [rsp]
               	mov	r8, r15
               	mov	rsi, qword ptr [rsp + 0x250]
               	jmp	 <L260>
<L257>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp], xmm0
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x68c0>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x6898>
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

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	push	0x5
               	jmp	 <.plt>
