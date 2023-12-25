
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
               	call	qword ptr  <__libc_start_main+0x59d8>
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
               	mov	rax, qword ptr  <__libc_start_main+0x59e8>
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
               	mov	rax, qword ptr  <__libc_start_main+0x59f0>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x59f8>
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

<initializer for module Evaluation.SOAReplication.View32>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW6View32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW6View32__in_chrg>
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

<initializer for module Evaluation.SOAReplication.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW6Circle__in_chrg>
               	call	 <initializer for module Evaluation.SOAReplication.View32>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
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

<initializer for module Evaluation.SOAReplication.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW7Ellipse__in_chrg>
               	call	 <initializer for module Evaluation.SOAReplication.View32>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAReplication.Rectangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW9Rectangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW9Rectangle__in_chrg>
               	jmp	 <initializer for module Evaluation.SOAReplication.View32>
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

<initializer for module Evaluation.SOAReplication.Square>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW6Square__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW6Square__in_chrg>
               	jmp	 <initializer for module Evaluation.SOAReplication.View32>
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

<initializer for module Evaluation.SOAReplication.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW8Triangle__in_chrg>
               	call	 <initializer for module Evaluation.SOAReplication.View32>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.Fraction>
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

<initializer for module Evaluation.SOAReplication.Cube>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW4Cube__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW4Cube__in_chrg>
               	jmp	 <initializer for module Evaluation.SOAReplication.View32>
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

<initializer for module Evaluation.SOAReplication.Cuboid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW6Cuboid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW6Cuboid__in_chrg>
               	jmp	 <initializer for module Evaluation.SOAReplication.View32>
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

<initializer for module Evaluation.SOAReplication.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW7Pyramid__in_chrg>
               	call	 <initializer for module Evaluation.SOAReplication.View32>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.Fraction>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAReplication.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW6Sphere__in_chrg>
               	call	 <initializer for module Evaluation.SOAReplication.View32>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAReplication.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW8Cylinder__in_chrg>
               	call	 <initializer for module Evaluation.SOAReplication.View32>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAReplication.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW4Cone__in_chrg>
               	call	 <initializer for module Evaluation.SOAReplication.View32>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAReplication.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW9Ellipsoid__in_chrg>
               	call	 <initializer for module Evaluation.SOAReplication.View32>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3

<initializer for module Evaluation.SOAReplication.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW14SOAReplicationW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW14SOAReplicationW4Head__in_chrg>
               	call	 <initializer for module Evaluation.SOAReplication.Sphere>
               	call	 <initializer for module Evaluation.SOAReplication.View32>
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

<initializer for module Meta.Memory.Size>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4Size__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4Size__in_chrg>
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

<initializer for module Meta.Memory.Size.Arithmetic>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW10Arithmetic__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW10Arithmetic__in_chrg>
               	jmp	 <initializer for module Meta.Memory.Size>
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

<initializer for module Meta.Memory.Size.Scale>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW5Scale__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW5Scale__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Count>
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

<initializer for module Meta.Memory.Count>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW5Count__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW5Count__in_chrg>
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

<initializer for module Meta.Memory.Size.PointerArithmetic>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW17PointerArithmetic__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW17PointerArithmetic__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <initializer for module Std>
               	int3
               	int3
               	int3

<_GLOBAL__sub_I_SOAReplication.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.SOAReplication.View32>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.SOAReplication.Circle>
               	call	 <initializer for module Evaluation.SOAReplication.Ellipse>
               	call	 <initializer for module Evaluation.SOAReplication.Rectangle>
               	call	 <initializer for module Evaluation.SOAReplication.Square>
               	call	 <initializer for module Evaluation.SOAReplication.Triangle>
               	call	 <initializer for module Evaluation.SOAReplication.Cube>
               	call	 <initializer for module Evaluation.SOAReplication.Cuboid>
               	call	 <initializer for module Evaluation.SOAReplication.Pyramid>
               	call	 <initializer for module Evaluation.SOAReplication.Sphere>
               	call	 <initializer for module Evaluation.SOAReplication.Cylinder>
               	call	 <initializer for module Evaluation.SOAReplication.Cone>
               	call	 <initializer for module Evaluation.SOAReplication.Ellipsoid>
               	call	 <initializer for module Evaluation.SOAReplication.Head>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.Arithmetic>
               	call	 <initializer for module Meta.Memory.Size.Scale>
               	call	 <initializer for module Meta.Memory.Size.PointerArithmetic>
               	pop	rax
               	jmp	 <initializer for module Std>

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x1f8
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
               	mov	eax, ecx
               	mov	ecx, ebx
               	mov	qword ptr [rsp + 0x100], rcx
               	mov	qword ptr [rsp + 0x138], rax
               	imul	rdi, rax, 0x2c
               	and	rdi, -0x20
               	mov	rdx, qword ptr  <__libc_start_main+0x5a00>
               	mov	esi, 0x20
               	call	 <_ZnamSt11align_val_tRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp], rax
               	movsxd	rax, ebx
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <__libc_start_main+0xa20>
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
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xa58>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xa40>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xa48>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xa50>
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
               	xor	r9d, r9d
               	xor	r10d, r10d
               	xor	r14d, r14d
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x68], rdi
               	xor	edi, edi
               	mov	r8, rsi
               	mov	qword ptr [rsp + 0x118], rsi
               	jmp	 <L4>
               	nop
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
               	xor	r14, rax
               	xor	r9, rsi
               	xor	r10, rcx
               	xor	qword ptr [rsp + 0x68], rdx
               	jmp	 <L6>
<L5>:
               	mov	rdi, qword ptr [rsp + 0x138]
               	shl	rdi, 0x20
               	mov	qword ptr [rsp + 0x130], rdi
               	xor	edi, edi
               	mov	rbx, qword ptr [rsp]
               	jmp	 <L7>
               	nop
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
               	xor	r14, rax
               	xor	r9, rsi
               	xor	r10, rcx
               	xor	qword ptr [rsp + 0x68], rdx
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	word ptr [rax + rax]
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
               	xor	r14, rax
               	xor	r9, rsi
               	xor	r10, rcx
               	xor	qword ptr [rsp + 0x68], rdx
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	word ptr [rax + rax]
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
               	xor	r14, rax
               	xor	r9, rsi
               	xor	r10, rcx
               	xor	qword ptr [rsp + 0x68], rdx
               	jmp	 <L15>
<L14>:
               	xor	r11d, r11d
               	xor	r15d, r15d
               	mov	rsi, r14
               	xor	r12d, r12d
               	xor	r14d, r14d
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x68]
               	mov	rcx, r10
               	mov	rdx, r9
               	mov	qword ptr [rsp + 0x140], rsi
               	jmp	 <L16>
               	nop	dword ptr [rax]
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
               	xor	r11, rsi
               	xor	r15, rdx
               	xor	r12, rcx
               	xor	r14, rax
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
               	xor	r11, rsi
               	xor	r15, rdx
               	xor	r12, rcx
               	xor	r14, rax
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
               	xor	r11, rsi
               	xor	r15, rdx
               	xor	r12, rcx
               	xor	r14, rax
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
               	xor	r11, rsi
               	xor	r15, rdx
               	xor	r12, rcx
               	xor	r14, rax
               	jmp	 <L27>
<L26>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x60], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x150], rax
               	xor	edi, edi
               	mov	rax, r14
               	mov	rcx, r12
               	mov	rdx, r15
               	mov	rsi, r11
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x150], rax
               	jmp	 <L30>
<L29>:
               	xor	edi, edi
               	jmp	 <L31>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x150], rax
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x150], rax
               	jmp	 <L36>
<L35>:
               	xor	edi, edi
               	jmp	 <L37>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x150], rax
               	jmp	 <L39>
<L38>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x58], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x150]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rsi, qword ptr [rsp + 0xf8]
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x28], rax
               	jmp	 <L42>
<L41>:
               	xor	edi, edi
               	jmp	 <L43>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x28], rax
               	jmp	 <L45>
<L44>:
               	xor	edi, edi
               	jmp	 <L46>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x28], rax
               	jmp	 <L48>
<L47>:
               	xor	edi, edi
               	jmp	 <L49>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x28], rax
               	jmp	 <L51>
<L50>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x50], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0xf0]
               	jmp	 <L52>
               	nop
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x20], rax
               	jmp	 <L54>
<L53>:
               	xor	edi, edi
               	jmp	 <L55>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x20], rax
               	jmp	 <L57>
<L56>:
               	xor	edi, edi
               	jmp	 <L58>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x20], rax
               	jmp	 <L60>
<L59>:
               	xor	edi, edi
               	jmp	 <L61>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x20], rax
               	jmp	 <L63>
<L62>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	xor	r13d, r13d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x18], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0xa8]
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0xe8]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x18], rax
               	jmp	 <L66>
<L65>:
               	xor	edi, edi
               	jmp	 <L67>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x18], rax
               	jmp	 <L69>
<L68>:
               	xor	edi, edi
               	jmp	 <L70>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x18], rax
               	jmp	 <L72>
<L71>:
               	xor	edi, edi
               	jmp	 <L73>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x18], rax
               	jmp	 <L75>
<L74>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x10], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x18]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	mov	rdx, r13
               	mov	rsi, qword ptr [rsp + 0xe0]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x10], rax
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
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x10], rax
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
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x10], rax
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
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x10], rax
               	jmp	 <L87>
<L86>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x90], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x10]
               	mov	rcx, qword ptr [rsp + 0x98]
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0xd8]
               	jmp	 <L88>
               	nop
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
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x8], rax
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
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x8], rax
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
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x8], rax
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
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x8], rax
               	jmp	 <L99>
<L98>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rcx, qword ptr [rsp + 0x90]
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0xd0]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
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
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
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
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
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
               	xor	qword ptr [rsp + 0xc8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L111>
<L110>:
               	mov	qword ptr [rsp + 0x128], r9
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x70], rax
               	xor	r9d, r9d
               	mov	rax, qword ptr [rsp + 0x80]
               	mov	rcx, qword ptr [rsp + 0x88]
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	r8, qword ptr [rsp + 0xc8]
               	movabs	rsi, 0x180ec6d33cfd0aba
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
<L114>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L113>
<L112>:
               	bt	rsi, r9
               	jae	 <L114>
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x78], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L114>
<L113>:
               	xor	r9d, r9d
               	movabs	rsi, -0x2a59ed990f36c6d4
               	jmp	 <L115>
               	nop	word ptr cs:[rax + rax]
<L117>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L116>
<L115>:
               	bt	rsi, r9
               	jae	 <L117>
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x78], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L117>
<L116>:
               	xor	r9d, r9d
               	movabs	rsi, -0x56a7d9e71fc03656
               	jmp	 <L118>
               	nop	word ptr cs:[rax + rax]
<L120>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L119>
<L118>:
               	bt	rsi, r9
               	jae	 <L120>
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x78], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L120>
<L119>:
               	xor	r9d, r9d
               	movabs	rsi, 0x39abdc4529b1661c
               	jmp	 <L121>
               	nop	word ptr cs:[rax + rax]
<L123>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, r8
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	r8, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L122>
<L121>:
               	bt	rsi, r9
               	jae	 <L123>
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x78], rcx
               	xor	qword ptr [rsp + 0x70], rax
               	jmp	 <L123>
<L122>:
               	mov	qword ptr [rsp + 0x120], r14
               	mov	r14, r12
               	mov	rsi, r15
               	mov	rdx, r11
               	mov	qword ptr [rsp + 0x180], r10
               	xor	ebp, ebp
               	xor	eax, eax
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x110], rcx
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x108], rcx
               	xor	r11d, r11d
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	r10, qword ptr [rsp + 0x78]
               	mov	r12, qword ptr [rsp + 0x30]
               	mov	r15, qword ptr [rsp + 0xc0]
               	movabs	rcx, 0x180ec6d33cfd0aba
               	jmp	 <L124>
               	nop	dword ptr [rax]
<L126>:
               	mov	rdi, r12
               	shl	rdi, 0x11
               	xor	r10, r15
               	xor	r9, r12
               	xor	r12, r10
               	xor	r15, r9
               	xor	r10, rdi
               	rol	r9, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L125>
<L124>:
               	bt	rcx, r11
               	jae	 <L126>
               	xor	rbp, r15
               	xor	rax, r12
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0x108], r9
               	jmp	 <L126>
<L125>:
               	xor	r11d, r11d
               	movabs	rcx, -0x2a59ed990f36c6d4
               	jmp	 <L127>
<L129>:
               	mov	rdi, r12
               	shl	rdi, 0x11
               	xor	r10, r15
               	xor	r9, r12
               	xor	r12, r10
               	xor	r15, r9
               	xor	r10, rdi
               	rol	r9, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L128>
<L127>:
               	bt	rcx, r11
               	jae	 <L129>
               	xor	rbp, r15
               	xor	rax, r12
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0x108], r9
               	jmp	 <L129>
<L128>:
               	xor	r11d, r11d
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L130>
<L132>:
               	mov	rdi, r12
               	shl	rdi, 0x11
               	xor	r10, r15
               	xor	r9, r12
               	xor	r12, r10
               	xor	r15, r9
               	xor	r10, rdi
               	rol	r9, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L131>
<L130>:
               	bt	rcx, r11
               	jae	 <L132>
               	xor	rbp, r15
               	xor	rax, r12
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0x108], r9
               	jmp	 <L132>
<L131>:
               	xor	r11d, r11d
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L133>
<L135>:
               	mov	rdi, r12
               	shl	rdi, 0x11
               	xor	r10, r15
               	xor	r9, r12
               	xor	r12, r10
               	xor	r15, r9
               	xor	r10, rdi
               	rol	r9, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L134>
<L133>:
               	bt	rcx, r11
               	jae	 <L135>
               	xor	rbp, r15
               	xor	rax, r12
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0x108], r9
               	jmp	 <L135>
<L134>:
               	mov	edi, 0x40
               	nop	word ptr cs:[rax + rax]
<L136>:
               	dec	rdi
               	jne	 <L136>
               	mov	edi, 0x40
               	mov	r9, qword ptr [rsp + 0x138]
               	mov	r15, rdx
               	mov	r8, r14
               	mov	rcx, qword ptr [rsp + 0x140]
<L137>:
               	dec	rdi
               	jne	 <L137>
               	mov	edi, 0x40
               	mov	r14, qword ptr [rsp + 0x130]
               	nop	word ptr cs:[rax + rax]
<L138>:
               	dec	rdi
               	jne	 <L138>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L139>:
               	dec	rdi
               	jne	 <L139>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L140>:
               	dec	rdi
               	jne	 <L140>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L141>:
               	dec	rdi
               	jne	 <L141>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L142>:
               	dec	rdi
               	jne	 <L142>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L143>:
               	dec	rdi
               	jne	 <L143>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L144>:
               	dec	rdi
               	jne	 <L144>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L145>:
               	dec	rdi
               	jne	 <L145>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L146>:
               	dec	rdi
               	jne	 <L146>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L147>:
               	dec	rdi
               	jne	 <L147>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L148>:
               	dec	rdi
               	jne	 <L148>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L149>:
               	dec	rdi
               	jne	 <L149>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L150>:
               	dec	rdi
               	jne	 <L150>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L151>:
               	dec	rdi
               	jne	 <L151>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L152>:
               	dec	rdi
               	jne	 <L152>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L153>:
               	dec	rdi
               	jne	 <L153>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L154>:
               	dec	rdi
               	jne	 <L154>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L155>:
               	dec	rdi
               	jne	 <L155>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L156>:
               	dec	rdi
               	jne	 <L156>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L157>:
               	dec	rdi
               	jne	 <L157>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L158>:
               	dec	rdi
               	jne	 <L158>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L159>:
               	dec	rdi
               	jne	 <L159>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L160>:
               	dec	rdi
               	jne	 <L160>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L161>:
               	dec	rdi
               	jne	 <L161>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L162>:
               	dec	rdi
               	jne	 <L162>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L163>:
               	dec	rdi
               	jne	 <L163>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L164>:
               	dec	rdi
               	jne	 <L164>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L165>:
               	dec	rdi
               	jne	 <L165>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L166>:
               	dec	rdi
               	jne	 <L166>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L167>:
               	dec	rdi
               	jne	 <L167>
               	or	r14, qword ptr [rsp + 0x100]
               	test	r9, r9
               	je	 <L168>
               	mov	qword ptr [rsp + 0x130], r14
               	vmovq	xmm1, rax
               	vmovq	xmm2, qword ptr [rsp + 0x30] # xmm2 = mem[0],zero
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vmovq	xmm2, qword ptr [rsp + 0x38] # xmm2 = mem[0],zero
               	vmovq	xmm3, qword ptr [rsp + 0x40] # xmm3 = mem[0],zero
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm2, xmm1, 0x1
               	vpsllq	ymm2, ymm1, 0x2
               	vpaddq	ymm1, ymm2, ymm1
               	vpsrlq	ymm2, ymm1, 0x39
               	vpsllq	ymm1, ymm1, 0x7
               	vpor	ymm1, ymm1, ymm2
               	vpsllq	ymm2, ymm1, 0x3
               	vpaddq	ymm8, ymm2, ymm1
               	vmovq	xmm1, qword ptr [rsp + 0x48] # xmm1 = mem[0],zero
               	mov	qword ptr [rsp + 0x178], r13
               	vmovq	xmm2, r13
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vmovq	xmm2, qword ptr [rsp + 0x50] # xmm2 = mem[0],zero
               	vmovq	xmm3, qword ptr [rsp + 0x58] # xmm3 = mem[0],zero
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm2, xmm1, 0x1
               	vpsllq	ymm2, ymm1, 0x2
               	vpaddq	ymm1, ymm2, ymm1
               	vpsrlq	ymm2, ymm1, 0x39
               	vpsllq	ymm1, ymm1, 0x7
               	vpor	ymm1, ymm1, ymm2
               	vpsllq	ymm2, ymm1, 0x3
               	vpaddq	ymm9, ymm2, ymm1
               	mov	rdx, qword ptr [rsp + 0x118]
               	lea	rdi, [rdx + 4*rdx]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	r14, rbx
               	mov	rbx, r9
               	mov	r9, qword ptr [rsp + 0x128]
               	lea	r9, [r9 + 4*r9]
               	rol	r9, 0x7
               	lea	r9, [r9 + 8*r9]
               	lea	r10, [rsi + 4*rsi]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	mov	r11, qword ptr [rsp + 0x60]
               	lea	r11, [r11 + 4*r11]
               	rol	r11, 0x7
               	lea	r11, [r11 + 8*r11]
               	vmovq	xmm1, r11
               	mov	r11, rcx
               	vmovq	xmm2, r10
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vmovq	xmm2, r9
               	vmovq	xmm3, rdi
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm10, ymm2, xmm1, 0x1
               	mov	ecx, ebx
               	shr	ecx, 0x3
               	shl	rcx, 0x5
               	add	rcx, r14
               	mov	qword ptr [rsp + 0x1e8], rcx
               	mov	ecx, ebx
               	shr	ecx, 0x2
               	shl	rcx, 0x5
               	add	rcx, r14
               	mov	qword ptr [rsp + 0x1e0], rcx
               	lea	r9, [4*rbx]
               	lea	rcx, [r9 + 2*r9]
               	and	rcx, -0x20
               	add	rcx, r14
               	mov	qword ptr [rsp + 0x1d8], rcx
               	mov	ecx, ebx
               	shr	ecx
               	shl	rcx, 0x5
               	add	rcx, r14
               	mov	qword ptr [rsp + 0x1d0], rcx
               	lea	rcx, [r9 + 4*r9]
               	and	rcx, -0x20
               	add	rcx, r14
               	mov	qword ptr [rsp + 0x1c8], rcx
               	lea	rdi, [8*rbx]
               	lea	rcx, [rdi + 2*rdi]
               	and	rcx, -0x20
               	add	rcx, r14
               	mov	qword ptr [rsp + 0x1c0], rcx
               	lea	r10, [rbx + 8*rbx]
               	lea	rdx, [r10 + 2*r10]
               	add	rdx, rbx
               	movabs	rcx, 0x1fffffffe0
               	and	rdx, rcx
               	add	rdx, r14
               	mov	qword ptr [rsp + 0x1b8], rdx
               	mov	rcx, rbx
               	shl	rcx, 0x5
               	add	rcx, r14
               	mov	qword ptr [rsp + 0x1b0], rcx
               	lea	rcx, [r9 + 8*r9]
               	and	rcx, -0x20
               	add	rcx, r14
               	mov	qword ptr [rsp + 0x1a8], rcx
               	lea	rcx, [rdi + 4*rdi]
               	and	rcx, -0x20
               	add	rcx, r14
               	mov	qword ptr [rsp + 0x1a0], rcx
               	neg	ebx
               	mov	qword ptr [rsp + 0x1f0], rbx
               	xor	edx, edx
               	mov	r9d, 0x1
               	vpbroadcastw	xmm1, word ptr  <__libc_start_main+0xa80>
               	mov	r12, qword ptr [rsp + 0x120]
               	jmp	 <L169>
               	nop	word ptr cs:[rax + rax]
<L177>:
               	vpsrlq	ymm10, ymm10, 0x8
               	vpsrlq	ymm9, ymm9, 0x8
               	vpsrlq	ymm8, ymm8, 0x8
<L178>:
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	lea	edi, [rcx + r9]
               	inc	edi
               	inc	r9d
               	cmp	edi, 0x1
               	je	 <L170>
<L169>:
               	vmovd	edi, xmm10
               	movzx	ebx, dil
               	imul	edi, ebx, 0x4f
               	shr	edi, 0xa
               	lea	r10d, [rdi + 2*rdi]
               	lea	edi, [rdi + 4*r10]
               	sub	bl, dil
               	cmp	bl, 0xc
               	mov	qword ptr [rsp + 0x190], r15
               	ja	 <L171>
               	mov	rcx, rax
               	mov	qword ptr [rsp + 0x120], r12
               	mov	qword ptr [rsp + 0x118], r8
               	mov	qword ptr [rsp + 0x100], rsi
               	mov	rsi, r11
               	vpextrb	r10d, xmm10, 0x8
               	vextracti128	xmm2, ymm10, 0x1
               	vmovd	r15d, xmm2
               	vpextrb	r12d, xmm2, 0x8
               	vmovd	eax, xmm9
               	vpextrb	r14d, xmm9, 0x8
               	vextracti128	xmm2, ymm9, 0x1
               	vmovd	r11d, xmm2
               	vpextrb	r13d, xmm2, 0x8
               	vpshufb	xmm11, xmm8, xmm1
               	vextracti128	xmm2, ymm8, 0x1
               	vmovd	edi, xmm2
               	movzx	ebx, bl
               	lea	r8,  <__libc_start_main+0xa84>
               	movsxd	rbx, dword ptr [r8 + 4*rbx]
               	add	rbx, r8
               	jmp	rbx
               	movzx	edi, r10b
               	vcvtsi2ss	xmm2, xmm14, edi
               	vpextrb	edi, xmm11, 0x0
               	vcvtsi2ss	xmm11, xmm14, edi
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	vbroadcastss	xmm12, xmm11
               	jmp	 <L172>
               	movzx	edi, r10b
               	vcvtsi2ss	xmm2, xmm14, edi
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	vmovss	xmm11, dword ptr  <__libc_start_main+0xa64> # xmm11 = mem[0],zero,zero,zero
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa70> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	movzx	r10d, r10b
               	vcvtsi2ss	xmm2, xmm14, r10d
               	vpextrb	r10d, xmm11, 0x0
               	vcvtsi2ss	xmm3, xmm14, r10d
               	movzx	edi, dil
               	vcvtsi2ss	xmm11, xmm14, edi
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	vbroadcastss	xmm12, xmm3
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa60> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	movzx	edi, r10b
               	vcvtsi2ss	xmm2, xmm14, edi
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	jmp	 <L174>
               	movzx	edi, r10b
               	vcvtsi2ss	xmm2, xmm14, edi
               	vpextrb	edi, xmm11, 0x0
               	vcvtsi2ss	xmm3, xmm14, edi
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	vbroadcastss	xmm12, xmm3
<L174>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa64> # xmm13 = mem[0],zero,zero,zero
               	vmovaps	xmm11, xmm13
               	jmp	 <L173>
               	movzx	r10d, r10b
               	vcvtsi2ss	xmm2, xmm14, r10d
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	edi, dil
               	vcvtsi2ss	xmm11, xmm14, edi
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa6c> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	movzx	edi, r10b
               	vcvtsi2ss	xmm2, xmm14, edi
               	vpextrb	edi, xmm11, 0x0
               	vcvtsi2ss	xmm3, xmm14, edi
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	vbroadcastss	xmm12, xmm3
               	jmp	 <L175>
               	movzx	edi, r10b
               	vcvtsi2ss	xmm2, xmm14, edi
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
<L175>:
               	vmovss	xmm11, dword ptr  <__libc_start_main+0xa64> # xmm11 = mem[0],zero,zero,zero
               	jmp	 <L176>
               	movzx	edi, r10b
               	vcvtsi2ss	xmm2, xmm14, edi
               	vpextrb	edi, xmm11, 0x0
               	vcvtsi2ss	xmm11, xmm14, edi
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	vbroadcastss	xmm12, xmm11
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa64> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	movzx	r10d, r10b
               	vcvtsi2ss	xmm2, xmm14, r10d
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	edi, dil
               	vcvtsi2ss	xmm11, xmm14, edi
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa64> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	movzx	r10d, r10b
               	vcvtsi2ss	xmm2, xmm14, r10d
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	edi, dil
               	vcvtsi2ss	xmm11, xmm14, edi
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
<L172>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa78> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	movzx	r10d, r10b
               	vcvtsi2ss	xmm2, xmm14, r10d
               	vpextrb	r10d, xmm11, 0x0
               	vcvtsi2ss	xmm3, xmm14, r10d
               	movzx	edi, dil
               	vcvtsi2ss	xmm11, xmm14, edi
               	mov	r10d, edx
               	shr	r10d, 0x3
               	mov	rdi, r10
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp]
               	mov	ebx, edx
               	and	ebx, 0x7
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	vbroadcastss	xmm12, xmm3
<L176>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa68> # xmm13 = mem[0],zero,zero,zero
<L173>:
               	movzx	edi, r13b
               	vcvtsi2ss	xmm2, xmm14, edi
               	movzx	edi, r11b
               	vcvtsi2ss	xmm3, xmm14, edi
               	movzx	edi, r14b
               	vcvtsi2ss	xmm4, xmm14, edi
               	movzx	edi, al
               	vcvtsi2ss	xmm5, xmm14, edi
               	movzx	edi, r12b
               	vcvtsi2ss	xmm6, xmm14, edi
               	movzx	edi, r15b
               	vcvtsi2ss	xmm7, xmm14, edi
               	shl	r10, 0x5
               	mov	rax, qword ptr [rsp + 0x1e8]
               	lea	rdi, [rax + r10]
               	vmovss	dword ptr [rdi + 4*rbx], xmm7
               	mov	rax, qword ptr [rsp + 0x1e0]
               	lea	rdi, [rax + r10]
               	vmovss	dword ptr [rdi + 4*rbx], xmm6
               	mov	rax, qword ptr [rsp + 0x1d8]
               	lea	rdi, [rax + r10]
               	vmovss	dword ptr [rdi + 4*rbx], xmm5
               	mov	rax, qword ptr [rsp + 0x1d0]
               	lea	rdi, [rax + r10]
               	vmovss	dword ptr [rdi + 4*rbx], xmm4
               	mov	rax, qword ptr [rsp + 0x1c8]
               	lea	rdi, [rax + r10]
               	vmovss	dword ptr [rdi + 4*rbx], xmm3
               	mov	rax, qword ptr [rsp + 0x1c0]
               	lea	rdi, [rax + r10]
               	vmovss	dword ptr [rdi + 4*rbx], xmm2
               	mov	rax, qword ptr [rsp + 0x1b8]
               	lea	rdi, [rax + r10]
               	vmovss	dword ptr [rdi + 4*rbx], xmm12
               	mov	rax, qword ptr [rsp + 0x1b0]
               	lea	rdi, [rax + r10]
               	vextractps	dword ptr [rdi + 4*rbx], xmm12, 0x1
               	mov	rax, qword ptr [rsp + 0x1a8]
               	lea	rdi, [rax + r10]
               	vmovss	dword ptr [rdi + 4*rbx], xmm11
               	add	r10, qword ptr [rsp + 0x1a0]
               	vmovss	dword ptr [r10 + 4*rbx], xmm13
               	inc	edx
               	mov	r11, rsi
               	mov	r15, qword ptr [rsp + 0x190]
               	mov	rsi, qword ptr [rsp + 0x100]
               	mov	r8, qword ptr [rsp + 0x118]
               	mov	r12, qword ptr [rsp + 0x120]
               	mov	rax, rcx
<L171>:
               	test	r9b, 0x7
               	jne	 <L177>
               	vpermq	ymm2, ymm0, 0xe3        # ymm2 = ymm0[3,0,2,3]
               	vpermq	ymm3, ymm0, 0xe9        # ymm3 = ymm0[1,2,2,3]
               	vpextrq	rdi, xmm0, 0x1
               	shl	rdi, 0x11
               	vpxor	xmm2, xmm3, xmm2
               	vpxor	xmm0, xmm2, xmm0
               	vpextrq	r10, xmm2, 0x1
               	xor	r10, rdi
               	vmovq	rdi, xmm2
               	rol	rdi, 0x2d
               	vmovq	xmm9, r10
               	vmovq	xmm8, rdi
               	mov	rcx, qword ptr [rsp + 0x128]
               	mov	rdi, rcx
               	shl	rdi, 0x11
               	mov	r10, qword ptr [rsp + 0x180]
               	xor	r10, r11
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x128], rcx
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0x180], r10
               	mov	rdi, rsi
               	shl	rdi, 0x11
               	xor	r8, r15
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x120], r12
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x100], rsi
               	xor	r8, rdi
               	mov	qword ptr [rsp + 0x118], r8
               	mov	qword ptr [rsp + 0x140], r11
               	mov	r12, qword ptr [rsp + 0x60]
               	mov	rdi, r12
               	shl	rdi, 0x11
               	mov	rbx, qword ptr [rsp + 0xf8]
               	mov	r10, qword ptr [rsp + 0xb8]
               	xor	r10, rbx
               	mov	r13, qword ptr [rsp + 0x150]
               	xor	r13, r12
               	mov	qword ptr [rsp + 0x150], r13
               	xor	r12, r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0xb8], r10
               	mov	r13, qword ptr [rsp + 0x58]
               	mov	rdi, r13
               	shl	rdi, 0x11
               	mov	r15, qword ptr [rsp + 0xf0]
               	mov	r10, qword ptr [rsp + 0xb0]
               	xor	r10, r15
               	mov	rcx, qword ptr [rsp + 0x28]
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x28], rcx
               	xor	r13, r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0xb0], r10
               	mov	r15, qword ptr [rsp + 0x50]
               	mov	rdi, r15
               	shl	rdi, 0x11
               	mov	qword ptr [rsp + 0x188], rbp
               	mov	r8, qword ptr [rsp + 0xe8]
               	mov	r10, qword ptr [rsp + 0xa8]
               	xor	r10, r8
               	mov	qword ptr [rsp + 0x198], r9
               	mov	r9, qword ptr [rsp + 0x20]
               	xor	r9, r15
               	mov	qword ptr [rsp + 0x20], r9
               	xor	r15, r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0xa8], r10
               	mov	rbp, qword ptr [rsp + 0x178]
               	mov	rdi, rbp
               	shl	rdi, 0x11
               	mov	dword ptr [rsp + 0x14c], edx
               	mov	rdx, qword ptr [rsp + 0xe0]
               	mov	r10, qword ptr [rsp + 0xa0]
               	xor	r10, rdx
               	mov	r14, qword ptr [rsp + 0x18]
               	xor	r14, rbp
               	mov	qword ptr [rsp + 0x18], r14
               	xor	rbp, r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0xa0], r10
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	rdi, r9
               	shl	rdi, 0x11
               	mov	rdx, qword ptr [rsp + 0xd8]
               	mov	r10, qword ptr [rsp + 0x98]
               	xor	r10, rdx
               	mov	rdx, qword ptr [rsp + 0x10]
               	xor	rdx, r9
               	mov	qword ptr [rsp + 0x10], rdx
               	xor	r9, r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0x98], r10
               	mov	rbx, qword ptr [rsp + 0x40]
               	mov	rdi, rbx
               	shl	rdi, 0x11
               	mov	r8, qword ptr [rsp + 0xd0]
               	mov	r10, qword ptr [rsp + 0x90]
               	xor	r10, r8
               	mov	rdx, qword ptr [rsp + 0x8]
               	xor	rdx, rbx
               	mov	qword ptr [rsp + 0x8], rdx
               	xor	rbx, r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0x90], r10
               	mov	r11, qword ptr [rsp + 0x38]
               	mov	rdi, r11
               	shl	rdi, 0x11
               	mov	r8, qword ptr [rsp + 0xc8]
               	mov	r10, qword ptr [rsp + 0x88]
               	xor	r10, r8
               	mov	r14, qword ptr [rsp + 0x80]
               	xor	r14, r11
               	xor	r11, r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0x88], r10
               	mov	rsi, rax
               	mov	rcx, qword ptr [rsp + 0x30]
               	mov	rdi, rcx
               	shl	rdi, 0x11
               	mov	r8, qword ptr [rsp + 0xc0]
               	mov	r10, qword ptr [rsp + 0x78]
               	xor	r10, r8
               	mov	r8, qword ptr [rsp + 0x70]
               	xor	r8, rcx
               	xor	rcx, r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0x78], r10
               	mov	rdi, rax
               	shl	rdi, 0x11
               	mov	rax, qword ptr [rsp + 0x110]
               	xor	rax, qword ptr [rsp + 0x188]
               	mov	rdx, qword ptr [rsp + 0x108]
               	xor	rdx, rsi
               	vpextrq	r10, xmm0, 0x1
               	xor	rsi, rax
               	lea	r10, [r10 + 4*r10]
               	rol	r10, 0x7
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x110], rax
               	mov	qword ptr [rsp + 0x60], r12
               	lea	rdi, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x68]
               	rol	rdi, 0x7
               	lea	r10, [r10 + 8*r10]
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm10, rdi
               	mov	rax, qword ptr [rsp + 0x100]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm11, rdi
               	mov	rax, qword ptr [rsp + 0x128]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm12, rdi
               	mov	qword ptr [rsp + 0x58], r13
               	lea	rdi, [4*r13]
               	add	rdi, r13
               	rol	rdi, 0x7
               	vmovq	xmm13, r10
               	mov	qword ptr [rsp + 0x48], r9
               	lea	r10, [r9 + 4*r9]
               	mov	r9, qword ptr [rsp + 0x198]
               	rol	r10, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r10, [r10 + 8*r10]
               	vmovq	xmm14, r10
               	mov	qword ptr [rsp + 0x178], rbp
               	lea	r10, [4*rbp]
               	add	r10, rbp
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	vmovq	xmm15, r10
               	mov	qword ptr [rsp + 0x50], r15
               	lea	r10, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x190]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	vmovq	xmm4, r10
               	lea	r10, [rsi + 4*rsi]
               	rol	r10, 0x7
               	vmovq	xmm7, rdi
               	lea	rdi, [r10 + 8*r10]
               	vmovq	xmm5, rdi
               	mov	qword ptr [rsp + 0x30], rcx
               	lea	rdi, [rcx + 4*rcx]
               	mov	rax, rsi
               	mov	rsi, qword ptr [rsp + 0x100]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm6, rdi
               	mov	qword ptr [rsp + 0x38], r11
               	lea	rdi, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x140]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm2, rdi
               	mov	qword ptr [rsp + 0x40], rbx
               	lea	rdi, [rbx + 4*rbx]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm3, rdi
               	vpbroadcastq	ymm9, xmm9
               	vpblendd	ymm0, ymm0, ymm9, 0x30  # ymm0 = ymm0[0,1,2,3],ymm9[4,5],ymm0[6,7]
               	vpbroadcastq	ymm8, xmm8
               	xor	r11, r12
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x68], r12
               	mov	r12, qword ptr [rsp + 0x120]
               	vpblendd	ymm0, ymm0, ymm8, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm8[6,7]
               	xor	r15, r12
               	rol	r12, 0x2d
               	vpunpcklqdq	xmm8, xmm11, xmm10 # xmm8 = xmm11[0],xmm10[0]
               	mov	rdi, qword ptr [rsp + 0x150]
               	xor	qword ptr [rsp + 0xf8], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x150], rdi
               	vpunpcklqdq	xmm9, xmm13, xmm12 # xmm9 = xmm13[0],xmm12[0]
               	mov	rdi, qword ptr [rsp + 0x28]
               	xor	qword ptr [rsp + 0xf0], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x28], rdi
               	vinserti128	ymm10, ymm9, xmm8, 0x1
               	mov	rdi, qword ptr [rsp + 0x20]
               	xor	qword ptr [rsp + 0xe8], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x20], rdi
               	vpunpcklqdq	xmm8, xmm15, xmm14 # xmm8 = xmm15[0],xmm14[0]
               	mov	rdi, qword ptr [rsp + 0x18]
               	xor	qword ptr [rsp + 0xe0], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x18], rdi
               	vpunpcklqdq	xmm4, xmm7, xmm4 # xmm4 = xmm7[0],xmm4[0]
               	mov	rdi, qword ptr [rsp + 0x10]
               	xor	qword ptr [rsp + 0xd8], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x10], rdi
               	vinserti128	ymm9, ymm4, xmm8, 0x1
               	mov	rdi, qword ptr [rsp + 0x8]
               	xor	qword ptr [rsp + 0xd0], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x8], rdi
               	vpunpcklqdq	xmm4, xmm6, xmm5 # xmm4 = xmm6[0],xmm5[0]
               	xor	qword ptr [rsp + 0xc8], r14
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x80], r14
               	xor	qword ptr [rsp + 0xc0], r8
               	mov	rbp, qword ptr [rsp + 0x188]
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	r8, qword ptr [rsp + 0x118]
               	xor	rbp, rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x108], rdx
               	mov	edx, dword ptr [rsp + 0x14c]
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm8, ymm2, xmm4, 0x1
               	jmp	 <L178>
<L170>:
               	test	edx, edx
               	mov	r9, qword ptr [rsp + 0x138]
               	mov	rbx, qword ptr [rsp]
               	mov	r14, qword ptr [rsp + 0x130]
               	je	 <L168>
               	vpxor	xmm1, xmm1, xmm1
               	movabs	rax, -0x100000000
               	movabs	rcx, 0x800000000
               	movabs	r11, 0x1fffffffe0
               	mov	ebp, edx
               	nop	dword ptr [rax + rax]
<L179>:
               	mov	edx, r9d
               	lea	rsi, [rdx + 8*rdx]
               	lea	rsi, [rsi + 2*rsi]
               	add	rsi, rdx
               	and	rsi, r11
               	add	rsi, rbx
               	mov	rdi, r9
               	shr	rdi, 0x1e
               	and	rdi, -0x20
               	mov	r8, rdx
               	shl	r8, 0x5
               	add	r8, rbx
               	vmovaps	ymm0, ymmword ptr [rdi + r8]
               	lea	r8, [4*rdx]
               	lea	r8, [r8 + 8*r8]
               	and	r8, -0x20
               	add	r8, rbx
               	mov	r10, r9
               	lea	r9, [8*rdx]
               	lea	r9, [r9 + 4*r9]
               	and	r9, -0x20
               	add	r9, rbx
               	vmulps	ymm0, ymm0, ymmword ptr [rdi + rsi]
               	vmulps	ymm0, ymm0, ymmword ptr [rdi + r8]
               	vmulps	ymm0, ymm0, ymmword ptr [rdi + r9]
               	vaddps	ymm1, ymm0, ymm1
               	and	r10, rax
               	add	r10, rcx
               	or	rdx, r10
               	shr	r10, 0x20
               	cmp	ebp, r10d
               	mov	r9, rdx
               	jne	 <L179>
               	jmp	 <L180>
<L168>:
               	vpxor	xmm1, xmm1, xmm1
               	test	rbx, rbx
               	je	 <L181>
<L180>:
               	vmovups	ymmword ptr [rsp + 0x150], ymm1
               	mov	esi, 0x20
               	mov	rdi, rbx
               	vzeroupper
               	call	 <_ZdaPvSt11align_val_t@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x150]
<L181>:
               	movabs	rax, 0x186a00000002a
               	cmp	r14, rax
               	jne	 <L182>
               	vextracti128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xa7c>
               	jb	 <L183>
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xa74>
               	ja	 <L183>
<L182>:
               	xor	eax, eax
               	add	rsp, 0x1f8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L183>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x150], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x150] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x5a08>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x59e0>
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

<_ZdaPvSt11align_val_t@plt>:
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

<_ZnamSt11align_val_tRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>
