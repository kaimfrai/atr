
build/Evaluation/bin/TagReplication:	file format elf64-x86-64

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
               	call	qword ptr  <__libc_start_main+0x6498>
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
               	mov	rax, qword ptr  <__libc_start_main+0x64a8>
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
               	mov	rax, qword ptr  <__libc_start_main+0x64b0>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x64b8>
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

<initializer for module Evaluation.TagReplication.Tag>:
<initializer for module Evaluation.TagReplication.Cube>:
<initializer for module Evaluation.TagReplication.Cuboid>:
<initializer for module Evaluation.TagReplication.Square>:
<initializer for module Evaluation.TagReplication.Rectangle>:
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

<initializer for module Evaluation.TagReplication.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW6Circle__in_chrg>
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

<initializer for module Evaluation.TagReplication.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW7Ellipse__in_chrg>
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

<initializer for module Evaluation.TagReplication.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW8Triangle__in_chrg>
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

<initializer for module Evaluation.TagReplication.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW7Pyramid__in_chrg>
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

<initializer for module Evaluation.TagReplication.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW6Sphere__in_chrg>
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

<initializer for module Evaluation.TagReplication.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW8Cylinder__in_chrg>
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

<initializer for module Evaluation.TagReplication.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW4Cone__in_chrg>
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

<initializer for module Evaluation.TagReplication.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW9Ellipsoid__in_chrg>
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

<initializer for module Evaluation.TagReplication.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14TagReplicationW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14TagReplicationW4Head__in_chrg>
               	call	 <initializer for module Evaluation.TagReplication.Sphere>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
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

<_GLOBAL__sub_I_TagReplication.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Evaluation.Dependency.RandomAccessIteratorBase>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.TagReplication.Circle>
               	call	 <initializer for module Evaluation.TagReplication.Ellipse>
               	call	 <initializer for module Std>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.TagReplication.Triangle>
               	call	 <initializer for module Std>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.TagReplication.Pyramid>
               	call	 <initializer for module Evaluation.TagReplication.Sphere>
               	call	 <initializer for module Evaluation.TagReplication.Cylinder>
               	call	 <initializer for module Evaluation.TagReplication.Cone>
               	call	 <initializer for module Evaluation.TagReplication.Ellipsoid>
               	call	 <initializer for module Evaluation.TagReplication.Head>
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
               	sub	rsp, 0x3c8
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r12d, byte ptr [rcx]
               	add	r12d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	dword ptr [rax]
<L1>:
               	lea	esi, [r12 + 4*r12]
               	movsx	edx, dl
               	lea	r12d, [rdx + 2*rsi]
               	add	r12d, -0x30
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	ecx, byte ptr [rax]
               	add	ecx, -0x30
               	movzx	edx, byte ptr [rax + 0x1]
               	test	dl, dl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	ecx, [rcx + 4*rcx]
               	movsx	edx, dl
               	lea	ecx, [rdx + 2*rcx]
               	add	ecx, -0x30
               	movzx	edx, byte ptr [rax]
               	inc	rax
               	test	dl, dl
               	jne	 <L3>
<L2>:
               	movabs	r14, 0x180ec6d33cfd0aba
               	mov	ecx, ecx
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x2e8], rcx
               	lea	rdi, [rcx + 8*rax]
               	mov	rsi, qword ptr  <__libc_start_main+0x64c0>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0xa0], rax
               	movsxd	rax, r12d
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <__libc_start_main+0x940>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	vextracti128	xmm3, ymm2, 0x1
               	vpermq	ymm2, ymm2, 0xe9        # ymm2 = ymm2[1,2,2,3]
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpextrq	rax, xmm3, 0x1
               	shr	rax, 0x1e
               	vpermq	ymm2, ymm2, 0xd0        # ymm2 = ymm2[0,0,1,3]
               	vpblendd	ymm0, ymm2, ymm0, 0x3   # ymm0 = ymm0[0,1],ymm2[2,3,4,5,6,7]
               	vmovq	xmm2, rax
               	vpbroadcastq	ymm2, xmm2
               	vpblendd	ymm0, ymm0, ymm2, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm2[6,7]
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0x9a0>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0x988>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0x990>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0x998>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm5, ymm1, ymm0
               	vmovq	rdi, xmm5
               	vpextrq	r10, xmm5, 0x1
               	vextracti128	xmm0, ymm5, 0x1
               	vmovq	r8, xmm0
               	vpextrq	r9, xmm0, 0x1
               	xor	r13d, r13d
               	xor	r15d, r15d
               	xor	eax, eax
               	xor	r11d, r11d
               	xor	ecx, ecx
               	mov	rdx, r10
               	mov	qword ptr [rsp + 0x50], r10
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, rdx
               	rol	r9, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L5>
<L4>:
               	bt	r14, rcx
               	jae	 <L6>
               	xor	rax, rdi
               	xor	r13, r10
               	xor	r15, r8
               	xor	r11, r9
               	jmp	 <L6>
<L5>:
               	movabs	rcx, -0x2a59ed990f36c6d4
               	xor	edx, edx
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
<L9>:
               	mov	rsi, r10
               	shl	rsi, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, rsi
               	rol	r9, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L8>
<L7>:
               	bt	rcx, rdx
               	jae	 <L9>
               	xor	rax, rdi
               	xor	r13, r10
               	xor	r15, r8
               	xor	r11, r9
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x228], r11
               	mov	qword ptr [rsp + 0x350], rax
               	movabs	rdx, -0x56a7d9e71fc03656
               	xor	esi, esi
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
<L12>:
               	mov	r11, r10
               	shl	r11, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, r11
               	rol	r9, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L11>
<L10>:
               	bt	rdx, rsi
               	mov	rax, qword ptr [rsp + 0x350]
               	jae	 <L12>
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x350], rax
               	xor	r13, r10
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x228], r9
               	jmp	 <L12>
<L11>:
               	movabs	rsi, 0x39abdc4529b1661c
               	xor	r11d, r11d
               	jmp	 <L13>
               	nop	dword ptr [rax + rax]
<L15>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, rbx
               	rol	r9, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L14>
<L13>:
               	bt	rsi, r11
               	jae	 <L15>
               	xor	qword ptr [rsp + 0x350], rdi
               	xor	r13, r10
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x228], r9
               	jmp	 <L15>
<L14>:
               	xor	eax, eax
               	xor	edi, edi
               	mov	qword ptr [rsp], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x200], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x330], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x228]
               	mov	r8, r15
               	mov	r9, r13
               	mov	r10, qword ptr [rsp + 0x350]
               	jmp	 <L16>
               	nop	dword ptr [rax + rax]
<L18>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L17>
<L16>:
               	bt	r14, r11
               	jae	 <L18>
               	xor	rax, r10
               	xor	qword ptr [rsp], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x330], rdi
               	jmp	 <L18>
<L17>:
               	xor	r11d, r11d
               	jmp	 <L19>
               	nop	word ptr [rax + rax]
<L21>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L20>
<L19>:
               	bt	rcx, r11
               	jae	 <L21>
               	xor	rax, r10
               	xor	qword ptr [rsp], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x330], rdi
               	jmp	 <L21>
<L20>:
               	xor	r11d, r11d
               	jmp	 <L22>
               	nop	word ptr [rax + rax]
<L24>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L23>
<L22>:
               	bt	rdx, r11
               	jae	 <L24>
               	xor	rax, r10
               	xor	qword ptr [rsp], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x330], rdi
               	jmp	 <L24>
<L23>:
               	xor	r11d, r11d
               	jmp	 <L25>
               	nop	word ptr [rax + rax]
<L27>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L26>
<L25>:
               	bt	rsi, r11
               	jae	 <L27>
               	xor	rax, r10
               	xor	qword ptr [rsp], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x330], rdi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x230], r13
               	mov	qword ptr [rsp + 0x2f0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1f8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	xor	ebp, ebp
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x330]
               	mov	r8, qword ptr [rsp + 0x200]
               	mov	r9, qword ptr [rsp]
               	mov	r10, qword ptr [rsp + 0x2f0]
               	jmp	 <L28>
<L30>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L29>
<L28>:
               	bt	r14, r11
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x1f8], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	jmp	 <L30>
<L29>:
               	xor	r11d, r11d
               	jmp	 <L31>
               	nop	dword ptr [rax + rax]
<L33>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L32>
<L31>:
               	bt	rcx, r11
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1f8], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	jmp	 <L33>
<L32>:
               	xor	r11d, r11d
               	jmp	 <L34>
               	nop	dword ptr [rax + rax]
<L36>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L35>
<L34>:
               	bt	rdx, r11
               	jae	 <L36>
               	xor	qword ptr [rsp + 0x1f8], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	jmp	 <L36>
<L35>:
               	xor	r11d, r11d
               	jmp	 <L37>
               	nop	dword ptr [rax + rax]
<L39>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L38>
<L37>:
               	bt	rsi, r11
               	jae	 <L39>
               	xor	qword ptr [rsp + 0x1f8], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x1f0], rdi
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1f0]
               	mov	r8, rbp
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	r10, qword ptr [rsp + 0x1f8]
               	jmp	 <L40>
               	nop	word ptr cs:[rax + rax]
<L42>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L41>
<L40>:
               	bt	r14, r11
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x1e0], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	jmp	 <L42>
<L41>:
               	xor	r11d, r11d
               	jmp	 <L43>
               	nop	dword ptr [rax]
<L45>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L44>
<L43>:
               	bt	rcx, r11
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x1e0], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	jmp	 <L45>
<L44>:
               	xor	r11d, r11d
               	jmp	 <L46>
               	nop	dword ptr [rax]
<L48>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L47>
<L46>:
               	bt	rdx, r11
               	jae	 <L48>
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x1e0], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	jmp	 <L48>
<L47>:
               	xor	r11d, r11d
               	jmp	 <L49>
               	nop	dword ptr [rax]
<L51>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L50>
<L49>:
               	bt	rsi, r11
               	jae	 <L51>
               	xor	qword ptr [rsp + 0x1e8], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x1e0], r8
               	xor	qword ptr [rsp + 0x1d8], rdi
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x38], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1d8]
               	mov	r8, qword ptr [rsp + 0x1e0]
               	mov	r9, qword ptr [rsp + 0x40]
               	mov	r10, qword ptr [rsp + 0x1e8]
               	jmp	 <L52>
               	nop
<L54>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L53>
<L52>:
               	bt	r14, r11
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x1d0], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x1c8], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	jmp	 <L54>
<L53>:
               	xor	r11d, r11d
               	jmp	 <L55>
               	nop	dword ptr [rax]
<L57>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L56>
<L55>:
               	bt	rcx, r11
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1d0], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x1c8], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	jmp	 <L57>
<L56>:
               	xor	r11d, r11d
               	jmp	 <L58>
               	nop	dword ptr [rax]
<L60>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L59>
<L58>:
               	bt	rdx, r11
               	jae	 <L60>
               	xor	qword ptr [rsp + 0x1d0], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x1c8], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	jmp	 <L60>
<L59>:
               	xor	r11d, r11d
               	jmp	 <L61>
               	nop	dword ptr [rax]
<L63>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L62>
<L61>:
               	bt	rsi, r11
               	jae	 <L63>
               	xor	qword ptr [rsp + 0x1d0], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x1c8], r8
               	xor	qword ptr [rsp + 0x1c0], rdi
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x30], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1c0]
               	mov	r8, qword ptr [rsp + 0x1c8]
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	r10, qword ptr [rsp + 0x1d0]
               	jmp	 <L64>
               	nop
<L66>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L65>
<L64>:
               	bt	r14, r11
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x1b8], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x1b0], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	jmp	 <L66>
<L65>:
               	xor	r11d, r11d
               	jmp	 <L67>
               	nop	dword ptr [rax]
<L69>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L68>
<L67>:
               	bt	rcx, r11
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x1b8], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x1b0], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	jmp	 <L69>
<L68>:
               	xor	r11d, r11d
               	jmp	 <L70>
               	nop	dword ptr [rax]
<L72>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L71>
<L70>:
               	bt	rdx, r11
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x1b8], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x1b0], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	jmp	 <L72>
<L71>:
               	xor	r11d, r11d
               	jmp	 <L73>
               	nop	dword ptr [rax]
<L75>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L74>
<L73>:
               	bt	rsi, r11
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x1b8], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x1b0], r8
               	xor	qword ptr [rsp + 0x1a8], rdi
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x28], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x198], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	mov	r8, qword ptr [rsp + 0x1b0]
               	mov	r9, qword ptr [rsp + 0x30]
               	mov	r10, qword ptr [rsp + 0x1b8]
               	jmp	 <L76>
               	nop
<L78>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L77>
<L76>:
               	bt	r14, r11
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x1a0], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x198], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	jmp	 <L78>
<L77>:
               	xor	r11d, r11d
               	jmp	 <L79>
               	nop	dword ptr [rax]
<L81>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L80>
<L79>:
               	bt	rcx, r11
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x1a0], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x198], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	jmp	 <L81>
<L80>:
               	xor	r11d, r11d
               	jmp	 <L82>
               	nop	dword ptr [rax]
<L84>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L83>
<L82>:
               	bt	rdx, r11
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x1a0], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x198], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	jmp	 <L84>
<L83>:
               	xor	r11d, r11d
               	jmp	 <L85>
               	nop	dword ptr [rax]
<L87>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L86>
<L85>:
               	bt	rsi, r11
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x1a0], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x198], r8
               	xor	qword ptr [rsp + 0x190], rdi
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x188], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x180], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x190]
               	mov	r8, qword ptr [rsp + 0x198]
               	mov	r9, qword ptr [rsp + 0x28]
               	mov	r10, qword ptr [rsp + 0x1a0]
               	jmp	 <L88>
               	nop	word ptr cs:[rax + rax]
<L90>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L89>
<L88>:
               	bt	r14, r11
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x188], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x180], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	jmp	 <L90>
<L89>:
               	xor	r11d, r11d
               	jmp	 <L91>
<L93>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L92>
<L91>:
               	bt	rcx, r11
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x188], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x180], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	jmp	 <L93>
<L92>:
               	xor	r11d, r11d
               	jmp	 <L94>
<L96>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L95>
<L94>:
               	bt	rdx, r11
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x188], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x180], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	jmp	 <L96>
<L95>:
               	xor	r11d, r11d
               	jmp	 <L97>
<L99>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L98>
<L97>:
               	bt	rsi, r11
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x188], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0x180], r8
               	xor	qword ptr [rsp + 0x178], rdi
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x170], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x178]
               	mov	r8, qword ptr [rsp + 0x180]
               	mov	r9, qword ptr [rsp + 0x88]
               	mov	r10, qword ptr [rsp + 0x188]
               	jmp	 <L100>
               	nop	word ptr cs:[rax + rax]
<L102>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L101>
<L100>:
               	bt	r14, r11
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x170], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x168], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	jmp	 <L102>
<L101>:
               	xor	r11d, r11d
               	jmp	 <L103>
               	nop	dword ptr [rax]
<L105>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L104>
<L103>:
               	bt	rcx, r11
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x170], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x168], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	jmp	 <L105>
<L104>:
               	xor	r11d, r11d
               	jmp	 <L106>
               	nop	dword ptr [rax]
<L108>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L107>
<L106>:
               	bt	rdx, r11
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x170], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x168], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	jmp	 <L108>
<L107>:
               	xor	r11d, r11d
               	jmp	 <L109>
               	nop	dword ptr [rax]
<L111>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L110>
<L109>:
               	bt	rsi, r11
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x170], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x168], r8
               	xor	qword ptr [rsp + 0x160], rdi
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x18], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x160]
               	mov	r8, qword ptr [rsp + 0x168]
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	r10, qword ptr [rsp + 0x170]
               	jmp	 <L112>
               	nop
<L114>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L113>
<L112>:
               	bt	r14, r11
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x158], r10
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x150], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	jmp	 <L114>
<L113>:
               	xor	r11d, r11d
               	jmp	 <L115>
               	nop	dword ptr [rax]
<L117>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L116>
<L115>:
               	bt	rcx, r11
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x158], r10
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x150], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	jmp	 <L117>
<L116>:
               	xor	r11d, r11d
               	jmp	 <L118>
               	nop	dword ptr [rax]
<L120>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L119>
<L118>:
               	bt	rdx, r11
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x158], r10
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x150], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	jmp	 <L120>
<L119>:
               	xor	r11d, r11d
               	jmp	 <L121>
               	nop	dword ptr [rax]
<L123>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L122>
<L121>:
               	bt	rsi, r11
               	jae	 <L123>
               	xor	qword ptr [rsp + 0x158], r10
               	xor	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0x150], r8
               	xor	qword ptr [rsp + 0x148], rdi
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x140], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x10], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x148]
               	mov	r8, qword ptr [rsp + 0x150]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	r10, qword ptr [rsp + 0x158]
               	jmp	 <L124>
               	nop
<L126>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L125>
<L124>:
               	bt	r14, r11
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x140], r10
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x138], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	jmp	 <L126>
<L125>:
               	xor	r11d, r11d
               	jmp	 <L127>
               	nop	dword ptr [rax]
<L129>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L128>
<L127>:
               	bt	rcx, r11
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x140], r10
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x138], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	jmp	 <L129>
<L128>:
               	xor	r11d, r11d
               	jmp	 <L130>
               	nop	dword ptr [rax]
<L132>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L131>
<L130>:
               	bt	rdx, r11
               	jae	 <L132>
               	xor	qword ptr [rsp + 0x140], r10
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x138], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	jmp	 <L132>
<L131>:
               	xor	r11d, r11d
               	jmp	 <L133>
               	nop	dword ptr [rax]
<L135>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L134>
<L133>:
               	bt	rsi, r11
               	jae	 <L135>
               	xor	qword ptr [rsp + 0x140], r10
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x138], r8
               	xor	qword ptr [rsp + 0x130], rdi
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x128], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x130]
               	mov	r8, qword ptr [rsp + 0x138]
               	mov	r9, qword ptr [rsp + 0x10]
               	mov	r10, qword ptr [rsp + 0x140]
               	jmp	 <L136>
               	nop
<L138>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L137>
<L136>:
               	bt	r14, r11
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x128], r10
               	xor	qword ptr [rsp + 0x8], r9
               	xor	qword ptr [rsp + 0x120], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	jmp	 <L138>
<L137>:
               	xor	r11d, r11d
               	jmp	 <L139>
               	nop	dword ptr [rax]
<L141>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L140>
<L139>:
               	bt	rcx, r11
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x128], r10
               	xor	qword ptr [rsp + 0x8], r9
               	xor	qword ptr [rsp + 0x120], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	jmp	 <L141>
<L140>:
               	xor	r11d, r11d
               	jmp	 <L142>
               	nop	dword ptr [rax]
<L144>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L143>
<L142>:
               	bt	rdx, r11
               	jae	 <L144>
               	xor	qword ptr [rsp + 0x128], r10
               	xor	qword ptr [rsp + 0x8], r9
               	xor	qword ptr [rsp + 0x120], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	jmp	 <L144>
<L143>:
               	xor	r11d, r11d
               	jmp	 <L145>
               	nop	dword ptr [rax]
<L147>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L146>
<L145>:
               	bt	rsi, r11
               	jae	 <L147>
               	xor	qword ptr [rsp + 0x128], r10
               	xor	qword ptr [rsp + 0x8], r9
               	xor	qword ptr [rsp + 0x120], r8
               	xor	qword ptr [rsp + 0x118], rdi
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x110], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x80], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x118]
               	mov	r8, qword ptr [rsp + 0x120]
               	mov	r9, qword ptr [rsp + 0x8]
               	mov	r10, qword ptr [rsp + 0x128]
               	jmp	 <L148>
               	nop	word ptr cs:[rax + rax]
<L150>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L149>
<L148>:
               	bt	r14, r11
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	jmp	 <L150>
<L149>:
               	xor	r11d, r11d
               	jmp	 <L151>
<L153>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L152>
<L151>:
               	bt	rcx, r11
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	jmp	 <L153>
<L152>:
               	xor	r11d, r11d
               	jmp	 <L154>
<L156>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L155>
<L154>:
               	bt	rdx, r11
               	jae	 <L156>
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	jmp	 <L156>
<L155>:
               	xor	r11d, r11d
               	jmp	 <L157>
<L159>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L158>
<L157>:
               	bt	rsi, r11
               	jae	 <L159>
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x78], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x100]
               	mov	r8, qword ptr [rsp + 0x108]
               	mov	r9, qword ptr [rsp + 0x80]
               	mov	r10, qword ptr [rsp + 0x110]
               	jmp	 <L160>
               	nop	word ptr cs:[rax + rax]
<L162>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L161>
<L160>:
               	bt	r14, r11
               	jae	 <L162>
               	xor	qword ptr [rsp + 0xf8], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	jmp	 <L162>
<L161>:
               	xor	r11d, r11d
               	jmp	 <L163>
               	nop	dword ptr [rax]
<L165>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L164>
<L163>:
               	bt	rcx, r11
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xf8], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	jmp	 <L165>
<L164>:
               	xor	r11d, r11d
               	jmp	 <L166>
               	nop	dword ptr [rax]
<L168>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L167>
<L166>:
               	bt	rdx, r11
               	jae	 <L168>
               	xor	qword ptr [rsp + 0xf8], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	jmp	 <L168>
<L167>:
               	xor	r11d, r11d
               	jmp	 <L169>
               	nop	dword ptr [rax]
<L171>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L170>
<L169>:
               	bt	rsi, r11
               	jae	 <L171>
               	xor	qword ptr [rsp + 0xf8], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x210], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x70], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xe8]
               	mov	r8, qword ptr [rsp + 0xf0]
               	mov	r9, qword ptr [rsp + 0x78]
               	mov	r10, qword ptr [rsp + 0xf8]
               	jmp	 <L172>
               	nop
<L174>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L173>
<L172>:
               	bt	r14, r11
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x210], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L174>
<L173>:
               	xor	r11d, r11d
               	jmp	 <L175>
               	nop	dword ptr [rax]
<L177>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L176>
<L175>:
               	bt	rcx, r11
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x210], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L177>
<L176>:
               	xor	r11d, r11d
               	jmp	 <L178>
               	nop	dword ptr [rax]
<L180>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L179>
<L178>:
               	bt	rdx, r11
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x210], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L180>
<L179>:
               	xor	r11d, r11d
               	jmp	 <L181>
               	nop	dword ptr [rax]
<L183>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L182>
<L181>:
               	bt	rsi, r11
               	jae	 <L183>
               	xor	qword ptr [rsp + 0x210], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x208], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x68], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xd8]
               	mov	r8, qword ptr [rsp + 0xe0]
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	r10, qword ptr [rsp + 0x210]
               	jmp	 <L184>
               	nop
<L186>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L185>
<L184>:
               	bt	r14, r11
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	jmp	 <L186>
<L185>:
               	xor	r11d, r11d
               	jmp	 <L187>
               	nop	dword ptr [rax]
<L189>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L188>
<L187>:
               	bt	rcx, r11
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	jmp	 <L189>
<L188>:
               	xor	r11d, r11d
               	jmp	 <L190>
               	nop	dword ptr [rax]
<L192>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L191>
<L190>:
               	bt	rdx, r11
               	jae	 <L192>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	jmp	 <L192>
<L191>:
               	xor	r11d, r11d
               	jmp	 <L193>
               	nop	dword ptr [rax]
<L195>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L194>
<L193>:
               	bt	rsi, r11
               	jae	 <L195>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	qword ptr [rsp + 0xc8], rdi
               	jmp	 <L195>
<L194>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x98], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x60], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xc8]
               	mov	r8, qword ptr [rsp + 0xd0]
               	mov	r9, qword ptr [rsp + 0x68]
               	mov	r10, qword ptr [rsp + 0x208]
               	jmp	 <L196>
               	nop
<L198>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L197>
<L196>:
               	bt	r14, r11
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x98], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	jmp	 <L198>
<L197>:
               	xor	r11d, r11d
               	jmp	 <L199>
               	nop	dword ptr [rax]
<L201>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L200>
<L199>:
               	bt	rcx, r11
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x98], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	jmp	 <L201>
<L200>:
               	xor	r11d, r11d
               	jmp	 <L202>
               	nop	dword ptr [rax]
<L204>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L203>
<L202>:
               	bt	rdx, r11
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x98], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	jmp	 <L204>
<L203>:
               	xor	r11d, r11d
               	jmp	 <L205>
               	nop	dword ptr [rax]
<L207>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L206>
<L205>:
               	bt	rsi, r11
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x98], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	jmp	 <L207>
<L206>:
               	mov	rbx, r12
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x90], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x58], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xb8]
               	mov	r8, qword ptr [rsp + 0xc0]
               	mov	r9, qword ptr [rsp + 0x60]
               	mov	r10, qword ptr [rsp + 0x98]
               	mov	r12, r14
               	jmp	 <L208>
               	nop	word ptr cs:[rax + rax]
<L210>:
               	mov	r14, r9
               	shl	r14, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	mov	r14, r12
               	je	 <L209>
<L208>:
               	bt	r14, r11
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x90], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L210>
<L209>:
               	xor	r11d, r11d
               	jmp	 <L211>
<L213>:
               	mov	r14, r9
               	shl	r14, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L212>
<L211>:
               	bt	rcx, r11
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x90], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L213>
<L212>:
               	xor	r11d, r11d
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
               	mov	r14, r9
               	shl	r14, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L215>
<L214>:
               	bt	rdx, r11
               	jae	 <L216>
               	xor	qword ptr [rsp + 0x90], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L216>
<L215>:
               	xor	r11d, r11d
               	jmp	 <L217>
               	nop	dword ptr [rax]
<L219>:
               	mov	r14, r9
               	shl	r14, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L218>
<L217>:
               	bt	rsi, r11
               	jae	 <L219>
               	xor	qword ptr [rsp + 0x90], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x328], r15
               	mov	qword ptr [rsp + 0x300], rbx
               	xor	r14d, r14d
               	xor	r13d, r13d
               	xor	r15d, r15d
               	xor	eax, eax
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xa8]
               	mov	r8, qword ptr [rsp + 0xb0]
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	r10, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x220], rbp
               	jmp	 <L220>
               	nop	dword ptr [rax]
<L222>:
               	mov	rbp, r9
               	shl	rbp, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbp
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L221>
<L220>:
               	bt	r12, r11
               	jae	 <L222>
               	xor	r14, r10
               	xor	r13, r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L222>
<L221>:
               	xor	r11d, r11d
               	jmp	 <L223>
               	nop	dword ptr [rax]
<L225>:
               	mov	rbp, r9
               	shl	rbp, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbp
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L224>
<L223>:
               	bt	rcx, r11
               	jae	 <L225>
               	xor	r14, r10
               	xor	r13, r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L225>
<L224>:
               	xor	ecx, ecx
               	jmp	 <L226>
               	nop	dword ptr [rax + rax]
<L228>:
               	mov	r11, r9
               	shl	r11, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r11
               	rol	rdi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L227>
<L226>:
               	bt	rdx, rcx
               	jae	 <L228>
               	xor	r14, r10
               	xor	r13, r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L228>
<L227>:
               	xor	ecx, ecx
               	mov	r11, qword ptr [rsp + 0x350]
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rdx, r9
               	shl	rdx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rdx
               	rol	rdi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L230>
<L229>:
               	bt	rsi, rcx
               	jae	 <L231>
               	xor	r14, r10
               	xor	r13, r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x320], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x240], rax
               	mov	rcx, qword ptr [rsp + 0x230]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x248], rcx
               	mov	rsi, qword ptr [rsp]
               	lea	rcx, [rsi + 4*rsi]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x48]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x250], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x258], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x260], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x268], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x28]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x270], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	rcx, qword ptr [rsp + 0x88]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x280], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x288], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x10]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x290], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a0], rcx
               	mov	rcx, qword ptr [rsp + 0x80]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	rcx, qword ptr [rsp + 0x78]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x70]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2b0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rcx, qword ptr [rsp + 0x68]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c0], rcx
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [4*r13]
               	add	rdx, r13
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2d0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	rdx, qword ptr [rsp + 0x2e8]
               	test	rdx, rdx
               	je	 <L232>
               	mov	qword ptr [rsp], rsi
               	mov	qword ptr [rsp + 0x318], r15
               	lea	rcx, [8*rdx]
               	lea	r12, [rcx + 4*rcx]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	add	r12, rcx
               	mov	esi, edx
               	neg	esi
               	xor	ebp, ebp
               	mov	edi, 0x1
               	vpbroadcastq	ymm6, qword ptr  <__libc_start_main+0x980>
               	vpbroadcastw	xmm7, word ptr  <__libc_start_main+0x9c0>
               	lea	rbx,  <__libc_start_main+0x9c4>
               	mov	r9, rcx
               	mov	r10, qword ptr [rsp + 0x330]
               	mov	r8, qword ptr [rsp + 0x220]
               	mov	qword ptr [rsp + 0x310], r12
               	mov	qword ptr [rsp + 0x308], rsi
               	vmovdqu	ymmword ptr [rsp + 0x380], ymm6
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L240>:
               	vpermq	ymm0, ymm5, 0xe3        # ymm0 = ymm5[3,0,2,3]
               	vpermq	ymm1, ymm5, 0xe9        # ymm1 = ymm5[1,2,2,3]
               	vpextrq	rax, xmm5, 0x1
               	shl	rax, 0x11
               	vpxor	xmm2, xmm1, xmm0
               	vpextrq	rcx, xmm2, 0x1
               	vpxor	xmm0, xmm2, xmm5
               	xor	rcx, rax
               	vmovq	xmm1, rcx
               	vmovq	rax, xmm2
               	rol	rax, 0x2d
               	vmovq	xmm2, rax
               	mov	rdx, qword ptr [rsp + 0x230]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x328]
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x2f8], rdi
               	mov	rdi, qword ptr [rsp + 0x228]
               	xor	rdi, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x230], rdx
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x350], r11
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x328], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x228], rdi
               	mov	rsi, qword ptr [rsp]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2f0]
               	mov	rdx, qword ptr [rsp + 0x200]
               	xor	rdx, rcx
               	xor	r10, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp], rsi
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x2f0], rcx
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x330], r10
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x200], rdx
               	mov	rsi, qword ptr [rsp + 0x48]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1f8]
               	xor	r8, rdx
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	xor	rcx, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x48], rsi
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x1f8], rdx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x220], r8
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1f0], rcx
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1e8]
               	mov	rbx, qword ptr [rsp + 0x1e0]
               	xor	rbx, rcx
               	mov	dword ptr [rsp + 0x21c], ebp
               	mov	rbp, qword ptr [rsp + 0x1d8]
               	xor	rbp, rdx
               	xor	rdx, rbx
               	mov	qword ptr [rsp + 0x40], rdx
               	xor	rcx, rbp
               	mov	qword ptr [rsp + 0x1e8], rcx
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0x1e0], rbx
               	rol	rbp, 0x2d
               	mov	qword ptr [rsp + 0x1d8], rbp
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	mov	rbp, qword ptr [rsp + 0x1c8]
               	xor	rbp, rcx
               	mov	r11, qword ptr [rsp + 0x1c0]
               	xor	r11, rdx
               	xor	rdx, rbp
               	mov	qword ptr [rsp + 0x38], rdx
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x1d0], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x1c8], rbp
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x1c0], r11
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	rbp, qword ptr [rsp + 0x1b0]
               	xor	rbp, rcx
               	mov	r15, qword ptr [rsp + 0x1a8]
               	xor	r15, rdx
               	xor	rdx, rbp
               	mov	qword ptr [rsp + 0x30], rdx
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x1b8], rcx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x1a8], r15
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x1b0], rbp
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	rbp, qword ptr [rsp + 0x198]
               	xor	rbp, rcx
               	mov	qword ptr [rsp + 0x50], r13
               	mov	r12, qword ptr [rsp + 0x190]
               	xor	r12, rdx
               	xor	rdx, rbp
               	mov	qword ptr [rsp + 0x28], rdx
               	xor	rcx, r12
               	mov	qword ptr [rsp + 0x1a0], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x198], rbp
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x190], r12
               	mov	r12, qword ptr [rsp + 0x88]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x188]
               	mov	rbp, qword ptr [rsp + 0x180]
               	xor	rbp, rcx
               	mov	qword ptr [rsp + 0x238], r14
               	mov	r14, qword ptr [rsp + 0x178]
               	xor	r14, r12
               	xor	r12, rbp
               	xor	rcx, r14
               	mov	qword ptr [rsp + 0x188], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x180], rbp
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x178], r14
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x170]
               	mov	rbp, qword ptr [rsp + 0x168]
               	xor	rbp, rcx
               	mov	rsi, qword ptr [rsp + 0x160]
               	xor	rsi, rdx
               	xor	rdx, rbp
               	mov	qword ptr [rsp + 0x20], rdx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x170], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x168], rbp
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x160], rsi
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x158]
               	mov	rbp, qword ptr [rsp + 0x150]
               	xor	rbp, rcx
               	mov	r8, qword ptr [rsp + 0x148]
               	xor	r8, rdx
               	xor	rdx, rbp
               	mov	qword ptr [rsp + 0x18], rdx
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x158], rcx
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x148], r8
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x150], rbp
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x140]
               	mov	rbp, qword ptr [rsp + 0x138]
               	xor	rbp, rcx
               	mov	r9, qword ptr [rsp + 0x130]
               	xor	r9, rdx
               	xor	rdx, rbp
               	mov	qword ptr [rsp + 0x10], rdx
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x140], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x138], rbp
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x130], r9
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x128]
               	mov	rbp, qword ptr [rsp + 0x120]
               	xor	rbp, rcx
               	mov	r10, qword ptr [rsp + 0x118]
               	xor	r10, rdx
               	xor	rdx, rbp
               	mov	qword ptr [rsp + 0x8], rdx
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x128], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x120], rbp
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x118], r10
               	mov	r15, qword ptr [rsp + 0x80]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x110]
               	mov	rbp, qword ptr [rsp + 0x108]
               	xor	rbp, rcx
               	mov	r13, qword ptr [rsp + 0x100]
               	xor	r13, r15
               	xor	r15, rbp
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x110], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x108], rbp
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x100], r13
               	mov	r13, qword ptr [rsp + 0x78]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xf8]
               	mov	rbp, qword ptr [rsp + 0xf0]
               	xor	rbp, rcx
               	mov	rdi, qword ptr [rsp + 0xe8]
               	xor	rdi, r13
               	xor	r13, rbp
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0xf8], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0xe8], rdi
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0xf0], rbp
               	mov	rbp, qword ptr [rsp + 0x70]
               	mov	rax, rbp
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x210]
               	mov	rcx, qword ptr [rsp + 0xe0]
               	xor	rcx, rdi
               	mov	r14, qword ptr [rsp + 0xd8]
               	xor	r14, rbp
               	xor	rbp, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xe0], rcx
               	mov	r10, qword ptr [rsp + 0x68]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x208]
               	mov	rcx, qword ptr [rsp + 0xd0]
               	xor	rcx, rdi
               	mov	rbx, qword ptr [rsp + 0xc8]
               	xor	rbx, r10
               	xor	r10, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xd0], rcx
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x98]
               	mov	qword ptr [rsp + 0x98], rdx
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	rcx, rdx
               	mov	r11, qword ptr [rsp + 0xb8]
               	xor	r11, r8
               	xor	r8, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xc0], rcx
               	mov	rsi, qword ptr [rsp + 0x58]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x90], rdx
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, rdx
               	mov	r9, qword ptr [rsp + 0xa8]
               	xor	r9, rsi
               	xor	rsi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0x318]
               	xor	rax, qword ptr [rsp + 0x238]
               	mov	rdi, qword ptr [rsp + 0x320]
               	xor	rdi, qword ptr [rsp + 0x50]
               	xor	qword ptr [rsp + 0x50], rax
               	vpextrq	rdx, xmm0, 0x1
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x318], rax
               	lea	rax, [rdx + 4*rdx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x230]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x240], rax
               	mov	qword ptr [rsp + 0x248], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x250], rdx
               	mov	rdx, qword ptr [rsp + 0x40]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x258], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x260], rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x268], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x270], rdx
               	mov	qword ptr [rsp + 0x88], r12
               	lea	rdx, [r12 + 4*r12]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x280], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x288], rcx
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rcx, [rcx + 4*rcx]
               	mov	r12, qword ptr [rsp + 0x50]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x290], rdx
               	mov	rdx, qword ptr [rsp + 0x8]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	qword ptr [rsp + 0x80], r15
               	lea	rcx, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x238]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2a0], rdx
               	mov	qword ptr [rsp + 0x78], r13
               	lea	rdx, [4*r13]
               	add	rdx, r13
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	qword ptr [rsp + 0x70], rbp
               	lea	rcx, [4*rbp]
               	add	rcx, rbp
               	mov	ebp, dword ptr [rsp + 0x21c]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b0], rdx
               	mov	qword ptr [rsp + 0x68], r10
               	lea	rdx, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x330]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	qword ptr [rsp + 0x60], r8
               	lea	rcx, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x220]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2c0], rdx
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	qword ptr [rsp + 0x58], rsi
               	lea	rcx, [rsi + 4*rsi]
               	mov	rsi, qword ptr [rsp + 0x308]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	r13, r12
               	lea	rcx, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x310]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rcx
               	xor	qword ptr [rsp + 0x210], r14
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0xd8], r14
               	vpbroadcastq	ymm1, xmm1
               	xor	qword ptr [rsp + 0x208], rbx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0xc8], rbx
               	lea	rbx,  <__libc_start_main+0x9c4>
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0x98], r11
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0xb8], r11
               	mov	r11, qword ptr [rsp + 0x350]
               	vpbroadcastq	ymm1, xmm2
               	xor	qword ptr [rsp + 0x90], r9
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xa8], r9
               	mov	r9, qword ptr [rsp + 0xa0]
               	vpblendd	ymm5, ymm0, ymm1, 0xc0  # ymm5 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	xor	r15, rdi
               	mov	r14, r15
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x320], rdi
               	mov	rdi, qword ptr [rsp + 0x2f8]
<L243>:
               	lea	ecx, [rsi + rdi]
               	inc	ecx
               	mov	edx, edi
               	inc	edx
               	mov	edi, edx
               	cmp	ecx, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x248]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x268]
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	cmp	al, 0xc
               	ja	 <L235>
               	vpand	ymm0, ymm3, ymm6
               	vpand	ymm1, ymm2, ymm6
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm1, xmm0, xmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x288]
               	vpshufb	xmm0, xmm0, xmm7
               	movzx	eax, al
               	movsxd	rax, dword ptr [rbx + 4*rax]
               	add	rax, rbx
               	jmp	rax
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0x0
               	jmp	 <L236>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0xb
               	jmp	 <L237>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0x4
               	jmp	 <L238>
               	mov	ebx, ebp
               	inc	ebp
               	mov	dword ptr [rsp + 0x21c], ebp
               	lea	rbp, [rbx + 4*rbx]
               	mov	qword ptr [rsp + 0x2f8], rdi
               	mov	edi, 0x20
               	mov	rsi, qword ptr  <__libc_start_main+0x64c0>
               	mov	r15, r11
               	vmovdqu	ymmword ptr [rsp + 0x330], ymm5
               	mov	qword ptr [rsp + 0x220], r8
               	mov	qword ptr [rsp + 0x50], r13
               	mov	qword ptr [rsp + 0x238], r14
               	mov	r14, r10
               	vmovdqu	ymmword ptr [rsp + 0x350], ymm2
               	vmovdqu	ymmword ptr [rsp + 0x3a0], ymm3
               	vmovdqa	xmmword ptr [rsp + 0x370], xmm1
               	vzeroupper
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x3a0]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x350]
               	mov	rdi, qword ptr [rsp + 0x2f8]
               	vpbroadcastw	xmm7, word ptr  <__libc_start_main+0x9c0>
               	vmovdqu	ymm6, ymmword ptr [rsp + 0x380]
               	mov	rsi, qword ptr [rsp + 0x308]
               	mov	r10, r14
               	mov	r14, qword ptr [rsp + 0x238]
               	mov	r12, qword ptr [rsp + 0x310]
               	mov	r13, qword ptr [rsp + 0x50]
               	mov	r8, qword ptr [rsp + 0x220]
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x330]
               	mov	r11, r15
               	mov	r9, qword ptr [rsp + 0xa0]
               	mov	qword ptr [r9 + 8*rbp], rax
               	mov	byte ptr [r12 + rbx], 0xc
               	lea	rbx,  <__libc_start_main+0x9c4>
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x370] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [r9 + 8*rbp + 0x8], ymm0
               	mov	ebp, dword ptr [rsp + 0x21c]
               	vmovups	ymm0, ymmword ptr [rsp + 0x298]
               	vmovups	ymm1, ymmword ptr [rsp + 0x2a8]
               	vinsertf128	ymm1, ymm1, xmmword ptr [rsp + 0x2c8], 0x1
               	vinsertf128	ymm0, ymm0, xmmword ptr [rsp + 0x2b8], 0x1
               	vshufps	ymm0, ymm0, ymm1, 0x88  # ymm0 = ymm0[0,2],ymm1[0,2],ymm0[4,6],ymm1[4,6]
               	vandps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0x960>
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax], ymm0
               	test	dil, 0x7
               	jne	 <L239>
               	jmp	 <L240>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0x9
               	jmp	 <L241>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0x2
               	jmp	 <L238>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0x3
               	jmp	 <L236>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0x7
               	jmp	 <L237>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0x1
<L238>:
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [r9 + 8*rcx], ymm1
               	vpextrb	eax, xmm0, 0x0
               	jmp	 <L242>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0x5
               	jmp	 <L236>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0x6
<L237>:
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [r9 + 8*rcx], ymm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [r9 + 8*rcx + 0x20], xmm0
               	test	dil, 0x7
               	jne	 <L239>
               	jmp	 <L240>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0xa
<L241>:
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vmovups	ymmword ptr [r9 + 8*rcx], ymm1
               	vpextrb	eax, xmm0, 0x1
<L242>:
               	vcvtsi2ss	xmm0, xmm8, eax
               	vmovss	dword ptr [r9 + 8*rcx + 0x20], xmm0
<L235>:
               	test	dil, 0x7
               	jne	 <L239>
               	jmp	 <L240>
               	mov	eax, ebp
               	inc	ebp
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [r12 + rax], 0x8
<L236>:
               	vpmovzxbd	ymm0, xmm1      # ymm0 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [r9 + 8*rcx], ymm0
               	test	dil, 0x7
               	je	 <L240>
<L239>:
               	vpblendd	ymm0, ymm3, ymm2, 0xc0  # ymm0 = ymm3[0,1,2,3,4,5],ymm2[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x240]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x280]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x2a0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x2c0]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x240], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x260], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2a0], ymm0
               	vpsrlq	ymm0, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2c0], ymm0
               	vmovq	rax, xmm1
               	jmp	 <L243>
<L234>:
               	mov	r8d, 0x1
               	mov	rdx, r9
               	xor	edi, edi
               	movzx	ecx, byte ptr [r12]
               	lea	rax,  <__libc_start_main+0x9f8>
               	movsxd	r9, dword ptr [rax + 4*rcx]
               	add	r9, rax
               	mov	rcx, r12
               	mov	esi, 0x1
               	jmp	r9
<L232>:
               	vmovss	xmm0, dword ptr [rsp + 0x240] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rsp], xmm0
               	mov	r14, rdx
               	mov	rdi, qword ptr [rsp + 0xa0]
               	test	rdi, rdi
               	mov	rbx, qword ptr [rsp + 0x300]
               	jne	 <L244>
<L255>:
               	cmp	ebx, 0x2a
               	jne	 <L245>
<L256>:
               	cmp	r14d, 0x186a0
               	jne	 <L245>
               	vmovss	xmm0, dword ptr [rsp]   # xmm0 = mem[0],zero,zero,zero
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0x9b8>
               	je	 <L245>
               	mov	edi, 0x4
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp]   # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x64c8>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
<L265>:
               	cmp	edi, 0x2
               	jb	 <L246>
               	mov	edx, edi
               	vmovss	xmm0, dword ptr [rsp + 4*rdx + 0x23c] # xmm0 = mem[0],zero,zero,zero
               	dec	edi
               	lea	rcx, [rdx - 0x2]
               	and	edi, 0x3
               	je	 <L247>
               	nop	word ptr cs:[rax + rax]
<L248>:
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rdx + 0x238]
               	lea	rax, [rdx - 0x1]
               	vmovss	dword ptr [rsp + 4*rdx + 0x238], xmm0
               	mov	rdx, rax
               	dec	rdi
               	jne	 <L248>
               	cmp	rcx, 0x3
               	jae	 <L249>
               	jmp	 <L246>
<L247>:
               	mov	rax, rdx
               	cmp	rcx, 0x3
               	jb	 <L246>
<L249>:
               	add	rax, -0x2
               	nop	word ptr cs:[rax + rax]
<L250>:
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x240]
               	vmovss	dword ptr [rsp + 4*rax + 0x240], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x23c]
               	vmovss	dword ptr [rsp + 4*rax + 0x23c], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x238]
               	vmovss	dword ptr [rsp + 4*rax + 0x238], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x234]
               	vmovss	dword ptr [rsp + 4*rax + 0x234], xmm0
               	add	rax, -0x4
               	cmp	rax, -0x3
               	jb	 <L250>
<L246>:
               	vmovss	xmm0, dword ptr [rsp + 0x240] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rsp], xmm0
               	test	ebp, ebp
               	je	 <L251>
               	mov	ebx, ebp
               	xor	r14d, r14d
               	mov	r15, qword ptr [rsp + 0xa0]
               	jmp	 <L252>
               	nop	word ptr cs:[rax + rax]
<L254>:
               	inc	r14
               	add	r15, 0x28
               	cmp	rbx, r14
               	je	 <L253>
<L252>:
               	cmp	byte ptr [r12 + r14], 0xc
               	jne	 <L254>
               	mov	rdi, qword ptr [r15]
               	test	rdi, rdi
               	je	 <L254>
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	jmp	 <L254>
<L253>:
               	mov	rbx, qword ptr [rsp + 0x300]
               	mov	r14, qword ptr [rsp + 0x2e8]
               	mov	rdi, qword ptr [rsp + 0xa0]
               	jmp	 <L244>
<L251>:
               	mov	r14, qword ptr [rsp + 0x2e8]
               	mov	rdi, qword ptr [rsp + 0xa0]
               	test	rdi, rdi
               	mov	rbx, qword ptr [rsp + 0x300]
               	je	 <L255>
<L244>:
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	cmp	ebx, 0x2a
               	je	 <L256>
<L245>:
               	xor	eax, eax
               	add	rsp, 0x3c8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
               	mov	r9d, edi
               	vmovss	xmm0, dword ptr [rdx + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9ac>
               	jmp	 <L257>
               	vmovss	xmm0, dword ptr [rdx + 0x1c] # xmm0 = mem[0],zero,zero,zero
<L262>:
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9ac>
<L258>:
               	mov	r9d, edi
               	vmulss	xmm0, xmm0, dword ptr [rdx + 0x20]
               	jmp	 <L257>
               	mov	r9d, edi
               	vmovss	xmm0, dword ptr [rdx + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdx + 0x1c]
               	jmp	 <L257>
               	mov	r9d, edi
               	vmovss	xmm0, dword ptr [rdx + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	jmp	 <L257>
               	vmovss	xmm0, dword ptr [rdx + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9b4>
               	jmp	 <L258>
               	mov	r9d, edi
               	vmovss	xmm0, dword ptr [rdx + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	jmp	 <L259>
               	vmovss	xmm0, dword ptr [rdx + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdx + 0x1c]
               	jmp	 <L260>
               	vmovss	xmm0, dword ptr [rdx + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9b0>
<L263>:
               	vmulss	xmm0, xmm0, dword ptr [rdx + 0x20]
<L260>:
               	mov	r9d, edi
               	vmulss	xmm0, xmm0, dword ptr [rdx + 0x24]
               	jmp	 <L257>
               	mov	r9d, edi
               	vmovss	xmm0, dword ptr [rdx + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	jmp	 <L261>
               	vmovss	xmm0, dword ptr [rdx + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	jmp	 <L262>
               	vmovss	xmm0, dword ptr [rdx + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9a8>
               	jmp	 <L258>
               	vmovss	xmm0, dword ptr [rdx + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9bc>
               	jmp	 <L263>
               	mov	r9d, edi
               	vmovss	xmm0, dword ptr [rdx + 0x24] # xmm0 = mem[0],zero,zero,zero
<L261>:
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x9bc>
<L259>:
               	vmulss	xmm0, xmm1, xmm0
<L257>:
               	mov	edi, r8d
               	movsxd	r10, r9d
               	vmovss	dword ptr [rsp + 4*r10 + 0x240], xmm0
               	sub	r10d, r8d
               	jae	 <L264>
<L268>:
               	add	rdx, 0x28
               	cmp	rdx, r12
               	je	 <L265>
               	inc	rcx
               	inc	esi
               	popcnt	r8d, esi
               	movzx	r9d, byte ptr [rcx]
               	movsxd	r9, dword ptr [rax + 4*r9]
               	add	r9, rax
               	jmp	r9
<L264>:
               	mov	ebx, r9d
               	mov	r8d, edi
               	vmovss	xmm0, dword ptr [rsp + 4*rbx + 0x240] # xmm0 = mem[0],zero,zero,zero
               	inc	r10d
               	mov	r11, rbx
               	sub	r11, r8
               	and	r10d, 0x3
               	je	 <L266>
<L267>:
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rbx + 0x23c]
               	lea	r9, [rbx - 0x1]
               	vmovss	dword ptr [rsp + 4*rbx + 0x23c], xmm0
               	mov	rbx, r9
               	dec	r10
               	jne	 <L267>
               	cmp	r11, 0x3
               	jb	 <L268>
               	jmp	 <L269>
<L266>:
               	mov	r9, rbx
               	cmp	r11, 0x3
               	jb	 <L268>
<L269>:
               	inc	r9
               	nop	word ptr cs:[rax + rax]
<L270>:
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*r9 + 0x238]
               	vmovss	dword ptr [rsp + 4*r9 + 0x238], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*r9 + 0x234]
               	vmovss	dword ptr [rsp + 4*r9 + 0x234], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*r9 + 0x230]
               	vmovss	dword ptr [rsp + 4*r9 + 0x230], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*r9 + 0x22c]
               	vmovss	dword ptr [rsp + 4*r9 + 0x22c], xmm0
               	add	r9, -0x4
               	cmp	r9, r8
               	jg	 <L270>
               	jmp	 <L268>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x64a0>
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
