
build/Evaluation/bin/Replication:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x6a60>
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
               	mov	rax, qword ptr  <memset+0x6a70>
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
               	mov	rax, qword ptr  <memset+0x6a78>
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
               	cmp	qword ptr , 0x0 <memset+0x6a80>
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

<initializer for module Evaluation.Dependency.CommonData>:
<initializer for module Evaluation.Replication.Cube>:
<initializer for module Evaluation.Replication.Cuboid>:
<initializer for module Evaluation.Replication.Square>:
<initializer for module Evaluation.Replication.Rectangle>:
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

<initializer for module Evaluation.Dependency.DynamicArray>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW12DynamicArray__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW12DynamicArray__in_chrg>
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

<initializer for module Evaluation.Replication.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW6Circle__in_chrg>
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

<initializer for module Evaluation.Replication.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW7Ellipse__in_chrg>
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

<initializer for module Evaluation.Replication.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW8Triangle__in_chrg>
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

<initializer for module Evaluation.Replication.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW7Pyramid__in_chrg>
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

<initializer for module Evaluation.Replication.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW6Sphere__in_chrg>
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

<initializer for module Evaluation.Replication.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW8Cylinder__in_chrg>
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

<initializer for module Evaluation.Replication.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW4Cone__in_chrg>
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

<initializer for module Evaluation.Replication.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW9Ellipsoid__in_chrg>
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

<initializer for module Evaluation.Replication.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW4Head__in_chrg>
               	jmp	 <initializer for module Evaluation.Replication.Sphere>
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

<_GLOBAL__sub_I_Replication.cpp>:
               	push	rax
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.Replication.Circle>
               	call	 <initializer for module Evaluation.Replication.Ellipse>
               	call	 <initializer for module Std>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.Replication.Triangle>
               	call	 <initializer for module Std>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.Replication.Pyramid>
               	call	 <initializer for module Evaluation.Replication.Sphere>
               	call	 <initializer for module Evaluation.Replication.Cylinder>
               	call	 <initializer for module Evaluation.Replication.Cone>
               	call	 <initializer for module Evaluation.Replication.Ellipsoid>
               	call	 <initializer for module Evaluation.Replication.Head>
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
               	sub	rsp, 0x368
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
               	movsx	r15d, byte ptr [rax]
               	add	r15d, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	word ptr [rax + rax]
<L3>:
               	lea	edx, [r15 + 4*r15]
               	movsx	ecx, cl
               	lea	r15d, [rcx + 2*rdx]
               	add	r15d, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movsxd	rax, r15d
               	shl	rax, 0x3
               	lea	rdi, [rax + 8*rax]
               	mov	rsi, qword ptr  <memset+0x6a88>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x210], rax
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
               	mov	rcx, rax
               	shr	rcx, 0x1f
               	xor	rcx, rax
               	xor	edi, edi
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x328], rcx
               	mov	rax, rcx
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x330], r10
               	mov	rcx, r10
               	xor	r12d, r12d
               	mov	rdx, r8
               	mov	qword ptr [rsp + 0x220], r8
               	mov	qword ptr [rsp + 0x338], r9
               	mov	rsi, r9
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1e8], r8
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L5>
<L4>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L6>
               	xor	qword ptr [rsp + 0x1e8], rsi
               	xor	r12, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L6>
<L5>:
               	xor	edi, edi
               	jmp	 <L7>
               	nop	word ptr [rax + rax]
<L9>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L8>
<L7>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L9>
               	xor	qword ptr [rsp + 0x1e8], rsi
               	xor	r12, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	word ptr [rax + rax]
<L12>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	qword ptr [rsp + 0x1e8], rsi
               	xor	r12, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	word ptr [rax + rax]
<L15>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	qword ptr [rsp + 0x1e8], rsi
               	xor	r12, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1e0], rax
               	mov	rax, r11
               	xor	r10d, r10d
               	mov	rcx, r14
               	xor	r13d, r13d
               	mov	rdx, r12
               	mov	rsi, qword ptr [rsp + 0x1e8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x200], r8
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
<L18>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L17>
<L16>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x200], rsi
               	xor	r13, rdx
               	xor	r10, rcx
               	xor	qword ptr [rsp + 0x1e0], rax
               	jmp	 <L18>
<L17>:
               	xor	edi, edi
               	jmp	 <L19>
               	nop
<L21>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L20>
<L19>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x200], rsi
               	xor	r13, rdx
               	xor	r10, rcx
               	xor	qword ptr [rsp + 0x1e0], rax
               	jmp	 <L21>
<L20>:
               	xor	edi, edi
               	jmp	 <L22>
               	nop
<L24>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L23>
<L22>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L24>
               	xor	qword ptr [rsp + 0x200], rsi
               	xor	r13, rdx
               	xor	r10, rcx
               	xor	qword ptr [rsp + 0x1e0], rax
               	jmp	 <L24>
<L23>:
               	xor	edi, edi
               	jmp	 <L25>
               	nop
<L27>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L26>
<L25>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L27>
               	xor	qword ptr [rsp + 0x200], rsi
               	xor	r13, rdx
               	xor	r10, rcx
               	xor	qword ptr [rsp + 0x1e0], rax
               	jmp	 <L27>
<L26>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1f8], rax
               	mov	rax, qword ptr [rsp + 0x1e0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x1f0], rcx
               	mov	rcx, r10
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x90], rdx
               	mov	rdx, r13
               	mov	rsi, qword ptr [rsp + 0x200]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1d8], r8
               	jmp	 <L28>
               	nop
<L30>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L29>
<L28>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x1f0], rcx
               	xor	qword ptr [rsp + 0x1f8], rax
               	jmp	 <L30>
<L29>:
               	xor	edi, edi
               	jmp	 <L31>
               	nop	dword ptr [rax]
<L33>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L32>
<L31>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x1f0], rcx
               	xor	qword ptr [rsp + 0x1f8], rax
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L35>
<L34>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L36>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x1f0], rcx
               	xor	qword ptr [rsp + 0x1f8], rax
               	jmp	 <L36>
<L35>:
               	xor	edi, edi
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L38>
<L37>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L39>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x1f0], rcx
               	xor	qword ptr [rsp + 0x1f8], rax
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	mov	rax, qword ptr [rsp + 0x1f8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x1d0], rcx
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	rdx, qword ptr [rsp + 0x90]
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1c8], r8
               	jmp	 <L40>
               	nop
<L42>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L41>
<L40>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1c8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L42>
<L41>:
               	xor	edi, edi
               	jmp	 <L43>
               	nop	word ptr cs:[rax + rax]
<L45>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L44>
<L43>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1c8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L45>
<L44>:
               	xor	edi, edi
               	jmp	 <L46>
               	nop	word ptr cs:[rax + rax]
<L48>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L47>
<L46>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L48>
               	xor	qword ptr [rsp + 0x1c8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L48>
<L47>:
               	xor	edi, edi
               	jmp	 <L49>
               	nop	word ptr cs:[rax + rax]
<L51>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L50>
<L49>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L51>
               	xor	qword ptr [rsp + 0x1c8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c0], rax
               	mov	rax, qword ptr [rsp + 0x88]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x1b8], rcx
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x28], rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1b0], r8
               	jmp	 <L52>
               	nop	dword ptr [rax]
<L54>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L53>
<L52>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x1b0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1c0], rax
               	jmp	 <L54>
<L53>:
               	xor	edi, edi
               	jmp	 <L55>
               	nop	word ptr cs:[rax + rax]
<L57>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L56>
<L55>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1b0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1c0], rax
               	jmp	 <L57>
<L56>:
               	xor	edi, edi
               	jmp	 <L58>
               	nop	word ptr cs:[rax + rax]
<L60>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L59>
<L58>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L60>
               	xor	qword ptr [rsp + 0x1b0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1c0], rax
               	jmp	 <L60>
<L59>:
               	xor	edi, edi
               	jmp	 <L61>
               	nop	word ptr cs:[rax + rax]
<L63>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L62>
<L61>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L63>
               	xor	qword ptr [rsp + 0x1b0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1c0], rax
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a8], rax
               	mov	rax, qword ptr [rsp + 0x1c0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x1a0], rcx
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x198], r8
               	jmp	 <L64>
               	nop	dword ptr [rax]
<L66>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L65>
<L64>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x198], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x1a8], rax
               	jmp	 <L66>
<L65>:
               	xor	edi, edi
               	jmp	 <L67>
               	nop	word ptr cs:[rax + rax]
<L69>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L68>
<L67>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x198], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x1a8], rax
               	jmp	 <L69>
<L68>:
               	xor	edi, edi
               	jmp	 <L70>
               	nop	word ptr cs:[rax + rax]
<L72>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L71>
<L70>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x198], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x1a8], rax
               	jmp	 <L72>
<L71>:
               	xor	edi, edi
               	jmp	 <L73>
               	nop	word ptr cs:[rax + rax]
<L75>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L74>
<L73>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x198], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x1a8], rax
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x190], rax
               	mov	rax, qword ptr [rsp + 0x1a8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x188], rcx
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x18], rdx
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0x198]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x180], r8
               	jmp	 <L76>
               	nop	dword ptr [rax]
<L78>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L77>
<L76>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x190], rax
               	jmp	 <L78>
<L77>:
               	xor	edi, edi
               	jmp	 <L79>
               	nop	word ptr cs:[rax + rax]
<L81>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L80>
<L79>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x190], rax
               	jmp	 <L81>
<L80>:
               	xor	edi, edi
               	jmp	 <L82>
               	nop	word ptr cs:[rax + rax]
<L84>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L83>
<L82>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x190], rax
               	jmp	 <L84>
<L83>:
               	xor	edi, edi
               	jmp	 <L85>
               	nop	word ptr cs:[rax + rax]
<L87>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L86>
<L85>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x190], rax
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x178], rax
               	mov	rax, qword ptr [rsp + 0x190]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x170], rcx
               	mov	rcx, qword ptr [rsp + 0x188]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x10], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x180]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x168], r8
               	jmp	 <L88>
               	nop	dword ptr [rax]
<L90>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L89>
<L88>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L90>
<L89>:
               	xor	edi, edi
               	jmp	 <L91>
               	nop	word ptr cs:[rax + rax]
<L93>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L92>
<L91>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L93>
<L92>:
               	xor	edi, edi
               	jmp	 <L94>
               	nop	word ptr cs:[rax + rax]
<L96>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L95>
<L94>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L96>
<L95>:
               	xor	edi, edi
               	jmp	 <L97>
               	nop	word ptr cs:[rax + rax]
<L99>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L98>
<L97>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x160], rax
               	mov	rax, qword ptr [rsp + 0x178]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x158], rcx
               	mov	rcx, qword ptr [rsp + 0x170]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x8], rdx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x168]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x150], r8
               	jmp	 <L100>
               	nop	dword ptr [rax]
<L102>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L101>
<L100>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L102>
<L101>:
               	xor	edi, edi
               	jmp	 <L103>
               	nop	word ptr cs:[rax + rax]
<L105>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L104>
<L103>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L105>
<L104>:
               	xor	edi, edi
               	jmp	 <L106>
               	nop	word ptr cs:[rax + rax]
<L108>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L107>
<L106>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L108>
<L107>:
               	xor	edi, edi
               	jmp	 <L109>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L110>
<L109>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x148], rax
               	mov	rax, qword ptr [rsp + 0x160]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x140], rcx
               	mov	rcx, qword ptr [rsp + 0x158]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x78], rdx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x150]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x138], r8
               	jmp	 <L112>
               	nop	dword ptr [rax]
<L114>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L113>
<L112>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L114>
<L113>:
               	xor	edi, edi
               	jmp	 <L115>
               	nop	word ptr cs:[rax + rax]
<L117>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L116>
<L115>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L117>
<L116>:
               	xor	edi, edi
               	jmp	 <L118>
               	nop	word ptr cs:[rax + rax]
<L120>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L119>
<L118>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L120>
<L119>:
               	xor	edi, edi
               	jmp	 <L121>
               	nop	word ptr cs:[rax + rax]
<L123>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L122>
<L121>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L123>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	rax, qword ptr [rsp + 0x148]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x130], rcx
               	mov	rcx, qword ptr [rsp + 0x140]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x70], rdx
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	rsi, qword ptr [rsp + 0x138]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x128], r8
               	jmp	 <L124>
               	nop	word ptr cs:[rax + rax]
<L126>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L125>
<L124>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	r9, rax
               	jmp	 <L126>
<L125>:
               	xor	edi, edi
               	jmp	 <L127>
               	nop	word ptr cs:[rax + rax]
<L129>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L128>
<L127>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	r9, rax
               	jmp	 <L129>
<L128>:
               	xor	edi, edi
               	jmp	 <L130>
               	nop	word ptr cs:[rax + rax]
<L132>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L131>
<L130>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L132>
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	r9, rax
               	jmp	 <L132>
<L131>:
               	xor	edi, edi
               	jmp	 <L133>
               	nop	word ptr cs:[rax + rax]
<L135>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L134>
<L133>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L135>
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	r9, rax
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x120], rax
               	mov	rax, r9
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x118], rcx
               	mov	rcx, qword ptr [rsp + 0x130]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x68], rdx
               	mov	rdx, qword ptr [rsp + 0x70]
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x110], r8
               	jmp	 <L136>
               	nop
<L138>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L137>
<L136>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L138>
<L137>:
               	xor	edi, edi
               	jmp	 <L139>
               	nop	word ptr cs:[rax + rax]
<L141>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L140>
<L139>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L141>
<L140>:
               	xor	edi, edi
               	jmp	 <L142>
               	nop	word ptr cs:[rax + rax]
<L144>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L143>
<L142>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L144>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L144>
<L143>:
               	xor	edi, edi
               	jmp	 <L145>
               	nop	word ptr cs:[rax + rax]
<L147>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L146>
<L145>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L147>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	mov	rax, qword ptr [rsp + 0x120]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x108], rcx
               	mov	rcx, qword ptr [rsp + 0x118]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x60], rdx
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x100], r8
               	jmp	 <L148>
               	nop	dword ptr [rax]
<L150>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L149>
<L148>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L150>
<L149>:
               	xor	edi, edi
               	jmp	 <L151>
               	nop	word ptr cs:[rax + rax]
<L153>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L152>
<L151>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L153>
<L152>:
               	xor	edi, edi
               	jmp	 <L154>
               	nop	word ptr cs:[rax + rax]
<L156>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L155>
<L154>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L156>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L156>
<L155>:
               	xor	edi, edi
               	jmp	 <L157>
               	nop	word ptr cs:[rax + rax]
<L159>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L158>
<L157>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L159>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	mov	rax, qword ptr [rsp + 0x80]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	rcx, qword ptr [rsp + 0x108]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x58], rdx
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xe8], r8
               	jmp	 <L160>
               	nop	dword ptr [rax]
<L162>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L161>
<L160>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L162>
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L162>
<L161>:
               	xor	edi, edi
               	jmp	 <L163>
               	nop	word ptr cs:[rax + rax]
<L165>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L164>
<L163>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L165>
<L164>:
               	xor	edi, edi
               	jmp	 <L166>
               	nop	word ptr cs:[rax + rax]
<L168>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L167>
<L166>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L168>
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L168>
<L167>:
               	xor	edi, edi
               	jmp	 <L169>
               	nop	word ptr cs:[rax + rax]
<L171>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L170>
<L169>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L171>
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	mov	rax, qword ptr [rsp + 0xf8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xd8], rcx
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x50], rdx
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0xe8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xd0], r8
               	jmp	 <L172>
               	nop	dword ptr [rax]
<L174>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L173>
<L172>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L174>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L174>
<L173>:
               	xor	edi, edi
               	jmp	 <L175>
               	nop	word ptr cs:[rax + rax]
<L177>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L176>
<L175>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L177>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L177>
<L176>:
               	xor	edi, edi
               	jmp	 <L178>
               	nop	word ptr cs:[rax + rax]
<L180>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L179>
<L178>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L180>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L180>
<L179>:
               	xor	edi, edi
               	jmp	 <L181>
               	nop	word ptr cs:[rax + rax]
<L183>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L182>
<L181>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L183>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	mov	rax, qword ptr [rsp + 0xe0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xc0], rcx
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x48], rdx
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xb8], r8
               	jmp	 <L184>
               	nop	dword ptr [rax]
<L186>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L185>
<L184>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L186>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L186>
<L185>:
               	xor	edi, edi
               	jmp	 <L187>
               	nop	word ptr cs:[rax + rax]
<L189>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L188>
<L187>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L189>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L189>
<L188>:
               	xor	edi, edi
               	jmp	 <L190>
               	nop	word ptr cs:[rax + rax]
<L192>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L191>
<L190>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L192>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L192>
<L191>:
               	xor	edi, edi
               	jmp	 <L193>
               	nop	word ptr cs:[rax + rax]
<L195>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L194>
<L193>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L195>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L195>
<L194>:
               	mov	qword ptr [rsp + 0x310], r10
               	xor	r10d, r10d
               	xor	ebp, ebp
               	mov	rax, qword ptr [rsp + 0xc8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x40], rdx
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L196>
               	nop	dword ptr [rax]
<L198>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L197>
<L196>:
               	movabs	rdi, 0x180ec6d33cfd0aba
               	bt	rdi, r10
               	jae	 <L198>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	rbp, rax
               	jmp	 <L198>
<L197>:
               	xor	r10d, r10d
               	jmp	 <L199>
               	nop	word ptr cs:[rax + rax]
<L201>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L200>
<L199>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, r10
               	jae	 <L201>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	rbp, rax
               	jmp	 <L201>
<L200>:
               	xor	edi, edi
               	movabs	r8, -0x56a7d9e71fc03656
               	jmp	 <L202>
               	nop	dword ptr [rax + rax]
<L204>:
               	mov	r10, rdx
               	shl	r10, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r10
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L203>
<L202>:
               	bt	r8, rdi
               	jae	 <L204>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	rbp, rax
               	jmp	 <L204>
<L203>:
               	xor	edi, edi
               	movabs	r8, 0x39abdc4529b1661c
               	jmp	 <L205>
               	nop	word ptr cs:[rax + rax]
<L207>:
               	mov	r10, rdx
               	shl	r10, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r10
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L206>
<L205>:
               	bt	r8, rdi
               	jae	 <L207>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	rbp, rax
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x318], r14
               	mov	qword ptr [rsp + 0x320], r11
               	mov	qword ptr [rsp + 0x238], rbx
               	xor	r14d, r14d
               	xor	edx, edx
               	mov	rcx, rbp
               	xor	r10d, r10d
               	mov	rsi, qword ptr [rsp + 0xb0]
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	mov	r11, qword ptr [rsp + 0x40]
               	mov	rbx, qword ptr [rsp + 0xa8]
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L208>
               	nop	dword ptr [rax + rax]
<L210>:
               	mov	rdi, r11
               	shl	rdi, 0x11
               	xor	rsi, rbx
               	xor	rcx, r11
               	xor	r11, rsi
               	xor	rbx, rcx
               	xor	rsi, rdi
               	rol	rcx, 0x2d
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L209>
<L208>:
               	bt	rax, r14
               	jae	 <L210>
               	xor	qword ptr [rsp + 0xa0], rbx
               	xor	qword ptr [rsp + 0x38], r11
               	xor	r10, rsi
               	xor	rdx, rcx
               	jmp	 <L210>
<L209>:
               	xor	r14d, r14d
               	movabs	rax, -0x2a59ed990f36c6d4
               	jmp	 <L211>
               	nop	dword ptr [rax]
<L213>:
               	mov	rdi, r11
               	shl	rdi, 0x11
               	xor	rsi, rbx
               	xor	rcx, r11
               	xor	r11, rsi
               	xor	rbx, rcx
               	xor	rsi, rdi
               	rol	rcx, 0x2d
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L212>
<L211>:
               	bt	rax, r14
               	jae	 <L213>
               	xor	qword ptr [rsp + 0xa0], rbx
               	xor	qword ptr [rsp + 0x38], r11
               	xor	r10, rsi
               	xor	rdx, rcx
               	jmp	 <L213>
<L212>:
               	xor	edi, edi
               	movabs	rax, -0x56a7d9e71fc03656
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
               	mov	r14, r11
               	shl	r14, 0x11
               	xor	rsi, rbx
               	xor	rcx, r11
               	xor	r11, rsi
               	xor	rbx, rcx
               	xor	rsi, r14
               	rol	rcx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L215>
<L214>:
               	bt	rax, rdi
               	jae	 <L216>
               	xor	qword ptr [rsp + 0xa0], rbx
               	xor	qword ptr [rsp + 0x38], r11
               	xor	r10, rsi
               	xor	rdx, rcx
               	jmp	 <L216>
<L215>:
               	xor	edi, edi
               	movabs	rax, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	dword ptr [rax]
<L219>:
               	mov	r14, r11
               	shl	r14, 0x11
               	xor	rsi, rbx
               	xor	rcx, r11
               	xor	r11, rsi
               	xor	rbx, rcx
               	xor	rsi, r14
               	rol	rcx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L218>
<L217>:
               	bt	rax, rdi
               	jae	 <L219>
               	xor	qword ptr [rsp + 0xa0], rbx
               	xor	qword ptr [rsp + 0x38], r11
               	xor	r10, rsi
               	xor	rdx, rcx
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x248], r13
               	mov	qword ptr [rsp + 0x218], r12
               	mov	qword ptr [rsp + 0x240], r15
               	xor	edi, edi
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x308], rdx
               	mov	r15, rdx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x208], rax
               	mov	qword ptr [rsp + 0x300], r10
               	mov	r12, r10
               	xor	esi, esi
               	mov	r10, qword ptr [rsp + 0x38]
               	mov	r13, qword ptr [rsp + 0xa0]
               	xor	r8d, r8d
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L220>
               	nop	dword ptr [rax + rax]
<L222>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r12, r13
               	xor	r15, r10
               	xor	r10, r12
               	xor	r13, r15
               	xor	r12, rbx
               	rol	r15, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L221>
<L220>:
               	bt	rax, rdi
               	jae	 <L222>
               	xor	r8, r13
               	xor	rsi, r10
               	xor	qword ptr [rsp + 0x208], r12
               	xor	rcx, r15
               	jmp	 <L222>
<L221>:
               	xor	edi, edi
               	movabs	rax, -0x2a59ed990f36c6d4
               	jmp	 <L223>
               	nop	word ptr [rax + rax]
<L225>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r12, r13
               	xor	r15, r10
               	xor	r10, r12
               	xor	r13, r15
               	xor	r12, rbx
               	rol	r15, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L224>
<L223>:
               	bt	rax, rdi
               	jae	 <L225>
               	xor	r8, r13
               	xor	rsi, r10
               	xor	qword ptr [rsp + 0x208], r12
               	xor	rcx, r15
               	jmp	 <L225>
<L224>:
               	xor	edi, edi
               	movabs	rax, -0x56a7d9e71fc03656
               	jmp	 <L226>
               	nop	word ptr [rax + rax]
<L228>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r12, r13
               	xor	r15, r10
               	xor	r10, r12
               	xor	r13, r15
               	xor	r12, rbx
               	rol	r15, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L227>
<L226>:
               	bt	rax, rdi
               	jae	 <L228>
               	xor	r8, r13
               	xor	rsi, r10
               	xor	qword ptr [rsp + 0x208], r12
               	xor	rcx, r15
               	jmp	 <L228>
<L227>:
               	xor	edi, edi
               	movabs	rax, 0x39abdc4529b1661c
               	jmp	 <L229>
               	nop	word ptr [rax + rax]
<L231>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r12, r13
               	xor	r15, r10
               	xor	r10, r12
               	xor	r13, r15
               	xor	r12, rbx
               	rol	r15, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L230>
<L229>:
               	bt	rax, rdi
               	jae	 <L231>
               	xor	r8, r13
               	xor	rsi, r10
               	xor	qword ptr [rsp + 0x208], r12
               	xor	rcx, r15
               	jmp	 <L231>
<L230>:
               	mov	rdi, qword ptr [rsp + 0x220]
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	lea	r13, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x250], r13
               	mov	rax, qword ptr [rsp + 0x218]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x258], rdi
               	mov	rax, qword ptr [rsp + 0x248]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	rax, qword ptr [rsp + 0x90]
               	lea	r10, [rax + 4*rax]
               	rol	r10, 0x7
               	mov	qword ptr [rsp + 0x260], rdi
               	lea	rdi, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x268], rdi
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x270], rdi
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x278], rdi
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	r10, [rax + 4*rax]
               	rol	r10, 0x7
               	mov	qword ptr [rsp + 0x280], rdi
               	lea	rdi, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x288], rdi
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x290], rdi
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x298], rdi
               	mov	rax, qword ptr [rsp + 0x78]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	rax, qword ptr [rsp + 0x70]
               	lea	r10, [rax + 4*rax]
               	rol	r10, 0x7
               	mov	qword ptr [rsp + 0x2a0], rdi
               	lea	rdi, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x2a8], rdi
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2b0], rdi
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2b8], rdi
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	r10, [rax + 4*rax]
               	rol	r10, 0x7
               	mov	qword ptr [rsp + 0x2c0], rdi
               	lea	rdi, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x2c8], rdi
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2d0], rdi
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2d8], rdi
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r10, [rsi + 4*rsi]
               	rol	r10, 0x7
               	mov	qword ptr [rsp + 0x2e0], rdi
               	lea	rdi, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x2e8], rdi
               	mov	r14, qword ptr [rsp + 0x240]
               	test	r14d, r14d
               	je	 <L232>
               	mov	qword ptr [rsp + 0x2f8], r9
               	mov	r9d, r14d
               	xor	eax, eax
               	vbroadcastss	ymm0, dword ptr  <memset+0xa30>
               	vmovdqa	xmm1, xmmword ptr  <memset+0xa10>
               	lea	r11,  <memset+0xa4c>
               	mov	r14, qword ptr [rsp + 0x210]
               	mov	qword ptr [rsp + 0x350], r9
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L238>:
               	vblendps	ymm2, ymm2, ymmword ptr [rsp + 0x258], 0xc0 # ymm2 = ymm2[0,1,2,3,4,5],mem[6,7]
               	vpermpd	ymm2, ymm2, 0x93        # ymm2 = ymm2[3,0,1,2]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x250]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x290]
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x2b0]
               	vmovdqu	ymm6, ymmword ptr [rsp + 0x2d0]
               	vpsrlq	ymm3, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x250], ymm3
               	vpsrlq	ymm2, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x270], ymm2
               	vpsrlq	ymm2, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x290], ymm2
               	vpsrlq	ymm2, ymm5, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm2
               	vpsrlq	ymm2, ymm6, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm2
               	vmovq	r13, xmm3
               	add	r14, 0x48
               	cmp	r9, rax
               	je	 <L234>
<L233>:
               	vmovdqu	xmm2, xmmword ptr [rsp + 0x298]
               	vpshufb	xmm4, xmm2, xmm1
               	vmovups	ymm2, ymmword ptr [rsp + 0x278]
               	vperm2f128	ymm3, ymm2, ymmword ptr [rsp + 0x258], 0x2 # ymm3 = mem[0,1],ymm2[0,1]
               	vmovups	ymm5, ymmword ptr [rsp + 0x268]
               	vinsertf128	ymm5, ymm5, xmmword ptr [rsp + 0x288], 0x1
               	vshufps	ymm3, ymm3, ymm5, 0x88  # ymm3 = ymm3[0,2],ymm5[0,2],ymm3[4,6],ymm5[4,6]
               	vandps	ymm3, ymm3, ymm0
               	vcvtdq2ps	ymm3, ymm3
               	vcvtdq2ps	xmm4, xmm4
               	movzx	edi, r13b
               	imul	edi, edi, 0x4f
               	shr	edi, 0xa
               	lea	r10d, [rdi + 2*rdi]
               	lea	edi, [rdi + 4*r10]
               	sub	r13b, dil
               	movzx	edi, r13b
               	movsxd	rdi, dword ptr [r11 + 4*rdi]
               	add	rdi, r11
               	jmp	rdi
               	lea	rdi,  <Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>
               	jmp	 <L235>
               	lea	rdi,  <Bodies3D::ComputeVolumeEllipsoid@Evaluation.Replication.Ellipsoid(void const*)>
               	jmp	 <L236>
               	lea	rdi,  <Bodies3D::ComputeVolumeTriangle@Evaluation.Replication.Triangle(void const*)>
               	jmp	 <L237>
               	lea	rdi,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
               	mov	qword ptr [r14], rdi
               	vmovups	ymmword ptr [r14 + 0x8], ymm3
               	vmovups	ymm3, ymmword ptr [rsp + 0x2a8]
               	vmovups	ymm4, ymmword ptr [rsp + 0x2b8]
               	vinsertf128	ymm4, ymm4, xmmword ptr [rsp + 0x2d8], 0x1
               	vinsertf128	ymm3, ymm3, xmmword ptr [rsp + 0x2c8], 0x1
               	vshufps	ymm3, ymm3, ymm4, 0x88  # ymm3 = ymm3[0,2],ymm4[0,2],ymm3[4,6],ymm4[4,6]
               	vandps	ymm3, ymm3, ymm0
               	vcvtdq2ps	ymm3, ymm3
               	vmovups	ymmword ptr [r14 + 0x28], ymm3
               	inc	rax
               	test	al, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	lea	rdi,  <Bodies3D::ComputeVolumeCylinder@Evaluation.Replication.Cylinder(void const*)>
               	jmp	 <L240>
               	lea	rdi,  <Bodies3D::ComputeVolumeRectangle@Evaluation.Replication.Rectangle(void const*)>
               	jmp	 <L237>
               	lea	rdi,  <Bodies3D::ComputeVolumeSquare@Evaluation.Replication.Square(void const*)>
               	jmp	 <L235>
               	lea	rdi,  <Bodies3D::ComputeVolumePyramid@Evaluation.Replication.Pyramid(void const*)>
               	jmp	 <L236>
               	lea	rdi,  <Bodies3D::ComputeVolumeEllipse@Evaluation.Replication.Ellipse(void const*)>
<L237>:
               	mov	qword ptr [r14], rdi
               	vmovups	ymmword ptr [r14 + 0x8], ymm3
               	vmovss	dword ptr [r14 + 0x28], xmm4
               	inc	rax
               	test	al, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	lea	rdi,  <Bodies3D::ComputeVolumeCube@Evaluation.Replication.Cube(void const*)>
               	jmp	 <L235>
               	lea	rdi,  <Bodies3D::ComputeVolumeCuboid@Evaluation.Replication.Cuboid(void const*)>
<L236>:
               	mov	qword ptr [r14], rdi
               	vmovups	ymmword ptr [r14 + 0x8], ymm3
               	vmovlps	qword ptr [r14 + 0x28], xmm4
               	inc	rax
               	test	al, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	lea	rdi,  <Bodies3D::ComputeVolumeCone@Evaluation.Replication.Cone(void const*)>
<L240>:
               	mov	qword ptr [r14], rdi
               	vmovups	ymmword ptr [r14 + 0x8], ymm3
               	vextractps	dword ptr [r14 + 0x28], xmm4, 0x1
               	inc	rax
               	test	al, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	lea	rdi,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
<L235>:
               	mov	qword ptr [r14], rdi
               	vmovups	ymmword ptr [r14 + 0x8], ymm3
               	inc	rax
               	test	al, 0x7
               	jne	 <L238>
<L239>:
               	mov	rdx, qword ptr [rsp + 0x220]
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	mov	r10, qword ptr [rsp + 0x338]
               	mov	r12, qword ptr [rsp + 0x330]
               	xor	r12, r10
               	mov	r13, qword ptr [rsp + 0x328]
               	xor	r13, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x220], rdx
               	xor	r10, r13
               	mov	qword ptr [rsp + 0x338], r10
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x328], r13
               	mov	rdx, qword ptr [rsp + 0x218]
               	mov	r9, qword ptr [rsp + 0x1e8]
               	mov	r13, qword ptr [rsp + 0x1e0]
               	xor	r12, rdi
               	mov	qword ptr [rsp + 0x330], r12
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	mov	r12, qword ptr [rsp + 0x318]
               	xor	r12, r9
               	mov	r10, qword ptr [rsp + 0x320]
               	xor	r10, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x218], rdx
               	xor	r9, r10
               	mov	qword ptr [rsp + 0x1e8], r9
               	xor	r12, rdi
               	mov	qword ptr [rsp + 0x318], r12
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x320], r10
               	mov	r10, qword ptr [rsp + 0x248]
               	mov	rdi, r10
               	shl	rdi, 0x11
               	mov	qword ptr [rsp + 0x360], rax
               	mov	rax, qword ptr [rsp + 0x310]
               	mov	r12, qword ptr [rsp + 0x200]
               	xor	rax, r12
               	xor	r13, r10
               	xor	r10, rax
               	xor	r12, r13
               	mov	qword ptr [rsp + 0x200], r12
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x310], rax
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x1e0], r13
               	mov	rdx, qword ptr [rsp + 0x90]
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	mov	r12, qword ptr [rsp + 0x1f0]
               	xor	r12, qword ptr [rsp + 0x1d8]
               	mov	rax, qword ptr [rsp + 0x1f8]
               	xor	rax, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x1d8], rax
               	xor	r12, rdi
               	mov	qword ptr [rsp + 0x1f0], r12
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x1f8], rax
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	mov	rax, qword ptr [rsp + 0x1d0]
               	mov	r12, qword ptr [rsp + 0x1c8]
               	xor	rax, r12
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x30], rdx
               	xor	r12, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x1c8], r12
               	rol	qword ptr [rsp + 0x88], 0x2d
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x1d0], rax
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	mov	r12, qword ptr [rsp + 0x1b8]
               	mov	rax, qword ptr [rsp + 0x1b0]
               	mov	qword ptr [rsp + 0x230], rbp
               	mov	qword ptr [rsp + 0x340], r8
               	mov	r8, rax
               	xor	r12, rax
               	mov	rax, qword ptr [rsp + 0x1c0]
               	xor	rax, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x28], rdx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x1b0], r8
               	xor	r12, rdi
               	mov	qword ptr [rsp + 0x1b8], r12
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x1c0], rax
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	mov	r8, qword ptr [rsp + 0x1a0]
               	mov	r12, qword ptr [rsp + 0x198]
               	xor	r8, r12
               	mov	rax, qword ptr [rsp + 0x1a8]
               	xor	rax, rdx
               	xor	rdx, r8
               	mov	qword ptr [rsp + 0x20], rdx
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x198], r12
               	xor	r8, rdi
               	mov	qword ptr [rsp + 0x1a0], r8
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x1a8], rax
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	mov	r8, qword ptr [rsp + 0x188]
               	mov	r12, qword ptr [rsp + 0x180]
               	xor	r8, r12
               	mov	rax, qword ptr [rsp + 0x190]
               	xor	rax, rdx
               	xor	rdx, r8
               	mov	qword ptr [rsp + 0x18], rdx
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x180], r12
               	xor	r8, rdi
               	mov	qword ptr [rsp + 0x188], r8
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x190], rax
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	mov	r8, qword ptr [rsp + 0x170]
               	mov	r12, qword ptr [rsp + 0x168]
               	xor	r8, r12
               	mov	rax, qword ptr [rsp + 0x178]
               	xor	rax, rdx
               	xor	rdx, r8
               	mov	qword ptr [rsp + 0x10], rdx
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x168], r12
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x178], rax
               	xor	r8, rdi
               	mov	qword ptr [rsp + 0x170], r8
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	mov	r8, qword ptr [rsp + 0x158]
               	mov	rax, qword ptr [rsp + 0x150]
               	mov	qword ptr [rsp + 0x228], rsi
               	mov	rsi, rax
               	xor	r8, rax
               	mov	rax, qword ptr [rsp + 0x160]
               	xor	rax, rdx
               	xor	rdx, r8
               	mov	qword ptr [rsp + 0x8], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x150], rsi
               	xor	r8, rdi
               	mov	qword ptr [rsp + 0x158], r8
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x160], rax
               	mov	r12, qword ptr [rsp + 0x78]
               	mov	rdi, r12
               	shl	rdi, 0x11
               	mov	rsi, qword ptr [rsp + 0x140]
               	mov	r15, qword ptr [rsp + 0x138]
               	xor	rsi, r15
               	mov	rax, qword ptr [rsp + 0x148]
               	xor	rax, r12
               	xor	r12, rsi
               	xor	r15, rax
               	mov	qword ptr [rsp + 0x138], r15
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0x140], rsi
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x148], rax
               	mov	r15, qword ptr [rsp + 0x70]
               	mov	rdi, r15
               	shl	rdi, 0x11
               	mov	rsi, qword ptr [rsp + 0x130]
               	mov	rbp, qword ptr [rsp + 0x128]
               	xor	rsi, rbp
               	mov	rax, qword ptr [rsp + 0x2f8]
               	xor	rax, r15
               	xor	r15, rsi
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x128], rbp
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0x130], rsi
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x2f8], rax
               	mov	rbp, qword ptr [rsp + 0x68]
               	mov	rdi, rbp
               	shl	rdi, 0x11
               	mov	rsi, qword ptr [rsp + 0x118]
               	mov	rax, qword ptr [rsp + 0x110]
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	rcx, rax
               	xor	rsi, rax
               	mov	rax, qword ptr [rsp + 0x120]
               	xor	rax, rbp
               	xor	rbp, rsi
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x110], rcx
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x120], rax
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0x118], rsi
               	mov	qword ptr [rsp + 0x358], r14
               	mov	r14, qword ptr [rsp + 0x60]
               	mov	rdi, r14
               	shl	rdi, 0x11
               	mov	rax, qword ptr [rsp + 0x108]
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	rax, rsi
               	xor	qword ptr [rsp + 0x80], r14
               	xor	r14, rax
               	xor	rsi, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0x100], rsi
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x108], rax
               	rol	qword ptr [rsp + 0x80], 0x2d
               	mov	r11, qword ptr [rsp + 0x58]
               	mov	rdi, r11
               	shl	rdi, 0x11
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	rsi, qword ptr [rsp + 0xe8]
               	mov	rax, qword ptr [rsp + 0xf8]
               	xor	rax, r11
               	xor	r11, rsi
               	xor	qword ptr [rsp + 0xe8], rax
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0xf0], rsi
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0xf8], rax
               	mov	rbx, qword ptr [rsp + 0x50]
               	mov	rdi, rbx
               	shl	rdi, 0x11
               	mov	rsi, qword ptr [rsp + 0xd8]
               	xor	rsi, qword ptr [rsp + 0xd0]
               	mov	rax, qword ptr [rsp + 0xe0]
               	xor	rax, rbx
               	xor	rbx, rsi
               	xor	qword ptr [rsp + 0xd0], rax
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0xd8], rsi
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0xe0], rax
               	mov	r9, qword ptr [rsp + 0x208]
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	rdi, r8
               	shl	rdi, 0x11
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	rsi, qword ptr [rsp + 0xb8]
               	mov	rax, qword ptr [rsp + 0xc8]
               	xor	rax, r8
               	xor	r8, rsi
               	xor	qword ptr [rsp + 0xb8], rax
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0xc8], rax
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0xc0], rsi
               	mov	rsi, qword ptr [rsp + 0x40]
               	mov	rdi, rsi
               	shl	rdi, 0x11
               	mov	rax, qword ptr [rsp + 0xb0]
               	mov	r13, qword ptr [rsp + 0xa8]
               	xor	rax, r13
               	xor	qword ptr [rsp + 0x230], rsi
               	xor	rsi, rax
               	xor	r13, qword ptr [rsp + 0x230]
               	mov	qword ptr [rsp + 0xa8], r13
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0xb0], rax
               	rol	qword ptr [rsp + 0x230], 0x2d
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	mov	r13, qword ptr [rsp + 0x300]
               	xor	r13, qword ptr [rsp + 0xa0]
               	mov	rax, qword ptr [rsp + 0x308]
               	xor	rax, rdx
               	xor	rdx, r13
               	xor	qword ptr [rsp + 0xa0], rax
               	xor	r13, rdi
               	mov	qword ptr [rsp + 0x300], r13
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x308], rax
               	mov	rdi, qword ptr [rsp + 0x228]
               	shl	rdi, 0x11
               	xor	r9, qword ptr [rsp + 0x340]
               	mov	rax, qword ptr [rsp + 0x228]
               	xor	qword ptr [rsp + 0x348], rax
               	xor	qword ptr [rsp + 0x228], r9
               	xor	r9, rdi
               	mov	qword ptr [rsp + 0x208], r9
               	mov	rax, qword ptr [rsp + 0x220]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	r13, [rdi + 8*rdi]
               	mov	rax, qword ptr [rsp + 0x218]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x248], r10
               	lea	r10, [r10 + 4*r10]
               	rol	r10, 0x7
               	lea	rax, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x250], r13
               	mov	qword ptr [rsp + 0x258], rdi
               	mov	rcx, qword ptr [rsp + 0x90]
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x260], rax
               	mov	rax, qword ptr [rsp + 0x360]
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	r10, [rcx + 4*rcx]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x268], rdi
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x270], r10
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	r10, [rcx + 4*rcx]
               	rol	r10, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r10, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x278], rdi
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x280], r10
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	r10, [rcx + 4*rcx]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x288], rdi
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x290], r10
               	mov	qword ptr [rsp + 0x78], r12
               	lea	r10, [r12 + 4*r12]
               	rol	r10, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r10, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x298], rdi
               	mov	qword ptr [rsp + 0x70], r15
               	lea	rdi, [r15 + 4*r15]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2a0], r10
               	mov	qword ptr [rsp + 0x68], rbp
               	lea	r10, [4*rbp]
               	add	r10, rbp
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x2a8], rdi
               	mov	qword ptr [rsp + 0x60], r14
               	lea	rdi, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x358]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x2b0], r10
               	mov	qword ptr [rsp + 0x58], r11
               	lea	r10, [r11 + 4*r11]
               	lea	r11,  <memset+0xa4c>
               	mov	rbp, qword ptr [rsp + 0x230]
               	rol	r10, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r10, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x2b8], rdi
               	mov	qword ptr [rsp + 0x50], rbx
               	lea	rdi, [rbx + 4*rbx]
               	mov	r9, qword ptr [rsp + 0x350]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2c0], r10
               	mov	qword ptr [rsp + 0x48], r8
               	lea	r10, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x340]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	mov	qword ptr [rsp + 0x2c8], rdi
               	mov	qword ptr [rsp + 0x40], rsi
               	lea	rdi, [rsi + 4*rsi]
               	mov	rsi, qword ptr [rsp + 0x228]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x2d0], r10
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2d8], rdi
               	mov	qword ptr [rsp + 0x38], rdx
               	lea	rdi, [rdx + 4*rdx]
               	mov	rcx, qword ptr [rsp + 0x348]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2e0], rdi
               	lea	rdi, [rsi + 4*rsi]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2e8], rdi
               	xor	r8, rcx
               	rol	rcx, 0x2d
               	add	r14, 0x48
               	cmp	r9, rax
               	jne	 <L233>
<L234>:
               	shl	rax, 0x3
               	lea	rax, [rax + 8*rax]
               	shr	rax, 0x3
               	imul	ebx, eax, 0x38e38e39
               	test	ebx, ebx
               	je	 <L241>
               	vxorps	xmm0, xmm0, xmm0
               	vmovups	ymmword ptr [rsp + 0x2b0], ymm0
               	vmovups	ymmword ptr [rsp + 0x290], ymm0
               	vmovups	ymmword ptr [rsp + 0x270], ymm0
               	vmovups	ymmword ptr [rsp + 0x250], ymm0
               	mov	r13, qword ptr [rsp + 0x210]
               	jmp	 <L242>
               	nop	word ptr cs:[rax + rax]
<L243>:
               	vmovss	xmm0, dword ptr [rsp + 0x254]
               	vmovss	dword ptr [rsp + 0x258], xmm0
               	mov	ebp, 0x1
<L251>:
               	mov	eax, ebp
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x250]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r13, r12
<L242>:
               	mov	r14d, ebx
               	neg	r14d
               	and	r14d, ebx
               	lea	rax, [r14 + 8*r14]
               	lea	r12, [r13 + 8*rax]
               	je	 <L243>
               	mov	dword ptr [rsp + 0x90], ebx
               	xor	ecx, ecx
               	mov	ebx, 0x1
               	mov	r15d, 0x1
               	jmp	 <L244>
<L246>:
               	mov	ebx, ebp
               	movsxd	rax, ebp
               	vmovss	dword ptr [rsp + 4*rax + 0x250], xmm0
               	add	r13, 0x48
               	mov	ecx, 0xfffffffe
               	sub	ecx, r15d
               	lea	edx, [r15 + 0x1]
               	bsr	esi, edx
               	xor	esi, 0x1f
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r15d, edx
               	cmp	r13, r12
               	je	 <L245>
<L244>:
               	mov	ebp, ecx
               	lea	rdi, [r13 + 0x8]
               	vzeroupper
               	call	qword ptr [r13]
               	mov	ecx, ebp
               	sub	ecx, ebx
               	jl	 <L246>
               	movsxd	rax, ebx
               	cmp	ecx, 0x1f
               	jb	 <L247>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vblendps	xmm0, xmm0, xmmword ptr , 0xe <memset+0xa20> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0x2b0]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vxorps	xmm2, xmm2, xmm2
               	vxorps	xmm3, xmm3, xmm3
               	nop	word ptr cs:[rax + rax]
<L248>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
               	jne	 <L248>
               	vaddps	ymm0, ymm1, ymm0
               	vaddps	ymm1, ymm3, ymm2
               	vaddps	ymm0, ymm1, ymm0
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rdx
               	je	 <L246>
               	add	rax, rdx
<L247>:
               	mov	ecx, ebp
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x250
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L249>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L249>
               	jmp	 <L246>
               	nop	word ptr cs:[rax + rax]
<L245>:
               	mov	ebx, dword ptr [rsp + 0x90]
               	sub	ebx, r14d
               	je	 <L250>
               	vmovss	dword ptr [rsp + 4*rax + 0x254], xmm0
               	mov	r13, r12
               	test	ebp, ebp
               	jns	 <L251>
               	jmp	 <L242>
<L250>:
               	mov	rbx, qword ptr [rsp + 0x238]
               	mov	r14, qword ptr [rsp + 0x240]
               	mov	rdi, qword ptr [rsp + 0x210]
               	test	rdi, rdi
               	jne	 <L252>
<L255>:
               	cmp	ebx, 0x2a
               	je	 <L253>
               	jmp	 <L254>
<L232>:
               	vxorps	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x238]
               	mov	rdi, qword ptr [rsp + 0x210]
               	test	rdi, rdi
               	jne	 <L252>
               	jmp	 <L255>
<L241>:
               	vxorps	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x238]
               	mov	rdi, qword ptr [rsp + 0x210]
               	mov	r14, qword ptr [rsp + 0x240]
<L252>:
               	vmovaps	xmmword ptr [rsp + 0x90], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x90]
               	cmp	ebx, 0x2a
               	jne	 <L254>
<L253>:
               	cmp	r14d, 0x186a0
               	jne	 <L254>
               	vucomiss	xmm0, dword ptr  <memset+0xa44>
               	jne	 <L256>
<L254>:
               	xor	eax, eax
               	add	rsp, 0x368
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L256>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x90], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x90]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x6a90>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xa38>
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

<Bodies3D::ComputeVolumeEllipse@Evaluation.Replication.Ellipse(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xa38>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<Bodies3D::ComputeVolumeRectangle@Evaluation.Replication.Rectangle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeSquare@Evaluation.Replication.Square(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeTriangle@Evaluation.Replication.Triangle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xa40>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<Bodies3D::ComputeVolumeCube@Evaluation.Replication.Cube(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<Bodies3D::ComputeVolumeCuboid@Evaluation.Replication.Cuboid(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

<Bodies3D::ComputeVolumePyramid@Evaluation.Replication.Pyramid(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xa3c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <memset+0xa48>
               	vmulss	xmm0, xmm1, xmm0
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

<Bodies3D::ComputeVolumeCylinder@Evaluation.Replication.Cylinder(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xa38>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<Bodies3D::ComputeVolumeCone@Evaluation.Replication.Cone(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xa34>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<Bodies3D::ComputeVolumeEllipsoid@Evaluation.Replication.Ellipsoid(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xa48>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x6a68>
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
