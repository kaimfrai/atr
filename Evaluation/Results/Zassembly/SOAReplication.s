
build/ZEvaluation/bin/SOAReplication:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x3d48>
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
               	mov	rax, qword ptr  <memset+0x3d58>
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
               	mov	rax, qword ptr  <memset+0x3d60>
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
               	cmp	qword ptr , 0x0 <memset+0x3d68>
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

<initializer for module Evaluation.Dependency.RandomAccessIteratorBase>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW24RandomAccessIteratorBase__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW24RandomAccessIteratorBase__in_chrg>
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
               	call	 <initializer for module Std>
               	call	 <initializer for module Meta.Auto.Simd.Fill>
               	call	 <initializer for module Meta.Auto.Simd.Int32>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	sub	rsp, 0x4a0
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r13d, byte ptr [rcx]
               	add	r13d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
<L1>:
               	lea	esi, [r13 + 4*r13]
               	movsx	edx, dl
               	lea	r13d, [rdx + 2*rsi]
               	add	r13d, -0x30
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
               	nop
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
               	mov	eax, r15d
               	and	eax, 0x1f
               	mov	r12d, 0x20
               	sub	r12d, eax
               	test	eax, eax
               	cmove	r12d, eax
               	add	r12d, r15d
               	lea	rax, [r12 + 4*r12]
               	lea	r14, [r12 + 8*rax]
               	mov	edi, 0x20
               	mov	rsi, r14
               	call	 <aligned_alloc@plt>
               	mov	r11, rax
               	test	r12d, r12d
               	mov	qword ptr [rsp + 0x8], rax
               	je	 <L4>
               	mov	rdi, r11
               	xor	esi, esi
               	mov	rdx, r14
               	call	 <memset@plt>
               	mov	r11, qword ptr [rsp + 0x8]
<L4>:
               	movsxd	rdx, r13d
               	movabs	rcx, -0x61c8864680b583eb
               	add	rcx, rdx
               	mov	rax, rdx
               	shr	rax, 0x1e
               	xor	rax, rdx
               	movabs	rsi, -0x40a7b892e31b1a47
               	imul	rax, rsi
               	mov	r8, rax
               	shr	r8, 0x1b
               	xor	r8, rax
               	movabs	rdi, -0x6b2fb644ecceee15
               	imul	r8, rdi
               	mov	rbx, r8
               	shr	rbx, 0x1f
               	xor	rbx, r8
               	movabs	r8, 0x3c6ef372fe94f82a
               	add	r8, rdx
               	mov	r9, rcx
               	shr	r9, 0x1e
               	xor	r9, rcx
               	imul	r9, rsi
               	mov	r10, r9
               	shr	r10, 0x1b
               	xor	r10, r9
               	imul	r10, rdi
               	mov	rcx, r10
               	shr	rcx, 0x1f
               	xor	rcx, r10
               	movabs	r9, -0x255992d382208bc1
               	add	r9, rdx
               	mov	rdx, r8
               	shr	rdx, 0x1e
               	xor	rdx, r8
               	imul	rdx, rsi
               	mov	r8, rdx
               	shr	r8, 0x1b
               	xor	r8, rdx
               	imul	r8, rdi
               	mov	rdx, r8
               	shr	rdx, 0x1f
               	xor	rdx, r8
               	mov	r8, r9
               	shr	r8, 0x1e
               	xor	r8, r9
               	imul	r8, rsi
               	mov	r9, r8
               	shr	r9, 0x1b
               	xor	r9, r8
               	imul	r9, rdi
               	mov	rsi, r9
               	shr	rsi, 0x1f
               	xor	rsi, r9
               	mov	edi, 0x40
<L5>:
               	dec	rdi
               	jne	 <L5>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L6>:
               	dec	rdi
               	jne	 <L6>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L7>:
               	dec	rdi
               	jne	 <L7>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L8>:
               	dec	rdi
               	jne	 <L8>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L9>:
               	dec	rdi
               	jne	 <L9>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L10>:
               	dec	rdi
               	jne	 <L10>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L11>:
               	dec	rdi
               	jne	 <L11>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L12>:
               	dec	rdi
               	jne	 <L12>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L13>:
               	dec	rdi
               	jne	 <L13>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L14>:
               	dec	rdi
               	jne	 <L14>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L15>:
               	dec	rdi
               	jne	 <L15>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L16>:
               	dec	rdi
               	jne	 <L16>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L17>:
               	dec	rdi
               	jne	 <L17>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L18>:
               	dec	rdi
               	jne	 <L18>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L19>:
               	dec	rdi
               	jne	 <L19>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L20>:
               	dec	rdi
               	jne	 <L20>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L21>:
               	dec	rdi
               	jne	 <L21>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L22>:
               	dec	rdi
               	jne	 <L22>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L23>:
               	dec	rdi
               	jne	 <L23>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L24>:
               	dec	rdi
               	jne	 <L24>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L25>:
               	dec	rdi
               	jne	 <L25>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L26>:
               	dec	rdi
               	jne	 <L26>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L27>:
               	dec	rdi
               	jne	 <L27>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L28>:
               	dec	rdi
               	jne	 <L28>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L29>:
               	dec	rdi
               	jne	 <L29>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L30>:
               	dec	rdi
               	jne	 <L30>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L31>:
               	dec	rdi
               	jne	 <L31>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L32>:
               	dec	rdi
               	jne	 <L32>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L33>:
               	dec	rdi
               	jne	 <L33>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L34>:
               	dec	rdi
               	jne	 <L34>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L35>:
               	dec	rdi
               	jne	 <L35>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L36>:
               	dec	rdi
               	jne	 <L36>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L37>:
               	dec	rdi
               	jne	 <L37>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L38>:
               	dec	rdi
               	jne	 <L38>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L39>:
               	dec	rdi
               	jne	 <L39>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L40>:
               	dec	rdi
               	jne	 <L40>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L41>:
               	dec	rdi
               	jne	 <L41>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L42>:
               	dec	rdi
               	jne	 <L42>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L43>:
               	dec	rdi
               	jne	 <L43>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L44>:
               	dec	rdi
               	jne	 <L44>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L45>:
               	dec	rdi
               	jne	 <L45>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L46>:
               	dec	rdi
               	jne	 <L46>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L47>:
               	dec	rdi
               	jne	 <L47>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L48>:
               	dec	rdi
               	jne	 <L48>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L49>:
               	dec	rdi
               	jne	 <L49>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L50>:
               	dec	rdi
               	jne	 <L50>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L51>:
               	dec	rdi
               	jne	 <L51>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L52>:
               	dec	rdi
               	jne	 <L52>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L53>:
               	dec	rdi
               	jne	 <L53>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L54>:
               	dec	rdi
               	jne	 <L54>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L55>:
               	dec	rdi
               	jne	 <L55>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L56>:
               	dec	rdi
               	jne	 <L56>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L57>:
               	dec	rdi
               	jne	 <L57>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L58>:
               	dec	rdi
               	jne	 <L58>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L59>:
               	dec	rdi
               	jne	 <L59>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L60>:
               	dec	rdi
               	jne	 <L60>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L61>:
               	dec	rdi
               	jne	 <L61>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L62>:
               	dec	rdi
               	jne	 <L62>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L63>:
               	dec	rdi
               	jne	 <L63>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L64>:
               	dec	rdi
               	jne	 <L64>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L65>:
               	dec	rdi
               	jne	 <L65>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L66>:
               	dec	rdi
               	jne	 <L66>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L67>:
               	dec	rdi
               	jne	 <L67>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L68>:
               	dec	rdi
               	jne	 <L68>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L69>:
               	dec	rdi
               	jne	 <L69>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L70>:
               	dec	rdi
               	jne	 <L70>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L71>:
               	dec	rdi
               	jne	 <L71>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L72>:
               	dec	rdi
               	jne	 <L72>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L73>:
               	dec	rdi
               	jne	 <L73>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L74>:
               	dec	rdi
               	jne	 <L74>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L75>:
               	dec	rdi
               	jne	 <L75>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L76>:
               	dec	rdi
               	jne	 <L76>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L77>:
               	dec	rdi
               	jne	 <L77>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L78>:
               	dec	rdi
               	jne	 <L78>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L79>:
               	dec	rdi
               	jne	 <L79>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L80>:
               	dec	rdi
               	jne	 <L80>
               	movabs	r13, -0x100000000
               	test	r15d, r15d
               	je	 <L81>
               	nop	dword ptr [rax + rax]
<L82>:
               	mov	qword ptr [rsp + 0x10], rcx
               	mov	qword ptr [rsp], r15
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	lea	r8, [rdi + 8*rdi]
               	mov	r11d, r8d
               	shr	r11d, 0x8
               	mov	r15, rbx
               	mov	ebx, r8d
               	shr	ebx, 0x10
               	mov	r9d, r8d
               	shr	r9d, 0x18
               	mov	r10, r8
               	shr	r10, 0x20
               	mov	r14, r8
               	shr	r14, 0x28
               	mov	r13, r8
               	shr	r13, 0x30
               	mov	rdi, r8
               	shr	rdi, 0x38
               	movzx	eax, r8b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	r8b, al
               	movzx	r11d, r11b
               	imul	eax, r11d, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	r11b, al
               	movzx	ebx, bl
               	imul	eax, ebx, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	bl, al
               	imul	eax, r9d, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	r9b, al
               	movzx	eax, r10b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	r10b, al
               	movzx	eax, r14b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	r14b, al
               	movzx	eax, r13b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	r13b, al
               	imul	eax, edi, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	dil, al
               	movzx	eax, dil
               	shl	rax, 0x38
               	movzx	ecx, r13b
               	movabs	r13, -0x100000000
               	shl	rcx, 0x30
               	or	rcx, rax
               	movzx	eax, r14b
               	shl	rax, 0x28
               	or	rax, rcx
               	movzx	ecx, r10b
               	shl	rcx, 0x20
               	or	rcx, rax
               	movzx	eax, r9b
               	shl	eax, 0x18
               	or	rax, rcx
               	movzx	ecx, bl
               	mov	rbx, r15
               	mov	r15, qword ptr [rsp]
               	shl	ecx, 0x10
               	or	rcx, rax
               	movzx	eax, r11b
               	mov	r11, qword ptr [rsp + 0x8]
               	shl	eax, 0x8
               	or	rax, rcx
               	movzx	ecx, r8b
               	or	rcx, rax
               	mov	rax, r12
               	shr	rax, 0x20
               	mov	edi, r12d
               	lea	r8, [rdi + 4*rdi]
               	lea	r8, [r11 + 8*r8]
               	mov	qword ptr [rax + r8], rcx
               	mov	rcx, qword ptr [rsp + 0x10]
               	and	r12, r13
               	add	r12, rdi
               	mov	rax, rcx
               	shl	rax, 0x11
               	xor	rdx, rbx
               	xor	rsi, rcx
               	xor	rcx, rdx
               	xor	rdx, rax
               	movabs	rax, 0x800000000
               	add	r12, rax
               	xor	rbx, rsi
               	rol	rsi, 0x2d
               	add	r15d, -0x8
               	jne	 <L82>
<L81>:
               	mov	r14, r12
               	shr	r14, 0x20
               	vxorps	xmm0, xmm0, xmm0
               	cmp	r14d, 0x8
               	jb	 <L83>
               	mov	ebx, r12d
               	shr	r14d, 0x3
               	lea	rdi, [rsp + 0x80]
               	mov	edx, 0x400
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovdqa	ymm6, ymmword ptr  <memset+0x880>
               	vmovdqa	ymm7, ymmword ptr  <memset+0x8a0>
               	vpbroadcastd	ymm8, dword ptr  <memset+0x8c0>
               	vpbroadcastd	ymm9, dword ptr  <memset+0x8c8>
               	vpbroadcastd	ymm10, dword ptr  <memset+0x8c4>
               	mov	r15, r14
               	vmovdqa	ymmword ptr [rsp + 0x60], ymm8
               	vmovdqa	ymmword ptr [rsp + 0x40], ymm9
               	vmovdqa	ymmword ptr [rsp + 0x20], ymm10
<L86>:
               	mov	r14d, r15d
               	neg	r14d
               	mov	qword ptr [rsp + 0x10], r15
               	and	r14d, r15d
               	mov	rax, rbx
               	and	rax, r13
               	mov	qword ptr [rsp + 0x18], r14
               	shl	r14, 0x23
               	add	r14, rax
               	mov	eax, ebx
               	mov	qword ptr [rsp], rax
               	mov	rax, r14
               	xor	rax, rbx
               	shr	rax, 0x20
               	mov	r9d, 0x1
               	jne	 <L84>
<L88>:
               	movsxd	rax, r9d
               	shl	rax, 0x5
               	add	rax, rsp
               	add	rax, 0x80
               	mov	r15, qword ptr [rsp + 0x10]
               	sub	r15d, dword ptr [rsp + 0x18]
               	je	 <L85>
               	or	r14, qword ptr [rsp]
               	vmovaps	ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax + 0x20], ymm0
               	mov	rbx, r14
               	test	r9d, r9d
               	movabs	r13, -0x100000000
               	js	 <L86>
               	mov	edx, r9d
               	shl	rdx, 0x5
               	add	rdx, 0x20
               	lea	rdi, [rsp + 0x80]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	vmovdqa	ymm10, ymmword ptr [rsp + 0x20]
               	vmovdqa	ymm9, ymmword ptr [rsp + 0x40]
               	vmovdqa	ymm8, ymmword ptr [rsp + 0x60]
               	vmovdqa	ymm7, ymmword ptr  <memset+0x8a0>
               	vmovdqa	ymm6, ymmword ptr  <memset+0x880>
               	mov	rbx, r14
               	jmp	 <L86>
               	nop	word ptr cs:[rax + rax]
<L84>:
               	mov	rdx, rbx
               	shr	rdx, 0x20
               	mov	rcx, qword ptr [rsp]
               	lea	rax, [rcx + 4*rcx]
               	mov	r9, qword ptr [rsp + 0x8]
               	lea	rsi, [r9 + 8*rax]
               	lea	rax, [rcx + 8*rcx]
               	lea	rdi, [rax + 2*rax]
               	add	rcx, r9
               	add	rdi, rcx
               	mov	r8d, ebx
               	shl	r8, 0x5
               	add	r8, r9
               	lea	r10, [r9 + 4*rax]
               	mov	r11d, 0x1
               	xor	ecx, ecx
               	mov	r13d, 0x1
               	jmp	 <L87>
               	nop	word ptr cs:[rax + rax]
<L89>:
               	mov	r13d, r9d
               	movsxd	rax, r9d
               	shl	rax, 0x5
               	vmovaps	ymmword ptr [rsp + rax + 0x80], ymm0
               	add	edx, 0x8
               	mov	eax, 0xfffffffe
               	sub	eax, r11d
               	inc	r11d
               	bsr	ebx, r11d
               	xor	ebx, 0x1f
               	popcnt	ecx, eax
               	sub	ecx, ebx
               	mov	rax, rdx
               	shl	rax, 0x20
               	cmp	rax, r14
               	je	 <L88>
<L87>:
               	vpmovsxbd	ymm0, qword ptr [rsi + rdx]
               	vpermd	ymm1, ymm0, ymm6
               	vpermd	ymm2, ymm0, ymm7
               	vpslld	ymm3, ymm0, 0x1c
               	vblendvps	ymm1, ymm1, ymm2, ymm3
               	vpsllvd	ymm2, ymm8, ymm0
               	vmaskmovps	ymm3, ymm2, ymmword ptr [r8 + 4*rdx]
               	vmovaps	ymm4, ymmword ptr [rdi + 4*rdx]
               	vblendvps	ymm2, ymm4, ymm3, ymm2
               	vpsllvd	ymm3, ymm9, ymm0
               	vmaskmovps	ymm5, ymm3, ymmword ptr [r10 + 4*rdx]
               	mov	r9d, ecx
               	vblendvps	ymm3, ymm4, ymm5, ymm3
               	vmulps	ymm1, ymm4, ymm1
               	vmulps	ymm1, ymm1, ymm2
               	vmulps	ymm2, ymm3, ymm1
               	vpsllvd	ymm0, ymm10, ymm0
               	vblendvps	ymm0, ymm2, ymm1, ymm0
               	mov	r12d, ecx
               	sub	r12d, r13d
               	jl	 <L89>
               	movsxd	rbx, r13d
               	lea	ecx, [r12 + 0x1]
               	and	ecx, 0x3
               	je	 <L90>
               	dec	ecx
               	mov	rax, rbx
               	shl	rax, 0x5
               	lea	r15, [rsp + rax]
               	add	r15, 0x80
               	mov	eax, r9d
               	sub	al, r13b
               	inc	al
               	movzx	r13d, al
               	and	r13d, 0x3
               	shl	r13d, 0x5
               	xor	eax, eax
               	nop	dword ptr [rax]
<L91>:
               	vaddps	ymm0, ymm0, ymmword ptr [r15 + rax]
               	add	rax, 0x20
               	cmp	r13d, eax
               	jne	 <L91>
               	add	rbx, rcx
               	inc	rbx
<L90>:
               	cmp	r12d, 0x3
               	jb	 <L89>
               	mov	ecx, r9d
               	sub	ecx, ebx
               	inc	ecx
               	shl	rbx, 0x5
               	lea	rax, [rsp + 0xe0]
               	add	rbx, rax
               	nop	word ptr cs:[rax + rax]
<L92>:
               	vaddps	ymm0, ymm0, ymmword ptr [rbx - 0x60]
               	vaddps	ymm0, ymm0, ymmword ptr [rbx - 0x40]
               	vaddps	ymm0, ymm0, ymmword ptr [rbx - 0x20]
               	vaddps	ymm0, ymm0, ymmword ptr [rbx]
               	sub	rbx, -0x80
               	add	ecx, -0x4
               	jne	 <L92>
               	jmp	 <L89>
<L85>:
               	vmovaps	ymm0, ymmword ptr [rax]
               	mov	r11, qword ptr [rsp + 0x8]
<L83>:
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm1, xmm0
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vmovss	dword ptr [rsp], xmm0
               	mov	rdi, r11
               	vzeroupper
               	call	 <free@plt>
               	vxorps	xmm0, xmm0, xmm0
               	xor	eax, eax
               	vmovss	xmm1, dword ptr [rsp]
               	vucomiss	xmm1, xmm0
               	setne	al
               	lea	rsp, [rbp - 0x28]
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0x3d50>
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

<aligned_alloc@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x20>
               	push	0x1
               	jmp	 <.plt>

<free@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	push	0x3
               	jmp	 <.plt>
