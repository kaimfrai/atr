
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
               	call	qword ptr  <__libc_start_main+0x6378>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6388>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6390>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x6398>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x3b8
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
               	mov	ecx, ecx
               	mov	eax, ebx
               	mov	qword ptr [rsp + 0x60], rax
               	lea	rax, [rcx + 4*rcx]
               	mov	qword ptr [rsp + 0x228], rcx
               	lea	rdi, [rcx + 8*rax]
               	mov	rsi, qword ptr  <__libc_start_main+0x63a0>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp], rax
               	movsxd	rax, ebx
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <__libc_start_main+0x900>
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
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0x960>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0x948>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0x950>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0x958>
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
               	xor	r12d, r12d
               	xor	r13d, r13d
               	xor	ebp, ebp
               	xor	eax, eax
               	xor	ecx, ecx
               	mov	rdx, r10
               	mov	qword ptr [rsp + 0xa0], r10
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
               	movabs	rdx, 0x180ec6d33cfd0aba
               	bt	rdx, rcx
               	jae	 <L6>
               	xor	rax, rdi
               	xor	rbp, r10
               	xor	r13, r8
               	xor	r12, r9
               	jmp	 <L6>
<L5>:
               	movabs	rcx, -0x2a59ed990f36c6d4
               	mov	rdx, qword ptr [rsp + 0x228]
               	shl	rdx, 0x20
               	mov	qword ptr [rsp + 0x248], rdx
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
               	xor	rbp, r10
               	xor	r13, r8
               	xor	r12, r9
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x330], rax
               	movabs	rdx, -0x56a7d9e71fc03656
               	xor	esi, esi
               	jmp	 <L10>
               	nop	dword ptr [rax]
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
               	mov	rax, qword ptr [rsp + 0x330]
               	jae	 <L12>
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x330], rax
               	xor	rbp, r10
               	xor	r13, r8
               	xor	r12, r9
               	jmp	 <L12>
<L11>:
               	movabs	rsi, 0x39abdc4529b1661c
               	xor	r11d, r11d
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x330], rdi
               	xor	rbp, r10
               	xor	r13, r8
               	xor	r12, r9
               	jmp	 <L15>
<L14>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x310], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x18], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x10], rdi
               	xor	r11d, r11d
               	mov	rdi, r12
               	mov	r8, r13
               	mov	r9, rbp
               	mov	r10, qword ptr [rsp + 0x330]
               	movabs	rax, 0x180ec6d33cfd0aba
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
               	bt	rax, r11
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x18], r10
               	xor	qword ptr [rsp + 0x8], r9
               	xor	qword ptr [rsp + 0x310], r8
               	xor	qword ptr [rsp + 0x10], rdi
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
               	xor	qword ptr [rsp + 0x18], r10
               	xor	qword ptr [rsp + 0x8], r9
               	xor	qword ptr [rsp + 0x310], r8
               	xor	qword ptr [rsp + 0x10], rdi
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
               	xor	qword ptr [rsp + 0x18], r10
               	xor	qword ptr [rsp + 0x8], r9
               	xor	qword ptr [rsp + 0x310], r8
               	xor	qword ptr [rsp + 0x10], rdi
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
               	xor	qword ptr [rsp + 0x18], r10
               	xor	qword ptr [rsp + 0x8], r9
               	xor	qword ptr [rsp + 0x310], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	jmp	 <L27>
<L26>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x208], rax
               	xor	eax, eax
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x200], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x10]
               	mov	r8, qword ptr [rsp + 0x310]
               	mov	r9, qword ptr [rsp + 0x8]
               	mov	r10, qword ptr [rsp + 0x18]
               	jmp	 <L28>
               	nop
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	rax, r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	jmp	 <L30>
<L29>:
               	xor	r11d, r11d
               	jmp	 <L31>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x208], r10
               	xor	rax, r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
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
               	xor	qword ptr [rsp + 0x208], r10
               	xor	rax, r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
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
               	xor	qword ptr [rsp + 0x208], r10
               	xor	rax, r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x58], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1f8]
               	mov	r8, qword ptr [rsp + 0x200]
               	mov	r9, rax
               	mov	r10, qword ptr [rsp + 0x208]
               	jmp	 <L40>
               	nop	dword ptr [rax + rax]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	jmp	 <L42>
<L41>:
               	xor	r11d, r11d
               	jmp	 <L43>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
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
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
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
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x50], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	mov	r8, qword ptr [rsp + 0x1e8]
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	r10, qword ptr [rsp + 0x1f0]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L54>
<L53>:
               	xor	r11d, r11d
               	jmp	 <L55>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
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
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
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
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x48], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	mov	r8, qword ptr [rsp + 0x1d0]
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	r10, qword ptr [rsp + 0x1d8]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L66>
<L65>:
               	xor	r11d, r11d
               	jmp	 <L67>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
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
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
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
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x198], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1b0]
               	mov	r8, qword ptr [rsp + 0x1b8]
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	r10, qword ptr [rsp + 0x1c0]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L78>
<L77>:
               	xor	r11d, r11d
               	jmp	 <L79>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
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
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
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
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x38], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x188], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x180], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x198]
               	mov	r8, qword ptr [rsp + 0x1a0]
               	mov	r9, qword ptr [rsp + 0x40]
               	mov	r10, qword ptr [rsp + 0x1a8]
               	jmp	 <L88>
               	nop
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L90>
<L89>:
               	xor	r11d, r11d
               	jmp	 <L91>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L93>
<L92>:
               	xor	r11d, r11d
               	jmp	 <L94>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L96>
<L95>:
               	xor	r11d, r11d
               	jmp	 <L97>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x30], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x170], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x180]
               	mov	r8, qword ptr [rsp + 0x188]
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	r10, qword ptr [rsp + 0x190]
               	jmp	 <L100>
               	nop
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L102>
<L101>:
               	xor	r11d, r11d
               	jmp	 <L103>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
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
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
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
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x28], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x168]
               	mov	r8, qword ptr [rsp + 0x170]
               	mov	r9, qword ptr [rsp + 0x30]
               	mov	r10, qword ptr [rsp + 0x178]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	jmp	 <L114>
<L113>:
               	xor	r11d, r11d
               	jmp	 <L115>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
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
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
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
               	xor	qword ptr [rsp + 0x160], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x158], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x140], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x150]
               	mov	r8, qword ptr [rsp + 0x158]
               	mov	r9, qword ptr [rsp + 0x28]
               	mov	r10, qword ptr [rsp + 0x160]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x148], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x140], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	jmp	 <L126>
<L125>:
               	xor	r11d, r11d
               	jmp	 <L127>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x148], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x140], r8
               	xor	qword ptr [rsp + 0x138], rdi
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
               	xor	qword ptr [rsp + 0x148], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x140], r8
               	xor	qword ptr [rsp + 0x138], rdi
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
               	xor	qword ptr [rsp + 0x148], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x140], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x98], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x128], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x138]
               	mov	r8, qword ptr [rsp + 0x140]
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	r10, qword ptr [rsp + 0x148]
               	jmp	 <L136>
               	nop	word ptr cs:[rax + rax]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x130], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x128], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	jmp	 <L138>
<L137>:
               	xor	r11d, r11d
               	jmp	 <L139>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x130], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x128], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	jmp	 <L141>
<L140>:
               	xor	r11d, r11d
               	jmp	 <L142>
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
               	xor	qword ptr [rsp + 0x130], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x128], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	jmp	 <L144>
<L143>:
               	xor	r11d, r11d
               	jmp	 <L145>
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
               	xor	qword ptr [rsp + 0x130], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x128], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x90], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x110], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x120]
               	mov	r8, qword ptr [rsp + 0x128]
               	mov	r9, qword ptr [rsp + 0x98]
               	mov	r10, qword ptr [rsp + 0x130]
               	jmp	 <L148>
               	nop	dword ptr [rax + rax]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x118], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x110], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	jmp	 <L150>
<L149>:
               	xor	r11d, r11d
               	jmp	 <L151>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x118], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x110], r8
               	xor	qword ptr [rsp + 0x108], rdi
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
               	xor	qword ptr [rsp + 0x118], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x110], r8
               	xor	qword ptr [rsp + 0x108], rdi
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
               	xor	qword ptr [rsp + 0x118], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x110], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x108]
               	mov	r8, qword ptr [rsp + 0x110]
               	mov	r9, qword ptr [rsp + 0x90]
               	mov	r10, qword ptr [rsp + 0x118]
               	jmp	 <L160>
               	nop	dword ptr [rax + rax]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x100], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	jmp	 <L162>
<L161>:
               	xor	r11d, r11d
               	jmp	 <L163>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x100], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	jmp	 <L165>
<L164>:
               	xor	r11d, r11d
               	jmp	 <L166>
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
               	xor	qword ptr [rsp + 0x100], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	jmp	 <L168>
<L167>:
               	xor	r11d, r11d
               	jmp	 <L169>
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
               	xor	qword ptr [rsp + 0x100], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x220], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x80], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xf0]
               	mov	r8, qword ptr [rsp + 0xf8]
               	mov	r9, qword ptr [rsp + 0x88]
               	mov	r10, qword ptr [rsp + 0x100]
               	jmp	 <L172>
               	nop	dword ptr [rax + rax]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0xe8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	jmp	 <L174>
<L173>:
               	xor	r11d, r11d
               	jmp	 <L175>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0xe8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	jmp	 <L177>
<L176>:
               	xor	r11d, r11d
               	jmp	 <L178>
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
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0xe8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	jmp	 <L180>
<L179>:
               	xor	r11d, r11d
               	jmp	 <L181>
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
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0xe8], r8
               	xor	qword ptr [rsp + 0xe0], rdi
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x218], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x78], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xe0]
               	mov	r8, qword ptr [rsp + 0xe8]
               	mov	r9, qword ptr [rsp + 0x80]
               	mov	r10, qword ptr [rsp + 0x220]
               	jmp	 <L184>
               	nop	word ptr cs:[rax + rax]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x218], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xd8], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	jmp	 <L186>
<L185>:
               	xor	r11d, r11d
               	jmp	 <L187>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x218], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xd8], r8
               	xor	qword ptr [rsp + 0xd0], rdi
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
               	xor	qword ptr [rsp + 0x218], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xd8], r8
               	xor	qword ptr [rsp + 0xd0], rdi
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
               	xor	qword ptr [rsp + 0x218], r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	qword ptr [rsp + 0xd8], r8
               	xor	qword ptr [rsp + 0xd0], rdi
               	jmp	 <L195>
<L194>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x210], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x70], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xd0]
               	mov	r8, qword ptr [rsp + 0xd8]
               	mov	r9, qword ptr [rsp + 0x78]
               	mov	r10, qword ptr [rsp + 0x218]
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
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x210], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	jmp	 <L198>
<L197>:
               	xor	r11d, r11d
               	jmp	 <L199>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x210], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
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
               	xor	qword ptr [rsp + 0x210], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
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
               	xor	qword ptr [rsp + 0x210], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	jmp	 <L207>
<L206>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x68], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xc0]
               	mov	r8, qword ptr [rsp + 0xc8]
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	r10, qword ptr [rsp + 0x210]
               	jmp	 <L208>
               	nop
<L210>:
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
               	je	 <L209>
<L208>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L210>
               	xor	qword ptr [rsp + 0xb8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L210>
<L209>:
               	xor	r11d, r11d
               	jmp	 <L211>
               	nop	word ptr [rax + rax]
<L213>:
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
               	je	 <L212>
<L211>:
               	bt	rcx, r11
               	jae	 <L213>
               	xor	qword ptr [rsp + 0xb8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L213>
<L212>:
               	xor	r11d, r11d
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
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
               	je	 <L215>
<L214>:
               	bt	rdx, r11
               	jae	 <L216>
               	xor	qword ptr [rsp + 0xb8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L216>
<L215>:
               	xor	r11d, r11d
               	jmp	 <L217>
               	nop	dword ptr [rax]
<L219>:
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
               	je	 <L218>
<L217>:
               	bt	rsi, r11
               	jae	 <L219>
               	xor	qword ptr [rsp + 0xb8], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0xa8], rdi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x238], rbp
               	mov	qword ptr [rsp + 0x260], r13
               	mov	qword ptr [rsp + 0x268], r12
               	xor	ebx, ebx
               	xor	ebp, ebp
               	xor	r15d, r15d
               	xor	r14d, r14d
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xa8]
               	mov	r8, qword ptr [rsp + 0xb0]
               	mov	r9, qword ptr [rsp + 0x68]
               	mov	r10, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x230], rax
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L220>
               	nop
<L222>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r13
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L221>
<L220>:
               	bt	rax, r11
               	jae	 <L222>
               	xor	rbx, r10
               	xor	rbp, r9
               	xor	r15, r8
               	xor	r14, rdi
               	jmp	 <L222>
<L221>:
               	xor	r11d, r11d
               	mov	rax, r15
               	jmp	 <L223>
               	nop
<L225>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r13
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L224>
<L223>:
               	bt	rcx, r11
               	jae	 <L225>
               	xor	rbx, r10
               	xor	rbp, r9
               	xor	rax, r8
               	xor	r14, rdi
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
               	xor	rbx, r10
               	xor	rbp, r9
               	xor	rax, r8
               	xor	r14, rdi
               	jmp	 <L228>
<L227>:
               	xor	ecx, ecx
               	mov	r15, qword ptr [rsp + 0x330]
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
               	xor	rbx, r10
               	xor	rbp, r9
               	xor	rax, r8
               	xor	r14, rdi
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x258], rax
               	mov	rax, qword ptr [rsp + 0x60]
               	or	qword ptr [rsp + 0x248], rax
               	mov	rax, qword ptr [rsp + 0xa0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x238]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x270], rax
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	rsi, qword ptr [rsp + 0x8]
               	lea	rcx, [rsi + 4*rsi]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x280], rcx
               	mov	rcx, qword ptr [rsp + 0x230]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x288], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x50]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x290], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a0], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x30]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2b0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c0], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	rcx, qword ptr [rsp + 0x98]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x90]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2d0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	rcx, qword ptr [rsp + 0x88]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e0], rcx
               	mov	rcx, qword ptr [rsp + 0x80]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	rcx, qword ptr [rsp + 0x78]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x70]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2f0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2f8], rcx
               	mov	rcx, qword ptr [rsp + 0x68]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x300], rcx
               	lea	rcx, [4*rbp]
               	add	rcx, rbp
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x308], rcx
               	mov	r8, qword ptr [rsp + 0x228]
               	lea	rcx, [8*r8]
               	lea	rcx, [rcx + 4*rcx]
               	test	r8, r8
               	mov	qword ptr [rsp + 0x368], rcx
               	je	 <L232>
               	mov	qword ptr [rsp + 0x8], rsi
               	mov	rdx, qword ptr [rsp]
               	lea	rsi, [rdx + rcx]
               	neg	r8d
               	xor	r11d, r11d
               	mov	r13d, 0x1
               	vpbroadcastq	ymm6, qword ptr  <__libc_start_main+0x940>
               	vpbroadcastw	xmm7, word ptr  <__libc_start_main+0x984>
               	lea	rdi,  <__libc_start_main+0x988>
               	mov	r9, qword ptr [rsp + 0x310]
               	mov	r10, qword ptr [rsp + 0x18]
               	mov	rcx, r14
               	mov	r12, qword ptr [rsp + 0x10]
               	mov	qword ptr [rsp + 0x250], rsi
               	mov	qword ptr [rsp + 0x228], r8
               	vmovdqu	ymmword ptr [rsp + 0x390], ymm6
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L239>:
               	vpblendd	ymm0, ymm3, ymm2, 0xc0  # ymm0 = ymm3[0,1,2,3,4,5],ymm2[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x270]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x2b0]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x2d0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x2f0]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x270], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x290], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm0
               	vpsrlq	ymm0, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2f0], ymm0
               	vmovq	rax, xmm1
<L243>:
               	lea	ecx, [r8 + r13]
               	inc	ecx
               	mov	edx, r13d
               	inc	edx
               	mov	r13d, edx
               	cmp	ecx, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x278]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x298]
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
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x2b8]
               	vpshufb	xmm0, xmm0, xmm7
               	movzx	eax, al
               	movsxd	rax, dword ptr [rdi + 4*rax]
               	add	rax, rdi
               	jmp	rax
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0x0
               	jmp	 <L236>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0xb
               	jmp	 <L237>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0x4
               	jmp	 <L238>
               	mov	qword ptr [rsp + 0x10], r12
               	mov	qword ptr [rsp + 0xa0], r14
               	mov	r14d, r11d
               	inc	r11d
               	mov	r12, r13
               	lea	r13, [r14 + 4*r14]
               	mov	edi, 0x20
               	mov	rsi, qword ptr  <__libc_start_main+0x63a0>
               	vmovdqu	ymmword ptr [rsp + 0x310], ymm5
               	mov	qword ptr [rsp + 0x240], rbx
               	mov	rbx, r9
               	mov	qword ptr [rsp + 0x60], rbp
               	mov	qword ptr [rsp + 0x18], r10
               	mov	ebp, r11d
               	vmovdqu	ymmword ptr [rsp + 0x330], ymm2
               	vmovdqu	ymmword ptr [rsp + 0x370], ymm3
               	vmovdqa	xmmword ptr [rsp + 0x350], xmm1
               	vzeroupper
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x370]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x330]
               	lea	rdi,  <__libc_start_main+0x988>
               	vpbroadcastw	xmm7, word ptr  <__libc_start_main+0x984>
               	vmovdqu	ymm6, ymmword ptr [rsp + 0x390]
               	mov	rsi, qword ptr [rsp + 0x250]
               	mov	r11d, ebp
               	mov	r10, qword ptr [rsp + 0x18]
               	mov	rbp, qword ptr [rsp + 0x60]
               	mov	r9, rbx
               	mov	rbx, qword ptr [rsp + 0x240]
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x310]
               	mov	r8, qword ptr [rsp + 0x228]
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [rcx + 8*r13], rax
               	mov	byte ptr [rsi + r14], 0xc
               	mov	r14, qword ptr [rsp + 0xa0]
               	mov	rdx, qword ptr [rsp + 0x10]
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x350] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	mov	rcx, qword ptr [rsp]
               	vmovups	ymmword ptr [rcx + 8*r13 + 0x8], ymm0
               	mov	r13, r12
               	mov	r12, rdx
               	vmovups	ymm0, ymmword ptr [rsp + 0x2c8]
               	vmovups	ymm1, ymmword ptr [rsp + 0x2d8]
               	vinsertf128	ymm1, ymm1, xmmword ptr [rsp + 0x2f8], 0x1
               	vinsertf128	ymm0, ymm0, xmmword ptr [rsp + 0x2e8], 0x1
               	vshufps	ymm0, ymm0, ymm1, 0x88  # ymm0 = ymm0[0,2],ymm1[0,2],ymm0[4,6],ymm1[4,6]
               	vandps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0x920>
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax], ymm0
               	test	r13b, 0x7
               	jne	 <L239>
               	jmp	 <L240>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0x9
               	jmp	 <L241>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0x2
               	jmp	 <L238>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0x3
               	jmp	 <L236>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0x7
               	jmp	 <L237>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0x1
<L238>:
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	mov	rdx, qword ptr [rsp]
               	vmovups	ymmword ptr [rdx + 8*rcx], ymm1
               	vpextrb	eax, xmm0, 0x0
               	jmp	 <L242>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0x5
               	jmp	 <L236>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0x6
<L237>:
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	mov	rax, qword ptr [rsp]
               	vmovups	ymmword ptr [rax + 8*rcx], ymm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rax + 8*rcx + 0x20], xmm0
               	test	r13b, 0x7
               	jne	 <L239>
               	jmp	 <L240>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0xa
<L241>:
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	mov	rdx, qword ptr [rsp]
               	vmovups	ymmword ptr [rdx + 8*rcx], ymm1
               	vpextrb	eax, xmm0, 0x1
<L242>:
               	vcvtsi2ss	xmm0, xmm8, eax
               	vmovss	dword ptr [rdx + 8*rcx + 0x20], xmm0
<L235>:
               	test	r13b, 0x7
               	jne	 <L239>
               	jmp	 <L240>
               	mov	eax, r11d
               	inc	r11d
               	lea	rcx, [rax + 4*rax]
               	mov	byte ptr [rsi + rax], 0x8
<L236>:
               	vpmovzxbd	ymm0, xmm1      # ymm0 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	mov	rax, qword ptr [rsp]
               	vmovups	ymmword ptr [rax + 8*rcx], ymm0
               	test	r13b, 0x7
               	jne	 <L239>
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
               	mov	rsi, qword ptr [rsp + 0x238]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x260]
               	xor	rdx, r15
               	mov	rcx, qword ptr [rsp + 0x268]
               	xor	rcx, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x238], rsi
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x330], r15
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x260], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x268], rcx
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	rax, rcx
               	shl	rax, 0x11
               	xor	r9, r10
               	xor	r12, rcx
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x8], rcx
               	xor	r10, r12
               	mov	qword ptr [rsp + 0x18], r10
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x10], r12
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x310], r9
               	mov	rdi, qword ptr [rsp + 0x230]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x200]
               	mov	rsi, qword ptr [rsp + 0x208]
               	xor	rcx, rsi
               	mov	rdx, qword ptr [rsp + 0x1f8]
               	xor	rdx, rdi
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x208], rsi
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x200], rcx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x1f8], rdx
               	mov	rsi, qword ptr [rsp + 0x58]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	mov	rdx, qword ptr [rsp + 0x1e8]
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x350], r13
               	mov	r13, qword ptr [rsp + 0x1e0]
               	xor	r13, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x58], rsi
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x1f0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1e8], rdx
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x1e0], r13
               	mov	rsi, qword ptr [rsp + 0x50]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	mov	rdx, qword ptr [rsp + 0x1d0]
               	xor	rdx, rcx
               	mov	dword ptr [rsp + 0x370], r11d
               	mov	r11, qword ptr [rsp + 0x1c8]
               	xor	r11, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x50], rsi
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x1d8], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1d0], rdx
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x1c8], r11
               	mov	rdi, qword ptr [rsp + 0x48]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	rdx, qword ptr [rsp + 0x1b8]
               	xor	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	xor	rsi, rdi
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x48], rdi
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x1c0], rcx
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x1b0], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1b8], rdx
               	mov	rsi, qword ptr [rsp + 0x40]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	mov	rdx, qword ptr [rsp + 0x1a0]
               	xor	rdx, rcx
               	mov	r10, qword ptr [rsp + 0x198]
               	xor	r10, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x40], rsi
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x1a8], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x1a0], rdx
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x198], r10
               	mov	rsi, qword ptr [rsp + 0x38]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x190]
               	mov	rdx, qword ptr [rsp + 0x188]
               	xor	rdx, rcx
               	mov	r15, qword ptr [rsp + 0x180]
               	xor	r15, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x38], rsi
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x190], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x188], rdx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x180], r15
               	mov	rsi, qword ptr [rsp + 0x30]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x178]
               	mov	rdx, qword ptr [rsp + 0x170]
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x60], rbp
               	mov	rbp, qword ptr [rsp + 0x168]
               	xor	rbp, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x30], rsi
               	xor	rcx, rbp
               	mov	qword ptr [rsp + 0x178], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x170], rdx
               	rol	rbp, 0x2d
               	mov	qword ptr [rsp + 0x168], rbp
               	mov	rsi, qword ptr [rsp + 0x28]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x160]
               	mov	rdx, qword ptr [rsp + 0x158]
               	xor	rdx, rcx
               	mov	r8, qword ptr [rsp + 0x150]
               	xor	r8, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x28], rsi
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x160], rcx
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x150], r8
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x158], rdx
               	mov	rsi, qword ptr [rsp + 0x20]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x148]
               	mov	rdx, qword ptr [rsp + 0x140]
               	xor	rdx, rcx
               	mov	r9, qword ptr [rsp + 0x138]
               	xor	r9, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x20], rsi
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x148], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x140], rdx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x138], r9
               	mov	rbp, qword ptr [rsp + 0x98]
               	mov	rax, rbp
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x130]
               	mov	rdx, qword ptr [rsp + 0x128]
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0xa0], r14
               	mov	r14, qword ptr [rsp + 0x120]
               	xor	r14, rbp
               	xor	rbp, rdx
               	xor	rcx, r14
               	mov	qword ptr [rsp + 0x130], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x128], rdx
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x120], r14
               	mov	r13, qword ptr [rsp + 0x90]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	rdx, qword ptr [rsp + 0x110]
               	xor	rdx, rcx
               	mov	r12, qword ptr [rsp + 0x108]
               	xor	r12, r13
               	xor	r13, rdx
               	xor	rcx, r12
               	mov	qword ptr [rsp + 0x118], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x110], rdx
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x108], r12
               	mov	r12, qword ptr [rsp + 0x88]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x100]
               	mov	rdx, qword ptr [rsp + 0xf8]
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x240], rbx
               	mov	rbx, qword ptr [rsp + 0xf0]
               	xor	rbx, r12
               	xor	r12, rdx
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x100], rcx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0xf0], rbx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xf8], rdx
               	mov	r11, qword ptr [rsp + 0x80]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x220]
               	mov	rcx, qword ptr [rsp + 0xe8]
               	xor	rcx, rbx
               	mov	r15, qword ptr [rsp + 0xe0]
               	xor	r15, r11
               	xor	r11, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xe8], rcx
               	mov	r9, qword ptr [rsp + 0x78]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x218]
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	rcx, rbx
               	mov	r14, qword ptr [rsp + 0xd0]
               	xor	r14, r9
               	xor	r9, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xd8], rcx
               	mov	r8, qword ptr [rsp + 0x70]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x210]
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	rcx, rbx
               	mov	r10, qword ptr [rsp + 0xc0]
               	xor	r10, r8
               	xor	r8, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xc8], rcx
               	mov	rsi, qword ptr [rsp + 0x68]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0xb8]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, rbx
               	mov	rdi, qword ptr [rsp + 0xa8]
               	xor	rdi, rsi
               	xor	rsi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	rax, qword ptr [rsp + 0x60]
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x258]
               	xor	rdx, qword ptr [rsp + 0x240]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	xor	rcx, qword ptr [rsp + 0x60]
               	mov	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x60], rdx
               	vpextrq	rcx, xmm0, 0x1
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x258], rdx
               	lea	rax, [rcx + 4*rcx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x238]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x8]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x270], rax
               	mov	qword ptr [rsp + 0x278], rcx
               	mov	rcx, qword ptr [rsp + 0x230]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x280], rdx
               	mov	rdx, qword ptr [rsp + 0x58]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x288], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x290], rdx
               	mov	rdx, qword ptr [rsp + 0x48]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a0], rdx
               	mov	rdx, qword ptr [rsp + 0x38]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2b0], rdx
               	mov	rdx, qword ptr [rsp + 0x28]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c0], rdx
               	mov	qword ptr [rsp + 0x98], rbp
               	lea	rdx, [4*rbp]
               	add	rdx, rbp
               	mov	rbp, qword ptr [rsp + 0x60]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	qword ptr [rsp + 0x90], r13
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	mov	r13, qword ptr [rsp + 0x350]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2d0], rdx
               	mov	qword ptr [rsp + 0x88], r12
               	lea	rdx, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x10]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	qword ptr [rsp + 0x80], r11
               	lea	rcx, [r11 + 4*r11]
               	mov	r11d, dword ptr [rsp + 0x370]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e0], rdx
               	mov	qword ptr [rsp + 0x78], r9
               	lea	rdx, [r9 + 4*r9]
               	mov	r9, qword ptr [rsp + 0x310]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	qword ptr [rsp + 0x70], r8
               	lea	rcx, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x228]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2f0], rdx
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rcx
               	mov	qword ptr [rsp + 0x68], rsi
               	lea	rcx, [rsi + 4*rsi]
               	mov	rsi, qword ptr [rsp + 0x250]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x300], rcx
               	lea	rcx, [4*rbp]
               	add	rcx, rbp
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x308], rcx
               	xor	qword ptr [rsp + 0x220], r15
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xe0], r15
               	mov	r15, qword ptr [rsp + 0x330]
               	vpbroadcastq	ymm1, xmm1
               	xor	qword ptr [rsp + 0x218], r14
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0xd0], r14
               	mov	r14, qword ptr [rsp + 0xa0]
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0x210], r10
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0xc0], r10
               	mov	r10, qword ptr [rsp + 0x18]
               	vpbroadcastq	ymm1, xmm2
               	xor	rbx, rdi
               	mov	qword ptr [rsp + 0xb8], rbx
               	mov	rbx, qword ptr [rsp + 0x240]
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0xa8], rdi
               	lea	rdi,  <__libc_start_main+0x988>
               	vpblendd	ymm5, ymm0, ymm1, 0xc0  # ymm5 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	xor	rbx, r14
               	rol	r14, 0x2d
               	jmp	 <L243>
<L232>:
               	xor	r11d, r11d
<L234>:
               	mov	r13, qword ptr [rsp + 0x248]
               	mov	rax, r13
               	shr	rax, 0x20
               	vpxor	xmm2, xmm2, xmm2
               	mov	r8, qword ptr [rsp + 0x368]
               	je	 <L244>
               	mov	rax, r8
               	neg	rax
               	mov	ecx, 0x1c
               	mov	rdx, qword ptr [rsp]
               	movzx	esi, byte ptr [rdx + r8]
               	lea	rdx,  <__libc_start_main+0x9bc>
               	movsxd	rdi, dword ptr [rdx + 4*rsi]
               	add	rdi, rdx
               	mov	rsi, r8
               	jmp	rdi
<L244>:
               	test	r11d, r11d
               	vmovss	dword ptr [rsp + 0x8], xmm2
               	je	 <L245>
               	mov	r12, qword ptr [rsp]
               	mov	rbx, r12
               	add	rbx, r8
               	mov	r14d, r11d
               	xor	r15d, r15d
               	jmp	 <L246>
               	nop	dword ptr [rax]
<L248>:
               	inc	r15
               	add	r12, 0x28
               	cmp	r14, r15
               	je	 <L247>
<L246>:
               	cmp	byte ptr [rbx + r15], 0xc
               	jne	 <L248>
               	mov	rdi, qword ptr [r12]
               	test	rdi, rdi
               	je	 <L248>
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	jmp	 <L248>
<L245>:
               	cmp	qword ptr [rsp], 0x0
               	je	 <L249>
<L247>:
               	mov	rdi, qword ptr [rsp]
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovss	xmm2, dword ptr [rsp + 0x8] # xmm2 = mem[0],zero,zero,zero
<L249>:
               	movabs	rax, 0x186a00000002a
               	cmp	r13, rax
               	jne	 <L250>
               	vucomiss	xmm2, dword ptr  <__libc_start_main+0x980>
               	jb	 <L251>
               	vucomiss	xmm2, dword ptr  <__libc_start_main+0x978>
               	ja	 <L251>
<L250>:
               	xor	eax, eax
               	add	rsp, 0x3b8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L251>:
               	mov	edi, 0x4
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x8] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x63a8>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x96c>
               	jmp	 <L252>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx] # xmm0 = mem[0],zero,zero,zero
<L255>:
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x96c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + rcx + 0x4]
               	jmp	 <L252>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx + 0x4] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + rcx]
               	jmp	 <L252>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	jmp	 <L252>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x974>
               	vmulss	xmm0, xmm0, dword ptr [rdi + rcx + 0x4]
               	jmp	 <L252>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	jmp	 <L253>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx + 0x4] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + rcx]
               	vmulss	xmm0, xmm0, dword ptr [rdi + rcx + 0x8]
               	jmp	 <L252>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x970>
<L256>:
               	vmulss	xmm0, xmm0, dword ptr [rdi + rcx + 0x4]
               	vmulss	xmm0, xmm0, dword ptr [rdi + rcx + 0x8]
               	jmp	 <L252>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx] # xmm0 = mem[0],zero,zero,zero
               	jmp	 <L254>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	jmp	 <L255>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x968>
               	vmulss	xmm0, xmm0, dword ptr [rdi + rcx + 0x4]
               	jmp	 <L252>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x97c>
               	jmp	 <L256>
               	mov	rdi, qword ptr [rsp]
               	vmovss	xmm0, dword ptr [rdi + rcx + 0x8] # xmm0 = mem[0],zero,zero,zero
<L254>:
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x97c>
<L253>:
               	vmulss	xmm0, xmm1, xmm0
<L252>:
               	vaddss	xmm2, xmm0, xmm2
               	lea	rdi, [rax + rcx]
               	add	rdi, 0x28
               	cmp	rdi, 0x1c
               	je	 <L244>
               	add	rcx, 0x28
               	inc	rsi
               	mov	rdi, qword ptr [rsp]
               	movzx	edi, byte ptr [rdi + rsi]
               	movsxd	rdi, dword ptr [rdx + 4*rdi]
               	add	rdi, rdx
               	jmp	rdi

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x6380>
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
