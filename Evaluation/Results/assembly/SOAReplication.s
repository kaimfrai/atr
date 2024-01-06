
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
               	call	qword ptr  <__libc_start_main+0x5d20>
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
               	mov	rax, qword ptr  <__libc_start_main+0x5d30>
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
               	mov	rax, qword ptr  <__libc_start_main+0x5d38>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x5d40>
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

<initializer for module Evaluation.Dependency.TransformReduce>:
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
               	call	 <initializer for module Evaluation.Dependency.RandomAccessIteratorBase>
               	call	 <initializer for module Std>
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
               	sub	rsp, 0x1b8
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
               	mov	r14d, ecx
               	mov	eax, ebx
               	mov	qword ptr [rsp + 0x1a0], rax
               	imul	rdi, r14, 0x2c
               	and	rdi, -0x20
               	mov	rdx, qword ptr  <__libc_start_main+0x5d48>
               	mov	esi, 0x20
               	call	 <_ZnamSt11align_val_tRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x10], rax
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
               	xor	r11d, r11d
               	xor	r15d, r15d
               	xor	edi, edi
               	mov	r8, rsi
               	mov	qword ptr [rsp + 0x158], rsi
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L6>
               	xor	r11, rax
               	xor	r9, rsi
               	xor	r10, rcx
               	xor	r15, rdx
               	jmp	 <L6>
<L5>:
               	mov	rdi, r14
               	shl	rdi, 0x20
               	mov	qword ptr [rsp + 0x198], rdi
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
               	xor	r11, rax
               	xor	r9, rsi
               	xor	r10, rcx
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
               	xor	r11, rax
               	xor	r9, rsi
               	xor	r10, rcx
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
               	xor	r11, rax
               	xor	r9, rsi
               	xor	r10, rcx
               	xor	r15, rdx
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x8], r14
               	xor	r14d, r14d
               	xor	r13d, r13d
               	xor	r12d, r12d
               	xor	ebp, ebp
               	xor	edi, edi
               	mov	rax, r15
               	mov	rcx, r10
               	mov	rdx, r9
               	mov	rsi, r11
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
               	xor	r14, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	rbp, rax
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
               	xor	r14, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	rbp, rax
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
               	xor	r14, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	rbp, rax
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
               	xor	r14, rsi
               	xor	r13, rdx
               	xor	r12, rcx
               	xor	rbp, rax
               	jmp	 <L27>
<L26>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x68], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	xor	edi, edi
               	mov	rax, rbp
               	mov	rcx, r12
               	mov	rdx, r13
               	mov	rsi, r14
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
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0x30], rax
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
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0x30], rax
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
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0x30], rax
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
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0x30], rax
               	jmp	 <L39>
<L38>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x60], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x30]
               	mov	rcx, qword ptr [rsp + 0xc0]
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	rsi, qword ptr [rsp + 0xf8]
               	jmp	 <L40>
               	nop
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
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
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
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
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
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
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
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x28], rax
               	jmp	 <L51>
<L50>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x58], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	rdx, qword ptr [rsp + 0x60]
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
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
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
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
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
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
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
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x20], rax
               	jmp	 <L63>
<L62>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x50], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x18], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0xe8]
               	jmp	 <L64>
               	nop
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x18], rax
               	jmp	 <L75>
<L74>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x18]
               	mov	rcx, qword ptr [rsp + 0xa8]
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	jmp	 <L76>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L87>
<L86>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x90], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x98]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0xd8]
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
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x88], rax
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
               	xor	qword ptr [rsp + 0x88], rax
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
               	xor	qword ptr [rsp + 0x88], rax
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
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L99>
<L98>:
               	mov	qword ptr [rsp + 0x140], r9
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	xor	ecx, ecx
               	mov	rdx, qword ptr [rsp + 0x88]
               	mov	rsi, qword ptr [rsp + 0x90]
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	r8, qword ptr [rsp + 0xd0]
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L100>
               	nop	word ptr [rax + rax]
<L102>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	r8, rdx
               	xor	rsi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L101>
<L100>:
               	bt	rax, rcx
               	jae	 <L102>
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0x38], rdi
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	jmp	 <L102>
<L101>:
               	xor	r9d, r9d
               	movabs	rax, -0x2a59ed990f36c6d4
               	jmp	 <L103>
               	nop	word ptr cs:[rax + rax]
<L105>:
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	r8, rdx
               	xor	rsi, rcx
               	rol	rdx, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L104>
<L103>:
               	bt	rax, r9
               	jae	 <L105>
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0x38], rdi
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	jmp	 <L105>
<L104>:
               	xor	ecx, ecx
               	movabs	rax, -0x56a7d9e71fc03656
               	jmp	 <L106>
               	nop	word ptr cs:[rax + rax]
<L108>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	r8, rdx
               	xor	rsi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L107>
<L106>:
               	bt	rax, rcx
               	jae	 <L108>
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0x38], rdi
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	jmp	 <L108>
<L107>:
               	xor	ecx, ecx
               	movabs	rax, 0x39abdc4529b1661c
               	jmp	 <L109>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	r8, rdx
               	xor	rsi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L110>
<L109>:
               	bt	rax, rcx
               	jae	 <L111>
               	xor	qword ptr [rsp + 0xc8], r8
               	xor	qword ptr [rsp + 0x38], rdi
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	jmp	 <L111>
<L110>:
               	mov	qword ptr [rsp + 0x160], rbp
               	mov	qword ptr [rsp + 0x178], r12
               	mov	qword ptr [rsp + 0x138], r13
               	xor	ebx, ebx
               	xor	ebp, ebp
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x110], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x70], rax
               	xor	ecx, ecx
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	rsi, qword ptr [rsp + 0x80]
               	mov	rdi, qword ptr [rsp + 0x38]
               	mov	r8, qword ptr [rsp + 0xc8]
               	mov	r13, qword ptr [rsp + 0x8]
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L112>
               	nop
<L114>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	r8, rdx
               	xor	rsi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L113>
<L112>:
               	bt	rax, rcx
               	jae	 <L114>
               	xor	rbx, r8
               	xor	rbp, rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	jmp	 <L114>
<L113>:
               	xor	r9d, r9d
               	movabs	rax, -0x2a59ed990f36c6d4
               	jmp	 <L115>
               	nop	dword ptr [rax]
<L117>:
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	r8, rdx
               	xor	rsi, rcx
               	rol	rdx, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L116>
<L115>:
               	bt	rax, r9
               	jae	 <L117>
               	xor	rbx, r8
               	xor	rbp, rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	jmp	 <L117>
<L116>:
               	xor	ecx, ecx
               	movabs	rax, -0x56a7d9e71fc03656
               	jmp	 <L118>
               	nop	dword ptr [rax]
<L120>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	r8, rdx
               	xor	rsi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L119>
<L118>:
               	bt	rax, rcx
               	jae	 <L120>
               	xor	rbx, r8
               	xor	rbp, rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	jmp	 <L120>
<L119>:
               	xor	ecx, ecx
               	movabs	rax, 0x39abdc4529b1661c
               	jmp	 <L121>
               	nop	dword ptr [rax]
<L123>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rsi, r8
               	xor	rdx, rdi
               	xor	rdi, rsi
               	xor	r8, rdx
               	xor	rsi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L122>
<L121>:
               	bt	rax, rcx
               	jae	 <L123>
               	xor	rbx, r8
               	xor	rbp, rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	jmp	 <L123>
<L122>:
               	mov	qword ptr [rsp + 0x180], r14
               	mov	qword ptr [rsp + 0x168], r15
               	mov	qword ptr [rsp + 0x188], r11
               	mov	qword ptr [rsp + 0x190], r10
               	xor	r9d, r9d
               	xor	r14d, r14d
               	xor	r15d, r15d
               	xor	r12d, r12d
               	xor	ecx, ecx
               	mov	rsi, qword ptr [rsp + 0x70]
               	mov	rdi, qword ptr [rsp + 0x110]
               	mov	r8, rbp
               	mov	r10, rbx
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L124>
               	nop	dword ptr [rax + rax]
<L126>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L125>
<L124>:
               	bt	rax, rcx
               	jae	 <L126>
               	xor	r9, r10
               	xor	r14, r8
               	xor	r15, rdi
               	xor	r12, rsi
               	jmp	 <L126>
<L125>:
               	xor	ecx, ecx
               	movabs	rax, -0x2a59ed990f36c6d4
               	jmp	 <L127>
               	nop	word ptr cs:[rax + rax]
<L129>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L128>
<L127>:
               	bt	rax, rcx
               	jae	 <L129>
               	xor	r9, r10
               	xor	r14, r8
               	xor	r15, rdi
               	xor	r12, rsi
               	jmp	 <L129>
<L128>:
               	xor	ecx, ecx
               	movabs	rax, -0x56a7d9e71fc03656
               	jmp	 <L130>
               	nop	word ptr cs:[rax + rax]
<L132>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L131>
<L130>:
               	bt	rax, rcx
               	jae	 <L132>
               	xor	r9, r10
               	xor	r14, r8
               	xor	r15, rdi
               	xor	r12, rsi
               	jmp	 <L132>
<L131>:
               	xor	ecx, ecx
               	movabs	rax, 0x39abdc4529b1661c
               	jmp	 <L133>
               	nop	word ptr cs:[rax + rax]
<L135>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r10
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r10, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L134>
<L133>:
               	bt	rax, rcx
               	jae	 <L135>
               	xor	r9, r10
               	xor	r14, r8
               	xor	r15, rdi
               	xor	r12, rsi
               	jmp	 <L135>
<L134>:
               	mov	ecx, 0x40
               	nop	dword ptr [rax]
<L136>:
               	dec	rcx
               	jne	 <L136>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L137>:
               	dec	rcx
               	jne	 <L137>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L138>:
               	dec	rcx
               	jne	 <L138>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L139>:
               	dec	rcx
               	jne	 <L139>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L140>:
               	dec	rcx
               	jne	 <L140>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L141>:
               	dec	rcx
               	jne	 <L141>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L142>:
               	dec	rcx
               	jne	 <L142>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L143>:
               	dec	rcx
               	jne	 <L143>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L144>:
               	dec	rcx
               	jne	 <L144>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L145>:
               	dec	rcx
               	jne	 <L145>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L146>:
               	dec	rcx
               	jne	 <L146>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L147>:
               	dec	rcx
               	jne	 <L147>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L148>:
               	dec	rcx
               	jne	 <L148>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L149>:
               	dec	rcx
               	jne	 <L149>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L150>:
               	dec	rcx
               	jne	 <L150>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L151>:
               	dec	rcx
               	jne	 <L151>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L152>:
               	dec	rcx
               	jne	 <L152>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L153>:
               	dec	rcx
               	jne	 <L153>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L154>:
               	dec	rcx
               	jne	 <L154>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L155>:
               	dec	rcx
               	jne	 <L155>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L156>:
               	dec	rcx
               	jne	 <L156>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L157>:
               	dec	rcx
               	jne	 <L157>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L158>:
               	dec	rcx
               	jne	 <L158>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L159>:
               	dec	rcx
               	jne	 <L159>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L160>:
               	dec	rcx
               	jne	 <L160>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L161>:
               	dec	rcx
               	jne	 <L161>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L162>:
               	dec	rcx
               	jne	 <L162>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L163>:
               	dec	rcx
               	jne	 <L163>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L164>:
               	dec	rcx
               	jne	 <L164>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L165>:
               	dec	rcx
               	jne	 <L165>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L166>:
               	dec	rcx
               	jne	 <L166>
               	mov	ecx, 0x40
               	nop	word ptr [rax + rax]
<L167>:
               	dec	rcx
               	jne	 <L167>
               	test	r13, r13
               	je	 <L168>
               	vmovq	xmm1, r14
               	vmovq	xmm2, rbp
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
               	vmovq	xmm2, qword ptr [rsp + 0x50] # xmm2 = mem[0],zero
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vmovq	xmm2, qword ptr [rsp + 0x58] # xmm2 = mem[0],zero
               	vmovq	xmm3, qword ptr [rsp + 0x60] # xmm3 = mem[0],zero
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm2, xmm1, 0x1
               	vpsllq	ymm2, ymm1, 0x2
               	vpaddq	ymm1, ymm2, ymm1
               	vpsrlq	ymm2, ymm1, 0x39
               	vpsllq	ymm1, ymm1, 0x7
               	vpor	ymm1, ymm1, ymm2
               	vpsllq	ymm2, ymm1, 0x3
               	vpaddq	ymm9, ymm2, ymm1
               	mov	rax, qword ptr [rsp + 0x158]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rax, qword ptr [rsp + 0x140]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	rax, qword ptr [rsp + 0x138]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	r8, [rax + 4*rax]
               	rol	r8, 0x7
               	lea	r8, [r8 + 8*r8]
               	vmovq	xmm1, r8
               	vmovq	xmm2, rdi
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vmovq	xmm2, rsi
               	vmovq	xmm3, rcx
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm10, ymm2, xmm1, 0x1
               	mov	eax, r13d
               	neg	eax
               	mov	qword ptr [rsp + 0x1a8], rax
               	mov	edx, 0x1
               	vpbroadcastw	xmm1, word ptr  <__libc_start_main+0xa84>
               	jmp	 <L169>
<L171>:
               	mov	qword ptr [rsp + 0x8], r13
               	test	dl, 0x7
               	je	 <L170>
               	nop	word ptr cs:[rax + rax]
<L177>:
               	vpsrlq	ymm10, ymm10, 0x8
               	vpsrlq	ymm9, ymm9, 0x8
               	vpsrlq	ymm8, ymm8, 0x8
<L178>:
               	mov	r13, qword ptr [rsp + 0x8]
               	mov	rax, qword ptr [rsp + 0x1a8]
               	add	eax, edx
               	inc	eax
               	mov	ecx, edx
               	inc	ecx
               	mov	edx, ecx
               	cmp	eax, 0x1
               	je	 <L168>
<L169>:
               	vmovd	ecx, xmm10
               	movzx	esi, cl
               	imul	ecx, esi, 0x4f
               	shr	ecx, 0xa
               	lea	edi, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdi]
               	sub	sil, cl
               	cmp	sil, 0xc
               	mov	qword ptr [rsp + 0x158], rdx
               	ja	 <L171>
               	vpextrb	ecx, xmm10, 0x8
               	vextracti128	xmm2, ymm10, 0x1
               	vmovd	dword ptr [rsp + 0x108], xmm2
               	vpextrb	eax, xmm2, 0x8
               	mov	dword ptr [rsp + 0x100], eax
               	vmovd	dword ptr [rsp + 0x130], xmm9
               	vpextrb	eax, xmm9, 0x8
               	mov	dword ptr [rsp + 0x150], eax
               	vextracti128	xmm2, ymm9, 0x1
               	vmovd	dword ptr [rsp + 0x148], xmm2
               	vpextrb	eax, xmm2, 0x8
               	mov	dword ptr [rsp + 0x174], eax
               	vpshufb	xmm11, xmm8, xmm1
               	vextracti128	xmm2, ymm8, 0x1
               	vmovd	edi, xmm2
               	movzx	esi, sil
               	lea	rax,  <__libc_start_main+0xa88>
               	movsxd	rsi, dword ptr [rax + 4*rsi]
               	add	rsi, rax
               	mov	qword ptr [rsp + 0x1b0], r15
               	jmp	rsi
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm11, xmm12, eax
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm2
               	vbroadcastss	xmm12, xmm11
               	jmp	 <L172>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm2
               	vmovss	xmm11, dword ptr  <__libc_start_main+0xa64> # xmm11 = mem[0],zero,zero,zero
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa70> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm4, xmm12, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	movzx	eax, dil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm11, xmm12, eax
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm4
               	vbroadcastss	xmm12, xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa60> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm2
               	jmp	 <L174>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm4, xmm12, eax
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm2
               	vbroadcastss	xmm12, xmm4
<L174>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa64> # xmm13 = mem[0],zero,zero,zero
               	vmovaps	xmm11, xmm13
               	jmp	 <L173>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	eax, dil
               	vxorps	xmm13, xmm13, xmm13
               	vcvtsi2ss	xmm11, xmm13, eax
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa6c> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	ecx, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, ecx
               	vpextrb	ecx, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm4, xmm12, ecx
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	eax, edi
               	vmovss	dword ptr [r13 + 4*rax], xmm2
               	vbroadcastss	xmm12, xmm4
               	jmp	 <L175>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm2
<L175>:
               	vmovss	xmm11, dword ptr  <__libc_start_main+0xa64> # xmm11 = mem[0],zero,zero,zero
               	jmp	 <L176>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm11, xmm12, eax
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm2
               	vbroadcastss	xmm12, xmm11
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa64> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	eax, dil
               	vxorps	xmm13, xmm13, xmm13
               	vcvtsi2ss	xmm11, xmm13, eax
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa64> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	eax, dil
               	vxorps	xmm13, xmm13, xmm13
               	vcvtsi2ss	xmm11, xmm13, eax
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm2
<L172>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa7c> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	r8, r12
               	mov	rdx, qword ptr [rsp + 0x110]
               	movzx	eax, cl
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm4, xmm12, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, eax
               	movzx	eax, dil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm11, xmm12, eax
               	mov	rdi, r13
               	shr	rdi, 0x20
               	mov	rcx, r13
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	esi, r13d
               	or	rcx, rsi
               	shr	r13, 0x23
               	mov	r10, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	edi, 0x7
               	mov	r11d, edi
               	vmovss	dword ptr [r13 + 4*r11], xmm4
               	vbroadcastss	xmm12, xmm2
<L176>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa68> # xmm13 = mem[0],zero,zero,zero
<L173>:
               	mov	qword ptr [rsp + 0x8], rcx
               	mov	qword ptr [rsp + 0x110], rdx
               	movzx	eax, byte ptr [rsp + 0x174]
               	vcvtsi2ss	xmm14, xmm6, eax
               	movzx	eax, byte ptr [rsp + 0x148]
               	vcvtsi2ss	xmm15, xmm5, eax
               	movzx	eax, byte ptr [rsp + 0x150]
               	vcvtsi2ss	xmm4, xmm5, eax
               	movzx	eax, byte ptr [rsp + 0x130]
               	vcvtsi2ss	xmm2, xmm5, eax
               	movzx	eax, byte ptr [rsp + 0x100]
               	vcvtsi2ss	xmm3, xmm5, eax
               	movzx	eax, byte ptr [rsp + 0x108]
               	vcvtsi2ss	xmm5, xmm5, eax
               	mov	eax, esi
               	shr	eax, 0x3
               	shl	rax, 0x5
               	shl	r10, 0x5
               	mov	r15, qword ptr [rsp + 0x10]
               	lea	rcx, [r15 + r10]
               	add	rax, rcx
               	vmovss	dword ptr [rax + 4*rdi], xmm5
               	mov	eax, esi
               	shr	eax, 0x2
               	shl	rax, 0x5
               	add	rax, rcx
               	vmovss	dword ptr [rax + 4*rdi], xmm3
               	lea	r11, [4*rsi]
               	lea	rax, [r11 + 2*r11]
               	and	rax, -0x20
               	add	rax, rcx
               	vmovss	dword ptr [rax + 4*rdi], xmm2
               	mov	eax, esi
               	shr	eax
               	shl	rax, 0x5
               	add	rax, rcx
               	vmovss	dword ptr [rax + 4*rdi], xmm4
               	lea	rax, [r11 + 4*r11]
               	and	rax, -0x20
               	add	rax, rcx
               	vmovss	dword ptr [rax + 4*rdi], xmm15
               	lea	rax, [8*rsi]
               	lea	r12, [rax + 2*rax]
               	and	r12, -0x20
               	add	r12, rcx
               	vmovss	dword ptr [r12 + 4*rdi], xmm14
               	lea	r12, [rsi + 8*rsi]
               	lea	r12, [r12 + 2*r12]
               	add	r12, rsi
               	movabs	rdx, 0x1fffffffe0
               	and	r12, rdx
               	add	r12, rcx
               	vmovss	dword ptr [r12 + 4*rdi], xmm12
               	shl	rsi, 0x5
               	add	rsi, r15
               	add	rsi, r10
               	vextractps	dword ptr [rsi + 4*rdi], xmm12, 0x1
               	lea	rsi, [r11 + 8*r11]
               	and	rsi, -0x20
               	add	rsi, rcx
               	vmovss	dword ptr [rsi + 4*rdi], xmm11
               	lea	rax, [rax + 4*rax]
               	and	rax, -0x20
               	add	rax, rcx
               	vmovss	dword ptr [rax + 4*rdi], xmm13
               	mov	r15, qword ptr [rsp + 0x1b0]
               	mov	r12, r8
               	mov	rdx, qword ptr [rsp + 0x158]
               	test	dl, 0x7
               	jne	 <L177>
<L170>:
               	vpermq	ymm2, ymm0, 0xe3        # ymm2 = ymm0[3,0,2,3]
               	vpermq	ymm3, ymm0, 0xe9        # ymm3 = ymm0[1,2,2,3]
               	vpextrq	rax, xmm0, 0x1
               	shl	rax, 0x11
               	vpxor	xmm2, xmm3, xmm2
               	vpxor	xmm0, xmm2, xmm0
               	vpextrq	rcx, xmm2, 0x1
               	xor	rcx, rax
               	vmovq	rax, xmm2
               	rol	rax, 0x2d
               	vmovq	xmm9, rcx
               	vmovq	xmm8, rax
               	mov	rsi, qword ptr [rsp + 0x140]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x190]
               	xor	rcx, qword ptr [rsp + 0x188]
               	xor	qword ptr [rsp + 0x168], rsi
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x140], rsi
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x190], rcx
               	mov	qword ptr [rsp + 0x108], rbp
               	mov	rsi, qword ptr [rsp + 0x138]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x178]
               	xor	rcx, qword ptr [rsp + 0x180]
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x138], rsi
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x178], rcx
               	mov	rsi, qword ptr [rsp + 0x68]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	qword ptr [rsp + 0x150], rbx
               	mov	r13, qword ptr [rsp + 0xf8]
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	rcx, r13
               	mov	rdx, qword ptr [rsp + 0x30]
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x30], rdx
               	xor	rsi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xc0], rcx
               	mov	qword ptr [rsp + 0x100], r14
               	mov	r14, qword ptr [rsp + 0x60]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	r8, qword ptr [rsp + 0xf0]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	xor	rcx, r8
               	mov	rbx, qword ptr [rsp + 0x28]
               	xor	rbx, r14
               	mov	qword ptr [rsp + 0x28], rbx
               	xor	r14, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xb8], rcx
               	mov	rbx, qword ptr [rsp + 0x58]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	qword ptr [rsp + 0x148], r9
               	mov	r9, qword ptr [rsp + 0xe8]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, r9
               	mov	r8, qword ptr [rsp + 0x20]
               	xor	r8, rbx
               	mov	qword ptr [rsp + 0x20], r8
               	xor	rbx, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	r11, qword ptr [rsp + 0x50]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0xe0]
               	mov	rcx, qword ptr [rsp + 0xa8]
               	xor	rcx, r9
               	mov	r8, qword ptr [rsp + 0x18]
               	xor	r8, r11
               	mov	qword ptr [rsp + 0x18], r8
               	xor	r11, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xa8], rcx
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0xd8]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	xor	rcx, r9
               	mov	r13, qword ptr [rsp + 0x98]
               	mov	rbp, qword ptr [rsp + 0x110]
               	xor	r13, rdx
               	xor	rdx, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xa0], rcx
               	mov	r10, qword ptr [rsp + 0x40]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0xd0]
               	mov	rcx, qword ptr [rsp + 0x90]
               	xor	rcx, r9
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x130], r12
               	mov	r12, r15
               	mov	r15, r8
               	xor	r15, r10
               	xor	r10, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x90], rcx
               	mov	rdi, qword ptr [rsp + 0x38]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0xc8]
               	mov	rcx, qword ptr [rsp + 0x80]
               	xor	rcx, r9
               	mov	r9, qword ptr [rsp + 0x78]
               	xor	r9, rdi
               	xor	rdi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x80], rcx
               	mov	rax, qword ptr [rsp + 0x108]
               	shl	rax, 0x11
               	xor	rbp, qword ptr [rsp + 0x150]
               	mov	r8, qword ptr [rsp + 0x70]
               	xor	r8, qword ptr [rsp + 0x108]
               	xor	qword ptr [rsp + 0x108], rbp
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x110], rbp
               	mov	rax, qword ptr [rsp + 0x100]
               	shl	rax, 0x11
               	xor	r12, qword ptr [rsp + 0x148]
               	mov	rcx, qword ptr [rsp + 0x130]
               	xor	rcx, qword ptr [rsp + 0x100]
               	mov	qword ptr [rsp + 0x130], rcx
               	vpextrq	rcx, xmm0, 0x1
               	xor	qword ptr [rsp + 0x100], r12
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x68], rsi
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rsi, [rax + 8*rax]
               	vmovq	xmm10, rsi
               	mov	rax, qword ptr [rsp + 0x138]
               	lea	rax, [rax + 4*rax]
               	mov	rbp, qword ptr [rsp + 0x108]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm11, rax
               	mov	rax, qword ptr [rsp + 0x140]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm12, rax
               	mov	qword ptr [rsp + 0x60], r14
               	lea	rax, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x100]
               	rol	rax, 0x7
               	vmovq	xmm13, rcx
               	mov	qword ptr [rsp + 0x48], rdx
               	lea	rcx, [rdx + 4*rdx]
               	mov	rdx, qword ptr [rsp + 0x158]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm14, rcx
               	mov	qword ptr [rsp + 0x50], r11
               	lea	rcx, [r11 + 4*r11]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm15, rcx
               	mov	qword ptr [rsp + 0x58], rbx
               	lea	rcx, [rbx + 4*rbx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm4, rcx
               	lea	rcx, [r14 + 4*r14]
               	rol	rcx, 0x7
               	vmovq	xmm7, rax
               	lea	rax, [rcx + 8*rcx]
               	vmovq	xmm5, rax
               	lea	rax, [4*rbp]
               	add	rax, rbp
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm6, rax
               	mov	qword ptr [rsp + 0x38], rdi
               	lea	rax, [rdi + 4*rdi]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm2, rax
               	mov	qword ptr [rsp + 0x40], r10
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm3, rax
               	vpbroadcastq	ymm9, xmm9
               	vpblendd	ymm0, ymm0, ymm9, 0x30  # ymm0 = ymm0[0,1,2,3],ymm9[4,5],ymm0[6,7]
               	vpbroadcastq	ymm8, xmm8
               	mov	rax, qword ptr [rsp + 0x168]
               	xor	qword ptr [rsp + 0x188], rax
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x168], rax
               	vpblendd	ymm0, ymm0, ymm8, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm8[6,7]
               	mov	rax, qword ptr [rsp + 0x160]
               	xor	qword ptr [rsp + 0x180], rax
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x160], rax
               	vpunpcklqdq	xmm8, xmm11, xmm10 # xmm8 = xmm11[0],xmm10[0]
               	mov	rcx, qword ptr [rsp + 0x30]
               	xor	qword ptr [rsp + 0xf8], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x30], rcx
               	vpunpcklqdq	xmm9, xmm13, xmm12 # xmm9 = xmm13[0],xmm12[0]
               	mov	rcx, qword ptr [rsp + 0x28]
               	xor	qword ptr [rsp + 0xf0], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x28], rcx
               	vinserti128	ymm10, ymm9, xmm8, 0x1
               	mov	rcx, qword ptr [rsp + 0x20]
               	xor	qword ptr [rsp + 0xe8], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x20], rcx
               	vpunpcklqdq	xmm8, xmm15, xmm14 # xmm8 = xmm15[0],xmm14[0]
               	mov	rcx, qword ptr [rsp + 0x18]
               	xor	qword ptr [rsp + 0xe0], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x18], rcx
               	mov	rbx, qword ptr [rsp + 0x150]
               	vpunpcklqdq	xmm4, xmm7, xmm4 # xmm4 = xmm7[0],xmm4[0]
               	xor	qword ptr [rsp + 0xd8], r13
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x98], r13
               	vinserti128	ymm9, ymm4, xmm8, 0x1
               	xor	qword ptr [rsp + 0xd0], r15
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x88], r15
               	mov	r15, r12
               	mov	r12, qword ptr [rsp + 0x130]
               	vpunpcklqdq	xmm4, xmm6, xmm5 # xmm4 = xmm6[0],xmm5[0]
               	xor	qword ptr [rsp + 0xc8], r9
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x78], r9
               	mov	r9, qword ptr [rsp + 0x148]
               	xor	rbx, r8
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x70], r8
               	xor	r9, r12
               	rol	r12, 0x2d
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm8, ymm2, xmm4, 0x1
               	jmp	 <L178>
<L168>:
               	mov	rbx, qword ptr [rsp + 0x198]
               	or	rbx, qword ptr [rsp + 0x1a0]
               	mov	esi, r13d
               	mov	r14, qword ptr [rsp + 0x10]
               	mov	rdi, r14
               	mov	rdx, r14
               	mov	rcx, r13
               	call	 <auto Bodies3D::TransformReduce@Evaluation.Dependency.TransformReduce<Bodies3D::Body3DIterator, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto)>(auto, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto))>
               	test	r14, r14
               	je	 <L179>
               	mov	esi, 0x20
               	mov	rdi, qword ptr [rsp + 0x10]
               	vmovups	ymmword ptr [rsp + 0x110], ymm0
               	vzeroupper
               	call	 <_ZdaPvSt11align_val_t@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x110]
<L179>:
               	movabs	rax, 0x186a00000002a
               	cmp	rbx, rax
               	jne	 <L180>
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm1, xmm0
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xa78>
               	jb	 <L181>
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xa80>
               	ja	 <L181>
<L180>:
               	xor	eax, eax
               	add	rsp, 0x1b8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L181>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x110], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x110] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x5d50>
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
               	int3
               	int3
               	int3
               	int3

<auto Bodies3D::TransformReduce@Evaluation.Dependency.TransformReduce<Bodies3D::Body3DIterator, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto)>(auto, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto))>:
<L2>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x28
               	mov	r13, rcx
               	mov	r12, rcx
               	shr	r12, 0x20
               	mov	rcx, rsi
               	shr	rcx, 0x20
               	mov	eax, r12d
               	sub	eax, ecx
               	shr	eax, 0x3
               	cmp	eax, 0x1
               	jne	 <L0>
               	vbroadcastss	ymm1, dword ptr  <__libc_start_main+0xa74>
               	jmp	 <L1>
<L0>:
               	mov	rbx, rdx
               	movabs	rcx, -0x100000000
               	mov	ebp, r13d
               	and	eax, -0x2
               	shl	rax, 0x22
               	mov	r14, r13
               	sub	r14, rax
               	mov	r15, r14
               	and	r15, rcx
               	or	r15, rbp
               	mov	rcx, r15
               	call	 <auto Bodies3D::TransformReduce@Evaluation.Dependency.TransformReduce<Bodies3D::Body3DIterator, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto)>(auto, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto))>
               	vmovaps	ymm1, ymm0
               	nop	dword ptr [rax]
<L4>:
               	shr	r14, 0x20
               	mov	eax, r12d
               	sub	eax, r14d
               	shr	eax, 0x3
               	cmp	eax, 0x1
               	je	 <L3>
               	vmovups	ymmword ptr [rsp], ymm1
               	mov	rsi, r15
               	shl	rax, 0x22
               	movabs	rcx, 0x7ffffff800000000
               	and	rax, rcx
               	mov	r14, r13
               	sub	r14, rax
               	mov	r15, r14
               	movabs	rax, -0x100000000
               	and	r15, rax
               	or	r15, rbp
               	mov	rdi, rbx
               	mov	rdx, rbx
               	mov	rcx, r15
               	call	 <auto Bodies3D::TransformReduce@Evaluation.Dependency.TransformReduce<Bodies3D::Body3DIterator, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto)>(auto, Bodies3D::Body3DIterator, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(auto))>
               	vmovups	ymm1, ymmword ptr [rsp]
               	vaddps	ymm1, ymm0, ymm1
               	jmp	 <L4>
<L3>:
               	mov	rdi, rbx
               	mov	rsi, r15
<L1>:
               	mov	eax, esi
               	lea	rcx, [rax + 8*rax]
               	lea	rcx, [rcx + 2*rcx]
               	add	rcx, rax
               	movabs	rdx, 0x1fffffffe0
               	and	rdx, rcx
               	add	rdx, rdi
               	shr	rsi, 0x1e
               	and	rsi, -0x20
               	mov	rcx, rax
               	shl	rcx, 0x5
               	add	rcx, rdi
               	vmovaps	ymm0, ymmword ptr [rsi + rcx]
               	lea	rcx, [4*rax]
               	lea	rcx, [rcx + 8*rcx]
               	and	rcx, -0x20
               	add	rcx, rdi
               	shl	rax, 0x3
               	lea	rax, [rax + 4*rax]
               	and	rax, -0x20
               	add	rax, rdi
               	vmulps	ymm0, ymm0, ymmword ptr [rsi + rdx]
               	vmulps	ymm0, ymm0, ymmword ptr [rsi + rcx]
               	vmulps	ymm0, ymm0, ymmword ptr [rsi + rax]
               	vaddps	ymm0, ymm0, ymm1
               	add	rsp, 0x28
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
               	mov	rax, qword ptr  <__libc_start_main+0x5d28>
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
