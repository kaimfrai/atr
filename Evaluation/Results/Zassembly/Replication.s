
build/ZEvaluation/bin/Replication:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x4670>
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
               	mov	rax, qword ptr  <memset+0x4680>
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
               	mov	rax, qword ptr  <memset+0x4688>
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
               	cmp	qword ptr , 0x0 <memset+0x4690>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x118
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
               	movabs	rbp, 0x180ec6d33cfd0aba
               	mov	qword ptr [rsp + 0x20], rdx
               	movsxd	rax, edx
               	shl	rax, 0x3
               	lea	rdi, [rax + 8*rax]
               	mov	rsi, qword ptr  <memset+0x4698>
               	call	 <_ZnamRKSt9nothrow_t@plt>
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
               	mov	rbx, rdi
               	shr	rbx, 0x1f
               	xor	rbx, rdi
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
               	mov	r10, rsi
               	shr	r10, 0x1f
               	xor	r10, rsi
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
               	mov	r8, rsi
               	shr	r8, 0x1f
               	xor	r8, rsi
               	xor	ecx, ecx
               	xor	r9d, r9d
               	mov	qword ptr [rsp + 0x70], r8
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x78], r11
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x10], r10
               	mov	rsi, r10
               	mov	qword ptr [rsp + 0x80], rbx
               	xor	r13d, r13d
               	jmp	 <L4>
               	nop	dword ptr [rax]
<L6>:
               	mov	rdx, rsi
               	shl	rdx, 0x11
               	xor	r11, rbx
               	xor	r8, rsi
               	xor	rsi, r11
               	xor	rbx, r8
               	xor	r11, rdx
               	rol	r8, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L5>
<L4>:
               	bt	rbp, rcx
               	jae	 <L6>
               	xor	r13, rbx
               	xor	r12, rsi
               	xor	r14, r11
               	xor	r9, r8
               	jmp	 <L6>
<L5>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
<L9>:
               	mov	rdx, rsi
               	shl	rdx, 0x11
               	xor	r11, rbx
               	xor	r8, rsi
               	xor	rsi, r11
               	xor	rbx, r8
               	xor	r11, rdx
               	rol	r8, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L8>
<L7>:
               	bt	rdi, rcx
               	jae	 <L9>
               	xor	r13, rbx
               	xor	r12, rsi
               	xor	r14, r11
               	xor	r9, r8
               	jmp	 <L9>
<L8>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	xor	ecx, ecx
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
<L12>:
               	mov	rdx, rsi
               	shl	rdx, 0x11
               	xor	r11, rbx
               	xor	r8, rsi
               	xor	rsi, r11
               	xor	rbx, r8
               	xor	r11, rdx
               	rol	r8, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L11>
<L10>:
               	bt	rdi, rcx
               	jae	 <L12>
               	xor	r13, rbx
               	xor	r12, rsi
               	xor	r14, r11
               	xor	r9, r8
               	jmp	 <L12>
<L11>:
               	movabs	rcx, 0x39abdc4529b1661c
               	xor	edx, edx
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
<L15>:
               	mov	rdi, rsi
               	shl	rdi, 0x11
               	xor	r11, rbx
               	xor	r8, rsi
               	xor	rsi, r11
               	xor	rbx, r8
               	xor	r11, rdi
               	rol	r8, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L14>
<L13>:
               	bt	rcx, rdx
               	jae	 <L15>
               	xor	r13, rbx
               	xor	r12, rsi
               	xor	r14, r11
               	xor	r9, r8
               	jmp	 <L15>
<L14>:
               	xor	r15d, r15d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x68], r9
               	mov	rdi, r9
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r14
               	mov	r11, r14
               	xor	r9d, r9d
               	mov	rbx, r12
               	mov	r14, r13
               	xor	r10d, r10d
               	jmp	 <L16>
               	nop	dword ptr [rax]
<L18>:
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	xor	r11, r14
               	xor	rdi, rbx
               	xor	rbx, r11
               	xor	r14, rdi
               	xor	r11, rdx
               	rol	rdi, 0x2d
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L17>
<L16>:
               	bt	rbp, r15
               	jae	 <L18>
               	xor	r10, r14
               	xor	r9, rbx
               	xor	r8, r11
               	xor	rsi, rdi
               	jmp	 <L18>
<L17>:
               	xor	r15d, r15d
               	jmp	 <L19>
               	nop	dword ptr [rax]
<L21>:
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	xor	r11, r14
               	xor	rdi, rbx
               	xor	rbx, r11
               	xor	r14, rdi
               	xor	r11, rdx
               	rol	rdi, 0x2d
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L20>
<L19>:
               	movabs	rdx, -0x2a59ed990f36c6d4
               	bt	rdx, r15
               	jae	 <L21>
               	xor	r10, r14
               	xor	r9, rbx
               	xor	r8, r11
               	xor	rsi, rdi
               	jmp	 <L21>
<L20>:
               	xor	edx, edx
               	jmp	 <L22>
               	nop	word ptr cs:[rax + rax]
<L24>:
               	mov	r15, rbx
               	shl	r15, 0x11
               	xor	r11, r14
               	xor	rdi, rbx
               	xor	rbx, r11
               	xor	r14, rdi
               	xor	r11, r15
               	rol	rdi, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L23>
<L22>:
               	movabs	r15, -0x56a7d9e71fc03656
               	bt	r15, rdx
               	jae	 <L24>
               	xor	r10, r14
               	xor	r9, rbx
               	xor	r8, r11
               	xor	rsi, rdi
               	jmp	 <L24>
<L23>:
               	xor	edx, edx
               	jmp	 <L25>
               	nop	word ptr cs:[rax + rax]
<L27>:
               	mov	r15, rbx
               	shl	r15, 0x11
               	xor	r11, r14
               	xor	rdi, rbx
               	xor	rbx, r11
               	xor	r14, rdi
               	xor	r11, r15
               	rol	rdi, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L26>
<L25>:
               	bt	rcx, rdx
               	jae	 <L27>
               	xor	r10, r14
               	xor	r9, rbx
               	xor	r8, r11
               	xor	rsi, rdi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x58], r13
               	mov	qword ptr [rsp + 0x30], r12
               	mov	qword ptr [rsp + 0x8], rax
               	xor	edx, edx
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x50], rsi
               	mov	r11, rsi
               	mov	r14, r8
               	mov	rdi, r9
               	mov	r12, r10
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x48], r8
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x28], r9
               	mov	qword ptr [rsp + 0x40], r10
               	xor	eax, eax
               	movabs	r9, -0x2a59ed990f36c6d4
               	movabs	r10, -0x56a7d9e71fc03656
               	jmp	 <L28>
               	nop	dword ptr [rax + rax]
<L30>:
               	mov	r15, rdi
               	shl	r15, 0x11
               	xor	r14, r12
               	xor	r11, rdi
               	xor	rdi, r14
               	xor	r12, r11
               	xor	r14, r15
               	rol	r11, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L29>
<L28>:
               	bt	rbp, rdx
               	jae	 <L30>
               	xor	rax, r12
               	xor	r8, rdi
               	xor	rbx, r14
               	xor	r13, r11
               	jmp	 <L30>
<L29>:
               	xor	edx, edx
               	jmp	 <L31>
               	nop	dword ptr [rax + rax]
<L33>:
               	mov	r15, rdi
               	shl	r15, 0x11
               	xor	r14, r12
               	xor	r11, rdi
               	xor	rdi, r14
               	xor	r12, r11
               	xor	r14, r15
               	rol	r11, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L32>
<L31>:
               	bt	r9, rdx
               	jae	 <L33>
               	xor	rax, r12
               	xor	r8, rdi
               	xor	rbx, r14
               	xor	r13, r11
               	jmp	 <L33>
<L32>:
               	xor	edx, edx
               	jmp	 <L34>
               	nop	dword ptr [rax + rax]
<L36>:
               	mov	r15, rdi
               	shl	r15, 0x11
               	xor	r14, r12
               	xor	r11, rdi
               	xor	rdi, r14
               	xor	r12, r11
               	xor	r14, r15
               	rol	r11, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L35>
<L34>:
               	bt	r10, rdx
               	jae	 <L36>
               	xor	rax, r12
               	xor	r8, rdi
               	xor	rbx, r14
               	xor	r13, r11
               	jmp	 <L36>
<L35>:
               	xor	edx, edx
               	jmp	 <L37>
               	nop	dword ptr [rax + rax]
<L39>:
               	mov	r15, rdi
               	shl	r15, 0x11
               	xor	r14, r12
               	xor	r11, rdi
               	xor	rdi, r14
               	xor	r12, r11
               	xor	r14, r15
               	rol	r11, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L38>
<L37>:
               	bt	rcx, rdx
               	jae	 <L39>
               	xor	rax, r12
               	xor	r8, rdi
               	xor	rbx, r14
               	xor	r13, r11
               	jmp	 <L39>
<L38>:
               	mov	ecx, 0x40
               	nop	dword ptr [rax]
<L40>:
               	dec	rcx
               	jne	 <L40>
               	mov	ecx, 0x40
               	mov	rdx, qword ptr [rsp + 0x20]
               	nop
<L41>:
               	dec	rcx
               	jne	 <L41>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L42>:
               	dec	rcx
               	jne	 <L42>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L43>:
               	dec	rcx
               	jne	 <L43>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L44>:
               	dec	rcx
               	jne	 <L44>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L45>:
               	dec	rcx
               	jne	 <L45>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L46>:
               	dec	rcx
               	jne	 <L46>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L47>:
               	dec	rcx
               	jne	 <L47>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L48>:
               	dec	rcx
               	jne	 <L48>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L49>:
               	dec	rcx
               	jne	 <L49>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L50>:
               	dec	rcx
               	jne	 <L50>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L51>:
               	dec	rcx
               	jne	 <L51>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L52>:
               	dec	rcx
               	jne	 <L52>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L53>:
               	dec	rcx
               	jne	 <L53>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L54>:
               	dec	rcx
               	jne	 <L54>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L55>:
               	dec	rcx
               	jne	 <L55>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L56>:
               	dec	rcx
               	jne	 <L56>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L57>:
               	dec	rcx
               	jne	 <L57>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L58>:
               	dec	rcx
               	jne	 <L58>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L59>:
               	dec	rcx
               	jne	 <L59>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L60>:
               	dec	rcx
               	jne	 <L60>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L61>:
               	dec	rcx
               	jne	 <L61>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L62>:
               	dec	rcx
               	jne	 <L62>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L63>:
               	dec	rcx
               	jne	 <L63>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L64>:
               	dec	rcx
               	jne	 <L64>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L65>:
               	dec	rcx
               	jne	 <L65>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L66>:
               	dec	rcx
               	jne	 <L66>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L67>:
               	dec	rcx
               	jne	 <L67>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L68>:
               	dec	rcx
               	jne	 <L68>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L69>:
               	dec	rcx
               	jne	 <L69>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L70>:
               	dec	rcx
               	jne	 <L70>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L71>:
               	dec	rcx
               	jne	 <L71>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L72>:
               	dec	rcx
               	jne	 <L72>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L73>:
               	dec	rcx
               	jne	 <L73>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L74>:
               	dec	rcx
               	jne	 <L74>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L75>:
               	dec	rcx
               	jne	 <L75>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L76>:
               	dec	rcx
               	jne	 <L76>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L77>:
               	dec	rcx
               	jne	 <L77>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L78>:
               	dec	rcx
               	jne	 <L78>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L79>:
               	dec	rcx
               	jne	 <L79>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L80>:
               	dec	rcx
               	jne	 <L80>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L81>:
               	dec	rcx
               	jne	 <L81>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L82>:
               	dec	rcx
               	jne	 <L82>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L83>:
               	dec	rcx
               	jne	 <L83>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L84>:
               	dec	rcx
               	jne	 <L84>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L85>:
               	dec	rcx
               	jne	 <L85>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L86>:
               	dec	rcx
               	jne	 <L86>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L87>:
               	dec	rcx
               	jne	 <L87>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L88>:
               	dec	rcx
               	jne	 <L88>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L89>:
               	dec	rcx
               	jne	 <L89>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L90>:
               	dec	rcx
               	jne	 <L90>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L91>:
               	dec	rcx
               	jne	 <L91>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L92>:
               	dec	rcx
               	jne	 <L92>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L93>:
               	dec	rcx
               	jne	 <L93>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L94>:
               	dec	rcx
               	jne	 <L94>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L95>:
               	dec	rcx
               	jne	 <L95>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L96>:
               	dec	rcx
               	jne	 <L96>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L97>:
               	dec	rcx
               	jne	 <L97>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L98>:
               	dec	rcx
               	jne	 <L98>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L99>:
               	dec	rcx
               	jne	 <L99>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L100>:
               	dec	rcx
               	jne	 <L100>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L101>:
               	dec	rcx
               	jne	 <L101>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L102>:
               	dec	rcx
               	jne	 <L102>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L103>:
               	dec	rcx
               	jne	 <L103>
               	test	edx, edx
               	je	 <L104>
               	mov	qword ptr [rsp + 0x38], r8
               	vmovq	xmm0, r8
               	vmovq	xmm1, qword ptr [rsp + 0x28]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	vmovq	xmm1, qword ptr [rsp + 0x30]
               	vmovq	xmm2, qword ptr [rsp + 0x10]
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vpsrlq	ymm1, ymm0, 0x39
               	vpsllq	ymm0, ymm0, 0x7
               	vpor	ymm0, ymm0, ymm1
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm0, ymm1, ymm0
               	mov	ebp, edx
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	r8, [rcx + 0x8]
               	xor	ecx, ecx
               	vmovd	edi, xmm0
               	movzx	edi, dil
               	imul	r11d, edi, 0x4f
               	shr	r11d, 0xa
               	lea	r14d, [r11 + 2*r11]
               	lea	r11d, [r11 + 4*r14]
               	sub	dil, r11b
               	movzx	edi, dil
               	lea	r9,  <memset+0x960>
               	movsxd	r14, dword ptr [r9 + 4*rdi]
               	add	r14, r9
               	jmp	r14
<L104>:
               	vpxor	xmm0, xmm0, xmm0
<L116>:
               	mov	rdi, qword ptr [rsp + 0x8]
               	test	rdi, rdi
               	jne	 <L105>
               	jmp	 <L106>
<L123>:
               	shl	rcx, 0x3
               	lea	rax, [rcx + 8*rcx]
               	shr	rax, 0x3
               	imul	ebx, eax, 0x38e38e39
               	test	ebx, ebx
               	je	 <L107>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0xf0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xd0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xb0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x90], ymm0
               	mov	r13, qword ptr [rsp + 0x8]
               	jmp	 <L108>
               	nop	word ptr cs:[rax + rax]
<L109>:
               	vmovss	xmm0, dword ptr [rsp + 0x94]
               	vmovss	dword ptr [rsp + 0x98], xmm0
               	mov	ebp, 0x1
<L117>:
               	mov	eax, ebp
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x90]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r13, r12
<L108>:
               	mov	r14d, ebx
               	neg	r14d
               	and	r14d, ebx
               	lea	rax, [r14 + 8*r14]
               	lea	r12, [r13 + 8*rax]
               	je	 <L109>
               	mov	dword ptr [rsp + 0x10], ebx
               	xor	ecx, ecx
               	mov	ebx, 0x1
               	mov	r15d, 0x1
               	jmp	 <L110>
               	nop	dword ptr [rax]
<L112>:
               	mov	ebx, ebp
               	movsxd	rax, ebp
               	vmovss	dword ptr [rsp + 4*rax + 0x90], xmm0
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
               	je	 <L111>
<L110>:
               	mov	ebp, ecx
               	lea	rdi, [r13 + 0x8]
               	vzeroupper
               	call	qword ptr [r13]
               	mov	ecx, ebp
               	sub	ecx, ebx
               	jl	 <L112>
               	movsxd	rax, ebx
               	cmp	ecx, 0x1f
               	jb	 <L113>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vpblendd	xmm0, xmm0, xmmword ptr , 0xe <memset+0x950> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0xf0]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr cs:[rax + rax]
<L114>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
               	jne	 <L114>
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
               	je	 <L112>
               	add	rax, rdx
<L113>:
               	mov	ecx, ebp
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x90
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L115>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L115>
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	mov	ebx, dword ptr [rsp + 0x10]
               	sub	ebx, r14d
               	je	 <L116>
               	vmovss	dword ptr [rsp + 4*rax + 0x94], xmm0
               	mov	r13, r12
               	test	ebp, ebp
               	jns	 <L117>
               	jmp	 <L108>
<L107>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	rdi, qword ptr [rsp + 0x8]
<L105>:
               	vmovdqa	xmmword ptr [rsp + 0x10], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x10]
<L106>:
               	vpxor	xmm1, xmm1, xmm1
               	xor	eax, eax
               	vucomiss	xmm0, xmm1
               	setne	al
               	add	rsp, 0x118
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
               	lea	rdi,  <Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>
<L121>:
               	mov	qword ptr [r8 - 0x8], rdi
               	vpxor	xmm1, xmm1, xmm1
               	vmovdqu	ymmword ptr [r8], ymm1
               	inc	rcx
               	test	cl, 0x7
               	jne	 <L118>
               	jmp	 <L119>
               	lea	rdi,  <Bodies3D::ComputeVolumeEllipse@Evaluation.Replication.Ellipse(void const*)>
<L120>:
               	mov	qword ptr [r8 - 0x8], rdi
               	vpxor	xmm1, xmm1, xmm1
               	vmovdqu	ymmword ptr [r8], ymm1
               	mov	dword ptr [r8 + 0x20], 0x0
               	inc	rcx
               	test	cl, 0x7
               	jne	 <L118>
               	jmp	 <L119>
               	lea	rdi,  <Bodies3D::ComputeVolumeRectangle@Evaluation.Replication.Rectangle(void const*)>
               	jmp	 <L120>
               	lea	rdi,  <Bodies3D::ComputeVolumeSquare@Evaluation.Replication.Square(void const*)>
               	jmp	 <L121>
               	lea	rdi,  <Bodies3D::ComputeVolumeTriangle@Evaluation.Replication.Triangle(void const*)>
               	jmp	 <L120>
               	lea	rdi,  <Bodies3D::ComputeVolumeCube@Evaluation.Replication.Cube(void const*)>
               	jmp	 <L121>
               	lea	rdi,  <Bodies3D::ComputeVolumeCuboid@Evaluation.Replication.Cuboid(void const*)>
<L124>:
               	mov	qword ptr [r8 - 0x8], rdi
               	vpxor	xmm1, xmm1, xmm1
               	vmovdqu	ymmword ptr [r8], ymm1
               	mov	qword ptr [r8 + 0x20], 0x0
               	inc	rcx
               	test	cl, 0x7
               	je	 <L119>
<L118>:
               	vpsrlq	ymm0, ymm0, 0x8
               	cmp	rbp, rcx
               	jne	 <L122>
               	jmp	 <L123>
               	lea	rdi,  <Bodies3D::ComputeVolumePyramid@Evaluation.Replication.Pyramid(void const*)>
               	jmp	 <L124>
               	lea	rdi,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
               	jmp	 <L121>
               	lea	rdi,  <Bodies3D::ComputeVolumeCylinder@Evaluation.Replication.Cylinder(void const*)>
               	jmp	 <L120>
               	lea	rdi,  <Bodies3D::ComputeVolumeCone@Evaluation.Replication.Cone(void const*)>
               	jmp	 <L120>
               	lea	rdi,  <Bodies3D::ComputeVolumeEllipsoid@Evaluation.Replication.Ellipsoid(void const*)>
               	jmp	 <L124>
               	lea	rdi,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
               	mov	qword ptr [r8 - 0x8], rdi
               	vpxor	xmm1, xmm1, xmm1
               	vmovdqu	ymmword ptr [r8], ymm1
               	vmovdqu	ymmword ptr [r8 + 0x20], ymm1
               	inc	rcx
               	test	cl, 0x7
               	jne	 <L118>
<L119>:
               	mov	r12, qword ptr [rsp + 0x10]
               	mov	rdi, r12
               	shl	rdi, 0x11
               	mov	r15, qword ptr [rsp + 0x80]
               	mov	r14, qword ptr [rsp + 0x78]
               	xor	r14, r15
               	mov	r11, qword ptr [rsp + 0x70]
               	xor	r11, r12
               	xor	r12, r14
               	xor	r14, rdi
               	mov	qword ptr [rsp + 0x78], r14
               	mov	rsi, qword ptr [rsp + 0x30]
               	mov	rdi, rsi
               	shl	rdi, 0x11
               	mov	r14, qword ptr [rsp + 0x60]
               	mov	r10, qword ptr [rsp + 0x58]
               	xor	r14, r10
               	mov	qword ptr [rsp + 0x88], r8
               	mov	r8, qword ptr [rsp + 0x68]
               	xor	r8, rsi
               	xor	rsi, r14
               	xor	r14, rdi
               	mov	qword ptr [rsp + 0x60], r14
               	mov	rdi, qword ptr [rsp + 0x28]
               	mov	rdx, rdi
               	shl	rdx, 0x11
               	mov	r14, qword ptr [rsp + 0x48]
               	mov	qword ptr [rsp + 0x20], rcx
               	mov	rcx, rax
               	mov	rax, qword ptr [rsp + 0x40]
               	xor	r14, rax
               	mov	r9, qword ptr [rsp + 0x50]
               	xor	r9, rdi
               	xor	rdi, r14
               	xor	r14, rdx
               	mov	qword ptr [rsp + 0x48], r14
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	r14, rdx
               	shl	r14, 0x11
               	xor	rbx, rcx
               	xor	r13, rdx
               	xor	rdx, rbx
               	xor	rbx, r14
               	mov	qword ptr [rsp + 0x28], rdi
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x38], rdx
               	lea	r14, [rdx + 4*rdx]
               	rol	r14, 0x7
               	lea	r14, [r14 + 8*r14]
               	vmovq	xmm0, r14
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm1, rdi
               	mov	qword ptr [rsp + 0x30], rsi
               	lea	rdi, [rsi + 4*rsi]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm2, rdi
               	mov	qword ptr [rsp + 0x10], r12
               	lea	rdi, [r12 + 4*r12]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm3, rdi
               	xor	r15, r11
               	mov	qword ptr [rsp + 0x80], r15
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x70], r11
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	xor	r10, r8
               	mov	qword ptr [rsp + 0x58], r10
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x88]
               	xor	rax, r9
               	mov	qword ptr [rsp + 0x40], rax
               	mov	rax, rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x50], r9
               	lea	r9,  <memset+0x960>
               	xor	rax, r13
               	rol	r13, 0x2d
               	vpunpcklqdq	xmm1, xmm3, xmm2 # xmm1 = xmm3[0],xmm2[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	cmp	rbp, rcx
               	je	 <L123>
<L122>:
               	add	r8, 0x48
               	vmovd	edi, xmm0
               	movzx	edi, dil
               	imul	r14d, edi, 0x4f
               	shr	r14d, 0xa
               	lea	r15d, [r14 + 2*r14]
               	lea	r14d, [r14 + 4*r15]
               	sub	dil, r14b
               	movzx	edi, dil
               	movsxd	rdi, dword ptr [r9 + 4*rdi]
               	add	rdi, r9
               	jmp	rdi

<Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x998>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x998>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x9a0>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x99c>
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
               	vmulss	xmm1, xmm1, dword ptr  <memset+0x9a4>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x998>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x994>
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
               	vmulss	xmm0, xmm0, dword ptr  <memset+0x9a4>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x4678>
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
