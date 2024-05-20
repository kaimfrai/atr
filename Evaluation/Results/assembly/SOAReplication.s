
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
               	call	qword ptr  <memset+0x5248>
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
               	mov	rax, qword ptr  <memset+0x5258>
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
               	mov	rax, qword ptr  <memset+0x5260>
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
               	cmp	qword ptr , 0x0 <memset+0x5268>
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
               	mov	qword ptr [rsp + 0x100], rdx
               	add	ecx, edx
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x110], rcx
               	lea	rsi, [rcx + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	qword ptr [rsp + 0x108], rax
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
               	mov	r11, rsi
               	shr	r11, 0x1f
               	xor	r11, rsi
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
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x1b0], rcx
               	mov	rax, rcx
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1a0], r10
               	mov	rcx, r10
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x140], rdx
               	mov	qword ptr [rsp + 0x130], r11
               	mov	rdx, r11
               	mov	qword ptr [rsp + 0x1b8], r9
               	mov	rsi, r9
               	xor	r13d, r13d
               	jmp	 <L4>
               	nop	dword ptr [rax]
<L6>:
               	xor	r13, rsi
               	xor	qword ptr [rsp + 0x140], rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r14, rax
<L7>:
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
               	mov	r8, r9
               	je	 <L5>
<L4>:
               	movabs	r9, 0x180ec6d33cfd0aba
               	bt	r9, rdi
               	jb	 <L6>
               	mov	r9, r8
               	jmp	 <L7>
<L5>:
               	movabs	r10, -0x2a59ed990f36c6d4
               	xor	edi, edi
               	jmp	 <L8>
               	nop	dword ptr [rax]
<L10>:
               	xor	r13, rsi
               	mov	qword ptr [rsp + 0x1e0], r13
               	xor	qword ptr [rsp + 0x140], rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r14, rax
<L11>:
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
               	mov	r8, r9
               	mov	r13, qword ptr [rsp + 0x1e0]
               	je	 <L9>
<L8>:
               	bt	r10, rdi
               	jb	 <L10>
               	mov	qword ptr [rsp + 0x1e0], r13
               	mov	r9, r8
               	jmp	 <L11>
<L9>:
               	mov	qword ptr [rsp + 0x200], rbx
               	xor	edi, edi
               	movabs	rbx, 0x180ec6d33cfd0aba
               	jmp	 <L12>
               	nop	word ptr cs:[rax + rax]
<L14>:
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x1e0], r9
               	xor	qword ptr [rsp + 0x140], rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r14, rax
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
               	mov	r8, r9
               	je	 <L13>
<L12>:
               	movabs	r9, -0x56a7d9e71fc03656
               	bt	r9, rdi
               	mov	r9, qword ptr [rsp + 0x1e0]
               	jb	 <L14>
               	mov	r9, r8
               	jmp	 <L15>
<L13>:
               	xor	edi, edi
               	movabs	r9, 0x39abdc4529b1661c
               	jmp	 <L16>
               	nop	dword ptr [rax]
<L18>:
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x140], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xf8], r8
               	xor	r14, rax
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
               	mov	r8, qword ptr [rsp + 0xf8]
               	je	 <L17>
<L16>:
               	bt	r9, rdi
               	jb	 <L18>
               	mov	qword ptr [rsp + 0xf8], r8
               	jmp	 <L19>
<L17>:
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	rax, r14
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x88], rcx
               	mov	rcx, r8
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	rdx, qword ptr [rsp + 0x140]
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1c0], r8
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
               	bt	rbx, rdi
               	mov	r8, qword ptr [rsp + 0x1c0]
               	jae	 <L22>
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x1c0], r8
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	r9, rax
               	jmp	 <L22>
<L21>:
               	xor	edi, edi
               	jmp	 <L23>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r10, rdi
               	jae	 <L25>
               	mov	r8, r9
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	r8, rax
               	mov	r9, r8
               	jmp	 <L25>
<L24>:
               	xor	edi, edi
               	jmp	 <L26>
               	nop	dword ptr [rax]
<L28>:
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
               	je	 <L27>
<L26>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L28>
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	r9, rax
               	jmp	 <L28>
<L27>:
               	xor	edi, edi
               	jmp	 <L29>
               	nop	word ptr cs:[rax + rax]
<L31>:
               	mov	qword ptr [rsp + 0xf0], r9
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
               	mov	r9, qword ptr [rsp + 0xf0]
               	je	 <L30>
<L29>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L31>
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	r9, rax
               	jmp	 <L31>
<L30>:
               	mov	qword ptr [rsp + 0x198], r14
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	rax, r9
               	xor	r9d, r9d
               	mov	rcx, qword ptr [rsp + 0x88]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x8], rdx
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x80], r8
               	jmp	 <L32>
               	nop	dword ptr [rax]
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
               	bt	rbx, rdi
               	jae	 <L34>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	r9, rcx
               	xor	r14, rax
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L36>
<L35>:
               	bt	r10, rdi
               	jae	 <L37>
               	mov	r8, r14
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	r9, rcx
               	xor	r8, rax
               	mov	r14, r8
               	jmp	 <L37>
<L36>:
               	xor	edi, edi
               	jmp	 <L38>
               	nop	dword ptr [rax + rax]
<L40>:
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
               	je	 <L39>
<L38>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L40>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	r9, rcx
               	xor	r14, rax
               	jmp	 <L40>
<L39>:
               	mov	qword ptr [rsp + 0xd8], r9
               	xor	edi, edi
               	jmp	 <L41>
               	nop	word ptr cs:[rax + rax]
<L43>:
               	mov	qword ptr [rsp + 0xe8], r14
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
               	mov	r14, qword ptr [rsp + 0xe8]
               	je	 <L42>
<L41>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L43>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	r14, rax
               	jmp	 <L43>
<L42>:
               	xor	edi, edi
               	xor	r13d, r13d
               	xor	r9d, r9d
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	ebx, ebx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x80]
               	xor	r12d, r12d
               	jmp	 <L44>
               	nop	word ptr cs:[rax + rax]
<L46>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	r14, rdx
               	xor	rdx, rcx
               	xor	rsi, r14
               	xor	rcx, r8
               	rol	r14, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L45>
<L44>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L46>
               	xor	r12, rsi
               	xor	rbx, rdx
               	xor	r9, rcx
               	xor	r13, r14
               	jmp	 <L46>
<L45>:
               	xor	edi, edi
               	mov	r11, r12
               	jmp	 <L47>
               	nop	dword ptr [rax + rax]
<L49>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	r14, rdx
               	xor	rdx, rcx
               	xor	rsi, r14
               	xor	rcx, r8
               	rol	r14, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L48>
<L47>:
               	bt	r10, rdi
               	jae	 <L49>
               	xor	r11, rsi
               	xor	rbx, rdx
               	xor	r9, rcx
               	xor	r13, r14
               	jmp	 <L49>
<L48>:
               	xor	edi, edi
               	jmp	 <L50>
               	nop	dword ptr [rax + rax]
<L52>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	r14, rdx
               	xor	rdx, rcx
               	xor	rsi, r14
               	xor	rcx, r8
               	rol	r14, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L51>
<L50>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L52>
               	xor	r11, rsi
               	xor	rbx, rdx
               	xor	r9, rcx
               	xor	r13, r14
               	jmp	 <L52>
<L51>:
               	xor	edi, edi
               	jmp	 <L53>
               	nop	word ptr cs:[rax + rax]
<L55>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	r14, rdx
               	xor	rdx, rcx
               	xor	rsi, r14
               	xor	rcx, r8
               	rol	r14, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L54>
<L53>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L55>
               	xor	r11, rsi
               	xor	rbx, rdx
               	xor	r9, rcx
               	xor	r13, r14
               	jmp	 <L55>
<L54>:
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1a8], r13
               	mov	rax, r13
               	xor	r12d, r12d
               	mov	rcx, r9
               	xor	r13d, r13d
               	mov	rdx, rbx
               	mov	rsi, r11
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xa0], r10
               	jmp	 <L56>
               	nop	dword ptr [rax]
<L58>:
               	mov	r10, qword ptr [rsp + 0xa0]
               	xor	r10, rsi
               	mov	r14, r10
               	xor	r13, rdx
               	mov	r10, r13
               	xor	r12, rcx
               	mov	r13, r12
               	xor	r8, rax
<L59>:
               	mov	r12, r8
               	mov	qword ptr [rsp + 0xa0], r14
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
               	mov	r13, r10
               	je	 <L57>
<L56>:
               	movabs	r14, 0x180ec6d33cfd0aba
               	bt	r14, rdi
               	jb	 <L58>
               	mov	r14, qword ptr [rsp + 0xa0]
               	mov	r10, r13
               	mov	r13, r12
               	jmp	 <L59>
<L57>:
               	xor	edi, edi
               	movabs	r15, -0x2a59ed990f36c6d4
               	jmp	 <L60>
               	nop	word ptr cs:[rax + rax]
<L62>:
               	mov	r14, qword ptr [rsp + 0xa0]
               	xor	r14, rsi
               	xor	r13, rdx
               	mov	r10, r13
               	xor	r12, rcx
               	mov	r13, r12
               	xor	r8, rax
<L63>:
               	mov	r12, r8
               	mov	qword ptr [rsp + 0xa0], r14
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
               	mov	r13, r10
               	je	 <L61>
<L60>:
               	bt	r15, rdi
               	jb	 <L62>
               	mov	r14, qword ptr [rsp + 0xa0]
               	mov	r10, r13
               	mov	r13, r12
               	jmp	 <L63>
<L61>:
               	xor	edi, edi
               	movabs	r15, -0x56a7d9e71fc03656
               	jmp	 <L64>
               	nop	word ptr cs:[rax + rax]
<L66>:
               	mov	r10, qword ptr [rsp + 0xa0]
               	xor	r10, rsi
               	mov	r14, r10
               	xor	r13, rdx
               	mov	r10, r13
               	xor	r12, rcx
               	mov	r13, r12
               	xor	r8, rax
<L67>:
               	mov	r12, r8
               	mov	qword ptr [rsp + 0xa0], r14
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
               	mov	r13, r10
               	je	 <L65>
<L64>:
               	bt	r15, rdi
               	jb	 <L66>
               	mov	r14, qword ptr [rsp + 0xa0]
               	mov	r10, r13
               	mov	r13, r12
               	jmp	 <L67>
<L65>:
               	xor	edi, edi
               	movabs	r15, 0x39abdc4529b1661c
               	jmp	 <L68>
               	nop	dword ptr [rax + rax]
<L70>:
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
               	je	 <L69>
<L68>:
               	bt	r15, rdi
               	jae	 <L70>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	r8, rax
               	jmp	 <L70>
<L69>:
               	mov	qword ptr [rsp + 0x188], r11
               	xor	edi, edi
               	xor	r15d, r15d
               	mov	rax, r8
               	xor	r8d, r8d
               	mov	rcx, r12
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x18], rdx
               	mov	rdx, r13
               	mov	rsi, qword ptr [rsp + 0xa0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x78], r11
               	jmp	 <L71>
               	nop
<L73>:
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r8, rcx
               	mov	r11, r8
               	xor	r15, rax
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
               	mov	r8, r11
               	je	 <L72>
<L71>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, rdi
               	jb	 <L73>
               	mov	r11, r8
               	jmp	 <L74>
<L72>:
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L77>
               	mov	r8, r11
               	xor	qword ptr [rsp + 0x78], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r8, rcx
               	mov	r11, r8
               	xor	r15, rax
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
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r11, rcx
               	xor	r15, rax
               	jmp	 <L80>
<L79>:
               	xor	edi, edi
               	jmp	 <L81>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	r11, rcx
               	xor	r15, rax
               	jmp	 <L83>
<L82>:
               	xor	eax, eax
               	xor	r8d, r8d
               	mov	rcx, r15
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x70], rdx
               	mov	rdx, r11
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x38], rsi
               	mov	rsi, qword ptr [rsp + 0x18]
               	mov	rdi, qword ptr [rsp + 0x78]
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x68], r14
               	movabs	r14, 0x180ec6d33cfd0aba
               	jmp	 <L84>
               	nop	dword ptr [rax]
<L86>:
               	mov	qword ptr [rsp + 0x10], r8
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	mov	r8, qword ptr [rsp + 0x10]
               	je	 <L85>
<L84>:
               	bt	r14, rax
               	jae	 <L86>
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	r8, rcx
               	jmp	 <L86>
<L85>:
               	xor	eax, eax
               	jmp	 <L87>
               	nop	dword ptr [rax + rax]
<L89>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L88>
<L87>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rax
               	mov	r8, qword ptr [rsp + 0x10]
               	jae	 <L89>
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x10], r8
               	jmp	 <L89>
<L88>:
               	xor	eax, eax
               	jmp	 <L90>
               	nop	word ptr cs:[rax + rax]
<L92>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L91>
<L90>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rax
               	jae	 <L92>
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x10], rcx
               	jmp	 <L92>
<L91>:
               	xor	eax, eax
               	jmp	 <L93>
               	nop	dword ptr [rax]
<L95>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L94>
<L93>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rax
               	jae	 <L95>
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x10], rcx
               	jmp	 <L95>
<L94>:
               	xor	eax, eax
               	xor	r14d, r14d
               	mov	rcx, qword ptr [rsp + 0x10]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x60], rdx
               	mov	rdx, qword ptr [rsp + 0x70]
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x30], rsi
               	mov	rsi, qword ptr [rsp + 0x38]
               	mov	rdi, qword ptr [rsp + 0x68]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x58], r8
               	jmp	 <L96>
               	nop	word ptr [rax + rax]
<L98>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L97>
<L96>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rax
               	jae	 <L98>
               	xor	qword ptr [rsp + 0x58], rdi
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	r14, rcx
               	jmp	 <L98>
<L97>:
               	xor	eax, eax
               	jmp	 <L99>
               	nop	dword ptr [rax + rax]
<L101>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L100>
<L99>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rax
               	jae	 <L101>
               	xor	qword ptr [rsp + 0x58], rdi
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	r14, rcx
               	jmp	 <L101>
<L100>:
               	xor	eax, eax
               	jmp	 <L102>
               	nop	dword ptr [rax + rax]
<L104>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L103>
<L102>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rax
               	jae	 <L104>
               	xor	qword ptr [rsp + 0x58], rdi
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	r14, rcx
               	jmp	 <L104>
<L103>:
               	xor	eax, eax
               	jmp	 <L105>
               	nop	dword ptr [rax + rax]
<L107>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L106>
<L105>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rax
               	jae	 <L107>
               	xor	qword ptr [rsp + 0x58], rdi
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	r14, rcx
               	jmp	 <L107>
<L106>:
               	mov	qword ptr [rsp + 0x128], rbx
               	xor	eax, eax
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x50], rcx
               	mov	rsi, r14
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x48], rcx
               	mov	rdi, qword ptr [rsp + 0x60]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x28], rcx
               	mov	rbx, qword ptr [rsp + 0x30]
               	mov	r8, qword ptr [rsp + 0x58]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x40], rcx
               	movabs	rcx, 0x180ec6d33cfd0aba
               	jmp	 <L108>
               	nop	dword ptr [rax + rax]
<L110>:
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	xor	rdi, r8
               	xor	rsi, rbx
               	xor	rbx, rdi
               	xor	r8, rsi
               	xor	rdi, rdx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L109>
<L108>:
               	bt	rcx, rax
               	jae	 <L110>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x28], rbx
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x50], rsi
               	jmp	 <L110>
<L109>:
               	xor	eax, eax
               	movabs	rcx, -0x2a59ed990f36c6d4
               	jmp	 <L111>
               	nop	dword ptr [rax]
<L113>:
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	xor	rdi, r8
               	xor	rsi, rbx
               	xor	rbx, rdi
               	xor	r8, rsi
               	xor	rdi, rdx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L112>
<L111>:
               	bt	rcx, rax
               	jae	 <L113>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x28], rbx
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x50], rsi
               	jmp	 <L113>
<L112>:
               	xor	eax, eax
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L114>
               	nop	dword ptr [rax]
<L116>:
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	xor	rdi, r8
               	xor	rsi, rbx
               	xor	rbx, rdi
               	xor	r8, rsi
               	xor	rdi, rdx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L115>
<L114>:
               	bt	rcx, rax
               	jae	 <L116>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x28], rbx
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x50], rsi
               	jmp	 <L116>
<L115>:
               	xor	eax, eax
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L117>
               	nop	dword ptr [rax]
<L119>:
               	mov	rdx, rbx
               	shl	rdx, 0x11
               	xor	rdi, r8
               	xor	rsi, rbx
               	xor	rbx, rdi
               	xor	r8, rsi
               	xor	rdi, rdx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L118>
<L117>:
               	bt	rcx, rax
               	jae	 <L119>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x28], rbx
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x50], rsi
               	jmp	 <L119>
<L118>:
               	mov	qword ptr [rsp + 0x118], r9
               	mov	qword ptr [rsp + 0x180], r14
               	mov	qword ptr [rsp + 0x190], r15
               	xor	edx, edx
               	xor	ebx, ebx
               	mov	r14, qword ptr [rsp + 0x50]
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	mov	r15, qword ptr [rsp + 0x48]
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x90], rax
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	rax, qword ptr [rsp + 0x40]
               	xor	edi, edi
               	jmp	 <L120>
               	nop	word ptr [rax + rax]
<L122>:
               	mov	rsi, r8
               	shl	rsi, 0x11
               	xor	r15, rax
               	xor	r14, r8
               	xor	r8, r15
               	xor	rax, r14
               	xor	r15, rsi
               	rol	r14, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L121>
<L120>:
               	movabs	rsi, 0x180ec6d33cfd0aba
               	bt	rsi, rdx
               	jae	 <L122>
               	xor	rdi, rax
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x98], r15
               	xor	rbx, r14
               	jmp	 <L122>
<L121>:
               	xor	edx, edx
               	jmp	 <L123>
               	nop
<L125>:
               	mov	rsi, r8
               	shl	rsi, 0x11
               	xor	r15, rax
               	xor	r14, r8
               	xor	r8, r15
               	xor	rax, r14
               	xor	r15, rsi
               	rol	r14, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L124>
<L123>:
               	movabs	rsi, -0x2a59ed990f36c6d4
               	bt	rsi, rdx
               	jae	 <L125>
               	xor	rdi, rax
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x98], r15
               	xor	rbx, r14
               	jmp	 <L125>
<L124>:
               	xor	edx, edx
               	jmp	 <L126>
               	nop
<L128>:
               	mov	rsi, r8
               	shl	rsi, 0x11
               	xor	r15, rax
               	xor	r14, r8
               	xor	r8, r15
               	xor	rax, r14
               	xor	r15, rsi
               	rol	r14, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L127>
<L126>:
               	movabs	rsi, -0x56a7d9e71fc03656
               	bt	rsi, rdx
               	jae	 <L128>
               	xor	rdi, rax
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x98], r15
               	xor	rbx, r14
               	jmp	 <L128>
<L127>:
               	xor	edx, edx
               	jmp	 <L129>
               	nop
<L131>:
               	mov	rsi, r8
               	shl	rsi, 0x11
               	xor	r15, rax
               	xor	r14, r8
               	xor	r8, r15
               	xor	rax, r14
               	xor	r15, rsi
               	rol	r14, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L130>
<L129>:
               	movabs	rsi, 0x39abdc4529b1661c
               	bt	rsi, rdx
               	jae	 <L131>
               	xor	rdi, rax
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x98], r15
               	xor	rbx, r14
               	jmp	 <L131>
<L130>:
               	mov	rdx, rbx
               	mov	eax, 0x40
               	nop	word ptr cs:[rax + rax]
<L132>:
               	dec	rax
               	jne	 <L132>
               	mov	eax, 0x40
               	mov	rbx, qword ptr [rsp + 0x100]
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
               	vxorps	xmm10, xmm10, xmm10
               	test	ebx, ebx
               	je	 <L168>
               	movabs	rax, 0x800000000
               	add	rax, -0x8
               	mov	qword ptr [rsp + 0x208], rax
               	mov	eax, ebx
               	mov	rcx, qword ptr [rsp + 0x140]
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r15, r12
               	mov	r12, qword ptr [rsp + 0x20]
               	mov	qword ptr [rsp + 0x120], r13
               	mov	r13, qword ptr [rsp + 0x8]
               	mov	qword ptr [rsp + 0x178], r11
               	mov	r11, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x170], rdx
               	mov	r8, qword ptr [rsp + 0x118]
               	mov	qword ptr [rsp + 0x168], rdi
               	nop	word ptr cs:[rax + rax]
<L169>:
               	mov	qword ptr [rsp + 0x218], r15
               	mov	dword ptr [rsp + 0x110], eax
               	mov	qword ptr [rsp + 0x140], rcx
               	mov	qword ptr [rsp + 0x18], r11
               	mov	qword ptr [rsp + 0x118], r8
               	mov	qword ptr [rsp + 0x8], r13
               	mov	qword ptr [rsp + 0x20], r12
               	mov	rax, qword ptr [rsp + 0x130]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rdx, [rcx + 4*rcx]
               	rol	rdx, 0x7
               	lea	r15, [rax + 8*rax]
               	lea	rsi, [r12 + 4*r12]
               	rol	rsi, 0x7
               	lea	rax, [rdx + 8*rdx]
               	mov	rdx, qword ptr [rsp + 0x8]
               	lea	rdi, [rdx + 4*rdx]
               	rol	rdi, 0x7
               	lea	rdx, [rsi + 8*rsi]
               	mov	rcx, qword ptr [rsp + 0x128]
               	lea	r8, [rcx + 4*rcx]
               	rol	r8, 0x7
               	lea	rsi, [rdi + 8*rdi]
               	mov	rcx, qword ptr [rsp + 0x120]
               	lea	r9, [rcx + 4*rcx]
               	rol	r9, 0x7
               	lea	rdi, [r8 + 8*r8]
               	lea	r10, [r11 + 4*r11]
               	rol	r10, 0x7
               	lea	r8, [r9 + 8*r9]
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	r11, [rcx + 4*rcx]
               	rol	r11, 0x7
               	lea	r9, [r10 + 8*r10]
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	r14, [rcx + 4*rcx]
               	rol	r14, 0x7
               	lea	r10, [r11 + 8*r11]
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	r11, [rcx + 4*rcx]
               	rol	r11, 0x7
               	lea	r14, [r14 + 8*r14]
               	mov	rcx, qword ptr [rsp + 0x90]
               	lea	r12, [rcx + 4*rcx]
               	rol	r12, 0x7
               	lea	r11, [r11 + 8*r11]
               	lea	r12, [r12 + 8*r12]
               	vmovq	xmm0, rax
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm9, ymm0
               	vmovq	xmm0, rdx
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm7, ymm0
               	vmovq	xmm0, rsi
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm0
               	vmovq	xmm0, rdi
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm0
               	vmovq	xmm0, r8
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm2, ymm0
               	vmovq	xmm0, r9
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm3, ymm0
               	vmovq	xmm0, r10
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm8, ymm0
               	vmovq	xmm0, r14
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm4, ymm0
               	vmovq	xmm5, r11
               	vmovq	xmm0, r12
               	mov	edi, r15d
               	shr	edi, 0x8
               	mov	esi, r15d
               	shr	esi, 0x10
               	mov	eax, r15d
               	shr	eax, 0x18
               	mov	r8, r15
               	shr	r8, 0x20
               	mov	r11, r15
               	shr	r11, 0x28
               	mov	rdx, r15
               	shr	rdx, 0x30
               	mov	r12, r15
               	movzx	r9d, r15b
               	imul	r9d, r9d, 0x4f
               	shr	r9d, 0xa
               	lea	r10d, [r9 + 2*r9]
               	lea	r9d, [r9 + 4*r10]
               	sub	r15b, r9b
               	movzx	ecx, dil
               	imul	edi, ecx, 0x4f
               	shr	edi, 0xa
               	lea	r10d, [rdi + 2*rdi]
               	lea	edi, [rdi + 4*r10]
               	sub	cl, dil
               	mov	dword ptr [rsp + 0x13c], ecx
               	movzx	ecx, sil
               	imul	esi, ecx, 0x4f
               	shr	esi, 0xa
               	lea	r10d, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*r10]
               	sub	cl, sil
               	mov	dword ptr [rsp + 0x138], ecx
               	imul	esi, eax, 0x4f
               	shr	esi, 0xa
               	lea	r10d, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*r10]
               	sub	al, sil
               	movzx	esi, r8b
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	r10d, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*r10]
               	sub	r8b, sil
               	movzx	esi, r11b
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	r10d, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*r10]
               	sub	r11b, sil
               	movzx	esi, dl
               	imul	esi, esi, 0x4f
               	shr	esi, 0xa
               	lea	r10d, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*r10]
               	sub	dl, sil
               	mov	rsi, rbx
               	shr	rsi, 0x1e
               	movabs	rcx, 0x3fffffffc
               	and	rsi, rcx
               	mov	r9, qword ptr [rsp + 0x108]
               	lea	r10, [r9 + rsi]
               	vmovaps	ymmword ptr [r9 + rsi], ymm9
               	lea	rsi, [4*rbx]
               	and	rsi, rcx
               	vmovaps	ymmword ptr [rsi + r10], ymm7
               	lea	rsi, [8*rbx]
               	and	rsi, qword ptr [rsp + 0x208]
               	vmovaps	ymmword ptr [rsi + r10], ymm6
               	mov	r14d, ebx
               	mov	qword ptr [rsp + 0x210], r14
               	mov	rdi, rbx
               	lea	rcx, [r14 + 2*r14]
               	vmovaps	ymmword ptr [r10 + 4*rcx], ymm1
               	mov	rsi, r14
               	shl	rsi, 0x4
               	vmovaps	ymmword ptr [rsi + r10], ymm2
               	lea	rsi, [r14 + 4*r14]
               	vmovaps	ymmword ptr [r10 + 4*rsi], ymm3
               	vmovaps	ymmword ptr [r10 + 8*rcx], ymm8
               	lea	rcx, [r14 + 8*r14]
               	lea	rbx, [rcx + 2*rcx]
               	add	rbx, r14
               	vmovaps	ymmword ptr [r10 + rbx], ymm4
               	vpmovzxbd	ymm1, xmm5      # ymm1 = xmm5[0],zero,zero,zero,xmm5[1],zero,zero,zero,xmm5[2],zero,zero,zero,xmm5[3],zero,zero,zero,xmm5[4],zero,zero,zero,xmm5[5],zero,zero,zero,xmm5[6],zero,zero,zero,xmm5[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	mov	rbx, rdi
               	shl	rbx, 0x5
               	movabs	r13, 0x1fffffffe0
               	and	rbx, r13
               	vmovaps	ymmword ptr [rbx + r10], ymm1
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	shr	r12, 0x38
               	vmovaps	ymmword ptr [r10 + 4*rcx], ymm0
               	imul	ecx, r12d, 0x4f
               	shr	ecx, 0xa
               	lea	r10d, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*r10]
               	mov	r10, qword ptr [rsp + 0x1b8]
               	sub	r12b, cl
               	movzx	ecx, r12b
               	shl	rcx, 0x38
               	movzx	edx, dl
               	shl	rdx, 0x30
               	or	rdx, rcx
               	movzx	ecx, r11b
               	mov	r11, qword ptr [rsp + 0x130]
               	shl	rcx, 0x28
               	or	rcx, rdx
               	movzx	edx, r8b
               	shl	rdx, 0x20
               	or	rdx, rcx
               	movzx	eax, al
               	shl	eax, 0x18
               	or	rax, rdx
               	movzx	ecx, byte ptr [rsp + 0x138]
               	mov	r8, qword ptr [rsp + 0x118]
               	shl	ecx, 0x10
               	or	rcx, rax
               	movzx	eax, byte ptr [rsp + 0x13c]
               	shl	eax, 0x8
               	or	rax, rcx
               	movzx	ecx, r15b
               	mov	r15, qword ptr [rsp + 0x218]
               	or	rcx, rax
               	mov	rax, rdi
               	shr	rax, 0x20
               	lea	rdx, [r9 + 8*rsi]
               	movabs	rsi, -0x100000000
               	mov	qword ptr [rax + rdx], rcx
               	mov	rcx, qword ptr [rsp + 0x140]
               	and	rdi, rsi
               	mov	r14, rdi
               	mov	r13, qword ptr [rsp + 0x8]
               	mov	r12, qword ptr [rsp + 0x20]
               	movabs	rax, 0x800000000
               	add	r14, rax
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	xor	rdi, r10
               	mov	rdx, qword ptr [rsp + 0x1b0]
               	xor	rdx, r11
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x130], r11
               	mov	r11, qword ptr [rsp + 0x18]
               	xor	r10, rdx
               	mov	qword ptr [rsp + 0x1b8], r10
               	mov	rbx, qword ptr [rsp + 0xa0]
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x1a0], rdi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x1b0], rdx
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0xf8]
               	mov	r9, qword ptr [rsp + 0x1e0]
               	xor	rdi, r9
               	mov	rdx, qword ptr [rsp + 0x198]
               	xor	rdx, rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x140], rcx
               	xor	r9, rdx
               	mov	qword ptr [rsp + 0x1e0], r9
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xf8], rdi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x198], rdx
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	mov	r9, qword ptr [rsp + 0x88]
               	xor	r9, rdi
               	mov	rdx, qword ptr [rsp + 0xf0]
               	xor	rdx, r12
               	xor	r12, r9
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x1c0], rdi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0xf0], rdx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x88], r9
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xd8]
               	mov	rdi, qword ptr [rsp + 0x80]
               	xor	rdx, rdi
               	mov	r9, qword ptr [rsp + 0xe8]
               	xor	r9, r13
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0x8], r13
               	xor	rdi, r9
               	mov	qword ptr [rsp + 0x80], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xd8], rdx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xe8], r9
               	mov	rcx, qword ptr [rsp + 0x128]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x188]
               	xor	r8, rdx
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	xor	rdi, rcx
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x128], rcx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x188], rdx
               	xor	r8, rax
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x1a8], rdi
               	mov	rcx, qword ptr [rsp + 0x120]
               	mov	rax, rcx
               	shl	rax, 0x11
               	xor	r15, rbx
               	mov	rdx, qword ptr [rsp + 0xe0]
               	xor	rdx, rcx
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x120], rcx
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0xa0], rbx
               	xor	r15, rax
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0xe0], rdx
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x178]
               	mov	rdi, qword ptr [rsp + 0x78]
               	xor	rdx, rdi
               	mov	r10, qword ptr [rsp + 0x190]
               	xor	r10, r11
               	xor	r11, rdx
               	xor	rdi, r10
               	mov	qword ptr [rsp + 0x78], rdi
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x190], r10
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x178], rdx
               	mov	rcx, qword ptr [rsp + 0x38]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x70]
               	mov	rdi, qword ptr [rsp + 0x68]
               	xor	rdx, rdi
               	mov	r10, qword ptr [rsp + 0x10]
               	xor	r10, rcx
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0x38], rcx
               	xor	rdi, r10
               	mov	qword ptr [rsp + 0x68], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x70], rdx
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x10], r10
               	mov	rcx, qword ptr [rsp + 0x30]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rdi, qword ptr [rsp + 0x58]
               	xor	rdx, rdi
               	mov	r9, qword ptr [rsp + 0x180]
               	xor	r9, rcx
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0x30], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x60], rdx
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x48]
               	mov	r10, qword ptr [rsp + 0x40]
               	xor	rbx, r10
               	mov	rdx, qword ptr [rsp + 0x50]
               	xor	rdx, rcx
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x28], rcx
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0x48], rbx
               	mov	rax, qword ptr [rsp + 0x90]
               	mov	r13, rax
               	shl	r13, 0x11
               	mov	rbx, qword ptr [rsp + 0x98]
               	mov	rsi, qword ptr [rsp + 0x168]
               	xor	rbx, rsi
               	mov	rcx, qword ptr [rsp + 0x170]
               	xor	rcx, rax
               	xor	rax, rbx
               	mov	qword ptr [rsp + 0x90], rax
               	xor	rbx, r13
               	mov	qword ptr [rsp + 0x98], rbx
               	mov	rbx, r14
               	xor	rdi, r9
               	mov	qword ptr [rsp + 0x58], rdi
               	mov	rdi, qword ptr [rsp + 0x210]
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x180], r9
               	or	rbx, rdi
               	xor	r10, rdx
               	mov	qword ptr [rsp + 0x40], r10
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x50], rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x168], rsi
               	mov	r13, qword ptr [rsp + 0x8]
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x170], rcx
               	mov	rcx, qword ptr [rsp + 0x140]
               	mov	eax, dword ptr [rsp + 0x110]
               	add	eax, -0x8
               	jne	 <L169>
               	movabs	rax, 0x800000000
               	cmp	rbx, rax
               	mov	rbx, qword ptr [rsp + 0x100]
               	jb	 <L168>
               	mov	r12, rdi
               	shr	r14, 0x23
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
               	movabs	r15, 0x1fffffffe0
               	mov	r11, r12
               	vmovdqa	ymmword ptr [rsp + 0x1e0], ymm8
               	vmovdqa	ymmword ptr [rsp + 0x140], ymm9
               	vmovdqa	ymmword ptr [rsp + 0x1c0], ymm10
               	nop	word ptr cs:[rax + rax]
<L172>:
               	mov	r13d, r14d
               	neg	r13d
               	mov	qword ptr [rsp + 0x10], r14
               	and	r13d, r14d
               	mov	rax, r11
               	movabs	rcx, -0x100000000
               	and	rax, rcx
               	mov	qword ptr [rsp + 0x8], r13
               	shl	r13, 0x23
               	add	r13, rax
               	mov	eax, r11d
               	mov	qword ptr [rsp + 0xa0], rax
               	mov	rax, r13
               	xor	rax, r11
               	shr	rax, 0x20
               	mov	r8d, 0x1
               	jne	 <L170>
<L174>:
               	movsxd	rax, r8d
               	shl	rax, 0x5
               	add	rax, rsp
               	add	rax, 0x220
               	mov	r14, qword ptr [rsp + 0x10]
               	sub	r14d, dword ptr [rsp + 0x8]
               	je	 <L171>
               	or	r13, qword ptr [rsp + 0xa0]
               	vmovaps	ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax + 0x20], ymm0
               	mov	r11, r13
               	test	r8d, r8d
               	js	 <L172>
               	mov	edx, r8d
               	shl	rdx, 0x5
               	add	rdx, 0x20
               	lea	rdi, [rsp + 0x220]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovdqa	ymm10, ymmword ptr [rsp + 0x1c0]
               	vmovdqa	ymm9, ymmword ptr [rsp + 0x140]
               	vmovdqa	ymm8, ymmword ptr [rsp + 0x1e0]
               	vmovdqa	ymm7, ymmword ptr  <memset+0x960>
               	vmovdqa	ymm6, ymmword ptr  <memset+0x940>
               	mov	r11, r13
               	jmp	 <L172>
               	nop	dword ptr [rax + rax]
<L170>:
               	mov	rdx, r11
               	shr	rdx, 0x20
               	mov	rcx, qword ptr [rsp + 0xa0]
               	lea	rax, [rcx + 4*rcx]
               	mov	r8, qword ptr [rsp + 0x108]
               	lea	rsi, [r8 + 8*rax]
               	lea	rax, [rcx + 8*rcx]
               	lea	rdi, [rax + 2*rax]
               	add	rcx, r8
               	add	rdi, rcx
               	shl	r11, 0x5
               	and	r11, r15
               	add	r11, r8
               	lea	r9, [r8 + 4*rax]
               	mov	r10d, 0x1
               	xor	ecx, ecx
               	mov	ebx, 0x1
               	jmp	 <L173>
               	nop	word ptr [rax + rax]
<L175>:
               	mov	ebx, r8d
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
               	mov	r11, r14
               	je	 <L174>
<L173>:
               	vpmovzxbd	ymm0, qword ptr [rsi + rdx]
               	vpermd	ymm1, ymm0, ymm6
               	vpermd	ymm2, ymm0, ymm7
               	vpslld	ymm3, ymm0, 0x1c
               	vblendvps	ymm1, ymm1, ymm2, ymm3
               	vpsllvd	ymm2, ymm8, ymm0
               	mov	r14, r11
               	vmaskmovps	ymm3, ymm2, ymmword ptr [r11 + 4*rdx]
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
               	mov	r12d, ecx
               	sub	r12d, ebx
               	jl	 <L175>
               	movsxd	r11, ebx
               	lea	ecx, [r12 + 0x1]
               	and	ecx, 0x3
               	je	 <L176>
               	dec	ecx
               	mov	rax, r11
               	shl	rax, 0x5
               	add	rax, rsp
               	add	rax, 0x220
               	mov	r15d, r8d
               	sub	r15b, bl
               	inc	r15b
               	movzx	ebx, r15b
               	and	ebx, 0x3
               	shl	ebx, 0x5
               	xor	r15d, r15d
               	nop	word ptr cs:[rax + rax]
<L177>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax + r15]
               	add	r15, 0x20
               	cmp	ebx, r15d
               	jne	 <L177>
               	add	r11, rcx
               	inc	r11
               	movabs	r15, 0x1fffffffe0
<L176>:
               	cmp	r12d, 0x3
               	jb	 <L175>
               	mov	eax, r8d
               	sub	eax, r11d
               	inc	eax
               	shl	r11, 0x5
               	lea	rcx, [rsp + 0x280]
               	add	r11, rcx
<L178>:
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x60]
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x40]
               	vaddps	ymm0, ymm0, ymmword ptr [r11 - 0x20]
               	vaddps	ymm0, ymm0, ymmword ptr [r11]
               	sub	r11, -0x80
               	add	eax, -0x4
               	jne	 <L178>
               	jmp	 <L175>
<L171>:
               	vmovaps	ymm10, ymmword ptr [rax]
               	mov	rbx, qword ptr [rsp + 0x100]
<L168>:
               	vmovaps	ymmword ptr [rsp + 0xa0], ymm10
               	mov	rdi, qword ptr [rsp + 0x108]
               	vzeroupper
               	call	 <free@plt>
               	cmp	dword ptr [rsp + 0x200], 0x2a
               	jne	 <L179>
               	cmp	ebx, 0x186a0
               	jne	 <L179>
               	vmovaps	ymm1, ymmword ptr [rsp + 0xa0]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <memset+0x984>
               	jne	 <L180>
<L179>:
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
<L180>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0xa0], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0xa0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x5270>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x5250>
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
