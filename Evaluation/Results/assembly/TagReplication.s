
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
               	call	qword ptr  <memset+0x6c00>
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
               	mov	rax, qword ptr  <memset+0x6c10>
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
               	mov	rax, qword ptr  <memset+0x6c18>
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
               	cmp	qword ptr , 0x0 <memset+0x6c20>
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
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
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

<initializer for module Meta.Random.Splitmix>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6RandomW8Splitmix__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6RandomW8Splitmix__in_chrg>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	call	 <initializer for module Meta.Auto.Bit.Field>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Bit.Field>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW3BitW5Field__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3BitW5Field__in_chrg>
               	call	 <initializer for module Meta.Memory.Constraint>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<initializer for module Meta.Memory.Constraint>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW10Constraint__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW10Constraint__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.Compare>
               	call	 <initializer for module Meta.Memory.Size.Scale>
               	call	 <initializer for module Meta.Memory.Alignment>
               	pop	rax
               	jmp	 <initializer for module Std>
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

<initializer for module Meta.Memory.Size.Compare>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW7Compare__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW7Compare__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Std>
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

<initializer for module Meta.Memory.Alignment>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW9Alignment__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW9Alignment__in_chrg>
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

<initializer for module Meta.Random.Xoroshiro>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6RandomW9Xoroshiro__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6RandomW9Xoroshiro__in_chrg>
               	call	 <initializer for module Meta.Random.Splitmix>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.TagReplication.Circle>
               	call	 <initializer for module Evaluation.TagReplication.Ellipse>
               	call	 <initializer for module Evaluation.TagReplication.Triangle>
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
               	sub	rsp, 0x418
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
               	movsx	edx, byte ptr [rax]
               	add	edx, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	edx, [rdx + 4*rdx]
               	movsx	ecx, cl
               	lea	edx, [rcx + 2*rdx]
               	add	edx, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	mov	qword ptr [rsp + 0x250], rdx
               	mov	ecx, edx
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x238], rcx
               	lea	rdi, [rcx + 8*rax]
               	mov	rsi, qword ptr  <memset+0x6c28>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	movsxd	rdx, ebx
               	vmovq	xmm0, rdx
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0xae0>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rcx, -0x61c8864680b583eb
               	add	rcx, rdx
               	shr	rcx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rcx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <memset+0xb18>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <memset+0xb00>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpbroadcastq	ymm2, qword ptr  <memset+0xb08>
               	vpxor	ymm0, ymm1, ymm0
               	vpmuludq	ymm1, ymm0, ymm2
               	vpbroadcastq	ymm2, qword ptr  <memset+0xb10>
               	vpsrlq	ymm3, ymm0, 0x20
               	vpmuludq	ymm3, ymm3, ymm2
               	vpaddq	ymm1, ymm1, ymm3
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm2
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm5, ymm1, ymm0
               	vmovq	rsi, xmm5
               	vpextrq	rdi, xmm5, 0x1
               	vextracti128	xmm0, ymm5, 0x1
               	vmovq	r8, xmm0
               	vpextrq	r9, xmm0, 0x1
               	xor	edx, edx
               	xor	r15d, r15d
               	xor	r13d, r13d
               	xor	ebp, ebp
               	xor	r12d, r12d
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	xor	r8, rsi
               	xor	r9, rdi
               	xor	rdi, r8
               	xor	rsi, r9
               	xor	r8, rcx
               	rol	r9, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L5>
<L4>:
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rdx
               	jae	 <L6>
               	xor	r12, rsi
               	xor	rbp, rdi
               	xor	r13, r8
               	xor	r15, r9
               	jmp	 <L6>
<L5>:
               	mov	qword ptr [rsp + 0x348], rbx
               	movabs	r14, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	word ptr [rax + rax]
<L9>:
               	mov	rdx, rdi
               	shl	rdx, 0x11
               	xor	r8, rsi
               	xor	r9, rdi
               	xor	rdi, r8
               	xor	rsi, r9
               	xor	r8, rdx
               	rol	r9, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L8>
<L7>:
               	bt	r14, rcx
               	jae	 <L9>
               	xor	r12, rsi
               	xor	rbp, rdi
               	xor	r13, r8
               	xor	r15, r9
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x320], r12
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	dword ptr [rax]
<L12>:
               	mov	r10, rdi
               	shl	r10, 0x11
               	xor	r8, rsi
               	xor	r9, rdi
               	xor	rdi, r8
               	xor	rsi, r9
               	xor	r8, r10
               	rol	r9, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L11>
<L10>:
               	bt	rcx, rdx
               	mov	r10, qword ptr [rsp + 0x320]
               	jae	 <L12>
               	xor	r10, rsi
               	mov	qword ptr [rsp + 0x320], r10
               	xor	rbp, rdi
               	xor	r13, r8
               	xor	r15, r9
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r10d, r10d
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
<L15>:
               	mov	r11, rdi
               	shl	r11, 0x11
               	xor	r8, rsi
               	xor	r9, rdi
               	xor	rdi, r8
               	xor	rsi, r9
               	xor	r8, r11
               	rol	r9, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L14>
<L13>:
               	bt	rdx, r10
               	jae	 <L15>
               	xor	qword ptr [rsp + 0x320], rsi
               	xor	rbp, rdi
               	xor	r13, r8
               	xor	r15, r9
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x228], rax
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x18], 0x0
               	mov	rsi, r15
               	mov	qword ptr [rsp + 0x10], 0x0
               	mov	rdi, r13
               	xor	r12d, r12d
               	mov	r8, rbp
               	mov	r9, qword ptr [rsp + 0x320]
               	mov	qword ptr [rsp + 0x1f0], 0x0
               	movabs	rax, 0x180ec6d33cfd0aba
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
               	bt	rax, r10
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp + 0x18], rsi
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
               	bt	r14, r10
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp + 0x18], rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp + 0x18], rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x10], rdi
               	xor	qword ptr [rsp + 0x18], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x1e8], 0x0
               	mov	rsi, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x1e0], 0x0
               	mov	rdi, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x8], 0x0
               	mov	r8, r12
               	mov	r9, qword ptr [rsp + 0x1f0]
               	mov	qword ptr [rsp + 0x1d8], 0x0
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
               	jmp	 <L30>
<L29>:
               	xor	r10d, r10d
               	jmp	 <L31>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x1d0], 0x0
               	mov	rsi, qword ptr [rsp + 0x1e8]
               	mov	qword ptr [rsp + 0x1c8], 0x0
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	mov	qword ptr [rsp + 0x60], 0x0
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	r9, qword ptr [rsp + 0x1d8]
               	mov	qword ptr [rsp + 0x1c0], 0x0
               	movabs	rax, 0x180ec6d33cfd0aba
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
               	bt	rax, r10
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
               	jmp	 <L42>
<L41>:
               	xor	r10d, r10d
               	jmp	 <L43>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
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
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
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
               	xor	qword ptr [rsp + 0x1c0], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	eax, eax
               	mov	rsi, qword ptr [rsp + 0x1d0]
               	mov	qword ptr [rsp + 0x1b8], 0x0
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	mov	qword ptr [rsp + 0x58], 0x0
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0x1c0]
               	mov	qword ptr [rsp + 0x1b0], 0x0
               	jmp	 <L52>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	rax, rsi
               	jmp	 <L54>
<L53>:
               	xor	r10d, r10d
               	jmp	 <L55>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	rax, rsi
               	jmp	 <L57>
<L56>:
               	xor	r10d, r10d
               	jmp	 <L58>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	rax, rsi
               	jmp	 <L60>
<L59>:
               	xor	r10d, r10d
               	jmp	 <L61>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	rax, rsi
               	jmp	 <L63>
<L62>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x1a8], 0x0
               	mov	rsi, rax
               	mov	qword ptr [rsp + 0x1a0], 0x0
               	mov	rdi, qword ptr [rsp + 0x1b8]
               	mov	qword ptr [rsp + 0x50], 0x0
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	r9, qword ptr [rsp + 0x1b0]
               	mov	qword ptr [rsp + 0x198], 0x0
               	jmp	 <L64>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x190], 0x0
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	mov	qword ptr [rsp + 0x188], 0x0
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	mov	qword ptr [rsp + 0x48], 0x0
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	r9, qword ptr [rsp + 0x198]
               	mov	qword ptr [rsp + 0x180], 0x0
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x178], 0x0
               	mov	rsi, qword ptr [rsp + 0x190]
               	mov	qword ptr [rsp + 0x170], 0x0
               	mov	rdi, qword ptr [rsp + 0x188]
               	mov	qword ptr [rsp + 0x40], 0x0
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0x180]
               	mov	qword ptr [rsp + 0x168], 0x0
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x160], 0x0
               	mov	rsi, qword ptr [rsp + 0x178]
               	mov	qword ptr [rsp + 0x158], 0x0
               	mov	rdi, qword ptr [rsp + 0x170]
               	mov	qword ptr [rsp + 0x38], 0x0
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0x168]
               	mov	qword ptr [rsp + 0x150], 0x0
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
               	jmp	 <L105>
<L104>:
               	xor	r10d, r10d
               	jmp	 <L106>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
               	jmp	 <L108>
<L107>:
               	xor	r10d, r10d
               	jmp	 <L109>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x150], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	xor	qword ptr [rsp + 0x160], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x148], 0x0
               	mov	rsi, qword ptr [rsp + 0x160]
               	mov	qword ptr [rsp + 0x140], 0x0
               	mov	rdi, qword ptr [rsp + 0x158]
               	mov	qword ptr [rsp + 0x30], 0x0
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	r9, qword ptr [rsp + 0x150]
               	mov	qword ptr [rsp + 0x138], 0x0
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
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
               	xor	qword ptr [rsp + 0x138], r9
               	xor	qword ptr [rsp + 0x30], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	xor	qword ptr [rsp + 0x148], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x130], 0x0
               	mov	rsi, qword ptr [rsp + 0x148]
               	mov	qword ptr [rsp + 0x128], 0x0
               	mov	rdi, qword ptr [rsp + 0x140]
               	mov	qword ptr [rsp + 0x28], 0x0
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	r9, qword ptr [rsp + 0x138]
               	mov	qword ptr [rsp + 0x120], 0x0
               	jmp	 <L124>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
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
               	xor	qword ptr [rsp + 0x120], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	xor	qword ptr [rsp + 0x130], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x118], 0x0
               	mov	rsi, qword ptr [rsp + 0x130]
               	mov	qword ptr [rsp + 0x110], 0x0
               	mov	rdi, qword ptr [rsp + 0x128]
               	mov	qword ptr [rsp + 0x98], 0x0
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x120]
               	mov	qword ptr [rsp + 0x108], 0x0
               	jmp	 <L136>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
               	jmp	 <L141>
<L140>:
               	xor	r10d, r10d
               	jmp	 <L142>
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
               	jmp	 <L144>
<L143>:
               	xor	r10d, r10d
               	jmp	 <L145>
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
               	xor	qword ptr [rsp + 0x108], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	qword ptr [rsp + 0x118], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x100], 0x0
               	mov	rsi, qword ptr [rsp + 0x118]
               	mov	qword ptr [rsp + 0xf8], 0x0
               	mov	rdi, qword ptr [rsp + 0x110]
               	mov	qword ptr [rsp + 0x90], 0x0
               	mov	r8, qword ptr [rsp + 0x98]
               	mov	r9, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0xf0], 0x0
               	jmp	 <L148>
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
               	jmp	 <L153>
<L152>:
               	xor	r10d, r10d
               	jmp	 <L154>
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
               	jmp	 <L156>
<L155>:
               	xor	r10d, r10d
               	jmp	 <L157>
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
               	xor	qword ptr [rsp + 0xf0], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	xor	qword ptr [rsp + 0x100], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xe8], 0x0
               	mov	rsi, qword ptr [rsp + 0x100]
               	mov	qword ptr [rsp + 0xe0], 0x0
               	mov	rdi, qword ptr [rsp + 0xf8]
               	mov	qword ptr [rsp + 0x88], 0x0
               	mov	r8, qword ptr [rsp + 0x90]
               	mov	r9, qword ptr [rsp + 0xf0]
               	mov	qword ptr [rsp + 0x218], 0x0
               	jmp	 <L160>
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
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
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
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
               	jmp	 <L165>
<L164>:
               	xor	r10d, r10d
               	jmp	 <L166>
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
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
               	jmp	 <L168>
<L167>:
               	xor	r10d, r10d
               	jmp	 <L169>
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
               	xor	qword ptr [rsp + 0x218], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	qword ptr [rsp + 0xe8], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xd8], 0x0
               	mov	rsi, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0xd0], 0x0
               	mov	rdi, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x80], 0x0
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	r9, qword ptr [rsp + 0x218]
               	mov	qword ptr [rsp + 0x210], 0x0
               	jmp	 <L172>
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
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
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
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
               	jmp	 <L177>
<L176>:
               	xor	r10d, r10d
               	jmp	 <L178>
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
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
               	jmp	 <L180>
<L179>:
               	xor	r10d, r10d
               	jmp	 <L181>
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
               	xor	qword ptr [rsp + 0x210], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	xor	qword ptr [rsp + 0xd8], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xc8], 0x0
               	mov	rsi, qword ptr [rsp + 0xd8]
               	mov	qword ptr [rsp + 0xc0], 0x0
               	mov	rdi, qword ptr [rsp + 0xd0]
               	mov	qword ptr [rsp + 0x78], 0x0
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	r9, qword ptr [rsp + 0x210]
               	mov	qword ptr [rsp + 0x208], 0x0
               	jmp	 <L184>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x78], r8
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
               	bt	r14, r10
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x78], r8
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x78], r8
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xb8], 0x0
               	mov	rsi, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0xb0], 0x0
               	mov	rdi, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0x70], 0x0
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	r9, qword ptr [rsp + 0x208]
               	mov	qword ptr [rsp + 0x200], 0x0
               	jmp	 <L196>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	bt	r14, r10
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	xor	qword ptr [rsp + 0x200], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
               	jmp	 <L207>
<L206>:
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xa8], 0x0
               	mov	rsi, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0xa0], 0x0
               	mov	rdi, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x68], 0x0
               	mov	r8, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0x200]
               	mov	qword ptr [rsp + 0x1f8], 0x0
               	jmp	 <L208>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
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
               	bt	r14, r10
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
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
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
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
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xa0], rdi
               	xor	qword ptr [rsp + 0xa8], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x248], rbp
               	mov	qword ptr [rsp + 0x310], r13
               	mov	qword ptr [rsp + 0x318], r15
               	xor	r10d, r10d
               	xor	r15d, r15d
               	mov	rsi, qword ptr [rsp + 0xa8]
               	mov	qword ptr [rsp + 0x220], 0x0
               	mov	rdi, qword ptr [rsp + 0xa0]
               	xor	ebp, ebp
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r9, qword ptr [rsp + 0x1f8]
               	xor	ebx, ebx
               	jmp	 <L220>
               	nop	word ptr cs:[rax + rax]
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
               	xor	rbx, r9
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	r15, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	jmp	 <L223>
               	nop	dword ptr [rax + rax]
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
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	r15, rsi
               	jmp	 <L225>
<L224>:
               	mov	qword ptr [rsp + 0x308], rax
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
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	r15, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	mov	r14, qword ptr [rsp + 0x320]
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
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x220], rdi
               	xor	r15, rsi
               	jmp	 <L231>
<L230>:
               	vpextrq	rax, xmm5, 0x1
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x20], rax
               	mov	qword ptr [rsp + 0x260], rax
               	mov	rax, qword ptr [rsp + 0x248]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x268], rax
               	mov	rdx, r12
               	lea	rax, [r12 + 4*r12]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x270], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x278], rax
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x280], rax
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x290], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x298], rax
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a0], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a8], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2b0], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rax
               	mov	rax, qword ptr [rsp + 0x98]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c0], rax
               	mov	rax, qword ptr [rsp + 0x90]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c8], rax
               	mov	rax, qword ptr [rsp + 0x88]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x80]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2d0], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rax
               	mov	rax, qword ptr [rsp + 0x78]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e0], rax
               	mov	rax, qword ptr [rsp + 0x70]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e8], rax
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [4*rbp]
               	add	rcx, rbp
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2f0], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rax
               	mov	r12, qword ptr [rsp + 0x250]
               	test	r12d, r12d
               	je	 <L232>
               	mov	qword ptr [rsp + 0x258], rdx
               	mov	rdi, qword ptr [rsp + 0x238]
               	lea	rax, [8*rdi]
               	lea	rax, [rax + 4*rax]
               	mov	r12, qword ptr [rsp + 0x228]
               	mov	rdx, r12
               	add	rdx, rax
               	neg	rdi
               	mov	esi, 0x1
               	vbroadcastss	ymm6, dword ptr  <memset+0xb20>
               	vmovdqa	xmm7, xmmword ptr  <memset+0xb40>
               	lea	r9,  <memset+0xb50>
               	mov	r10, r12
               	mov	r11, qword ptr [rsp + 0x18]
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x240], rdx
               	mov	qword ptr [rsp + 0x238], rdi
               	mov	r12, qword ptr [rsp + 0x20]
               	vmovups	ymmword ptr [rsp + 0x3d0], ymm6
               	jmp	 <L233>
<L235>:
               	vpermpd	ymm0, ymm2, 0x93        # ymm0 = ymm2[3,0,1,2]
               	vpermq	ymm1, ymm3, 0x39        # ymm1 = ymm3[1,2,3,0]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x260]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x2a0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x2e0]
               	vpsrlq	ymm2, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x260], ymm2
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2a0], ymm0
               	vpsrlq	ymm0, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2c0], ymm0
               	vpsrlq	ymm0, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2e0], ymm0
               	vmovq	r12, xmm2
<L238>:
               	add	r10, 0x28
               	lea	rax, [rdi + rsi]
               	inc	rax
               	inc	rsi
               	cmp	rax, 0x1
               	je	 <L234>
<L233>:
               	vmovups	ymm0, ymmword ptr [rsp + 0x278]
               	vmovups	ymm2, ymmword ptr [rsp + 0x288]
               	vmovdqu	xmm1, xmmword ptr [rsp + 0x2a8]
               	vpshufb	xmm3, xmm1, xmm7
               	vperm2f128	ymm4, ymm2, ymmword ptr [rsp + 0x268], 0x2 # ymm4 = mem[0,1],ymm2[0,1]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x2d8]
               	vinsertf128	ymm0, ymm0, xmmword ptr [rsp + 0x298], 0x1
               	vshufps	ymm0, ymm4, ymm0, 0x88  # ymm0 = ymm4[0,2],ymm0[0,2],ymm4[4,6],ymm0[4,6]
               	vandps	ymm0, ymm0, ymm6
               	vcvtdq2ps	ymm4, ymm0
               	vcvtdq2ps	xmm0, xmm3
               	movzx	eax, r12b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	vblendps	ymm2, ymm2, ymmword ptr [rsp + 0x268], 0xc0 # ymm2 = ymm2[0,1,2,3,4,5],mem[6,7]
               	vpblendd	ymm3, ymm1, ymmword ptr [rsp + 0x2b8], 0xfc # ymm3 = ymm1[0,1],mem[2,3,4,5,6,7]
               	sub	r12b, al
               	movzx	eax, r12b
               	movsxd	rax, dword ptr [r9 + 4*rax]
               	add	rax, r9
               	jmp	rax
               	vmovups	ymmword ptr [r10], ymm4
               	mov	byte ptr [rdx + rsi - 0x1], r12b
               	test	sil, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	nop	dword ptr [rax]
               	vmovups	ymmword ptr [r10], ymm4
               	vmovss	dword ptr [r10 + 0x20], xmm0
               	mov	byte ptr [rdx + rsi - 0x1], r12b
               	test	sil, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	nop
               	vmovups	ymmword ptr [r10], ymm4
               	vmovlps	qword ptr [r10 + 0x20], xmm0
               	mov	byte ptr [rdx + rsi - 0x1], r12b
               	test	sil, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	vmovups	ymmword ptr [r10], ymm4
               	vextractps	dword ptr [r10 + 0x20], xmm0, 0x1
               	mov	byte ptr [rdx + rsi - 0x1], r12b
               	test	sil, 0x7
               	jne	 <L235>
               	jmp	 <L236>
               	vmovups	ymmword ptr [rsp + 0x3b0], ymm4
               	vmovdqu	ymmword ptr [rsp + 0x350], ymm3
               	vmovups	ymmword ptr [rsp + 0x370], ymm2
               	mov	qword ptr [rsp + 0x20], r12
               	mov	r12, r10
               	mov	qword ptr [rsp + 0x230], rsi
               	mov	qword ptr [rsp + 0x10], r8
               	mov	qword ptr [rsp + 0x18], r11
               	vmovdqu	ymmword ptr [rsp + 0x320], ymm5
               	vperm2i128	ymm0, ymm1, ymmword ptr [rsp + 0x2b8], 0x2 # ymm0 = mem[0,1],ymm1[0,1]
               	vmovdqu	ymmword ptr [rsp + 0x390], ymm0
               	vmovups	ymm0, ymmword ptr [rsp + 0x2c8]
               	vinsertf128	ymm0, ymm0, xmmword ptr [rsp + 0x2e8], 0x1
               	vmovups	ymmword ptr [rsp + 0x3f0], ymm0
               	mov	edi, 0x20
               	mov	rsi, qword ptr  <memset+0x6c28>
               	vzeroupper
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vmovups	ymm6, ymmword ptr [rsp + 0x3d0]
               	test	rax, rax
               	je	 <L237>
               	vmovups	ymm0, ymmword ptr [rsp + 0x390]
               	vshufps	ymm0, ymm0, ymmword ptr [rsp + 0x3f0], 0x88 # ymm0 = ymm0[0,2],mem[0,2],ymm0[4,6],mem[4,6]
               	vandps	ymm0, ymm0, ymm6
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax], ymm0
<L237>:
               	mov	r10, r12
               	mov	qword ptr [r12], rax
               	vmovups	ymm0, ymmword ptr [rsp + 0x3b0]
               	vmovups	ymmword ptr [r12 + 0x8], ymm0
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x320]
               	mov	r11, qword ptr [rsp + 0x18]
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	rdx, qword ptr [rsp + 0x240]
               	mov	rsi, qword ptr [rsp + 0x230]
               	mov	rdi, qword ptr [rsp + 0x238]
               	vmovdqa	xmm7, xmmword ptr  <memset+0xb40>
               	lea	r9,  <memset+0xb50>
               	mov	r12, qword ptr [rsp + 0x20]
               	vmovups	ymm2, ymmword ptr [rsp + 0x370]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x350]
               	mov	byte ptr [rdx + rsi - 0x1], r12b
               	test	sil, 0x7
               	jne	 <L235>
               	nop	word ptr cs:[rax + rax]
<L236>:
               	vpermq	ymm0, ymm5, 0xe3        # ymm0 = ymm5[3,0,2,3]
               	vpermq	ymm1, ymm5, 0xe9        # ymm1 = ymm5[1,2,2,3]
               	vpextrq	rcx, xmm5, 0x1
               	vpxor	xmm0, xmm1, xmm0
               	vpextrq	rdx, xmm0, 0x1
               	mov	rax, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x390], rax
               	shl	rcx, 0x11
               	xor	rcx, rdx
               	vmovq	xmm1, rcx
               	vmovq	rcx, xmm0
               	rol	rcx, 0x2d
               	vmovq	xmm2, rcx
               	mov	rax, qword ptr [rsp + 0x248]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	qword ptr [rsp + 0x230], rsi
               	mov	rsi, qword ptr [rsp + 0x310]
               	xor	rsi, r14
               	mov	rdx, qword ptr [rsp + 0x318]
               	xor	rdx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x248], rax
               	xor	r14, rdx
               	mov	qword ptr [rsp + 0x320], r14
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x318], rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x310], rsi
               	mov	rax, qword ptr [rsp + 0x258]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0x1f0]
               	xor	r8, rdx
               	xor	r11, rax
               	xor	rax, r8
               	mov	qword ptr [rsp + 0x258], rax
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x1f0], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x10], r8
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x18], r11
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	mov	rdx, qword ptr [rsp + 0x1d8]
               	mov	qword ptr [rsp + 0x350], rbx
               	mov	rbx, rdx
               	xor	rsi, rdx
               	mov	rdx, qword ptr [rsp + 0x1e8]
               	xor	rdx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x8], rax
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x1d8], rbx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x1e0], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x1e8], rdx
               	mov	rax, qword ptr [rsp + 0x60]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	mov	rbx, qword ptr [rsp + 0x1c0]
               	xor	rsi, rbx
               	mov	rdx, qword ptr [rsp + 0x1d0]
               	xor	rdx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x60], rax
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x1c0], rbx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x1c8], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x1d0], rdx
               	mov	rax, qword ptr [rsp + 0x58]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x1b8]
               	mov	rbx, qword ptr [rsp + 0x1b0]
               	xor	rsi, rbx
               	mov	rdx, qword ptr [rsp + 0x308]
               	xor	rdx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x58], rax
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x1b0], rbx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x308], rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x1b8], rsi
               	mov	rax, qword ptr [rsp + 0x50]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	mov	rbx, qword ptr [rsp + 0x198]
               	xor	rsi, rbx
               	mov	rdx, qword ptr [rsp + 0x1a8]
               	xor	rdx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x50], rax
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x198], rbx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x1a0], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x1a8], rdx
               	mov	rax, qword ptr [rsp + 0x48]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x188]
               	mov	rbx, qword ptr [rsp + 0x180]
               	xor	rsi, rbx
               	mov	rdx, qword ptr [rsp + 0x190]
               	xor	rdx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x48], rax
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x180], rbx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x188], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x190], rdx
               	mov	rax, qword ptr [rsp + 0x40]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x170]
               	mov	rbx, qword ptr [rsp + 0x168]
               	xor	rsi, rbx
               	mov	rdx, qword ptr [rsp + 0x178]
               	xor	rdx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x40], rax
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x168], rbx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x170], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x178], rdx
               	mov	rax, qword ptr [rsp + 0x38]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x158]
               	mov	rbx, qword ptr [rsp + 0x150]
               	xor	rsi, rbx
               	mov	rdx, qword ptr [rsp + 0x160]
               	xor	rdx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x38], rax
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x150], rbx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x160], rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x158], rsi
               	mov	rax, qword ptr [rsp + 0x30]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x140]
               	mov	rbx, qword ptr [rsp + 0x138]
               	xor	rsi, rbx
               	mov	rdx, qword ptr [rsp + 0x148]
               	xor	rdx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x30], rax
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x138], rbx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x140], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x148], rdx
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x128]
               	mov	rbx, qword ptr [rsp + 0x120]
               	xor	rsi, rbx
               	mov	rdx, qword ptr [rsp + 0x130]
               	xor	rdx, rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x28], rax
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x120], rbx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x128], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x130], rdx
               	mov	r13, qword ptr [rsp + 0x98]
               	mov	rcx, r13
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x110]
               	mov	rax, qword ptr [rsp + 0x108]
               	xor	rsi, rax
               	mov	rdx, qword ptr [rsp + 0x118]
               	xor	rdx, r13
               	xor	r13, rsi
               	xor	rax, rdx
               	mov	qword ptr [rsp + 0x108], rax
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x110], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x118], rdx
               	mov	qword ptr [rsp + 0x370], r15
               	mov	r15, qword ptr [rsp + 0x90]
               	mov	rsi, r15
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0xf8]
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rdx, rcx
               	mov	rax, qword ptr [rsp + 0x100]
               	xor	rax, r15
               	xor	r15, rdx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xf0], rcx
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x100], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0xf8], rdx
               	mov	r11, qword ptr [rsp + 0x88]
               	mov	rcx, r11
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0xe0]
               	mov	rdx, qword ptr [rsp + 0x218]
               	xor	rax, rdx
               	mov	rdx, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0x20], rbp
               	mov	r12, qword ptr [rsp + 0x220]
               	mov	rbp, rdx
               	xor	rbp, r11
               	xor	r11, rax
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xe0], rax
               	mov	qword ptr [rsp + 0x3b0], r10
               	mov	r10, qword ptr [rsp + 0x80]
               	mov	rcx, r10
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0xd0]
               	mov	rdx, qword ptr [rsp + 0x210]
               	xor	rax, rdx
               	mov	r14, qword ptr [rsp + 0xd8]
               	xor	r14, r10
               	xor	r10, rax
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xd0], rax
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	rcx, r8
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0xc0]
               	mov	rdx, qword ptr [rsp + 0x208]
               	xor	rax, rdx
               	mov	rbx, qword ptr [rsp + 0xc8]
               	xor	rbx, r8
               	xor	r8, rax
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xc0], rax
               	mov	rdi, qword ptr [rsp + 0x70]
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0xb0]
               	mov	rdx, qword ptr [rsp + 0x200]
               	xor	rax, rdx
               	mov	r9, qword ptr [rsp + 0xb8]
               	xor	r9, rdi
               	xor	rdi, rax
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xb0], rax
               	mov	rsi, qword ptr [rsp + 0x68]
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0xa0]
               	mov	rdx, qword ptr [rsp + 0x1f8]
               	xor	rax, rdx
               	mov	rdx, qword ptr [rsp + 0xa8]
               	xor	rdx, rsi
               	xor	rsi, rax
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xa0], rax
               	mov	rcx, qword ptr [rsp + 0x20]
               	shl	rcx, 0x11
               	xor	r12, qword ptr [rsp + 0x350]
               	mov	rax, qword ptr [rsp + 0x20]
               	xor	qword ptr [rsp + 0x370], rax
               	xor	qword ptr [rsp + 0x20], r12
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x220], r12
               	mov	rax, qword ptr [rsp + 0x390]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r12, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x248]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x258]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x260], r12
               	mov	qword ptr [rsp + 0x268], rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x270], rcx
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x278], rax
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x280], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x290], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x298], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2a0], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a8], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b0], rcx
               	mov	qword ptr [rsp + 0x98], r13
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rax
               	mov	qword ptr [rsp + 0x90], r15
               	lea	rax, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x370]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2c0], rcx
               	mov	qword ptr [rsp + 0x88], r11
               	lea	rcx, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x18]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rax
               	mov	qword ptr [rsp + 0x80], r10
               	lea	rax, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x3b0]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	qword ptr [rsp + 0x78], r8
               	lea	rcx, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x10]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rax
               	mov	qword ptr [rsp + 0x70], rdi
               	lea	rax, [rdi + 4*rdi]
               	mov	rdi, qword ptr [rsp + 0x238]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2e0], rcx
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e8], rax
               	mov	qword ptr [rsp + 0x68], rsi
               	lea	rax, [rsi + 4*rsi]
               	mov	rsi, qword ptr [rsp + 0x230]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f0], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f8], rax
               	xor	qword ptr [rsp + 0x218], rbp
               	rol	rbp, 0x2d
               	mov	qword ptr [rsp + 0xe8], rbp
               	mov	rbp, qword ptr [rsp + 0x20]
               	vpxor	xmm0, xmm0, xmm5
               	xor	qword ptr [rsp + 0x210], r14
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0xd8], r14
               	mov	r14, qword ptr [rsp + 0x320]
               	vpbroadcastq	ymm1, xmm1
               	xor	qword ptr [rsp + 0x208], rbx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0xc8], rbx
               	mov	rbx, qword ptr [rsp + 0x350]
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0x200], r9
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xb8], r9
               	lea	r9,  <memset+0xb50>
               	vpbroadcastq	ymm1, xmm2
               	xor	qword ptr [rsp + 0x1f8], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0xa8], rdx
               	mov	rdx, qword ptr [rsp + 0x240]
               	vpblendd	ymm5, ymm0, ymm1, 0xc0  # ymm5 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	xor	rbx, r15
               	rol	r15, 0x2d
               	jmp	 <L238>
<L234>:
               	mov	r12, qword ptr [rsp + 0x250]
               	test	r12d, r12d
               	je	 <L239>
               	mov	qword ptr [rsp + 0x230], rsi
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x2c0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x2a0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x260], ymm0
               	mov	r14, r12
               	lea	r12,  <memset+0xb84>
               	vmovss	xmm4, dword ptr  <memset+0xb28>
               	vpxor	xmm5, xmm5, xmm5
               	vmovss	xmm6, dword ptr  <memset+0xb30>
               	vmovss	xmm7, dword ptr  <memset+0xb2c>
               	vmovss	xmm8, dword ptr  <memset+0xb38>
               	vmovss	xmm9, dword ptr  <memset+0xb24>
               	mov	ebp, r14d
               	mov	rax, qword ptr [rsp + 0x228]
               	mov	rcx, rdx
               	jmp	 <L240>
<L253>:
               	mov	eax, esi
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x260]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovss	xmm9, dword ptr  <memset+0xb24>
               	vmovss	xmm8, dword ptr  <memset+0xb38>
               	vmovss	xmm7, dword ptr  <memset+0xb2c>
               	vmovss	xmm6, dword ptr  <memset+0xb30>
               	vpxor	xmm5, xmm5, xmm5
               	vmovss	xmm4, dword ptr  <memset+0xb28>
               	mov	rax, r13
               	mov	rcx, rbx
<L240>:
               	mov	edx, ebp
               	neg	edx
               	and	edx, ebp
               	lea	rsi, [rdx + 4*rdx]
               	lea	r13, [rax + 8*rsi]
               	lea	rbx, [rcx + rdx]
               	test	edx, edx
               	je	 <L241>
               	mov	qword ptr [rsp + 0x8], rbx
               	mov	edi, 0x1
               	xor	r11d, r11d
               	mov	r9d, 0x1
               	jmp	 <L242>
               	nop	dword ptr [rax]
<L248>:
               	movsxd	r10, esi
               	vmovss	dword ptr [rsp + 4*r10 + 0x260], xmm0
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
               	cmp	rax, r13
               	je	 <L243>
<L242>:
               	mov	esi, r11d
               	movzx	r8d, byte ptr [rcx]
               	movsxd	r8, dword ptr [r12 + 4*r8]
               	add	r8, r12
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
               	vpblendd	xmm0, xmm5, xmm0, 0x1   # xmm0 = xmm0[0],xmm5[1,2,3]
               	lea	r15, [4*r10]
               	and	r15, -0x80
               	lea	rbx, [rsp + 0x2c0]
               	lea	rbx, [rbx + 4*r9]
               	vpxor	xmm1, xmm1, xmm1
               	xor	r14d, r14d
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	dword ptr [rax + rax]
<L250>:
               	vaddps	ymm0, ymm0, ymmword ptr [rbx + r14 - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rbx + r14 - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rbx + r14 - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rbx + r14]
               	sub	r14, -0x80
               	cmp	r15, r14
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
               	add	r9, 0x260
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
               	vmovd	xmm0, dword ptr [rsp + 4*r10 + 0x260]
               	sub	ebp, edx
               	je	 <L252>
               	vmovd	dword ptr [rsp + 4*r10 + 0x264], xmm0
               	mov	rax, r13
               	mov	rbx, qword ptr [rsp + 0x8]
               	mov	rcx, rbx
               	test	esi, esi
               	jns	 <L253>
               	jmp	 <L240>
<L241>:
               	vmovd	xmm0, dword ptr [rsp + 0x264]
               	sub	ebp, edx
               	je	 <L252>
               	vmovd	dword ptr [rsp + 0x268], xmm0
               	mov	esi, 0x1
               	jmp	 <L253>
<L252>:
               	mov	r12, qword ptr [rsp + 0x250]
               	mov	r14, qword ptr [rsp + 0x228]
               	mov	rdx, qword ptr [rsp + 0x240]
               	mov	rsi, qword ptr [rsp + 0x230]
               	jmp	 <L254>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r14, qword ptr [rsp + 0x228]
               	test	r14, r14
               	je	 <L255>
<L259>:
               	vmovd	dword ptr [rsp + 0x8], xmm0
               	mov	rdi, r14
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovd	xmm0, dword ptr [rsp + 0x8]
<L255>:
               	cmp	dword ptr [rsp + 0x348], 0x2a
               	jne	 <L256>
               	cmp	r12d, 0x186a0
               	jne	 <L256>
               	vucomiss	xmm0, dword ptr  <memset+0xb34>
               	jne	 <L257>
<L256>:
               	xor	eax, eax
               	add	rsp, 0x418
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L239>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r14, qword ptr [rsp + 0x228]
<L254>:
               	add	rsi, -0x2
               	mov	rbx, -0x1
               	mov	r15, r14
               	vmovd	dword ptr [rsp + 0x8], xmm0
               	jmp	 <L258>
<L260>:
               	add	r15, 0x28
               	inc	rbx
               	cmp	rsi, rbx
               	je	 <L259>
<L258>:
               	cmp	byte ptr [rdx + rbx + 0x1], 0xc
               	jne	 <L260>
               	mov	rdi, qword ptr [r15]
               	test	rdi, rdi
               	je	 <L260>
               	mov	r13, rsi
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovd	xmm0, dword ptr [rsp + 0x8]
               	mov	rsi, r13
               	mov	rdx, qword ptr [rsp + 0x240]
               	jmp	 <L260>
<L257>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x8], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x8]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x6c30>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x6c08>
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
