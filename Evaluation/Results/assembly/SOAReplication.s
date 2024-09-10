
build/Evaluation/bin/SOAReplication:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x5588>
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
               	mov	rax, qword ptr  <memset+0x5598>
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
               	mov	rax, qword ptr  <memset+0x55a0>
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
               	cmp	qword ptr , 0x0 <memset+0x55a8>
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

<initializer for module Evaluation.SOAReplication.SOAView>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW7SOAView__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW7SOAView__in_chrg>
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

<initializer for module Meta.Auto.Simd.Fill>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW4Fill__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW4Fill__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Float>
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

<_GLOBAL__sub_I_SOAReplication.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.SOAReplication.SOAView>
               	call	 <initializer for module Meta.Auto.Simd.Fill>
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

<main>:
               	push	rbp
               	mov	rbp, rsp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	and	rsp, -0x20
               	sub	rsp, 0x620
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
               	mov	eax, edx
               	and	eax, 0x1f
               	mov	ecx, 0x20
               	sub	ecx, eax
               	test	eax, eax
               	cmove	ecx, eax
               	movabs	r14, 0x180ec6d33cfd0aba
               	mov	qword ptr [rsp + 0x118], rdx
               	add	ecx, edx
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0xe8], rcx
               	lea	rsi, [rcx + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	qword ptr [rsp + 0x110], rbx
               	movsxd	rdx, ebx
               	vmovq	xmm0, rdx
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0xa00>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rcx, -0x61c8864680b583eb
               	add	rcx, rdx
               	shr	rcx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rcx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <memset+0xa78>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <memset+0xa60>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpbroadcastq	ymm2, qword ptr  <memset+0xa68>
               	vpxor	ymm0, ymm1, ymm0
               	vpmuludq	ymm1, ymm0, ymm2
               	vpbroadcastq	ymm2, qword ptr  <memset+0xa70>
               	vpsrlq	ymm3, ymm0, 0x20
               	vpmuludq	ymm3, ymm3, ymm2
               	vpaddq	ymm1, ymm1, ymm3
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm2
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovq	rbx, xmm0
               	vpextrq	rcx, xmm0, 0x1
               	vextracti128	xmm1, ymm0, 0x1
               	vmovq	rdx, xmm1
               	vpextrq	rsi, xmm1, 0x1
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa0], 0x0
               	mov	qword ptr [rsp + 0x98], 0x0
               	mov	qword ptr [rsp + 0x180], 0x0
               	mov	qword ptr [rsp + 0x90], 0x0
               	jmp	 <L4>
               	nop	dword ptr [rax + rax]
<L6>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rbx
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rbx, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L5>
<L4>:
               	bt	r14, rdi
               	jae	 <L6>
               	xor	qword ptr [rsp + 0x90], rbx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xa0], rsi
               	jmp	 <L6>
<L5>:
               	xor	edi, edi
               	jmp	 <L7>
               	nop
<L9>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rbx
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rbx, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L8>
<L7>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L9>
               	xor	qword ptr [rsp + 0x90], rbx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xa0], rsi
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	dword ptr [rax]
<L12>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rbx
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rbx, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	qword ptr [rsp + 0x90], rbx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xa0], rsi
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	dword ptr [rax]
<L15>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rbx
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rbx, rsi
               	xor	rdx, r8
               	rol	rsi, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	qword ptr [rsp + 0x90], rbx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xa0], rsi
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	edi, edi
               	xor	r10d, r10d
               	mov	rax, qword ptr [rsp + 0xa0]
               	xor	ebx, ebx
               	mov	rcx, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x48], 0x0
               	mov	rdx, qword ptr [rsp + 0x180]
               	mov	rsi, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0xc0], 0x0
               	movabs	r11, 0x180ec6d33cfd0aba
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
<L18>:
               	mov	r9, qword ptr [rsp + 0xc0]
               	xor	r9, rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	rbx, rcx
               	xor	r10, rax
<L19>:
               	mov	qword ptr [rsp + 0xc0], r9
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
               	bt	r11, rdi
               	jb	 <L18>
               	mov	r9, qword ptr [rsp + 0xc0]
               	jmp	 <L19>
<L17>:
               	xor	edi, edi
               	movabs	r11, -0x2a59ed990f36c6d4
               	jmp	 <L20>
               	nop
<L22>:
               	mov	r9, qword ptr [rsp + 0xc0]
               	xor	r9, rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	rbx, rcx
               	xor	r10, rax
<L23>:
               	mov	qword ptr [rsp + 0xc0], r9
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
               	je	 <L21>
<L20>:
               	bt	r11, rdi
               	jb	 <L22>
               	mov	r9, qword ptr [rsp + 0xc0]
               	jmp	 <L23>
<L21>:
               	xor	edi, edi
               	movabs	r11, -0x56a7d9e71fc03656
               	jmp	 <L24>
               	nop
<L26>:
               	mov	r9, qword ptr [rsp + 0xc0]
               	xor	r9, rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	rbx, rcx
               	xor	r10, rax
<L27>:
               	mov	qword ptr [rsp + 0xc0], r9
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
               	je	 <L25>
<L24>:
               	bt	r11, rdi
               	jb	 <L26>
               	mov	r9, qword ptr [rsp + 0xc0]
               	jmp	 <L27>
<L25>:
               	xor	edi, edi
               	movabs	r11, 0x39abdc4529b1661c
               	jmp	 <L28>
               	nop
<L30>:
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x108], rbx
               	xor	r10, rax
<L31>:
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
               	mov	rbx, qword ptr [rsp + 0x108]
               	je	 <L29>
<L28>:
               	bt	r11, rdi
               	jb	 <L30>
               	mov	qword ptr [rsp + 0x108], rbx
               	jmp	 <L31>
<L29>:
               	xor	edi, edi
               	xor	r15d, r15d
               	mov	rax, r10
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x40], 0x0
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0x88], 0x0
               	jmp	 <L32>
               	nop	word ptr cs:[rax + rax]
<L34>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rbx, rsi
               	xor	rax, rdx
               	xor	rdx, rbx
               	xor	rsi, rax
               	xor	rbx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L33>
<L32>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L34>
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	r14, rbx
               	xor	r15, rax
               	jmp	 <L34>
<L33>:
               	xor	edi, edi
               	jmp	 <L35>
               	nop	dword ptr [rax]
<L37>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rbx, rsi
               	xor	rax, rdx
               	xor	rdx, rbx
               	xor	rsi, rax
               	xor	rbx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L36>
<L35>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L37>
               	mov	r8, r15
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	r14, rbx
               	xor	r8, rax
               	mov	r15, r8
               	jmp	 <L37>
<L36>:
               	xor	edi, edi
               	jmp	 <L38>
               	nop	word ptr cs:[rax + rax]
<L40>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rbx, rsi
               	xor	rax, rdx
               	xor	rdx, rbx
               	xor	rsi, rax
               	xor	rbx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L39>
<L38>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L40>
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	r14, rbx
               	xor	r15, rax
               	jmp	 <L40>
<L39>:
               	xor	edi, edi
               	jmp	 <L41>
               	nop	dword ptr [rax]
<L43>:
               	mov	qword ptr [rsp + 0x100], r15
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rbx, rsi
               	xor	rax, rdx
               	xor	rdx, rbx
               	xor	rsi, rax
               	xor	rbx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r15, qword ptr [rsp + 0x100]
               	je	 <L42>
<L41>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L43>
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	r14, rbx
               	xor	r15, rax
               	jmp	 <L43>
<L42>:
               	mov	qword ptr [rsp + 0x178], r10
               	xor	edi, edi
               	xor	r11d, r11d
               	mov	rax, r15
               	xor	r10d, r10d
               	mov	rcx, r14
               	xor	r13d, r13d
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0x88]
               	xor	r12d, r12d
               	movabs	r15, 0x180ec6d33cfd0aba
               	jmp	 <L44>
               	nop	dword ptr [rax]
<L46>:
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
               	je	 <L45>
<L44>:
               	bt	r15, rdi
               	jae	 <L46>
               	xor	r12, rsi
               	xor	r13, rdx
               	xor	r10, rcx
               	xor	r11, rax
               	jmp	 <L46>
<L45>:
               	mov	qword ptr [rsp + 0x170], r14
               	xor	edi, edi
               	jmp	 <L47>
               	nop	word ptr cs:[rax + rax]
<L49>:
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
               	je	 <L48>
<L47>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L49>
               	xor	r12, rsi
               	xor	r13, rdx
               	xor	r10, rcx
               	xor	r11, rax
               	jmp	 <L49>
<L48>:
               	xor	edi, edi
               	jmp	 <L50>
               	nop	word ptr cs:[rax + rax]
<L52>:
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
               	je	 <L51>
<L50>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L52>
               	xor	r12, rsi
               	xor	r13, rdx
               	xor	r10, rcx
               	xor	r11, rax
               	jmp	 <L52>
<L51>:
               	xor	edi, edi
               	jmp	 <L53>
               	nop	word ptr cs:[rax + rax]
<L55>:
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
               	je	 <L54>
<L53>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L55>
               	xor	r12, rsi
               	xor	r13, rdx
               	xor	r10, rcx
               	xor	r11, rax
               	jmp	 <L55>
<L54>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x38], 0x0
               	mov	qword ptr [rsp + 0x160], r11
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x168], r10
               	xor	r14d, r14d
               	mov	rdx, r13
               	mov	rsi, r12
               	mov	qword ptr [rsp + 0x10], 0x0
               	jmp	 <L56>
               	nop	word ptr cs:[rax + rax]
<L58>:
               	xor	qword ptr [rsp + 0x10], rsi
               	xor	r14, rdx
               	mov	r15, r14
               	xor	r8, r10
               	mov	r14, r8
               	xor	qword ptr [rsp + 0x38], r11
<L59>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r10, rsi
               	xor	r11, rdx
               	xor	rdx, r10
               	xor	rsi, r11
               	xor	r10, r8
               	rol	r11, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, r14
               	mov	r14, r15
               	je	 <L57>
<L56>:
               	movabs	r15, 0x180ec6d33cfd0aba
               	bt	r15, rdi
               	jb	 <L58>
               	mov	r15, r14
               	mov	r14, r8
               	jmp	 <L59>
<L57>:
               	xor	edi, edi
               	jmp	 <L60>
               	nop	dword ptr [rax + rax]
<L62>:
               	xor	r15, rsi
               	mov	qword ptr [rsp + 0x10], r15
               	xor	r14, rdx
               	mov	r15, r14
               	xor	r8, r10
               	mov	r14, r8
               	xor	qword ptr [rsp + 0x38], r11
<L63>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r10, rsi
               	xor	r11, rdx
               	xor	rdx, r10
               	xor	rsi, r11
               	xor	r10, r8
               	rol	r11, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, r14
               	mov	r14, r15
               	je	 <L61>
<L60>:
               	movabs	r15, -0x2a59ed990f36c6d4
               	bt	r15, rdi
               	mov	r15, qword ptr [rsp + 0x10]
               	jb	 <L62>
               	mov	r15, r14
               	mov	r14, r8
               	jmp	 <L63>
<L61>:
               	xor	edi, edi
               	jmp	 <L64>
               	nop	word ptr cs:[rax + rax]
<L66>:
               	xor	qword ptr [rsp + 0x10], rsi
               	xor	r14, rdx
               	mov	r15, r14
               	xor	r8, r10
               	mov	r14, r8
               	xor	qword ptr [rsp + 0x38], r11
<L67>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r10, rsi
               	xor	r11, rdx
               	xor	rdx, r10
               	xor	rsi, r11
               	xor	r10, r8
               	rol	r11, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, r14
               	mov	r14, r15
               	je	 <L65>
<L64>:
               	movabs	r15, -0x56a7d9e71fc03656
               	bt	r15, rdi
               	jb	 <L66>
               	mov	r15, r14
               	mov	r14, r8
               	jmp	 <L67>
<L65>:
               	xor	edi, edi
               	movabs	r9, 0x180ec6d33cfd0aba
               	movabs	r15, 0x39abdc4529b1661c
               	jmp	 <L68>
               	nop
<L70>:
               	xor	qword ptr [rsp + 0x10], rsi
               	xor	r14, rdx
               	xor	r8, r10
               	mov	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0x38], r11
<L71>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r10, rsi
               	xor	r11, rdx
               	xor	rdx, r10
               	xor	rsi, r11
               	xor	r10, r8
               	rol	r11, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, qword ptr [rsp + 0xf8]
               	je	 <L69>
<L68>:
               	bt	r15, rdi
               	jb	 <L70>
               	mov	qword ptr [rsp + 0xf8], r8
               	jmp	 <L71>
<L69>:
               	xor	edi, edi
               	xor	r11d, r11d
               	mov	rax, qword ptr [rsp + 0x38]
               	mov	qword ptr [rsp + 0x80], 0x0
               	mov	rcx, r8
               	mov	qword ptr [rsp + 0x8], 0x0
               	mov	rdx, r14
               	mov	rsi, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x78], 0x0
               	jmp	 <L72>
               	nop	dword ptr [rax + rax]
<L74>:
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
               	je	 <L73>
<L72>:
               	bt	r9, rdi
               	mov	r8, qword ptr [rsp + 0x8]
               	jae	 <L74>
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	r8, rdx
               	mov	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	r11, rax
               	jmp	 <L74>
<L73>:
               	xor	edi, edi
               	jmp	 <L75>
               	nop	dword ptr [rax]
<L77>:
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
               	je	 <L76>
<L75>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L77>
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	r11, rax
               	jmp	 <L77>
<L76>:
               	xor	edi, edi
               	jmp	 <L78>
               	nop
<L80>:
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
               	je	 <L79>
<L78>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L80>
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	r11, rax
               	jmp	 <L80>
<L79>:
               	xor	edi, edi
               	jmp	 <L81>
               	nop
<L83>:
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
               	je	 <L82>
<L81>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L83>
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	r11, rax
               	jmp	 <L83>
<L82>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x30], 0x0
               	mov	rax, r11
               	mov	qword ptr [rsp + 0x1c0], 0x0
               	mov	rcx, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0x28], 0x0
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0x70], 0x0
               	jmp	 <L84>
               	nop	word ptr [rax + rax]
<L86>:
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
               	je	 <L85>
<L84>:
               	bt	r9, rdi
               	mov	r8, qword ptr [rsp + 0x1c0]
               	jae	 <L86>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x1c0], r8
               	xor	qword ptr [rsp + 0x30], rax
               	jmp	 <L86>
<L85>:
               	xor	edi, edi
               	jmp	 <L87>
               	nop	word ptr cs:[rax + rax]
<L89>:
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
               	je	 <L88>
<L87>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L89>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x30], rax
               	jmp	 <L89>
<L88>:
               	xor	edi, edi
               	jmp	 <L90>
<L92>:
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
               	je	 <L91>
<L90>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L92>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x30], rax
               	jmp	 <L92>
<L91>:
               	xor	edi, edi
               	jmp	 <L93>
<L95>:
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
               	je	 <L94>
<L93>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L95>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x30], rax
               	jmp	 <L95>
<L94>:
               	mov	qword ptr [rsp + 0xf0], r12
               	xor	edi, edi
               	xor	r12d, r12d
               	mov	rax, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0x68], 0x0
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	qword ptr [rsp + 0x20], 0x0
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0x60], 0x0
               	jmp	 <L96>
               	nop	dword ptr [rax]
<L98>:
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
               	je	 <L97>
<L96>:
               	bt	r9, rdi
               	jae	 <L98>
               	mov	r8, r12
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	r8, rax
               	mov	r12, r8
               	jmp	 <L98>
<L97>:
               	xor	edi, edi
               	jmp	 <L99>
               	nop	word ptr [rax + rax]
<L101>:
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
               	je	 <L100>
<L99>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L101>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	r12, rax
               	jmp	 <L101>
<L100>:
               	xor	edi, edi
               	jmp	 <L102>
               	nop	dword ptr [rax + rax]
<L104>:
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
               	je	 <L103>
<L102>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L104>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	r12, rax
               	jmp	 <L104>
<L103>:
               	xor	edi, edi
               	jmp	 <L105>
               	nop	dword ptr [rax + rax]
<L107>:
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
               	je	 <L106>
<L105>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L107>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	r12, rax
               	jmp	 <L107>
<L106>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], 0x0
               	mov	rax, r12
               	mov	qword ptr [rsp + 0x58], 0x0
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	qword ptr [rsp + 0x18], 0x0
               	mov	rsi, qword ptr [rsp + 0x20]
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	qword ptr [rsp + 0x50], 0x0
               	jmp	 <L108>
               	nop	word ptr cs:[rax + rax]
<L110>:
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	xor	rdx, r8
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r8, rax
               	xor	rdx, rcx
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L109>
<L108>:
               	bt	r9, rdi
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	jae	 <L110>
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x18], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x1a0], rcx
               	jmp	 <L110>
<L109>:
               	xor	edi, edi
               	jmp	 <L111>
               	nop	word ptr cs:[rax + rax]
<L113>:
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	xor	rdx, r8
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r8, rax
               	xor	rdx, rcx
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L112>
<L111>:
               	movabs	rcx, -0x2a59ed990f36c6d4
               	bt	rcx, rdi
               	jae	 <L113>
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x18], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L113>
<L112>:
               	xor	edi, edi
               	jmp	 <L114>
<L116>:
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	xor	rdx, r8
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r8, rax
               	xor	rdx, rcx
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L115>
<L114>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	bt	rcx, rdi
               	jae	 <L116>
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x18], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L116>
<L115>:
               	xor	edi, edi
               	jmp	 <L117>
<L119>:
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	xor	rdx, r8
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r8, rax
               	xor	rdx, rcx
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L118>
<L117>:
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rdi
               	jae	 <L119>
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x18], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L119>
<L118>:
               	mov	qword ptr [rsp + 0x158], r11
               	mov	r15, r9
               	mov	qword ptr [rsp + 0xb8], r13
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	rax, qword ptr [rsp + 0x1a0]
               	mov	qword ptr [rsp + 0xb0], 0x0
               	mov	rdx, qword ptr [rsp + 0x58]
               	xor	r10d, r10d
               	mov	rsi, qword ptr [rsp + 0x18]
               	mov	r13, qword ptr [rsp + 0x50]
               	xor	r8d, r8d
               	jmp	 <L120>
               	nop
<L122>:
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	xor	rdx, r13
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r13, rax
               	xor	rdx, rcx
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L121>
<L120>:
               	bt	r15, rdi
               	jae	 <L122>
               	mov	rcx, r9
               	xor	r8, r13
               	xor	r10, rsi
               	xor	qword ptr [rsp + 0xb0], rdx
               	xor	rcx, rax
               	mov	r9, rcx
               	jmp	 <L122>
<L121>:
               	xor	edi, edi
               	jmp	 <L123>
               	nop	word ptr cs:[rax + rax]
<L125>:
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	xor	rdx, r13
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r13, rax
               	xor	rdx, rcx
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L124>
<L123>:
               	movabs	rcx, -0x2a59ed990f36c6d4
               	bt	rcx, rdi
               	jae	 <L125>
               	xor	r8, r13
               	xor	r10, rsi
               	xor	qword ptr [rsp + 0xb0], rdx
               	xor	r9, rax
               	jmp	 <L125>
<L124>:
               	xor	edi, edi
               	jmp	 <L126>
               	nop	word ptr [rax + rax]
<L128>:
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	xor	rdx, r13
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r13, rax
               	xor	rdx, rcx
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L127>
<L126>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	bt	rcx, rdi
               	jae	 <L128>
               	xor	r8, r13
               	xor	r10, rsi
               	xor	qword ptr [rsp + 0xb0], rdx
               	xor	r9, rax
               	jmp	 <L128>
<L127>:
               	xor	edi, edi
               	jmp	 <L129>
               	nop	word ptr [rax + rax]
<L131>:
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	xor	rdx, r13
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r13, rax
               	xor	rdx, rcx
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L130>
<L129>:
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rdi
               	jae	 <L131>
               	xor	r8, r13
               	xor	r10, rsi
               	xor	qword ptr [rsp + 0xb0], rdx
               	xor	r9, rax
               	jmp	 <L131>
<L130>:
               	mov	rdx, r14
               	mov	eax, 0x40
               	nop
<L132>:
               	dec	rax
               	jne	 <L132>
               	mov	eax, 0x40
               	mov	rcx, qword ptr [rsp + 0xe8]
               	mov	rsi, qword ptr [rsp + 0x118]
               	nop	word ptr [rax + rax]
<L133>:
               	dec	rax
               	jne	 <L133>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L134>:
               	dec	rax
               	jne	 <L134>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L135>:
               	dec	rax
               	jne	 <L135>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L136>:
               	dec	rax
               	jne	 <L136>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L137>:
               	dec	rax
               	jne	 <L137>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L138>:
               	dec	rax
               	jne	 <L138>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L139>:
               	dec	rax
               	jne	 <L139>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L140>:
               	dec	rax
               	jne	 <L140>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L141>:
               	dec	rax
               	jne	 <L141>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L142>:
               	dec	rax
               	jne	 <L142>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L143>:
               	dec	rax
               	jne	 <L143>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L144>:
               	dec	rax
               	jne	 <L144>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L145>:
               	dec	rax
               	jne	 <L145>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L146>:
               	dec	rax
               	jne	 <L146>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L147>:
               	dec	rax
               	jne	 <L147>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L148>:
               	dec	rax
               	jne	 <L148>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L149>:
               	dec	rax
               	jne	 <L149>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L150>:
               	dec	rax
               	jne	 <L150>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L151>:
               	dec	rax
               	jne	 <L151>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L152>:
               	dec	rax
               	jne	 <L152>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L153>:
               	dec	rax
               	jne	 <L153>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L154>:
               	dec	rax
               	jne	 <L154>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L155>:
               	dec	rax
               	jne	 <L155>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L156>:
               	dec	rax
               	jne	 <L156>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L157>:
               	dec	rax
               	jne	 <L157>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L158>:
               	dec	rax
               	jne	 <L158>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L159>:
               	dec	rax
               	jne	 <L159>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L160>:
               	dec	rax
               	jne	 <L160>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L161>:
               	dec	rax
               	jne	 <L161>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L162>:
               	dec	rax
               	jne	 <L162>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L163>:
               	dec	rax
               	jne	 <L163>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L164>:
               	dec	rax
               	jne	 <L164>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L165>:
               	dec	rax
               	jne	 <L165>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L166>:
               	dec	rax
               	jne	 <L166>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L167>:
               	dec	rax
               	jne	 <L167>
               	vxorps	xmm11, xmm11, xmm11
               	test	esi, esi
               	je	 <L168>
               	mov	r11d, esi
               	mov	r13, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x128], rdx
               	mov	qword ptr [rsp + 0x150], r8
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	qword ptr [rsp + 0x140], r12
               	mov	r14, qword ptr [rsp + 0xf0]
               	mov	qword ptr [rsp + 0x148], r9
               	mov	qword ptr [rsp + 0x120], r10
               	nop	word ptr cs:[rax + rax]
<L169>:
               	mov	dword ptr [rsp + 0x134], r11d
               	mov	qword ptr [rsp + 0x8], r8
               	mov	qword ptr [rsp + 0xf0], r14
               	mov	r15, qword ptr [rsp + 0xa8]
               	mov	qword ptr [rsp + 0xe8], rcx
               	vpextrq	rax, xmm0, 0x1
               	mov	qword ptr [rsp + 0xb8], rax
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	r14, [rcx + 8*rcx]
               	mov	rax, qword ptr [rsp + 0x180]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x48]
               	lea	rsi, [rdx + 4*rdx]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rdi, r13
               	lea	r9, [4*r13]
               	add	r9, r13
               	rol	r9, 0x7
               	lea	r9, [r9 + 8*r9]
               	mov	rdx, qword ptr [rsp + 0x128]
               	lea	r10, [rdx + 4*rdx]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	lea	r11, [r8 + 4*r8]
               	rol	r11, 0x7
               	lea	r11, [r11 + 8*r11]
               	mov	rdx, qword ptr [rsp + 0x28]
               	lea	rbx, [rdx + 4*rdx]
               	rol	rbx, 0x7
               	lea	rbx, [rbx + 8*rbx]
               	mov	rdx, qword ptr [rsp + 0x20]
               	lea	r12, [rdx + 4*rdx]
               	rol	r12, 0x7
               	lea	r12, [r12 + 8*r12]
               	mov	rdx, qword ptr [rsp + 0x18]
               	lea	r13, [rdx + 4*rdx]
               	rol	r13, 0x7
               	lea	r13, [r13 + 8*r13]
               	mov	rdx, qword ptr [rsp + 0x120]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm1, rcx
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm1
               	vmovq	xmm1, rsi
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm8, ymm1
               	vmovq	xmm1, rax
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm7, ymm1
               	vmovq	xmm1, r9
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm2, ymm1
               	vmovq	xmm1, r10
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm3, ymm1
               	vmovq	xmm1, r11
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm5, ymm1
               	vmovq	xmm1, rbx
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm9, ymm1
               	vmovq	xmm1, r12
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm1
               	vmovq	xmm1, r13
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vmovq	xmm4, rdx
               	vpmovzxbd	ymm4, xmm4      # ymm4 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero,xmm4[4],zero,zero,zero,xmm4[5],zero,zero,zero,xmm4[6],zero,zero,zero,xmm4[7],zero,zero,zero
               	vcvtdq2ps	ymm4, ymm4
               	mov	ebx, r14d
               	shr	ebx, 0x8
               	mov	r11d, r14d
               	mov	r8d, r14d
               	mov	rcx, r14
               	mov	r9, r14
               	mov	r13, qword ptr [rsp + 0xe8]
               	mov	rdx, r13
               	shr	rdx, 0x1e
               	movabs	rax, 0x3fffffffc
               	and	rdx, rax
               	lea	r10, [r15 + rdx]
               	vmovaps	ymmword ptr [r15 + rdx], ymm10
               	lea	rdx, [4*r13]
               	and	rdx, rax
               	vmovaps	ymmword ptr [rdx + r10], ymm8
               	lea	rdx, [8*r13]
               	movabs	rax, 0x7fffffff8
               	and	rdx, rax
               	vmovaps	ymmword ptr [rdx + r10], ymm7
               	mov	eax, r13d
               	mov	qword ptr [rsp + 0x1f8], rax
               	lea	rdx, [rax + 2*rax]
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm2
               	mov	rsi, rax
               	shl	rsi, 0x4
               	vmovaps	ymmword ptr [rsi + r10], ymm3
               	lea	r12, [rax + 4*rax]
               	vmovaps	ymmword ptr [r10 + 4*r12], ymm5
               	vmovaps	ymmword ptr [r10 + 8*rdx], ymm9
               	lea	rdx, [rax + 8*rax]
               	lea	rsi, [rdx + 2*rdx]
               	add	rsi, rax
               	vmovaps	ymmword ptr [r10 + rsi], ymm6
               	mov	rsi, r13
               	shl	rsi, 0x5
               	movabs	rax, 0x1fffffffe0
               	and	rsi, rax
               	vmovaps	ymmword ptr [rsi + r10], ymm1
               	mov	rsi, r14
               	vmovaps	ymmword ptr [r10 + 4*rdx], ymm4
               	movzx	edx, r14b
               	imul	edx, edx, 0x4f
               	shr	edx, 0xa
               	lea	r10d, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*r10]
               	mov	r10, r14
               	sub	r14b, dl
               	movzx	ebx, bl
               	imul	edx, ebx, 0x4f
               	shr	edx, 0xa
               	lea	r15d, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*r15]
               	shr	r11d, 0x10
               	sub	bl, dl
               	movzx	r11d, r11b
               	imul	edx, r11d, 0x4f
               	shr	edx, 0xa
               	lea	r15d, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*r15]
               	shr	r8d, 0x18
               	sub	r11b, dl
               	imul	edx, r8d, 0x4f
               	shr	edx, 0xa
               	lea	r15d, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*r15]
               	shr	rcx, 0x20
               	sub	r8b, dl
               	movzx	edx, cl
               	imul	edx, edx, 0x4f
               	shr	edx, 0xa
               	lea	r15d, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*r15]
               	shr	r9, 0x28
               	sub	cl, dl
               	movzx	edx, r9b
               	imul	edx, edx, 0x4f
               	shr	edx, 0xa
               	lea	r15d, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*r15]
               	shr	rsi, 0x30
               	sub	r9b, dl
               	movzx	edx, sil
               	imul	edx, edx, 0x4f
               	shr	edx, 0xa
               	lea	r15d, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*r15]
               	shr	r10, 0x38
               	sub	sil, dl
               	imul	edx, r10d, 0x4f
               	shr	edx, 0xa
               	lea	r15d, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*r15]
               	mov	r15, qword ptr [rsp + 0x170]
               	sub	r10b, dl
               	movzx	edx, r10b
               	mov	r10, qword ptr [rsp + 0x98]
               	shl	rdx, 0x38
               	movzx	esi, sil
               	shl	rsi, 0x30
               	or	rsi, rdx
               	movzx	edx, r9b
               	mov	r9, qword ptr [rsp + 0xa0]
               	shl	rdx, 0x28
               	or	rdx, rsi
               	movzx	ecx, cl
               	shl	rcx, 0x20
               	or	rcx, rdx
               	movzx	edx, r8b
               	shl	edx, 0x18
               	or	rdx, rcx
               	movzx	ecx, r11b
               	mov	r8, qword ptr [rsp + 0x180]
               	shl	ecx, 0x10
               	or	rcx, rdx
               	movzx	edx, bl
               	mov	rbx, qword ptr [rsp + 0xc0]
               	shl	edx, 0x8
               	or	rdx, rcx
               	movzx	ecx, r14b
               	or	rcx, rdx
               	mov	rdx, r13
               	shr	rdx, 0x20
               	mov	rax, qword ptr [rsp + 0xa8]
               	lea	rsi, [rax + 8*r12]
               	mov	rax, qword ptr [rsp + 0x90]
               	mov	qword ptr [rdx + rsi], rcx
               	mov	r14, qword ptr [rsp + 0x48]
               	vpermq	ymm1, ymm0, 0xe3        # ymm1 = ymm0[3,0,2,3]
               	vpermq	ymm2, ymm0, 0xe9        # ymm2 = ymm0[1,2,2,3]
               	mov	rdx, qword ptr [rsp + 0xb8]
               	shl	rdx, 0x11
               	vpxor	xmm1, xmm2, xmm1
               	vpextrq	rcx, xmm1, 0x1
               	xor	rcx, rdx
               	vmovq	xmm2, rcx
               	vmovq	rcx, xmm1
               	rol	rcx, 0x2d
               	movabs	rsi, -0x100000000
               	and	r13, rsi
               	mov	qword ptr [rsp + 0x138], r13
               	vmovq	xmm3, rcx
               	mov	rcx, r8
               	shl	rcx, 0x11
               	xor	r10, rax
               	xor	r9, r8
               	xor	r8, r10
               	mov	qword ptr [rsp + 0x180], r8
               	mov	rsi, qword ptr [rsp + 0x8]
               	xor	rax, r9
               	mov	qword ptr [rsp + 0x90], rax
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x98], r10
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xa0], r9
               	mov	rcx, r14
               	shl	rcx, 0x11
               	mov	r9, qword ptr [rsp + 0x108]
               	xor	r9, rbx
               	mov	rax, qword ptr [rsp + 0x178]
               	xor	rax, r14
               	xor	r14, r9
               	mov	qword ptr [rsp + 0x48], r14
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0xc0], rbx
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x108], r9
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x178], rax
               	mov	rax, qword ptr [rsp + 0x40]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	xor	r15, qword ptr [rsp + 0x88]
               	mov	r14, qword ptr [rsp + 0x100]
               	xor	r14, rax
               	xor	rax, r15
               	mov	qword ptr [rsp + 0x40], rax
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x170], r15
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0x168]
               	xor	rax, qword ptr [rsp + 0xf0]
               	mov	r10, qword ptr [rsp + 0x160]
               	xor	r10, rdi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x168], rax
               	mov	rdx, qword ptr [rsp + 0x128]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0xf8]
               	xor	rax, qword ptr [rsp + 0x10]
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x128], rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xf8], rax
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0x80]
               	mov	r13, qword ptr [rsp + 0x78]
               	xor	rax, r13
               	mov	r9, qword ptr [rsp + 0x158]
               	xor	r9, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x8], rsi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x80], rax
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0x1c0]
               	mov	rbx, qword ptr [rsp + 0x70]
               	xor	rax, rbx
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x28], rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x1c0], rax
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0x68]
               	mov	r8, qword ptr [rsp + 0x60]
               	xor	rax, r8
               	mov	r15, qword ptr [rsp + 0x140]
               	xor	r15, rdx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x20], rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x68], rax
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0x58]
               	mov	r11, qword ptr [rsp + 0x50]
               	xor	rax, r11
               	mov	r12, qword ptr [rsp + 0x1a0]
               	xor	r12, rdx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x18], rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x58], rax
               	mov	rcx, qword ptr [rsp + 0x120]
               	mov	rsi, rcx
               	shl	rsi, 0x11
               	mov	rdi, qword ptr [rsp + 0x150]
               	mov	rax, qword ptr [rsp + 0xb0]
               	xor	rax, rdi
               	mov	rdx, qword ptr [rsp + 0x148]
               	xor	rdx, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x120], rcx
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0xb0], rax
               	mov	rax, qword ptr [rsp + 0x1f8]
               	movabs	rcx, 0x7fffffff8
               	mov	rsi, qword ptr [rsp + 0x138]
               	add	rcx, rsi
               	xor	qword ptr [rsp + 0x88], r14
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x100], r14
               	mov	r14, qword ptr [rsp + 0xf0]
               	add	rcx, rax
               	add	rcx, 0x8
               	xor	r14, r10
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x160], r10
               	vpxor	xmm0, xmm1, xmm0
               	mov	r10, qword ptr [rsp + 0x38]
               	xor	qword ptr [rsp + 0x10], r10
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x38], r10
               	vpbroadcastq	ymm1, xmm2
               	xor	r13, r9
               	mov	qword ptr [rsp + 0x78], r13
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x158], r9
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	mov	rsi, qword ptr [rsp + 0x30]
               	xor	rbx, rsi
               	mov	qword ptr [rsp + 0x70], rbx
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x30], rsi
               	vpbroadcastq	ymm1, xmm3
               	xor	r8, r15
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	r13, qword ptr [rsp + 0xb8]
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x140], r15
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	xor	r11, r12
               	mov	qword ptr [rsp + 0x50], r11
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x1a0], r12
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x150], rdi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x148], rdx
               	mov	r11d, dword ptr [rsp + 0x134]
               	add	r11d, -0x8
               	jne	 <L169>
               	mov	rdx, qword ptr [rsp + 0x138]
               	mov	r13, rax
               	movabs	rax, 0x7fffffff8
               	mov	rcx, qword ptr [rsp + 0xe8]
               	shr	rcx, 0x23
               	cmp	ecx, 0x1ffffffe
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	rsi, qword ptr [rsp + 0x118]
               	mov	rdi, qword ptr [rsp + 0xa8]
               	ja	 <L170>
               	lea	r14, [rax + rdx]
               	add	r14, 0x8
               	shr	r14, 0x23
               	lea	rdi, [rsp + 0x200]
               	mov	edx, 0x400
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovdqa	ymm6, ymmword ptr  <memset+0xa20>
               	vmovdqa	ymm7, ymmword ptr  <memset+0xa40>
               	vpbroadcastd	ymm8, dword ptr  <memset+0xa80>
               	vpbroadcastd	ymm9, dword ptr  <memset+0xa8c>
               	vpbroadcastd	ymm10, dword ptr  <memset+0xa88>
               	movabs	rbx, -0x100000000
               	vmovdqa	ymmword ptr [rsp + 0x1c0], ymm8
               	vmovdqa	ymmword ptr [rsp + 0x1a0], ymm9
               	vmovdqa	ymmword ptr [rsp + 0x180], ymm10
               	nop
<L173>:
               	mov	r12d, r14d
               	neg	r12d
               	mov	qword ptr [rsp + 0x8], r14
               	and	r12d, r14d
               	mov	rax, r13
               	and	rax, rbx
               	mov	qword ptr [rsp + 0x10], r12
               	shl	r12, 0x23
               	add	r12, rax
               	mov	eax, r13d
               	mov	qword ptr [rsp + 0xc0], rax
               	mov	rax, r12
               	xor	rax, r13
               	shr	rax, 0x20
               	mov	r8d, 0x1
               	jne	 <L171>
<L175>:
               	movsxd	rax, r8d
               	shl	rax, 0x5
               	add	rax, rsp
               	add	rax, 0x200
               	mov	r14, qword ptr [rsp + 0x8]
               	sub	r14d, dword ptr [rsp + 0x10]
               	je	 <L172>
               	or	r12, qword ptr [rsp + 0xc0]
               	vmovdqa	ymm0, ymmword ptr [rax]
               	vmovdqa	ymmword ptr [rax + 0x20], ymm0
               	mov	r13, r12
               	test	r8d, r8d
               	js	 <L173>
               	mov	edx, r8d
               	shl	rdx, 0x5
               	add	rdx, 0x20
               	lea	rdi, [rsp + 0x200]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovdqa	ymm10, ymmword ptr [rsp + 0x180]
               	vmovdqa	ymm9, ymmword ptr [rsp + 0x1a0]
               	vmovdqa	ymm8, ymmword ptr [rsp + 0x1c0]
               	vmovdqa	ymm7, ymmword ptr  <memset+0xa40>
               	vmovdqa	ymm6, ymmword ptr  <memset+0xa20>
               	mov	r13, r12
               	jmp	 <L173>
               	nop	word ptr [rax + rax]
<L171>:
               	mov	rdx, r13
               	shr	rdx, 0x20
               	mov	rcx, qword ptr [rsp + 0xc0]
               	lea	rax, [rcx + 4*rcx]
               	mov	r8, qword ptr [rsp + 0xa8]
               	lea	rsi, [r8 + 8*rax]
               	lea	rax, [rcx + 8*rcx]
               	lea	rdi, [rax + 2*rax]
               	add	rcx, r8
               	add	rdi, rcx
               	shl	r13, 0x5
               	movabs	rcx, 0x1fffffffe0
               	and	r13, rcx
               	add	r13, r8
               	lea	r9, [r8 + 4*rax]
               	mov	r10d, 0x1
               	xor	ecx, ecx
               	mov	r14d, 0x1
               	jmp	 <L174>
               	nop	word ptr cs:[rax + rax]
<L176>:
               	mov	r14d, r8d
               	movsxd	rax, r8d
               	shl	rax, 0x5
               	vmovaps	ymmword ptr [rsp + rax + 0x200], ymm0
               	add	edx, 0x8
               	mov	eax, 0xfffffffe
               	sub	eax, r10d
               	inc	r10d
               	bsr	r11d, r10d
               	xor	r11d, 0x1f
               	popcnt	ecx, eax
               	sub	ecx, r11d
               	mov	rax, rdx
               	shl	rax, 0x20
               	cmp	rax, r12
               	je	 <L175>
<L174>:
               	vpmovzxbd	ymm0, qword ptr [rsi + rdx]
               	vpermd	ymm1, ymm0, ymm6
               	vpermd	ymm2, ymm0, ymm7
               	vpslld	ymm3, ymm0, 0x1c
               	vblendvps	ymm1, ymm1, ymm2, ymm3
               	vpsllvd	ymm2, ymm8, ymm0
               	vmaskmovps	ymm3, ymm2, ymmword ptr [r13 + 4*rdx]
               	vmovaps	ymm4, ymmword ptr [rdi + 4*rdx]
               	vblendvps	ymm2, ymm4, ymm3, ymm2
               	vpsllvd	ymm3, ymm9, ymm0
               	vmaskmovps	ymm5, ymm3, ymmword ptr [r9 + 4*rdx]
               	mov	r8d, ecx
               	vblendvps	ymm3, ymm4, ymm5, ymm3
               	vmulps	ymm1, ymm4, ymm1
               	vmulps	ymm1, ymm1, ymm2
               	vmulps	ymm2, ymm3, ymm1
               	vpsllvd	ymm0, ymm10, ymm0
               	vblendvps	ymm0, ymm2, ymm1, ymm0
               	mov	r15d, ecx
               	sub	r15d, r14d
               	jl	 <L176>
               	movsxd	r11, r14d
               	lea	ecx, [r15 + 0x1]
               	and	ecx, 0x3
               	je	 <L177>
               	dec	ecx
               	mov	rax, r11
               	shl	rax, 0x5
               	lea	rbx, [rsp + rax]
               	add	rbx, 0x200
               	mov	eax, r8d
               	sub	al, r14b
               	inc	al
               	movzx	r14d, al
               	and	r14d, 0x3
               	shl	r14d, 0x5
               	xor	eax, eax
               	nop
<L178>:
               	vaddps	ymm0, ymm0, ymmword ptr [rbx + rax]
               	add	rax, 0x20
               	cmp	r14d, eax
               	jne	 <L178>
               	add	r11, rcx
               	inc	r11
               	movabs	rbx, -0x100000000
<L177>:
               	cmp	r15d, 0x3
               	jb	 <L176>
               	mov	ecx, r8d
               	sub	ecx, r11d
               	inc	ecx
               	shl	r11, 0x5
               	lea	rax, [rsp + 0x260]
               	add	r11, rax
               	nop
<L179>:
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x60]
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x40]
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x20]
               	vaddps	ymm0, ymm0, ymmword ptr [r11]
               	sub	r11, -0x80
               	add	ecx, -0x4
               	jne	 <L179>
               	jmp	 <L176>
<L168>:
               	mov	rbx, qword ptr [rsp + 0x110]
               	jmp	 <L180>
<L172>:
               	vmovaps	ymm11, ymmword ptr [rax]
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	rsi, qword ptr [rsp + 0x118]
<L180>:
               	mov	rdi, qword ptr [rsp + 0xa8]
<L170>:
               	vmovaps	ymmword ptr [rsp + 0xc0], ymm11
               	mov	r14, rsi
               	vzeroupper
               	call	 <free@plt>
               	cmp	ebx, 0x2a
               	jne	 <L181>
               	cmp	r14d, 0x186a0
               	jne	 <L181>
               	vmovaps	ymm1, ymmword ptr [rsp + 0xc0]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <memset+0xa84>
               	jne	 <L182>
<L181>:
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
<L182>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0xc0], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0xc0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x55b0>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x5590>
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

<__cxa_throw@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x20>
               	push	0x1
               	jmp	 <.plt>

<__cxa_allocate_exception@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>

<aligned_alloc@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	push	0x3
               	jmp	 <.plt>

<free@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	push	0x5
               	jmp	 <.plt>
