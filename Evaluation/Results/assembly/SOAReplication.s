
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
               	call	qword ptr  <free+0x5198>
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
               	mov	rax, qword ptr  <free+0x51a8>
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
               	mov	rax, qword ptr  <free+0x51b0>
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
               	cmp	qword ptr , 0x0 <free+0x51b8>
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
               	call	 <initializer for module Meta.Math.Random>
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
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
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

<_GLOBAL__sub_I_SOAReplication.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Evaluation.Dependency.RandomAccessIteratorBase>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.SOAReplication.SOAView>
               	call	 <initializer for module Std>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	movsx	r15d, byte ptr [rcx]
               	add	r15d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr cs:[rax + rax]
<L1>:
               	lea	esi, [r15 + 4*r15]
               	movsx	edx, dl
               	lea	r15d, [rdx + 2*rsi]
               	add	r15d, -0x30
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	r13d, byte ptr [rax]
               	add	r13d, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax]
<L3>:
               	lea	edx, [r13 + 4*r13]
               	movsx	ecx, cl
               	lea	r13d, [rcx + 2*rdx]
               	add	r13d, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	mov	ecx, r13d
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x128], rcx
               	lea	rsi, [rcx + 8*rax]
               	mov	edi, 0x20
               	call	 <aligned_alloc@plt>
               	mov	qword ptr [rsp + 0x120], rax
               	movsxd	rdx, r15d
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
               	mov	r14, rdi
               	shr	r14, 0x1f
               	xor	r14, rdi
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
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x1d0], rcx
               	mov	rax, rcx
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1a8], r14
               	mov	rcx, r14
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	qword ptr [rsp + 0x1b0], r11
               	mov	rdx, r11
               	mov	qword ptr [rsp + 0x1d8], r9
               	mov	rsi, r9
               	xor	r12d, r12d
               	jmp	 <L4>
               	nop
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
               	bt	rbx, rdi
               	jae	 <L6>
               	xor	r12, rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r10, rax
               	jmp	 <L7>
<L5>:
               	xor	edi, edi
               	jmp	 <L8>
               	nop	word ptr cs:[rax + rax]
<L10>:
               	mov	qword ptr [rsp + 0x1e0], r12
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
               	mov	r12, qword ptr [rsp + 0x1e0]
               	je	 <L9>
<L8>:
               	movabs	r9, -0x2a59ed990f36c6d4
               	bt	r9, rdi
               	jae	 <L10>
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x1e0], r12
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r10, rax
               	jmp	 <L11>
<L9>:
               	xor	edi, edi
               	jmp	 <L12>
               	nop	dword ptr [rax + rax]
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
               	mov	r9, qword ptr [rsp + 0x1e0]
               	jae	 <L14>
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x1e0], r9
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	r8, rcx
               	mov	r9, r8
               	xor	r10, rax
               	jmp	 <L15>
<L13>:
               	xor	edi, edi
               	movabs	r9, 0x39abdc4529b1661c
               	jmp	 <L16>
               	nop	word ptr [rax + rax]
<L18>:
               	mov	qword ptr [rsp + 0xd8], r8
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
               	mov	r8, qword ptr [rsp + 0xd8]
               	je	 <L17>
<L16>:
               	bt	r9, rdi
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xd8], r8
               	xor	r10, rax
               	jmp	 <L19>
<L17>:
               	mov	qword ptr [rsp + 0x118], r15
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	rax, r10
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x88], rcx
               	mov	rcx, r8
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x18], rdx
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], r8
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
               	mov	r8, qword ptr [rsp + 0x48]
               	jae	 <L22>
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x88], rcx
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L25>
               	mov	r8, r9
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	r8, rax
               	mov	r9, r8
               	jmp	 <L25>
<L24>:
               	xor	edi, edi
               	jmp	 <L26>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	r9, rax
               	jmp	 <L28>
<L27>:
               	xor	edi, edi
               	jmp	 <L29>
               	nop
<L31>:
               	mov	qword ptr [rsp + 0xd0], r9
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
               	mov	r9, qword ptr [rsp + 0xd0]
               	je	 <L30>
<L29>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L31>
               	xor	qword ptr [rsp + 0x48], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	r9, rax
               	jmp	 <L31>
<L30>:
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	rax, r9
               	xor	r9d, r9d
               	mov	rcx, qword ptr [rsp + 0x88]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x10], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x48]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x80], r8
               	jmp	 <L32>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x10], rdx
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L37>
               	mov	r8, r14
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	r9, rcx
               	xor	r8, rax
               	mov	r14, r8
               	jmp	 <L37>
<L36>:
               	xor	edi, edi
               	jmp	 <L38>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	r9, rcx
               	xor	r14, rax
               	jmp	 <L40>
<L39>:
               	mov	qword ptr [rsp + 0xb8], r9
               	xor	edi, edi
               	jmp	 <L41>
               	nop	word ptr cs:[rax + rax]
<L43>:
               	mov	qword ptr [rsp + 0xc8], r14
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
               	mov	r14, qword ptr [rsp + 0xc8]
               	je	 <L42>
<L41>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L43>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	r14, rax
               	jmp	 <L43>
<L42>:
               	mov	qword ptr [rsp + 0x180], r13
               	xor	edi, edi
               	xor	r13d, r13d
               	mov	rax, r14
               	xor	r11d, r11d
               	mov	rcx, qword ptr [rsp + 0xb8]
               	xor	r9d, r9d
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x80]
               	xor	r14d, r14d
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
               	bt	rbx, rdi
               	jae	 <L46>
               	xor	r14, rsi
               	xor	r9, rdx
               	xor	r11, rcx
               	xor	r13, rax
               	jmp	 <L46>
<L45>:
               	mov	qword ptr [rsp + 0xa0], r14
               	mov	qword ptr [rsp + 0x78], r9
               	xor	edi, edi
               	mov	r14, r13
               	movabs	r9, -0x2a59ed990f36c6d4
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
               	bt	r9, rdi
               	jae	 <L49>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	r11, rcx
               	xor	r14, rax
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	r11, rcx
               	xor	r14, rax
               	jmp	 <L52>
<L51>:
               	xor	edi, edi
               	jmp	 <L53>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	r11, rcx
               	xor	r14, rax
               	jmp	 <L55>
<L54>:
               	mov	r9, rbx
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, r14
               	xor	r13d, r13d
               	mov	rcx, r11
               	xor	edx, edx
               	mov	qword ptr [rsp], rdx
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	rsi, qword ptr [rsp + 0xa0]
               	xor	r15d, r15d
               	jmp	 <L56>
               	nop	word ptr cs:[rax + rax]
<L58>:
               	mov	rbx, r15
               	mov	r15, r13
<L59>:
               	mov	r13, r8
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
               	mov	r13, r15
               	mov	r15, rbx
               	je	 <L57>
<L56>:
               	bt	r9, rdi
               	jae	 <L58>
               	xor	r15, rsi
               	mov	rbx, r15
               	xor	qword ptr [rsp], rdx
               	xor	r13, rcx
               	mov	r15, r13
               	xor	r8, rax
               	jmp	 <L59>
<L57>:
               	xor	edi, edi
               	jmp	 <L60>
               	nop	word ptr cs:[rax + rax]
<L62>:
               	mov	rbx, r15
               	mov	r15, r13
<L63>:
               	mov	r13, r8
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
               	mov	r13, r15
               	mov	r15, rbx
               	je	 <L61>
<L60>:
               	movabs	rbx, -0x2a59ed990f36c6d4
               	bt	rbx, rdi
               	jae	 <L62>
               	xor	r15, rsi
               	mov	rbx, r15
               	xor	qword ptr [rsp], rdx
               	xor	r13, rcx
               	mov	r15, r13
               	xor	r8, rax
               	jmp	 <L63>
<L61>:
               	xor	edi, edi
               	jmp	 <L64>
               	nop
<L66>:
               	mov	rbx, r15
               	mov	r15, r13
<L67>:
               	mov	r13, r8
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
               	mov	r13, r15
               	mov	r15, rbx
               	je	 <L65>
<L64>:
               	movabs	rbx, -0x56a7d9e71fc03656
               	bt	rbx, rdi
               	jae	 <L66>
               	xor	r15, rsi
               	mov	rbx, r15
               	xor	qword ptr [rsp], rdx
               	xor	r13, rcx
               	mov	r15, r13
               	xor	r8, rax
               	jmp	 <L67>
<L65>:
               	xor	edi, edi
               	movabs	r9, 0x39abdc4529b1661c
               	jmp	 <L68>
               	nop	dword ptr [rax + rax]
<L70>:
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
               	je	 <L69>
<L68>:
               	bt	r9, rdi
               	jae	 <L70>
               	xor	r15, rsi
               	xor	qword ptr [rsp], rdx
               	xor	r13, rcx
               	xor	r8, rax
               	jmp	 <L70>
<L69>:
               	mov	qword ptr [rsp + 0x1c8], r10
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	rax, r8
               	xor	r8d, r8d
               	mov	rcx, r13
               	xor	r12d, r12d
               	mov	rdx, qword ptr [rsp]
               	mov	rsi, r15
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x70], rbx
               	movabs	r10, 0x180ec6d33cfd0aba
               	jmp	 <L71>
               	nop	dword ptr [rax + rax]
<L73>:
               	mov	qword ptr [rsp + 0x140], r8
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
               	mov	r8, qword ptr [rsp + 0x140]
               	je	 <L72>
<L71>:
               	bt	r10, rdi
               	jae	 <L73>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	r12, rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x140], r8
               	xor	r9, rax
               	jmp	 <L74>
<L72>:
               	xor	edi, edi
               	movabs	rbx, -0x2a59ed990f36c6d4
               	jmp	 <L75>
               	nop
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
               	bt	rbx, rdi
               	mov	r8, qword ptr [rsp + 0x140]
               	jae	 <L77>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	r12, rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x140], r8
               	xor	r9, rax
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
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	r12, rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	r9, rax
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
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	r12, rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	r9, rax
               	jmp	 <L83>
<L82>:
               	xor	edi, edi
               	xor	r8d, r8d
               	mov	rax, r9
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x68], rcx
               	mov	rcx, qword ptr [rsp + 0x140]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x38], rdx
               	mov	rdx, r12
               	mov	rsi, qword ptr [rsp + 0x70]
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0x60], rbx
               	movabs	rbx, -0x2a59ed990f36c6d4
               	movabs	r10, 0x180ec6d33cfd0aba
               	jmp	 <L84>
               	nop	dword ptr [rax + rax]
<L86>:
               	mov	qword ptr [rsp + 0x160], r8
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
               	mov	r8, qword ptr [rsp + 0x160]
               	je	 <L85>
<L84>:
               	bt	r10, rdi
               	jae	 <L86>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	r8, rax
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
               	bt	rbx, rdi
               	mov	r8, qword ptr [rsp + 0x160]
               	jae	 <L89>
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x160], r8
               	jmp	 <L89>
<L88>:
               	xor	edi, edi
               	jmp	 <L90>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0x160], rax
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
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L95>
<L94>:
               	xor	ecx, ecx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	mov	rax, qword ptr [rsp + 0x160]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x58], rdx
               	mov	rdx, qword ptr [rsp + 0x68]
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x30], rsi
               	mov	rsi, qword ptr [rsp + 0x38]
               	mov	rdi, qword ptr [rsp + 0x60]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	jmp	 <L96>
               	nop	word ptr cs:[rax + rax]
<L98>:
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
               	je	 <L97>
<L96>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rcx
               	jae	 <L98>
               	xor	qword ptr [rsp + 0x50], rdi
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x8], rax
               	jmp	 <L98>
<L97>:
               	xor	ecx, ecx
               	jmp	 <L99>
               	nop	dword ptr [rax]
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
               	bt	rbx, rcx
               	jae	 <L101>
               	xor	qword ptr [rsp + 0x50], rdi
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x8], rax
               	jmp	 <L101>
<L100>:
               	xor	ecx, ecx
               	jmp	 <L102>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x50], rdi
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x8], rax
               	jmp	 <L104>
<L103>:
               	xor	ecx, ecx
               	jmp	 <L105>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x50], rdi
               	xor	qword ptr [rsp + 0x30], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x8], rax
               	jmp	 <L107>
<L106>:
               	xor	ecx, ecx
               	xor	ebx, ebx
               	mov	rax, qword ptr [rsp + 0x8]
               	xor	edi, edi
               	mov	rdx, qword ptr [rsp + 0x58]
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xe0], rsi
               	mov	rsi, qword ptr [rsp + 0x30]
               	mov	r8, qword ptr [rsp + 0x50]
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x40], r10
               	jmp	 <L108>
               	nop	word ptr [rax + rax]
<L110>:
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
               	je	 <L109>
<L108>:
               	movabs	r10, 0x180ec6d33cfd0aba
               	bt	r10, rcx
               	jae	 <L110>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	rdi, rdx
               	xor	rbx, rax
               	jmp	 <L110>
<L109>:
               	xor	ecx, ecx
               	jmp	 <L111>
               	nop	dword ptr [rax]
<L113>:
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
               	je	 <L112>
<L111>:
               	movabs	r10, -0x2a59ed990f36c6d4
               	bt	r10, rcx
               	mov	r10, qword ptr [rsp + 0xe0]
               	jae	 <L113>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	r10, rsi
               	mov	qword ptr [rsp + 0xe0], r10
               	xor	rdi, rdx
               	xor	rbx, rax
               	jmp	 <L113>
<L112>:
               	mov	qword ptr [rsp + 0x28], rdi
               	mov	qword ptr [rsp + 0x90], rbx
               	xor	ecx, ecx
               	jmp	 <L114>
               	nop	word ptr cs:[rax + rax]
<L116>:
               	mov	r10, qword ptr [rsp + 0x90]
               	mov	rdi, qword ptr [rsp + 0x28]
<L117>:
               	mov	qword ptr [rsp + 0x90], r10
               	mov	qword ptr [rsp + 0x28], rdi
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
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, rcx
               	mov	rdi, qword ptr [rsp + 0xe0]
               	mov	r10, qword ptr [rsp + 0x40]
               	jae	 <L116>
               	xor	r10, r8
               	mov	qword ptr [rsp + 0x40], r10
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0xe0], rdi
               	mov	rdi, qword ptr [rsp + 0x28]
               	xor	rdi, rdx
               	mov	r10, qword ptr [rsp + 0x90]
               	xor	r10, rax
               	jmp	 <L117>
<L115>:
               	xor	ecx, ecx
               	movabs	rdi, 0x39abdc4529b1661c
               	jmp	 <L118>
<L120>:
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
               	je	 <L119>
<L118>:
               	bt	rdi, rcx
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x90], rax
               	jmp	 <L120>
<L119>:
               	mov	qword ptr [rsp + 0x1b8], r11
               	mov	qword ptr [rsp + 0x1c0], r14
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	ecx, ecx
               	xor	edx, edx
               	mov	rax, qword ptr [rsp + 0x90]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xb0], r8
               	mov	r8, qword ptr [rsp + 0x28]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x98], r11
               	mov	r11, qword ptr [rsp + 0xe0]
               	mov	r14, qword ptr [rsp + 0x40]
               	xor	ebx, ebx
               	mov	qword ptr [rsp + 0xa8], rbx
               	jmp	 <L121>
               	nop	dword ptr [rax]
<L123>:
               	mov	rbx, rdx
               	mov	rdx, r11
               	shl	rdx, 0x11
               	xor	r8, r14
               	xor	rax, r11
               	xor	r11, r8
               	xor	r14, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	mov	rdx, rbx
               	je	 <L122>
<L121>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, rcx
               	jae	 <L123>
               	xor	qword ptr [rsp + 0xa8], r14
               	xor	qword ptr [rsp + 0x98], r11
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	rdx, rax
               	jmp	 <L123>
<L122>:
               	xor	ecx, ecx
               	jmp	 <L124>
               	nop	word ptr [rax + rax]
<L126>:
               	mov	rdx, r11
               	shl	rdx, 0x11
               	xor	r8, r14
               	xor	rax, r11
               	xor	r11, r8
               	xor	r14, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L125>
<L124>:
               	movabs	rdx, -0x2a59ed990f36c6d4
               	bt	rdx, rcx
               	jae	 <L126>
               	mov	rdx, rbx
               	xor	qword ptr [rsp + 0xa8], r14
               	xor	qword ptr [rsp + 0x98], r11
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	rdx, rax
               	mov	rbx, rdx
               	jmp	 <L126>
<L125>:
               	xor	ecx, ecx
               	jmp	 <L127>
               	nop	word ptr [rax + rax]
<L129>:
               	mov	rdx, r11
               	shl	rdx, 0x11
               	xor	r8, r14
               	xor	rax, r11
               	xor	r11, r8
               	xor	r14, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L128>
<L127>:
               	movabs	rdx, -0x56a7d9e71fc03656
               	bt	rdx, rcx
               	jae	 <L129>
               	xor	qword ptr [rsp + 0xa8], r14
               	xor	qword ptr [rsp + 0x98], r11
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	rbx, rax
               	jmp	 <L129>
<L128>:
               	xor	ecx, ecx
               	jmp	 <L130>
               	nop	word ptr cs:[rax + rax]
<L132>:
               	mov	rdx, r11
               	shl	rdx, 0x11
               	xor	r8, r14
               	xor	rax, r11
               	xor	r11, r8
               	xor	r14, rax
               	xor	r8, rdx
               	rol	rax, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L131>
<L130>:
               	movabs	rdx, 0x39abdc4529b1661c
               	bt	rdx, rcx
               	jae	 <L132>
               	xor	qword ptr [rsp + 0xa8], r14
               	xor	qword ptr [rsp + 0x98], r11
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	rbx, rax
               	jmp	 <L132>
<L131>:
               	mov	eax, 0x40
               	nop	word ptr cs:[rax + rax]
<L133>:
               	dec	rax
               	jne	 <L133>
               	mov	rdx, r9
               	mov	eax, 0x40
               	mov	rcx, qword ptr [rsp + 0x128]
               	mov	qword ptr [rsp + 0x130], r12
               	nop	dword ptr [rax]
<L134>:
               	dec	rax
               	jne	 <L134>
               	mov	eax, 0x40
               	mov	r9, qword ptr [rsp]
               	nop
<L135>:
               	dec	rax
               	jne	 <L135>
               	mov	eax, 0x40
               	mov	r8, qword ptr [rsp + 0x180]
               	nop	word ptr cs:[rax + rax]
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
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L168>:
               	dec	rax
               	jne	 <L168>
               	test	r8d, r8d
               	je	 <L169>
               	movabs	rax, 0x800000000
               	vbroadcastss	ymm0, dword ptr  <free+0x8c0>
               	vmovaps	ymmword ptr [rsp + 0x240], ymm0
               	vpbroadcastq	ymm0, qword ptr  <free+0x900>
               	vmovdqa	ymmword ptr [rsp + 0x220], ymm0
               	add	rax, -0x8
               	mov	qword ptr [rsp + 0x218], rax
               	mov	eax, r8d
               	mov	dword ptr [rsp + 0x13c], r8d
               	mov	qword ptr [rsp + 0x1a0], r13
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	qword ptr [rsp + 0x198], r15
               	mov	r15, qword ptr [rsp + 0x18]
               	mov	r12, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x190], rdx
               	mov	rdx, qword ptr [rsp + 0x140]
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	r11, qword ptr [rsp + 0x28]
               	mov	qword ptr [rsp + 0x188], rbx
               	vmovdqa	ymm2, ymmword ptr  <free+0x8a0>
               	nop	dword ptr [rax]
<L170>:
               	mov	qword ptr [rsp + 0x28], r11
               	mov	qword ptr [rsp + 0x8], rsi
               	mov	qword ptr [rsp + 0x140], rdx
               	mov	qword ptr [rsp], r9
               	mov	qword ptr [rsp + 0x10], r12
               	mov	qword ptr [rsp + 0x18], r15
               	mov	qword ptr [rsp + 0x20], r10
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	mov	rdi, rcx
               	lea	rcx, [r15 + 4*r15]
               	rol	rcx, 0x7
               	lea	r15, [rax + 8*rax]
               	lea	rax, [r12 + 4*r12]
               	rol	rax, 0x7
               	lea	rdx, [rcx + 8*rcx]
               	mov	rcx, qword ptr [rsp + 0x78]
               	lea	r8, [rcx + 4*rcx]
               	rol	r8, 0x7
               	lea	rcx, [rax + 8*rax]
               	lea	rax, [r9 + 4*r9]
               	rol	rax, 0x7
               	lea	rbx, [r8 + 8*r8]
               	mov	rsi, qword ptr [rsp + 0x130]
               	lea	r8, [rsi + 4*rsi]
               	rol	r8, 0x7
               	lea	r10, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r12, [r8 + 8*r8]
               	mov	rsi, qword ptr [rsp + 0x30]
               	lea	r8, [rsi + 4*rsi]
               	rol	r8, 0x7
               	lea	r14, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0xe0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r11, [r8 + 8*r8]
               	mov	rsi, qword ptr [rsp + 0x98]
               	lea	r9, [rsi + 4*rsi]
               	rol	r9, 0x7
               	lea	r8, [rax + 8*rax]
               	lea	rax, [r9 + 8*r9]
               	vmovq	xmm0, r15
               	shr	r15, 0x8
               	vpbroadcastq	ymm0, xmm0
               	vmovdqa	xmm1, xmmword ptr  <free+0x840>
               	vpsrlvq	xmm4, xmm0, xmm1
               	vpsrlvq	ymm3, ymm0, ymm2
               	vmovq	xmm5, r15
               	vpunpcklqdq	xmm5, xmm0, xmm5 # xmm5 = xmm0[0],xmm5[0]
               	vmovq	xmm0, rdx
               	shr	rdx, 0x8
               	vpbroadcastq	ymm6, xmm0
               	vpsrlvq	xmm7, xmm6, xmm1
               	vpsrlvq	ymm0, ymm6, ymm2
               	vmovq	xmm8, rdx
               	vpunpcklqdq	xmm6, xmm6, xmm8 # xmm6 = xmm6[0],xmm8[0]
               	vpblendd	ymm4, ymm4, ymm3, 0xf0  # ymm4 = ymm4[0,1,2,3],ymm3[4,5,6,7]
               	vmovq	xmm8, rcx
               	shr	rcx, 0x8
               	vpbroadcastq	ymm9, xmm8
               	vinserti128	ymm5, ymm5, xmm3, 0x1
               	vpsrlvq	xmm3, xmm9, xmm1
               	vpsrlvq	ymm11, ymm9, ymm2
               	vmovq	xmm10, rcx
               	vpblendd	ymm8, ymm7, ymm0, 0xf0  # ymm8 = ymm7[0,1,2,3],ymm0[4,5,6,7]
               	vpunpcklqdq	xmm7, xmm9, xmm10 # xmm7 = xmm9[0],xmm10[0]
               	vmovq	xmm9, rbx
               	shr	rbx, 0x8
               	vinserti128	ymm10, ymm6, xmm0, 0x1
               	vpbroadcastq	ymm0, xmm9
               	vpsrlvq	xmm6, xmm0, xmm1
               	vpsrlvq	ymm12, ymm0, ymm2
               	vpblendd	ymm9, ymm3, ymm11, 0xf0 # ymm9 = ymm3[0,1,2,3],ymm11[4,5,6,7]
               	vmovq	xmm3, rbx
               	vpunpcklqdq	xmm0, xmm0, xmm3 # xmm0 = xmm0[0],xmm3[0]
               	vmovq	xmm3, r10
               	vinserti128	ymm11, ymm7, xmm11, 0x1
               	shr	r10, 0x8
               	vpbroadcastq	ymm3, xmm3
               	vpsrlvq	xmm7, xmm3, xmm1
               	vpblendd	ymm13, ymm6, ymm12, 0xf0 # ymm13 = ymm6[0,1,2,3],ymm12[4,5,6,7]
               	vpsrlvq	ymm15, ymm3, ymm2
               	vmovq	xmm6, r10
               	vpunpcklqdq	xmm3, xmm3, xmm6 # xmm3 = xmm3[0],xmm6[0]
               	vinserti128	ymm6, ymm0, xmm12, 0x1
               	vpblendd	ymm14, ymm7, ymm15, 0xf0 # ymm14 = ymm7[0,1,2,3],ymm15[4,5,6,7]
               	vmovq	xmm0, r12
               	shr	r12, 0x8
               	vinserti128	ymm3, ymm3, xmm15, 0x1
               	vpbroadcastq	ymm0, xmm0
               	vpsrlvq	xmm7, xmm0, xmm1
               	vmovq	xmm12, r12
               	vpunpcklqdq	xmm12, xmm0, xmm12 # xmm12 = xmm0[0],xmm12[0]
               	vpsrlvq	ymm0, ymm0, ymm2
               	vpblendd	ymm7, ymm7, ymm0, 0xf0  # ymm7 = ymm7[0,1,2,3],ymm0[4,5,6,7]
               	vinserti128	ymm0, ymm12, xmm0, 0x1
               	vshufps	ymm5, ymm5, ymm4, 0x88  # ymm5 = ymm5[0,2],ymm4[0,2],ymm5[4,6],ymm4[4,6]
               	vmovq	xmm4, r14
               	shr	r14, 0x8
               	vpbroadcastq	ymm4, xmm4
               	vshufps	ymm12, ymm10, ymm8, 0x88 # ymm12 = ymm10[0,2],ymm8[0,2],ymm10[4,6],ymm8[4,6]
               	vpsrlvq	xmm8, xmm4, xmm1
               	vmovq	xmm10, r14
               	vpunpcklqdq	xmm10, xmm4, xmm10 # xmm10 = xmm4[0],xmm10[0]
               	vpsrlvq	ymm15, ymm4, ymm2
               	vpblendd	ymm4, ymm8, ymm15, 0xf0 # ymm4 = ymm8[0,1,2,3],ymm15[4,5,6,7]
               	vinserti128	ymm8, ymm10, xmm15, 0x1
               	vmovq	xmm10, r11
               	vshufps	ymm15, ymm11, ymm9, 0x88 # ymm15 = ymm11[0,2],ymm9[0,2],ymm11[4,6],ymm9[4,6]
               	shr	r11, 0x8
               	vpbroadcastq	ymm9, xmm10
               	vpsrlvq	xmm11, xmm9, xmm1
               	vshufps	ymm13, ymm6, ymm13, 0x88 # ymm13 = ymm6[0,2],ymm13[0,2],ymm6[4,6],ymm13[4,6]
               	vmovq	xmm6, r11
               	vpunpcklqdq	xmm6, xmm9, xmm6 # xmm6 = xmm9[0],xmm6[0]
               	vpsrlvq	ymm9, ymm9, ymm2
               	vshufps	ymm10, ymm3, ymm14, 0x88 # ymm10 = ymm3[0,2],ymm14[0,2],ymm3[4,6],ymm14[4,6]
               	vpblendd	ymm3, ymm11, ymm9, 0xf0 # ymm3 = ymm11[0,1,2,3],ymm9[4,5,6,7]
               	vinserti128	ymm6, ymm6, xmm9, 0x1
               	vmovq	xmm9, r8
               	vshufps	ymm14, ymm0, ymm7, 0x88 # ymm14 = ymm0[0,2],ymm7[0,2],ymm0[4,6],ymm7[4,6]
               	shr	r8, 0x8
               	vpbroadcastq	ymm0, xmm9
               	vmovq	xmm7, r8
               	vpsrlvq	xmm9, xmm0, xmm1
               	vpunpcklqdq	xmm7, xmm0, xmm7 # xmm7 = xmm0[0],xmm7[0]
               	vpsrlvq	ymm0, ymm0, ymm2
               	vpblendd	ymm11, ymm9, ymm0, 0xf0 # ymm11 = ymm9[0,1,2,3],ymm0[4,5,6,7]
               	vshufps	ymm4, ymm8, ymm4, 0x88  # ymm4 = ymm8[0,2],ymm4[0,2],ymm8[4,6],ymm4[4,6]
               	vinserti128	ymm0, ymm7, xmm0, 0x1
               	vmovq	xmm7, rax
               	shr	rax, 0x8
               	vshufps	ymm9, ymm6, ymm3, 0x88  # ymm9 = ymm6[0,2],ymm3[0,2],ymm6[4,6],ymm3[4,6]
               	vpbroadcastq	ymm3, xmm7
               	vpsrlvq	xmm6, xmm3, xmm1
               	vmovq	xmm7, rax
               	vpunpcklqdq	xmm7, xmm3, xmm7 # xmm7 = xmm3[0],xmm7[0]
               	vpsrlvq	ymm3, ymm3, ymm2
               	vpblendd	ymm6, ymm6, ymm3, 0xf0  # ymm6 = ymm6[0,1,2,3],ymm3[4,5,6,7]
               	vinserti128	ymm3, ymm7, xmm3, 0x1
               	vshufps	ymm11, ymm0, ymm11, 0x88 # ymm11 = ymm0[0,2],ymm11[0,2],ymm0[4,6],ymm11[4,6]
               	vshufps	ymm8, ymm3, ymm6, 0x88  # ymm8 = ymm3[0,2],ymm6[0,2],ymm3[4,6],ymm6[4,6]
               	vmovaps	ymm6, ymmword ptr [rsp + 0x240]
               	vandps	ymm0, ymm5, ymm6
               	mov	rsi, rdi
               	mov	rax, rdi
               	vcvtdq2ps	ymm0, ymm0
               	shr	rax, 0x1e
               	movabs	rdx, 0x3fffffffc
               	and	rax, rdx
               	mov	rdi, qword ptr [rsp + 0x120]
               	vmovaps	ymmword ptr [rdi + rax], ymm0
               	lea	rcx, [4*rsi]
               	vandps	ymm0, ymm12, ymm6
               	add	rax, rdi
               	and	rcx, rdx
               	vcvtdq2ps	ymm0, ymm0
               	vmovaps	ymmword ptr [rcx + rax], ymm0
               	mov	r13, qword ptr [rsp + 0x1b0]
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	rol	rcx, 0x7
               	lea	rdx, [8*rsi]
               	vandps	ymm0, ymm15, ymm6
               	and	rdx, qword ptr [rsp + 0x218]
               	vcvtdq2ps	ymm0, ymm0
               	vmovaps	ymmword ptr [rdx + rax], ymm0
               	lea	rdx, [rcx + 8*rcx]
               	mov	r10d, edx
               	mov	r8d, esi
               	shr	r10d, 0x8
               	mov	r11d, edx
               	mov	ebx, edx
               	shr	r11d, 0x10
               	vandps	ymm0, ymm13, ymm6
               	vcvtdq2ps	ymm0, ymm0
               	lea	r9, [r8 + 2*r8]
               	vmovaps	ymmword ptr [rax + 4*r9], ymm0
               	vmovd	xmm0, edx
               	vpinsrb	xmm0, xmm0, r10d, 0x1
               	shr	ebx, 0x18
               	vpinsrb	xmm0, xmm0, r11d, 0x2
               	vpinsrb	xmm0, xmm0, ebx, 0x3
               	vandps	ymm3, ymm10, ymm6
               	mov	rcx, r8
               	shl	rcx, 0x4
               	vcvtdq2ps	ymm3, ymm3
               	vmovaps	ymmword ptr [rcx + rax], ymm3
               	vandps	ymm3, ymm14, ymm6
               	lea	rcx, [r8 + 4*r8]
               	vcvtdq2ps	ymm3, ymm3
               	vmovaps	ymmword ptr [rax + 4*rcx], ymm3
               	mov	r14, rdx
               	shr	r14, 0x20
               	vandps	ymm3, ymm4, ymm6
               	vcvtdq2ps	ymm3, ymm3
               	vmovaps	ymmword ptr [rax + 8*r9], ymm3
               	vpinsrb	xmm3, xmm0, r14d, 0x4
               	mov	r9, rdx
               	shr	r9, 0x28
               	vpinsrb	xmm3, xmm3, r9d, 0x5
               	mov	r15, rdx
               	shr	r15, 0x30
               	vmovd	r12d, xmm0
               	shr	r12d, 0x8
               	vmovd	xmm0, r12d
               	mov	r12, rdx
               	vpinsrb	xmm3, xmm3, r15d, 0x6
               	shr	r12, 0x38
               	vpinsrb	xmm3, xmm3, r12d, 0x7
               	vpunpcklqdq	xmm0, xmm3, xmm0 # xmm0 = xmm3[0],xmm0[0]
               	vpinsrb	xmm3, xmm3, edx, 0x8
               	vpinsrb	xmm3, xmm3, r10d, 0x9
               	mov	r10, qword ptr [rsp + 0x20]
               	vpinsrb	xmm3, xmm3, r11d, 0xa
               	vpinsrb	xmm3, xmm3, ebx, 0xb
               	mov	rbx, qword ptr [rsp + 0x1d8]
               	vpinsrb	xmm3, xmm3, r14d, 0xc
               	mov	r14, qword ptr [rsp + 0x78]
               	vpinsrb	xmm3, xmm3, r9d, 0xd
               	vpinsrb	xmm3, xmm3, r15d, 0xe
               	vpinsrb	xmm3, xmm3, r12d, 0xf
               	vandps	ymm4, ymm9, ymm6
               	mov	qword ptr [rsp + 0x128], r8
               	lea	rdx, [r8 + 8*r8]
               	lea	r9, [rdx + 2*rdx]
               	vcvtdq2ps	ymm4, ymm4
               	add	r9, r8
               	vmovaps	ymmword ptr [rax + r9], ymm4
               	vpsrlvq	xmm4, xmm3, xmm1
               	vinserti128	ymm0, ymm0, xmm4, 0x1
               	mov	r9, rsi
               	vandps	ymm4, ymm11, ymm6
               	shl	r9, 0x5
               	vcvtdq2ps	ymm4, ymm4
               	movabs	r15, 0x1fffffffe0
               	and	r9, r15
               	vmovaps	ymmword ptr [r9 + rax], ymm4
               	mov	r12, qword ptr [rsp + 0x10]
               	mov	r15, qword ptr [rsp + 0x18]
               	vandps	ymm4, ymm8, ymm6
               	vcvtdq2ps	ymm4, ymm4
               	vmovaps	ymmword ptr [rax + 4*rdx], ymm4
               	vinserti128	ymm3, ymm3, xmm3, 0x1
               	vpsrlvq	ymm3, ymm3, ymm2
               	vmovdqa	ymm1, ymmword ptr [rsp + 0x220]
               	vpand	ymm0, ymm0, ymm1
               	vpand	ymm3, ymm3, ymm1
               	vpackusdw	ymm0, ymm0, ymm3
               	vextracti128	xmm3, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm3
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm0, xmm0, xmm0
               	vpmovzxbw	xmm3, xmm0      # xmm3 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
               	vpmullw	xmm3, xmm3, xmmword ptr  <free+0x860>
               	vpsrlw	xmm3, xmm3, 0x8
               	vpackuswb	xmm3, xmm3, xmm3
               	vpsrlw	xmm3, xmm3, 0x2
               	vpand	xmm3, xmm3, xmmword ptr  <free+0x880>
               	vpmovzxbw	xmm3, xmm3      # xmm3 = xmm3[0],zero,xmm3[1],zero,xmm3[2],zero,xmm3[3],zero,xmm3[4],zero,xmm3[5],zero,xmm3[6],zero,xmm3[7],zero
               	vpmullw	xmm3, xmm3, xmmword ptr  <free+0x850>
               	vpshufb	xmm3, xmm3, xmmword ptr  <free+0x870>
               	vpsubb	xmm0, xmm0, xmm3
               	mov	rax, rsi
               	shr	rax, 0x20
               	lea	rcx, [rdi + 8*rcx]
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	vmovq	qword ptr [rax + rcx], xmm0
               	mov	r8, rsi
               	movabs	rcx, -0x100000000
               	and	r8, rcx
               	mov	rcx, r13
               	shl	rcx, 0x11
               	xor	rdi, rbx
               	mov	rdx, qword ptr [rsp + 0x1d0]
               	xor	rdx, r13
               	xor	r13, rdi
               	mov	qword ptr [rsp + 0x1b0], r13
               	mov	rax, qword ptr [rsp + 0xd8]
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x1d8], rbx
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x1a8], rdi
               	mov	rcx, r10
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x1d0], rdx
               	shl	rcx, 0x11
               	mov	r9, qword ptr [rsp + 0x1e0]
               	xor	rax, r9
               	mov	rdx, qword ptr [rsp + 0x1c8]
               	xor	rdx, r10
               	xor	r10, rax
               	xor	r9, rdx
               	mov	qword ptr [rsp + 0x1e0], r9
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x1c8], rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xd8], rax
               	mov	rcx, r15
               	mov	rbx, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0x88]
               	xor	r9, rbx
               	mov	rdx, qword ptr [rsp + 0xd0]
               	xor	rdx, r15
               	shl	rcx, 0x11
               	xor	r15, r9
               	xor	rbx, rdx
               	mov	qword ptr [rsp + 0x48], rbx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0xd0], rdx
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x88], r9
               	mov	rcx, r12
               	mov	rdx, qword ptr [rsp + 0xb8]
               	mov	rbx, qword ptr [rsp + 0x80]
               	xor	rdx, rbx
               	shl	rcx, 0x11
               	mov	r9, qword ptr [rsp + 0xc8]
               	xor	r9, r12
               	xor	r12, rdx
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x80], rbx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0xb8], rdx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xc8], r9
               	mov	rcx, r14
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0x1b8]
               	mov	r11, qword ptr [rsp + 0xa0]
               	xor	rdx, r11
               	mov	r9, qword ptr [rsp + 0x1c0]
               	xor	r9, r14
               	xor	r14, rdx
               	mov	qword ptr [rsp + 0x78], r14
               	xor	r11, r9
               	mov	qword ptr [rsp + 0xa0], r11
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x1b8], rdx
               	mov	rax, qword ptr [rsp]
               	mov	rcx, rax
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x1c0], r9
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0x1a0]
               	mov	rbx, qword ptr [rsp + 0x198]
               	xor	rdx, rbx
               	mov	r14, qword ptr [rsp + 0xc0]
               	xor	r14, rax
               	xor	rax, rdx
               	mov	qword ptr [rsp], rax
               	xor	rbx, r14
               	mov	qword ptr [rsp + 0x198], rbx
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0xc0], r14
               	mov	rsi, qword ptr [rsp + 0x130]
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x1a0], rdx
               	mov	rdx, qword ptr [rsp + 0x140]
               	mov	rcx, rsi
               	mov	rbx, qword ptr [rsp + 0x70]
               	xor	rdx, rbx
               	mov	r9, qword ptr [rsp + 0x190]
               	xor	r9, rsi
               	shl	rcx, 0x11
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x130], rsi
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x70], rbx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x190], r9
               	xor	rdx, rcx
               	mov	rax, qword ptr [rsp + 0x38]
               	mov	rcx, rax
               	mov	rbx, qword ptr [rsp + 0x68]
               	mov	r11, qword ptr [rsp + 0x60]
               	xor	rbx, r11
               	shl	rcx, 0x11
               	mov	r9, qword ptr [rsp + 0x160]
               	xor	r9, rax
               	xor	rax, rbx
               	mov	qword ptr [rsp + 0x38], rax
               	xor	r11, r9
               	mov	qword ptr [rsp + 0x60], r11
               	mov	rsi, qword ptr [rsp + 0x8]
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x68], rbx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x160], r9
               	mov	rax, qword ptr [rsp + 0x30]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0x58]
               	mov	r11, qword ptr [rsp + 0x50]
               	xor	rbx, r11
               	xor	rsi, rax
               	xor	rax, rbx
               	mov	qword ptr [rsp + 0x30], rax
               	xor	r11, rsi
               	mov	qword ptr [rsp + 0x50], r11
               	mov	r11, qword ptr [rsp + 0x28]
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x58], rbx
               	mov	rdi, qword ptr [rsp + 0xe0]
               	mov	rcx, rdi
               	rol	rsi, 0x2d
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0x40]
               	xor	r11, rbx
               	mov	rax, qword ptr [rsp + 0x90]
               	xor	rax, rdi
               	xor	rdi, r11
               	mov	qword ptr [rsp + 0xe0], rdi
               	xor	r11, rcx
               	mov	rcx, qword ptr [rsp + 0x98]
               	mov	r13, rcx
               	mov	r9, qword ptr [rsp + 0xb0]
               	mov	r14, qword ptr [rsp + 0xa8]
               	xor	r9, r14
               	shl	r13, 0x11
               	mov	rdi, qword ptr [rsp + 0x188]
               	xor	rdi, rcx
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x98], rcx
               	xor	r9, r13
               	mov	qword ptr [rsp + 0xb0], r9
               	mov	r9, qword ptr [rsp]
               	movabs	rcx, 0x800000000
               	add	rcx, r8
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0x40], rbx
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x90], rax
               	mov	rax, qword ptr [rsp + 0x128]
               	or	rcx, rax
               	xor	r14, rdi
               	mov	qword ptr [rsp + 0xa8], r14
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x188], rdi
               	add	dword ptr [rsp + 0x13c], -0x8
               	jne	 <L170>
               	movabs	r15, 0x800000000
               	movabs	r12, 0x1fffffffe0
               	movabs	r13, -0x100000000
               	shr	rcx, 0x20
               	mov	rbx, qword ptr [rsp + 0x118]
               	mov	rdi, qword ptr [rsp + 0x120]
               	je	 <L171>
               	mov	rsi, rax
               	mov	edx, 0x1
               	vbroadcastss	ymm0, dword ptr  <free+0x8d0>
               	vmovaps	ymmword ptr [rsp + 0xe0], ymm0
               	vbroadcastss	ymm0, dword ptr  <free+0x8e8>
               	vmovaps	ymmword ptr [rsp + 0x140], ymm0
               	vbroadcastss	ymm0, dword ptr  <free+0x8f0>
               	vmovaps	ymmword ptr [rsp + 0x160], ymm0
               	vbroadcastss	ymm3, dword ptr  <free+0x8c4>
               	vbroadcastss	ymm0, dword ptr  <free+0x8f4>
               	vmovaps	ymmword ptr [rsp + 0x1e0], ymm0
               	vbroadcastss	ymm5, dword ptr  <free+0x8d4>
               	vpbroadcastd	ymm6, dword ptr  <free+0x8fc>
               	vbroadcastss	ymm7, dword ptr  <free+0x8e0>
               	vpbroadcastd	ymm8, dword ptr  <free+0x8c8>
               	vbroadcastss	ymm9, dword ptr  <free+0x8d8>
               	vpbroadcastd	ymm10, dword ptr  <free+0x8e4>
               	vbroadcastss	ymm11, dword ptr  <free+0x8f8>
               	vpbroadcastd	ymm12, dword ptr  <free+0x8dc>
               	xor	r9d, r9d
               	vbroadcastss	ymm13, dword ptr  <free+0x8cc>
               	mov	r10d, 0x1
               	mov	rax, r8
               	mov	r8, rsi
               	jmp	 <L172>
               	nop	dword ptr [rax + rax]
<L174>:
               	and	r8, r13
               	lea	r11, [r8 + rbx]
               	or	r11, rsi
               	inc	edx
               	popcnt	r10d, edx
               	mov	r9d, r14d
               	cmp	r8, rax
               	mov	r8, r11
               	je	 <L173>
<L172>:
               	mov	rbx, r8
               	shr	rbx, 0x20
               	mov	esi, r8d
               	lea	r11, [rsi + 4*rsi]
               	lea	r11, [rdi + 8*r11]
               	vpmovzxbd	ymm14, qword ptr [rbx + r11] # ymm14 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	lea	r14, [rsi + 8*rsi]
               	lea	r11, [r14 + 2*r14]
               	add	r11, rdi
               	add	r11, rsi
               	mov	rbx, r8
               	shr	rbx, 0x1e
               	movabs	rcx, 0x3fffffffc
               	and	rbx, rcx
               	vmovaps	ymm15, ymmword ptr [rbx + r11]
               	mov	r11, r8
               	shl	r11, 0x5
               	and	r11, r12
               	add	r11, rdi
               	vmovaps	ymm0, ymmword ptr [rbx + r11]
               	lea	r11, [rdi + 4*r14]
               	vmovdqa	ymm1, ymmword ptr [rsp + 0xe0]
               	vpsllvd	ymm1, ymm1, ymm14
               	vblendvps	ymm0, ymm0, ymm15, ymm1
               	vmovaps	ymm1, ymmword ptr [rbx + r11]
               	vmovdqa	ymm2, ymmword ptr [rsp + 0x140]
               	vpsllvd	ymm2, ymm2, ymm14
               	vblendvps	ymm1, ymm1, ymm15, ymm2
               	vmovdqa	ymm2, ymmword ptr [rsp + 0x160]
               	vpsllvd	ymm2, ymm2, ymm14
               	vblendvps	ymm1, ymm1, ymm3, ymm2
               	vmovdqa	ymm2, ymmword ptr [rsp + 0x1e0]
               	vpsllvd	ymm2, ymm2, ymm14
               	vblendvps	ymm2, ymm3, ymm5, ymm2
               	vpsllvd	ymm4, ymm6, ymm14
               	vblendvps	ymm2, ymm2, ymm7, ymm4
               	vpsllvd	ymm4, ymm8, ymm14
               	vblendvps	ymm2, ymm2, ymm9, ymm4
               	vpsllvd	ymm4, ymm10, ymm14
               	vblendvps	ymm2, ymm2, ymm11, ymm4
               	vpsllvd	ymm4, ymm12, ymm14
               	vblendvps	ymm2, ymm2, ymm13, ymm4
               	vmulps	ymm0, ymm15, ymm0
               	vmulps	ymm0, ymm0, ymm1
               	vmulps	ymm0, ymm0, ymm2
               	movsxd	r11, r9d
               	mov	rbx, r11
               	shl	rbx, 0x5
               	vmovaps	ymmword ptr [rsp + rbx + 0x260], ymm0
               	mov	r14d, r10d
               	sub	r11d, r10d
               	mov	rbx, r15
               	jb	 <L174>
               	mov	r9d, r9d
               	mov	r10, r9
               	shl	r10, 0x5
               	vmovaps	ymm14, ymmword ptr [rsp + r10 + 0x260]
               	inc	r11d
               	and	r11d, 0x3
               	je	 <L175>
               	lea	rcx, [rsp + 0x240]
               	add	r10, rcx
               	xor	ebx, ebx
               	nop	word ptr cs:[rax + rax]
<L176>:
               	vaddps	ymm14, ymm14, ymmword ptr [r10]
               	vmovaps	ymmword ptr [r10], ymm14
               	inc	rbx
               	add	r10, -0x20
               	cmp	r11, rbx
               	jne	 <L176>
               	mov	r10, r9
               	sub	r10, rbx
               	mov	rbx, r15
               	mov	r11d, r14d
               	sub	r9, r11
               	cmp	r9, 0x3
               	jb	 <L174>
               	jmp	 <L177>
<L175>:
               	mov	r10, r9
               	mov	r11d, r14d
               	sub	r9, r11
               	cmp	r9, 0x3
               	jb	 <L174>
<L177>:
               	mov	r9, r10
               	shl	r9, 0x5
               	lea	rcx, [rsp + 0x240]
               	add	r9, rcx
               	inc	r10
               	nop	dword ptr [rax]
<L178>:
               	vaddps	ymm0, ymm14, ymmword ptr [r9]
               	vmovaps	ymmword ptr [r9], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [r9 - 0x20]
               	vmovaps	ymmword ptr [r9 - 0x20], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [r9 - 0x40]
               	vmovaps	ymmword ptr [r9 - 0x40], ymm0
               	vaddps	ymm14, ymm0, ymmword ptr [r9 - 0x60]
               	vmovaps	ymmword ptr [r9 - 0x60], ymm14
               	add	r9, -0x80
               	add	r10, -0x4
               	cmp	r10, r11
               	jg	 <L178>
               	jmp	 <L174>
<L169>:
               	mov	rdi, rsi
               	mov	rbx, qword ptr [rsp + 0x118]
               	jmp	 <L171>
<L173>:
               	cmp	r14d, 0x2
               	mov	rbx, qword ptr [rsp + 0x118]
               	jb	 <L171>
               	mov	eax, r14d
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x240]
               	test	r14b, 0x1
               	jne	 <L179>
               	dec	rax
               	lea	rdx, [rsp + 0x260]
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L179>:
               	cmp	r14d, 0x2
               	je	 <L171>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	lea	rdx, [rsp + 0x260]
               	add	rax, rdx
               	add	rax, -0x40
               	nop	dword ptr [rax + rax]
<L180>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L180>
<L171>:
               	vmovaps	xmm0, xmmword ptr [rsp + 0x270]
               	vaddps	xmm0, xmm0, xmmword ptr [rsp + 0x260]
               	vmovaps	xmmword ptr [rsp + 0xe0], xmm0
               	vzeroupper
               	call	 <free@plt>
               	cmp	ebx, 0x2a
               	jne	 <L181>
               	cmp	dword ptr [rsp + 0x180], 0x186a0
               	jne	 <L181>
               	vmovaps	xmm1, xmmword ptr [rsp + 0xe0]
               	vshufps	xmm0, xmm1, xmm1, 0xd7  # xmm0 = xmm1[3,1,1,3]
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <free+0x8ec>
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
               	ret
<L182>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0xe0], xmm0
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0xe0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <free+0x51c0>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <free+0x51a0>
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
