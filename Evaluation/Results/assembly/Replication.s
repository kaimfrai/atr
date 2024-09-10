
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
               	call	qword ptr  <memset+0x6d30>
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
               	mov	rax, qword ptr  <memset+0x6d40>
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
               	mov	rax, qword ptr  <memset+0x6d48>
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
               	cmp	qword ptr , 0x0 <memset+0x6d50>
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
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.Replication.Circle>
               	call	 <initializer for module Evaluation.Replication.Ellipse>
               	call	 <initializer for module Evaluation.Replication.Triangle>
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
               	sub	rsp, 0x338
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
               	mov	qword ptr [rsp + 0x2c0], rdx
               	movsxd	rax, edx
               	shl	rax, 0x3
               	lea	rdi, [rax + 8*rax]
               	mov	rsi, qword ptr  <memset+0x6d58>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x1f0], rax
               	movsxd	rax, ebx
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0xae0>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rcx, -0x61c8864680b583eb
               	add	rcx, rax
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
               	vpxor	ymm0, ymm1, ymm0
               	vmovq	rax, xmm0
               	vpextrq	rcx, xmm0, 0x1
               	vextracti128	xmm1, ymm0, 0x1
               	vmovq	rdx, xmm1
               	vpextrq	rsi, xmm1, 0x1
               	xor	edi, edi
               	xor	r9d, r9d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	xor	r11d, r11d
               	jmp	 <L4>
               	nop	word ptr [rax + rax]
<L6>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L5>
<L4>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L6>
               	xor	r11, rax
               	xor	r15, rcx
               	xor	r10, rdx
               	xor	r9, rsi
               	jmp	 <L6>
<L5>:
               	xor	edi, edi
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
<L9>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L8>
<L7>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L9>
               	xor	r11, rax
               	xor	r15, rcx
               	xor	r10, rdx
               	xor	r9, rsi
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
<L12>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	r11, rax
               	xor	r15, rcx
               	xor	r10, rdx
               	xor	r9, rsi
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
<L15>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	r11, rax
               	xor	r15, rcx
               	xor	r10, rdx
               	xor	r9, rsi
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	rax, r9
               	xor	r12d, r12d
               	mov	rcx, r10
               	xor	r13d, r13d
               	mov	rdx, r15
               	mov	rsi, r11
               	xor	ebp, ebp
               	jmp	 <L16>
               	nop	dword ptr [rax]
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
               	xor	rbp, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r14, rax
               	jmp	 <L18>
<L17>:
               	xor	edi, edi
               	jmp	 <L19>
               	nop	word ptr cs:[rax + rax]
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
               	xor	rbp, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r14, rax
               	jmp	 <L21>
<L20>:
               	xor	edi, edi
               	jmp	 <L22>
               	nop	word ptr cs:[rax + rax]
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
               	xor	rbp, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r14, rax
               	jmp	 <L24>
<L23>:
               	xor	edi, edi
               	jmp	 <L25>
               	nop	word ptr cs:[rax + rax]
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
               	xor	rbp, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r14, rax
               	jmp	 <L27>
<L26>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], 0x0
               	mov	rax, r14
               	mov	qword ptr [rsp + 0x1c0], 0x0
               	mov	rcx, r12
               	mov	qword ptr [rsp + 0x80], 0x0
               	mov	rdx, r13
               	mov	rsi, rbp
               	mov	qword ptr [rsp + 0x1b8], 0x0
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1b8], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	qword ptr [rsp + 0x1b8], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	qword ptr [rsp + 0x1b8], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	qword ptr [rsp + 0x1b8], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b0], 0x0
               	mov	rax, qword ptr [rsp + 0x1c8]
               	mov	qword ptr [rsp + 0x1a8], 0x0
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	qword ptr [rsp + 0x40], 0x0
               	mov	rdx, qword ptr [rsp + 0x80]
               	mov	rsi, qword ptr [rsp + 0x1b8]
               	mov	qword ptr [rsp + 0x1a0], 0x0
               	jmp	 <L40>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
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
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
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
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
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
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x198], 0x0
               	mov	rax, qword ptr [rsp + 0x1b0]
               	mov	qword ptr [rsp + 0x190], 0x0
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	mov	qword ptr [rsp + 0x38], 0x0
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	mov	qword ptr [rsp + 0x188], 0x0
               	jmp	 <L52>
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
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x198], rax
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x180], 0x0
               	mov	rax, qword ptr [rsp + 0x198]
               	mov	qword ptr [rsp + 0x178], 0x0
               	mov	rcx, qword ptr [rsp + 0x190]
               	mov	qword ptr [rsp + 0x30], 0x0
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0x188]
               	mov	qword ptr [rsp + 0x170], 0x0
               	jmp	 <L64>
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
               	xor	qword ptr [rsp + 0x170], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x178], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	xor	qword ptr [rsp + 0x170], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x178], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	xor	qword ptr [rsp + 0x170], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x178], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	xor	qword ptr [rsp + 0x170], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x178], rcx
               	xor	qword ptr [rsp + 0x180], rax
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], 0x0
               	mov	rax, qword ptr [rsp + 0x180]
               	mov	qword ptr [rsp + 0x160], 0x0
               	mov	rcx, qword ptr [rsp + 0x178]
               	mov	qword ptr [rsp + 0x28], 0x0
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0x170]
               	mov	qword ptr [rsp + 0x158], 0x0
               	jmp	 <L76>
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
               	xor	qword ptr [rsp + 0x158], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	xor	qword ptr [rsp + 0x158], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	xor	qword ptr [rsp + 0x158], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	xor	qword ptr [rsp + 0x158], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	qword ptr [rsp + 0x168], rax
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], 0x0
               	mov	rax, qword ptr [rsp + 0x168]
               	mov	qword ptr [rsp + 0x148], 0x0
               	mov	rcx, qword ptr [rsp + 0x160]
               	mov	qword ptr [rsp + 0x20], 0x0
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x158]
               	mov	qword ptr [rsp + 0x140], 0x0
               	jmp	 <L88>
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
               	xor	qword ptr [rsp + 0x140], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x148], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	xor	qword ptr [rsp + 0x140], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x148], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	xor	qword ptr [rsp + 0x140], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x148], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	xor	qword ptr [rsp + 0x140], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x148], rcx
               	xor	qword ptr [rsp + 0x150], rax
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], 0x0
               	mov	rax, qword ptr [rsp + 0x150]
               	mov	qword ptr [rsp + 0x130], 0x0
               	mov	rcx, qword ptr [rsp + 0x148]
               	mov	qword ptr [rsp + 0x18], 0x0
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0x140]
               	mov	qword ptr [rsp + 0x128], 0x0
               	jmp	 <L100>
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
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	qword ptr [rsp + 0x138], rax
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
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	qword ptr [rsp + 0x138], rax
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
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	qword ptr [rsp + 0x138], rax
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
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	qword ptr [rsp + 0x138], rax
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], 0x0
               	mov	rax, qword ptr [rsp + 0x138]
               	mov	qword ptr [rsp + 0x118], 0x0
               	mov	rcx, qword ptr [rsp + 0x130]
               	mov	qword ptr [rsp + 0x10], 0x0
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x128]
               	mov	qword ptr [rsp + 0x110], 0x0
               	jmp	 <L112>
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
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x120], rax
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
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x120], rax
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
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x120], rax
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
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], 0x0
               	mov	rax, qword ptr [rsp + 0x120]
               	mov	qword ptr [rsp + 0x100], 0x0
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	qword ptr [rsp + 0x8], 0x0
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x110]
               	mov	qword ptr [rsp + 0xf8], 0x0
               	jmp	 <L124>
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0x108], rax
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], 0x0
               	mov	rax, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0xe8], 0x0
               	mov	rcx, qword ptr [rsp + 0x100]
               	mov	qword ptr [rsp + 0x70], 0x0
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0xf8]
               	mov	qword ptr [rsp + 0xe0], 0x0
               	jmp	 <L136>
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], 0x0
               	mov	rax, qword ptr [rsp + 0xf0]
               	mov	qword ptr [rsp + 0xd0], 0x0
               	mov	rcx, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0x68], 0x0
               	mov	rdx, qword ptr [rsp + 0x70]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0xc8], 0x0
               	jmp	 <L148>
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
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], 0x0
               	mov	rax, qword ptr [rsp + 0xd8]
               	mov	qword ptr [rsp + 0xb8], 0x0
               	mov	rcx, qword ptr [rsp + 0xd0]
               	mov	qword ptr [rsp + 0x60], 0x0
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	rsi, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0x1e8], 0x0
               	jmp	 <L160>
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
               	xor	qword ptr [rsp + 0x1e8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
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
               	xor	qword ptr [rsp + 0x1e8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
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
               	xor	qword ptr [rsp + 0x1e8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
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
               	xor	qword ptr [rsp + 0x1e8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb0], 0x0
               	mov	rax, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0xa8], 0x0
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x58], 0x0
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rsi, qword ptr [rsp + 0x1e8]
               	mov	qword ptr [rsp + 0x1e0], 0x0
               	jmp	 <L172>
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
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
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
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
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
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
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
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa0], 0x0
               	mov	rax, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x98], 0x0
               	mov	rcx, qword ptr [rsp + 0xa8]
               	mov	qword ptr [rsp + 0x50], 0x0
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	mov	qword ptr [rsp + 0x1d8], 0x0
               	jmp	 <L184>
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0xa0], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0xa0], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0xa0], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0xa0], rax
               	jmp	 <L195>
<L194>:
               	mov	qword ptr [rsp + 0x2f8], r10
               	mov	qword ptr [rsp + 0x300], r9
               	xor	r10d, r10d
               	xor	edx, edx
               	mov	rdi, qword ptr [rsp + 0xa0]
               	xor	ecx, ecx
               	mov	r8, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x48], 0x0
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	mov	qword ptr [rsp + 0x1d0], 0x0
               	jmp	 <L196>
               	nop	dword ptr [rax]
<L198>:
               	mov	rax, r9
               	shl	rax, 0x11
               	xor	r8, rsi
               	xor	rdi, r9
               	xor	r9, r8
               	xor	rsi, rdi
               	xor	r8, rax
               	rol	rdi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L197>
<L196>:
               	movabs	rax, 0x180ec6d33cfd0aba
               	bt	rax, r10
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x1d0], rsi
               	xor	qword ptr [rsp + 0x48], r9
               	xor	rcx, r8
               	xor	rdx, rdi
               	jmp	 <L198>
<L197>:
               	xor	r10d, r10d
               	jmp	 <L199>
               	nop	dword ptr [rax]
<L201>:
               	mov	rax, r9
               	shl	rax, 0x11
               	xor	r8, rsi
               	xor	rdi, r9
               	xor	r9, r8
               	xor	rsi, rdi
               	xor	r8, rax
               	rol	rdi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L200>
<L199>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, r10
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x1d0], rsi
               	xor	qword ptr [rsp + 0x48], r9
               	xor	rcx, r8
               	xor	rdx, rdi
               	jmp	 <L201>
<L200>:
               	xor	eax, eax
               	jmp	 <L202>
               	nop	dword ptr [rax]
<L204>:
               	xor	qword ptr [rsp + 0x1d0], rsi
               	xor	qword ptr [rsp + 0x48], r9
               	mov	rcx, r10
               	xor	rcx, r8
               	xor	rdx, rdi
<L205>:
               	mov	r10, r9
               	shl	r10, 0x11
               	xor	r8, rsi
               	xor	rdi, r9
               	xor	r9, r8
               	xor	rsi, rdi
               	xor	r8, r10
               	rol	rdi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L203>
<L202>:
               	mov	r10, rcx
               	movabs	rcx, -0x56a7d9e71fc03656
               	bt	rcx, rax
               	jb	 <L204>
               	mov	rcx, r10
               	jmp	 <L205>
<L203>:
               	xor	eax, eax
               	jmp	 <L206>
               	nop	word ptr cs:[rax + rax]
<L208>:
               	xor	qword ptr [rsp + 0x1d0], rsi
               	xor	qword ptr [rsp + 0x48], r9
               	mov	rcx, r10
               	xor	rcx, r8
               	xor	rdx, rdi
<L209>:
               	mov	r10, r9
               	shl	r10, 0x11
               	xor	r8, rsi
               	xor	rdi, r9
               	xor	r9, r8
               	xor	rsi, rdi
               	xor	r8, r10
               	rol	rdi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L207>
<L206>:
               	mov	r10, rcx
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rax
               	jb	 <L208>
               	mov	rcx, r10
               	jmp	 <L209>
<L207>:
               	mov	qword ptr [rsp + 0x1f8], r13
               	mov	qword ptr [rsp + 0x2e8], r14
               	mov	qword ptr [rsp + 0x2f0], r11
               	mov	qword ptr [rsp + 0x218], rbx
               	xor	r9d, r9d
               	mov	qword ptr [rsp + 0x78], 0x0
               	mov	rdi, rdx
               	xor	esi, esi
               	mov	r8, rcx
               	xor	r14d, r14d
               	mov	rbx, qword ptr [rsp + 0x48]
               	mov	r11, qword ptr [rsp + 0x1d0]
               	xor	r13d, r13d
               	jmp	 <L210>
               	nop	word ptr [rax + rax]
<L212>:
               	mov	rax, rbx
               	shl	rax, 0x11
               	xor	r8, r11
               	xor	rdi, rbx
               	xor	rbx, r8
               	xor	r11, rdi
               	xor	r8, rax
               	rol	rdi, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L211>
<L210>:
               	movabs	rax, 0x180ec6d33cfd0aba
               	bt	rax, r9
               	jae	 <L212>
               	xor	r13, r11
               	xor	r14, rbx
               	xor	rsi, r8
               	xor	qword ptr [rsp + 0x78], rdi
               	jmp	 <L212>
<L211>:
               	xor	r9d, r9d
               	jmp	 <L213>
               	nop	dword ptr [rax + rax]
<L215>:
               	mov	rax, rbx
               	shl	rax, 0x11
               	xor	r8, r11
               	xor	rdi, rbx
               	xor	rbx, r8
               	xor	r11, rdi
               	xor	r8, rax
               	rol	rdi, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L214>
<L213>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, r9
               	jae	 <L215>
               	xor	r13, r11
               	xor	r14, rbx
               	xor	rsi, r8
               	xor	qword ptr [rsp + 0x78], rdi
               	jmp	 <L215>
<L214>:
               	mov	qword ptr [rsp + 0x2d0], rcx
               	xor	eax, eax
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L216>
               	nop	dword ptr [rax]
<L218>:
               	mov	r9, rbx
               	shl	r9, 0x11
               	xor	r8, r11
               	xor	rdi, rbx
               	xor	rbx, r8
               	xor	r11, rdi
               	xor	r8, r9
               	rol	rdi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L217>
<L216>:
               	bt	rcx, rax
               	jae	 <L218>
               	xor	r13, r11
               	xor	r14, rbx
               	xor	rsi, r8
               	xor	qword ptr [rsp + 0x78], rdi
               	jmp	 <L218>
<L217>:
               	xor	eax, eax
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L219>
               	nop	word ptr [rax + rax]
<L221>:
               	mov	r9, rbx
               	shl	r9, 0x11
               	xor	r8, r11
               	xor	rdi, rbx
               	xor	rbx, r8
               	xor	r11, rdi
               	xor	r8, r9
               	rol	rdi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L220>
<L219>:
               	bt	rcx, rax
               	jae	 <L221>
               	xor	r13, r11
               	xor	r14, rbx
               	xor	rsi, r8
               	xor	qword ptr [rsp + 0x78], rdi
               	jmp	 <L221>
<L220>:
               	mov	qword ptr [rsp + 0x2d8], rbp
               	mov	qword ptr [rsp + 0x2e0], r12
               	mov	qword ptr [rsp + 0x200], r15
               	xor	eax, eax
               	xor	ebp, ebp
               	mov	r15, qword ptr [rsp + 0x78]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x2c8], rsi
               	mov	r12, rsi
               	xor	r10d, r10d
               	mov	rsi, r14
               	mov	r9, r13
               	xor	ebx, ebx
               	movabs	rcx, 0x180ec6d33cfd0aba
               	jmp	 <L222>
               	nop
<L224>:
               	mov	r11, rsi
               	shl	r11, 0x11
               	xor	r12, r9
               	xor	r15, rsi
               	xor	rsi, r12
               	xor	r9, r15
               	xor	r12, r11
               	rol	r15, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L223>
<L222>:
               	bt	rcx, rax
               	jae	 <L224>
               	xor	rbx, r9
               	xor	r10, rsi
               	xor	r8, r12
               	xor	rbp, r15
               	jmp	 <L224>
<L223>:
               	xor	eax, eax
               	movabs	rcx, -0x2a59ed990f36c6d4
               	jmp	 <L225>
               	nop	word ptr cs:[rax + rax]
<L227>:
               	mov	r11, rsi
               	shl	r11, 0x11
               	xor	r12, r9
               	xor	r15, rsi
               	xor	rsi, r12
               	xor	r9, r15
               	xor	r12, r11
               	rol	r15, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L226>
<L225>:
               	bt	rcx, rax
               	jae	 <L227>
               	xor	rbx, r9
               	xor	r10, rsi
               	xor	r8, r12
               	xor	rbp, r15
               	jmp	 <L227>
<L226>:
               	xor	eax, eax
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L228>
               	nop	word ptr cs:[rax + rax]
<L230>:
               	mov	r11, rsi
               	shl	r11, 0x11
               	xor	r12, r9
               	xor	r15, rsi
               	xor	rsi, r12
               	xor	r9, r15
               	xor	r12, r11
               	rol	r15, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L229>
<L228>:
               	bt	rcx, rax
               	jae	 <L230>
               	xor	rbx, r9
               	xor	r10, rsi
               	xor	r8, r12
               	xor	rbp, r15
               	jmp	 <L230>
<L229>:
               	mov	rdi, rdx
               	xor	eax, eax
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L231>
               	nop	dword ptr [rax + rax]
<L233>:
               	mov	r11, rsi
               	shl	r11, 0x11
               	xor	r12, r9
               	xor	r15, rsi
               	xor	rsi, r12
               	xor	r9, r15
               	xor	r12, r11
               	rol	r15, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L232>
<L231>:
               	bt	rcx, rax
               	jae	 <L233>
               	xor	rbx, r9
               	xor	r10, rsi
               	xor	r8, r12
               	xor	rbp, r15
               	jmp	 <L233>
<L232>:
               	vpextrq	rax, xmm0, 0x1
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r15, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x220], r15
               	mov	rax, qword ptr [rsp + 0x200]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x228], rax
               	mov	rax, qword ptr [rsp + 0x1f8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rdx, qword ptr [rsp + 0x80]
               	lea	rsi, [rdx + 4*rdx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x230], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x238], rax
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x240], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x248], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x250], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x258], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x260], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x268], rax
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x270], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x278], rax
               	mov	rax, qword ptr [rsp + 0x70]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x280], rax
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x290], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x298], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a0], rax
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a8], rax
               	lea	rax, [r14 + 4*r14]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [r10 + 4*r10]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2b0], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2b8], rax
               	mov	rax, qword ptr [rsp + 0x2c0]
               	test	eax, eax
               	je	 <L234>
               	mov	edx, eax
               	xor	ecx, ecx
               	vbroadcastss	ymm1, dword ptr  <memset+0xb40>
               	vmovdqa	xmm2, xmmword ptr  <memset+0xb20>
               	lea	r9,  <memset+0xb5c>
               	mov	r11, qword ptr [rsp + 0x1f0]
               	mov	qword ptr [rsp + 0x320], rdx
               	jmp	 <L235>
               	nop	dword ptr [rax]
<L240>:
               	vblendps	ymm3, ymm3, ymmword ptr [rsp + 0x228], 0xc0 # ymm3 = ymm3[0,1,2,3,4,5],mem[6,7]
               	vpermpd	ymm3, ymm3, 0x93        # ymm3 = ymm3[3,0,1,2]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x220]
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x260]
               	vmovdqu	ymm6, ymmword ptr [rsp + 0x280]
               	vmovdqu	ymm7, ymmword ptr [rsp + 0x2a0]
               	vpsrlq	ymm4, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x220], ymm4
               	vpsrlq	ymm3, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x240], ymm3
               	vpsrlq	ymm3, ymm5, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x260], ymm3
               	vpsrlq	ymm3, ymm6, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm3
               	vpsrlq	ymm3, ymm7, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2a0], ymm3
               	vmovq	r15, xmm4
               	add	r11, 0x48
               	cmp	rdx, rcx
               	je	 <L236>
<L235>:
               	vmovups	ymm4, ymmword ptr [rsp + 0x238]
               	vmovups	ymm3, ymmword ptr [rsp + 0x248]
               	vmovdqu	xmm5, xmmword ptr [rsp + 0x268]
               	vperm2f128	ymm6, ymm3, ymmword ptr [rsp + 0x228], 0x2 # ymm6 = mem[0,1],ymm3[0,1]
               	vpshufb	xmm5, xmm5, xmm2
               	vinsertf128	ymm4, ymm4, xmmword ptr [rsp + 0x258], 0x1
               	vshufps	ymm4, ymm6, ymm4, 0x88  # ymm4 = ymm6[0,2],ymm4[0,2],ymm6[4,6],ymm4[4,6]
               	vandps	ymm4, ymm4, ymm1
               	vcvtdq2ps	ymm4, ymm4
               	vcvtdq2ps	xmm5, xmm5
               	movzx	eax, r15b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	r15b, al
               	movzx	eax, r15b
               	movsxd	rax, dword ptr [r9 + 4*rax]
               	add	rax, r9
               	jmp	rax
               	lea	rax,  <Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>
               	jmp	 <L237>
               	lea	rax,  <Bodies3D::ComputeVolumeEllipsoid@Evaluation.Replication.Ellipsoid(void const*)>
               	jmp	 <L238>
               	lea	rax,  <Bodies3D::ComputeVolumeTriangle@Evaluation.Replication.Triangle(void const*)>
               	jmp	 <L239>
               	lea	rax,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
               	mov	qword ptr [r11], rax
               	vmovups	ymmword ptr [r11 + 0x8], ymm4
               	vmovups	ymm4, ymmword ptr [rsp + 0x278]
               	vmovups	ymm5, ymmword ptr [rsp + 0x288]
               	vinsertf128	ymm5, ymm5, xmmword ptr [rsp + 0x2a8], 0x1
               	vinsertf128	ymm4, ymm4, xmmword ptr [rsp + 0x298], 0x1
               	vshufps	ymm4, ymm4, ymm5, 0x88  # ymm4 = ymm4[0,2],ymm5[0,2],ymm4[4,6],ymm5[4,6]
               	vandps	ymm4, ymm4, ymm1
               	vcvtdq2ps	ymm4, ymm4
               	vmovups	ymmword ptr [r11 + 0x28], ymm4
               	inc	rcx
               	test	cl, 0x7
               	jne	 <L240>
               	jmp	 <L241>
               	lea	rax,  <Bodies3D::ComputeVolumeCylinder@Evaluation.Replication.Cylinder(void const*)>
               	jmp	 <L242>
               	lea	rax,  <Bodies3D::ComputeVolumeRectangle@Evaluation.Replication.Rectangle(void const*)>
               	jmp	 <L239>
               	lea	rax,  <Bodies3D::ComputeVolumeSquare@Evaluation.Replication.Square(void const*)>
               	jmp	 <L237>
               	lea	rax,  <Bodies3D::ComputeVolumePyramid@Evaluation.Replication.Pyramid(void const*)>
               	jmp	 <L238>
               	lea	rax,  <Bodies3D::ComputeVolumeEllipse@Evaluation.Replication.Ellipse(void const*)>
<L239>:
               	mov	qword ptr [r11], rax
               	vmovups	ymmword ptr [r11 + 0x8], ymm4
               	vmovss	dword ptr [r11 + 0x28], xmm5
               	inc	rcx
               	test	cl, 0x7
               	jne	 <L240>
               	jmp	 <L241>
               	lea	rax,  <Bodies3D::ComputeVolumeCube@Evaluation.Replication.Cube(void const*)>
               	jmp	 <L237>
               	lea	rax,  <Bodies3D::ComputeVolumeCuboid@Evaluation.Replication.Cuboid(void const*)>
<L238>:
               	mov	qword ptr [r11], rax
               	vmovups	ymmword ptr [r11 + 0x8], ymm4
               	vmovlps	qword ptr [r11 + 0x28], xmm5
               	inc	rcx
               	test	cl, 0x7
               	jne	 <L240>
               	jmp	 <L241>
               	lea	rax,  <Bodies3D::ComputeVolumeCone@Evaluation.Replication.Cone(void const*)>
<L242>:
               	mov	qword ptr [r11], rax
               	vmovups	ymmword ptr [r11 + 0x8], ymm4
               	vextractps	dword ptr [r11 + 0x28], xmm5, 0x1
               	inc	rcx
               	test	cl, 0x7
               	jne	 <L240>
               	jmp	 <L241>
               	lea	rax,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
<L237>:
               	mov	qword ptr [r11], rax
               	vmovups	ymmword ptr [r11 + 0x8], ymm4
               	inc	rcx
               	test	cl, 0x7
               	jne	 <L240>
<L241>:
               	vpermq	ymm3, ymm0, 0xe3        # ymm3 = ymm0[3,0,2,3]
               	vpermq	ymm4, ymm0, 0xe9        # ymm4 = ymm0[1,2,2,3]
               	vpextrq	rax, xmm0, 0x1
               	vpxor	xmm3, xmm4, xmm3
               	vpextrq	rsi, xmm3, 0x1
               	mov	r9, rsi
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x328], r9
               	shl	rax, 0x11
               	xor	rax, rsi
               	vmovq	xmm4, rax
               	vmovq	rax, xmm3
               	rol	rax, 0x2d
               	vmovq	xmm5, rax
               	mov	r9, qword ptr [rsp + 0x200]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	qword ptr [rsp + 0x330], r11
               	mov	r11, qword ptr [rsp + 0x2f8]
               	mov	r12, qword ptr [rsp + 0x2f0]
               	xor	r11, r12
               	mov	rsi, qword ptr [rsp + 0x300]
               	xor	rsi, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x200], r9
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x2f0], r12
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x300], rsi
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x2f8], r11
               	mov	r9, qword ptr [rsp + 0x1f8]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x2e0]
               	mov	r12, qword ptr [rsp + 0x2d8]
               	xor	r11, r12
               	mov	rsi, qword ptr [rsp + 0x2e8]
               	xor	rsi, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x1f8], r9
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x2d8], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x2e0], r11
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x2e8], rsi
               	mov	r9, qword ptr [rsp + 0x80]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1c0]
               	mov	r12, qword ptr [rsp + 0x1b8]
               	xor	r11, r12
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	xor	rsi, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x80], r9
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x1b8], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1c0], r11
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x1c8], rsi
               	mov	r9, qword ptr [rsp + 0x40]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1a8]
               	mov	r12, qword ptr [rsp + 0x1a0]
               	xor	r11, r12
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	xor	rsi, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x40], r9
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x1a0], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1a8], r11
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x1b0], rsi
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x190]
               	mov	r12, qword ptr [rsp + 0x188]
               	xor	r11, r12
               	mov	rsi, qword ptr [rsp + 0x198]
               	xor	rsi, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x38], r9
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x188], r12
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x198], rsi
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x190], r11
               	mov	r9, qword ptr [rsp + 0x30]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x178]
               	mov	r12, qword ptr [rsp + 0x170]
               	xor	r11, r12
               	mov	rsi, qword ptr [rsp + 0x180]
               	xor	rsi, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x30], r9
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x170], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x178], r11
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x180], rsi
               	mov	r9, qword ptr [rsp + 0x28]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x160]
               	mov	r12, qword ptr [rsp + 0x158]
               	xor	r11, r12
               	mov	rsi, qword ptr [rsp + 0x168]
               	xor	rsi, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x28], r9
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x158], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x160], r11
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x168], rsi
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x148]
               	mov	r12, qword ptr [rsp + 0x140]
               	xor	r11, r12
               	mov	rsi, qword ptr [rsp + 0x150]
               	xor	rsi, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x20], r9
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x140], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x148], r11
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x150], rsi
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x130]
               	mov	r12, qword ptr [rsp + 0x128]
               	xor	r11, r12
               	mov	rsi, qword ptr [rsp + 0x138]
               	xor	rsi, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x18], r9
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x128], r12
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x138], rsi
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x130], r11
               	mov	r9, qword ptr [rsp + 0x10]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x118]
               	mov	r15, qword ptr [rsp + 0x110]
               	xor	r11, r15
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	rsi, r9
               	xor	r9, r11
               	mov	qword ptr [rsp + 0x10], r9
               	xor	r15, rsi
               	mov	qword ptr [rsp + 0x110], r15
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x118], r11
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x120], rsi
               	mov	r15, qword ptr [rsp + 0x8]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x100]
               	mov	r9, qword ptr [rsp + 0xf8]
               	xor	r11, r9
               	mov	rsi, qword ptr [rsp + 0x108]
               	xor	rsi, r15
               	xor	r15, r11
               	mov	qword ptr [rsp + 0x8], r15
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0xf8], r9
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x100], r11
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x108], rsi
               	mov	r12, qword ptr [rsp + 0x70]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0xe8]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x210], r14
               	mov	r14, rsi
               	xor	r9, rsi
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	rsi, r12
               	xor	r12, r9
               	xor	r14, rsi
               	mov	qword ptr [rsp + 0xe0], r14
               	xor	r9, rax
               	mov	qword ptr [rsp + 0xe8], r9
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0xf0], rsi
               	mov	r14, qword ptr [rsp + 0x68]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0xd0]
               	mov	rsi, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0x310], r13
               	mov	r13, rsi
               	xor	r9, rsi
               	mov	rsi, qword ptr [rsp + 0xd8]
               	xor	rsi, r14
               	xor	r14, r9
               	xor	r13, rsi
               	mov	qword ptr [rsp + 0xc8], r13
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0xd8], rsi
               	xor	r9, rax
               	mov	qword ptr [rsp + 0xd0], r9
               	mov	qword ptr [rsp + 0x208], r10
               	mov	r10, qword ptr [rsp + 0x60]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0xb8]
               	mov	r13, qword ptr [rsp + 0x1e8]
               	xor	rsi, r13
               	mov	r13, qword ptr [rsp + 0xc0]
               	xor	r13, r10
               	xor	r10, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xb8], rsi
               	mov	r9, r8
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	r15, rcx
               	mov	rsi, qword ptr [rsp + 0xa8]
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	xor	rsi, rcx
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x308], rbx
               	mov	rbx, rcx
               	xor	rbx, r8
               	xor	r8, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xa8], rsi
               	mov	qword ptr [rsp + 0x318], rdi
               	mov	rdi, qword ptr [rsp + 0x50]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x98]
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	xor	rsi, rcx
               	mov	r11, qword ptr [rsp + 0xa0]
               	xor	r11, rdi
               	xor	rdi, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x98], rsi
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x2d0]
               	mov	rcx, rbp
               	mov	rbp, qword ptr [rsp + 0x1d0]
               	xor	rsi, rbp
               	xor	qword ptr [rsp + 0x318], rdx
               	xor	rdx, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x2d0], rsi
               	mov	rax, qword ptr [rsp + 0x210]
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x2c8]
               	xor	rsi, qword ptr [rsp + 0x310]
               	mov	rbp, qword ptr [rsp + 0x210]
               	xor	qword ptr [rsp + 0x78], rbp
               	mov	rbp, rcx
               	mov	rcx, r15
               	xor	qword ptr [rsp + 0x210], rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x2c8], rsi
               	mov	rax, qword ptr [rsp + 0x208]
               	shl	rax, 0x11
               	xor	r9, qword ptr [rsp + 0x308]
               	xor	rbp, qword ptr [rsp + 0x208]
               	xor	qword ptr [rsp + 0x208], r9
               	xor	r9, rax
               	mov	rax, qword ptr [rsp + 0x328]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r15, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x200]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rsi, qword ptr [rsp + 0x1f8]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x220], r15
               	mov	qword ptr [rsp + 0x228], rax
               	mov	rax, qword ptr [rsp + 0x80]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x230], rsi
               	mov	rsi, qword ptr [rsp + 0x40]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x238], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x240], rsi
               	mov	rsi, qword ptr [rsp + 0x30]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x248], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x250], rsi
               	mov	rsi, qword ptr [rsp + 0x20]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x258], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x260], rsi
               	mov	rsi, qword ptr [rsp + 0x10]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x268], rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x270], rsi
               	mov	qword ptr [rsp + 0x70], r12
               	lea	rsi, [r12 + 4*r12]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x278], rax
               	mov	qword ptr [rsp + 0x68], r14
               	lea	rax, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x210]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x280], rsi
               	mov	qword ptr [rsp + 0x60], r10
               	lea	rsi, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x208]
               	rol	rsi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x288], rax
               	mov	qword ptr [rsp + 0x58], r8
               	lea	rax, [r8 + 4*r8]
               	mov	r8, r9
               	lea	r9,  <memset+0xb5c>
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x290], rsi
               	mov	qword ptr [rsp + 0x50], rdi
               	lea	rsi, [rdi + 4*rdi]
               	mov	rdi, qword ptr [rsp + 0x318]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x298], rax
               	mov	qword ptr [rsp + 0x48], rdx
               	lea	rax, [rdx + 4*rdx]
               	mov	rdx, qword ptr [rsp + 0x320]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2a0], rsi
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a8], rax
               	lea	rax, [r14 + 4*r14]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b0], rax
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b8], rax
               	xor	qword ptr [rsp + 0x1e8], r13
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0xc0], r13
               	mov	r13, qword ptr [rsp + 0x310]
               	vpxor	xmm0, xmm3, xmm0
               	xor	qword ptr [rsp + 0x1e0], rbx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0xb0], rbx
               	mov	rbx, qword ptr [rsp + 0x308]
               	mov	rax, qword ptr [rsp + 0x78]
               	vpbroadcastq	ymm3, xmm4
               	xor	qword ptr [rsp + 0x1d8], r11
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0xa0], r11
               	mov	r11, qword ptr [rsp + 0x330]
               	vpblendd	ymm0, ymm0, ymm3, 0x30  # ymm0 = ymm0[0,1,2,3],ymm3[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0x1d0], rdi
               	rol	rdi, 0x2d
               	vpbroadcastq	ymm3, xmm5
               	xor	r13, rax
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x78], rax
               	vpblendd	ymm0, ymm0, ymm3, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm3[6,7]
               	xor	rbx, rbp
               	rol	rbp, 0x2d
               	add	r11, 0x48
               	cmp	rdx, rcx
               	jne	 <L235>
<L236>:
               	shl	rcx, 0x3
               	lea	rax, [rcx + 8*rcx]
               	shr	rax, 0x3
               	imul	ebx, eax, 0x38e38e39
               	test	ebx, ebx
               	je	 <L243>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x260], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x240], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x220], ymm0
               	mov	r13, qword ptr [rsp + 0x1f0]
               	jmp	 <L244>
<L245>:
               	vmovss	xmm0, dword ptr [rsp + 0x224]
               	vmovss	dword ptr [rsp + 0x228], xmm0
               	mov	ebp, 0x1
<L253>:
               	mov	eax, ebp
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x220]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r13, r12
<L244>:
               	mov	r14d, ebx
               	neg	r14d
               	and	r14d, ebx
               	lea	rax, [r14 + 8*r14]
               	lea	r12, [r13 + 8*rax]
               	je	 <L245>
               	mov	dword ptr [rsp + 0x80], ebx
               	xor	ecx, ecx
               	mov	ebx, 0x1
               	mov	r15d, 0x1
               	jmp	 <L246>
<L248>:
               	mov	ebx, ebp
               	movsxd	rax, ebp
               	vmovss	dword ptr [rsp + 4*rax + 0x220], xmm0
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
               	je	 <L247>
<L246>:
               	mov	ebp, ecx
               	lea	rdi, [r13 + 0x8]
               	vzeroupper
               	call	qword ptr [r13]
               	mov	ecx, ebp
               	sub	ecx, ebx
               	jl	 <L248>
               	movsxd	rax, ebx
               	cmp	ecx, 0x1f
               	jb	 <L249>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vpblendd	xmm0, xmm0, xmmword ptr , 0xe <memset+0xb30> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0x280]
               	lea	rsi, [rsi + 4*rax]
               	vxorps	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr cs:[rax + rax]
<L250>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
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
               	cmp	rcx, rdx
               	je	 <L248>
               	add	rax, rdx
<L249>:
               	mov	ecx, ebp
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x220
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L251>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L251>
               	jmp	 <L248>
               	nop	word ptr cs:[rax + rax]
<L247>:
               	mov	ebx, dword ptr [rsp + 0x80]
               	sub	ebx, r14d
               	je	 <L252>
               	vmovss	dword ptr [rsp + 4*rax + 0x224], xmm0
               	mov	r13, r12
               	test	ebp, ebp
               	jns	 <L253>
               	jmp	 <L244>
<L234>:
               	vpxor	xmm0, xmm0, xmm0
<L252>:
               	mov	rbx, qword ptr [rsp + 0x218]
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	test	rdi, rdi
               	jne	 <L254>
               	cmp	ebx, 0x2a
               	je	 <L255>
               	jmp	 <L256>
<L243>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rbx, qword ptr [rsp + 0x218]
               	mov	rdi, qword ptr [rsp + 0x1f0]
<L254>:
               	vmovdqa	xmmword ptr [rsp + 0x80], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x80]
               	cmp	ebx, 0x2a
               	jne	 <L256>
<L255>:
               	cmp	dword ptr [rsp + 0x2c0], 0x186a0
               	jne	 <L256>
               	vucomiss	xmm0, dword ptr  <memset+0xb54>
               	jne	 <L257>
<L256>:
               	xor	eax, eax
               	add	rsp, 0x338
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L257>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x80], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x80]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x6d60>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xb48>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xb48>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xb50>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xb4c>
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
               	vmulss	xmm1, xmm1, dword ptr  <memset+0xb58>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xb48>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xb44>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0xb58>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x6d38>
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
