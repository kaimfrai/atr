
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
               	call	qword ptr  <__libc_start_main+0x62b0>
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
               	mov	rax, qword ptr  <__libc_start_main+0x62c0>
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
               	mov	rax, qword ptr  <__libc_start_main+0x62c8>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x62d0>
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
               	sub	rsp, 0x328
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
               	movabs	r14, 0x180ec6d33cfd0aba
               	mov	r12d, ecx
               	mov	eax, ebx
               	mov	qword ptr [rsp + 0x310], rax
               	movsxd	rax, ecx
               	shl	rax, 0x3
               	lea	rdi, [rax + 8*rax]
               	mov	rsi, qword ptr  <__libc_start_main+0x62d8>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	r9, r14
               	mov	qword ptr [rsp + 0x210], rax
               	movsxd	rax, ebx
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <__libc_start_main+0x920>
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
               	vpxor	ymm0, ymm1, ymm0
               	vmovq	rax, xmm0
               	vpextrq	rsi, xmm0, 0x1
               	vextracti128	xmm1, ymm0, 0x1
               	vmovq	rcx, xmm1
               	vpextrq	rdx, xmm1, 0x1
               	xor	r13d, r13d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	xor	ebx, ebx
               	xor	edi, edi
               	mov	r8, rsi
               	mov	qword ptr [rsp + 0x1d0], rsi
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r9, rdi
               	jae	 <L6>
               	xor	r15, rax
               	xor	r13, rsi
               	xor	r10, rcx
               	xor	rbx, rdx
               	jmp	 <L6>
<L5>:
               	movabs	r14, -0x2a59ed990f36c6d4
               	mov	rdi, r12
               	shl	rdi, 0x20
               	mov	qword ptr [rsp + 0x308], rdi
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
               	bt	r14, rdi
               	jae	 <L9>
               	xor	r15, rax
               	xor	r13, rsi
               	xor	r10, rcx
               	xor	rbx, rdx
               	jmp	 <L9>
<L8>:
               	movabs	r11, -0x56a7d9e71fc03656
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
               	bt	r11, rdi
               	jae	 <L12>
               	xor	r15, rax
               	xor	r13, rsi
               	xor	r10, rcx
               	xor	rbx, rdx
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	dword ptr [rax + rax]
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
               	xor	r15, rax
               	xor	r13, rsi
               	xor	r10, rcx
               	xor	rbx, rdx
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x220], r12
               	xor	ebp, ebp
               	xor	r12d, r12d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b8], rax
               	xor	edi, edi
               	mov	rax, rbx
               	mov	rcx, r10
               	mov	rdx, r13
               	mov	rsi, r15
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
               	bt	r9, rdi
               	jae	 <L18>
               	xor	rbp, rsi
               	xor	r12, rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
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
               	bt	r14, rdi
               	jae	 <L21>
               	xor	rbp, rsi
               	xor	r12, rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
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
               	bt	r11, rdi
               	jae	 <L24>
               	xor	rbp, rsi
               	xor	r12, rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
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
               	xor	rbp, rsi
               	xor	r12, rdx
               	xor	qword ptr [rsp + 0x1c0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
               	jmp	 <L27>
<L26>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1b8]
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	rdx, r12
               	mov	rsi, rbp
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
               	bt	r9, rdi
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x1b0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
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
               	bt	r14, rdi
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1b0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
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
               	bt	r11, rdi
               	jae	 <L36>
               	xor	qword ptr [rsp + 0x1b0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
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
               	xor	qword ptr [rsp + 0x1b0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1a8], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L39>
<L38>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x198], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x190], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x188], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1a0]
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0x1b0]
               	jmp	 <L40>
               	nop	dword ptr [rax + rax]
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
               	bt	r9, rdi
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x198], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x188], rax
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
               	bt	r14, rdi
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x198], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x188], rax
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
               	bt	r11, rdi
               	jae	 <L48>
               	xor	qword ptr [rsp + 0x198], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x188], rax
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
               	xor	qword ptr [rsp + 0x198], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x190], rcx
               	xor	qword ptr [rsp + 0x188], rax
               	jmp	 <L51>
<L50>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x180], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x178], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x170], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x188]
               	mov	rcx, qword ptr [rsp + 0x190]
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x198]
               	jmp	 <L52>
               	nop	dword ptr [rax + rax]
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
               	bt	r9, rdi
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x178], rcx
               	xor	qword ptr [rsp + 0x170], rax
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
               	bt	r14, rdi
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x178], rcx
               	xor	qword ptr [rsp + 0x170], rax
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
               	bt	r11, rdi
               	jae	 <L60>
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x178], rcx
               	xor	qword ptr [rsp + 0x170], rax
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
               	xor	qword ptr [rsp + 0x180], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x178], rcx
               	xor	qword ptr [rsp + 0x170], rax
               	jmp	 <L63>
<L62>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x168], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x18], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x160], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x158], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x170]
               	mov	rcx, qword ptr [rsp + 0x178]
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0x180]
               	jmp	 <L64>
               	nop	dword ptr [rax + rax]
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
               	bt	r9, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	qword ptr [rsp + 0x158], rax
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
               	bt	r14, rdi
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	qword ptr [rsp + 0x158], rax
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
               	bt	r11, rdi
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	qword ptr [rsp + 0x158], rax
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
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	qword ptr [rsp + 0x158], rax
               	jmp	 <L75>
<L74>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x150], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x10], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x148], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x140], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x158]
               	mov	rcx, qword ptr [rsp + 0x160]
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x168]
               	jmp	 <L76>
               	nop	dword ptr [rax + rax]
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
               	bt	r9, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x148], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L78>
<L77>:
               	xor	edi, edi
               	jmp	 <L79>
               	nop	dword ptr [rax]
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
               	bt	r14, rdi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x148], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L81>
<L80>:
               	xor	edi, edi
               	jmp	 <L82>
               	nop	dword ptr [rax]
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
               	bt	r11, rdi
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x148], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L84>
<L83>:
               	xor	edi, edi
               	jmp	 <L85>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x150], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x148], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L87>
<L86>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x138], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x130], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x128], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x140]
               	mov	rcx, qword ptr [rsp + 0x148]
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x150]
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
               	bt	r9, rdi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	qword ptr [rsp + 0x128], rax
               	jmp	 <L90>
<L89>:
               	xor	edi, edi
               	jmp	 <L91>
               	nop	dword ptr [rax]
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
               	bt	r14, rdi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	qword ptr [rsp + 0x128], rax
               	jmp	 <L93>
<L92>:
               	xor	edi, edi
               	jmp	 <L94>
               	nop	dword ptr [rax]
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
               	bt	r11, rdi
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	qword ptr [rsp + 0x128], rax
               	jmp	 <L96>
<L95>:
               	xor	edi, edi
               	jmp	 <L97>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x138], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	xor	qword ptr [rsp + 0x128], rax
               	jmp	 <L99>
<L98>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x120], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x68], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x118], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x110], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x128]
               	mov	rcx, qword ptr [rsp + 0x130]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x138]
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
               	bt	r9, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x120], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x110], rax
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
               	bt	r14, rdi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x120], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x110], rax
               	jmp	 <L105>
<L104>:
               	xor	edi, edi
               	jmp	 <L106>
               	nop	dword ptr [rax]
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
               	bt	r11, rdi
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x120], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x110], rax
               	jmp	 <L108>
<L107>:
               	xor	edi, edi
               	jmp	 <L109>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x120], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x118], rcx
               	xor	qword ptr [rsp + 0x110], rax
               	jmp	 <L111>
<L110>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x108], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x60], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x100], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x110]
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	rsi, qword ptr [rsp + 0x120]
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
               	bt	r9, rdi
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L114>
<L113>:
               	xor	edi, edi
               	jmp	 <L115>
               	nop	dword ptr [rax]
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
               	bt	r14, rdi
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L117>
<L116>:
               	xor	edi, edi
               	jmp	 <L118>
               	nop	dword ptr [rax]
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
               	bt	r11, rdi
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L120>
<L119>:
               	xor	edi, edi
               	jmp	 <L121>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L123>
<L122>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x58], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xf8]
               	mov	rcx, qword ptr [rsp + 0x100]
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rsi, qword ptr [rsp + 0x108]
               	jmp	 <L124>
               	nop	dword ptr [rax + rax]
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
               	bt	r9, rdi
               	jae	 <L126>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L126>
<L125>:
               	xor	edi, edi
               	jmp	 <L127>
               	nop	dword ptr [rax]
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
               	bt	r14, rdi
               	jae	 <L129>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L129>
<L128>:
               	xor	edi, edi
               	jmp	 <L130>
               	nop	dword ptr [rax]
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
               	bt	r11, rdi
               	jae	 <L132>
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L132>
<L131>:
               	xor	edi, edi
               	jmp	 <L133>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L135>
<L134>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x50], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xe0]
               	mov	rcx, qword ptr [rsp + 0xe8]
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0xf0]
               	jmp	 <L136>
               	nop	dword ptr [rax + rax]
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
               	bt	r9, rdi
               	jae	 <L138>
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L138>
<L137>:
               	xor	edi, edi
               	jmp	 <L139>
               	nop	dword ptr [rax]
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
               	bt	r14, rdi
               	jae	 <L141>
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L141>
<L140>:
               	xor	edi, edi
               	jmp	 <L142>
               	nop	dword ptr [rax]
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
               	bt	r11, rdi
               	jae	 <L144>
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L144>
<L143>:
               	xor	edi, edi
               	jmp	 <L145>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L147>
<L146>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xc8]
               	mov	rcx, qword ptr [rsp + 0xd0]
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0xd8]
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
               	bt	r9, rdi
               	jae	 <L150>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
               	jmp	 <L150>
<L149>:
               	xor	edi, edi
               	jmp	 <L151>
               	nop	dword ptr [rax]
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
               	bt	r14, rdi
               	jae	 <L153>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
               	jmp	 <L153>
<L152>:
               	xor	edi, edi
               	jmp	 <L154>
               	nop	dword ptr [rax]
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
               	bt	r11, rdi
               	jae	 <L156>
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
               	jmp	 <L156>
<L155>:
               	xor	edi, edi
               	jmp	 <L157>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xc0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
               	jmp	 <L159>
<L158>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xb0]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0xc0]
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
               	bt	r9, rdi
               	jae	 <L162>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L162>
<L161>:
               	xor	edi, edi
               	jmp	 <L163>
               	nop	dword ptr [rax]
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
               	bt	r14, rdi
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L165>
<L164>:
               	xor	edi, edi
               	jmp	 <L166>
               	nop	dword ptr [rax]
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
               	bt	r11, rdi
               	jae	 <L168>
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L168>
<L167>:
               	xor	edi, edi
               	jmp	 <L169>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L171>
<L170>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x90], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x98]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0xa8]
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
               	bt	r9, rdi
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x1c8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L174>
<L173>:
               	xor	edi, edi
               	jmp	 <L175>
               	nop	dword ptr [rax]
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
               	bt	r14, rdi
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x1c8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L177>
<L176>:
               	xor	edi, edi
               	jmp	 <L178>
               	nop	dword ptr [rax]
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
               	bt	r11, rdi
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x1c8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L180>
<L179>:
               	xor	edi, edi
               	jmp	 <L181>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1c8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L183>
<L182>:
               	mov	qword ptr [rsp + 0x240], rbx
               	mov	qword ptr [rsp + 0x248], r15
               	mov	qword ptr [rsp + 0x250], r10
               	mov	qword ptr [rsp + 0x1f8], r13
               	xor	r13d, r13d
               	xor	r10d, r10d
               	xor	r15d, r15d
               	xor	ebx, ebx
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x88]
               	mov	rcx, qword ptr [rsp + 0x90]
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	jmp	 <L184>
               	nop
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
               	bt	r9, rdi
               	jae	 <L186>
               	xor	r13, rsi
               	xor	r10, rdx
               	xor	r15, rcx
               	xor	rbx, rax
               	jmp	 <L186>
<L185>:
               	xor	edi, edi
               	jmp	 <L187>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L189>
               	xor	r13, rsi
               	xor	r10, rdx
               	xor	r15, rcx
               	xor	rbx, rax
               	jmp	 <L189>
<L188>:
               	xor	edi, edi
               	jmp	 <L190>
               	nop	dword ptr [rax + rax]
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
               	bt	r11, rdi
               	jae	 <L192>
               	xor	r13, rsi
               	xor	r10, rdx
               	xor	r15, rcx
               	xor	rbx, rax
               	jmp	 <L192>
<L191>:
               	xor	edi, edi
               	jmp	 <L193>
               	nop	dword ptr [rax + rax]
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
               	xor	r13, rsi
               	xor	r10, rdx
               	xor	r15, rcx
               	xor	rbx, rax
               	jmp	 <L195>
<L194>:
               	mov	rdi, r13
               	mov	rsi, r10
               	mov	rcx, r15
               	mov	rax, rbx
               	xor	r15d, r15d
               	xor	r10d, r10d
               	xor	r13d, r13d
               	xor	ebx, ebx
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1e8], rax
               	mov	qword ptr [rsp + 0x230], rcx
               	mov	rdx, rsi
               	mov	qword ptr [rsp + 0x218], rsi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	mov	r14, r9
               	jmp	 <L196>
               	nop	word ptr cs:[rax + rax]
<L198>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rcx, rdi
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	rdi, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	mov	r9, r14
               	je	 <L197>
<L196>:
               	bt	r9, r8
               	jae	 <L198>
               	xor	r15, rdi
               	xor	r10, rsi
               	xor	r13, rcx
               	xor	rbx, rax
               	jmp	 <L198>
<L197>:
               	xor	r8d, r8d
               	movabs	rdx, -0x2a59ed990f36c6d4
               	jmp	 <L199>
               	nop	dword ptr [rax]
<L201>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rcx, rdi
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	rdi, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L200>
<L199>:
               	bt	rdx, r8
               	jae	 <L201>
               	xor	r15, rdi
               	xor	r10, rsi
               	xor	r13, rcx
               	xor	rbx, rax
               	jmp	 <L201>
<L200>:
               	mov	r11, rbp
               	mov	qword ptr [rsp + 0x1f0], r12
               	mov	qword ptr [rsp], rbx
               	xor	r8d, r8d
               	jmp	 <L202>
               	nop	dword ptr [rax + rax]
<L204>:
               	xor	r15, rdi
               	xor	r10, rsi
               	xor	r13, rcx
               	mov	rdx, qword ptr [rsp]
               	xor	rdx, rax
<L205>:
               	mov	qword ptr [rsp], rdx
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rcx, rdi
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	rdi, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L203>
<L202>:
               	movabs	rdx, -0x56a7d9e71fc03656
               	bt	rdx, r8
               	jb	 <L204>
               	mov	rdx, qword ptr [rsp]
               	jmp	 <L205>
<L203>:
               	xor	r8d, r8d
               	jmp	 <L206>
               	nop	word ptr cs:[rax + rax]
<L208>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rcx, rdi
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	rdi, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L207>
<L206>:
               	movabs	rdx, 0x39abdc4529b1661c
               	bt	rdx, r8
               	jae	 <L208>
               	xor	r15, rdi
               	xor	r10, rsi
               	xor	r13, rcx
               	xor	qword ptr [rsp], rax
               	jmp	 <L208>
<L207>:
               	mov	rdx, r14
               	mov	qword ptr [rsp + 0x238], r11
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	xor	r14d, r14d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x70], rax
               	xor	esi, esi
               	mov	rdi, qword ptr [rsp]
               	mov	r8, r13
               	mov	r9, r10
               	mov	rax, r15
               	movabs	rcx, -0x2a59ed990f36c6d4
               	jmp	 <L209>
               	nop	word ptr cs:[rax + rax]
<L211>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L210>
<L209>:
               	bt	rdx, rsi
               	jae	 <L211>
               	xor	qword ptr [rsp + 0x80], rax
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x70], rdi
               	jmp	 <L211>
<L210>:
               	xor	esi, esi
               	jmp	 <L212>
               	nop	word ptr cs:[rax + rax]
<L214>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L213>
<L212>:
               	bt	rcx, rsi
               	jae	 <L214>
               	xor	qword ptr [rsp + 0x80], rax
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x70], rdi
               	jmp	 <L214>
<L213>:
               	xor	esi, esi
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L215>
               	nop
<L217>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L216>
<L215>:
               	bt	rcx, rsi
               	jae	 <L217>
               	xor	qword ptr [rsp + 0x80], rax
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x70], rdi
               	jmp	 <L217>
<L216>:
               	xor	esi, esi
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L218>
               	nop
<L220>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L219>
<L218>:
               	bt	rcx, rsi
               	jae	 <L220>
               	xor	qword ptr [rsp + 0x80], rax
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x70], rdi
               	jmp	 <L220>
<L219>:
               	mov	qword ptr [rsp + 0x228], r13
               	mov	qword ptr [rsp + 0x1d8], r15
               	xor	ecx, ecx
               	xor	r12d, r12d
               	xor	r11d, r11d
               	xor	ebp, ebp
               	xor	ebx, ebx
               	mov	r15, qword ptr [rsp + 0x70]
               	mov	r13, qword ptr [rsp + 0x78]
               	mov	r8, r14
               	mov	rsi, qword ptr [rsp + 0x80]
               	mov	r10, r9
               	jmp	 <L221>
               	nop	word ptr cs:[rax + rax]
<L223>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r13, rsi
               	xor	r15, r14
               	xor	r14, r13
               	xor	rsi, r15
               	xor	r13, rax
               	rol	r15, 0x2d
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L222>
<L221>:
               	bt	rdx, rbx
               	jae	 <L223>
               	xor	rcx, rsi
               	xor	r12, r14
               	xor	r11, r13
               	xor	rbp, r15
               	jmp	 <L223>
<L222>:
               	xor	ebx, ebx
               	mov	rdx, qword ptr [rsp]
               	mov	r9, rcx
               	jmp	 <L224>
               	nop	word ptr cs:[rax + rax]
<L226>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r13, rsi
               	xor	r15, r14
               	xor	r14, r13
               	xor	rsi, r15
               	xor	r13, rax
               	rol	r15, 0x2d
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L225>
<L224>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, rbx
               	jae	 <L226>
               	xor	r9, rsi
               	xor	r12, r14
               	xor	r11, r13
               	xor	rbp, r15
               	jmp	 <L226>
<L225>:
               	xor	ebx, ebx
               	movabs	rcx, -0x56a7d9e71fc03656
               	mov	rdi, qword ptr [rsp + 0x1e8]
               	jmp	 <L227>
               	nop	word ptr [rax + rax]
<L229>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r13, rsi
               	xor	r15, r14
               	xor	r14, r13
               	xor	rsi, r15
               	xor	r13, rax
               	rol	r15, 0x2d
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L228>
<L227>:
               	bt	rcx, rbx
               	jae	 <L229>
               	xor	r9, rsi
               	xor	r12, r14
               	xor	r11, r13
               	xor	rbp, r15
               	jmp	 <L229>
<L228>:
               	xor	ebx, ebx
               	jmp	 <L230>
               	nop	dword ptr [rax + rax]
<L232>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r13, rsi
               	xor	r15, r14
               	xor	r14, r13
               	xor	rsi, r15
               	xor	r13, rax
               	rol	r15, 0x2d
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L231>
<L230>:
               	movabs	rax, 0x39abdc4529b1661c
               	bt	rax, rbx
               	jae	 <L232>
               	xor	r9, rsi
               	xor	r12, r14
               	xor	r11, r13
               	xor	rbp, r15
               	jmp	 <L232>
<L231>:
               	mov	rax, qword ptr [rsp + 0x1d0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r13, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x268], r13
               	mov	rax, qword ptr [rsp + 0x1f8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x270], rax
               	mov	rax, qword ptr [rsp + 0x1f0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x278], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x280], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x290], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x298], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2a0], rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a8], rax
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b0], rax
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2b8], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2c0], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c8], rax
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2d0], rax
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2d8], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2e0], rax
               	mov	rax, qword ptr [rsp + 0x218]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e8], rax
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f0], rax
               	lea	rax, [r8 + 4*r8]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [r12 + 4*r12]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2f8], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x300], rax
               	mov	rax, qword ptr [rsp + 0x220]
               	test	rax, rax
               	je	 <L233>
               	mov	qword ptr [rsp + 0x208], r10
               	mov	qword ptr [rsp + 0x1d0], r13
               	mov	qword ptr [rsp + 0x200], r8
               	neg	eax
               	mov	qword ptr [rsp + 0x220], rax
               	mov	ebx, 0x1
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0x940>
               	xor	ecx, ecx
               	vpbroadcastw	xmm2, word ptr  <__libc_start_main+0x988>
               	lea	r15,  <__libc_start_main+0x98c>
               	vbroadcastss	ymm3, dword ptr  <__libc_start_main+0x968>
               	mov	rax, qword ptr [rsp + 0x210]
               	mov	r8, qword ptr [rsp + 0x1d8]
               	mov	r14, rdi
               	mov	rdi, rax
               	mov	r10, qword ptr [rsp + 0x1e0]
               	jmp	 <L234>
               	nop	word ptr cs:[rax + rax]
<L240>:
               	vpblendd	ymm4, ymm5, ymm4, 0xc0  # ymm4 = ymm5[0,1,2,3,4,5],ymm4[6,7]
               	vpermq	ymm4, ymm4, 0x93        # ymm4 = ymm4[3,0,1,2]
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x268]
               	vmovdqu	ymm6, ymmword ptr [rsp + 0x2a8]
               	vmovdqu	ymm7, ymmword ptr [rsp + 0x2c8]
               	vmovdqu	ymm8, ymmword ptr [rsp + 0x2e8]
               	vpsrlq	ymm5, ymm5, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x268], ymm5
               	vpsrlq	ymm4, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x288], ymm4
               	vpsrlq	ymm4, ymm6, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2a8], ymm4
               	vpsrlq	ymm4, ymm7, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2c8], ymm4
               	vpsrlq	ymm4, ymm8, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2e8], ymm4
               	vmovq	qword ptr [rsp + 0x1d0], xmm5
<L244>:
               	mov	rax, qword ptr [rsp + 0x220]
               	add	eax, ebx
               	inc	eax
               	mov	esi, ebx
               	inc	esi
               	mov	ebx, esi
               	cmp	eax, 0x1
               	je	 <L235>
<L234>:
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x270]
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x290]
               	mov	r13, qword ptr [rsp + 0x1d0]
               	movzx	eax, r13b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	r13b, al
               	cmp	r13b, 0xc
               	ja	 <L236>
               	vpand	ymm6, ymm5, ymm1
               	vpand	ymm7, ymm4, ymm1
               	vpackusdw	ymm6, ymm7, ymm6
               	vextracti128	xmm7, ymm6, 0x1
               	vpackusdw	xmm6, xmm6, xmm7
               	vpshufd	xmm6, xmm6, 0xd8        # xmm6 = xmm6[0,2,1,3]
               	vpackuswb	xmm6, xmm6, xmm6
               	vmovdqu	xmm7, xmmword ptr [rsp + 0x2b0]
               	vpshufb	xmm7, xmm7, xmm2
               	movzx	eax, r13b
               	movsxd	rax, dword ptr [r15 + 4*rax]
               	add	rax, r15
               	jmp	rax
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>
               	jmp	 <L237>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeEllipsoid@Evaluation.Replication.Ellipsoid(void const*)>
               	jmp	 <L238>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeTriangle@Evaluation.Replication.Triangle(void const*)>
               	jmp	 <L239>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
               	mov	qword ptr [rdi + 8*rax], rsi
               	inc	rcx
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [rdi + 8*rax + 0x8], ymm6
               	vmovups	ymm6, ymmword ptr [rsp + 0x2c0]
               	vmovups	ymm7, ymmword ptr [rsp + 0x2d0]
               	vinsertf128	ymm7, ymm7, xmmword ptr [rsp + 0x2f0], 0x1
               	vinsertf128	ymm6, ymm6, xmmword ptr [rsp + 0x2e0], 0x1
               	vshufps	ymm6, ymm6, ymm7, 0x88  # ymm6 = ymm6[0,2],ymm7[0,2],ymm6[4,6],ymm7[4,6]
               	vandps	ymm6, ymm6, ymm3
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [rdi + 8*rax + 0x28], ymm6
               	test	bl, 0x7
               	jne	 <L240>
               	jmp	 <L241>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeCylinder@Evaluation.Replication.Cylinder(void const*)>
               	jmp	 <L242>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeRectangle@Evaluation.Replication.Rectangle(void const*)>
               	jmp	 <L239>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeSquare@Evaluation.Replication.Square(void const*)>
               	jmp	 <L237>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumePyramid@Evaluation.Replication.Pyramid(void const*)>
               	jmp	 <L238>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeEllipse@Evaluation.Replication.Ellipse(void const*)>
<L239>:
               	mov	qword ptr [rdi + 8*rax], rsi
               	inc	rcx
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [rdi + 8*rax + 0x8], ymm6
               	vpextrb	esi, xmm7, 0x0
               	jmp	 <L243>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeCube@Evaluation.Replication.Cube(void const*)>
               	jmp	 <L237>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeCuboid@Evaluation.Replication.Cuboid(void const*)>
<L238>:
               	mov	qword ptr [rdi + 8*rax], rsi
               	inc	rcx
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [rdi + 8*rax + 0x8], ymm6
               	vpmovzxbd	xmm6, xmm7      # xmm6 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero
               	vcvtdq2ps	xmm6, xmm6
               	vmovlps	qword ptr [rdi + 8*rax + 0x28], xmm6
               	test	bl, 0x7
               	jne	 <L240>
               	jmp	 <L241>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeCone@Evaluation.Replication.Cone(void const*)>
<L242>:
               	mov	qword ptr [rdi + 8*rax], rsi
               	inc	rcx
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [rdi + 8*rax + 0x8], ymm6
               	vpextrb	esi, xmm7, 0x1
<L243>:
               	vcvtsi2ss	xmm6, xmm9, esi
               	vmovss	dword ptr [rdi + 8*rax + 0x28], xmm6
<L236>:
               	test	bl, 0x7
               	jne	 <L240>
               	jmp	 <L241>
               	lea	rax, [rcx + 8*rcx]
               	lea	rsi,  <Bodies3D::ComputeVolumeSphere@Evaluation.Replication.Sphere(void const*)>
<L237>:
               	mov	qword ptr [rdi + 8*rax], rsi
               	inc	rcx
               	vpmovzxbd	ymm6, xmm6      # ymm6 = xmm6[0],zero,zero,zero,xmm6[1],zero,zero,zero,xmm6[2],zero,zero,zero,xmm6[3],zero,zero,zero,xmm6[4],zero,zero,zero,xmm6[5],zero,zero,zero,xmm6[6],zero,zero,zero,xmm6[7],zero,zero,zero
               	vcvtdq2ps	ymm6, ymm6
               	vmovups	ymmword ptr [rdi + 8*rax + 0x8], ymm6
               	test	bl, 0x7
               	jne	 <L240>
<L241>:
               	vpermq	ymm4, ymm0, 0xe3        # ymm4 = ymm0[3,0,2,3]
               	vpermq	ymm5, ymm0, 0xe9        # ymm5 = ymm0[1,2,2,3]
               	vpextrq	rax, xmm0, 0x1
               	shl	rax, 0x11
               	vpxor	xmm5, xmm5, xmm4
               	vpextrq	rsi, xmm5, 0x1
               	vpxor	xmm0, xmm5, xmm0
               	xor	rsi, rax
               	vmovq	xmm4, rsi
               	vmovq	rax, xmm5
               	rol	rax, 0x2d
               	vmovq	xmm5, rax
               	mov	r13, qword ptr [rsp + 0x1f8]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x250]
               	mov	qword ptr [rsp + 0x1d8], r8
               	mov	r15, qword ptr [rsp + 0x248]
               	xor	rsi, r15
               	mov	qword ptr [rsp], rdx
               	mov	rdx, qword ptr [rsp + 0x240]
               	xor	rdx, r13
               	xor	r13, rsi
               	mov	qword ptr [rsp + 0x1f8], r13
               	xor	r15, rdx
               	mov	qword ptr [rsp + 0x248], r15
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x250], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x240], rdx
               	mov	qword ptr [rsp + 0x1e0], r10
               	mov	r8, qword ptr [rsp + 0x1f0]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x238]
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0x1b8]
               	xor	r15, r8
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x1f0], r8
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x238], rdx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x1b8], r15
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1c0], rsi
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1b0]
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0x1a0]
               	xor	r15, r8
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x30], r8
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x1b0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1a8], rsi
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x1a0], r15
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x198]
               	mov	rsi, qword ptr [rsp + 0x190]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0x188]
               	xor	r15, r8
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x28], r8
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x198], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x190], rsi
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x188], r15
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x180]
               	mov	rsi, qword ptr [rsp + 0x178]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0x170]
               	xor	r15, r8
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x20], r8
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x180], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x178], rsi
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x170], r15
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x168]
               	mov	rsi, qword ptr [rsp + 0x160]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0x158]
               	xor	r15, r8
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x18], r8
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x168], rdx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x158], r15
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x160], rsi
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x150]
               	mov	rsi, qword ptr [rsp + 0x148]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0x140]
               	xor	r15, r8
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x10], r8
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x150], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x148], rsi
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x140], r15
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x138]
               	mov	rsi, qword ptr [rsp + 0x130]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0x128]
               	xor	r15, r8
               	xor	r8, rsi
               	mov	qword ptr [rsp + 0x8], r8
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x138], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x130], rsi
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x128], r15
               	mov	qword ptr [rsp + 0x1e8], r14
               	mov	r14, qword ptr [rsp + 0x68]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x120]
               	mov	rsi, qword ptr [rsp + 0x118]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0x110]
               	xor	r15, r14
               	xor	r14, rsi
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x120], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x118], rsi
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x110], r15
               	mov	qword ptr [rsp + 0x258], rbp
               	mov	rbp, qword ptr [rsp + 0x60]
               	mov	rax, rbp
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x108]
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0xf8]
               	xor	r15, rbp
               	xor	rbp, rsi
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x108], rdx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xf8], r15
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x100], rsi
               	mov	r10, qword ptr [rsp + 0x58]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xf0]
               	mov	rsi, qword ptr [rsp + 0xe8]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0xe0]
               	xor	r15, r10
               	xor	r10, rsi
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0xf0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xe8], rsi
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xe0], r15
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xd8]
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	rsi, rdx
               	mov	r15, qword ptr [rsp + 0xc8]
               	xor	r15, r8
               	xor	r8, rsi
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0xd8], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xd0], rsi
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xc8], r15
               	mov	r15, qword ptr [rsp + 0x48]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc0]
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x260], r9
               	mov	r9, qword ptr [rsp + 0xb0]
               	xor	r9, r15
               	xor	r15, rsi
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0xc0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xb8], rsi
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xb0], r9
               	mov	r9, qword ptr [rsp + 0x40]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xa8]
               	mov	rsi, qword ptr [rsp + 0xa0]
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x318], rbx
               	mov	rbx, r11
               	mov	r11, r12
               	mov	r12, qword ptr [rsp + 0x98]
               	xor	r12, r9
               	xor	r9, rsi
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0xa8], rdx
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x98], r12
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xa0], rsi
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r12, qword ptr [rsp + 0x1c8]
               	mov	rsi, qword ptr [rsp + 0x90]
               	xor	rsi, r12
               	mov	qword ptr [rsp + 0x320], rcx
               	mov	rdi, qword ptr [rsp + 0x88]
               	xor	rdi, rdx
               	xor	rdx, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x90], rsi
               	mov	rcx, qword ptr [rsp + 0x218]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x230]
               	xor	rsi, qword ptr [rsp + 0x1e0]
               	xor	qword ptr [rsp + 0x1e8], rcx
               	xor	rcx, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x230], rsi
               	mov	rax, qword ptr [rsp + 0x208]
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x228]
               	xor	rsi, qword ptr [rsp + 0x1d8]
               	mov	r12, qword ptr [rsp]
               	xor	r12, qword ptr [rsp + 0x208]
               	mov	qword ptr [rsp], r12
               	xor	qword ptr [rsp + 0x208], rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x228], rsi
               	mov	rax, qword ptr [rsp + 0x200]
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x78]
               	xor	rsi, qword ptr [rsp + 0x80]
               	mov	r12, qword ptr [rsp + 0x70]
               	xor	r12, qword ptr [rsp + 0x200]
               	xor	qword ptr [rsp + 0x200], rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x78], rsi
               	mov	rax, r11
               	shl	rax, 0x11
               	xor	rbx, qword ptr [rsp + 0x260]
               	xor	qword ptr [rsp + 0x258], r11
               	xor	r11, rbx
               	vpextrq	rsi, xmm0, 0x1
               	xor	rbx, rax
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	r13, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x1f8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rsi, qword ptr [rsp + 0x1f0]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x1d0], r13
               	mov	qword ptr [rsp + 0x268], r13
               	mov	qword ptr [rsp + 0x270], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x278], rsi
               	mov	rsi, qword ptr [rsp + 0x28]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x280], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x288], rsi
               	mov	rsi, qword ptr [rsp + 0x18]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x290], rax
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x298], rsi
               	mov	rsi, qword ptr [rsp + 0x8]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2a0], rax
               	mov	qword ptr [rsp + 0x68], r14
               	lea	rax, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x1e8]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2a8], rsi
               	mov	qword ptr [rsp + 0x60], rbp
               	lea	rsi, [4*rbp]
               	add	rsi, rbp
               	mov	rbp, qword ptr [rsp + 0x258]
               	rol	rsi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2b0], rax
               	mov	qword ptr [rsp + 0x58], r10
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b8], rsi
               	mov	qword ptr [rsp + 0x50], r8
               	lea	rsi, [r8 + 4*r8]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2c0], rax
               	mov	qword ptr [rsp + 0x48], r15
               	lea	rax, [r15 + 4*r15]
               	lea	r15,  <__libc_start_main+0x98c>
               	mov	r8, qword ptr [rsp + 0x1d8]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2c8], rsi
               	mov	qword ptr [rsp + 0x40], r9
               	lea	rsi, [r9 + 4*r9]
               	mov	r9, qword ptr [rsp + 0x260]
               	rol	rsi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2d0], rax
               	mov	qword ptr [rsp + 0x38], rdx
               	lea	rax, [rdx + 4*rdx]
               	mov	rdx, qword ptr [rsp]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2d8], rsi
               	mov	qword ptr [rsp + 0x218], rcx
               	lea	rsi, [rcx + 4*rcx]
               	mov	rcx, qword ptr [rsp + 0x320]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2e0], rax
               	mov	rax, qword ptr [rsp + 0x208]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2e8], rsi
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f0], rax
               	mov	rax, qword ptr [rsp + 0x200]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f8], rax
               	lea	rax, [r11 + 4*r11]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x300], rax
               	xor	qword ptr [rsp + 0x1c8], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x88], rdi
               	mov	rdi, qword ptr [rsp + 0x210]
               	vpbroadcastq	ymm4, xmm4
               	mov	r10, qword ptr [rsp + 0x1e0]
               	xor	r10, r14
               	rol	r14, 0x2d
               	vpblendd	ymm0, ymm0, ymm4, 0x30  # ymm0 = ymm0[0,1,2,3],ymm4[4,5],ymm0[6,7]
               	xor	r8, rdx
               	rol	rdx, 0x2d
               	vpbroadcastq	ymm4, xmm5
               	xor	qword ptr [rsp + 0x80], r12
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x70], r12
               	mov	r12, r11
               	mov	r11, rbx
               	mov	rbx, qword ptr [rsp + 0x318]
               	vpblendd	ymm0, ymm0, ymm4, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm4[6,7]
               	xor	r9, rbp
               	rol	rbp, 0x2d
               	jmp	 <L244>
<L235>:
               	shl	rcx, 0x3
               	lea	rbx, [rcx + 8*rcx]
               	test	rbx, rbx
               	je	 <L233>
               	add	rbx, rdi
               	vxorps	xmm0, xmm0, xmm0
               	mov	r14, rdi
               	nop	dword ptr [rax + rax]
<L245>:
               	vmovss	dword ptr [rsp], xmm0
               	lea	rdi, [r14 + 0x8]
               	vzeroupper
               	call	qword ptr [r14]
               	vmovss	xmm1, dword ptr [rsp]   # xmm1 = mem[0],zero,zero,zero
               	vaddss	xmm1, xmm0, xmm1
               	vmovss	dword ptr [rsp], xmm1
               	vmovss	xmm0, dword ptr [rsp]   # xmm0 = mem[0],zero,zero,zero
               	add	r14, 0x48
               	cmp	r14, rbx
               	jne	 <L245>
               	jmp	 <L246>
<L233>:
               	vxorps	xmm0, xmm0, xmm0
<L246>:
               	mov	rbx, qword ptr [rsp + 0x308]
               	or	rbx, qword ptr [rsp + 0x310]
               	mov	rdi, qword ptr [rsp + 0x210]
               	test	rdi, rdi
               	je	 <L247>
               	vmovss	dword ptr [rsp], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovss	xmm0, dword ptr [rsp]   # xmm0 = mem[0],zero,zero,zero
<L247>:
               	movabs	rax, 0x186a00000002a
               	cmp	rbx, rax
               	jne	 <L248>
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0x984>
               	jb	 <L249>
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0x97c>
               	ja	 <L249>
<L248>:
               	xor	eax, eax
               	add	rsp, 0x328
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L249>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp]   # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x62e0>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
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

<Bodies3D::ComputeVolumeCircle@Evaluation.Replication.Circle(void const*)>:
               	vmovss	xmm0, dword ptr [rdi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x970>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x970>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x978>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x974>
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
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x980>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x970>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x96c>
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
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0x980>
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rdi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x62b8>
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
