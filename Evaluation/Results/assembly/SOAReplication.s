
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
               	call	qword ptr  <__libc_start_main+0x5f10>
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
               	mov	rax, qword ptr  <__libc_start_main+0x5f20>
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
               	mov	rax, qword ptr  <__libc_start_main+0x5f28>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x5f30>
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
               	mov	qword ptr [rsp + 0x60], rax
               	imul	rdi, r14, 0x2c
               	and	rdi, -0x20
               	mov	rdx, qword ptr  <__libc_start_main+0x5f38>
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
               	xor	ebx, ebx
               	xor	edi, edi
               	mov	r8, rsi
               	mov	qword ptr [rsp + 0x138], rsi
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
               	xor	r9, rax
               	xor	r10, rsi
               	xor	r11, rcx
               	xor	rbx, rdx
               	jmp	 <L6>
<L5>:
               	mov	qword ptr [rsp + 0x8], r14
               	mov	rdi, r14
               	shl	rdi, 0x20
               	mov	qword ptr [rsp + 0x180], rdi
               	xor	edi, edi
               	jmp	 <L7>
               	nop	dword ptr [rax]
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
               	xor	r9, rax
               	xor	r10, rsi
               	xor	r11, rcx
               	xor	rbx, rdx
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
               	xor	r9, rax
               	xor	r10, rsi
               	xor	r11, rcx
               	xor	rbx, rdx
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
               	xor	r9, rax
               	xor	r10, rsi
               	xor	r11, rcx
               	xor	rbx, rdx
               	jmp	 <L15>
<L14>:
               	xor	r12d, r12d
               	xor	r13d, r13d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x58], rax
               	xor	edi, edi
               	mov	rax, rbx
               	mov	rcx, r11
               	mov	rdx, r10
               	mov	rsi, r9
               	jmp	 <L16>
               	nop	dword ptr [rax + rax]
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
               	xor	r12, rsi
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x58], rax
               	jmp	 <L18>
<L17>:
               	xor	edi, edi
               	jmp	 <L19>
               	nop	dword ptr [rax]
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
               	xor	r12, rsi
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x58], rax
               	jmp	 <L21>
<L20>:
               	xor	edi, edi
               	jmp	 <L22>
               	nop	dword ptr [rax]
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
               	xor	r12, rsi
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x58], rax
               	jmp	 <L24>
<L23>:
               	xor	edi, edi
               	jmp	 <L25>
               	nop	dword ptr [rax]
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
               	xor	r12, rsi
               	xor	r13, rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x58], rax
               	jmp	 <L27>
<L26>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x50], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x58]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	rdx, r13
               	mov	rsi, r12
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0x50], rax
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0x50], rax
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0x50], rax
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x98], rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	qword ptr [rsp + 0x50], rax
               	jmp	 <L39>
<L38>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x108], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x90], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x50]
               	mov	rcx, qword ptr [rsp + 0xe8]
               	mov	rdx, qword ptr [rsp + 0x98]
               	mov	rsi, qword ptr [rsp + 0xa0]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0x48], rax
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
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0x48], rax
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
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0x48], rax
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
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0x48], rax
               	jmp	 <L51>
<L50>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x100], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x48]
               	mov	rcx, qword ptr [rsp + 0xe0]
               	mov	rdx, qword ptr [rsp + 0x90]
               	mov	rsi, qword ptr [rsp + 0x108]
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x40], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x40], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x40], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x88], rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	qword ptr [rsp + 0x40], rax
               	jmp	 <L63>
<L62>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x18], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x40]
               	mov	rcx, qword ptr [rsp + 0x30]
               	mov	rdx, qword ptr [rsp + 0x88]
               	mov	rsi, qword ptr [rsp + 0x100]
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x18], rcx
               	xor	qword ptr [rsp + 0x38], rax
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x18], rcx
               	xor	qword ptr [rsp + 0x38], rax
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x18], rcx
               	xor	qword ptr [rsp + 0x38], rax
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x18], rcx
               	xor	qword ptr [rsp + 0x38], rax
               	jmp	 <L75>
<L74>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x38]
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	rdx, qword ptr [rsp + 0x80]
               	mov	rsi, qword ptr [rsp + 0xf8]
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x28], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x28], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x28], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x28], rcx
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L87>
<L86>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x70], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xd8]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	rsi, qword ptr [rsp + 0xf0]
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
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	xor	qword ptr [rsp + 0x20], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L99>
<L98>:
               	mov	qword ptr [rsp + 0x1a0], r9
               	xor	r15d, r15d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x68], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb8], rax
               	xor	esi, esi
               	mov	rax, qword ptr [rsp + 0xc8]
               	mov	rcx, qword ptr [rsp + 0xd0]
               	mov	rdi, qword ptr [rsp + 0x70]
               	mov	r8, qword ptr [rsp + 0x20]
               	movabs	rdx, 0x180ec6d33cfd0aba
               	jmp	 <L100>
               	nop	dword ptr [rax]
<L102>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rcx, r8
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r8, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L101>
<L100>:
               	bt	rdx, rsi
               	jae	 <L102>
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L102>
<L101>:
               	xor	r9d, r9d
               	movabs	rdx, -0x2a59ed990f36c6d4
               	jmp	 <L103>
               	nop	word ptr cs:[rax + rax]
<L105>:
               	mov	rsi, rdi
               	shl	rsi, 0x11
               	xor	rcx, r8
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r8, rax
               	xor	rcx, rsi
               	rol	rax, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L104>
<L103>:
               	bt	rdx, r9
               	jae	 <L105>
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L105>
<L104>:
               	xor	esi, esi
               	movabs	rdx, -0x56a7d9e71fc03656
               	jmp	 <L106>
               	nop	word ptr cs:[rax + rax]
<L108>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rcx, r8
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r8, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L107>
<L106>:
               	bt	rdx, rsi
               	jae	 <L108>
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L108>
<L107>:
               	xor	esi, esi
               	movabs	rdx, 0x39abdc4529b1661c
               	jmp	 <L109>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rcx, r8
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r8, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L110>
<L109>:
               	bt	rdx, rsi
               	jae	 <L111>
               	xor	r15, r8
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L111>
<L110>:
               	mov	qword ptr [rsp + 0x140], r13
               	mov	qword ptr [rsp + 0x190], r12
               	mov	qword ptr [rsp + 0x170], rbx
               	xor	r12d, r12d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x110], rax
               	xor	ebp, ebp
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	esi, esi
               	mov	rax, qword ptr [rsp + 0xb8]
               	mov	rcx, qword ptr [rsp + 0xc0]
               	mov	rdi, qword ptr [rsp + 0x68]
               	mov	r8, r15
               	movabs	rdx, 0x180ec6d33cfd0aba
               	jmp	 <L112>
               	nop	word ptr [rax + rax]
<L114>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rcx, r8
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r8, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L113>
<L112>:
               	bt	rdx, rsi
               	jae	 <L114>
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	rbp, rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L114>
<L113>:
               	xor	r9d, r9d
               	movabs	rdx, -0x2a59ed990f36c6d4
               	jmp	 <L115>
<L117>:
               	mov	rsi, rdi
               	shl	rsi, 0x11
               	xor	rcx, r8
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r8, rax
               	xor	rcx, rsi
               	rol	rax, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L116>
<L115>:
               	bt	rdx, r9
               	jae	 <L117>
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	rbp, rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L117>
<L116>:
               	xor	esi, esi
               	movabs	rdx, -0x56a7d9e71fc03656
               	jmp	 <L118>
               	nop
<L120>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rcx, r8
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r8, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L119>
<L118>:
               	bt	rdx, rsi
               	jae	 <L120>
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	rbp, rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L120>
<L119>:
               	xor	esi, esi
               	movabs	rdx, 0x39abdc4529b1661c
               	jmp	 <L121>
               	nop
<L123>:
               	mov	r9, rdi
               	shl	r9, 0x11
               	xor	rcx, r8
               	xor	rax, rdi
               	xor	rdi, rcx
               	xor	r8, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L122>
<L121>:
               	bt	rdx, rsi
               	jae	 <L123>
               	xor	r12, r8
               	xor	qword ptr [rsp + 0x110], rdi
               	xor	rbp, rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L123>
<L122>:
               	mov	qword ptr [rsp + 0x198], r11
               	mov	qword ptr [rsp + 0x148], r10
               	xor	r14d, r14d
               	xor	ecx, ecx
               	xor	edx, edx
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	rdi, qword ptr [rsp + 0xa8]
               	mov	r8, rbp
               	mov	r9, qword ptr [rsp + 0x110]
               	mov	r11, r12
               	movabs	rax, 0x180ec6d33cfd0aba
               	jmp	 <L124>
               	nop
<L126>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	r8, r11
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r11, rdi
               	xor	r8, r13
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L125>
<L124>:
               	bt	rax, rsi
               	jae	 <L126>
               	xor	r14, r11
               	xor	rcx, r9
               	xor	rdx, r8
               	xor	r10, rdi
               	jmp	 <L126>
<L125>:
               	xor	esi, esi
               	movabs	rax, -0x2a59ed990f36c6d4
               	jmp	 <L127>
               	nop	word ptr cs:[rax + rax]
<L129>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	r8, r11
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r11, rdi
               	xor	r8, r13
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L128>
<L127>:
               	bt	rax, rsi
               	jae	 <L129>
               	xor	r14, r11
               	xor	rcx, r9
               	xor	rdx, r8
               	xor	r10, rdi
               	jmp	 <L129>
<L128>:
               	xor	esi, esi
               	movabs	rax, -0x56a7d9e71fc03656
               	jmp	 <L130>
               	nop	word ptr cs:[rax + rax]
<L132>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	r8, r11
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r11, rdi
               	xor	r8, r13
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L131>
<L130>:
               	bt	rax, rsi
               	jae	 <L132>
               	xor	r14, r11
               	xor	rcx, r9
               	xor	rdx, r8
               	xor	r10, rdi
               	jmp	 <L132>
<L131>:
               	xor	esi, esi
               	movabs	rax, 0x39abdc4529b1661c
               	jmp	 <L133>
               	nop	word ptr cs:[rax + rax]
<L135>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	r8, r11
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r11, rdi
               	xor	r8, r13
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L134>
<L133>:
               	bt	rax, rsi
               	jae	 <L135>
               	xor	r14, r11
               	xor	rcx, r9
               	xor	rdx, r8
               	xor	r10, rdi
               	jmp	 <L135>
<L134>:
               	mov	esi, 0x40
               	nop	dword ptr [rax]
<L136>:
               	dec	rsi
               	jne	 <L136>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L137>:
               	dec	rsi
               	jne	 <L137>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L138>:
               	dec	rsi
               	jne	 <L138>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L139>:
               	dec	rsi
               	jne	 <L139>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L140>:
               	dec	rsi
               	jne	 <L140>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L141>:
               	dec	rsi
               	jne	 <L141>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L142>:
               	dec	rsi
               	jne	 <L142>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L143>:
               	dec	rsi
               	jne	 <L143>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L144>:
               	dec	rsi
               	jne	 <L144>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L145>:
               	dec	rsi
               	jne	 <L145>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L146>:
               	dec	rsi
               	jne	 <L146>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L147>:
               	dec	rsi
               	jne	 <L147>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L148>:
               	dec	rsi
               	jne	 <L148>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L149>:
               	dec	rsi
               	jne	 <L149>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L150>:
               	dec	rsi
               	jne	 <L150>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L151>:
               	dec	rsi
               	jne	 <L151>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L152>:
               	dec	rsi
               	jne	 <L152>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L153>:
               	dec	rsi
               	jne	 <L153>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L154>:
               	dec	rsi
               	jne	 <L154>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L155>:
               	dec	rsi
               	jne	 <L155>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L156>:
               	dec	rsi
               	jne	 <L156>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L157>:
               	dec	rsi
               	jne	 <L157>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L158>:
               	dec	rsi
               	jne	 <L158>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L159>:
               	dec	rsi
               	jne	 <L159>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L160>:
               	dec	rsi
               	jne	 <L160>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L161>:
               	dec	rsi
               	jne	 <L161>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L162>:
               	dec	rsi
               	jne	 <L162>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L163>:
               	dec	rsi
               	jne	 <L163>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L164>:
               	dec	rsi
               	jne	 <L164>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L165>:
               	dec	rsi
               	jne	 <L165>
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L166>:
               	dec	rsi
               	jne	 <L166>
               	mov	qword ptr [rsp + 0x188], rdx
               	mov	qword ptr [rsp + 0x168], rcx
               	mov	esi, 0x40
               	nop	word ptr [rax + rax]
<L167>:
               	dec	rsi
               	jne	 <L167>
               	mov	rax, qword ptr [rsp + 0x60]
               	or	qword ptr [rsp + 0x180], rax
               	mov	rdx, qword ptr [rsp + 0x8]
               	test	rdx, rdx
               	je	 <L168>
               	vmovq	xmm1, qword ptr [rsp + 0x168] # xmm1 = mem[0],zero
               	vmovq	xmm2, qword ptr [rsp + 0x110] # xmm2 = mem[0],zero
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vmovq	xmm2, qword ptr [rsp + 0x68] # xmm2 = mem[0],zero
               	vmovq	xmm3, qword ptr [rsp + 0x70] # xmm3 = mem[0],zero
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm2, xmm1, 0x1
               	vpsllq	ymm2, ymm1, 0x2
               	vpaddq	ymm1, ymm2, ymm1
               	vpsrlq	ymm2, ymm1, 0x39
               	vpsllq	ymm1, ymm1, 0x7
               	vpor	ymm1, ymm1, ymm2
               	vpsllq	ymm2, ymm1, 0x3
               	vpaddq	ymm8, ymm2, ymm1
               	vmovq	xmm1, qword ptr [rsp + 0x78] # xmm1 = mem[0],zero
               	vmovq	xmm2, qword ptr [rsp + 0x80] # xmm2 = mem[0],zero
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vmovq	xmm2, qword ptr [rsp + 0x88] # xmm2 = mem[0],zero
               	vmovq	xmm3, qword ptr [rsp + 0x90] # xmm3 = mem[0],zero
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm2, xmm1, 0x1
               	vpsllq	ymm2, ymm1, 0x2
               	vpaddq	ymm1, ymm2, ymm1
               	vpsrlq	ymm2, ymm1, 0x39
               	vpsllq	ymm1, ymm1, 0x7
               	vpor	ymm1, ymm1, ymm2
               	vpsllq	ymm2, ymm1, 0x3
               	vpaddq	ymm9, ymm2, ymm1
               	mov	rax, qword ptr [rsp + 0x138]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	rdi, qword ptr [rsp + 0x148]
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	r8, qword ptr [rsp + 0x140]
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	lea	r8, [r8 + 8*r8]
               	mov	rax, qword ptr [rsp + 0x98]
               	lea	r9, [rax + 4*rax]
               	rol	r9, 0x7
               	lea	r9, [r9 + 8*r9]
               	vmovq	xmm1, r9
               	vmovq	xmm2, r8
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vmovq	xmm2, rdi
               	vmovq	xmm3, rsi
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm10, ymm2, xmm1, 0x1
               	neg	edx
               	mov	qword ptr [rsp + 0x1b0], rdx
               	mov	ecx, 0x1
               	vpbroadcastw	xmm1, word ptr  <__libc_start_main+0xa80>
               	jmp	 <L169>
               	nop	word ptr [rax + rax]
<L177>:
               	vpsrlq	ymm10, ymm10, 0x8
               	vpsrlq	ymm9, ymm9, 0x8
               	vpsrlq	ymm8, ymm8, 0x8
<L178>:
               	mov	rax, qword ptr [rsp + 0x1b0]
               	lea	edx, [rax + rcx]
               	inc	edx
               	mov	esi, ecx
               	inc	esi
               	mov	ecx, esi
               	cmp	edx, 0x1
               	je	 <L170>
<L169>:
               	vmovd	esi, xmm10
               	movzx	edi, sil
               	imul	esi, edi, 0x4f
               	shr	esi, 0xa
               	lea	r8d, [rsi + 2*rsi]
               	lea	esi, [rsi + 4*r8]
               	sub	dil, sil
               	cmp	dil, 0xc
               	mov	qword ptr [rsp + 0x60], rbp
               	mov	qword ptr [rsp + 0x138], r10
               	mov	qword ptr [rsp + 0x1a8], rcx
               	ja	 <L171>
               	vpextrb	esi, xmm10, 0x8
               	vextracti128	xmm2, ymm10, 0x1
               	vmovd	ebp, xmm2
               	vpextrb	eax, xmm2, 0x8
               	mov	dword ptr [rsp + 0x160], eax
               	vmovd	dword ptr [rsp + 0x158], xmm9
               	vpextrb	eax, xmm9, 0x8
               	mov	dword ptr [rsp + 0x150], eax
               	vextracti128	xmm2, ymm9, 0x1
               	vmovd	dword ptr [rsp + 0x17c], xmm2
               	vpextrb	eax, xmm2, 0x8
               	mov	dword ptr [rsp + 0x178], eax
               	vpshufb	xmm11, xmm8, xmm1
               	vextracti128	xmm2, ymm8, 0x1
               	vmovd	r8d, xmm2
               	movzx	edi, dil
               	lea	rax,  <__libc_start_main+0xa84>
               	movsxd	rdi, dword ptr [rax + 4*rdi]
               	add	rdi, rax
               	jmp	rdi
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	vpextrb	edx, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm11, xmm12, edx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm2
               	vbroadcastss	xmm12, xmm11
               	jmp	 <L172>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm2
               	vmovss	xmm11, dword ptr  <__libc_start_main+0xa64> # xmm11 = mem[0],zero,zero,zero
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa70> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm4, xmm12, edx
               	vpextrb	edx, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	movzx	edx, r8b
               	vcvtsi2ss	xmm11, xmm12, edx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm4
               	vbroadcastss	xmm12, xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa60> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm2
               	jmp	 <L174>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	vpextrb	edx, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm4, xmm12, edx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm2
               	vbroadcastss	xmm12, xmm4
<L174>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa64> # xmm13 = mem[0],zero,zero,zero
               	vmovaps	xmm11, xmm13
               	jmp	 <L173>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	edx, r8b
               	vxorps	xmm13, xmm13, xmm13
               	vcvtsi2ss	xmm11, xmm13, edx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa6c> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	esi, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, esi
               	vpextrb	esi, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm4, xmm12, esi
               	mov	r13, qword ptr [rsp + 0x8]
               	mov	r8, r13
               	shr	r8, 0x20
               	mov	rsi, r13
               	movabs	rdx, -0x100000000
               	and	rsi, rdx
               	movabs	rdx, 0x100000000
               	add	rsi, rdx
               	mov	edi, r13d
               	or	rsi, rdi
               	shr	r13, 0x23
               	mov	r11, r13
               	shl	r13, 0x5
               	add	r13, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	edx, r8d
               	vmovss	dword ptr [r13 + 4*rdx], xmm2
               	vbroadcastss	xmm12, xmm4
               	jmp	 <L175>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm2
<L175>:
               	vmovss	xmm11, dword ptr  <__libc_start_main+0xa64> # xmm11 = mem[0],zero,zero,zero
               	jmp	 <L176>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	vpextrb	edx, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm11, xmm12, edx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm2
               	vbroadcastss	xmm12, xmm11
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa64> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	edx, r8b
               	vxorps	xmm13, xmm13, xmm13
               	vcvtsi2ss	xmm11, xmm13, edx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa64> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	edx, r8b
               	vxorps	xmm13, xmm13, xmm13
               	vcvtsi2ss	xmm11, xmm13, edx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm2
<L172>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa78> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rbx, qword ptr [rsp + 0x110]
               	mov	r10, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x18]
               	mov	rax, qword ptr [rsp + 0x30]
               	movzx	edx, sil
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm4, xmm12, edx
               	vpextrb	edx, xmm11, 0x0
               	vxorps	xmm12, xmm12, xmm12
               	vcvtsi2ss	xmm2, xmm12, edx
               	movzx	edx, r8b
               	vcvtsi2ss	xmm11, xmm12, edx
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	r8, rdx
               	shr	r8, 0x20
               	mov	rsi, rdx
               	movabs	rdi, -0x100000000
               	and	rsi, rdi
               	movabs	rdi, 0x100000000
               	add	rsi, rdi
               	mov	edi, edx
               	or	rsi, rdi
               	shr	rdx, 0x23
               	mov	r11, rdx
               	shl	rdx, 0x5
               	add	rdx, qword ptr [rsp + 0x10]
               	and	r8d, 0x7
               	mov	r13d, r8d
               	vmovss	dword ptr [rdx + 4*r13], xmm4
               	vbroadcastss	xmm12, xmm2
<L176>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa68> # xmm13 = mem[0],zero,zero,zero
<L173>:
               	mov	qword ptr [rsp + 0x8], rsi
               	mov	qword ptr [rsp + 0x18], r9
               	mov	qword ptr [rsp + 0x110], rbx
               	mov	qword ptr [rsp + 0x20], r10
               	mov	qword ptr [rsp + 0x28], rcx
               	mov	qword ptr [rsp + 0x30], rax
               	movzx	edx, byte ptr [rsp + 0x178]
               	vcvtsi2ss	xmm14, xmm5, edx
               	movzx	edx, byte ptr [rsp + 0x17c]
               	vcvtsi2ss	xmm15, xmm5, edx
               	movzx	edx, byte ptr [rsp + 0x150]
               	vcvtsi2ss	xmm4, xmm0, edx
               	movzx	edx, byte ptr [rsp + 0x158]
               	vcvtsi2ss	xmm2, xmm0, edx
               	movzx	edx, byte ptr [rsp + 0x160]
               	vcvtsi2ss	xmm3, xmm0, edx
               	movzx	edx, bpl
               	vcvtsi2ss	xmm5, xmm0, edx
               	mov	edx, edi
               	shr	edx, 0x3
               	shl	rdx, 0x5
               	shl	r11, 0x5
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rsi, [rcx + r11]
               	add	rdx, rsi
               	vmovss	dword ptr [rdx + 4*r8], xmm5
               	mov	edx, edi
               	shr	edx, 0x2
               	shl	rdx, 0x5
               	add	rdx, rsi
               	vmovss	dword ptr [rdx + 4*r8], xmm3
               	lea	r13, [4*rdi]
               	lea	rdx, [2*r13]
               	add	rdx, r13
               	and	rdx, -0x20
               	add	rdx, rsi
               	vmovss	dword ptr [rdx + 4*r8], xmm2
               	mov	edx, edi
               	shr	edx
               	shl	rdx, 0x5
               	add	rdx, rsi
               	vmovss	dword ptr [rdx + 4*r8], xmm4
               	lea	rdx, [4*r13]
               	add	rdx, r13
               	and	rdx, -0x20
               	add	rdx, rsi
               	vmovss	dword ptr [rdx + 4*r8], xmm15
               	lea	rdx, [8*rdi]
               	lea	rbx, [rdx + 2*rdx]
               	and	rbx, -0x20
               	add	rbx, rsi
               	vmovss	dword ptr [rbx + 4*r8], xmm14
               	lea	rbx, [rdi + 8*rdi]
               	lea	rbx, [rbx + 2*rbx]
               	add	rbx, rdi
               	movabs	rax, 0x1fffffffe0
               	and	rbx, rax
               	add	rbx, rsi
               	vmovss	dword ptr [rbx + 4*r8], xmm12
               	shl	rdi, 0x5
               	add	rdi, qword ptr [rsp + 0x10]
               	add	rdi, r11
               	vextractps	dword ptr [rdi + 4*r8], xmm12, 0x1
               	lea	rdi, [8*r13]
               	add	rdi, r13
               	and	rdi, -0x20
               	add	rdi, rsi
               	vmovss	dword ptr [rdi + 4*r8], xmm11
               	lea	rdx, [rdx + 4*rdx]
               	and	rdx, -0x20
               	add	rdx, rsi
               	vmovss	dword ptr [rdx + 4*r8], xmm13
               	mov	rbp, qword ptr [rsp + 0x60]
               	mov	r10, qword ptr [rsp + 0x138]
               	mov	rcx, qword ptr [rsp + 0x1a8]
<L171>:
               	test	cl, 0x7
               	jne	 <L177>
               	vpermq	ymm2, ymm0, 0xe3        # ymm2 = ymm0[3,0,2,3]
               	vpermq	ymm3, ymm0, 0xe9        # ymm3 = ymm0[1,2,2,3]
               	vpextrq	rdx, xmm0, 0x1
               	shl	rdx, 0x11
               	vpxor	xmm2, xmm3, xmm2
               	vpxor	xmm0, xmm2, xmm0
               	vpextrq	rsi, xmm2, 0x1
               	xor	rsi, rdx
               	vmovq	rdx, xmm2
               	rol	rdx, 0x2d
               	vmovq	xmm9, rsi
               	vmovq	xmm8, rdx
               	mov	qword ptr [rsp + 0x160], r15
               	mov	rax, qword ptr [rsp + 0x148]
               	mov	rdx, rax
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x198]
               	xor	rsi, qword ptr [rsp + 0x1a0]
               	xor	qword ptr [rsp + 0x170], rax
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x148], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x198], rsi
               	mov	rax, qword ptr [rsp + 0xb0]
               	mov	rsi, qword ptr [rsp + 0x140]
               	mov	rdx, rsi
               	shl	rdx, 0x11
               	xor	rax, qword ptr [rsp + 0x190]
               	mov	qword ptr [rsp + 0x158], r12
               	mov	qword ptr [rsp + 0x150], r14
               	mov	r12, qword ptr [rsp + 0x58]
               	xor	r12, rsi
               	mov	qword ptr [rsp + 0x58], r12
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x140], rsi
               	xor	rax, rdx
               	mov	qword ptr [rsp + 0xb0], rax
               	mov	rdi, qword ptr [rsp + 0x98]
               	mov	rdx, rdi
               	shl	rdx, 0x11
               	mov	rax, qword ptr [rsp + 0xa0]
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	qword ptr [rsp + 0xa0], rax
               	mov	rsi, qword ptr [rsp + 0xe8]
               	xor	rsi, rax
               	mov	r9, qword ptr [rsp + 0x50]
               	xor	r9, rdi
               	mov	qword ptr [rsp + 0x50], r9
               	xor	rdi, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0xe8], rsi
               	mov	r14, qword ptr [rsp + 0x90]
               	mov	rdx, r14
               	shl	rdx, 0x11
               	mov	rcx, qword ptr [rsp + 0x108]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	rsi, rcx
               	mov	r10, qword ptr [rsp + 0x48]
               	mov	r13, qword ptr [rsp + 0x28]
               	xor	r10, r14
               	mov	qword ptr [rsp + 0x48], r10
               	xor	r14, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0xe0], rsi
               	mov	r15, qword ptr [rsp + 0x88]
               	mov	rdx, r15
               	shl	rdx, 0x11
               	mov	rax, qword ptr [rsp + 0x100]
               	xor	r8, rax
               	mov	rax, qword ptr [rsp + 0x40]
               	xor	rax, r15
               	mov	qword ptr [rsp + 0x40], rax
               	xor	r15, r8
               	xor	r8, rdx
               	mov	qword ptr [rsp + 0x30], r8
               	mov	r11, qword ptr [rsp + 0x80]
               	mov	rdx, r11
               	shl	rdx, 0x11
               	mov	r8, qword ptr [rsp + 0xf8]
               	xor	qword ptr [rsp + 0x18], r8
               	mov	r8, qword ptr [rsp + 0x38]
               	xor	r8, r11
               	mov	qword ptr [rsp + 0x38], r8
               	xor	r11, qword ptr [rsp + 0x18]
               	xor	qword ptr [rsp + 0x18], rdx
               	mov	r9, qword ptr [rsp + 0x78]
               	mov	rdx, r9
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	r13, rsi
               	mov	rbp, qword ptr [rsp + 0xd8]
               	xor	rbp, r9
               	xor	r9, r13
               	xor	r13, rdx
               	mov	qword ptr [rsp + 0x28], r13
               	mov	r13, qword ptr [rsp + 0x70]
               	mov	rdx, r13
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	rsi, qword ptr [rsp + 0x20]
               	mov	r12, qword ptr [rsp + 0xc8]
               	xor	r12, r13
               	xor	r13, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0xd0], rsi
               	mov	r10, qword ptr [rsp + 0x68]
               	mov	rdx, r10
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	rsi, qword ptr [rsp + 0x160]
               	mov	rbx, qword ptr [rsp + 0xb8]
               	xor	rbx, r10
               	xor	r10, rsi
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0xc0], rsi
               	mov	rdx, qword ptr [rsp + 0x110]
               	shl	rdx, 0x11
               	mov	rax, qword ptr [rsp + 0x60]
               	xor	rax, qword ptr [rsp + 0x158]
               	mov	qword ptr [rsp + 0x60], rax
               	mov	r8, qword ptr [rsp + 0xa8]
               	xor	r8, qword ptr [rsp + 0x110]
               	mov	rax, qword ptr [rsp + 0x110]
               	xor	rax, qword ptr [rsp + 0x60]
               	mov	qword ptr [rsp + 0x110], rax
               	xor	qword ptr [rsp + 0x60], rdx
               	mov	rcx, qword ptr [rsp + 0x168]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rax, qword ptr [rsp + 0x188]
               	xor	rax, qword ptr [rsp + 0x150]
               	xor	qword ptr [rsp + 0x138], rcx
               	vpextrq	rsi, xmm0, 0x1
               	xor	rcx, rax
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	xor	rax, rdx
               	mov	qword ptr [rsp + 0x188], rax
               	mov	qword ptr [rsp + 0x98], rdi
               	lea	rdx, [rdi + 4*rdi]
               	rol	rdx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rdi, [rdx + 8*rdx]
               	vmovq	xmm10, rdi
               	mov	rax, qword ptr [rsp + 0x140]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm11, rdx
               	mov	rax, qword ptr [rsp + 0x148]
               	lea	rdx, [rax + 4*rax]
               	mov	rdi, qword ptr [rsp + 0x160]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm12, rdx
               	mov	qword ptr [rsp + 0x90], r14
               	lea	rdx, [r14 + 4*r14]
               	rol	rdx, 0x7
               	vmovq	xmm13, rsi
               	mov	qword ptr [rsp + 0x78], r9
               	lea	rsi, [r9 + 4*r9]
               	rol	rsi, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	rsi, [rsi + 8*rsi]
               	vmovq	xmm14, rsi
               	mov	qword ptr [rsp + 0x80], r11
               	lea	rsi, [r11 + 4*r11]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	vmovq	xmm15, rsi
               	mov	qword ptr [rsp + 0x88], r15
               	lea	rsi, [r15 + 4*r15]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	vmovq	xmm4, rsi
               	mov	qword ptr [rsp + 0x168], rcx
               	lea	rsi, [rcx + 4*rcx]
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	rol	rsi, 0x7
               	vmovq	xmm7, rdx
               	lea	rdx, [rsi + 8*rsi]
               	vmovq	xmm5, rdx
               	mov	rax, qword ptr [rsp + 0x110]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm6, rdx
               	mov	qword ptr [rsp + 0x68], r10
               	lea	rdx, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x138]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm2, rdx
               	mov	qword ptr [rsp + 0x70], r13
               	lea	rdx, [4*r13]
               	add	rdx, r13
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm3, rdx
               	vpbroadcastq	ymm9, xmm9
               	vpblendd	ymm0, ymm0, ymm9, 0x30  # ymm0 = ymm0[0,1,2,3],ymm9[4,5],ymm0[6,7]
               	vpbroadcastq	ymm8, xmm8
               	mov	rdx, qword ptr [rsp + 0x170]
               	xor	qword ptr [rsp + 0x1a0], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x170], rdx
               	vpblendd	ymm0, ymm0, ymm8, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm8[6,7]
               	mov	rdx, qword ptr [rsp + 0x58]
               	xor	qword ptr [rsp + 0x190], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x58], rdx
               	vpunpcklqdq	xmm8, xmm11, xmm10 # xmm8 = xmm11[0],xmm10[0]
               	mov	rdx, qword ptr [rsp + 0x50]
               	xor	qword ptr [rsp + 0xa0], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x50], rdx
               	vpunpcklqdq	xmm9, xmm13, xmm12 # xmm9 = xmm13[0],xmm12[0]
               	mov	rdx, qword ptr [rsp + 0x48]
               	xor	qword ptr [rsp + 0x108], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x48], rdx
               	vinserti128	ymm10, ymm9, xmm8, 0x1
               	mov	rdx, qword ptr [rsp + 0x40]
               	xor	qword ptr [rsp + 0x100], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x40], rdx
               	vpunpcklqdq	xmm8, xmm15, xmm14 # xmm8 = xmm15[0],xmm14[0]
               	mov	rdx, qword ptr [rsp + 0x38]
               	xor	qword ptr [rsp + 0xf8], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x38], rdx
               	mov	rax, qword ptr [rsp + 0x158]
               	vpunpcklqdq	xmm4, xmm7, xmm4 # xmm4 = xmm7[0],xmm4[0]
               	xor	qword ptr [rsp + 0xf0], rbp
               	rol	rbp, 0x2d
               	mov	qword ptr [rsp + 0xd8], rbp
               	mov	rbp, qword ptr [rsp + 0x60]
               	mov	r14, qword ptr [rsp + 0x150]
               	vinserti128	ymm9, ymm4, xmm8, 0x1
               	xor	qword ptr [rsp + 0x20], r12
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0xc8], r12
               	vpunpcklqdq	xmm4, xmm6, xmm5 # xmm4 = xmm6[0],xmm5[0]
               	xor	rdi, rbx
               	mov	r15, rdi
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0xb8], rbx
               	xor	rax, r8
               	mov	r12, rax
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0xa8], r8
               	xor	r14, r10
               	rol	r10, 0x2d
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm8, ymm2, xmm4, 0x1
               	jmp	 <L178>
<L170>:
               	movabs	rdx, 0x800000000
               	mov	r11, qword ptr [rsp + 0x8]
               	mov	r8d, r11d
               	mov	rax, r11
               	shr	rax, 0x23
               	cmp	eax, 0x4
               	jbe	 <L179>
               	lea	rcx, [8*r8]
               	sub	rcx, r8
               	shr	rcx, 0x3
               	shl	rcx, 0x5
               	mov	rsi, r8
               	shl	rsi, 0x5
               	lea	rdi, [r8 + 8*r8]
               	shr	rdi, 0x3
               	shl	rdi, 0x5
               	add	r8, r8
               	lea	r8, [r8 + 4*r8]
               	shr	r8, 0x3
               	shl	r8, 0x5
               	mov	r9, qword ptr [rsp + 0x10]
               	vmovaps	ymm0, ymmword ptr [r9 + rsi]
               	vmovaps	ymm1, ymmword ptr [r9 + rsi + 0x20]
               	vmovaps	ymm2, ymmword ptr [r9 + rsi + 0x40]
               	vmovaps	ymm3, ymmword ptr [r9 + rsi + 0x60]
               	vmulps	ymm0, ymm0, ymmword ptr [r9 + rcx]
               	vmulps	ymm0, ymm0, ymmword ptr [r9 + rdi]
               	vmulps	ymm0, ymm0, ymmword ptr [r9 + r8]
               	vmulps	ymm2, ymm2, ymmword ptr [r9 + rcx + 0x40]
               	vmulps	ymm2, ymm2, ymmword ptr [r9 + rdi + 0x40]
               	vmulps	ymm2, ymm2, ymmword ptr [r9 + r8 + 0x40]
               	vmulps	ymm1, ymm1, ymmword ptr [r9 + rcx + 0x20]
               	vmulps	ymm1, ymm1, ymmword ptr [r9 + rdi + 0x20]
               	vmulps	ymm1, ymm1, ymmword ptr [r9 + r8 + 0x20]
               	vmulps	ymm3, ymm3, ymmword ptr [r9 + rcx + 0x60]
               	vmulps	ymm3, ymm3, ymmword ptr [r9 + rdi + 0x60]
               	vmulps	ymm3, ymm3, ymmword ptr [r9 + r8 + 0x60]
               	vaddps	ymm0, ymm2, ymm0
               	vaddps	ymm1, ymm3, ymm1
               	and	eax, -0x2
               	cmp	rax, 0x5
               	jb	 <L180>
               	mov	r9, qword ptr [rsp + 0x10]
               	add	r9, 0xa0
               	mov	r10d, 0x4
               	nop	word ptr cs:[rax + rax]
<L181>:
               	vmovaps	ymm2, ymmword ptr [r9 + rsi - 0x20]
               	vmulps	ymm2, ymm2, ymmword ptr [r9 + rcx - 0x20]
               	vmulps	ymm2, ymm2, ymmword ptr [r9 + rdi - 0x20]
               	vmulps	ymm2, ymm2, ymmword ptr [r9 + r8 - 0x20]
               	vmovaps	ymm3, ymmword ptr [r9 + rsi]
               	vaddps	ymm0, ymm2, ymm0
               	vmulps	ymm2, ymm3, ymmword ptr [r9 + rcx]
               	vmulps	ymm2, ymm2, ymmword ptr [r9 + rdi]
               	vmulps	ymm2, ymm2, ymmword ptr [r9 + r8]
               	vaddps	ymm1, ymm2, ymm1
               	add	r10, 0x2
               	add	r9, 0x40
               	cmp	r10, rax
               	jb	 <L181>
<L180>:
               	test	r11, rdx
               	jne	 <L182>
               	vaddps	ymm1, ymm1, ymm0
               	jmp	 <L183>
<L179>:
               	cmp	r11, rdx
               	jae	 <L184>
<L168>:
               	vpxor	xmm1, xmm1, xmm1
               	cmp	qword ptr [rsp + 0x10], 0x0
               	jne	 <L183>
               	movabs	rax, 0x186a00000002a
               	cmp	qword ptr [rsp + 0x180], rax
               	je	 <L185>
               	jmp	 <L186>
<L182>:
               	mov	rdx, qword ptr [rsp + 0x10]
               	add	rcx, rdx
               	add	rsi, rdx
               	add	rdi, rdx
               	shl	rax, 0x5
               	vmovaps	ymm2, ymmword ptr [rsi + rax]
               	vmulps	ymm2, ymm2, ymmword ptr [rcx + rax]
               	vmulps	ymm2, ymm2, ymmword ptr [rdi + rax]
               	add	r8, rdx
               	vmulps	ymm2, ymm2, ymmword ptr [r8 + rax]
               	vaddps	ymm0, ymm2, ymm0
               	vaddps	ymm1, ymm1, ymm0
               	jmp	 <L183>
<L184>:
               	lea	rcx, [r8 + 8*r8]
               	lea	rcx, [rcx + 2*rcx]
               	add	rcx, r8
               	movabs	rdx, 0x1fffffffe0
               	and	rcx, rdx
               	mov	rdx, r8
               	shl	rdx, 0x5
               	lea	rsi, [4*r8]
               	lea	rsi, [rsi + 8*rsi]
               	and	rsi, -0x20
               	shl	r8, 0x3
               	lea	rdi, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x10]
               	vmovaps	ymm0, ymmword ptr [r8 + rdx]
               	vmulps	ymm0, ymm0, ymmword ptr [r8 + rcx]
               	vmulps	ymm0, ymm0, ymmword ptr [r8 + rsi]
               	and	rdi, -0x20
               	vmulps	ymm1, ymm0, ymmword ptr [r8 + rdi]
               	cmp	eax, 0x1
               	je	 <L183>
               	mov	r8, qword ptr [rsp + 0x10]
               	add	rcx, r8
               	add	rdx, r8
               	add	rsi, r8
               	add	rdi, r8
               	vmovaps	ymm0, ymmword ptr [rdx + 0x20]
               	vmulps	ymm0, ymm0, ymmword ptr [rcx + 0x20]
               	vmulps	ymm0, ymm0, ymmword ptr [rsi + 0x20]
               	vmulps	ymm0, ymm0, ymmword ptr [rdi + 0x20]
               	vaddps	ymm1, ymm0, ymm1
               	cmp	eax, 0x2
               	je	 <L183>
               	vmovaps	ymm0, ymmword ptr [rdx + 0x40]
               	vmulps	ymm0, ymm0, ymmword ptr [rcx + 0x40]
               	vmulps	ymm0, ymm0, ymmword ptr [rsi + 0x40]
               	vmulps	ymm0, ymm0, ymmword ptr [rdi + 0x40]
               	vaddps	ymm1, ymm0, ymm1
               	cmp	eax, 0x3
               	je	 <L183>
               	vmovaps	ymm0, ymmword ptr [rdx + 0x60]
               	vmulps	ymm0, ymm0, ymmword ptr [rcx + 0x60]
               	vmulps	ymm0, ymm0, ymmword ptr [rsi + 0x60]
               	vmulps	ymm0, ymm0, ymmword ptr [rdi + 0x60]
               	vaddps	ymm1, ymm0, ymm1
<L183>:
               	vmovups	ymmword ptr [rsp + 0x110], ymm1
               	mov	esi, 0x20
               	mov	rdi, qword ptr [rsp + 0x10]
               	vzeroupper
               	call	 <_ZdaPvSt11align_val_t@plt>
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x110]
               	movabs	rax, 0x186a00000002a
               	cmp	qword ptr [rsp + 0x180], rax
               	jne	 <L186>
<L185>:
               	vextracti128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xa7c>
               	jb	 <L187>
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xa74>
               	ja	 <L187>
<L186>:
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
<L187>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x110], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x110] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x5f40>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x5f18>
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
