
build/Evaluation/bin/Replication:	file format elf64-x86-64

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
               	call	qword ptr  <__libc_start_main+0x6908>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6918>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6920>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x6928>
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

<initializer for module Evaluation.Dependency.DynamicArray>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW12DynamicArray__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW12DynamicArray__in_chrg>
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

<initializer for module Evaluation.Replication.Cube>:
<initializer for module Evaluation.Replication.Cuboid>:
<initializer for module Evaluation.Replication.Square>:
<initializer for module Evaluation.Replication.Rectangle>:
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

<initializer for module Evaluation.Replication.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW6Circle__in_chrg>
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

<initializer for module Evaluation.Replication.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW7Ellipse__in_chrg>
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

<initializer for module Evaluation.Replication.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW8Triangle__in_chrg>
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

<initializer for module Evaluation.Replication.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW7Pyramid__in_chrg>
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

<initializer for module Evaluation.Replication.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW6Sphere__in_chrg>
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

<initializer for module Evaluation.Replication.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW8Cylinder__in_chrg>
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

<initializer for module Evaluation.Replication.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW4Cone__in_chrg>
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

<initializer for module Evaluation.Replication.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW9Ellipsoid__in_chrg>
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

<initializer for module Evaluation.Replication.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW11ReplicationW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW11ReplicationW4Head__in_chrg>
               	jmp	 <initializer for module Evaluation.Replication.Sphere>
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

<_GLOBAL__sub_I_Replication.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.Replication.Circle>
               	call	 <initializer for module Evaluation.Replication.Ellipse>
               	call	 <initializer for module Std>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.Replication.Triangle>
               	call	 <initializer for module Std>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.Replication.Pyramid>
               	call	 <initializer for module Evaluation.Replication.Sphere>
               	call	 <initializer for module Evaluation.Replication.Cylinder>
               	call	 <initializer for module Evaluation.Replication.Cone>
               	call	 <initializer for module Evaluation.Replication.Ellipsoid>
               	call	 <initializer for module Evaluation.Replication.Head>
               	pop	rax
               	jmp	 <initializer for module Std>
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
               	sub	rsp, 0x6a0
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
               	movsx	r14d, byte ptr [rax]
               	add	r14d, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	word ptr [rax + rax]
<L3>:
               	lea	edx, [r14 + 4*r14]
               	movsx	ecx, cl
               	lea	r14d, [rcx + 2*rdx]
               	add	r14d, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movsxd	rax, r14d
               	shl	rax, 0x3
               	lea	rdi, [rax + 8*rax]
               	mov	rsi, qword ptr  <__libc_start_main+0x6930>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x248], rax
               	movsxd	rax, ebx
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
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0x980>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0x968>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0x970>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0x978>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovq	rax, xmm0
               	vpextrq	rsi, xmm0, 0x1
               	vextracti128	xmm1, ymm0, 0x1
               	vmovq	rcx, xmm1
               	vpextrq	rdx, xmm1, 0x1
               	xor	r11d, r11d
               	xor	r9d, r9d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	xor	edi, edi
               	mov	r8, rsi
               	mov	qword ptr [rsp + 0x58], rsi
               	jmp	 <L4>
               	nop	dword ptr [rax]
<L6>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rcx, rax
               	xor	rdx, rsi
               	xor	rsi, rcx
               	xor	rax, rdx
               	xor	rcx, r8
               	rol	rdx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L5>
<L4>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L6>
               	xor	r10, rax
               	xor	r11, rsi
               	xor	r9, rcx
               	xor	r15, rdx
               	jmp	 <L6>
<L5>:
               	xor	edi, edi
               	jmp	 <L7>
               	nop	word ptr cs:[rax + rax]
<L9>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rcx, rax
               	xor	rdx, rsi
               	xor	rsi, rcx
               	xor	rax, rdx
               	xor	rcx, r8
               	rol	rdx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L8>
<L7>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L9>
               	xor	r10, rax
               	xor	r11, rsi
               	xor	r9, rcx
               	xor	r15, rdx
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
<L12>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rcx, rax
               	xor	rdx, rsi
               	xor	rsi, rcx
               	xor	rax, rdx
               	xor	rcx, r8
               	rol	rdx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	r10, rax
               	xor	r11, rsi
               	xor	r9, rcx
               	xor	r15, rdx
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
<L15>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rcx, rax
               	xor	rdx, rsi
               	xor	rsi, rcx
               	xor	rax, rdx
               	xor	rcx, r8
               	rol	rdx, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	r10, rax
               	xor	r11, rsi
               	xor	r9, rcx
               	xor	r15, rdx
               	jmp	 <L15>
<L14>:
               	xor	r13d, r13d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x220], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c0], rax
               	xor	edi, edi
               	mov	rax, r15
               	mov	rcx, r9
               	mov	rdx, r11
               	mov	rsi, r10
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
<L18>:
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L18>
               	xor	r13, rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1c0], rax
               	jmp	 <L18>
<L17>:
               	xor	edi, edi
               	jmp	 <L19>
               	nop	word ptr cs:[rax + rax]
<L21>:
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
               	je	 <L20>
<L19>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L21>
               	xor	r13, rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1c0], rax
               	jmp	 <L21>
<L20>:
               	xor	edi, edi
               	jmp	 <L22>
               	nop	word ptr cs:[rax + rax]
<L24>:
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
               	je	 <L23>
<L22>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L24>
               	xor	r13, rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1c0], rax
               	jmp	 <L24>
<L23>:
               	xor	edi, edi
               	jmp	 <L25>
               	nop	word ptr cs:[rax + rax]
<L27>:
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
               	je	 <L26>
<L25>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L27>
               	xor	r13, rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1c0], rax
               	jmp	 <L27>
<L26>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x210], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1c0]
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	mov	rdx, qword ptr [rsp + 0x220]
               	mov	rsi, r13
               	jmp	 <L28>
               	nop	word ptr [rax + rax]
<L30>:
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
               	je	 <L29>
<L28>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x1b8], rsi
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1a8], rax
               	jmp	 <L30>
<L29>:
               	xor	edi, edi
               	jmp	 <L31>
               	nop	dword ptr [rax]
<L33>:
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
               	je	 <L32>
<L31>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1b8], rsi
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1a8], rax
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
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
               	je	 <L35>
<L34>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L36>
               	xor	qword ptr [rsp + 0x1b8], rsi
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1a8], rax
               	jmp	 <L36>
<L35>:
               	xor	edi, edi
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
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
               	je	 <L38>
<L37>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L39>
               	xor	qword ptr [rsp + 0x1b8], rsi
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1a8], rax
               	jmp	 <L39>
<L38>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x200], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x198], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x190], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1a8]
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	mov	rdx, qword ptr [rsp + 0x210]
               	mov	rsi, qword ptr [rsp + 0x1b8]
               	jmp	 <L40>
               	nop	word ptr cs:[rax + rax]
<L42>:
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
               	je	 <L41>
<L40>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x190], rax
               	jmp	 <L42>
<L41>:
               	xor	edi, edi
               	jmp	 <L43>
               	nop	dword ptr [rax]
<L45>:
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
               	je	 <L44>
<L43>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x190], rax
               	jmp	 <L45>
<L44>:
               	xor	edi, edi
               	jmp	 <L46>
               	nop	dword ptr [rax]
<L48>:
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
               	je	 <L47>
<L46>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L48>
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x190], rax
               	jmp	 <L48>
<L47>:
               	xor	edi, edi
               	jmp	 <L49>
               	nop	dword ptr [rax]
<L51>:
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
               	je	 <L50>
<L49>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L51>
               	xor	qword ptr [rsp + 0x1a0], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x190], rax
               	jmp	 <L51>
<L50>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x188], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1f0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x180], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x178], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x190]
               	mov	rcx, qword ptr [rsp + 0x198]
               	mov	rdx, qword ptr [rsp + 0x200]
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	jmp	 <L52>
               	nop	word ptr cs:[rax + rax]
<L54>:
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
               	je	 <L53>
<L52>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L54>
<L53>:
               	xor	edi, edi
               	jmp	 <L55>
               	nop	dword ptr [rax]
<L57>:
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
               	je	 <L56>
<L55>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L57>
<L56>:
               	xor	edi, edi
               	jmp	 <L58>
               	nop	dword ptr [rax]
<L60>:
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
               	je	 <L59>
<L58>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L60>
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L60>
<L59>:
               	xor	edi, edi
               	jmp	 <L61>
               	nop	dword ptr [rax]
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
               	je	 <L62>
<L61>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L63>
               	xor	qword ptr [rsp + 0x188], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x178], rax
               	jmp	 <L63>
<L62>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x170], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1e0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x168], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x160], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x178]
               	mov	rcx, qword ptr [rsp + 0x180]
               	mov	rdx, qword ptr [rsp + 0x1f0]
               	mov	rsi, qword ptr [rsp + 0x188]
               	jmp	 <L64>
               	nop	word ptr cs:[rax + rax]
<L66>:
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
               	je	 <L65>
<L64>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x170], rsi
               	xor	qword ptr [rsp + 0x1e0], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L66>
<L65>:
               	xor	edi, edi
               	jmp	 <L67>
               	nop	dword ptr [rax]
<L69>:
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
               	je	 <L68>
<L67>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x170], rsi
               	xor	qword ptr [rsp + 0x1e0], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L69>
<L68>:
               	xor	edi, edi
               	jmp	 <L70>
               	nop	dword ptr [rax]
<L72>:
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
               	je	 <L71>
<L70>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x170], rsi
               	xor	qword ptr [rsp + 0x1e0], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L72>
<L71>:
               	xor	edi, edi
               	jmp	 <L73>
               	nop	dword ptr [rax]
<L75>:
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
               	je	 <L74>
<L73>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x170], rsi
               	xor	qword ptr [rsp + 0x1e0], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L75>
<L74>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x158], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x150], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x148], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x160]
               	mov	rcx, qword ptr [rsp + 0x168]
               	mov	rdx, qword ptr [rsp + 0x1e0]
               	mov	rsi, qword ptr [rsp + 0x170]
               	jmp	 <L76>
               	nop
<L78>:
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
               	je	 <L77>
<L76>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x158], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L78>
<L77>:
               	xor	edi, edi
               	jmp	 <L79>
               	nop	word ptr cs:[rax + rax]
<L81>:
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
               	je	 <L80>
<L79>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x158], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L81>
<L80>:
               	xor	edi, edi
               	jmp	 <L82>
               	nop	word ptr cs:[rax + rax]
<L84>:
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
               	je	 <L83>
<L82>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x158], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L84>
<L83>:
               	xor	edi, edi
               	jmp	 <L85>
               	nop	word ptr cs:[rax + rax]
<L87>:
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
               	je	 <L86>
<L85>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x158], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x148], rax
               	jmp	 <L87>
<L86>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x140], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x18], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x138], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x130], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x148]
               	mov	rcx, qword ptr [rsp + 0x150]
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0x158]
               	jmp	 <L88>
               	nop	dword ptr [rax + rax]
<L90>:
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
               	je	 <L89>
<L88>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x140], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x130], rax
               	jmp	 <L90>
<L89>:
               	xor	edi, edi
               	jmp	 <L91>
               	nop	word ptr cs:[rax + rax]
<L93>:
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
               	je	 <L92>
<L91>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x140], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x130], rax
               	jmp	 <L93>
<L92>:
               	xor	edi, edi
               	jmp	 <L94>
               	nop	word ptr cs:[rax + rax]
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
               	je	 <L95>
<L94>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x140], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x130], rax
               	jmp	 <L96>
<L95>:
               	xor	edi, edi
               	jmp	 <L97>
               	nop	word ptr cs:[rax + rax]
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x140], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x130], rax
               	jmp	 <L99>
<L98>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x128], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x10], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x120], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x118], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x130]
               	mov	rcx, qword ptr [rsp + 0x138]
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x140]
               	jmp	 <L100>
               	nop	dword ptr [rax + rax]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x118], rax
               	jmp	 <L102>
<L101>:
               	xor	edi, edi
               	jmp	 <L103>
               	nop	word ptr cs:[rax + rax]
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x118], rax
               	jmp	 <L105>
<L104>:
               	xor	edi, edi
               	jmp	 <L106>
               	nop	word ptr cs:[rax + rax]
<L108>:
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
               	je	 <L107>
<L106>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x118], rax
               	jmp	 <L108>
<L107>:
               	xor	edi, edi
               	jmp	 <L109>
               	nop	word ptr cs:[rax + rax]
<L111>:
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
               	je	 <L110>
<L109>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x128], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x118], rax
               	jmp	 <L111>
<L110>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x110], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x108], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x100], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x118]
               	mov	rcx, qword ptr [rsp + 0x120]
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x128]
               	jmp	 <L112>
               	nop	dword ptr [rax + rax]
<L114>:
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
               	je	 <L113>
<L112>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x100], rax
               	jmp	 <L114>
<L113>:
               	xor	edi, edi
               	jmp	 <L115>
               	nop	word ptr cs:[rax + rax]
<L117>:
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
               	je	 <L116>
<L115>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x100], rax
               	jmp	 <L117>
<L116>:
               	xor	edi, edi
               	jmp	 <L118>
               	nop	word ptr cs:[rax + rax]
<L120>:
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
               	je	 <L119>
<L118>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x100], rax
               	jmp	 <L120>
<L119>:
               	xor	edi, edi
               	jmp	 <L121>
               	nop	word ptr cs:[rax + rax]
<L123>:
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
               	je	 <L122>
<L121>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L123>
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x100], rax
               	jmp	 <L123>
<L122>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x100]
               	mov	rcx, qword ptr [rsp + 0x108]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x110]
               	jmp	 <L124>
               	nop	word ptr [rax + rax]
<L126>:
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
               	je	 <L125>
<L124>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L126>
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
               	jmp	 <L126>
<L125>:
               	xor	edi, edi
               	jmp	 <L127>
               	nop	word ptr cs:[rax + rax]
<L129>:
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
               	je	 <L128>
<L127>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L129>
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
               	jmp	 <L129>
<L128>:
               	xor	edi, edi
               	jmp	 <L130>
               	nop	word ptr cs:[rax + rax]
<L132>:
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
               	je	 <L131>
<L130>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L132>
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
               	jmp	 <L132>
<L131>:
               	xor	edi, edi
               	jmp	 <L133>
               	nop	word ptr cs:[rax + rax]
<L135>:
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
               	je	 <L134>
<L133>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L135>
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xe8], rax
               	jmp	 <L135>
<L134>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x50], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xe8]
               	mov	rcx, qword ptr [rsp + 0xf0]
               	mov	rdx, qword ptr [rsp]
               	mov	rsi, qword ptr [rsp + 0xf8]
               	jmp	 <L136>
               	nop	word ptr cs:[rax + rax]
<L138>:
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
               	je	 <L137>
<L136>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L138>
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xd0], rax
               	jmp	 <L138>
<L137>:
               	xor	edi, edi
               	jmp	 <L139>
               	nop	word ptr cs:[rax + rax]
<L141>:
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
               	je	 <L140>
<L139>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L141>
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xd0], rax
               	jmp	 <L141>
<L140>:
               	xor	edi, edi
               	jmp	 <L142>
               	nop	word ptr cs:[rax + rax]
<L144>:
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
               	je	 <L143>
<L142>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L144>
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xd0], rax
               	jmp	 <L144>
<L143>:
               	xor	edi, edi
               	jmp	 <L145>
               	nop	word ptr cs:[rax + rax]
<L147>:
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
               	je	 <L146>
<L145>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L147>
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xd0], rax
               	jmp	 <L147>
<L146>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xd0]
               	mov	rcx, qword ptr [rsp + 0xd8]
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	jmp	 <L148>
               	nop	dword ptr [rax + rax]
<L150>:
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
               	je	 <L149>
<L148>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L150>
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L150>
<L149>:
               	xor	edi, edi
               	jmp	 <L151>
               	nop	word ptr cs:[rax + rax]
<L153>:
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
               	je	 <L152>
<L151>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L153>
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L153>
<L152>:
               	xor	edi, edi
               	jmp	 <L154>
               	nop	word ptr cs:[rax + rax]
<L156>:
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
               	je	 <L155>
<L154>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L156>
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L156>
<L155>:
               	xor	edi, edi
               	jmp	 <L157>
               	nop	word ptr cs:[rax + rax]
<L159>:
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
               	je	 <L158>
<L157>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L159>
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L159>
<L158>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xb8]
               	mov	rcx, qword ptr [rsp + 0xc0]
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0xc8]
               	jmp	 <L160>
               	nop	dword ptr [rax + rax]
<L162>:
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
               	je	 <L161>
<L160>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L162>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xa0], rax
               	jmp	 <L162>
<L161>:
               	xor	edi, edi
               	jmp	 <L163>
               	nop	word ptr cs:[rax + rax]
<L165>:
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
               	je	 <L164>
<L163>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xa0], rax
               	jmp	 <L165>
<L164>:
               	xor	edi, edi
               	jmp	 <L166>
               	nop	word ptr cs:[rax + rax]
<L168>:
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
               	je	 <L167>
<L166>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L168>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xa0], rax
               	jmp	 <L168>
<L167>:
               	xor	edi, edi
               	jmp	 <L169>
               	nop	word ptr cs:[rax + rax]
<L171>:
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
               	je	 <L170>
<L169>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L171>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xa0], rax
               	jmp	 <L171>
<L170>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1d8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x90], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xa0]
               	mov	rcx, qword ptr [rsp + 0xa8]
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0xb0]
               	jmp	 <L172>
               	nop	dword ptr [rax + rax]
<L174>:
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
               	je	 <L173>
<L172>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
               	jmp	 <L174>
<L173>:
               	xor	edi, edi
               	jmp	 <L175>
               	nop	word ptr cs:[rax + rax]
<L177>:
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
               	je	 <L176>
<L175>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
               	jmp	 <L177>
<L176>:
               	xor	edi, edi
               	jmp	 <L178>
               	nop	word ptr cs:[rax + rax]
<L180>:
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
               	je	 <L179>
<L178>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
               	jmp	 <L180>
<L179>:
               	xor	edi, edi
               	jmp	 <L181>
               	nop	word ptr cs:[rax + rax]
<L183>:
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
               	je	 <L182>
<L181>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L183>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
               	jmp	 <L183>
<L182>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1d0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x90]
               	mov	rcx, qword ptr [rsp + 0x98]
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	jmp	 <L184>
               	nop	dword ptr [rax + rax]
<L186>:
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
               	je	 <L185>
<L184>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x1d0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L186>
<L185>:
               	xor	edi, edi
               	jmp	 <L187>
               	nop	word ptr cs:[rax + rax]
<L189>:
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
               	je	 <L188>
<L187>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x1d0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L189>
<L188>:
               	xor	edi, edi
               	jmp	 <L190>
               	nop	word ptr cs:[rax + rax]
<L192>:
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
               	je	 <L191>
<L190>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L192>
               	xor	qword ptr [rsp + 0x1d0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L192>
<L191>:
               	xor	edi, edi
               	jmp	 <L193>
               	nop	word ptr cs:[rax + rax]
<L195>:
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
               	je	 <L194>
<L193>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L195>
               	xor	qword ptr [rsp + 0x1d0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L195>
<L194>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x70], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x68], rax
               	xor	esi, esi
               	mov	rax, qword ptr [rsp + 0x80]
               	mov	rcx, qword ptr [rsp + 0x88]
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	jmp	 <L196>
               	nop
<L198>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L197>
<L196>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rsi
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	qword ptr [rsp + 0x68], rax
               	jmp	 <L198>
<L197>:
               	xor	esi, esi
               	jmp	 <L199>
               	nop	dword ptr [rax]
<L201>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L200>
<L199>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rsi
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	qword ptr [rsp + 0x68], rax
               	jmp	 <L201>
<L200>:
               	xor	esi, esi
               	jmp	 <L202>
               	nop	dword ptr [rax]
<L204>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L203>
<L202>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rsi
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	qword ptr [rsp + 0x68], rax
               	jmp	 <L204>
<L203>:
               	xor	esi, esi
               	jmp	 <L205>
               	nop	dword ptr [rax]
<L207>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L206>
<L205>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rsi
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	qword ptr [rsp + 0x68], rax
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x298], r15
               	mov	qword ptr [rsp + 0x2a0], r10
               	mov	qword ptr [rsp + 0x2a8], r9
               	mov	qword ptr [rsp + 0x2c0], rbx
               	xor	r12d, r12d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x260], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x230], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x60], rax
               	xor	ecx, ecx
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	rdi, qword ptr [rsp + 0x70]
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	rax, qword ptr [rsp + 0x78]
               	movabs	rsi, 0x180ec6d33cfd0aba
               	jmp	 <L208>
               	nop	dword ptr [rax]
<L210>:
               	mov	r9, r8
               	shl	r9, 0x11
               	xor	rdi, rax
               	xor	rdx, r8
               	xor	r8, rdi
               	xor	rax, rdx
               	xor	rdi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L209>
<L208>:
               	bt	rsi, rcx
               	jae	 <L210>
               	xor	r12, rax
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x60], rdx
               	jmp	 <L210>
<L209>:
               	xor	ecx, ecx
               	movabs	rsi, -0x2a59ed990f36c6d4
               	jmp	 <L211>
               	nop	word ptr cs:[rax + rax]
<L213>:
               	mov	r9, r8
               	shl	r9, 0x11
               	xor	rdi, rax
               	xor	rdx, r8
               	xor	r8, rdi
               	xor	rax, rdx
               	xor	rdi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L212>
<L211>:
               	bt	rsi, rcx
               	jae	 <L213>
               	xor	r12, rax
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x60], rdx
               	jmp	 <L213>
<L212>:
               	xor	ecx, ecx
               	movabs	rsi, -0x56a7d9e71fc03656
               	jmp	 <L214>
               	nop	word ptr cs:[rax + rax]
<L216>:
               	mov	r9, r8
               	shl	r9, 0x11
               	xor	rdi, rax
               	xor	rdx, r8
               	xor	r8, rdi
               	xor	rax, rdx
               	xor	rdi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L215>
<L214>:
               	bt	rsi, rcx
               	jae	 <L216>
               	xor	r12, rax
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x60], rdx
               	jmp	 <L216>
<L215>:
               	xor	ecx, ecx
               	movabs	rsi, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	word ptr cs:[rax + rax]
<L219>:
               	mov	r9, r8
               	shl	r9, 0x11
               	xor	rdi, rax
               	xor	rdx, r8
               	xor	r8, rdi
               	xor	rax, rdx
               	xor	rdi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L218>
<L217>:
               	bt	rsi, rcx
               	jae	 <L219>
               	xor	r12, rax
               	xor	qword ptr [rsp + 0x260], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x60], rdx
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x290], r13
               	mov	qword ptr [rsp + 0x250], r11
               	mov	qword ptr [rsp + 0x288], r14
               	xor	edx, edx
               	xor	edi, edi
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r13, qword ptr [rsp + 0x230]
               	mov	r14, qword ptr [rsp + 0x260]
               	mov	rcx, r12
               	jmp	 <L220>
               	nop	word ptr cs:[rax + rax]
<L222>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r13, rcx
               	xor	r8, r14
               	xor	r14, r13
               	xor	rcx, r8
               	xor	r13, rax
               	rol	r8, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L221>
<L220>:
               	movabs	rax, 0x180ec6d33cfd0aba
               	bt	rax, r11
               	jae	 <L222>
               	xor	rdx, rcx
               	xor	rdi, r14
               	xor	rsi, r13
               	xor	r9, r8
               	jmp	 <L222>
<L221>:
               	xor	r11d, r11d
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
<L225>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r13, rcx
               	xor	r8, r14
               	xor	r14, r13
               	xor	rcx, r8
               	xor	r13, rax
               	rol	r8, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L224>
<L223>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, r11
               	jae	 <L225>
               	xor	rdx, rcx
               	xor	rdi, r14
               	xor	rsi, r13
               	xor	r9, r8
               	jmp	 <L225>
<L224>:
               	xor	r11d, r11d
               	jmp	 <L226>
               	nop	word ptr cs:[rax + rax]
<L228>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r13, rcx
               	xor	r8, r14
               	xor	r14, r13
               	xor	rcx, r8
               	xor	r13, rax
               	rol	r8, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L227>
<L226>:
               	movabs	rax, -0x56a7d9e71fc03656
               	bt	rax, r11
               	jae	 <L228>
               	xor	rdx, rcx
               	xor	rdi, r14
               	xor	rsi, r13
               	xor	r9, r8
               	jmp	 <L228>
<L227>:
               	xor	r11d, r11d
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r13, rcx
               	xor	r8, r14
               	xor	r14, r13
               	xor	rcx, r8
               	xor	r13, rax
               	rol	r8, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L230>
<L229>:
               	movabs	rax, 0x39abdc4529b1661c
               	bt	rax, r11
               	jae	 <L231>
               	xor	rdx, rcx
               	xor	rdi, r14
               	xor	rsi, r13
               	xor	r9, r8
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r14, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e0], r14
               	mov	rax, qword ptr [rsp + 0x250]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e8], rax
               	mov	rax, qword ptr [rsp + 0x220]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x210]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2f0], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rax
               	mov	rax, qword ptr [rsp + 0x200]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x300], rax
               	mov	rax, qword ptr [rsp + 0x1f0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x308], rax
               	mov	rax, qword ptr [rsp + 0x1e0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x310], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x318], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x320], rax
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x328], rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x330], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x338], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x340], rax
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x348], rax
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x350], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x358], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x360], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x368], rax
               	mov	rax, qword ptr [rsp + 0x260]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rdi + 4*rdi]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x370], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x378], rax
               	mov	rax, qword ptr [rsp + 0x288]
               	test	eax, eax
               	je	 <L232>
               	mov	r8d, eax
               	neg	r8d
               	mov	r11d, 0x1
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0x960>
               	xor	r10d, r10d
               	vpbroadcastw	xmm2, word ptr  <__libc_start_main+0x9a4>
               	lea	rbx,  <__libc_start_main+0x9a8>
               	vbroadcastss	ymm3, dword ptr  <__libc_start_main+0x988>
               	mov	r13, qword ptr [rsp + 0x248]
               	mov	qword ptr [rsp + 0x2c8], r8
               	jmp	 <L233>
               	nop	word ptr [rax + rax]
<L240>:
               	vpermq	ymm4, ymm0, 0xe3        # ymm4 = ymm0[3,0,2,3]
               	vpermq	ymm5, ymm0, 0xe9        # ymm5 = ymm0[1,2,2,3]
               	vpextrq	rax, xmm0, 0x1
               	shl	rax, 0x11
               	vpxor	xmm5, xmm5, xmm4
               	vpextrq	rcx, xmm5, 0x1
               	vpxor	xmm0, xmm5, xmm0
               	xor	rcx, rax
               	vmovq	xmm4, rcx
               	vmovq	rax, xmm5
               	rol	rax, 0x2d
               	vmovq	xmm5, rax
               	mov	rbx, qword ptr [rsp + 0x250]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2a8]
               	mov	r8, qword ptr [rsp + 0x2a0]
               	xor	rcx, r8
               	mov	r14, qword ptr [rsp + 0x298]
               	xor	r14, rbx
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x250], rbx
               	xor	r8, r14
               	mov	qword ptr [rsp + 0x2a0], r8
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x2a8], rcx
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x298], r14
               	mov	rbx, qword ptr [rsp + 0x220]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x290]
               	mov	r8, qword ptr [rsp + 0x1c8]
               	xor	r8, rcx
               	mov	r15, qword ptr [rsp + 0x1c0]
               	xor	r15, rbx
               	xor	rbx, r8
               	mov	qword ptr [rsp + 0x220], rbx
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x290], rcx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x1c0], r15
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x1c8], r8
               	mov	r14, qword ptr [rsp + 0x210]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	r8, qword ptr [rsp + 0x1b0]
               	xor	r8, rcx
               	mov	rbx, qword ptr [rsp + 0x1a8]
               	xor	rbx, r14
               	xor	r14, r8
               	mov	qword ptr [rsp + 0x210], r14
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x1b8], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x1b0], r8
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x1a8], rbx
               	mov	rbx, qword ptr [rsp + 0x200]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	r8, qword ptr [rsp + 0x198]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x2b8], r12
               	mov	qword ptr [rsp + 0x2d8], r10
               	mov	r10, qword ptr [rsp + 0x190]
               	xor	r10, rbx
               	xor	rbx, r8
               	mov	qword ptr [rsp + 0x200], rbx
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x1a0], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x198], r8
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x190], r10
               	mov	r10, qword ptr [rsp + 0x1f0]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x188]
               	mov	r8, qword ptr [rsp + 0x180]
               	xor	r8, rcx
               	mov	r13, qword ptr [rsp + 0x178]
               	xor	r13, r10
               	xor	r10, r8
               	mov	qword ptr [rsp + 0x1f0], r10
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x188], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x180], r8
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x178], r13
               	mov	r10, qword ptr [rsp + 0x1e0]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x170]
               	mov	r8, qword ptr [rsp + 0x168]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x258], rdi
               	mov	rdi, qword ptr [rsp + 0x160]
               	xor	rdi, r10
               	xor	r10, r8
               	mov	qword ptr [rsp + 0x1e0], r10
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x170], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x160], rdi
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x168], r8
               	mov	rdi, qword ptr [rsp + 0x20]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x158]
               	mov	r8, qword ptr [rsp + 0x150]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x280], r9
               	mov	r9, qword ptr [rsp + 0x148]
               	xor	r9, rdi
               	xor	rdi, r8
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x158], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x150], r8
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x148], r9
               	mov	rdi, qword ptr [rsp + 0x18]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x140]
               	mov	r8, qword ptr [rsp + 0x138]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x58], rsi
               	mov	rsi, qword ptr [rsp + 0x130]
               	xor	rsi, rdi
               	xor	rdi, r8
               	mov	qword ptr [rsp + 0x18], rdi
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x140], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x138], r8
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x130], rsi
               	mov	rsi, qword ptr [rsp + 0x10]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x128]
               	mov	r8, qword ptr [rsp + 0x120]
               	xor	r8, rcx
               	mov	r12, qword ptr [rsp + 0x118]
               	xor	r12, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x10], rsi
               	xor	rcx, r12
               	mov	qword ptr [rsp + 0x128], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x120], r8
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x118], r12
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x110]
               	mov	r8, qword ptr [rsp + 0x108]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x2b0], rdx
               	mov	rdx, qword ptr [rsp + 0x100]
               	xor	rdx, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x8], rsi
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0x110], rcx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x100], rdx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x108], r8
               	mov	rdx, qword ptr [rsp]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xf8]
               	mov	r8, qword ptr [rsp + 0xf0]
               	xor	r8, rcx
               	mov	r15, qword ptr [rsp + 0xe8]
               	xor	r15, rdx
               	xor	rdx, r8
               	mov	qword ptr [rsp], rdx
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0xf8], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xf0], r8
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xe8], r15
               	mov	r12, qword ptr [rsp + 0x50]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xe0]
               	mov	r8, qword ptr [rsp + 0xd8]
               	xor	r8, rcx
               	mov	rbx, qword ptr [rsp + 0xd0]
               	xor	rbx, r12
               	xor	r12, r8
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0xe0], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xd8], r8
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0xd0], rbx
               	mov	r15, qword ptr [rsp + 0x48]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xc8]
               	mov	r8, qword ptr [rsp + 0xc0]
               	xor	r8, rcx
               	mov	r10, qword ptr [rsp + 0xb8]
               	xor	r10, r15
               	xor	r15, r8
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0xc8], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xc0], r8
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0xb8], r10
               	mov	qword ptr [rsp + 0x2d0], r11
               	mov	r11, qword ptr [rsp + 0x40]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	r8, qword ptr [rsp + 0xa8]
               	xor	r8, rcx
               	mov	r13, qword ptr [rsp + 0xa0]
               	xor	r13, r11
               	xor	r11, r8
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0xb0], rcx
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0xa0], r13
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xa8], r8
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r13, qword ptr [rsp + 0x1d8]
               	mov	rcx, qword ptr [rsp + 0x98]
               	xor	rcx, r13
               	mov	rbx, qword ptr [rsp + 0x90]
               	xor	rbx, r9
               	xor	r9, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x98], rcx
               	mov	rdi, qword ptr [rsp + 0x30]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r13, qword ptr [rsp + 0x1d0]
               	mov	rcx, qword ptr [rsp + 0x88]
               	xor	rcx, r13
               	mov	r10, qword ptr [rsp + 0x80]
               	xor	r10, rdi
               	xor	rdi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x88], rcx
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r13, qword ptr [rsp + 0x78]
               	mov	rcx, qword ptr [rsp + 0x70]
               	xor	rcx, r13
               	mov	r8, qword ptr [rsp + 0x68]
               	xor	r8, rdx
               	xor	rdx, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	rax, qword ptr [rsp + 0x260]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x230]
               	xor	rcx, qword ptr [rsp + 0x2b8]
               	mov	qword ptr [rsp + 0x230], rcx
               	mov	rsi, qword ptr [rsp + 0x60]
               	xor	rsi, qword ptr [rsp + 0x260]
               	mov	rcx, qword ptr [rsp + 0x230]
               	xor	qword ptr [rsp + 0x260], rcx
               	xor	qword ptr [rsp + 0x230], rax
               	mov	rax, qword ptr [rsp + 0x258]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x58]
               	xor	rcx, qword ptr [rsp + 0x2b0]
               	mov	qword ptr [rsp + 0x58], rcx
               	mov	rcx, qword ptr [rsp + 0x280]
               	xor	rcx, qword ptr [rsp + 0x258]
               	mov	qword ptr [rsp + 0x280], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	xor	qword ptr [rsp + 0x258], rcx
               	vpextrq	rcx, xmm0, 0x1
               	xor	qword ptr [rsp + 0x58], rax
               	lea	rax, [rcx + 4*rcx]
               	rol	rax, 0x7
               	lea	r14, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x250]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x220]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e0], r14
               	mov	qword ptr [rsp + 0x2e8], rax
               	mov	rax, qword ptr [rsp + 0x210]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f0], rcx
               	mov	rcx, qword ptr [rsp + 0x200]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rax
               	mov	rax, qword ptr [rsp + 0x1f0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x300], rcx
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x308], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x310], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x318], rax
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x320], rcx
               	mov	rcx, qword ptr [rsp + 0x8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x328], rax
               	mov	rax, qword ptr [rsp]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x330], rcx
               	mov	qword ptr [rsp + 0x50], r12
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x338], rax
               	mov	qword ptr [rsp + 0x48], r15
               	lea	rax, [r15 + 4*r15]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x340], rcx
               	mov	qword ptr [rsp + 0x40], r11
               	lea	rcx, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x2d0]
               	mov	r12, qword ptr [rsp + 0x2b8]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x348], rax
               	mov	qword ptr [rsp + 0x38], r9
               	lea	rax, [r9 + 4*r9]
               	mov	r9, qword ptr [rsp + 0x280]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x350], rcx
               	mov	qword ptr [rsp + 0x30], rdi
               	lea	rcx, [rdi + 4*rdi]
               	mov	rdi, qword ptr [rsp + 0x258]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x358], rax
               	mov	qword ptr [rsp + 0x28], rdx
               	lea	rax, [rdx + 4*rdx]
               	mov	rdx, qword ptr [rsp + 0x2b0]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x360], rcx
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x368], rax
               	mov	rax, qword ptr [rsp + 0x260]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x370], rax
               	lea	rax, [rdi + 4*rdi]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x378], rax
               	xor	qword ptr [rsp + 0x1d8], rbx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x90], rbx
               	lea	rbx,  <__libc_start_main+0x9a8>
               	vpbroadcastq	ymm4, xmm4
               	xor	qword ptr [rsp + 0x1d0], r10
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x80], r10
               	mov	r10, qword ptr [rsp + 0x2d8]
               	vpblendd	ymm0, ymm0, ymm4, 0x30  # ymm0 = ymm0[0,1,2,3],ymm4[4,5],ymm0[6,7]
               	xor	r13, r8
               	mov	qword ptr [rsp + 0x78], r13
               	mov	r13, qword ptr [rsp + 0x248]
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x2c8]
               	vpbroadcastq	ymm4, xmm5
               	xor	r12, rsi
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x60], rsi
               	mov	rsi, qword ptr [rsp + 0x58]
               	vpblendd	ymm0, ymm0, ymm4, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm4[6,7]
               	xor	rdx, r9
               	rol	r9, 0x2d
<L243>:
               	lea	eax, [r8 + r11]
               	inc	eax
               	mov	ecx, r11d
               	inc	ecx
               	mov	r11d, ecx
               	cmp	eax, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x2e8]
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x308]
               	movzx	eax, r14b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	r14b, al
               	cmp	r14b, 0xc
               	ja	 <L235>
               	vpand	ymm6, ymm5, ymm1
               	vpand	ymm7, ymm4, ymm1
               	vpackusdw	ymm6, ymm7, ymm6
               	vextracti128	xmm7, ymm6, 0x1
               	vpackusdw	xmm6, xmm6, xmm7
               	vpshufd	xmm6, xmm6, 0xd8        # xmm6 = xmm6[0,2,1,3]
               	vpackuswb	xmm6, xmm6, xmm6
               	vmovdqu	xmm7, xmmword ptr [rsp + 0x328]
               	vpshufb	xmm7, xmm7, xmm2
               	movzx	eax, r14b
               	movsxd	rax, dword ptr [rbx + 4*rax]
               	add	rax, rbx
               	jmp	rax
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>
               	jmp	 <L236>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeEllipsoid@Evaluation.Replication.Ellipsoid(void const*)>
               	jmp	 <L237>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeTriangle@Evaluation.Replication.Triangle(void const*)>
               	jmp	 <L238>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
               	mov	qword ptr [r13 + 8*rax], rcx
               	inc	r10
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [r13 + 8*rax + 0x8], ymm6
               	vmovups	ymm6, ymmword ptr [rsp + 0x338]
               	vmovups	ymm7, ymmword ptr [rsp + 0x348]
               	vinsertf128	ymm7, ymm7, xmmword ptr [rsp + 0x368], 0x1
               	vinsertf128	ymm6, ymm6, xmmword ptr [rsp + 0x358], 0x1
               	vshufps	ymm6, ymm6, ymm7, 0x88  # ymm6 = ymm6[0,2],ymm7[0,2],ymm6[4,6],ymm7[4,6]
               	vandps	ymm6, ymm6, ymm3
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [r13 + 8*rax + 0x28], ymm6
               	test	r11b, 0x7
               	jne	 <L239>
               	jmp	 <L240>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeCylinder@Evaluation.Replication.Cylinder(void const*)>
               	jmp	 <L241>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeRectangle@Evaluation.Replication.Rectangle(void const*)>
               	jmp	 <L238>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeSquare@Evaluation.Replication.Square(void const*)>
               	jmp	 <L236>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumePyramid@Evaluation.Replication.Pyramid(void const*)>
               	jmp	 <L237>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeEllipse@Evaluation.Replication.Ellipse(void const*)>
<L238>:
               	mov	qword ptr [r13 + 8*rax], rcx
               	inc	r10
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [r13 + 8*rax + 0x8], ymm6
               	vpextrb	ecx, xmm7, 0x0
               	jmp	 <L242>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeCube@Evaluation.Replication.Cube(void const*)>
               	jmp	 <L236>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeCuboid@Evaluation.Replication.Cuboid(void const*)>
<L237>:
               	mov	qword ptr [r13 + 8*rax], rcx
               	inc	r10
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [r13 + 8*rax + 0x8], ymm6
               	vpmovzxbd	xmm6, xmm7      # xmm6 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero
               	vcvtdq2ps	xmm6, xmm6
               	vmovlps	qword ptr [r13 + 8*rax + 0x28], xmm6
               	test	r11b, 0x7
               	jne	 <L239>
               	jmp	 <L240>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeCone@Evaluation.Replication.Cone(void const*)>
<L241>:
               	mov	qword ptr [r13 + 8*rax], rcx
               	inc	r10
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [r13 + 8*rax + 0x8], ymm6
               	vpextrb	ecx, xmm7, 0x1
<L242>:
               	vcvtsi2ss	xmm6, xmm9, ecx
               	vmovss	dword ptr [r13 + 8*rax + 0x28], xmm6
<L235>:
               	test	r11b, 0x7
               	jne	 <L239>
               	jmp	 <L240>
               	lea	rax, [r10 + 8*r10]
               	lea	rcx,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
<L236>:
               	mov	qword ptr [r13 + 8*rax], rcx
               	inc	r10
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [r13 + 8*rax + 0x8], ymm6
               	test	r11b, 0x7
               	je	 <L240>
<L239>:
               	vpblendd	ymm4, ymm5, ymm4, 0xc0  # ymm4 = ymm5[0,1,2,3,4,5],ymm4[6,7]
               	vpermq	ymm4, ymm4, 0x93        # ymm4 = ymm4[3,0,1,2]
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x2e0]
               	vmovdqu	ymm6, ymmword ptr [rsp + 0x320]
               	vmovdqu	ymm7, ymmword ptr [rsp + 0x340]
               	vmovdqu	ymm8, ymmword ptr [rsp + 0x360]
               	vpsrlq	ymm5, ymm5, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2e0], ymm5
               	vpsrlq	ymm4, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x300], ymm4
               	vpsrlq	ymm4, ymm6, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x320], ymm4
               	vpsrlq	ymm4, ymm7, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x340], ymm4
               	vpsrlq	ymm4, ymm8, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x360], ymm4
               	vmovq	r14, xmm5
               	jmp	 <L243>
<L234>:
               	shl	r10, 0x3
               	lea	r14, [r10 + 8*r10]
               	test	r14, r14
               	je	 <L244>
               	add	r14, r13
               	mov	r12d, 0x1
               	xor	r15d, r15d
               	mov	eax, 0x1
               	jmp	 <L245>
               	nop	dword ptr [rax]
<L247>:
               	add	r13, 0x240
               	inc	r12d
               	popcnt	eax, r12d
               	mov	r15d, ebx
               	cmp	r13, r14
               	je	 <L246>
<L245>:
               	mov	ebx, eax
               	lea	rdi, [r13 + 0x8]
               	vzeroupper
               	call	qword ptr [r13]
               	vmovaps	xmmword ptr [rsp + 0x260], xmm0
               	lea	rdi, [r13 + 0x50]
               	call	qword ptr [r13 + 0x48]
               	vmovaps	xmmword ptr [rsp + 0x230], xmm0
               	lea	rdi, [r13 + 0x98]
               	call	qword ptr [r13 + 0x90]
               	vmovaps	xmmword ptr [rsp + 0x220], xmm0
               	lea	rdi, [r13 + 0xe0]
               	call	qword ptr [r13 + 0xd8]
               	vmovaps	xmmword ptr [rsp + 0x210], xmm0
               	lea	rdi, [r13 + 0x128]
               	call	qword ptr [r13 + 0x120]
               	vmovaps	xmmword ptr [rsp + 0x200], xmm0
               	lea	rdi, [r13 + 0x170]
               	call	qword ptr [r13 + 0x168]
               	vmovaps	xmmword ptr [rsp + 0x1f0], xmm0
               	lea	rdi, [r13 + 0x1b8]
               	call	qword ptr [r13 + 0x1b0]
               	vmovaps	xmmword ptr [rsp + 0x1e0], xmm0
               	lea	rdi, [r13 + 0x200]
               	call	qword ptr [r13 + 0x1f8]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x200]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x1f0], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x1e0], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm0, xmm1, xmm0, 0x30 # xmm0 = xmm1[0,1,2],xmm0[0]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x260]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x230], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x220], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x210], 0x30 # xmm1 = xmm1[0,1,2],mem[0]
               	movsxd	rcx, r15d
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x2e0], xmm1
               	vmovaps	xmmword ptr [rsp + rax + 0x2f0], xmm0
               	sub	ecx, ebx
               	jb	 <L247>
               	mov	eax, r15d
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x2e0]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L248>
               	lea	rsi, [rsp + 0x2c0]
               	add	rdx, rsi
               	xor	esi, esi
               	nop	dword ptr [rax]
<L249>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L249>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, ebx
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L247>
               	jmp	 <L250>
<L248>:
               	mov	rcx, rax
               	mov	edx, ebx
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L247>
<L250>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	lea	rsi, [rsp + 0x2c0]
               	add	rax, rsi
               	inc	rcx
               	nop	word ptr cs:[rax + rax]
<L251>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x40]
               	vmovaps	ymmword ptr [rax - 0x40], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x60]
               	vmovaps	ymmword ptr [rax - 0x60], ymm0
               	add	rax, -0x80
               	add	rcx, -0x4
               	cmp	rcx, rdx
               	jg	 <L251>
               	jmp	 <L247>
<L246>:
               	cmp	ebx, 0x2
               	mov	r13, qword ptr [rsp + 0x248]
               	jb	 <L244>
               	mov	eax, ebx
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x2c0]
               	test	bl, 0x1
               	jne	 <L252>
               	dec	rax
               	lea	rdx, [rsp + 0x2e0]
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L252>:
               	cmp	ebx, 0x2
               	je	 <L244>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	lea	rdx, [rsp + 0x2e0]
               	add	rax, rdx
               	add	rax, -0x40
               	nop
<L253>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L253>
               	jmp	 <L244>
<L232>:
               	mov	r13, qword ptr [rsp + 0x248]
<L244>:
               	vmovaps	ymm1, ymmword ptr [rsp + 0x2e0]
               	test	r13, r13
               	je	 <L254>
               	mov	rdi, r13
               	vmovaps	ymmword ptr [rsp + 0x260], ymm1
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x260]
<L254>:
               	cmp	dword ptr [rsp + 0x2c0], 0x2a
               	mov	rax, qword ptr [rsp + 0x288]
               	jne	 <L255>
               	cmp	eax, 0x186a0
               	jne	 <L255>
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0x99c>
               	jne	 <L256>
<L255>:
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
<L256>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x260], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x260] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x6938>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	int3
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x990>
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

<Bodies3D::ComputeVolumeEllipse@Evaluation.Replication.Ellipse(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x990>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<Bodies3D::ComputeVolumeRectangle@Evaluation.Replication.Rectangle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeSquare@Evaluation.Replication.Square(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeTriangle@Evaluation.Replication.Triangle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x998>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<Bodies3D::ComputeVolumeCube@Evaluation.Replication.Cube(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<Bodies3D::ComputeVolumeCuboid@Evaluation.Replication.Cuboid(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

<Bodies3D::ComputeVolumePyramid@Evaluation.Replication.Pyramid(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x994>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x9a0>
               	vmulss	xmm0, xmm1, xmm0
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

<Bodies3D::ComputeVolumeCylinder@Evaluation.Replication.Cylinder(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x990>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<Bodies3D::ComputeVolumeCone@Evaluation.Replication.Cone(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x98c>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
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

<Bodies3D::ComputeVolumeEllipsoid@Evaluation.Replication.Ellipsoid(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x9a0>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x6910>
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
