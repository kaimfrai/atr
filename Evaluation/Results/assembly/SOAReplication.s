
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
               	call	qword ptr  <free+0x5128>
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
               	mov	rax, qword ptr  <free+0x5138>
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
               	mov	rax, qword ptr  <free+0x5140>
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
               	cmp	qword ptr , 0x0 <free+0x5148>
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
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
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
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW7SOAView__in_chrg>
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
               	call	 <initializer for module Evaluation.Dependency.RandomAccessIteratorBase>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.SOAReplication.SOAView>
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	call	 <initializer for module Meta.Auto.Simd.Fill>
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
               	sub	rsp, 0x580
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r14d, byte ptr [rcx]
               	add	r14d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
<L1>:
               	lea	esi, [r14 + 4*r14]
               	movsx	edx, dl
               	lea	r14d, [rdx + 2*rsi]
               	add	r14d, -0x30
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	mov	qword ptr [rsp + 0x150], rdx
               	mov	ecx, edx
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x120], rcx
               	lea	rsi, [rcx + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	r10, rbx
               	mov	qword ptr [rsp + 0x118], rax
               	mov	qword ptr [rsp + 0x110], r14
               	movsxd	rdx, r14d
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
               	mov	rbx, rdi
               	shr	rbx, 0x1f
               	xor	rbx, rdi
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
               	mov	qword ptr [rsp + 0x1a0], rcx
               	mov	rax, rcx
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x188], rbx
               	mov	rcx, rbx
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x140], r11
               	mov	rdx, r11
               	mov	qword ptr [rsp + 0x1a8], r9
               	mov	rsi, r9
               	xor	r12d, r12d
               	jmp	 <L4>
               	nop	dword ptr [rax + rax]
<L6>:
               	mov	r9, r8
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
               	bt	r10, rdi
               	jae	 <L6>
               	xor	r12, rsi
               	xor	rbx, rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r14, rax
               	jmp	 <L7>
<L5>:
               	movabs	r13, -0x2a59ed990f36c6d4
               	xor	edi, edi
               	jmp	 <L8>
               	nop
<L10>:
               	mov	qword ptr [rsp + 0x68], r12
               	mov	r9, r8
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
               	mov	r12, qword ptr [rsp + 0x68]
               	je	 <L9>
<L8>:
               	bt	r13, rdi
               	jae	 <L10>
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x68], r12
               	xor	rbx, rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r14, rax
               	jmp	 <L11>
<L9>:
               	xor	edi, edi
               	jmp	 <L12>
               	nop	word ptr cs:[rax + rax]
<L14>:
               	mov	r9, r8
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
               	mov	r9, qword ptr [rsp + 0x68]
               	jae	 <L14>
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x68], r9
               	xor	rbx, rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r14, rax
               	jmp	 <L15>
<L13>:
               	xor	edi, edi
               	movabs	r9, 0x39abdc4529b1661c
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
<L18>:
               	mov	qword ptr [rsp + 0x108], r8
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
               	mov	r8, qword ptr [rsp + 0x108]
               	je	 <L17>
<L16>:
               	bt	r9, rdi
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x68], rsi
               	xor	rbx, rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x108], r8
               	xor	r14, rax
               	jmp	 <L19>
<L17>:
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	rax, r14
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	rcx, r8
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x40], rdx
               	mov	rdx, rbx
               	mov	rsi, qword ptr [rsp + 0x68]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	jmp	 <L20>
               	nop
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
               	bt	r10, rdi
               	mov	r8, qword ptr [rsp + 0x60]
               	jae	 <L22>
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	r9, rax
               	jmp	 <L22>
<L21>:
               	xor	edi, edi
               	jmp	 <L23>
               	nop	dword ptr [rax]
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
               	bt	r13, rdi
               	jae	 <L25>
               	mov	r8, r9
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	r8, rax
               	mov	r9, r8
               	jmp	 <L25>
<L24>:
               	xor	edi, edi
               	jmp	 <L26>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	r9, rax
               	jmp	 <L28>
<L27>:
               	xor	edi, edi
               	jmp	 <L29>
               	nop
<L31>:
               	mov	qword ptr [rsp + 0x100], r9
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
               	mov	r9, qword ptr [rsp + 0x100]
               	je	 <L30>
<L29>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L31>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	r9, rax
               	jmp	 <L31>
<L30>:
               	mov	qword ptr [rsp + 0x180], r14
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	rax, r9
               	xor	r9d, r9d
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x38], rdx
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0x60]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa8], r8
               	jmp	 <L32>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r10, rdi
               	jae	 <L34>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
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
               	bt	r13, rdi
               	jae	 <L37>
               	mov	r8, r14
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
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
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	r9, rcx
               	xor	r14, rax
               	jmp	 <L40>
<L39>:
               	mov	qword ptr [rsp + 0xe8], r9
               	xor	edi, edi
               	jmp	 <L41>
               	nop	word ptr cs:[rax + rax]
<L43>:
               	mov	qword ptr [rsp + 0xf8], r14
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
               	mov	r14, qword ptr [rsp + 0xf8]
               	je	 <L42>
<L41>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L43>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	r14, rax
               	jmp	 <L43>
<L42>:
               	mov	qword ptr [rsp + 0x138], rbx
               	mov	r11, r10
               	xor	edi, edi
               	xor	r10d, r10d
               	xor	r9d, r9d
               	mov	rcx, qword ptr [rsp + 0xe8]
               	xor	r12d, r12d
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	ebx, ebx
               	jmp	 <L44>
               	nop	dword ptr [rax]
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
               	bt	r11, rdi
               	jae	 <L46>
               	xor	rbx, rsi
               	xor	r12, rdx
               	xor	r9, rcx
               	xor	r10, r14
               	jmp	 <L46>
<L45>:
               	xor	edi, edi
               	mov	r11, r10
               	jmp	 <L47>
               	nop
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
               	bt	r13, rdi
               	jae	 <L49>
               	xor	rbx, rsi
               	xor	r12, rdx
               	xor	r9, rcx
               	xor	r11, r14
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
               	xor	rbx, rsi
               	xor	r12, rdx
               	xor	r9, rcx
               	xor	r11, r14
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
               	xor	rbx, rsi
               	xor	r12, rdx
               	xor	r9, rcx
               	xor	r11, r14
               	jmp	 <L55>
<L54>:
               	xor	edi, edi
               	xor	r15d, r15d
               	mov	rax, r11
               	xor	r8d, r8d
               	mov	rcx, r9
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x28], rdx
               	mov	qword ptr [rsp + 0x130], r12
               	mov	rdx, r12
               	mov	rsi, rbx
               	xor	r12d, r12d
               	movabs	r10, 0x180ec6d33cfd0aba
               	jmp	 <L56>
               	nop	word ptr cs:[rax + rax]
<L58>:
               	mov	r13, r12
               	mov	r12, r8
<L59>:
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
               	je	 <L57>
<L56>:
               	bt	r10, rdi
               	jae	 <L58>
               	xor	r12, rsi
               	mov	r13, r12
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	r8, rcx
               	mov	r12, r8
               	xor	r15, rax
               	jmp	 <L59>
<L57>:
               	xor	edi, edi
               	jmp	 <L60>
               	nop
<L62>:
               	mov	r13, r12
               	mov	r12, r8
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
               	mov	r8, r12
               	mov	r12, r13
               	je	 <L61>
<L60>:
               	movabs	r13, -0x2a59ed990f36c6d4
               	bt	r13, rdi
               	jae	 <L62>
               	xor	r12, rsi
               	mov	r13, r12
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	r8, rcx
               	mov	r12, r8
               	xor	r15, rax
               	jmp	 <L63>
<L61>:
               	xor	edi, edi
               	jmp	 <L64>
               	nop	dword ptr [rax]
<L66>:
               	mov	r13, r12
               	mov	r12, r8
<L67>:
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
               	je	 <L65>
<L64>:
               	movabs	r13, -0x56a7d9e71fc03656
               	bt	r13, rdi
               	jae	 <L66>
               	xor	r12, rsi
               	mov	r13, r12
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	r8, rcx
               	mov	r12, r8
               	xor	r15, rax
               	jmp	 <L67>
<L65>:
               	xor	edi, edi
               	movabs	r10, -0x2a59ed990f36c6d4
               	movabs	r13, 0x39abdc4529b1661c
               	jmp	 <L68>
               	nop	dword ptr [rax]
<L70>:
               	mov	qword ptr [rsp + 0xf0], r8
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
               	mov	r8, qword ptr [rsp + 0xf0]
               	je	 <L69>
<L68>:
               	bt	r13, rdi
               	jae	 <L70>
               	xor	r12, rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xf0], r8
               	xor	r15, rax
               	jmp	 <L71>
<L69>:
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	rax, r15
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x58], rcx
               	mov	rcx, r8
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, r12
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
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
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L73>
<L72>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	mov	r8, qword ptr [rsp + 0x50]
               	jae	 <L74>
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r14, rax
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
               	bt	r10, rdi
               	mov	r8, qword ptr [rsp + 0x58]
               	jae	 <L77>
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x58], r8
               	xor	r14, rax
               	jmp	 <L77>
<L76>:
               	xor	edi, edi
               	jmp	 <L78>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r14, rax
               	jmp	 <L80>
<L79>:
               	xor	edi, edi
               	jmp	 <L81>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x58], rcx
               	xor	r14, rax
               	jmp	 <L83>
<L82>:
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, r14
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xa0], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0x50]
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x98], r10
               	movabs	r10, 0x180ec6d33cfd0aba
               	jmp	 <L84>
               	nop	word ptr cs:[rax + rax]
<L86>:
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
               	je	 <L85>
<L84>:
               	bt	r10, rdi
               	jae	 <L86>
               	xor	qword ptr [rsp + 0x98], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	r8, rax
               	jmp	 <L86>
<L85>:
               	xor	edi, edi
               	movabs	r10, -0x2a59ed990f36c6d4
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
               	bt	r10, rdi
               	mov	r8, qword ptr [rsp + 0xc0]
               	jae	 <L89>
               	xor	qword ptr [rsp + 0x98], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xc0], r8
               	jmp	 <L89>
<L88>:
               	xor	edi, edi
               	jmp	 <L90>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x98], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xc0], rax
               	jmp	 <L92>
<L91>:
               	xor	edi, edi
               	jmp	 <L93>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x98], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xc0], rax
               	jmp	 <L95>
<L94>:
               	xor	ecx, ecx
               	xor	r8d, r8d
               	mov	rax, qword ptr [rsp + 0xc0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x90], rdx
               	mov	rdx, qword ptr [rsp + 0xa0]
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x18], rsi
               	mov	rsi, qword ptr [rsp + 0x20]
               	mov	rdi, qword ptr [rsp + 0x98]
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x88], r10
               	movabs	r10, 0x180ec6d33cfd0aba
               	jmp	 <L96>
               	nop	dword ptr [rax]
<L98>:
               	mov	r13, r8
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
               	mov	r8, r13
               	je	 <L97>
<L96>:
               	bt	r10, rcx
               	jae	 <L98>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x18], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	r8, rax
               	jmp	 <L98>
<L97>:
               	xor	ecx, ecx
               	movabs	r10, -0x2a59ed990f36c6d4
               	jmp	 <L99>
               	nop	word ptr [rax + rax]
<L101>:
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
               	je	 <L100>
<L99>:
               	bt	r10, rcx
               	jae	 <L101>
               	mov	r8, r13
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x18], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	r8, rax
               	mov	r13, r8
               	jmp	 <L101>
<L100>:
               	xor	ecx, ecx
               	jmp	 <L102>
               	nop	dword ptr [rax]
<L104>:
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
               	je	 <L103>
<L102>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rcx
               	jae	 <L104>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x18], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	r13, rax
               	jmp	 <L104>
<L103>:
               	xor	ecx, ecx
               	jmp	 <L105>
               	nop	word ptr cs:[rax + rax]
<L107>:
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
               	je	 <L106>
<L105>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rcx
               	jae	 <L107>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x18], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	r13, rax
               	jmp	 <L107>
<L106>:
               	mov	qword ptr [rsp + 0x198], r11
               	mov	qword ptr [rsp + 0x128], rbx
               	xor	ecx, ecx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	mov	rax, r13
               	xor	ebx, ebx
               	mov	rdx, qword ptr [rsp + 0x90]
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x48], rsi
               	mov	rsi, qword ptr [rsp + 0x18]
               	mov	rdi, qword ptr [rsp + 0x88]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	jmp	 <L108>
               	nop	word ptr cs:[rax + rax]
<L110>:
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
               	je	 <L109>
<L108>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rcx
               	jae	 <L110>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	rbx, rdx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L110>
<L109>:
               	xor	ecx, ecx
               	jmp	 <L111>
               	nop
<L113>:
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
               	je	 <L112>
<L111>:
               	bt	r10, rcx
               	jae	 <L113>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	rbx, rdx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L113>
<L112>:
               	xor	ecx, ecx
               	jmp	 <L114>
               	nop	word ptr cs:[rax + rax]
<L116>:
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
               	je	 <L115>
<L114>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rcx
               	jae	 <L116>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	rbx, rdx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L116>
<L115>:
               	xor	ecx, ecx
               	jmp	 <L117>
               	nop
<L119>:
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
               	je	 <L118>
<L117>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rcx
               	jae	 <L119>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	rbx, rdx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L119>
<L118>:
               	mov	qword ptr [rsp + 0xe0], r9
               	mov	qword ptr [rsp + 0x178], r14
               	mov	qword ptr [rsp + 0x190], r15
               	mov	rdi, qword ptr [rsp + 0x118]
               	xor	ecx, ecx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd8], rax
               	mov	rax, qword ptr [rsp + 0x80]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x70], rdx
               	mov	r8, rbx
               	xor	edx, edx
               	mov	qword ptr [rsp + 0xb8], rdx
               	mov	r15, qword ptr [rsp + 0x48]
               	mov	r14, qword ptr [rsp + 0x78]
               	xor	r10d, r10d
               	jmp	 <L120>
               	nop	word ptr cs:[rax + rax]
<L122>:
               	mov	rdx, r15
               	shl	rdx, 0x11
               	xor	r8, r14
               	xor	rax, r15
               	xor	r15, r8
               	xor	r14, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L121>
<L120>:
               	movabs	rdx, 0x180ec6d33cfd0aba
               	bt	rdx, rcx
               	jae	 <L122>
               	xor	r10, r14
               	xor	qword ptr [rsp + 0xb8], r15
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L122>
<L121>:
               	xor	ecx, ecx
               	jmp	 <L123>
               	nop	word ptr cs:[rax + rax]
<L125>:
               	mov	rdx, r15
               	shl	rdx, 0x11
               	xor	r8, r14
               	xor	rax, r15
               	xor	r15, r8
               	xor	r14, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L124>
<L123>:
               	movabs	rdx, -0x2a59ed990f36c6d4
               	bt	rdx, rcx
               	jae	 <L125>
               	xor	r10, r14
               	xor	qword ptr [rsp + 0xb8], r15
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L125>
<L124>:
               	xor	ecx, ecx
               	jmp	 <L126>
               	nop	word ptr cs:[rax + rax]
<L128>:
               	mov	rdx, r15
               	shl	rdx, 0x11
               	xor	r8, r14
               	xor	rax, r15
               	xor	r15, r8
               	xor	r14, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L127>
<L126>:
               	movabs	rdx, -0x56a7d9e71fc03656
               	bt	rdx, rcx
               	jae	 <L128>
               	xor	r10, r14
               	xor	qword ptr [rsp + 0xb8], r15
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L128>
<L127>:
               	xor	ecx, ecx
               	jmp	 <L129>
               	nop	word ptr cs:[rax + rax]
<L131>:
               	mov	rdx, r15
               	shl	rdx, 0x11
               	xor	r8, r14
               	xor	rax, r15
               	xor	r15, r8
               	xor	r14, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L130>
<L129>:
               	movabs	rdx, 0x39abdc4529b1661c
               	bt	rdx, rcx
               	jae	 <L131>
               	xor	r10, r14
               	xor	qword ptr [rsp + 0xb8], r15
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L131>
<L130>:
               	mov	eax, 0x40
               	nop	word ptr cs:[rax + rax]
<L132>:
               	dec	rax
               	jne	 <L132>
               	mov	eax, 0x40
               	mov	r14, qword ptr [rsp + 0x110]
               	mov	rcx, qword ptr [rsp + 0x150]
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
               	test	ecx, ecx
               	je	 <L168>
               	movabs	rax, 0x800000000
               	add	rax, -0x8
               	mov	qword ptr [rsp + 0x1b0], rax
               	mov	rsi, qword ptr [rsp + 0x120]
               	mov	qword ptr [rsp + 0x170], r12
               	mov	r12, qword ptr [rsp + 0x40]
               	mov	rdi, qword ptr [rsp + 0x38]
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	r14, qword ptr [rsp + 0x20]
               	mov	qword ptr [rsp + 0x158], r13
               	mov	r13, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x168], rbx
               	mov	rbx, qword ptr [rsp + 0x128]
               	mov	rax, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x160], r10
               	nop
<L169>:
               	mov	qword ptr [rsp + 0x70], rax
               	mov	dword ptr [rsp + 0x120], ecx
               	mov	qword ptr [rsp + 0x18], r13
               	mov	qword ptr [rsp + 0x20], r14
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	qword ptr [rsp + 0x28], r8
               	mov	qword ptr [rsp + 0x128], rbx
               	mov	qword ptr [rsp + 0x38], rdi
               	mov	qword ptr [rsp + 0x40], r12
               	mov	rax, qword ptr [rsp + 0x140]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rbx, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x138]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdi + 4*rdi]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rdi, qword ptr [rsp + 0x130]
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r10, [r8 + 4*r8]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	mov	r8, qword ptr [rsp + 0x30]
               	lea	r11, [r8 + 4*r8]
               	rol	r11, 0x7
               	lea	r8, [r11 + 8*r11]
               	lea	r11, [r14 + 4*r14]
               	rol	r11, 0x7
               	lea	r14, [r11 + 8*r11]
               	lea	r11, [4*r13]
               	add	r11, r13
               	rol	r11, 0x7
               	lea	r15, [r11 + 8*r11]
               	mov	r11, qword ptr [rsp + 0x48]
               	lea	r11, [r11 + 4*r11]
               	rol	r11, 0x7
               	lea	r12, [r11 + 8*r11]
               	mov	r11, qword ptr [rsp + 0xb8]
               	lea	r11, [r11 + 4*r11]
               	rol	r11, 0x7
               	lea	r11, [r11 + 8*r11]
               	vmovq	xmm0, rax
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm0
               	vmovq	xmm0, rcx
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm2, ymm0
               	vmovq	xmm0, rdx
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm3, ymm0
               	vmovq	xmm0, rdi
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm4, ymm0
               	vmovq	xmm0, r10
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm5, ymm0
               	vmovq	xmm0, r8
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm0
               	vmovq	xmm0, r14
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm9, ymm0
               	vmovq	xmm0, r15
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm7, ymm0
               	vmovq	xmm8, r12
               	vmovq	xmm0, r11
               	mov	edx, ebx
               	shr	edx, 0x8
               	mov	eax, ebx
               	shr	eax, 0x10
               	mov	ecx, ebx
               	shr	ecx, 0x18
               	mov	r8d, ecx
               	mov	r15, rbx
               	shr	r15, 0x20
               	mov	r12, rbx
               	shr	r12, 0x28
               	mov	r10, rbx
               	shr	r10, 0x30
               	mov	rcx, rbx
               	movzx	edi, bl
               	imul	edi, edi, 0x4f
               	shr	edi, 0xa
               	lea	r11d, [rdi + 2*rdi]
               	lea	edi, [rdi + 4*r11]
               	sub	bl, dil
               	movzx	edi, dl
               	imul	edx, edi, 0x4f
               	mov	r11d, edi
               	shr	edx, 0xa
               	lea	edi, [rdx + 2*rdx]
               	lea	edx, [rdx + 4*rdi]
               	sub	r11b, dl
               	mov	dword ptr [rsp + 0xe0], r11d
               	movzx	edx, al
               	imul	eax, edx, 0x4f
               	shr	eax, 0xa
               	lea	edi, [rax + 2*rax]
               	lea	eax, [rax + 4*rdi]
               	sub	dl, al
               	mov	dword ptr [rsp + 0x14c], edx
               	imul	eax, r8d, 0x4f
               	shr	eax, 0xa
               	lea	edi, [rax + 2*rax]
               	lea	eax, [rax + 4*rdi]
               	sub	r8b, al
               	mov	dword ptr [rsp + 0x148], r8d
               	movzx	eax, r15b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	edi, [rax + 2*rax]
               	lea	eax, [rax + 4*rdi]
               	sub	r15b, al
               	movzx	eax, r12b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	edi, [rax + 2*rax]
               	lea	eax, [rax + 4*rdi]
               	sub	r12b, al
               	movzx	eax, r10b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	edi, [rax + 2*rax]
               	lea	eax, [rax + 4*rdi]
               	sub	r10b, al
               	lea	rdi, [4*rsi]
               	mov	rdx, r9
               	lea	r9, [8*rsi]
               	mov	r14d, esi
               	mov	r11, rsi
               	shr	r11, 0x1e
               	movabs	r8, 0x3fffffffc
               	and	r11, r8
               	mov	rax, qword ptr [rsp + 0x118]
               	vmovaps	ymmword ptr [rax + r11], ymm1
               	add	r11, rax
               	and	rdi, r8
               	vmovaps	ymmword ptr [rdi + r11], ymm2
               	and	r9, qword ptr [rsp + 0x1b0]
               	vmovaps	ymmword ptr [r9 + r11], ymm3
               	mov	r8, r14
               	lea	r9, [r14 + 2*r14]
               	vmovaps	ymmword ptr [r11 + 4*r9], ymm4
               	mov	rdi, r14
               	shl	rdi, 0x4
               	vmovaps	ymmword ptr [rdi + r11], ymm5
               	lea	rdi, [r14 + 4*r14]
               	vmovaps	ymmword ptr [r11 + 4*rdi], ymm6
               	vmovaps	ymmword ptr [r11 + 8*r9], ymm9
               	lea	r9, [r14 + 8*r14]
               	mov	qword ptr [rsp + 0x1b8], r14
               	mov	r8, rsi
               	lea	rsi, [r9 + 2*r9]
               	add	rsi, r14
               	vmovaps	ymmword ptr [r11 + rsi], ymm7
               	vpmovzxbd	ymm1, xmm8      # ymm1 = xmm8[0],zero,zero,zero,xmm8[1],zero,zero,zero,xmm8[2],zero,zero,zero,xmm8[3],zero,zero,zero,xmm8[4],zero,zero,zero,xmm8[5],zero,zero,zero,xmm8[6],zero,zero,zero,xmm8[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	mov	rsi, r8
               	shl	rsi, 0x5
               	movabs	r13, 0x1fffffffe0
               	and	rsi, r13
               	vmovaps	ymmword ptr [rsi + r11], ymm1
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	shr	rcx, 0x38
               	vmovaps	ymmword ptr [r11 + 4*r9], ymm0
               	mov	r11, qword ptr [rsp + 0x140]
               	imul	esi, ecx, 0x4f
               	shr	esi, 0xa
               	lea	r9d, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*r9]
               	mov	r9, rdx
               	sub	cl, sil
               	movzx	ecx, cl
               	shl	rcx, 0x38
               	movzx	esi, r10b
               	mov	r10, qword ptr [rsp + 0x1a8]
               	shl	rsi, 0x30
               	or	rsi, rcx
               	movzx	ecx, r12b
               	shl	rcx, 0x28
               	or	rcx, rsi
               	movzx	esi, r15b
               	mov	r14, qword ptr [rsp + 0x28]
               	shl	rsi, 0x20
               	or	rsi, rcx
               	movzx	ecx, byte ptr [rsp + 0x148]
               	shl	ecx, 0x18
               	or	rcx, rsi
               	movzx	edx, byte ptr [rsp + 0x14c]
               	mov	r13, qword ptr [rsp + 0x20]
               	shl	edx, 0x10
               	or	rdx, rcx
               	movzx	ecx, byte ptr [rsp + 0xe0]
               	shl	ecx, 0x8
               	or	rcx, rdx
               	movzx	edx, bl
               	mov	rbx, qword ptr [rsp + 0x128]
               	or	rdx, rcx
               	mov	rcx, r8
               	shr	rcx, 0x20
               	lea	rsi, [rax + 8*rdi]
               	mov	rdi, qword ptr [rsp + 0x38]
               	mov	r12, qword ptr [rsp + 0x40]
               	mov	qword ptr [rcx + rsi], rdx
               	mov	r15, r8
               	movabs	rcx, -0x100000000
               	and	r15, rcx
               	mov	rcx, r11
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x188]
               	xor	rsi, r10
               	mov	rax, qword ptr [rsp + 0x1a0]
               	xor	rax, r11
               	xor	r11, rsi
               	mov	qword ptr [rsp + 0x140], r11
               	mov	rdx, qword ptr [rsp + 0x30]
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x1a8], r10
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x188], rsi
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x1a0], rax
               	mov	r8, qword ptr [rsp + 0x138]
               	mov	rcx, r8
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x108]
               	mov	r10, qword ptr [rsp + 0x68]
               	xor	rsi, r10
               	mov	rax, qword ptr [rsp + 0x180]
               	xor	rax, r8
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x138], r8
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x68], r10
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x108], rsi
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x180], rax
               	mov	rcx, r12
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x60]
               	mov	r8, qword ptr [rsp + 0xb0]
               	xor	r8, rsi
               	mov	rax, qword ptr [rsp + 0x100]
               	xor	rax, r12
               	xor	r12, r8
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x60], rsi
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x100], rax
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xb0], r8
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0xe8]
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	rax, rsi
               	mov	r8, qword ptr [rsp + 0xf8]
               	xor	r8, rdi
               	xor	rdi, rax
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0xa8], rsi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xe8], rax
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0xf8], r8
               	mov	rsi, qword ptr [rsp + 0x130]
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	xor	r9, rbx
               	mov	rax, qword ptr [rsp + 0x198]
               	xor	rax, rsi
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x130], rsi
               	xor	rbx, rax
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0xe0], r9
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x198], rax
               	mov	rcx, r14
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x170]
               	mov	r8, qword ptr [rsp + 0xf0]
               	xor	r8, rsi
               	mov	rax, qword ptr [rsp + 0x190]
               	xor	rax, r14
               	xor	r14, r8
               	mov	qword ptr [rsp + 0x28], r14
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x170], rsi
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xf0], r8
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x190], rax
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0x50]
               	xor	rax, rsi
               	mov	r8, qword ptr [rsp + 0x178]
               	xor	r8, rdx
               	xor	rdx, rax
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x50], rsi
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x178], r8
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x58], rax
               	mov	rcx, r13
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0xa0]
               	mov	rsi, qword ptr [rsp + 0x98]
               	xor	rax, rsi
               	mov	r8, qword ptr [rsp + 0xc0]
               	xor	r8, r13
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x20], r13
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x98], rsi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xa0], rax
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0xc0], r8
               	mov	rsi, qword ptr [rsp + 0x18]
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0x90]
               	mov	r10, qword ptr [rsp + 0x88]
               	xor	rax, r10
               	mov	r9, qword ptr [rsp + 0x158]
               	xor	r9, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x18], rsi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x90], rax
               	mov	rsi, qword ptr [rsp + 0x48]
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0x168]
               	mov	r11, qword ptr [rsp + 0x78]
               	xor	rax, r11
               	mov	r13, qword ptr [rsp + 0x80]
               	xor	r13, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x48], rsi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x168], rax
               	mov	rax, qword ptr [rsp + 0x70]
               	mov	rsi, qword ptr [rsp + 0xb8]
               	mov	rcx, rsi
               	shl	rcx, 0x11
               	mov	r8, qword ptr [rsp + 0x160]
               	xor	rax, r8
               	mov	r14, qword ptr [rsp + 0xd8]
               	xor	r14, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xb8], rsi
               	xor	rax, rcx
               	movabs	rcx, 0x800000000
               	lea	rsi, [r15 + rcx]
               	mov	ecx, dword ptr [rsp + 0x120]
               	xor	r10, r9
               	mov	qword ptr [rsp + 0x88], r10
               	mov	r10, qword ptr [rsp + 0x1b8]
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x158], r9
               	mov	r9, qword ptr [rsp + 0xe0]
               	or	rsi, r10
               	xor	r11, r13
               	mov	qword ptr [rsp + 0x78], r11
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x80], r13
               	mov	r13, qword ptr [rsp + 0x18]
               	xor	r8, r14
               	mov	qword ptr [rsp + 0x160], r8
               	mov	r8, qword ptr [rsp + 0x28]
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0xd8], r14
               	mov	r14, qword ptr [rsp + 0x20]
               	add	ecx, -0x8
               	jne	 <L169>
               	mov	rax, r15
               	movabs	r15, 0x800000000
               	movabs	r13, 0x1fffffffe0
               	movabs	r12, -0x100000000
               	shr	rsi, 0x20
               	mov	r14, qword ptr [rsp + 0x110]
               	mov	rdi, qword ptr [rsp + 0x118]
               	je	 <L168>
               	mov	r8, r10
               	mov	esi, 0x1
               	xor	r9d, r9d
               	vpbroadcastd	ymm0, dword ptr  <free+0x8e4>
               	vpbroadcastd	ymm1, dword ptr  <free+0x8e8>
               	vpbroadcastd	ymm2, dword ptr  <free+0x8f0>
               	vbroadcastss	ymm3, dword ptr  <free+0x8e0>
               	vmovdqa	ymm4, ymmword ptr  <free+0x900>
               	vmovdqa	ymm5, ymmword ptr  <free+0x920>
               	vpbroadcastb	xmm6, byte ptr  <free+0x940>
               	mov	r11d, 0x1
               	mov	r14, rax
               	jmp	 <L170>
               	nop	dword ptr [rax + rax]
<L172>:
               	and	r8, r12
               	lea	r10, [r8 + rbx]
               	or	r10, rax
               	inc	esi
               	popcnt	r11d, esi
               	mov	r9d, ecx
               	cmp	r8, r14
               	mov	r8, r10
               	je	 <L171>
<L170>:
               	mov	ecx, r11d
               	mov	r10, r8
               	shr	r10, 0x20
               	mov	eax, r8d
               	lea	r11, [rax + 4*rax]
               	lea	r11, [rdi + 8*r11]
               	vmovq	xmm7, qword ptr [r10 + r11]
               	vpmovzxbd	ymm8, xmm7      # ymm8 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
               	vpmovsxbd	ymm9, xmm7
               	lea	r10, [rax + 8*rax]
               	lea	r11, [r10 + 2*r10]
               	add	r11, rdi
               	add	r11, rax
               	mov	rbx, r8
               	shr	rbx, 0x1e
               	movabs	rdx, 0x3fffffffc
               	and	rbx, rdx
               	vmovaps	ymm10, ymmword ptr [rbx + r11]
               	mov	r11, r8
               	shl	r11, 0x5
               	and	r11, r13
               	add	r11, rdi
               	vmovaps	ymm11, ymmword ptr [rbx + r11]
               	lea	r10, [rdi + 4*r10]
               	vmovaps	ymm12, ymmword ptr [rbx + r10]
               	vpsllvd	ymm13, ymm0, ymm8
               	vblendvps	ymm11, ymm11, ymm10, ymm13
               	vpsllvd	ymm13, ymm1, ymm8
               	vblendvps	ymm12, ymm12, ymm10, ymm13
               	vpsllvd	ymm8, ymm2, ymm8
               	vblendvps	ymm8, ymm12, ymm3, ymm8
               	vpermd	ymm12, ymm9, ymm4
               	vpermd	ymm9, ymm9, ymm5
               	vpcmpgtb	xmm7, xmm7, xmm6
               	vpmovsxbd	ymm7, xmm7
               	vblendvps	ymm7, ymm12, ymm9, ymm7
               	vmulps	ymm9, ymm11, ymm10
               	vmulps	ymm8, ymm9, ymm8
               	vmulps	ymm7, ymm8, ymm7
               	movsxd	r10, r9d
               	mov	r11, r10
               	shl	r11, 0x5
               	vmovaps	ymmword ptr [rsp + r11 + 0x1c0], ymm7
               	sub	r10d, ecx
               	mov	rbx, r15
               	jb	 <L172>
               	mov	r9d, r9d
               	mov	r11, r9
               	shl	r11, 0x5
               	vmovaps	ymm7, ymmword ptr [rsp + r11 + 0x1c0]
               	inc	r10d
               	and	r10d, 0x3
               	je	 <L173>
               	lea	rbx, [rsp + 0x1a0]
               	add	r11, rbx
               	xor	ebx, ebx
               	nop	dword ptr [rax]
<L174>:
               	vaddps	ymm7, ymm7, ymmword ptr [r11]
               	vmovaps	ymmword ptr [r11], ymm7
               	inc	rbx
               	add	r11, -0x20
               	cmp	r10, rbx
               	jne	 <L174>
               	mov	r10, r9
               	sub	r10, rbx
               	mov	rbx, r15
               	mov	r11d, ecx
               	sub	r9, r11
               	cmp	r9, 0x3
               	jb	 <L172>
               	jmp	 <L175>
<L173>:
               	mov	r10, r9
               	mov	r11d, ecx
               	sub	r9, r11
               	cmp	r9, 0x3
               	jb	 <L172>
<L175>:
               	mov	r9, r10
               	shl	r9, 0x5
               	lea	rdx, [rsp + 0x1a0]
               	add	r9, rdx
               	inc	r10
               	nop	dword ptr [rax]
<L176>:
               	vaddps	ymm7, ymm7, ymmword ptr [r9]
               	vmovaps	ymmword ptr [r9], ymm7
               	vaddps	ymm7, ymm7, ymmword ptr [r9 - 0x20]
               	vmovaps	ymmword ptr [r9 - 0x20], ymm7
               	vaddps	ymm7, ymm7, ymmword ptr [r9 - 0x40]
               	vmovaps	ymmword ptr [r9 - 0x40], ymm7
               	vaddps	ymm7, ymm7, ymmword ptr [r9 - 0x60]
               	vmovaps	ymmword ptr [r9 - 0x60], ymm7
               	add	r9, -0x80
               	add	r10, -0x4
               	cmp	r10, r11
               	jg	 <L176>
               	jmp	 <L172>
<L171>:
               	cmp	ecx, 0x2
               	mov	r14, qword ptr [rsp + 0x110]
               	jb	 <L168>
               	mov	eax, ecx
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x1a0]
               	test	cl, 0x1
               	jne	 <L177>
               	dec	rax
               	lea	rsi, [rsp + 0x1c0]
               	vaddps	ymm0, ymm0, ymmword ptr [rdx + rsi - 0x40]
               	vmovaps	ymmword ptr [rdx + rsi - 0x40], ymm0
<L177>:
               	cmp	ecx, 0x2
               	je	 <L168>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	lea	rdx, [rsp + 0x1c0]
               	add	rax, rdx
               	add	rax, -0x40
               	nop	word ptr [rax + rax]
<L178>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L178>
<L168>:
               	vmovaps	xmm0, xmmword ptr [rsp + 0x1d0]
               	vaddps	xmm0, xmm0, xmmword ptr [rsp + 0x1c0]
               	vmovaps	xmmword ptr [rsp + 0xc0], xmm0
               	vzeroupper
               	call	 <free@plt>
               	cmp	r14d, 0x2a
               	jne	 <L179>
               	cmp	dword ptr [rsp + 0x150], 0x186a0
               	jne	 <L179>
               	vmovaps	xmm1, xmmword ptr [rsp + 0xc0]
               	vshufps	xmm0, xmm1, xmm1, 0xd7  # xmm0 = xmm1[3,1,1,3]
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <free+0x8ec>
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
               	ret
<L180>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0xc0], xmm0
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0xc0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <free+0x5150>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <free+0x5130>
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
