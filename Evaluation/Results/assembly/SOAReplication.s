
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
               	call	qword ptr  <memset+0x56c8>
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
               	mov	rax, qword ptr  <memset+0x56d8>
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
               	mov	rax, qword ptr  <memset+0x56e0>
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
               	cmp	qword ptr , 0x0 <memset+0x56e8>
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
               	and	rsp, -0x40
               	sub	rsp, 0x600
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
               	mov	qword ptr [rsp + 0x150], rdx
               	add	ecx, edx
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x100], rcx
               	lea	rsi, [rcx + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	r10, r14
               	mov	qword ptr [rsp + 0x158], rax
               	mov	qword ptr [rsp + 0x148], rbx
               	movsxd	rax, ebx
               	vpbroadcastq	ymm0, rax
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <memset+0xa00>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rcx, -0x61c8864680b583eb
               	add	rcx, rax
               	shr	rcx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rcx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0xa60>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <memset+0xa70>
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovq	rax, xmm0
               	vpextrq	rcx, xmm0, 0x1
               	vextracti128	xmm1, ymm0, 0x1
               	vmovq	rdx, xmm1
               	vpextrq	rsi, xmm1, 0x1
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x60], 0x0
               	mov	qword ptr [rsp + 0xc8], 0x0
               	xor	r11d, r11d
               	xor	r15d, r15d
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rorx	rsi, rsi, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L5>
<L4>:
               	bt	r10, rdi
               	jae	 <L6>
               	xor	r15, rax
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0xc8], rdx
               	xor	qword ptr [rsp + 0x60], rsi
               	jmp	 <L6>
<L5>:
               	movabs	r9, -0x2a59ed990f36c6d4
               	xor	edi, edi
               	jmp	 <L7>
               	nop
<L9>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rorx	rsi, rsi, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L8>
<L7>:
               	bt	r9, rdi
               	jae	 <L9>
               	xor	r15, rax
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0xc8], rdx
               	xor	qword ptr [rsp + 0x60], rsi
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
               	rorx	rsi, rsi, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	r15, rax
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0xc8], rdx
               	xor	qword ptr [rsp + 0x60], rsi
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop
<L15>:
               	mov	r8, rcx
               	shl	r8, 0x11
               	xor	rdx, rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rax, rsi
               	xor	rdx, r8
               	rorx	rsi, rsi, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	r15, rax
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0xc8], rdx
               	xor	qword ptr [rsp + 0x60], rsi
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	rax, qword ptr [rsp + 0x60]
               	xor	r8d, r8d
               	mov	rcx, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0x58], 0x0
               	mov	rdx, r11
               	mov	rsi, r15
               	xor	r9d, r9d
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
<L18>:
               	xor	r9, rsi
               	mov	r12, r9
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r14, rax
<L19>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, r9
               	mov	r9, r12
               	je	 <L17>
<L16>:
               	bt	r10, rdi
               	jb	 <L18>
               	mov	r12, r9
               	mov	r9, r8
               	jmp	 <L19>
<L17>:
               	mov	qword ptr [rsp + 0x170], r11
               	xor	edi, edi
               	movabs	r11, -0x2a59ed990f36c6d4
               	jmp	 <L20>
               	nop	word ptr cs:[rax + rax]
<L22>:
               	xor	r9, rsi
               	mov	r12, r9
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r14, rax
<L23>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, r9
               	mov	r9, r12
               	je	 <L21>
<L20>:
               	bt	r11, rdi
               	jb	 <L22>
               	mov	r12, r9
               	mov	r9, r8
               	jmp	 <L23>
<L21>:
               	xor	edi, edi
               	movabs	r11, -0x56a7d9e71fc03656
               	jmp	 <L24>
               	nop	dword ptr [rax + rax]
<L26>:
               	xor	r9, rsi
               	mov	r12, r9
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r14, rax
<L27>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, r9
               	mov	r9, r12
               	je	 <L25>
<L24>:
               	bt	r11, rdi
               	jb	 <L26>
               	mov	r12, r9
               	mov	r9, r8
               	jmp	 <L27>
<L25>:
               	xor	edi, edi
               	movabs	r11, -0x2a59ed990f36c6d4
               	movabs	rbx, 0x39abdc4529b1661c
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
<L30>:
               	xor	r9, rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x118], r8
               	xor	r14, rax
<L31>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, qword ptr [rsp + 0x118]
               	je	 <L29>
<L28>:
               	bt	rbx, rdi
               	jb	 <L30>
               	mov	qword ptr [rsp + 0x118], r8
               	jmp	 <L31>
<L29>:
               	mov	qword ptr [rsp + 0x1b0], r15
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x50], 0x0
               	mov	qword ptr [rsp + 0x168], r14
               	mov	rax, r14
               	xor	r14d, r14d
               	mov	rcx, r8
               	xor	r15d, r15d
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, r9
               	mov	qword ptr [rsp + 0xc0], 0x0
               	jmp	 <L32>
<L34>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L33>
<L32>:
               	bt	r10, rdi
               	jae	 <L34>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	r15, rdx
               	xor	r14, rcx
               	xor	qword ptr [rsp + 0x50], rax
               	jmp	 <L34>
<L33>:
               	xor	edi, edi
               	jmp	 <L35>
               	nop	word ptr cs:[rax + rax]
<L37>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L36>
<L35>:
               	bt	r11, rdi
               	jae	 <L37>
               	mov	r8, r14
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	r15, rdx
               	xor	r8, rcx
               	mov	r14, r8
               	xor	qword ptr [rsp + 0x50], rax
               	jmp	 <L37>
<L36>:
               	xor	edi, edi
               	jmp	 <L38>
               	nop	word ptr [rax + rax]
<L40>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L39>
<L38>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L40>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	r15, rdx
               	xor	r14, rcx
               	xor	qword ptr [rsp + 0x50], rax
               	jmp	 <L40>
<L39>:
               	xor	edi, edi
               	jmp	 <L41>
               	nop
<L43>:
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	r15, rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x110], r14
               	xor	qword ptr [rsp + 0x50], rax
<L44>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r14, qword ptr [rsp + 0x110]
               	je	 <L42>
<L41>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jb	 <L43>
               	mov	qword ptr [rsp + 0x110], r14
               	jmp	 <L44>
<L42>:
               	mov	r12, r10
               	xor	edi, edi
               	xor	r11d, r11d
               	mov	rax, qword ptr [rsp + 0x50]
               	xor	r13d, r13d
               	mov	rcx, r14
               	xor	ebx, ebx
               	mov	r14, r15
               	mov	rdx, r15
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	r10d, r10d
               	jmp	 <L45>
               	nop	word ptr [rax + rax]
<L47>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L46>
<L45>:
               	bt	r12, rdi
               	jae	 <L47>
               	xor	r10, rsi
               	xor	rbx, rdx
               	xor	r13, rcx
               	xor	r11, rax
               	jmp	 <L47>
<L46>:
               	xor	edi, edi
               	mov	r15, r11
               	jmp	 <L48>
<L50>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L49>
<L48>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L50>
               	xor	r10, rsi
               	xor	rbx, rdx
               	xor	r13, rcx
               	xor	r15, rax
               	jmp	 <L50>
<L49>:
               	xor	edi, edi
               	jmp	 <L51>
               	nop	word ptr [rax + rax]
<L53>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L52>
<L51>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L53>
               	xor	r10, rsi
               	xor	rbx, rdx
               	xor	r13, rcx
               	xor	r15, rax
               	jmp	 <L53>
<L52>:
               	xor	edi, edi
               	jmp	 <L54>
               	nop	word ptr [rax + rax]
<L56>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L55>
<L54>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L56>
               	xor	r10, rsi
               	xor	rbx, rdx
               	xor	r13, rcx
               	xor	r15, rax
               	jmp	 <L56>
<L55>:
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, r15
               	mov	qword ptr [rsp + 0xb8], 0x0
               	mov	rcx, r13
               	mov	qword ptr [rsp + 0x28], 0x0
               	mov	rdx, rbx
               	mov	rsi, r10
               	mov	qword ptr [rsp + 0xb0], 0x0
               	movabs	r11, 0x180ec6d33cfd0aba
               	jmp	 <L57>
               	nop	word ptr cs:[rax + rax]
<L59>:
               	mov	qword ptr [rsp + 0x30], r8
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, qword ptr [rsp + 0x30]
               	je	 <L58>
<L57>:
               	bt	r11, rdi
               	jae	 <L59>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	r8, rax
               	jmp	 <L59>
<L58>:
               	xor	edi, edi
               	jmp	 <L60>
               	nop	word ptr cs:[rax + rax]
<L62>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L61>
<L60>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	mov	r8, qword ptr [rsp + 0x30]
               	jae	 <L62>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x30], r8
               	jmp	 <L62>
<L61>:
               	xor	edi, edi
               	jmp	 <L63>
               	nop	dword ptr [rax]
<L65>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L64>
<L63>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L65>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x30], rax
               	jmp	 <L65>
<L64>:
               	xor	edi, edi
               	jmp	 <L66>
               	nop	word ptr cs:[rax + rax]
<L68>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L67>
<L66>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L68>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x30], rax
               	jmp	 <L68>
<L67>:
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0xa8], 0x0
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x38], 0x0
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0xa0], 0x0
               	movabs	r12, 0x180ec6d33cfd0aba
               	jmp	 <L69>
               	nop	dword ptr [rax]
<L71>:
               	mov	qword ptr [rsp + 0x120], r8
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, qword ptr [rsp + 0x120]
               	je	 <L70>
<L69>:
               	bt	r12, rdi
               	jae	 <L71>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	r8, rax
               	jmp	 <L71>
<L70>:
               	xor	edi, edi
               	jmp	 <L72>
               	nop	dword ptr [rax]
<L74>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L73>
<L72>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	mov	r8, qword ptr [rsp + 0x120]
               	jae	 <L74>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x120], r8
               	jmp	 <L74>
<L73>:
               	xor	edi, edi
               	jmp	 <L75>
               	nop	word ptr cs:[rax + rax]
<L77>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L76>
<L75>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L77>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L77>
<L76>:
               	xor	edi, edi
               	jmp	 <L78>
               	nop	dword ptr [rax + rax]
<L80>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L79>
<L78>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L80>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L80>
<L79>:
               	mov	qword ptr [rsp + 0xe0], r14
               	xor	esi, esi
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x120]
               	mov	qword ptr [rsp + 0x98], 0x0
               	mov	rcx, qword ptr [rsp + 0xa8]
               	mov	qword ptr [rsp + 0x48], 0x0
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	qword ptr [rsp + 0x90], 0x0
               	movabs	r14, 0x180ec6d33cfd0aba
               	jmp	 <L81>
               	nop	word ptr [rax + rax]
<L83>:
               	mov	r11, rdi
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	mov	rdi, r11
               	je	 <L82>
<L81>:
               	bt	r14, rsi
               	jae	 <L83>
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	rdi, rax
               	jmp	 <L83>
<L82>:
               	xor	esi, esi
               	jmp	 <L84>
               	nop
<L86>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L85>
<L84>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, rsi
               	jae	 <L86>
               	mov	rdi, r11
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	rdi, rax
               	mov	r11, rdi
               	jmp	 <L86>
<L85>:
               	xor	esi, esi
               	jmp	 <L87>
               	nop	dword ptr [rax]
<L89>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L88>
<L87>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, rsi
               	jae	 <L89>
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	r11, rax
               	jmp	 <L89>
<L88>:
               	xor	esi, esi
               	jmp	 <L90>
               	nop	word ptr cs:[rax + rax]
<L92>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L91>
<L90>:
               	movabs	rdi, 0x39abdc4529b1661c
               	bt	rdi, rsi
               	jae	 <L92>
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	r11, rax
               	jmp	 <L92>
<L91>:
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x88], 0x0
               	mov	rax, r11
               	mov	qword ptr [rsp + 0x80], 0x0
               	mov	rcx, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x40], 0x0
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	r8, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x78], 0x0
               	jmp	 <L93>
               	nop	word ptr cs:[rax + rax]
<L95>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L94>
<L93>:
               	movabs	rdi, 0x180ec6d33cfd0aba
               	bt	rdi, rsi
               	jae	 <L95>
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L95>
<L94>:
               	xor	esi, esi
               	jmp	 <L96>
               	nop	word ptr cs:[rax + rax]
<L98>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L97>
<L96>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, rsi
               	jae	 <L98>
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L98>
<L97>:
               	xor	esi, esi
               	jmp	 <L99>
               	nop	word ptr cs:[rax + rax]
<L101>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L100>
<L99>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, rsi
               	jae	 <L101>
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L101>
<L100>:
               	xor	esi, esi
               	jmp	 <L102>
               	nop	word ptr cs:[rax + rax]
<L104>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L103>
<L102>:
               	movabs	rdi, 0x39abdc4529b1661c
               	bt	rdi, rsi
               	jae	 <L104>
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L104>
<L103>:
               	mov	qword ptr [rsp + 0x108], r10
               	mov	qword ptr [rsp + 0xf8], rbx
               	xor	esi, esi
               	xor	r12d, r12d
               	mov	rax, qword ptr [rsp + 0x88]
               	xor	r10d, r10d
               	mov	rdx, qword ptr [rsp + 0x80]
               	xor	ecx, ecx
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	rbx, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0x70], 0x0
               	jmp	 <L105>
<L107>:
               	xor	qword ptr [rsp + 0x70], rbx
               	mov	rcx, rdi
               	xor	rcx, r8
               	xor	r10, rdx
               	xor	r12, rax
<L108>:
               	mov	rdi, r8
               	shl	rdi, 0x11
               	xor	rdx, rbx
               	xor	rax, r8
               	xor	r8, rdx
               	xor	rbx, rax
               	xor	rdx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L106>
<L105>:
               	mov	rdi, rcx
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rsi
               	jb	 <L107>
               	mov	rcx, rdi
               	jmp	 <L108>
<L106>:
               	xor	esi, esi
               	jmp	 <L109>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	xor	qword ptr [rsp + 0x70], rbx
               	mov	rcx, rdi
               	xor	rcx, r8
               	xor	r10, rdx
               	xor	r12, rax
<L112>:
               	mov	rdi, r8
               	shl	rdi, 0x11
               	xor	rdx, rbx
               	xor	rax, r8
               	xor	r8, rdx
               	xor	rbx, rax
               	xor	rdx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L110>
<L109>:
               	mov	rdi, rcx
               	movabs	rcx, -0x2a59ed990f36c6d4
               	bt	rcx, rsi
               	jb	 <L111>
               	mov	rcx, rdi
               	jmp	 <L112>
<L110>:
               	mov	qword ptr [rsp + 0x68], rcx
               	mov	qword ptr [rsp + 0xd0], r10
               	mov	qword ptr [rsp + 0xd8], r12
               	xor	esi, esi
               	jmp	 <L113>
               	nop	word ptr [rax + rax]
<L115>:
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	rcx, qword ptr [rsp + 0x68]
               	xor	rcx, r8
               	mov	r10, qword ptr [rsp + 0xd0]
               	xor	r10, rdx
               	mov	rdi, qword ptr [rsp + 0xd8]
               	xor	rdi, rax
<L116>:
               	mov	qword ptr [rsp + 0xd0], r10
               	mov	qword ptr [rsp + 0xd8], rdi
               	mov	qword ptr [rsp + 0x68], rcx
               	mov	rdi, r8
               	shl	rdi, 0x11
               	xor	rdx, rbx
               	xor	rax, r8
               	xor	r8, rdx
               	xor	rbx, rax
               	xor	rdx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L114>
<L113>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	bt	rcx, rsi
               	mov	rcx, qword ptr [rsp + 0x70]
               	jb	 <L115>
               	mov	rdi, qword ptr [rsp + 0xd8]
               	mov	r10, qword ptr [rsp + 0xd0]
               	mov	rcx, qword ptr [rsp + 0x68]
               	jmp	 <L116>
<L114>:
               	xor	esi, esi
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L117>
               	nop	word ptr [rax + rax]
<L119>:
               	mov	rdi, r8
               	shl	rdi, 0x11
               	xor	rdx, rbx
               	xor	rax, r8
               	xor	r8, rdx
               	xor	rbx, rax
               	xor	rdx, rdi
               	rorx	rax, rax, 0x13
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L118>
<L117>:
               	bt	rcx, rsi
               	jae	 <L119>
               	xor	qword ptr [rsp + 0x70], rbx
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xd0], rdx
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L119>
<L118>:
               	mov	qword ptr [rsp + 0x1a0], r13
               	mov	r8, r15
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], 0x0
               	mov	rax, qword ptr [rsp + 0xd8]
               	mov	qword ptr [rsp + 0xe8], 0x0
               	mov	rdx, qword ptr [rsp + 0xd0]
               	xor	ebx, ebx
               	mov	r13, qword ptr [rsp + 0x68]
               	mov	rsi, qword ptr [rsp + 0x70]
               	xor	ecx, ecx
               	mov	r15, r9
               	jmp	 <L120>
               	nop
<L122>:
               	mov	r9, r13
               	shl	r9, 0x11
               	xor	rdx, rsi
               	xor	rax, r13
               	xor	r13, rdx
               	xor	rsi, rax
               	xor	rdx, r9
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L121>
<L120>:
               	movabs	r9, 0x180ec6d33cfd0aba
               	bt	r9, rdi
               	jae	 <L122>
               	xor	rcx, rsi
               	xor	rbx, r13
               	xor	qword ptr [rsp + 0xe8], rdx
               	xor	qword ptr [rsp + 0xf0], rax
               	jmp	 <L122>
<L121>:
               	xor	edi, edi
               	jmp	 <L123>
               	nop	word ptr cs:[rax + rax]
<L125>:
               	mov	r9, r13
               	shl	r9, 0x11
               	xor	rdx, rsi
               	xor	rax, r13
               	xor	r13, rdx
               	xor	rsi, rax
               	xor	rdx, r9
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L124>
<L123>:
               	movabs	r9, -0x2a59ed990f36c6d4
               	bt	r9, rdi
               	jae	 <L125>
               	xor	rcx, rsi
               	xor	rbx, r13
               	xor	qword ptr [rsp + 0xe8], rdx
               	xor	qword ptr [rsp + 0xf0], rax
               	jmp	 <L125>
<L124>:
               	xor	edi, edi
               	jmp	 <L126>
               	nop	word ptr cs:[rax + rax]
<L128>:
               	mov	r9, r13
               	shl	r9, 0x11
               	xor	rdx, rsi
               	xor	rax, r13
               	xor	r13, rdx
               	xor	rsi, rax
               	xor	rdx, r9
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L127>
<L126>:
               	movabs	r9, -0x56a7d9e71fc03656
               	bt	r9, rdi
               	jae	 <L128>
               	xor	rcx, rsi
               	xor	rbx, r13
               	xor	qword ptr [rsp + 0xe8], rdx
               	xor	qword ptr [rsp + 0xf0], rax
               	jmp	 <L128>
<L127>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], r15
               	jmp	 <L129>
               	nop	dword ptr [rax]
<L131>:
               	mov	r9, r13
               	shl	r9, 0x11
               	xor	rdx, rsi
               	xor	rax, r13
               	xor	r13, rdx
               	xor	rsi, rax
               	xor	rdx, r9
               	rorx	rax, rax, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L130>
<L129>:
               	movabs	r9, 0x39abdc4529b1661c
               	bt	r9, rdi
               	jae	 <L131>
               	xor	rcx, rsi
               	xor	rbx, r13
               	xor	qword ptr [rsp + 0xe8], rdx
               	xor	qword ptr [rsp + 0xf0], rax
               	jmp	 <L131>
<L130>:
               	mov	eax, 0x40
               	nop	word ptr cs:[rax + rax]
<L132>:
               	dec	rax
               	jne	 <L132>
               	mov	eax, 0x40
               	mov	r15, qword ptr [rsp + 0x150]
               	nop	word ptr cs:[rax + rax]
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
               	vxorps	xmm15, xmm15, xmm15
               	test	r15d, r15d
               	je	 <L168>
               	vpmovsxbq	ymm1, dword ptr  <memset+0xa7c>
               	vpbroadcastw	ymm2, word ptr  <memset+0xa8c>
               	vpbroadcastq	xmm3, qword ptr  <memset+0xa68>
               	vpbroadcastw	ymm4, word ptr  <memset+0xa8e>
               	mov	dword ptr [rsp + 0x17c], r15d
               	mov	rdx, qword ptr [rsp + 0x100]
               	mov	qword ptr [rsp + 0x198], r8
               	mov	r15, qword ptr [rsp + 0xf8]
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	r10, qword ptr [rsp + 0x38]
               	mov	qword ptr [rsp + 0x190], r11
               	mov	r9, qword ptr [rsp + 0xe0]
               	mov	rdi, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0x160], rbx
               	mov	qword ptr [rsp + 0x188], rcx
               	nop	dword ptr [rax]
<L169>:
               	mov	qword ptr [rsp + 0x28], r8
               	mov	qword ptr [rsp + 0x38], r10
               	mov	qword ptr [rsp + 0x108], rdi
               	mov	qword ptr [rsp + 0xe0], r9
               	vpextrq	rcx, xmm0, 0x1
               	mov	qword ptr [rsp + 0xf8], rcx
               	mov	rsi, rdx
               	lea	rax, [rcx + 4*rcx]
               	rorx	rax, rax, 0x39
               	lea	rdi, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x170]
               	lea	rax, [rax + 4*rax]
               	rorx	rax, rax, 0x39
               	lea	rcx, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rax, [rax + 4*rax]
               	rorx	rax, rax, 0x39
               	lea	r13, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0xe0]
               	lea	rax, [rax + 4*rax]
               	rorx	rax, rax, 0x39
               	lea	rbx, [rax + 8*rax]
               	lea	rax, [r15 + 4*r15]
               	rorx	rax, rax, 0x39
               	lea	rax, [rax + 8*rax]
               	lea	r9, [r8 + 4*r8]
               	rorx	r9, r9, 0x39
               	lea	r9, [r9 + 8*r9]
               	lea	r10, [r10 + 4*r10]
               	rorx	r10, r10, 0x39
               	lea	r10, [r10 + 8*r10]
               	mov	rdx, qword ptr [rsp + 0x48]
               	lea	r11, [rdx + 4*rdx]
               	rorx	r11, r11, 0x39
               	lea	r11, [r11 + 8*r11]
               	vmovq	xmm5, rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	r14, [rcx + 4*rcx]
               	rorx	r14, r14, 0x39
               	lea	r14, [r14 + 8*r14]
               	vmovq	xmm6, r13
               	mov	rcx, qword ptr [rsp + 0x68]
               	lea	r13, [rcx + 4*rcx]
               	rorx	r13, r13, 0x39
               	lea	r13, [r13 + 8*r13]
               	vmovq	xmm7, rbx
               	mov	rcx, qword ptr [rsp + 0x160]
               	lea	rbx, [rcx + 4*rcx]
               	rorx	rbx, rbx, 0x39
               	lea	rbx, [rbx + 8*rbx]
               	vpmovzxbd	ymm5, xmm5      # ymm5 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm14, ymm5
               	vpmovzxbd	ymm5, xmm6      # ymm5 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm13, ymm5
               	vpmovzxbd	ymm5, xmm7      # ymm5 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
               	vcvtdq2ps	ymm11, ymm5
               	vmovq	xmm5, rax
               	vpmovzxbd	ymm5, xmm5      # ymm5 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm7, ymm5
               	vmovq	xmm5, r9
               	vpmovzxbd	ymm5, xmm5      # ymm5 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm8, ymm5
               	vmovq	xmm5, r10
               	vpmovzxbd	ymm5, xmm5      # ymm5 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm9, ymm5
               	vmovq	xmm5, r11
               	vpmovzxbd	ymm5, xmm5      # ymm5 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm12, ymm5
               	vmovq	xmm5, r14
               	vpmovzxbd	ymm5, xmm5      # ymm5 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm5
               	vmovq	xmm5, r13
               	vpmovzxbd	ymm5, xmm5      # ymm5 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm5
               	vmovq	xmm5, rbx
               	mov	r9d, edi
               	movzx	r10d, dil
               	mov	eax, edi
               	mov	r11d, edi
               	shr	r11d, 0x8
               	shr	r9d, 0x10
               	imul	r10d, r10d, 0x4f
               	shr	r10d, 0xa
               	lea	ebx, [r10 + 2*r10]
               	lea	r10d, [r10 + 4*rbx]
               	sub	al, r10b
               	movzx	ecx, r11b
               	imul	r11d, ecx, 0x4f
               	shr	r11d, 0xa
               	lea	ebx, [r11 + 2*r11]
               	lea	r11d, [r11 + 4*rbx]
               	sub	cl, r11b
               	movzx	r9d, r9b
               	imul	r11d, r9d, 0x4f
               	shr	r11d, 0xa
               	lea	ebx, [r11 + 2*r11]
               	lea	r11d, [r11 + 4*rbx]
               	sub	r9b, r11b
               	mov	r11, rsi
               	shr	r11, 0x1e
               	movabs	r8, 0x3fffffffc
               	and	r11, r8
               	mov	rdx, qword ptr [rsp + 0x158]
               	lea	rbx, [rdx + r11]
               	vmovaps	ymmword ptr [rdx + r11], ymm14
               	lea	r11, [4*rsi]
               	and	r11, r8
               	vmovaps	ymmword ptr [r11 + rbx], ymm13
               	lea	r11, [8*rsi]
               	movabs	r8, 0x7fffffff8
               	and	r11, r8
               	vmovaps	ymmword ptr [r11 + rbx], ymm11
               	mov	r8d, esi
               	mov	qword ptr [rsp + 0x100], r8
               	lea	r14, [r8 + 2*r8]
               	vmovdqa	ymmword ptr [rbx + 4*r14], ymm7
               	mov	r11, r8
               	shl	r11, 0x4
               	vmovdqa	ymmword ptr [r11 + rbx], ymm8
               	lea	r11, [r8 + 4*r8]
               	vmovdqa	ymmword ptr [rbx + 4*r11], ymm9
               	vmovaps	ymmword ptr [rbx + 8*r14], ymm12
               	lea	r14, [r8 + 8*r8]
               	lea	r12, [r14 + 2*r14]
               	add	r12, r8
               	vmovdqa	ymmword ptr [rbx + r12], ymm10
               	mov	r12, rsi
               	shl	r12, 0x5
               	movabs	r8, 0x1fffffffe0
               	and	r12, r8
               	vmovaps	ymmword ptr [r12 + rbx], ymm6
               	vpbroadcastq	ymm6, rdi
               	mov	r12d, edi
               	vpmovzxbd	ymm5, xmm5      # ymm5 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm5, ymm5
               	shr	r12d, 0x18
               	vmovaps	ymmword ptr [rbx + 4*r14], ymm5
               	mov	r14, qword ptr [rsp + 0xe0]
               	imul	edi, r12d, 0x4f
               	shr	edi, 0xa
               	lea	ebx, [rdi + 2*rdi]
               	lea	edi, [rdi + 4*rbx]
               	mov	r13, qword ptr [rsp + 0x58]
               	sub	r12b, dil
               	movzx	r9d, r9b
               	shl	r9d, 0x10
               	movzx	edi, cl
               	shl	edi, 0x8
               	or	edi, r9d
               	movzx	r9d, r12b
               	shl	r9d, 0x18
               	or	rdi, r9
               	vpsrlvq	ymm5, ymm6, ymm1
               	vpmovqb	xmm5, ymm5
               	vpmovzxbw	ymm6, xmm5      # ymm6 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero,xmm5[4],zero,xmm5[5],zero,xmm5[6],zero,xmm5[7],zero,xmm5[8],zero,xmm5[9],zero,xmm5[10],zero,xmm5[11],zero,xmm5[12],zero,xmm5[13],zero,xmm5[14],zero,xmm5[15],zero
               	vpmullw	ymm6, ymm6, ymm2
               	vpsrlw	ymm6, ymm6, 0x8
               	vpmovwb	xmm6, ymm6
               	vgf2p8affineqb	xmm6, xmm6, xmm3, 0x0
               	vpmovzxbw	ymm6, xmm6      # ymm6 = xmm6[0],zero,xmm6[1],zero,xmm6[2],zero,xmm6[3],zero,xmm6[4],zero,xmm6[5],zero,xmm6[6],zero,xmm6[7],zero,xmm6[8],zero,xmm6[9],zero,xmm6[10],zero,xmm6[11],zero,xmm6[12],zero,xmm6[13],zero,xmm6[14],zero,xmm6[15],zero
               	vpmullw	ymm6, ymm6, ymm4
               	vpmovwb	xmm6, ymm6
               	vpsubb	xmm5, xmm5, xmm6
               	vpmovzxbq	ymm5, xmm5      # ymm5 = xmm5[0],zero,zero,zero,zero,zero,zero,zero,xmm5[1],zero,zero,zero,zero,zero,zero,zero,xmm5[2],zero,zero,zero,zero,zero,zero,zero,xmm5[3],zero,zero,zero,zero,zero,zero,zero
               	vpsllvq	ymm5, ymm5, ymm1
               	movzx	eax, al
               	vextracti128	xmm6, ymm5, 0x1
               	vpor	xmm5, xmm5, xmm6
               	vpshufd	xmm6, xmm5, 0xee        # xmm6 = xmm5[2,3,2,3]
               	vpor	xmm5, xmm5, xmm6
               	or	rdi, rax
               	vmovq	rax, xmm5
               	or	rdi, rax
               	mov	rax, rsi
               	shr	rax, 0x20
               	lea	r9, [rdx + 8*r11]
               	mov	rcx, qword ptr [rsp + 0x110]
               	mov	r11, qword ptr [rsp + 0x28]
               	mov	r8, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rax + r9], rdi
               	vpermq	ymm5, ymm0, 0xe3        # ymm5 = ymm0[3,0,2,3]
               	vpermq	ymm6, ymm0, 0xe9        # ymm6 = ymm0[1,2,2,3]
               	mov	rdx, qword ptr [rsp + 0xf8]
               	shl	rdx, 0x11
               	vpxor	xmm5, xmm6, xmm5
               	vpextrq	rax, xmm5, 0x1
               	xor	rax, rdx
               	mov	qword ptr [rsp + 0x1b8], rsi
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	mov	qword ptr [rsp + 0x180], rsi
               	vpxor	xmm0, xmm5, xmm0
               	vpbroadcastq	ymm6, rax
               	vpblendd	ymm0, ymm0, ymm6, 0x30  # ymm0 = ymm0[0,1,2,3],ymm6[4,5],ymm0[6,7]
               	vmovq	rax, xmm5
               	rorx	rax, rax, 0x13
               	vpbroadcastq	ymm5, rax
               	mov	rdx, qword ptr [rsp + 0x170]
               	mov	rax, rdx
               	shl	rax, 0x11
               	xor	r8, qword ptr [rsp + 0x1b0]
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	rdx, r8
               	mov	qword ptr [rsp + 0x170], rdx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xc8], r8
               	mov	rsi, qword ptr [rsp + 0x38]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x118]
               	xor	rdi, qword ptr [rsp + 0x1a8]
               	xor	qword ptr [rsp + 0x168], r13
               	xor	r13, rdi
               	mov	qword ptr [rsp + 0x58], r13
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x118], rdi
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	rcx, qword ptr [rsp + 0xc0]
               	xor	qword ptr [rsp + 0x50], r14
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0xe0], r14
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x110], rcx
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	xor	rdi, qword ptr [rsp + 0x108]
               	mov	rbx, qword ptr [rsp + 0x198]
               	xor	rbx, r15
               	xor	r15, rdi
               	mov	qword ptr [rsp + 0xf8], r15
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x1a0], rdi
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0xb8]
               	xor	rdi, qword ptr [rsp + 0xb0]
               	mov	r15, qword ptr [rsp + 0x30]
               	xor	r15, r11
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x28], r11
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xb8], rdi
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0xa8]
               	xor	rdi, qword ptr [rsp + 0xa0]
               	mov	r12, qword ptr [rsp + 0x120]
               	xor	r12, rsi
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0x38], rsi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xa8], rdi
               	mov	rcx, qword ptr [rsp + 0x48]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x98]
               	mov	r13, qword ptr [rsp + 0x90]
               	xor	rdi, r13
               	mov	r9, qword ptr [rsp + 0x190]
               	xor	r9, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x48], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x98], rdi
               	mov	rcx, qword ptr [rsp + 0x40]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x80]
               	mov	r10, qword ptr [rsp + 0x78]
               	xor	rdi, r10
               	mov	r8, qword ptr [rsp + 0x88]
               	xor	r8, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x40], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x80], rdi
               	mov	rcx, qword ptr [rsp + 0x68]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0xd0]
               	mov	r11, qword ptr [rsp + 0x70]
               	xor	rdi, r11
               	mov	r14, qword ptr [rsp + 0xd8]
               	xor	r14, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x68], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xd0], rdi
               	mov	rax, qword ptr [rsp + 0x160]
               	mov	rdx, rax
               	shl	rdx, 0x11
               	mov	rdi, qword ptr [rsp + 0xe8]
               	mov	rsi, qword ptr [rsp + 0x188]
               	xor	rdi, rsi
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rcx, rax
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x160], rax
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0xe8], rdi
               	movabs	rax, 0x7fffffff8
               	mov	rdi, qword ptr [rsp + 0x180]
               	add	rax, rdi
               	mov	rdi, qword ptr [rsp + 0x100]
               	lea	rdx, [rdi + rax]
               	add	rdx, 0x8
               	vpblendd	ymm0, ymm0, ymm5, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm5[6,7]
               	mov	rax, qword ptr [rsp + 0x60]
               	xor	qword ptr [rsp + 0x1b0], rax
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0x60], rax
               	mov	rdi, qword ptr [rsp + 0x108]
               	mov	rax, qword ptr [rsp + 0x168]
               	xor	qword ptr [rsp + 0x1a8], rax
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0x168], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	xor	qword ptr [rsp + 0xc0], rax
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0x50], rax
               	xor	rdi, rbx
               	rorx	rbx, rbx, 0x13
               	mov	qword ptr [rsp + 0x198], rbx
               	xor	qword ptr [rsp + 0xb0], r15
               	rorx	r15, r15, 0x13
               	mov	qword ptr [rsp + 0x30], r15
               	mov	r15, qword ptr [rsp + 0xf8]
               	xor	qword ptr [rsp + 0xa0], r12
               	rorx	r12, r12, 0x13
               	mov	qword ptr [rsp + 0x120], r12
               	xor	r13, r9
               	mov	qword ptr [rsp + 0x90], r13
               	rorx	r9, r9, 0x13
               	mov	qword ptr [rsp + 0x190], r9
               	xor	r10, r8
               	mov	qword ptr [rsp + 0x78], r10
               	mov	r10, qword ptr [rsp + 0x38]
               	rorx	r8, r8, 0x13
               	mov	qword ptr [rsp + 0x88], r8
               	mov	r8, qword ptr [rsp + 0x28]
               	xor	r11, r14
               	mov	qword ptr [rsp + 0x70], r11
               	rorx	r14, r14, 0x13
               	mov	qword ptr [rsp + 0xd8], r14
               	mov	r9, qword ptr [rsp + 0xe0]
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x188], rsi
               	rorx	rcx, rcx, 0x13
               	mov	qword ptr [rsp + 0xf0], rcx
               	add	dword ptr [rsp + 0x17c], -0x8
               	jne	 <L169>
               	mov	rdx, qword ptr [rsp + 0x180]
               	mov	r13, qword ptr [rsp + 0x100]
               	movabs	rax, 0x7fffffff8
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	shr	rcx, 0x23
               	cmp	ecx, 0x1ffffffe
               	mov	rbx, qword ptr [rsp + 0x148]
               	mov	r15, qword ptr [rsp + 0x150]
               	ja	 <L170>
               	lea	r14, [rax + rdx]
               	add	r14, 0x8
               	shr	r14, 0x23
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa64	zmmword ptr [rsp + 0x580], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x540], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x500], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x4c0], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x480], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x440], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x400], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x3c0], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x380], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x340], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x300], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x2c0], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x280], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x240], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x200], zmm0
               	vmovdqa64	zmmword ptr [rsp + 0x1c0], zmm0
               	vmovdqa	ymm6, ymmword ptr  <memset+0xa20>
               	vmovdqa	ymm7, ymmword ptr  <memset+0xa40>
               	vpbroadcastd	ymm8, dword ptr  <memset+0xa78>
               	vpbroadcastd	ymm9, dword ptr  <memset+0xa88>
               	vpbroadcastd	ymm10, dword ptr  <memset+0xa84>
               	movabs	rbx, -0x100000000
               	nop	word ptr cs:[rax + rax]
<L173>:
               	mov	qword ptr [rsp + 0x30], r14
               	blsi	r12d, r14d
               	mov	rax, r13
               	and	rax, rbx
               	mov	qword ptr [rsp + 0x28], r12
               	shl	r12, 0x23
               	add	r12, rax
               	mov	eax, r13d
               	mov	qword ptr [rsp + 0x120], rax
               	mov	rax, r12
               	xor	rax, r13
               	shr	rax, 0x20
               	mov	r8d, 0x1
               	jne	 <L171>
<L175>:
               	movsxd	rax, r8d
               	shl	rax, 0x5
               	add	rax, rsp
               	add	rax, 0x1c0
               	mov	r14, qword ptr [rsp + 0x30]
               	sub	r14d, dword ptr [rsp + 0x28]
               	je	 <L172>
               	or	r12, qword ptr [rsp + 0x120]
               	vmovdqa	ymm0, ymmword ptr [rax]
               	vmovdqa	ymmword ptr [rax + 0x20], ymm0
               	mov	r13, r12
               	test	r8d, r8d
               	js	 <L173>
               	mov	edx, r8d
               	shl	rdx, 0x5
               	add	rdx, 0x20
               	lea	rdi, [rsp + 0x1c0]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vpbroadcastd	ymm10, dword ptr  <memset+0xa84>
               	vpbroadcastd	ymm9, dword ptr  <memset+0xa88>
               	vpbroadcastd	ymm8, dword ptr  <memset+0xa78>
               	vmovdqa	ymm7, ymmword ptr  <memset+0xa40>
               	vmovdqa	ymm6, ymmword ptr  <memset+0xa20>
               	mov	r13, r12
               	jmp	 <L173>
               	nop	word ptr cs:[rax + rax]
<L171>:
               	mov	rdx, r13
               	shr	rdx, 0x20
               	mov	rcx, qword ptr [rsp + 0x120]
               	lea	rax, [rcx + 4*rcx]
               	mov	r8, qword ptr [rsp + 0x158]
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
               	xor	eax, eax
               	mov	r14d, 0x1
               	jmp	 <L174>
               	nop	word ptr cs:[rax + rax]
<L176>:
               	mov	r14d, r8d
               	movsxd	rax, r8d
               	shl	rax, 0x5
               	vmovaps	ymmword ptr [rsp + rax + 0x1c0], ymm0
               	add	edx, 0x8
               	mov	eax, 0xfffffffe
               	sub	eax, r10d
               	lea	ecx, [r10 + 0x1]
               	lzcnt	r10d, ecx
               	popcnt	eax, eax
               	sub	eax, r10d
               	mov	r11, rdx
               	shl	r11, 0x20
               	mov	r10d, ecx
               	cmp	r11, r12
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
               	mov	r8d, eax
               	vblendvps	ymm3, ymm4, ymm5, ymm3
               	vmulps	ymm1, ymm4, ymm1
               	vmulps	ymm1, ymm1, ymm2
               	vmulps	ymm2, ymm3, ymm1
               	vpsllvd	ymm0, ymm10, ymm0
               	vblendvps	ymm0, ymm2, ymm1, ymm0
               	mov	r15d, eax
               	sub	r15d, r14d
               	jl	 <L176>
               	movsxd	r11, r14d
               	lea	eax, [r15 + 0x1]
               	and	eax, 0x3
               	je	 <L177>
               	dec	eax
               	mov	rcx, r11
               	shl	rcx, 0x5
               	add	rcx, rsp
               	add	rcx, 0x1c0
               	mov	ebx, r8d
               	sub	bl, r14b
               	inc	bl
               	movzx	r14d, bl
               	and	r14d, 0x3
               	shl	r14d, 0x5
               	xor	ebx, ebx
               	nop
<L178>:
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rbx]
               	add	rbx, 0x20
               	cmp	r14d, ebx
               	jne	 <L178>
               	add	r11, rax
               	inc	r11
               	movabs	rbx, -0x100000000
<L177>:
               	cmp	r15d, 0x3
               	jb	 <L176>
               	mov	eax, r8d
               	sub	eax, r11d
               	inc	eax
               	shl	r11, 0x5
               	lea	rcx, [rsp + 0x220]
               	add	r11, rcx
               	nop
<L179>:
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x60]
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x40]
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x20]
               	vaddps	ymm0, ymm0, ymmword ptr [r11]
               	sub	r11, -0x80
               	add	eax, -0x4
               	jne	 <L179>
               	jmp	 <L176>
<L168>:
               	mov	rbx, qword ptr [rsp + 0x148]
               	jmp	 <L170>
<L172>:
               	vmovaps	ymm15, ymmword ptr [rax]
               	mov	rbx, qword ptr [rsp + 0x148]
               	mov	r15, qword ptr [rsp + 0x150]
<L170>:
               	vmovaps	ymmword ptr [rsp + 0x120], ymm15
               	mov	rdi, qword ptr [rsp + 0x158]
               	vzeroupper
               	call	 <free@plt>
               	cmp	ebx, 0x2a
               	jne	 <L180>
               	cmp	r15d, 0x186a0
               	jne	 <L180>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x120]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <memset+0xa80>
               	jne	 <L181>
<L180>:
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
<L181>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x120], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x120]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x56f0>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x56d0>
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
