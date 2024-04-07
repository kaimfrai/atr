
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
               	call	qword ptr  <memset+0x5158>
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
               	mov	rax, qword ptr  <memset+0x5168>
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
               	mov	rax, qword ptr  <memset+0x5170>
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
               	cmp	qword ptr , 0x0 <memset+0x5178>
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

<initializer for module Evaluation.SOAReplication.Tag>:
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
               	call	 <initializer for module Meta.Math.Random>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.SOAReplication.SOAView>
               	call	 <initializer for module Std>
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
               	sub	rsp, 0x640
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
               	mov	qword ptr [rsp + 0x138], rdx
               	add	ecx, edx
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x90], rcx
               	lea	rsi, [rcx + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	qword ptr [rsp + 0xf8], rax
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
               	mov	r11, rdi
               	shr	r11, 0x1f
               	xor	r11, rdi
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
               	mov	r9, rdi
               	shr	r9, 0x1f
               	xor	r9, rdi
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
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x188], rcx
               	mov	rax, rcx
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x170], r9
               	mov	rcx, r9
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x1c0], rdx
               	mov	qword ptr [rsp + 0x120], r8
               	mov	rdx, r8
               	mov	qword ptr [rsp + 0x198], r11
               	mov	rsi, r11
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1e0], r8
               	jmp	 <L4>
               	nop
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
               	bt	r14, rdi
               	mov	r8, qword ptr [rsp + 0x1e0]
               	jae	 <L6>
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x1e0], r8
               	xor	qword ptr [rsp + 0x1c0], rdx
               	xor	r10, rcx
               	xor	r15, rax
               	jmp	 <L6>
<L5>:
               	xor	edi, edi
               	jmp	 <L7>
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
               	mov	r8, r10
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x1c0], rdx
               	xor	r8, rcx
               	mov	r10, r8
               	xor	r15, rax
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x1c0], rdx
               	xor	r10, rcx
               	xor	r15, rax
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop
<L15>:
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x1c0], rdx
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0xb8], r10
               	xor	r15, rax
<L16>:
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
               	mov	r10, qword ptr [rsp + 0xb8]
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jb	 <L15>
               	mov	qword ptr [rsp + 0xb8], r10
               	jmp	 <L16>
<L14>:
               	mov	qword ptr [rsp + 0x218], rbx
               	xor	edi, edi
               	xor	r11d, r11d
               	mov	rax, r15
               	xor	r14d, r14d
               	mov	rcx, r10
               	xor	r12d, r12d
               	mov	rdx, qword ptr [rsp + 0x1c0]
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	ebx, ebx
               	jmp	 <L17>
<L19>:
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
               	je	 <L18>
<L17>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L19>
               	xor	rbx, rsi
               	xor	r12, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L19>
<L18>:
               	xor	edi, edi
               	mov	r13, r12
               	movabs	r12, 0x180ec6d33cfd0aba
               	jmp	 <L20>
               	nop	word ptr cs:[rax + rax]
<L22>:
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L22>
               	mov	r8, r11
               	xor	rbx, rsi
               	xor	r13, rdx
               	xor	r14, rcx
               	xor	r8, rax
               	mov	r11, r8
               	jmp	 <L22>
<L21>:
               	xor	edi, edi
               	jmp	 <L23>
               	nop	dword ptr [rax + rax]
<L25>:
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
               	je	 <L24>
<L23>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L25>
               	xor	rbx, rsi
               	xor	r13, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L25>
<L24>:
               	mov	qword ptr [rsp + 0x98], r14
               	xor	edi, edi
               	movabs	r9, -0x2a59ed990f36c6d4
               	jmp	 <L26>
               	nop	word ptr [rax + rax]
<L28>:
               	mov	qword ptr [rsp + 0x88], r11
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
               	mov	r11, qword ptr [rsp + 0x88]
               	je	 <L27>
<L26>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L28>
               	xor	rbx, rsi
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	r11, rax
               	jmp	 <L28>
<L27>:
               	mov	qword ptr [rsp + 0x190], r15
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x68], rax
               	mov	rax, r11
               	xor	r11d, r11d
               	mov	rcx, qword ptr [rsp + 0x98]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x8], rdx
               	mov	rdx, r13
               	mov	rsi, rbx
               	xor	r15d, r15d
               	jmp	 <L29>
               	nop	word ptr [rax + rax]
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
               	je	 <L30>
<L29>:
               	bt	r12, rdi
               	jae	 <L31>
               	xor	r15, rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0x68], rax
               	jmp	 <L31>
<L30>:
               	xor	edi, edi
               	jmp	 <L32>
               	nop
<L34>:
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
               	je	 <L33>
<L32>:
               	bt	r9, rdi
               	jae	 <L34>
               	xor	r15, rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0x68], rax
               	jmp	 <L34>
<L33>:
               	xor	edi, edi
               	movabs	r10, -0x56a7d9e71fc03656
               	jmp	 <L35>
               	nop	dword ptr [rax]
<L37>:
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
               	je	 <L36>
<L35>:
               	bt	r10, rdi
               	jae	 <L37>
               	xor	r15, rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0x68], rax
               	jmp	 <L37>
<L36>:
               	xor	edi, edi
               	movabs	r10, 0x39abdc4529b1661c
               	jmp	 <L38>
               	nop	dword ptr [rax]
<L40>:
               	xor	r15, rsi
               	mov	qword ptr [rsp + 0xb0], r15
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0x68], rax
<L41>:
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
               	mov	r15, qword ptr [rsp + 0xb0]
               	je	 <L39>
<L38>:
               	bt	r10, rdi
               	jb	 <L40>
               	mov	qword ptr [rsp + 0xb0], r15
               	jmp	 <L41>
<L39>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x60], rax
               	mov	rax, qword ptr [rsp + 0x68]
               	xor	r12d, r12d
               	mov	rcx, r11
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x1a0], rdx
               	mov	rdx, qword ptr [rsp + 0x8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x20], r8
               	jmp	 <L42>
<L44>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, r15
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r15, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L43>
<L42>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L44>
               	xor	qword ptr [rsp + 0x20], r15
               	xor	qword ptr [rsp + 0x1a0], rdx
               	xor	r12, rcx
               	xor	qword ptr [rsp + 0x60], rax
               	jmp	 <L44>
<L43>:
               	xor	edi, edi
               	jmp	 <L45>
               	nop
<L47>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, r15
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r15, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L46>
<L45>:
               	bt	r9, rdi
               	jae	 <L47>
               	mov	r8, r12
               	xor	qword ptr [rsp + 0x20], r15
               	xor	qword ptr [rsp + 0x1a0], rdx
               	xor	r8, rcx
               	mov	r12, r8
               	xor	qword ptr [rsp + 0x60], rax
               	jmp	 <L47>
<L46>:
               	xor	edi, edi
               	jmp	 <L48>
               	nop	word ptr [rax + rax]
<L50>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, r15
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r15, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L49>
<L48>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L50>
               	xor	qword ptr [rsp + 0x20], r15
               	xor	qword ptr [rsp + 0x1a0], rdx
               	xor	r12, rcx
               	xor	qword ptr [rsp + 0x60], rax
               	jmp	 <L50>
<L49>:
               	xor	edi, edi
               	jmp	 <L51>
               	nop
<L53>:
               	xor	qword ptr [rsp + 0x20], r15
               	xor	qword ptr [rsp + 0x1a0], rdx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0xa8], r12
               	xor	qword ptr [rsp + 0x60], rax
<L54>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, r15
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r15, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r12, qword ptr [rsp + 0xa8]
               	je	 <L52>
<L51>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jb	 <L53>
               	mov	qword ptr [rsp + 0xa8], r12
               	jmp	 <L54>
<L52>:
               	mov	qword ptr [rsp + 0x118], r13
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, qword ptr [rsp + 0x60]
               	xor	r13d, r13d
               	mov	rcx, r12
               	xor	r9d, r9d
               	mov	rdx, qword ptr [rsp + 0x1a0]
               	mov	rsi, qword ptr [rsp + 0x20]
               	xor	r10d, r10d
               	movabs	r15, 0x180ec6d33cfd0aba
               	jmp	 <L55>
               	nop	dword ptr [rax]
<L57>:
               	mov	r12, r8
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
               	mov	r8, r12
               	je	 <L56>
<L55>:
               	bt	r15, rdi
               	jae	 <L57>
               	xor	r10, rsi
               	xor	r9, rdx
               	xor	r13, rcx
               	xor	r8, rax
               	jmp	 <L57>
<L56>:
               	xor	edi, edi
               	jmp	 <L58>
               	nop	word ptr cs:[rax + rax]
<L60>:
               	mov	r12, r8
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
               	mov	r8, r12
               	je	 <L59>
<L58>:
               	movabs	r12, -0x2a59ed990f36c6d4
               	bt	r12, rdi
               	jae	 <L60>
               	mov	r12, r13
               	xor	r10, rsi
               	xor	r9, rdx
               	xor	r12, rcx
               	mov	r13, r12
               	xor	r8, rax
               	jmp	 <L60>
<L59>:
               	xor	edi, edi
               	mov	r12, r13
               	jmp	 <L61>
               	nop	word ptr cs:[rax + rax]
<L63>:
               	mov	r13, r9
               	xor	r10, rsi
               	xor	r13, rdx
               	mov	r9, r13
               	xor	r12, rcx
               	mov	r13, r12
               	xor	r8, rax
<L64>:
               	mov	r12, r8
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
               	mov	r8, r12
               	mov	r12, r13
               	je	 <L62>
<L61>:
               	movabs	r13, -0x56a7d9e71fc03656
               	bt	r13, rdi
               	jb	 <L63>
               	mov	r13, r12
               	jmp	 <L64>
<L62>:
               	xor	edi, edi
               	mov	r13, r9
               	movabs	r14, -0x2a59ed990f36c6d4
               	movabs	r9, 0x39abdc4529b1661c
               	jmp	 <L65>
               	nop	word ptr cs:[rax + rax]
<L67>:
               	mov	qword ptr [rsp + 0xa0], r8
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
               	mov	r8, qword ptr [rsp + 0xa0]
               	je	 <L66>
<L65>:
               	bt	r9, rdi
               	jae	 <L67>
               	xor	r10, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r8, rax
               	jmp	 <L67>
<L66>:
               	mov	qword ptr [rsp + 0x80], rbx
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	rax, r8
               	xor	r8d, r8d
               	mov	rcx, r12
               	xor	edx, edx
               	mov	qword ptr [rsp], rdx
               	mov	rdx, r13
               	mov	rsi, r10
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x58], rbx
               	jmp	 <L68>
               	nop	word ptr cs:[rax + rax]
<L70>:
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp], rdx
               	xor	r8, rcx
               	mov	rbx, r8
               	xor	r9, rax
<L71>:
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
               	mov	r8, rbx
               	je	 <L69>
<L68>:
               	bt	r15, rdi
               	jb	 <L70>
               	mov	rbx, r8
               	jmp	 <L71>
<L69>:
               	xor	edi, edi
               	jmp	 <L72>
               	nop	word ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L74>
               	mov	r8, rbx
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp], rdx
               	xor	r8, rcx
               	mov	rbx, r8
               	xor	r9, rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L76>
<L75>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L77>
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp], rdx
               	xor	rbx, rcx
               	xor	r9, rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L79>
<L78>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L80>
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp], rdx
               	xor	rbx, rcx
               	xor	r9, rax
               	jmp	 <L80>
<L79>:
               	mov	qword ptr [rsp + 0x178], r10
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, r9
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x18], rcx
               	mov	rcx, rbx
               	xor	r10d, r10d
               	mov	rdx, qword ptr [rsp]
               	mov	rsi, qword ptr [rsp + 0x58]
               	mov	qword ptr [rsp + 0x180], r11
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x50], r11
               	jmp	 <L81>
               	nop	dword ptr [rax]
<L83>:
               	mov	qword ptr [rsp + 0xc0], r8
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
               	mov	r8, qword ptr [rsp + 0xc0]
               	je	 <L82>
<L81>:
               	bt	r15, rdi
               	jae	 <L83>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	r10, rdx
               	xor	qword ptr [rsp + 0x18], rcx
               	xor	r8, rax
               	jmp	 <L83>
<L82>:
               	xor	edi, edi
               	jmp	 <L84>
               	nop
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
               	bt	r14, rdi
               	mov	r8, qword ptr [rsp + 0xc0]
               	jae	 <L86>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	r10, rdx
               	xor	qword ptr [rsp + 0x18], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xc0], r8
               	jmp	 <L86>
<L85>:
               	xor	edi, edi
               	jmp	 <L87>
               	nop
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L89>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	r10, rdx
               	xor	qword ptr [rsp + 0x18], rcx
               	xor	qword ptr [rsp + 0xc0], rax
               	jmp	 <L89>
<L88>:
               	xor	edi, edi
               	jmp	 <L90>
               	nop
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L92>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	r10, rdx
               	xor	qword ptr [rsp + 0x18], rcx
               	xor	qword ptr [rsp + 0xc0], rax
               	jmp	 <L92>
<L91>:
               	mov	qword ptr [rsp + 0x108], r13
               	xor	edi, edi
               	xor	r11d, r11d
               	mov	rax, qword ptr [rsp + 0xc0]
               	xor	r8d, r8d
               	mov	rcx, qword ptr [rsp + 0x18]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	rdx, r10
               	mov	rsi, qword ptr [rsp + 0x50]
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x48], r13
               	jmp	 <L93>
<L95>:
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	r8, rcx
               	mov	r13, r8
               	xor	r11, rax
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
               	mov	r8, r13
               	je	 <L94>
<L93>:
               	bt	r15, rdi
               	jb	 <L95>
               	mov	r13, r8
               	jmp	 <L96>
<L94>:
               	xor	edi, edi
               	jmp	 <L97>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L99>
               	mov	r8, r13
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	r8, rcx
               	mov	r13, r8
               	xor	r11, rax
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	jmp	 <L100>
               	nop	word ptr cs:[rax + rax]
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	r13, rcx
               	xor	r11, rax
               	jmp	 <L102>
<L101>:
               	xor	edi, edi
               	jmp	 <L103>
               	nop	dword ptr [rax]
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	r13, rcx
               	xor	r11, rax
               	jmp	 <L105>
<L104>:
               	xor	edx, edx
               	xor	r14d, r14d
               	mov	rax, r11
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x10], rcx
               	mov	rsi, r13
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x28], rcx
               	mov	rdi, qword ptr [rsp + 0x30]
               	mov	r8, qword ptr [rsp + 0x48]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x40], rcx
               	mov	qword ptr [rsp + 0x168], r9
               	jmp	 <L106>
               	nop	dword ptr [rax]
<L108>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rsi, r8
               	xor	rax, rdi
               	xor	rdi, rsi
               	xor	r8, rax
               	xor	rsi, r9
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L107>
<L106>:
               	bt	r15, rdx
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x28], rdi
               	xor	qword ptr [rsp + 0x10], rsi
               	xor	r14, rax
               	jmp	 <L108>
<L107>:
               	xor	edx, edx
               	jmp	 <L109>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rsi, r8
               	xor	rax, rdi
               	xor	rdi, rsi
               	xor	r8, rax
               	xor	rsi, r9
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L110>
<L109>:
               	movabs	r9, -0x2a59ed990f36c6d4
               	bt	r9, rdx
               	jae	 <L111>
               	mov	r9, r14
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x28], rdi
               	xor	qword ptr [rsp + 0x10], rsi
               	xor	r9, rax
               	mov	r14, r9
               	jmp	 <L111>
<L110>:
               	xor	edx, edx
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
<L114>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rsi, r8
               	xor	rax, rdi
               	xor	rdi, rsi
               	xor	r8, rax
               	xor	rsi, r9
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L113>
<L112>:
               	movabs	r9, -0x56a7d9e71fc03656
               	bt	r9, rdx
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x28], rdi
               	xor	qword ptr [rsp + 0x10], rsi
               	xor	r14, rax
               	jmp	 <L114>
<L113>:
               	xor	edx, edx
               	jmp	 <L115>
               	nop	dword ptr [rax + rax]
<L117>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rsi, r8
               	xor	rax, rdi
               	xor	rdi, rsi
               	xor	r8, rax
               	xor	rsi, r9
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L116>
<L115>:
               	movabs	r9, 0x39abdc4529b1661c
               	bt	r9, rdx
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x28], rdi
               	xor	qword ptr [rsp + 0x10], rsi
               	xor	r14, rax
               	jmp	 <L117>
<L116>:
               	mov	qword ptr [rsp + 0x160], r11
               	mov	qword ptr [rsp + 0x110], r12
               	xor	edx, edx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	mov	rax, r14
               	xor	r15d, r15d
               	mov	r8, qword ptr [rsp + 0x10]
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x38], rsi
               	mov	r12, qword ptr [rsp + 0x28]
               	mov	r11, qword ptr [rsp + 0x40]
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x70], rsi
               	jmp	 <L118>
               	nop	word ptr cs:[rax + rax]
<L120>:
               	mov	rsi, r12
               	shl	rsi, 0x11
               	xor	r8, r11
               	xor	rax, r12
               	xor	r12, r8
               	xor	r11, rax
               	xor	r8, rsi
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L119>
<L118>:
               	movabs	rsi, 0x180ec6d33cfd0aba
               	bt	rsi, rdx
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x70], r11
               	xor	qword ptr [rsp + 0x38], r12
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L120>
<L119>:
               	xor	edx, edx
               	jmp	 <L121>
               	nop	dword ptr [rax + rax]
<L123>:
               	mov	rsi, r12
               	shl	rsi, 0x11
               	xor	r8, r11
               	xor	rax, r12
               	xor	r12, r8
               	xor	r11, rax
               	xor	r8, rsi
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L122>
<L121>:
               	movabs	rsi, -0x2a59ed990f36c6d4
               	bt	rsi, rdx
               	jae	 <L123>
               	xor	qword ptr [rsp + 0x70], r11
               	xor	qword ptr [rsp + 0x38], r12
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L123>
<L122>:
               	xor	edx, edx
               	jmp	 <L124>
               	nop	dword ptr [rax + rax]
<L126>:
               	mov	rsi, r12
               	shl	rsi, 0x11
               	xor	r8, r11
               	xor	rax, r12
               	xor	r12, r8
               	xor	r11, rax
               	xor	r8, rsi
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L125>
<L124>:
               	movabs	rsi, -0x56a7d9e71fc03656
               	bt	rsi, rdx
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x70], r11
               	xor	qword ptr [rsp + 0x38], r12
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L126>
<L125>:
               	xor	edx, edx
               	jmp	 <L127>
               	nop	dword ptr [rax + rax]
<L129>:
               	mov	rsi, r12
               	shl	rsi, 0x11
               	xor	r8, r11
               	xor	rax, r12
               	xor	r12, r8
               	xor	r11, rax
               	xor	r8, rsi
               	rol	rax, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L128>
<L127>:
               	movabs	rsi, 0x39abdc4529b1661c
               	bt	rsi, rdx
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x70], r11
               	xor	qword ptr [rsp + 0x38], r12
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L129>
<L128>:
               	mov	eax, 0x40
               	nop	dword ptr [rax]
<L130>:
               	dec	rax
               	jne	 <L130>
               	mov	eax, 0x40
               	mov	rdx, qword ptr [rsp + 0x138]
               	mov	qword ptr [rsp + 0x100], r10
               	nop	word ptr [rax + rax]
<L131>:
               	dec	rax
               	jne	 <L131>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L132>:
               	dec	rax
               	jne	 <L132>
               	mov	eax, 0x40
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
               	test	edx, edx
               	je	 <L166>
               	mov	r8d, edx
               	mov	r12, qword ptr [rsp + 0x88]
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	rcx, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x110]
               	mov	qword ptr [rsp + 0x148], rbx
               	mov	r11, qword ptr [rsp + 0x80]
               	mov	r10, qword ptr [rsp]
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x158], r13
               	mov	r13, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0x140], r14
               	mov	rsi, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x150], r15
               	mov	r15, qword ptr [rsp + 0x38]
               	mov	r14, qword ptr [rsp + 0x100]
               	nop	word ptr cs:[rax + rax]
<L167>:
               	mov	qword ptr [rsp + 0x10], rsi
               	mov	qword ptr [rsp + 0x18], rdx
               	mov	qword ptr [rsp + 0x110], r9
               	mov	qword ptr [rsp + 0x20], rcx
               	mov	qword ptr [rsp + 0x88], r12
               	mov	dword ptr [rsp + 0x134], r8d
               	mov	qword ptr [rsp + 0x38], r15
               	mov	qword ptr [rsp + 0x100], r14
               	mov	qword ptr [rsp], r10
               	mov	qword ptr [rsp + 0x108], r13
               	mov	qword ptr [rsp + 0x8], rdi
               	mov	qword ptr [rsp + 0x80], r11
               	mov	rax, qword ptr [rsp + 0x120]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	lea	rdx, [rcx + 4*rcx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rcx, qword ptr [rsp + 0x118]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	lea	r8, [rcx + 4*rcx]
               	rol	r8, 0x7
               	lea	r8, [r8 + 8*r8]
               	lea	r9, [4*r13]
               	add	r9, r13
               	rol	r9, 0x7
               	lea	r9, [r9 + 8*r9]
               	lea	r10, [r10 + 4*r10]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	lea	r11, [r14 + 4*r14]
               	rol	r11, 0x7
               	lea	r11, [r11 + 8*r11]
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rbx, [rcx + 4*rcx]
               	rol	rbx, 0x7
               	lea	rbx, [rbx + 8*rbx]
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	r12, [rcx + 4*rcx]
               	rol	r12, 0x7
               	lea	r12, [r12 + 8*r12]
               	lea	r13, [r15 + 4*r15]
               	rol	r13, 0x7
               	lea	r13, [r13 + 8*r13]
               	vmovq	xmm0, rdx
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm9, ymm0
               	vmovq	xmm0, rsi
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm8, ymm0
               	vmovq	xmm0, rdi
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm7, ymm0
               	vmovq	xmm0, r8
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm0
               	vmovq	xmm0, r9
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm5, ymm0
               	vmovq	xmm3, r10
               	vmovq	xmm4, r11
               	vmovq	xmm1, rbx
               	vmovq	xmm2, r12
               	vmovq	xmm0, r13
               	mov	edx, eax
               	shr	edx, 0x8
               	mov	esi, eax
               	shr	esi, 0x10
               	mov	r11d, eax
               	shr	r11d, 0x18
               	mov	r12, rax
               	shr	r12, 0x20
               	mov	r8, rax
               	shr	r8, 0x28
               	mov	r13, rax
               	shr	r13, 0x30
               	mov	r9, rax
               	movzx	edi, al
               	imul	edi, edi, 0x4f
               	shr	edi, 0xa
               	lea	r10d, [rdi + 2*rdi]
               	lea	edi, [rdi + 4*r10]
               	sub	al, dil
               	movzx	ecx, dl
               	imul	edi, ecx, 0x4f
               	shr	edi, 0xa
               	lea	r10d, [rdi + 2*rdi]
               	lea	edi, [rdi + 4*r10]
               	sub	cl, dil
               	mov	dword ptr [rsp + 0x130], ecx
               	movzx	ecx, sil
               	imul	esi, ecx, 0x4f
               	shr	esi, 0xa
               	lea	edi, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*rdi]
               	sub	cl, sil
               	mov	dword ptr [rsp + 0x12c], ecx
               	imul	esi, r11d, 0x4f
               	shr	esi, 0xa
               	lea	edi, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*rdi]
               	sub	r11b, sil
               	movzx	esi, r12b
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	edi, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*rdi]
               	sub	r12b, sil
               	movzx	esi, r8b
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	edi, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*rdi]
               	sub	r8b, sil
               	movzx	esi, r13b
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	edi, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*rdi]
               	sub	r13b, sil
               	mov	r14, qword ptr [rsp + 0x90]
               	mov	rsi, r14
               	shr	rsi, 0x1e
               	movabs	rdi, 0x3fffffffc
               	and	rsi, rdi
               	mov	rdx, qword ptr [rsp + 0xf8]
               	lea	r10, [rdx + rsi]
               	vmovaps	ymmword ptr [rdx + rsi], ymm9
               	lea	rsi, [4*r14]
               	and	rsi, rdi
               	vmovaps	ymmword ptr [rsi + r10], ymm8
               	lea	rsi, [8*r14]
               	movabs	rdi, 0x7fffffff8
               	and	rsi, rdi
               	vmovaps	ymmword ptr [rsi + r10], ymm7
               	mov	r15d, r14d
               	lea	rcx, [r15 + 2*r15]
               	vmovaps	ymmword ptr [r10 + 4*rcx], ymm6
               	lea	rsi, [r15 + 4*r15]
               	mov	rdi, r15
               	shl	rdi, 0x4
               	vmovaps	ymmword ptr [rdi + r10], ymm5
               	lea	rdi, [r15 + 8*r15]
               	vpmovzxbd	ymm3, xmm3      # ymm3 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
               	vcvtdq2ps	ymm3, ymm3
               	vpmovzxbd	ymm4, xmm4      # ymm4 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero,xmm4[4],zero,zero,zero,xmm4[5],zero,zero,zero,xmm4[6],zero,zero,zero,xmm4[7],zero,zero,zero
               	vcvtdq2ps	ymm4, ymm4
               	vmovaps	ymmword ptr [r10 + 4*rsi], ymm3
               	vmovaps	ymmword ptr [r10 + 8*rcx], ymm4
               	lea	rcx, [rdi + 2*rdi]
               	add	rcx, r15
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpmovzxbd	ymm2, xmm2      # ymm2 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm2, ymm2
               	vmovaps	ymmword ptr [r10 + rcx], ymm1
               	mov	rcx, r14
               	shl	rcx, 0x5
               	movabs	rbx, 0x1fffffffe0
               	and	rcx, rbx
               	vmovaps	ymmword ptr [rcx + r10], ymm2
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	shr	r9, 0x38
               	vmovaps	ymmword ptr [r10 + 4*rdi], ymm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	imul	ecx, r9d, 0x4f
               	shr	ecx, 0xa
               	lea	edi, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdi]
               	sub	r9b, cl
               	movzx	ecx, r9b
               	shl	rcx, 0x38
               	movzx	edi, r13b
               	mov	r13, qword ptr [rsp + 0x198]
               	shl	rdi, 0x30
               	or	rdi, rcx
               	movzx	ecx, r8b
               	shl	rcx, 0x28
               	or	rcx, rdi
               	movzx	edi, r12b
               	mov	r9, qword ptr [rsp + 0x100]
               	mov	r12, qword ptr [rsp + 0x118]
               	shl	rdi, 0x20
               	or	rdi, rcx
               	movzx	ecx, r11b
               	mov	r8, qword ptr [rsp + 0x1a0]
               	shl	ecx, 0x18
               	or	rcx, rdi
               	movzx	edi, byte ptr [rsp + 0x12c]
               	mov	r11, qword ptr [rsp + 0x80]
               	shl	edi, 0x10
               	or	rdi, rcx
               	movzx	ecx, byte ptr [rsp + 0x130]
               	shl	ecx, 0x8
               	or	rcx, rdi
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	movzx	eax, al
               	or	rax, rcx
               	mov	rcx, r14
               	shr	rcx, 0x20
               	lea	rdx, [rdx + 8*rsi]
               	mov	qword ptr [rcx + rdx], rax
               	mov	rsi, qword ptr [rsp + 0x68]
               	movabs	rax, -0x100000000
               	and	r14, rax
               	movabs	rax, 0x7fffffff8
               	add	r14, rax
               	add	r14, r15
               	add	r14, 0x8
               	mov	qword ptr [rsp + 0x90], r14
               	mov	r15, qword ptr [rsp + 0x60]
               	mov	r10, qword ptr [rsp + 0x120]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x170]
               	xor	rcx, r13
               	mov	rdx, qword ptr [rsp + 0x188]
               	xor	rdx, r10
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x120], r10
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0x198], r13
               	mov	r13, qword ptr [rsp + 0x108]
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x188], rdx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x170], rcx
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xb8]
               	mov	r10, qword ptr [rsp + 0x1e0]
               	xor	rdx, r10
               	mov	rcx, qword ptr [rsp + 0x190]
               	xor	rcx, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x1c0], rdi
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x1e0], r10
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xb8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x190], rcx
               	mov	r14, r9
               	mov	rcx, r12
               	mov	r12, qword ptr [rsp + 0x88]
               	mov	rdx, r8
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	r8, qword ptr [rsp + 0x98]
               	xor	r8, r11
               	xor	r12, rcx
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x118], rcx
               	xor	r11, r12
               	mov	qword ptr [rsp + 0x80], r11
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x98], r8
               	rol	r12, 0x2d
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x180]
               	mov	r9, qword ptr [rsp + 0xb0]
               	xor	rcx, r9
               	xor	rsi, rbx
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x8], rbx
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0xb0], r9
               	mov	r9, qword ptr [rsp + 0x110]
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x180], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x68], rsi
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	rsi, rcx
               	xor	r15, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x1a0], rdx
               	xor	rcx, r15
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x60], r15
               	mov	r11, qword ptr [rsp + 0x38]
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xa8], rsi
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x178]
               	xor	r9, rsi
               	mov	rdx, qword ptr [rsp + 0xa0]
               	xor	rdx, r13
               	xor	r13, r9
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x178], rsi
               	xor	r9, rax
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0xa0], rdx
               	mov	rdi, qword ptr [rsp]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r15, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0x148]
               	xor	rsi, r15
               	mov	rdx, qword ptr [rsp + 0x168]
               	xor	rdx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp], rdi
               	xor	r15, rdx
               	mov	qword ptr [rsp + 0x58], r15
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x148], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x168], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	r15, qword ptr [rsp + 0x50]
               	xor	rdx, r15
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	rsi, r14
               	xor	r14, rdx
               	xor	r15, rsi
               	mov	qword ptr [rsp + 0x50], r15
               	xor	rdx, rax
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0xc0], rsi
               	mov	rdi, qword ptr [rsp + 0x30]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r15, qword ptr [rsp + 0x158]
               	mov	rsi, qword ptr [rsp + 0x48]
               	xor	r15, rsi
               	mov	r8, qword ptr [rsp + 0x160]
               	xor	r8, rdi
               	xor	rdi, r15
               	mov	qword ptr [rsp + 0x30], rdi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x48], rsi
               	mov	rsi, qword ptr [rsp + 0x10]
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x160], r8
               	xor	r15, rax
               	mov	qword ptr [rsp + 0x158], r15
               	mov	rdi, qword ptr [rsp + 0x28]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r15, qword ptr [rsp + 0x40]
               	xor	rsi, r15
               	mov	rbx, qword ptr [rsp + 0x140]
               	xor	rbx, rdi
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x28], rdi
               	xor	rsi, rax
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	r8, qword ptr [rsp + 0x150]
               	mov	r10, qword ptr [rsp + 0x70]
               	xor	r8, r10
               	mov	rdi, qword ptr [rsp + 0x78]
               	xor	rdi, r11
               	xor	r11, r8
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x150], r8
               	xor	r15, rbx
               	mov	qword ptr [rsp + 0x40], r15
               	mov	r15, r11
               	mov	r11, qword ptr [rsp + 0x80]
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x140], rbx
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0x70], r10
               	mov	r10, qword ptr [rsp]
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x78], rdi
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	r8d, dword ptr [rsp + 0x134]
               	add	r8d, -0x8
               	jne	 <L167>
<L166>:
               	mov	r14, qword ptr [rsp + 0x90]
               	shr	r14, 0x20
               	vxorps	xmm0, xmm0, xmm0
               	cmp	r14d, 0x8
               	jb	 <L168>
               	mov	r12d, dword ptr [rsp + 0x90]
               	shr	r14d, 0x3
               	lea	rdi, [rsp + 0x220]
               	mov	edx, 0x400
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovdqa	ymm6, ymmword ptr  <memset+0x940>
               	vmovdqa	ymm7, ymmword ptr  <memset+0x960>
               	vpbroadcastd	ymm8, dword ptr  <memset+0x980>
               	vpbroadcastd	ymm9, dword ptr  <memset+0x98c>
               	vpbroadcastd	ymm10, dword ptr  <memset+0x988>
               	movabs	rbx, -0x100000000
               	vmovdqa	ymmword ptr [rsp + 0x1e0], ymm8
               	vmovdqa	ymmword ptr [rsp + 0x1c0], ymm9
               	vmovdqa	ymmword ptr [rsp + 0x1a0], ymm10
               	nop	word ptr cs:[rax + rax]
<L171>:
               	mov	r13d, r14d
               	neg	r13d
               	mov	qword ptr [rsp + 0x8], r14
               	and	r13d, r14d
               	mov	rax, r12
               	and	rax, rbx
               	mov	qword ptr [rsp], r13
               	shl	r13, 0x23
               	add	r13, rax
               	mov	eax, r12d
               	mov	qword ptr [rsp + 0xc0], rax
               	mov	rax, r13
               	xor	rax, r12
               	shr	rax, 0x20
               	mov	r8d, 0x1
               	jne	 <L169>
<L173>:
               	movsxd	rax, r8d
               	shl	rax, 0x5
               	add	rax, rsp
               	add	rax, 0x220
               	mov	r14, qword ptr [rsp + 0x8]
               	sub	r14d, dword ptr [rsp]
               	je	 <L170>
               	or	r13, qword ptr [rsp + 0xc0]
               	vmovaps	ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax + 0x20], ymm0
               	mov	r12, r13
               	test	r8d, r8d
               	js	 <L171>
               	mov	edx, r8d
               	shl	rdx, 0x5
               	add	rdx, 0x20
               	lea	rdi, [rsp + 0x220]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovdqa	ymm10, ymmword ptr [rsp + 0x1a0]
               	vmovdqa	ymm9, ymmword ptr [rsp + 0x1c0]
               	vmovdqa	ymm8, ymmword ptr [rsp + 0x1e0]
               	vmovdqa	ymm7, ymmword ptr  <memset+0x960>
               	vmovdqa	ymm6, ymmword ptr  <memset+0x940>
               	mov	r12, r13
               	jmp	 <L171>
               	nop	dword ptr [rax + rax]
<L169>:
               	mov	rdx, r12
               	shr	rdx, 0x20
               	mov	rcx, qword ptr [rsp + 0xc0]
               	lea	rax, [rcx + 4*rcx]
               	mov	r8, qword ptr [rsp + 0xf8]
               	lea	rsi, [r8 + 8*rax]
               	lea	rax, [rcx + 8*rcx]
               	lea	rdi, [rax + 2*rax]
               	add	rcx, r8
               	add	rdi, rcx
               	shl	r12, 0x5
               	movabs	rcx, 0x1fffffffe0
               	and	r12, rcx
               	add	r12, r8
               	lea	r9, [r8 + 4*rax]
               	mov	r10d, 0x1
               	xor	ecx, ecx
               	mov	r14d, 0x1
               	jmp	 <L172>
               	nop	word ptr cs:[rax + rax]
<L174>:
               	mov	r14d, r8d
               	movsxd	rax, r8d
               	shl	rax, 0x5
               	vmovaps	ymmword ptr [rsp + rax + 0x220], ymm0
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
               	cmp	rax, r13
               	je	 <L173>
<L172>:
               	vpmovzxbd	ymm0, qword ptr [rsi + rdx]
               	vpermd	ymm1, ymm0, ymm6
               	vpermd	ymm2, ymm0, ymm7
               	vpslld	ymm3, ymm0, 0x1c
               	vblendvps	ymm1, ymm1, ymm2, ymm3
               	vpsllvd	ymm2, ymm8, ymm0
               	vmaskmovps	ymm3, ymm2, ymmword ptr [r12 + 4*rdx]
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
               	jl	 <L174>
               	movsxd	r11, r14d
               	lea	ecx, [r15 + 0x1]
               	and	ecx, 0x3
               	je	 <L175>
               	dec	ecx
               	mov	rax, r11
               	shl	rax, 0x5
               	lea	rbx, [rsp + rax]
               	add	rbx, 0x220
               	mov	eax, r8d
               	sub	al, r14b
               	inc	al
               	movzx	r14d, al
               	and	r14d, 0x3
               	shl	r14d, 0x5
               	xor	eax, eax
               	nop
<L176>:
               	vaddps	ymm0, ymm0, ymmword ptr [rbx + rax]
               	add	rax, 0x20
               	cmp	r14d, eax
               	jne	 <L176>
               	add	r11, rcx
               	inc	r11
               	movabs	rbx, -0x100000000
<L175>:
               	cmp	r15d, 0x3
               	jb	 <L174>
               	mov	ecx, r8d
               	sub	ecx, r11d
               	inc	ecx
               	shl	r11, 0x5
               	lea	rax, [rsp + 0x280]
               	add	r11, rax
               	nop
<L177>:
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x60]
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x40]
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x20]
               	vaddps	ymm0, ymm0, ymmword ptr [r11]
               	sub	r11, -0x80
               	add	ecx, -0x4
               	jne	 <L177>
               	jmp	 <L174>
<L170>:
               	vmovaps	ymm0, ymmword ptr [rax]
<L168>:
               	vmovaps	ymmword ptr [rsp + 0xc0], ymm0
               	mov	rdi, qword ptr [rsp + 0xf8]
               	vzeroupper
               	call	 <free@plt>
               	cmp	dword ptr [rsp + 0x218], 0x2a
               	mov	rax, qword ptr [rsp + 0x138]
               	jne	 <L178>
               	cmp	eax, 0x186a0
               	jne	 <L178>
               	vmovaps	ymm1, ymmword ptr [rsp + 0xc0]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <memset+0x984>
               	jne	 <L179>
<L178>:
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
<L179>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0xc0], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0xc0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x5180>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x5160>
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
