
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
               	call	qword ptr  <free+0x50a8>
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
               	mov	rax, qword ptr  <free+0x50b8>
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
               	mov	rax, qword ptr  <free+0x50c0>
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
               	cmp	qword ptr , 0x0 <free+0x50c8>
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
               	int3
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
<initializer for module Meta.Auto.Simd.Tag>:
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
               	int3
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
               	int3
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
               	int3
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Array.Bounded>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
               	int3
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
               	int3
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
               	int3
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAReplication.SOAView>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW7SOAView__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW7SOAView__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Fill>
               	pop	rax
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
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
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
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
               	call	 <initializer for module Evaluation.Dependency.RandomAccessIteratorBase>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.SOAReplication.SOAView>
               	call	 <initializer for module Meta.Auto.Simd.Fill>
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	call	 <initializer for module Meta.Auto.Simd.Int32>
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
               	pop	rax
               	jmp	 <initializer for module Meta.Auto.Simd.Tag>
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
               	mov	rbp, rsp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	and	rsp, -0x20
               	sub	rsp, 0x560
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
               	mov	qword ptr [rsp + 0x130], rdx
               	add	ecx, edx
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x110], rcx
               	lea	rsi, [rcx + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	r11, r14
               	mov	qword ptr [rsp + 0x108], rax
               	mov	qword ptr [rsp + 0x100], rbx
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
               	mov	rbx, rdi
               	shr	rbx, 0x1f
               	xor	rbx, rdi
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
               	mov	r9, rsi
               	shr	r9, 0x1f
               	xor	r9, rsi
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
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x170], rcx
               	mov	rax, rcx
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x178], r10
               	mov	rcx, r10
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x18], rdx
               	mov	qword ptr [rsp + 0x120], r9
               	mov	rdx, r9
               	mov	qword ptr [rsp + 0x180], rbx
               	mov	rsi, rbx
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x60], rbx
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
               	mov	rbx, r14
<L7>:
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
               	mov	r14, rbx
               	je	 <L5>
<L4>:
               	bt	r11, rdi
               	mov	rbx, qword ptr [rsp + 0x60]
               	jae	 <L6>
               	xor	rbx, rsi
               	mov	qword ptr [rsp + 0x60], rbx
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r14, rcx
               	mov	rbx, r14
               	xor	r8, rax
               	jmp	 <L7>
<L5>:
               	movabs	r9, -0x2a59ed990f36c6d4
               	xor	edi, edi
               	jmp	 <L8>
<L10>:
               	mov	qword ptr [rsp + 0x68], r14
<L11>:
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
               	mov	r14, qword ptr [rsp + 0x68]
               	je	 <L9>
<L8>:
               	bt	r9, rdi
               	jae	 <L10>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x68], r14
               	xor	r8, rax
               	jmp	 <L11>
<L9>:
               	xor	edi, edi
               	jmp	 <L12>
               	nop	word ptr cs:[rax + rax]
<L14>:
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
               	je	 <L13>
<L12>:
               	movabs	r10, -0x56a7d9e71fc03656
               	bt	r10, rdi
               	mov	r10, qword ptr [rsp + 0x68]
               	jae	 <L14>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x68], r10
               	xor	r8, rax
               	jmp	 <L14>
<L13>:
               	xor	edi, edi
               	movabs	r10, 0x39abdc4529b1661c
               	jmp	 <L15>
               	nop	word ptr cs:[rax + rax]
<L17>:
               	mov	qword ptr [rsp + 0xf8], r8
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
               	mov	r8, qword ptr [rsp + 0xf8]
               	je	 <L16>
<L15>:
               	bt	r10, rdi
               	jae	 <L17>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	r8, rax
               	jmp	 <L17>
<L16>:
               	xor	edi, edi
               	xor	r12d, r12d
               	mov	rax, r8
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x40], rcx
               	mov	rcx, qword ptr [rsp + 0x68]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x10], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x60]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xb8], r8
               	jmp	 <L18>
               	nop
<L20>:
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
               	je	 <L19>
<L18>:
               	bt	r11, rdi
               	mov	r8, qword ptr [rsp + 0x40]
               	jae	 <L20>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x40], r8
               	xor	r12, rax
               	jmp	 <L20>
<L19>:
               	xor	edi, edi
               	jmp	 <L21>
               	nop	dword ptr [rax]
<L23>:
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
               	je	 <L22>
<L21>:
               	bt	r9, rdi
               	jae	 <L23>
               	mov	r8, r12
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x40], rcx
               	xor	r8, rax
               	mov	r12, r8
               	jmp	 <L23>
<L22>:
               	xor	edi, edi
               	mov	r8, r12
               	movabs	r10, -0x56a7d9e71fc03656
               	jmp	 <L24>
               	nop	word ptr [rax + rax]
<L26>:
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
               	je	 <L25>
<L24>:
               	bt	r10, rdi
               	jae	 <L26>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x40], rcx
               	xor	r8, rax
               	jmp	 <L26>
<L25>:
               	xor	edi, edi
               	movabs	r10, 0x39abdc4529b1661c
               	jmp	 <L27>
               	nop	word ptr cs:[rax + rax]
<L29>:
               	mov	qword ptr [rsp + 0xe8], r8
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
               	mov	r8, qword ptr [rsp + 0xe8]
               	je	 <L28>
<L27>:
               	bt	r10, rdi
               	jae	 <L29>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x40], rcx
               	xor	r8, rax
               	jmp	 <L29>
<L28>:
               	xor	edi, edi
               	xor	r12d, r12d
               	mov	rax, r8
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x58], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x8], rdx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xb0], r8
               	jmp	 <L30>
               	nop	word ptr cs:[rax + rax]
<L32>:
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
               	je	 <L31>
<L30>:
               	bt	r11, rdi
               	mov	r8, qword ptr [rsp + 0x58]
               	jae	 <L32>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x58], r8
               	xor	r12, rax
               	jmp	 <L32>
<L31>:
               	xor	edi, edi
               	jmp	 <L33>
               	nop	dword ptr [rax]
<L35>:
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
               	je	 <L34>
<L33>:
               	bt	r9, rdi
               	jae	 <L35>
               	mov	r8, r12
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r8, rax
               	mov	r12, r8
               	jmp	 <L35>
<L34>:
               	xor	edi, edi
               	jmp	 <L36>
               	nop	word ptr [rax + rax]
<L38>:
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
               	je	 <L37>
<L36>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L38>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r12, rax
               	jmp	 <L38>
<L37>:
               	xor	edi, edi
               	jmp	 <L39>
               	nop
<L41>:
               	mov	qword ptr [rsp + 0xd0], r12
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
               	mov	r12, qword ptr [rsp + 0xd0]
               	je	 <L40>
<L39>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L41>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r12, rax
               	jmp	 <L41>
<L40>:
               	xor	edi, edi
               	xor	r11d, r11d
               	mov	rax, r12
               	xor	r12d, r12d
               	mov	rcx, qword ptr [rsp + 0x58]
               	xor	ebx, ebx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0xb0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa8], r8
               	jmp	 <L42>
               	nop	word ptr cs:[rax + rax]
<L44>:
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
               	je	 <L43>
<L42>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L44>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	rbx, rdx
               	xor	r12, rcx
               	xor	r11, rax
               	jmp	 <L44>
<L43>:
               	xor	edi, edi
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L46>
<L45>:
               	bt	r9, rdi
               	jae	 <L47>
               	mov	r8, r11
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	rbx, rdx
               	xor	r12, rcx
               	xor	r8, rax
               	mov	r11, r8
               	jmp	 <L47>
<L46>:
               	xor	edi, edi
               	jmp	 <L48>
               	nop	word ptr cs:[rax + rax]
<L50>:
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
               	je	 <L49>
<L48>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L50>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	rbx, rdx
               	xor	r12, rcx
               	xor	r11, rax
               	jmp	 <L50>
<L49>:
               	mov	qword ptr [rsp + 0xd8], r12
               	xor	edi, edi
               	jmp	 <L51>
               	nop	word ptr cs:[rax + rax]
<L53>:
               	mov	qword ptr [rsp + 0xf0], r11
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
               	mov	r11, qword ptr [rsp + 0xf0]
               	je	 <L52>
<L51>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L53>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	rbx, rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	r11, rax
               	jmp	 <L53>
<L52>:
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, r11
               	xor	r12d, r12d
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	edx, edx
               	mov	qword ptr [rsp], rdx
               	mov	rdx, rbx
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	r10d, r10d
               	movabs	r11, 0x180ec6d33cfd0aba
               	jmp	 <L54>
               	nop
<L56>:
               	mov	r9, r10
               	mov	r10, r12
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
               	mov	r12, r10
               	mov	r10, r9
               	je	 <L55>
<L54>:
               	bt	r11, rdi
               	jae	 <L56>
               	xor	r10, rsi
               	mov	r9, r10
               	xor	qword ptr [rsp], rdx
               	xor	r12, rcx
               	mov	r10, r12
               	xor	r8, rax
               	jmp	 <L57>
<L55>:
               	xor	edi, edi
               	movabs	r9, -0x2a59ed990f36c6d4
               	jmp	 <L58>
               	nop
<L60>:
               	mov	qword ptr [rsp + 0x70], r12
<L61>:
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
               	mov	r12, qword ptr [rsp + 0x70]
               	je	 <L59>
<L58>:
               	bt	r9, rdi
               	jae	 <L60>
               	xor	r10, rsi
               	xor	qword ptr [rsp], rdx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x70], r12
               	xor	r8, rax
               	jmp	 <L61>
<L59>:
               	mov	r9, r10
               	xor	edi, edi
               	jmp	 <L62>
               	nop	word ptr cs:[rax + rax]
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
               	je	 <L63>
<L62>:
               	movabs	r10, -0x56a7d9e71fc03656
               	bt	r10, rdi
               	mov	r10, qword ptr [rsp + 0x70]
               	mov	r12, qword ptr [rsp]
               	jae	 <L64>
               	xor	r9, rsi
               	xor	r12, rdx
               	mov	qword ptr [rsp], r12
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0x70], r10
               	xor	r8, rax
               	jmp	 <L64>
<L63>:
               	xor	edi, edi
               	mov	r10, r9
               	movabs	r9, -0x2a59ed990f36c6d4
               	movabs	r12, 0x39abdc4529b1661c
               	jmp	 <L65>
               	nop	word ptr cs:[rax + rax]
<L67>:
               	mov	qword ptr [rsp + 0xe0], r8
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
               	mov	r8, qword ptr [rsp + 0xe0]
               	je	 <L66>
<L65>:
               	bt	r12, rdi
               	jae	 <L67>
               	xor	r10, rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	r8, rax
               	jmp	 <L67>
<L66>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x50], rax
               	mov	rax, r8
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x48], rcx
               	mov	rcx, qword ptr [rsp + 0x70]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	rdx, qword ptr [rsp]
               	mov	rsi, r10
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa0], r8
               	jmp	 <L68>
               	nop	dword ptr [rax]
<L70>:
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
               	je	 <L69>
<L68>:
               	bt	r11, rdi
               	mov	r8, qword ptr [rsp + 0x48]
               	jae	 <L70>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x50], rax
               	jmp	 <L70>
<L69>:
               	xor	edi, edi
               	jmp	 <L71>
               	nop
<L73>:
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
               	je	 <L72>
<L71>:
               	bt	r9, rdi
               	mov	r8, qword ptr [rsp + 0x50]
               	jae	 <L73>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x48], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x50], r8
               	jmp	 <L73>
<L72>:
               	xor	edi, edi
               	jmp	 <L74>
               	nop
<L76>:
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
               	je	 <L75>
<L74>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L76>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x48], rcx
               	xor	qword ptr [rsp + 0x50], rax
               	jmp	 <L76>
<L75>:
               	xor	edi, edi
               	jmp	 <L77>
<L79>:
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
               	je	 <L78>
<L77>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L79>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x48], rcx
               	xor	qword ptr [rsp + 0x50], rax
               	jmp	 <L79>
<L78>:
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, qword ptr [rsp + 0x50]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x98], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x28], rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0xa0]
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x90], r12
               	jmp	 <L80>
               	nop	word ptr cs:[rax + rax]
<L82>:
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
               	je	 <L81>
<L80>:
               	bt	r11, rdi
               	jae	 <L82>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	r8, rax
               	jmp	 <L82>
<L81>:
               	xor	edi, edi
               	jmp	 <L83>
               	nop	word ptr [rax + rax]
<L85>:
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
               	je	 <L84>
<L83>:
               	bt	r9, rdi
               	mov	r8, qword ptr [rsp + 0xc0]
               	jae	 <L85>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xc0], r8
               	jmp	 <L85>
<L84>:
               	xor	edi, edi
               	jmp	 <L86>
               	nop	word ptr [rax + rax]
<L88>:
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
               	je	 <L87>
<L86>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L88>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0xc0], rax
               	jmp	 <L88>
<L87>:
               	xor	edi, edi
               	jmp	 <L89>
               	nop	word ptr cs:[rax + rax]
<L91>:
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
               	je	 <L90>
<L89>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L91>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0xc0], rax
               	jmp	 <L91>
<L90>:
               	xor	ecx, ecx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	mov	rax, qword ptr [rsp + 0xc0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x80], rdx
               	mov	rdx, qword ptr [rsp + 0x98]
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x20], rsi
               	mov	rsi, qword ptr [rsp + 0x28]
               	mov	rdi, qword ptr [rsp + 0x90]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	jmp	 <L92>
               	nop	word ptr cs:[rax + rax]
<L94>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	rdi, rax
               	xor	rdx, r8
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L93>
<L92>:
               	bt	r11, rcx
               	jae	 <L94>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L94>
<L93>:
               	xor	ecx, ecx
               	jmp	 <L95>
               	nop	dword ptr [rax]
<L97>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	rdi, rax
               	xor	rdx, r8
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L96>
<L95>:
               	bt	r9, rcx
               	jae	 <L97>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L97>
<L96>:
               	xor	ecx, ecx
               	jmp	 <L98>
               	nop	dword ptr [rax]
<L100>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	rdi, rax
               	xor	rdx, r8
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L99>
<L98>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rcx
               	jae	 <L100>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L100>
<L99>:
               	xor	ecx, ecx
               	jmp	 <L101>
               	nop	word ptr cs:[rax + rax]
<L103>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	rdi, rax
               	xor	rdx, r8
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L102>
<L101>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rcx
               	jae	 <L103>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L103>
<L102>:
               	xor	ecx, ecx
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x88]
               	xor	r12d, r12d
               	mov	rdx, qword ptr [rsp + 0x80]
               	xor	r14d, r14d
               	mov	rsi, qword ptr [rsp + 0x20]
               	mov	r8, qword ptr [rsp + 0x78]
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x168], r10
               	jmp	 <L104>
<L106>:
               	mov	r10, rsi
               	shl	r10, 0x11
               	xor	rdx, r8
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r8, rax
               	xor	rdx, r10
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L105>
<L104>:
               	bt	r11, rcx
               	jae	 <L106>
               	xor	r13, r8
               	xor	r14, rsi
               	xor	r12, rdx
               	xor	rdi, rax
               	jmp	 <L106>
<L105>:
               	xor	ecx, ecx
               	mov	r11, rdi
               	jmp	 <L107>
               	nop
<L109>:
               	mov	r10, rsi
               	shl	r10, 0x11
               	xor	rdx, r8
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r8, rax
               	xor	rdx, r10
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L108>
<L107>:
               	bt	r9, rcx
               	jae	 <L109>
               	xor	r13, r8
               	xor	r14, rsi
               	xor	r12, rdx
               	xor	r11, rax
               	jmp	 <L109>
<L108>:
               	mov	qword ptr [rsp + 0x38], r14
               	xor	ecx, ecx
               	mov	r14, r13
               	jmp	 <L110>
               	nop	word ptr cs:[rax + rax]
<L112>:
               	mov	rdi, qword ptr [rsp + 0x38]
<L113>:
               	mov	qword ptr [rsp + 0x38], rdi
               	mov	r10, rsi
               	shl	r10, 0x11
               	xor	rdx, r8
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r8, rax
               	xor	rdx, r10
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L111>
<L110>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, rcx
               	jae	 <L112>
               	xor	r14, r8
               	mov	rdi, qword ptr [rsp + 0x38]
               	xor	rdi, rsi
               	xor	r12, rdx
               	xor	r11, rax
               	jmp	 <L113>
<L111>:
               	xor	ecx, ecx
               	movabs	rdi, 0x39abdc4529b1661c
               	jmp	 <L114>
               	nop
<L116>:
               	mov	r10, rsi
               	shl	r10, 0x11
               	xor	rdx, r8
               	xor	rax, rsi
               	xor	rsi, rdx
               	xor	r8, rax
               	xor	rdx, r10
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L115>
<L114>:
               	bt	rdi, rcx
               	jae	 <L116>
               	xor	r14, r8
               	xor	qword ptr [rsp + 0x38], rsi
               	xor	r12, rdx
               	xor	r11, rax
               	jmp	 <L116>
<L115>:
               	mov	rsi, r9
               	xor	ecx, ecx
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x160], r11
               	mov	rax, r11
               	xor	r9d, r9d
               	mov	r8, r12
               	xor	r15d, r15d
               	mov	r10, qword ptr [rsp + 0x38]
               	mov	r11, r14
               	xor	edi, edi
               	jmp	 <L117>
               	nop	word ptr cs:[rax + rax]
<L119>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r8, r11
               	xor	rax, r10
               	xor	r10, r8
               	xor	r11, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L118>
<L117>:
               	movabs	rdx, 0x180ec6d33cfd0aba
               	bt	rdx, rcx
               	jae	 <L119>
               	xor	rdi, r11
               	xor	r15, r10
               	xor	r9, r8
               	xor	r13, rax
               	jmp	 <L119>
<L118>:
               	xor	ecx, ecx
               	jmp	 <L120>
               	nop	word ptr cs:[rax + rax]
<L122>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r8, r11
               	xor	rax, r10
               	xor	r10, r8
               	xor	r11, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L121>
<L120>:
               	bt	rsi, rcx
               	jae	 <L122>
               	xor	rdi, r11
               	xor	r15, r10
               	xor	r9, r8
               	xor	r13, rax
               	jmp	 <L122>
<L121>:
               	xor	ecx, ecx
               	jmp	 <L123>
               	nop	dword ptr [rax + rax]
<L125>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r8, r11
               	xor	rax, r10
               	xor	r10, r8
               	xor	r11, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L124>
<L123>:
               	movabs	rdx, -0x56a7d9e71fc03656
               	bt	rdx, rcx
               	jae	 <L125>
               	xor	rdi, r11
               	xor	r15, r10
               	xor	r9, r8
               	xor	r13, rax
               	jmp	 <L125>
<L124>:
               	xor	ecx, ecx
               	jmp	 <L126>
               	nop	word ptr cs:[rax + rax]
<L128>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r8, r11
               	xor	rax, r10
               	xor	r10, r8
               	xor	r11, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L127>
<L126>:
               	movabs	rdx, 0x39abdc4529b1661c
               	bt	rdx, rcx
               	jae	 <L128>
               	xor	rdi, r11
               	xor	r15, r10
               	xor	r9, r8
               	xor	r13, rax
               	jmp	 <L128>
<L127>:
               	mov	eax, 0x40
               	nop	word ptr cs:[rax + rax]
<L129>:
               	dec	rax
               	jne	 <L129>
               	mov	eax, 0x40
               	mov	rcx, qword ptr [rsp + 0x130]
               	nop	word ptr cs:[rax + rax]
<L130>:
               	dec	rax
               	jne	 <L130>
               	mov	eax, 0x40
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
               	test	ecx, ecx
               	je	 <L165>
               	mov	qword ptr [rsp + 0x148], rdi
               	mov	qword ptr [rsp + 0x158], r13
               	mov	qword ptr [rsp + 0x140], r14
               	mov	r14, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x150], r9
               	mov	rsi, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x118], r15
               	mov	r15, qword ptr [rsp + 0xd0]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rsp + 0x138], r12
               	nop	word ptr cs:[rax + rax]
<L166>:
               	mov	dword ptr [rsp + 0x12c], ecx
               	mov	qword ptr [rsp + 0xd0], rbx
               	mov	qword ptr [rsp + 0x8], rdx
               	mov	qword ptr [rsp + 0x10], rsi
               	mov	qword ptr [rsp + 0x18], r14
               	mov	rax, qword ptr [rsp + 0x120]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rcx, [r14 + 4*r14]
               	rol	rcx, 0x7
               	lea	r14, [rax + 8*rax]
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rbx + 4*rbx]
               	rol	rsi, 0x7
               	lea	r8, [rdx + 8*rdx]
               	mov	rdx, qword ptr [rsp]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	r10, [rsi + 8*rsi]
               	mov	rsi, qword ptr [rsp + 0x30]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	r11, [rdx + 8*rdx]
               	mov	rdx, qword ptr [rsp + 0x28]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rbx, [rsi + 8*rsi]
               	mov	rsi, qword ptr [rsp + 0x20]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	r12, [rdx + 8*rdx]
               	mov	rdx, qword ptr [rsp + 0x38]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm1, rcx
               	mov	rcx, qword ptr [rsp + 0x118]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm2, rax
               	vmovq	xmm3, r8
               	vmovq	xmm4, r10
               	vmovq	xmm5, r11
               	vmovq	xmm6, rbx
               	vmovq	xmm7, r12
               	vmovq	xmm8, rsi
               	vmovq	xmm9, rdx
               	vmovq	xmm0, rcx
               	mov	r11d, r14d
               	shr	r11d, 0x8
               	mov	ebx, r14d
               	shr	ebx, 0x10
               	mov	r8d, r14d
               	shr	r8d, 0x18
               	mov	rcx, r14
               	shr	rcx, 0x20
               	mov	r12, r14
               	shr	r12, 0x28
               	mov	rax, r14
               	shr	rax, 0x30
               	mov	r10, r14
               	shr	r10, 0x38
               	movzx	edx, r14b
               	imul	edx, edx, 0x4f
               	shr	edx, 0xa
               	lea	esi, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*rsi]
               	sub	r14b, dl
               	movzx	r11d, r11b
               	imul	edx, r11d, 0x4f
               	shr	edx, 0xa
               	lea	esi, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*rsi]
               	sub	r11b, dl
               	movzx	ebx, bl
               	imul	edx, ebx, 0x4f
               	shr	edx, 0xa
               	lea	esi, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*rsi]
               	sub	bl, dl
               	imul	edx, r8d, 0x4f
               	shr	edx, 0xa
               	lea	esi, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*rsi]
               	sub	r8b, dl
               	movzx	edx, cl
               	imul	edx, edx, 0x4f
               	shr	edx, 0xa
               	lea	esi, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*rsi]
               	sub	cl, dl
               	movzx	edx, r12b
               	imul	edx, edx, 0x4f
               	shr	edx, 0xa
               	lea	esi, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*rsi]
               	sub	r12b, dl
               	movzx	edx, al
               	imul	edx, edx, 0x4f
               	shr	edx, 0xa
               	lea	esi, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*rsi]
               	sub	al, dl
               	imul	edx, r10d, 0x4f
               	shr	edx, 0xa
               	lea	esi, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*rsi]
               	sub	r10b, dl
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm11, ymm1
               	vpmovzxbd	ymm1, xmm2      # ymm1 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	vcvtdq2ps	ymm12, ymm1
               	vpmovzxbd	ymm1, xmm3      # ymm1 = xmm3[0],zero,zero,zero,xmm3[1],zero,zero,zero,xmm3[2],zero,zero,zero,xmm3[3],zero,zero,zero,xmm3[4],zero,zero,zero,xmm3[5],zero,zero,zero,xmm3[6],zero,zero,zero,xmm3[7],zero,zero,zero
               	vcvtdq2ps	ymm13, ymm1
               	vpmovzxbd	ymm1, xmm4      # ymm1 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero,xmm4[4],zero,zero,zero,xmm4[5],zero,zero,zero,xmm4[6],zero,zero,zero,xmm4[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm1
               	vpmovzxbd	ymm1, xmm5      # ymm1 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm3, ymm1
               	vpmovzxbd	ymm1, xmm6      # ymm1 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm4, ymm1
               	vpmovzxbd	ymm1, xmm7      # ymm1 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
               	vcvtdq2ps	ymm5, ymm1
               	vpmovzxbd	ymm1, xmm8      # ymm1 = xmm8[0],zero,zero,zero,xmm8[1],zero,zero,zero,xmm8[2],zero,zero,zero,xmm8[3],zero,zero,zero,xmm8[4],zero,zero,zero,xmm8[5],zero,zero,zero,xmm8[6],zero,zero,zero,xmm8[7],zero,zero,zero
               	vcvtdq2ps	ymm2, ymm1
               	vpmovzxbd	ymm1, xmm9      # ymm1 = xmm9[0],zero,zero,zero,xmm9[1],zero,zero,zero,xmm9[2],zero,zero,zero,xmm9[3],zero,zero,zero,xmm9[4],zero,zero,zero,xmm9[5],zero,zero,zero,xmm9[6],zero,zero,zero,xmm9[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	movzx	edx, r10b
               	shl	rdx, 0x38
               	movzx	eax, al
               	shl	rax, 0x30
               	or	rax, rdx
               	movzx	edx, r12b
               	shl	rdx, 0x28
               	or	rdx, rax
               	movzx	eax, cl
               	shl	rax, 0x20
               	or	rax, rdx
               	movzx	ecx, r8b
               	shl	ecx, 0x18
               	or	rcx, rax
               	movzx	eax, bl
               	shl	eax, 0x10
               	or	rax, rcx
               	movzx	edx, r11b
               	shl	edx, 0x8
               	or	rdx, rax
               	movzx	ecx, r14b
               	or	rcx, rdx
               	mov	r12, qword ptr [rsp + 0x110]
               	lea	rax, [4*r12]
               	lea	rsi, [8*r12]
               	mov	ebx, r12d
               	mov	rdx, r12
               	shr	rdx, 0x1e
               	movabs	rdi, 0x3fffffffc
               	and	rdx, rdi
               	mov	r9, qword ptr [rsp + 0x108]
               	lea	r8, [r9 + rdx]
               	vmovaps	ymmword ptr [r9 + rdx], ymm11
               	and	rax, rdi
               	vmovaps	ymmword ptr [rax + r8], ymm12
               	movabs	rdi, 0x7fffffff8
               	and	rsi, rdi
               	vmovaps	ymmword ptr [rsi + r8], ymm13
               	lea	rax, [rbx + 2*rbx]
               	vmovaps	ymmword ptr [r8 + 4*rax], ymm10
               	mov	rsi, rbx
               	shl	rsi, 0x4
               	vmovaps	ymmword ptr [rsi + r8], ymm3
               	lea	rsi, [rbx + 4*rbx]
               	vmovaps	ymmword ptr [r8 + 4*rsi], ymm4
               	vmovaps	ymmword ptr [r8 + 8*rax], ymm5
               	lea	r10, [rbx + 8*rbx]
               	lea	rax, [r10 + 2*r10]
               	add	rax, r9
               	add	rax, rbx
               	mov	qword ptr [rsp + 0x188], rax
               	vmovaps	ymmword ptr [rdx + rax], ymm2
               	mov	r13, rbx
               	shl	r13, 0x5
               	vmovaps	ymmword ptr [r13 + r8], ymm1
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	lea	rax, [r9 + 4*r10]
               	mov	qword ptr [rsp + 0x198], rax
               	vmovaps	ymmword ptr [rdx + rax], ymm0
               	mov	rdx, r12
               	shr	rdx, 0x20
               	lea	rax, [r9 + 8*rsi]
               	mov	rsi, qword ptr [rsp + 0x10]
               	mov	r14, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x190], rax
               	mov	qword ptr [rdx + rax], rcx
               	movabs	rcx, -0x100000000
               	and	r12, rcx
               	lea	rcx, [rdi + r12]
               	mov	r11, qword ptr [rsp + 0x148]
               	lea	rax, [rbx + rcx]
               	add	rax, 0x8
               	mov	qword ptr [rsp + 0x110], rax
               	mov	rbx, qword ptr [rsp + 0xd0]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rax, qword ptr [rsp + 0x120]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdi, qword ptr [rsp + 0x178]
               	mov	r8, qword ptr [rsp + 0x180]
               	xor	rdi, r8
               	mov	r9, qword ptr [rsp + 0x170]
               	xor	r9, rax
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x120], rax
               	xor	r8, r9
               	mov	qword ptr [rsp + 0x180], r8
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x170], r9
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x178], rdi
               	mov	rcx, r14
               	shl	rcx, 0x11
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	rax, qword ptr [rsp + 0x68]
               	xor	rax, r8
               	mov	rdi, qword ptr [rsp + 0xf8]
               	xor	rdi, r14
               	xor	r14, rax
               	xor	r8, rdi
               	mov	qword ptr [rsp + 0x60], r8
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x68], rax
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0xf8], rdi
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	r8, qword ptr [rsp + 0xb8]
               	xor	rdi, r8
               	mov	r9, qword ptr [rsp + 0xe8]
               	xor	r9, rsi
               	xor	rsi, rdi
               	xor	r8, r9
               	mov	qword ptr [rsp + 0xb8], r8
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x40], rdi
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xe8], r9
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rdi, qword ptr [rsp + 0x58]
               	mov	r8, qword ptr [rsp + 0xb0]
               	xor	rdi, r8
               	xor	r15, rdx
               	xor	rdx, rdi
               	xor	r8, r15
               	mov	qword ptr [rsp + 0xb0], r8
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x58], rdi
               	rol	r15, 0x2d
               	mov	rcx, rbx
               	shl	rcx, 0x11
               	mov	rdi, qword ptr [rsp + 0xd8]
               	mov	r8, qword ptr [rsp + 0xa8]
               	xor	rdi, r8
               	mov	r9, qword ptr [rsp + 0xf0]
               	xor	r9, rbx
               	xor	rbx, rdi
               	xor	r8, r9
               	mov	qword ptr [rsp + 0xa8], r8
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xf0], r9
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0xd8], rdi
               	mov	rax, qword ptr [rsp]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdi, qword ptr [rsp + 0x70]
               	mov	r8, qword ptr [rsp + 0x168]
               	xor	rdi, r8
               	mov	r9, qword ptr [rsp + 0xe0]
               	xor	r9, rax
               	xor	rax, rdi
               	mov	qword ptr [rsp], rax
               	xor	r8, r9
               	mov	qword ptr [rsp + 0x168], r8
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x70], rdi
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xe0], r9
               	mov	rax, qword ptr [rsp + 0x30]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdi, qword ptr [rsp + 0x48]
               	mov	r8, qword ptr [rsp + 0xa0]
               	xor	rdi, r8
               	mov	r9, qword ptr [rsp + 0x50]
               	xor	r9, rax
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x30], rax
               	xor	r8, r9
               	mov	qword ptr [rsp + 0xa0], r8
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x48], rdi
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x50], r9
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdi, qword ptr [rsp + 0x98]
               	mov	r8, qword ptr [rsp + 0x90]
               	xor	rdi, r8
               	mov	r9, qword ptr [rsp + 0xc0]
               	xor	r9, rax
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x28], rax
               	xor	r8, r9
               	mov	qword ptr [rsp + 0x90], r8
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x98], rdi
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xc0], r9
               	mov	rax, qword ptr [rsp + 0x20]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	r9, qword ptr [rsp + 0x78]
               	xor	r8, r9
               	mov	rdi, qword ptr [rsp + 0x88]
               	xor	rdi, rax
               	xor	rax, r8
               	mov	qword ptr [rsp + 0x20], rax
               	xor	r9, rdi
               	mov	qword ptr [rsp + 0x78], r9
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x88], rdi
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x80], r8
               	mov	rax, qword ptr [rsp + 0x38]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdi, qword ptr [rsp + 0x140]
               	mov	r8, qword ptr [rsp + 0x138]
               	xor	r8, rdi
               	mov	r10, r15
               	mov	r15, qword ptr [rsp + 0x160]
               	xor	r15, rax
               	xor	rax, r8
               	mov	qword ptr [rsp + 0x38], rax
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x138], r8
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	r8, qword ptr [rsp + 0x150]
               	xor	r8, r11
               	mov	r9, qword ptr [rsp + 0x158]
               	xor	r9, rcx
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x118], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x150], r8
               	mov	ecx, dword ptr [rsp + 0x12c]
               	xor	rdi, r15
               	mov	qword ptr [rsp + 0x140], rdi
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x160], r15
               	mov	r15, r10
               	xor	r11, r9
               	mov	qword ptr [rsp + 0x148], r11
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x158], r9
               	add	ecx, -0x8
               	jne	 <L166>
               	mov	r10, qword ptr [rsp + 0x190]
               	mov	r8, qword ptr [rsp + 0x198]
               	mov	rax, qword ptr [rsp + 0x188]
               	movabs	rcx, 0x7fffffff8
               	shr	qword ptr [rsp + 0x110], 0x20
               	mov	rbx, qword ptr [rsp + 0x100]
               	mov	rdi, qword ptr [rsp + 0x108]
               	je	 <L167>
               	lea	rdx, [rcx + r12]
               	add	rdx, 0x8
               	mov	rsi, rdi
               	add	rsi, r13
               	lea	r13, [rsp + 0x180]
               	mov	r9d, 0x1
               	xor	r11d, r11d
               	vpbroadcastd	ymm0, dword ptr  <free+0x904>
               	vpbroadcastd	ymm1, dword ptr  <free+0x910>
               	vpbroadcastd	ymm2, dword ptr  <free+0x90c>
               	vbroadcastss	ymm3, dword ptr  <free+0x900>
               	vmovdqa	ymm4, ymmword ptr  <free+0x920>
               	vmovdqa	ymm5, ymmword ptr  <free+0x940>
               	xor	ebx, ebx
               	mov	r14d, 0x1
               	jmp	 <L168>
               	nop	dword ptr [rax]
<L170>:
               	add	r11d, 0x8
               	inc	r9d
               	popcnt	r14d, r9d
               	mov	r15, r11
               	shl	r15, 0x20
               	mov	ebx, ecx
               	cmp	r15, rdx
               	je	 <L169>
<L168>:
               	mov	ecx, r14d
               	vpmovsxbd	ymm6, qword ptr [r10 + r11]
               	vmovaps	ymm7, ymmword ptr [rax + 4*r11]
               	vpsllvd	ymm8, ymm0, ymm6
               	vmaskmovps	ymm9, ymm8, ymmword ptr [rsi + 4*r11]
               	vpsllvd	ymm10, ymm1, ymm6
               	vmaskmovps	ymm11, ymm10, ymmword ptr [r8 + 4*r11]
               	vblendvps	ymm8, ymm7, ymm9, ymm8
               	vblendvps	ymm9, ymm7, ymm11, ymm10
               	vpsllvd	ymm10, ymm2, ymm6
               	vblendvps	ymm9, ymm9, ymm3, ymm10
               	vpermd	ymm10, ymm6, ymm4
               	vpermd	ymm11, ymm6, ymm5
               	vpslld	ymm6, ymm6, 0x1c
               	vblendvps	ymm6, ymm10, ymm11, ymm6
               	vmulps	ymm6, ymm9, ymm6
               	vmulps	ymm7, ymm8, ymm7
               	vmulps	ymm6, ymm7, ymm6
               	movsxd	r14, ebx
               	mov	r15, r14
               	shl	r15, 0x5
               	vmovaps	ymmword ptr [rsp + r15 + 0x1a0], ymm6
               	sub	r14d, ecx
               	jb	 <L170>
               	mov	ebx, ebx
               	mov	r15, rbx
               	shl	r15, 0x5
               	vmovaps	ymm6, ymmword ptr [rsp + r15 + 0x1a0]
               	inc	r14d
               	and	r14d, 0x3
               	je	 <L171>
               	add	r15, r13
               	xor	r12d, r12d
               	nop	word ptr [rax + rax]
<L172>:
               	vaddps	ymm6, ymm6, ymmword ptr [r15]
               	vmovaps	ymmword ptr [r15], ymm6
               	inc	r12
               	add	r15, -0x20
               	cmp	r14, r12
               	jne	 <L172>
               	mov	r14, rbx
               	sub	r14, r12
               	mov	r15d, ecx
               	sub	rbx, r15
               	cmp	rbx, 0x3
               	jb	 <L170>
               	jmp	 <L173>
<L171>:
               	mov	r14, rbx
               	mov	r15d, ecx
               	sub	rbx, r15
               	cmp	rbx, 0x3
               	jb	 <L170>
<L173>:
               	mov	rbx, r14
               	shl	rbx, 0x5
               	add	rbx, r13
               	inc	r14
               	nop
<L174>:
               	vaddps	ymm6, ymm6, ymmword ptr [rbx]
               	vmovaps	ymmword ptr [rbx], ymm6
               	vaddps	ymm6, ymm6, ymmword ptr [rbx - 0x20]
               	vmovaps	ymmword ptr [rbx - 0x20], ymm6
               	vaddps	ymm6, ymm6, ymmword ptr [rbx - 0x40]
               	vmovaps	ymmword ptr [rbx - 0x40], ymm6
               	vaddps	ymm6, ymm6, ymmword ptr [rbx - 0x60]
               	vmovaps	ymmword ptr [rbx - 0x60], ymm6
               	add	rbx, -0x80
               	add	r14, -0x4
               	cmp	r14, r15
               	jg	 <L174>
               	jmp	 <L170>
<L165>:
               	mov	rdi, qword ptr [rsp + 0x108]
               	mov	rbx, qword ptr [rsp + 0x100]
               	jmp	 <L167>
<L169>:
               	cmp	ecx, 0x2
               	mov	rbx, qword ptr [rsp + 0x100]
               	jb	 <L167>
               	mov	eax, ecx
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x180]
               	test	cl, 0x1
               	jne	 <L175>
               	dec	rax
               	lea	rsi, [rsp + 0x1a0]
               	vaddps	ymm0, ymm0, ymmword ptr [rdx + rsi - 0x40]
               	vmovaps	ymmword ptr [rdx + rsi - 0x40], ymm0
<L175>:
               	cmp	ecx, 0x2
               	je	 <L167>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	lea	rdx, [rsp + 0x1a0]
               	add	rax, rdx
               	add	rax, -0x40
               	nop	word ptr cs:[rax + rax]
<L176>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L176>
<L167>:
               	vmovaps	xmm0, xmmword ptr [rsp + 0x1b0]
               	vaddps	xmm0, xmm0, xmmword ptr [rsp + 0x1a0]
               	vmovaps	xmmword ptr [rsp + 0xc0], xmm0
               	vzeroupper
               	call	 <free@plt>
               	cmp	ebx, 0x2a
               	jne	 <L177>
               	cmp	dword ptr [rsp + 0x130], 0x186a0
               	jne	 <L177>
               	vmovaps	xmm1, xmmword ptr [rsp + 0xc0]
               	vshufps	xmm0, xmm1, xmm1, 0xd7  # xmm0 = xmm1[3,1,1,3]
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <free+0x908>
               	jne	 <L178>
<L177>:
               	xor	eax, eax
               	lea	rsp, [rbp - 0x28]
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	ret
<L178>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0xc0], xmm0
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0xc0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <free+0x50d0>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <free+0x50b0>
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
