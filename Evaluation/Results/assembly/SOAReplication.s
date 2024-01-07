
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
               	call	qword ptr  <__libc_start_main+0x5cf8>
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
               	mov	rax, qword ptr  <__libc_start_main+0x5d08>
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
               	mov	rax, qword ptr  <__libc_start_main+0x5d10>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x5d18>
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
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
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
               	imul	rdi, r14, 0x2c
               	and	rdi, -0x20
               	mov	rdx, qword ptr  <__libc_start_main+0x5d20>
               	mov	esi, 0x20
               	call	 <_ZnamSt11align_val_tRKSt9nothrow_t@plt>
               	mov	r13, rax
               	movsxd	rax, ebx
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <__libc_start_main+0xa40>
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
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xa78>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xa60>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xa68>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xa70>
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
               	mov	qword ptr [rsp + 0x120], rsi
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
               	xor	r11, rax
               	xor	r9, rsi
               	xor	r10, rcx
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
               	xor	r12d, r12d
               	xor	eax, eax
               	mov	qword ptr [rsp], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x140], rax
               	xor	edi, edi
               	mov	rax, r15
               	mov	rcx, r10
               	mov	rdx, r9
               	mov	rsi, r11
               	jmp	 <L16>
               	nop
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
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L18>
<L17>:
               	xor	edi, edi
               	jmp	 <L19>
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
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L21>
<L20>:
               	xor	edi, edi
               	jmp	 <L22>
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
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L24>
<L23>:
               	xor	edi, edi
               	jmp	 <L25>
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
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L27>
<L26>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x100], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x60], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x140]
               	mov	rcx, qword ptr [rsp + 0xc8]
               	mov	rdx, qword ptr [rsp]
               	mov	rsi, r12
               	jmp	 <L28>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0x28], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0x28], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0x28], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0x28], rax
               	jmp	 <L39>
<L38>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x58], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	rcx, qword ptr [rsp + 0xc0]
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rsi, qword ptr [rsp + 0x100]
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x20], rax
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x20], rax
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x20], rax
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x20], rax
               	jmp	 <L51>
<L50>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x50], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x18], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x20]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0xf8]
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x18], rax
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x18], rax
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x18], rax
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x18], rax
               	jmp	 <L63>
<L62>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x10], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x18]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0xf0]
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x10], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x10], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x10], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0x10], rax
               	jmp	 <L75>
<L74>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x10]
               	mov	rcx, qword ptr [rsp + 0xa8]
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0xe8]
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x8], rax
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x8], rax
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x8], rax
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x8], rax
               	jmp	 <L87>
<L86>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x90], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x8]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	jmp	 <L88>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
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
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
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
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
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
               	xor	qword ptr [rsp + 0xd8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
               	jmp	 <L99>
<L98>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	xor	r8d, r8d
               	mov	rax, qword ptr [rsp + 0x90]
               	mov	rcx, qword ptr [rsp + 0x98]
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0xd8]
               	jmp	 <L100>
               	nop	dword ptr [rax]
<L102>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L101>
<L100>:
               	movabs	rdi, 0x180ec6d33cfd0aba
               	bt	rdi, r8
               	jae	 <L102>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L102>
<L101>:
               	xor	r8d, r8d
               	jmp	 <L103>
               	nop	word ptr [rax + rax]
<L105>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L104>
<L103>:
               	movabs	rdi, -0x2a59ed990f36c6d4
               	bt	rdi, r8
               	jae	 <L105>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L105>
<L104>:
               	xor	r8d, r8d
               	jmp	 <L106>
               	nop	word ptr [rax + rax]
<L108>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L107>
<L106>:
               	movabs	rdi, -0x56a7d9e71fc03656
               	bt	rdi, r8
               	jae	 <L108>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L108>
<L107>:
               	xor	r8d, r8d
               	jmp	 <L109>
               	nop	word ptr [rax + rax]
<L111>:
               	mov	rdi, rdx
               	shl	rdi, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, rdi
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L110>
<L109>:
               	movabs	rdi, 0x39abdc4529b1661c
               	bt	rdi, r8
               	jae	 <L111>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L111>
<L110>:
               	mov	qword ptr [rsp + 0x108], r9
               	mov	qword ptr [rsp + 0x1b0], rbx
               	xor	edi, edi
               	xor	ebx, ebx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x70], rax
               	xor	r9d, r9d
               	mov	rcx, qword ptr [rsp + 0x80]
               	mov	rdx, qword ptr [rsp + 0x88]
               	mov	rsi, qword ptr [rsp + 0x30]
               	mov	r8, qword ptr [rsp + 0xd0]
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
<L114>:
               	mov	rax, rsi
               	shl	rax, 0x11
               	xor	rdx, r8
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	r8, rcx
               	xor	rdx, rax
               	rol	rcx, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L113>
<L112>:
               	movabs	rax, 0x180ec6d33cfd0aba
               	bt	rax, r9
               	jae	 <L114>
               	xor	rdi, r8
               	xor	rbx, rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	jmp	 <L114>
<L113>:
               	xor	r9d, r9d
               	jmp	 <L115>
               	nop	word ptr [rax + rax]
<L117>:
               	mov	rax, rsi
               	shl	rax, 0x11
               	xor	rdx, r8
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	r8, rcx
               	xor	rdx, rax
               	rol	rcx, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L116>
<L115>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, r9
               	jae	 <L117>
               	xor	rdi, r8
               	xor	rbx, rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	jmp	 <L117>
<L116>:
               	xor	r9d, r9d
               	jmp	 <L118>
               	nop	word ptr [rax + rax]
<L120>:
               	mov	rax, rsi
               	shl	rax, 0x11
               	xor	rdx, r8
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	r8, rcx
               	xor	rdx, rax
               	rol	rcx, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L119>
<L118>:
               	movabs	rax, -0x56a7d9e71fc03656
               	bt	rax, r9
               	jae	 <L120>
               	xor	rdi, r8
               	xor	rbx, rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	jmp	 <L120>
<L119>:
               	xor	r9d, r9d
               	jmp	 <L121>
               	nop	word ptr [rax + rax]
<L123>:
               	mov	rax, rsi
               	shl	rax, 0x11
               	xor	rdx, r8
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	r8, rcx
               	xor	rdx, rax
               	rol	rcx, 0x2d
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L122>
<L121>:
               	movabs	rax, 0x39abdc4529b1661c
               	bt	rax, r9
               	jae	 <L123>
               	xor	rdi, r8
               	xor	rbx, rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	jmp	 <L123>
<L122>:
               	mov	qword ptr [rsp + 0x190], r12
               	mov	qword ptr [rsp + 0x128], r15
               	mov	qword ptr [rsp + 0x198], r11
               	mov	qword ptr [rsp + 0x1a0], r10
               	mov	qword ptr [rsp + 0x178], r14
               	xor	edx, edx
               	xor	esi, esi
               	xor	r8d, r8d
               	xor	r9d, r9d
               	xor	r12d, r12d
               	mov	rcx, qword ptr [rsp + 0x70]
               	mov	r10, qword ptr [rsp + 0x78]
               	mov	r14, rbx
               	mov	r15, rdi
               	jmp	 <L124>
               	nop	dword ptr [rax]
<L126>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r10, r15
               	xor	rcx, r14
               	xor	r14, r10
               	xor	r15, rcx
               	xor	r10, rax
               	rol	rcx, 0x2d
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L125>
<L124>:
               	movabs	rax, 0x180ec6d33cfd0aba
               	bt	rax, r12
               	jae	 <L126>
               	xor	rdx, r15
               	xor	rsi, r14
               	xor	r8, r10
               	xor	r9, rcx
               	jmp	 <L126>
<L125>:
               	xor	r12d, r12d
               	jmp	 <L127>
               	nop	word ptr cs:[rax + rax]
<L129>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r10, r15
               	xor	rcx, r14
               	xor	r14, r10
               	xor	r15, rcx
               	xor	r10, rax
               	rol	rcx, 0x2d
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L128>
<L127>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, r12
               	jae	 <L129>
               	xor	rdx, r15
               	xor	rsi, r14
               	xor	r8, r10
               	xor	r9, rcx
               	jmp	 <L129>
<L128>:
               	xor	r12d, r12d
               	jmp	 <L130>
               	nop	word ptr cs:[rax + rax]
<L132>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r10, r15
               	xor	rcx, r14
               	xor	r14, r10
               	xor	r15, rcx
               	xor	r10, rax
               	rol	rcx, 0x2d
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L131>
<L130>:
               	movabs	rax, -0x56a7d9e71fc03656
               	bt	rax, r12
               	jae	 <L132>
               	xor	rdx, r15
               	xor	rsi, r14
               	xor	r8, r10
               	xor	r9, rcx
               	jmp	 <L132>
<L131>:
               	xor	r12d, r12d
               	jmp	 <L133>
               	nop	word ptr cs:[rax + rax]
<L135>:
               	mov	rax, r14
               	shl	rax, 0x11
               	xor	r10, r15
               	xor	rcx, r14
               	xor	r14, r10
               	xor	r15, rcx
               	xor	r10, rax
               	rol	rcx, 0x2d
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L134>
<L133>:
               	movabs	rax, 0x39abdc4529b1661c
               	bt	rax, r12
               	jae	 <L135>
               	xor	rdx, r15
               	xor	rsi, r14
               	xor	r8, r10
               	xor	r9, rcx
               	jmp	 <L135>
<L134>:
               	mov	eax, 0x40
               	nop	word ptr cs:[rax + rax]
<L136>:
               	dec	rax
               	jne	 <L136>
               	mov	eax, 0x40
               	mov	r12, qword ptr [rsp + 0x178]
               	nop	word ptr cs:[rax + rax]
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
               	test	r12, r12
               	je	 <L168>
               	mov	qword ptr [rsp + 0x188], rdi
               	mov	qword ptr [rsp + 0x180], rsi
               	vmovq	xmm1, rsi
               	vmovq	xmm2, rbx
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vmovq	xmm2, qword ptr [rsp + 0x30] # xmm2 = mem[0],zero
               	vmovq	xmm3, qword ptr [rsp + 0x38] # xmm3 = mem[0],zero
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm1, ymm2, xmm1, 0x1
               	vpsllq	ymm2, ymm1, 0x2
               	vpaddq	ymm1, ymm2, ymm1
               	vpsrlq	ymm2, ymm1, 0x39
               	vpsllq	ymm1, ymm1, 0x7
               	vpor	ymm1, ymm1, ymm2
               	vpsllq	ymm2, ymm1, 0x3
               	vpaddq	ymm8, ymm2, ymm1
               	vmovq	xmm1, qword ptr [rsp + 0x40] # xmm1 = mem[0],zero
               	vmovq	xmm2, qword ptr [rsp + 0x48] # xmm2 = mem[0],zero
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
               	mov	rax, qword ptr [rsp + 0x120]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x108]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdi, qword ptr [rsp]
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	rsi, qword ptr [rsp + 0x60]
               	lea	r10, [rsi + 4*rsi]
               	rol	r10, 0x7
               	lea	r10, [r10 + 8*r10]
               	vmovq	xmm1, r10
               	vmovq	xmm2, rdi
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vmovq	xmm2, rcx
               	vmovq	xmm3, rax
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm10, ymm2, xmm1, 0x1
               	mov	eax, r12d
               	neg	eax
               	mov	qword ptr [rsp + 0x1b8], rax
               	mov	esi, 0x1
               	vpbroadcastw	xmm1, word ptr  <__libc_start_main+0xa9c>
               	mov	qword ptr [rsp + 0x1a8], r13
               	jmp	 <L169>
               	nop	dword ptr [rax + rax]
<L177>:
               	vpsrlq	ymm10, ymm10, 0x8
               	vpsrlq	ymm9, ymm9, 0x8
               	vpsrlq	ymm8, ymm8, 0x8
<L178>:
               	mov	r13, qword ptr [rsp + 0x1a8]
               	mov	rax, qword ptr [rsp + 0x1b8]
               	add	eax, esi
               	inc	eax
               	mov	ecx, esi
               	inc	ecx
               	mov	esi, ecx
               	cmp	eax, 0x1
               	je	 <L170>
<L169>:
               	vmovd	eax, xmm10
               	movzx	r10d, al
               	imul	eax, r10d, 0x4f
               	shr	eax, 0xa
               	lea	edi, [rax + 2*rax]
               	lea	eax, [rax + 4*rdi]
               	sub	r10b, al
               	cmp	r10b, 0xc
               	mov	qword ptr [rsp + 0x120], rsi
               	ja	 <L171>
               	vpextrb	edi, xmm10, 0x8
               	vextracti128	xmm2, ymm10, 0x1
               	vmovd	r11d, xmm2
               	vpextrb	eax, xmm2, 0x8
               	mov	dword ptr [rsp + 0x68], eax
               	vmovd	dword ptr [rsp + 0x118], xmm9
               	vpextrb	eax, xmm9, 0x8
               	mov	dword ptr [rsp + 0x110], eax
               	vextracti128	xmm2, ymm9, 0x1
               	vmovd	dword ptr [rsp + 0x130], xmm2
               	vpextrb	eax, xmm2, 0x8
               	mov	dword ptr [rsp + 0x13c], eax
               	vpshufb	xmm11, xmm8, xmm1
               	vextracti128	xmm2, ymm8, 0x1
               	vmovd	r14d, xmm2
               	movzx	eax, r10b
               	lea	rcx,  <__libc_start_main+0xaa0>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm11, xmm7, eax
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm2
               	vbroadcastss	xmm12, xmm11
               	jmp	 <L172>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm2
               	vmovss	xmm11, dword ptr  <__libc_start_main+0xa84> # xmm11 = mem[0],zero,zero,zero
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa90> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm4, xmm7, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	movzx	eax, r14b
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm11, xmm7, eax
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm4
               	vbroadcastss	xmm12, xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa80> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm2
               	jmp	 <L174>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm4, xmm7, eax
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm2
               	vbroadcastss	xmm12, xmm4
<L174>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa84> # xmm13 = mem[0],zero,zero,zero
               	vmovaps	xmm11, xmm13
               	jmp	 <L173>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	eax, r14b
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm11, xmm7, eax
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa8c> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm4, xmm7, eax
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm2
               	vbroadcastss	xmm12, xmm4
               	jmp	 <L175>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm2
<L175>:
               	vmovss	xmm11, dword ptr  <__libc_start_main+0xa84> # xmm11 = mem[0],zero,zero,zero
               	jmp	 <L176>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm11, xmm7, eax
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm2
               	vbroadcastss	xmm12, xmm11
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa84> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	eax, r14b
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm11, xmm7, eax
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm2
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa84> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	vpmovzxbd	xmm3, xmm11     # xmm3 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
               	vcvtdq2ps	xmm12, xmm3
               	movzx	eax, r14b
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm11, xmm7, eax
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm2
<L172>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa98> # xmm13 = mem[0],zero,zero,zero
               	jmp	 <L173>
               	mov	rcx, rbx
               	movzx	eax, dil
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm4, xmm7, eax
               	vpextrb	eax, xmm11, 0x0
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm2, xmm7, eax
               	movzx	eax, r14b
               	vxorps	xmm7, xmm7, xmm7
               	vcvtsi2ss	xmm11, xmm7, eax
               	mov	r10, r12
               	shr	r10, 0x20
               	mov	rdi, r12
               	movabs	rax, -0x100000000
               	and	rdi, rax
               	movabs	rax, 0x100000000
               	add	rdi, rax
               	mov	r14d, r12d
               	or	rdi, r14
               	shr	r12, 0x23
               	mov	r15, r12
               	shl	r12, 0x5
               	add	r12, r13
               	and	r10d, 0x7
               	mov	eax, r10d
               	vmovss	dword ptr [r12 + 4*rax], xmm4
               	vbroadcastss	xmm12, xmm2
<L176>:
               	vmovss	xmm13, dword ptr  <__libc_start_main+0xa88> # xmm13 = mem[0],zero,zero,zero
<L173>:
               	mov	r12, rdi
               	movzx	eax, byte ptr [rsp + 0x13c]
               	vcvtsi2ss	xmm14, xmm6, eax
               	movzx	eax, byte ptr [rsp + 0x130]
               	vcvtsi2ss	xmm15, xmm6, eax
               	movzx	eax, byte ptr [rsp + 0x110]
               	vcvtsi2ss	xmm4, xmm6, eax
               	movzx	eax, byte ptr [rsp + 0x118]
               	vcvtsi2ss	xmm2, xmm5, eax
               	movzx	eax, byte ptr [rsp + 0x68]
               	vcvtsi2ss	xmm3, xmm5, eax
               	movzx	eax, r11b
               	vcvtsi2ss	xmm5, xmm5, eax
               	mov	eax, r14d
               	shr	eax, 0x3
               	shl	rax, 0x5
               	shl	r15, 0x5
               	lea	rdi, [r15 + r13]
               	add	rax, rdi
               	vmovss	dword ptr [rax + 4*r10], xmm5
               	mov	eax, r14d
               	shr	eax, 0x2
               	shl	rax, 0x5
               	add	rax, rdi
               	vmovss	dword ptr [rax + 4*r10], xmm3
               	mov	rbx, r13
               	lea	r13, [4*r14]
               	lea	rax, [2*r13]
               	add	rax, r13
               	and	rax, -0x20
               	add	rax, rdi
               	vmovss	dword ptr [rax + 4*r10], xmm2
               	mov	eax, r14d
               	shr	eax
               	shl	rax, 0x5
               	add	rax, rdi
               	vmovss	dword ptr [rax + 4*r10], xmm4
               	lea	rax, [4*r13]
               	add	rax, r13
               	and	rax, -0x20
               	add	rax, rdi
               	vmovss	dword ptr [rax + 4*r10], xmm15
               	lea	rax, [8*r14]
               	lea	r11, [rax + 2*rax]
               	and	r11, -0x20
               	add	r11, rdi
               	vmovss	dword ptr [r11 + 4*r10], xmm14
               	lea	r11, [r14 + 8*r14]
               	lea	r11, [r11 + 2*r11]
               	add	r11, r14
               	movabs	rsi, 0x1fffffffe0
               	and	r11, rsi
               	add	r11, rdi
               	vmovss	dword ptr [r11 + 4*r10], xmm12
               	shl	r14, 0x5
               	add	r14, rbx
               	add	r14, r15
               	vextractps	dword ptr [r14 + 4*r10], xmm12, 0x1
               	lea	r11, [8*r13]
               	add	r11, r13
               	and	r11, -0x20
               	add	r11, rdi
               	vmovss	dword ptr [r11 + 4*r10], xmm11
               	lea	rax, [rax + 4*rax]
               	and	rax, -0x20
               	add	rax, rdi
               	vmovss	dword ptr [rax + 4*r10], xmm13
               	mov	rbx, rcx
               	mov	rsi, qword ptr [rsp + 0x120]
<L171>:
               	test	sil, 0x7
               	jne	 <L177>
               	vpermq	ymm2, ymm0, 0xe3        # ymm2 = ymm0[3,0,2,3]
               	vpermq	ymm3, ymm0, 0xe9        # ymm3 = ymm0[1,2,2,3]
               	vpextrq	rax, xmm0, 0x1
               	shl	rax, 0x11
               	vpxor	xmm2, xmm3, xmm2
               	vpxor	xmm0, xmm2, xmm0
               	vpextrq	rdi, xmm2, 0x1
               	xor	rdi, rax
               	vmovq	rax, xmm2
               	rol	rax, 0x2d
               	vmovq	xmm9, rdi
               	vmovq	xmm8, rax
               	mov	rcx, qword ptr [rsp + 0x108]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	xor	rdi, qword ptr [rsp + 0x198]
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x108], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x1a0], rdi
               	mov	rcx, qword ptr [rsp]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0xc8]
               	xor	rdi, qword ptr [rsp + 0x190]
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x140], rsi
               	xor	rcx, rdi
               	mov	qword ptr [rsp], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xc8], rdi
               	mov	r10, qword ptr [rsp + 0x60]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x100]
               	mov	rdi, qword ptr [rsp + 0xc0]
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x110], r9
               	mov	r9, qword ptr [rsp + 0x28]
               	xor	r9, r10
               	mov	qword ptr [rsp + 0x28], r9
               	xor	r10, rdi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xc0], rdi
               	mov	r15, qword ptr [rsp + 0x58]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	qword ptr [rsp + 0x118], rdx
               	mov	rdx, qword ptr [rsp + 0xf8]
               	mov	rdi, qword ptr [rsp + 0xb8]
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x130], r12
               	mov	r12, qword ptr [rsp + 0x20]
               	xor	r12, r15
               	mov	qword ptr [rsp + 0x20], r12
               	xor	r15, rdi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xb8], rdi
               	mov	r12, qword ptr [rsp + 0x50]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xf0]
               	mov	rdi, qword ptr [rsp + 0xb0]
               	xor	rdi, rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	xor	rcx, r12
               	mov	qword ptr [rsp + 0x18], rcx
               	xor	r12, rdi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xb0], rdi
               	mov	r14, qword ptr [rsp + 0x48]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	qword ptr [rsp + 0x68], rbx
               	mov	rbx, qword ptr [rsp + 0xe8]
               	mov	rdi, qword ptr [rsp + 0xa8]
               	xor	rdi, rbx
               	mov	rsi, qword ptr [rsp + 0x10]
               	xor	rsi, r14
               	mov	qword ptr [rsp + 0x10], rsi
               	xor	r14, rdi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xa8], rdi
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0xe0]
               	mov	rdi, qword ptr [rsp + 0xa0]
               	xor	rdi, rbx
               	mov	rsi, qword ptr [rsp + 0x8]
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x8], rsi
               	xor	rdx, rdi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0xa0], rdi
               	mov	r11, qword ptr [rsp + 0x38]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0xd8]
               	mov	rdi, qword ptr [rsp + 0x98]
               	xor	rdi, rbx
               	mov	r13, qword ptr [rsp + 0x90]
               	xor	r13, r11
               	xor	r11, rdi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x98], rdi
               	mov	r9, r8
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0xd0]
               	mov	rdi, qword ptr [rsp + 0x88]
               	xor	rdi, rbx
               	mov	rbx, qword ptr [rsp + 0x80]
               	xor	rbx, r8
               	xor	r8, rdi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x88], rdi
               	mov	rax, qword ptr [rsp + 0x68]
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x78]
               	xor	rdi, qword ptr [rsp + 0x188]
               	mov	rsi, qword ptr [rsp + 0x70]
               	xor	rsi, qword ptr [rsp + 0x68]
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x78], rdi
               	mov	rcx, qword ptr [rsp + 0x180]
               	mov	rax, rcx
               	shl	rax, 0x11
               	xor	r9, qword ptr [rsp + 0x118]
               	xor	qword ptr [rsp + 0x110], rcx
               	vpextrq	rdi, xmm0, 0x1
               	xor	rcx, r9
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x60], r10
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r10, [rax + 8*rax]
               	vmovq	xmm10, r10
               	mov	rax, qword ptr [rsp]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm11, rax
               	mov	rax, qword ptr [rsp + 0x108]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm12, rax
               	mov	qword ptr [rsp + 0x58], r15
               	lea	rax, [r15 + 4*r15]
               	rol	rax, 0x7
               	vmovq	xmm13, rdi
               	mov	qword ptr [rsp + 0x40], rdx
               	lea	rdi, [rdx + 4*rdx]
               	rol	rdi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm14, rdi
               	mov	qword ptr [rsp + 0x48], r14
               	lea	rdi, [r14 + 4*r14]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm15, rdi
               	mov	qword ptr [rsp + 0x50], r12
               	lea	rdi, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x130]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	vmovq	xmm4, rdi
               	mov	qword ptr [rsp + 0x180], rcx
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	vmovq	xmm7, rax
               	lea	rax, [rdi + 8*rdi]
               	vmovq	xmm5, rax
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm6, rax
               	mov	qword ptr [rsp + 0x30], r8
               	lea	rax, [r8 + 4*r8]
               	mov	r8, r9
               	mov	r9, qword ptr [rsp + 0x110]
               	mov	rdx, qword ptr [rsp + 0x118]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm2, rax
               	mov	qword ptr [rsp + 0x38], r11
               	lea	rax, [r11 + 4*r11]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm3, rax
               	vpbroadcastq	ymm9, xmm9
               	vpblendd	ymm0, ymm0, ymm9, 0x30  # ymm0 = ymm0[0,1,2,3],ymm9[4,5],ymm0[6,7]
               	vpbroadcastq	ymm8, xmm8
               	mov	rax, qword ptr [rsp + 0x128]
               	xor	qword ptr [rsp + 0x198], rax
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x128], rax
               	vpblendd	ymm0, ymm0, ymm8, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm8[6,7]
               	mov	rcx, qword ptr [rsp + 0x140]
               	xor	qword ptr [rsp + 0x190], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x140], rcx
               	vpunpcklqdq	xmm8, xmm11, xmm10 # xmm8 = xmm11[0],xmm10[0]
               	mov	rcx, qword ptr [rsp + 0x28]
               	xor	qword ptr [rsp + 0x100], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x28], rcx
               	vpunpcklqdq	xmm9, xmm13, xmm12 # xmm9 = xmm13[0],xmm12[0]
               	mov	rcx, qword ptr [rsp + 0x20]
               	xor	qword ptr [rsp + 0xf8], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x20], rcx
               	vinserti128	ymm10, ymm9, xmm8, 0x1
               	mov	rcx, qword ptr [rsp + 0x18]
               	xor	qword ptr [rsp + 0xf0], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x18], rcx
               	vpunpcklqdq	xmm8, xmm15, xmm14 # xmm8 = xmm15[0],xmm14[0]
               	mov	rcx, qword ptr [rsp + 0x10]
               	xor	qword ptr [rsp + 0xe8], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x10], rcx
               	vpunpcklqdq	xmm4, xmm7, xmm4 # xmm4 = xmm7[0],xmm4[0]
               	mov	rcx, qword ptr [rsp + 0x8]
               	xor	qword ptr [rsp + 0xe0], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x8], rcx
               	vinserti128	ymm9, ymm4, xmm8, 0x1
               	xor	qword ptr [rsp + 0xd8], r13
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x90], r13
               	vpunpcklqdq	xmm4, xmm6, xmm5 # xmm4 = xmm6[0],xmm5[0]
               	xor	qword ptr [rsp + 0xd0], rbx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x80], rbx
               	xor	qword ptr [rsp + 0x188], rsi
               	mov	rbx, qword ptr [rsp + 0x68]
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x70], rsi
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	rdx, r9
               	rol	r9, 0x2d
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	vinserti128	ymm8, ymm2, xmm4, 0x1
               	jmp	 <L178>
<L170>:
               	mov	rax, r12
               	shr	rax, 0x20
               	je	 <L168>
               	mov	esi, r12d
               	lea	rcx, [rsp + 0x1a0]
               	mov	edx, 0x1
               	xor	r9d, r9d
               	movabs	rdi, 0x800000000
               	mov	r10d, 0x1
               	jmp	 <L179>
<L181>:
               	movabs	r9, -0x100000000
               	and	rsi, r9
               	add	rsi, rdi
               	or	r8, rsi
               	inc	edx
               	popcnt	r10d, edx
               	xor	rsi, r12
               	shr	rsi, 0x20
               	mov	r9d, eax
               	mov	rsi, r8
               	je	 <L180>
<L179>:
               	mov	eax, r10d
               	mov	r8d, esi
               	lea	r10, [r8 + 8*r8]
               	lea	r10, [r10 + 2*r10]
               	add	r10, r8
               	movabs	r11, 0x1fffffffe0
               	and	r10, r11
               	add	r10, r13
               	mov	r11, rsi
               	shr	r11, 0x1e
               	and	r11, -0x20
               	mov	rbx, r8
               	shl	rbx, 0x5
               	add	rbx, r13
               	vmovaps	ymm0, ymmword ptr [r11 + rbx]
               	lea	rbx, [4*r8]
               	lea	rbx, [rbx + 8*rbx]
               	and	rbx, -0x20
               	add	rbx, r13
               	lea	r14, [8*r8]
               	lea	r14, [r14 + 4*r14]
               	and	r14, -0x20
               	vmulps	ymm0, ymm0, ymmword ptr [r11 + r10]
               	vmulps	ymm0, ymm0, ymmword ptr [r11 + rbx]
               	add	r14, r13
               	vmulps	ymm0, ymm0, ymmword ptr [r11 + r14]
               	movsxd	r10, r9d
               	mov	r11, r10
               	shl	r11, 0x5
               	vmovaps	ymmword ptr [rsp + r11 + 0x1c0], ymm0
               	sub	r10d, eax
               	jb	 <L181>
               	mov	r9d, r9d
               	mov	r11, r9
               	shl	r11, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + r11 + 0x1c0]
               	inc	r10d
               	and	r10d, 0x3
               	je	 <L182>
               	add	r11, rcx
               	xor	ebx, ebx
<L183>:
               	vaddps	ymm0, ymm0, ymmword ptr [r11]
               	vmovaps	ymmword ptr [r11], ymm0
               	inc	rbx
               	add	r11, -0x20
               	cmp	r10, rbx
               	jne	 <L183>
               	mov	r10, r9
               	sub	r10, rbx
               	mov	r11d, eax
               	sub	r9, r11
               	cmp	r9, 0x3
               	jb	 <L181>
               	jmp	 <L184>
<L182>:
               	mov	r10, r9
               	mov	r11d, eax
               	sub	r9, r11
               	cmp	r9, 0x3
               	jb	 <L181>
<L184>:
               	mov	r9, r10
               	shl	r9, 0x5
               	add	r9, rcx
               	inc	r10
               	nop
<L185>:
               	vaddps	ymm0, ymm0, ymmword ptr [r9]
               	vmovaps	ymmword ptr [r9], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [r9 - 0x20]
               	vmovaps	ymmword ptr [r9 - 0x20], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [r9 - 0x40]
               	vmovaps	ymmword ptr [r9 - 0x40], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [r9 - 0x60]
               	vmovaps	ymmword ptr [r9 - 0x60], ymm0
               	add	r9, -0x80
               	add	r10, -0x4
               	cmp	r10, r11
               	jg	 <L185>
               	jmp	 <L181>
<L180>:
               	cmp	eax, 0x2
               	jb	 <L168>
               	mov	ecx, eax
               	mov	rdx, rcx
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x1a0]
               	test	al, 0x1
               	jne	 <L186>
               	dec	rcx
               	lea	rsi, [rsp + 0x1c0]
               	vaddps	ymm0, ymm0, ymmword ptr [rdx + rsi - 0x40]
               	vmovaps	ymmword ptr [rdx + rsi - 0x40], ymm0
<L186>:
               	cmp	eax, 0x2
               	je	 <L168>
               	lea	rax, [rcx - 0x2]
               	shl	rcx, 0x5
               	lea	rdx, [rsp + 0x1c0]
               	add	rcx, rdx
               	add	rcx, -0x40
               	nop
<L187>:
               	vaddps	ymm0, ymm0, ymmword ptr [rcx]
               	vmovaps	ymmword ptr [rcx], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rcx - 0x20]
               	vmovaps	ymmword ptr [rcx - 0x20], ymm0
               	add	rax, -0x2
               	add	rcx, -0x40
               	cmp	rax, -0x3
               	jb	 <L187>
<L168>:
               	vmovaps	ymm1, ymmword ptr [rsp + 0x1c0]
               	test	r13, r13
               	je	 <L188>
               	mov	esi, 0x20
               	mov	rdi, r13
               	vmovaps	ymmword ptr [rsp + 0x140], ymm1
               	vzeroupper
               	call	 <_ZdaPvSt11align_val_t@plt>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x140]
<L188>:
               	cmp	dword ptr [rsp + 0x1b0], 0x2a
               	mov	rax, qword ptr [rsp + 0x178]
               	jne	 <L189>
               	cmp	eax, 0x186a0
               	jne	 <L189>
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xa94>
               	jne	 <L190>
<L189>:
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
<L190>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x140], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x140] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x5d28>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x5d00>
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
