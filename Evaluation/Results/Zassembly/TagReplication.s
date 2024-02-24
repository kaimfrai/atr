
build/ZEvaluation/bin/TagReplication:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x4620>
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
               	mov	rax, qword ptr  <memset+0x4630>
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
               	mov	rax, qword ptr  <memset+0x4638>
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
               	cmp	qword ptr , 0x0 <memset+0x4640>
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
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
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
               	sub	rsp, 0xa8
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
               	movabs	r15, 0x180ec6d33cfd0aba
               	mov	eax, ecx
               	lea	rcx, [rax + 4*rax]
               	mov	qword ptr [rsp + 0x40], rax
               	mov	qword ptr [rsp + 0x28], rcx
               	lea	rdi, [rax + 8*rcx]
               	mov	rsi, qword ptr  <memset+0x4648>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x38], rax
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
               	mov	rbx, rsi
               	shr	rbx, 0x1f
               	xor	rbx, rsi
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
               	mov	r8, rdi
               	shr	r8, 0x1f
               	xor	r8, rdi
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
               	xor	eax, eax
               	mov	qword ptr [rsp], rax
               	mov	qword ptr [rsp + 0x68], rcx
               	mov	rsi, rcx
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	rdi, r8
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x50], rbx
               	mov	r8, rbx
               	mov	qword ptr [rsp + 0x30], r10
               	mov	r9, r10
               	xor	ebp, ebp
               	jmp	 <L4>
               	nop	dword ptr [rax]
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
               	bt	r15, rdx
               	jae	 <L6>
               	xor	rbp, r9
               	xor	r13, r8
               	xor	r11, rdi
               	xor	qword ptr [rsp], rsi
               	jmp	 <L6>
<L5>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
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
               	xor	rbp, r9
               	xor	r13, r8
               	xor	r11, rdi
               	xor	qword ptr [rsp], rsi
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x10], rbp
               	mov	qword ptr [rsp + 0x8], r13
               	mov	rcx, r11
               	movabs	rbx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
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
               	bt	rbx, rdx
               	jae	 <L12>
               	mov	r10, rcx
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	r10, rdi
               	mov	rcx, r10
               	xor	qword ptr [rsp], rsi
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
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	rcx, rdi
               	xor	qword ptr [rsp], rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	r14d, r14d
               	mov	rsi, qword ptr [rsp]
               	xor	r12d, r12d
               	mov	rdi, rcx
               	xor	r13d, r13d
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	r9, qword ptr [rsp + 0x10]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x20], r11
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r15, r10
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x20], r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r14, rsi
               	jmp	 <L18>
<L17>:
               	xor	r10d, r10d
               	jmp	 <L19>
               	nop
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
               	xor	qword ptr [rsp + 0x20], r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r14, rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
               	nop
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
               	bt	rbx, r10
               	jae	 <L24>
               	xor	qword ptr [rsp + 0x20], r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r14, rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
               	nop
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
               	xor	qword ptr [rsp + 0x20], r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r14, rsi
               	jmp	 <L27>
<L26>:
               	mov	rax, r15
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, r14
               	xor	r15d, r15d
               	mov	rdi, r12
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x18], r8
               	mov	r8, r13
               	mov	r9, qword ptr [rsp + 0x20]
               	xor	ebp, ebp
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
               	bt	rax, r10
               	jae	 <L30>
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L30>
<L29>:
               	xor	r10d, r10d
               	movabs	rax, -0x2a59ed990f36c6d4
               	jmp	 <L31>
               	nop	dword ptr [rax + rax]
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
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L33>
<L32>:
               	xor	eax, eax
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
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
               	je	 <L35>
<L34>:
               	movabs	r10, -0x56a7d9e71fc03656
               	bt	r10, rax
               	jae	 <L36>
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L36>
<L35>:
               	xor	eax, eax
               	mov	r10, rcx
               	mov	r11, qword ptr [rsp + 0x8]
               	mov	qword ptr [rsp + 0x48], r13
               	jmp	 <L37>
               	nop	word ptr cs:[rax + rax]
<L39>:
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
               	je	 <L38>
<L37>:
               	bt	rdx, rax
               	jae	 <L39>
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	r15, rdi
               	xor	rbx, rsi
               	jmp	 <L39>
<L38>:
               	mov	eax, 0x40
               	nop
<L40>:
               	dec	rax
               	jne	 <L40>
               	mov	eax, 0x40
               	mov	rsi, qword ptr [rsp + 0x40]
               	mov	r9, r14
               	mov	r13, qword ptr [rsp + 0x10]
               	nop	word ptr [rax + rax]
<L41>:
               	dec	rax
               	jne	 <L41>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L42>:
               	dec	rax
               	jne	 <L42>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L43>:
               	dec	rax
               	jne	 <L43>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L44>:
               	dec	rax
               	jne	 <L44>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L45>:
               	dec	rax
               	jne	 <L45>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L46>:
               	dec	rax
               	jne	 <L46>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L47>:
               	dec	rax
               	jne	 <L47>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L48>:
               	dec	rax
               	jne	 <L48>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L49>:
               	dec	rax
               	jne	 <L49>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L50>:
               	dec	rax
               	jne	 <L50>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L51>:
               	dec	rax
               	jne	 <L51>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L52>:
               	dec	rax
               	jne	 <L52>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L53>:
               	dec	rax
               	jne	 <L53>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L54>:
               	dec	rax
               	jne	 <L54>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L55>:
               	dec	rax
               	jne	 <L55>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L56>:
               	dec	rax
               	jne	 <L56>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L57>:
               	dec	rax
               	jne	 <L57>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L58>:
               	dec	rax
               	jne	 <L58>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L59>:
               	dec	rax
               	jne	 <L59>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L60>:
               	dec	rax
               	jne	 <L60>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L61>:
               	dec	rax
               	jne	 <L61>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L62>:
               	dec	rax
               	jne	 <L62>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L63>:
               	dec	rax
               	jne	 <L63>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L64>:
               	dec	rax
               	jne	 <L64>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L65>:
               	dec	rax
               	jne	 <L65>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L66>:
               	dec	rax
               	jne	 <L66>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L67>:
               	dec	rax
               	jne	 <L67>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L68>:
               	dec	rax
               	jne	 <L68>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L69>:
               	dec	rax
               	jne	 <L69>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L70>:
               	dec	rax
               	jne	 <L70>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L71>:
               	dec	rax
               	jne	 <L71>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L72>:
               	dec	rax
               	jne	 <L72>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L73>:
               	dec	rax
               	jne	 <L73>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L74>:
               	dec	rax
               	jne	 <L74>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L75>:
               	dec	rax
               	jne	 <L75>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L76>:
               	dec	rax
               	jne	 <L76>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L77>:
               	dec	rax
               	jne	 <L77>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L78>:
               	dec	rax
               	jne	 <L78>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L79>:
               	dec	rax
               	jne	 <L79>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L80>:
               	dec	rax
               	jne	 <L80>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L81>:
               	dec	rax
               	jne	 <L81>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L82>:
               	dec	rax
               	jne	 <L82>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L83>:
               	dec	rax
               	jne	 <L83>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L84>:
               	dec	rax
               	jne	 <L84>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L85>:
               	dec	rax
               	jne	 <L85>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L86>:
               	dec	rax
               	jne	 <L86>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L87>:
               	dec	rax
               	jne	 <L87>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L88>:
               	dec	rax
               	jne	 <L88>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L89>:
               	dec	rax
               	jne	 <L89>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L90>:
               	dec	rax
               	jne	 <L90>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L91>:
               	dec	rax
               	jne	 <L91>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L92>:
               	dec	rax
               	jne	 <L92>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L93>:
               	dec	rax
               	jne	 <L93>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L94>:
               	dec	rax
               	jne	 <L94>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L95>:
               	dec	rax
               	jne	 <L95>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L96>:
               	dec	rax
               	jne	 <L96>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L97>:
               	dec	rax
               	jne	 <L97>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L98>:
               	dec	rax
               	jne	 <L98>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L99>:
               	dec	rax
               	jne	 <L99>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L100>:
               	dec	rax
               	jne	 <L100>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L101>:
               	dec	rax
               	jne	 <L101>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L102>:
               	dec	rax
               	jne	 <L102>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L103>:
               	dec	rax
               	jne	 <L103>
               	test	rsi, rsi
               	je	 <L104>
               	mov	qword ptr [rsp + 0x60], r15
               	mov	qword ptr [rsp + 0x58], rbx
               	vmovq	xmm0, qword ptr [rsp + 0x18]
               	vmovq	xmm1, qword ptr [rsp + 0x48]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	vmovq	xmm1, r11
               	vmovq	xmm2, qword ptr [rsp + 0x50]
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vpsrlq	ymm1, ymm0, 0x39
               	vpsllq	ymm0, ymm0, 0x7
               	vpor	ymm0, ymm0, ymm1
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm1, ymm1, ymm0
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rdx + 8*rax]
               	mov	qword ptr [rsp + 0x28], rax
               	xor	r8d, r8d
               	vmovd	eax, xmm1
               	movzx	ebx, al
               	imul	eax, ebx, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	bl, al
               	movzx	eax, bl
               	lea	rdi,  <memset+0x948>
               	movsxd	rax, dword ptr [rdi + 4*rax]
               	add	rax, rdi
               	mov	r14, qword ptr [rsp + 0x30]
               	jmp	rax
<L104>:
               	mov	r12, qword ptr [rsp + 0x38]
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rdx, [r12 + 8*rax]
               	mov	rdi, r12
               	mov	rsi, rdx
               	call	 <auto Bodies3D::TransformReduce@Evaluation.Dependency.TransformReduce<Bodies3D::Body3DIterator, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto)>(auto, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto))>
               	vmovd	dword ptr [rsp], xmm0
               	test	r12, r12
               	jne	 <L105>
               	jmp	 <L106>
<L112>:
               	mov	r12, qword ptr [rsp + 0x38]
               	mov	rdi, r12
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, rdx
               	mov	rbx, r8
               	vzeroupper
               	call	 <auto Bodies3D::TransformReduce@Evaluation.Dependency.TransformReduce<Bodies3D::Body3DIterator, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto)>(auto, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto))>
               	mov	rax, rbx
               	vmovd	dword ptr [rsp], xmm0
               	test	eax, eax
               	je	 <L105>
               	dec	rax
               	mov	rbx, -0x1
               	mov	r15, r12
               	jmp	 <L107>
               	nop	dword ptr [rax + rax]
<L108>:
               	add	r15, 0x28
               	inc	rbx
               	cmp	rax, rbx
               	je	 <L105>
<L107>:
               	mov	rcx, qword ptr [rsp + 0x28]
               	cmp	byte ptr [rcx + rbx + 0x1], 0xc
               	jne	 <L108>
               	mov	rdi, qword ptr [r15]
               	test	rdi, rdi
               	je	 <L108>
               	mov	r13, rax
               	call	 <_ZdaPv@plt>
               	mov	rax, r13
               	jmp	 <L108>
<L105>:
               	mov	rdi, r12
               	call	 <_ZdaPv@plt>
<L106>:
               	vpxor	xmm0, xmm0, xmm0
               	xor	eax, eax
               	vmovss	xmm1, dword ptr [rsp]
               	vucomiss	xmm1, xmm0
               	setne	al
               	add	rsp, 0xa8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	ret
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rdx], ymm0
               	jmp	 <L109>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rdx], ymm0
               	mov	dword ptr [rdx + 0x20], 0x0
               	jmp	 <L109>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rdx], ymm0
               	mov	qword ptr [rdx + 0x20], 0x0
               	jmp	 <L109>
               	vmovdqu	ymmword ptr [rsp + 0x80], ymm1
               	mov	qword ptr [rsp + 0x78], rbp
               	mov	qword ptr [rsp + 0x8], r11
               	mov	qword ptr [rsp + 0x30], r12
               	mov	qword ptr [rsp + 0x10], r13
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rdx + 0x8], ymm0
               	mov	rsi, qword ptr  <memset+0x4648>
               	mov	edi, 0x20
               	mov	r13, r14
               	mov	rbp, r10
               	mov	r15, r9
               	mov	r14, r8
               	mov	r12, rdx
               	vzeroupper
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x80]
               	mov	rdx, r12
               	lea	rdi,  <memset+0x948>
               	mov	r8, r14
               	mov	r9, r15
               	mov	r10, rbp
               	mov	rbp, qword ptr [rsp + 0x78]
               	mov	r14, r13
               	mov	r11, qword ptr [rsp + 0x8]
               	mov	r12, qword ptr [rsp + 0x30]
               	mov	r13, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x40]
               	mov	qword ptr [rdx], rax
<L109>:
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	byte ptr [rax + r8], bl
               	inc	r8
               	test	r8b, 0x7
               	je	 <L110>
               	vpsrlq	ymm1, ymm1, 0x8
               	mov	rax, qword ptr [rsp + 0x58]
               	cmp	rsi, r8
               	jne	 <L111>
               	jmp	 <L112>
<L110>:
               	mov	rdi, qword ptr [rsp + 0x50]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x70]
               	xor	rcx, r14
               	mov	qword ptr [rsp + 0x10], r8
               	mov	r8, qword ptr [rsp + 0x68]
               	xor	r8, rdi
               	xor	rdi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	rax, r11
               	shl	rax, 0x11
               	xor	r10, r13
               	mov	r15, qword ptr [rsp]
               	xor	r15, r11
               	xor	r11, r10
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x8], rdx
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x20]
               	xor	r12, rbx
               	xor	r9, rdx
               	xor	rdx, r12
               	xor	r12, rax
               	mov	rax, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x30], r14
               	mov	r14, r9
               	mov	r9, r13
               	mov	r13, r11
               	mov	r11, r12
               	mov	r12, r10
               	mov	r10, rbp
               	mov	rbp, rax
               	shl	rbp, 0x11
               	mov	rcx, qword ptr [rsp + 0x60]
               	xor	rcx, r10
               	mov	rsi, qword ptr [rsp + 0x58]
               	xor	rsi, rax
               	xor	rax, rcx
               	xor	rcx, rbp
               	mov	qword ptr [rsp + 0x60], rcx
               	mov	qword ptr [rsp + 0x48], rdx
               	lea	rbp, [rdx + 4*rdx]
               	mov	rdx, qword ptr [rsp + 0x8]
               	rol	rbp, 0x7
               	mov	qword ptr [rsp + 0x18], rax
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm0, rcx
               	lea	rax, [8*rbp]
               	add	rax, rbp
               	mov	rbp, r10
               	mov	r10, r12
               	mov	r12, r11
               	mov	r11, r13
               	mov	r13, r9
               	mov	r9, r14
               	mov	r14, qword ptr [rsp + 0x30]
               	vmovq	xmm1, rax
               	lea	rax, [r11 + 4*r11]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm2, rax
               	mov	qword ptr [rsp + 0x50], rdi
               	lea	rax, [rdi + 4*rdi]
               	lea	rdi,  <memset+0x948>
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm3, rax
               	xor	r14, r8
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x10]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	xor	r13, r15
               	rol	r15, 0x2d
               	mov	qword ptr [rsp], r15
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x20], rbx
               	mov	rax, rsi
               	mov	rsi, qword ptr [rsp + 0x40]
               	rol	r9, 0x2d
               	xor	rbp, rax
               	rol	rax, 0x2d
               	vpunpcklqdq	xmm1, xmm3, xmm2 # xmm1 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm1, xmm0, 0x1
               	cmp	rsi, r8
               	je	 <L112>
<L111>:
               	mov	qword ptr [rsp + 0x58], rax
               	add	rdx, 0x28
               	vmovd	eax, xmm1
               	movzx	ebx, al
               	imul	eax, ebx, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	bl, al
               	movzx	eax, bl
               	movsxd	rax, dword ptr [rdi + 4*rax]
               	add	rax, rdi
               	jmp	rax
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

<auto Bodies3D::TransformReduce@Evaluation.Dependency.TransformReduce<Bodies3D::Body3DIterator, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto)>(auto, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto))>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x88
               	mov	rax, rdx
               	sub	rax, rdi
               	movabs	rcx, 0x6666666666666667
               	imul	rcx
               	mov	rbx, rdx
               	mov	rax, rdx
               	shr	rax, 0x3f
               	shr	rbx, 0x4
               	add	ebx, eax
               	je	 <L0>
               	vxorps	xmm0, xmm0, xmm0
               	vmovups	ymmword ptr [rsp + 0x60], ymm0
               	vmovups	ymmword ptr [rsp + 0x40], ymm0
               	vmovups	ymmword ptr [rsp + 0x20], ymm0
               	vmovups	ymmword ptr [rsp], ymm0
               	lea	r15, [rsp + 0x60]
               	lea	r12,  <memset+0x990>
               	vmovss	xmm4, dword ptr  <memset+0x980>
               	vxorps	xmm5, xmm5, xmm5
               	vmovss	xmm6, dword ptr  <memset+0x988>
               	vmovss	xmm7, dword ptr  <memset+0x984>
               	vmovss	xmm8, dword ptr  <memset+0x98c>
               	vmovss	xmm9, dword ptr  <memset+0x97c>
               	jmp	 <L1>
               	nop
<L2>:
               	vmovss	xmm0, dword ptr [rsp + 0x4]
               	vmovss	dword ptr [rsp + 0x8], xmm0
               	mov	ecx, 0x1
<L14>:
               	mov	eax, ecx
               	lea	rdx, [4*rax + 0x4]
               	mov	rdi, rsp
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovss	xmm9, dword ptr  <memset+0x97c>
               	vmovss	xmm8, dword ptr  <memset+0x98c>
               	vmovss	xmm7, dword ptr  <memset+0x984>
               	vmovss	xmm6, dword ptr  <memset+0x988>
               	vxorps	xmm5, xmm5, xmm5
               	vmovss	xmm4, dword ptr  <memset+0x980>
               	mov	rdi, r13
               	mov	rsi, rbp
<L1>:
               	mov	eax, ebx
               	neg	eax
               	and	eax, ebx
               	lea	rcx, [rax + 4*rax]
               	lea	r13, [rdi + 8*rcx]
               	lea	rbp, [rsi + rax]
               	test	eax, eax
               	je	 <L2>
               	mov	edx, 0x1
               	xor	r10d, r10d
               	mov	r8d, 0x1
               	jmp	 <L3>
<L9>:
               	mov	r8d, ecx
               	movsxd	r9, ecx
               	vmovss	dword ptr [rsp + 4*r9], xmm0
               	add	rdi, 0x28
               	inc	rsi
               	mov	r10d, 0xfffffffe
               	sub	r10d, edx
               	inc	edx
               	bsr	r11d, edx
               	xor	r11d, 0x1f
               	popcnt	r10d, r10d
               	sub	r10d, r11d
               	cmp	rdi, r13
               	je	 <L4>
<L3>:
               	mov	ecx, r10d
               	movzx	r9d, byte ptr [rsi]
               	movsxd	r9, dword ptr [r12 + 4*r9]
               	add	r9, r12
               	jmp	r9
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, xmm4
               	jmp	 <L5>
               	vmulss	xmm0, xmm8, dword ptr [rdi + 0x1c]
               	jmp	 <L6>
               	vmulss	xmm0, xmm6, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	jmp	 <L5>
               	vmovss	xmm0, dword ptr [rdi + 0x24]
               	jmp	 <L7>
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, xmm4
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	jmp	 <L5>
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	jmp	 <L5>
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	jmp	 <L5>
               	vmulss	xmm0, xmm7, dword ptr [rdi + 0x1c]
<L6>:
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	jmp	 <L5>
               	vmulss	xmm0, xmm4, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	jmp	 <L5>
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	jmp	 <L8>
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	jmp	 <L5>
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm9, xmm0
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	jmp	 <L5>
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
<L7>:
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm8, xmm1
<L8>:
               	vmulss	xmm0, xmm1, xmm0
<L5>:
               	mov	r9d, ecx
               	sub	r9d, r8d
               	jl	 <L9>
               	movsxd	r8, r8d
               	cmp	r9d, 0x1f
               	jb	 <L10>
               	inc	r9
               	mov	r10, r9
               	and	r10, -0x20
               	vblendps	xmm0, xmm5, xmm0, 0x1   # xmm0 = xmm0[0],xmm5[1,2,3]
               	lea	r11, [r15 + 4*r8]
               	vxorps	xmm1, xmm1, xmm1
               	xor	r14d, r14d
               	vxorps	xmm2, xmm2, xmm2
               	vxorps	xmm3, xmm3, xmm3
               	nop	dword ptr [rax]
<L11>:
               	vaddps	ymm0, ymm0, ymmword ptr [r11 + 4*r14 - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [r11 + 4*r14 - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [r11 + 4*r14 - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [r11 + 4*r14]
               	add	r14, 0x20
               	cmp	r10, r14
               	jne	 <L11>
               	vaddps	ymm0, ymm1, ymm0
               	vaddps	ymm1, ymm3, ymm2
               	vaddps	ymm0, ymm1, ymm0
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	r9, r10
               	je	 <L9>
               	add	r8, r10
<L10>:
               	mov	r9d, ecx
               	sub	r9d, r8d
               	inc	r9d
               	lea	r8, [rsp + 4*r8]
               	xor	r10d, r10d
               	nop	word ptr [rax + rax]
<L12>:
               	vaddss	xmm0, xmm0, dword ptr [r8 + 4*r10]
               	inc	r10
               	cmp	r9d, r10d
               	jne	 <L12>
               	jmp	 <L9>
               	nop	word ptr cs:[rax + rax]
<L4>:
               	sub	ebx, eax
               	je	 <L13>
               	vmovss	dword ptr [rsp + 4*r9 + 0x4], xmm0
               	mov	rdi, r13
               	mov	rsi, rbp
               	test	ecx, ecx
               	jns	 <L14>
               	jmp	 <L1>
<L0>:
               	vxorps	xmm0, xmm0, xmm0
<L13>:
               	add	rsp, 0x88
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x4628>
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

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	push	0x3
               	jmp	 <.plt>
