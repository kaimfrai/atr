
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
               	sub	rsp, 0x5a0
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
               	movsx	ecx, byte ptr [rax]
               	add	ecx, -0x30
               	movzx	edx, byte ptr [rax + 0x1]
               	test	dl, dl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax]
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
               	mov	qword ptr [rsp + 0x190], rax
               	imul	rdi, rax, 0x2c
               	and	rdi, -0x20
               	mov	rdx, qword ptr  <__libc_start_main+0x5d20>
               	mov	esi, 0x20
               	call	 <_ZnamSt11align_val_tRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x18], rax
               	movsxd	rdx, r13d
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
               	mov	r8, rsi
               	shr	r8, 0x1f
               	xor	r8, rsi
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
               	mov	r10, rdi
               	shr	r10, 0x1f
               	xor	r10, rdi
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
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	mov	qword ptr [rsp + 0x1b8], rcx
               	mov	rax, rcx
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1c0], r10
               	mov	rcx, r10
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0x158], r8
               	mov	rdx, r8
               	mov	qword ptr [rsp + 0x1c8], r9
               	mov	rsi, r9
               	xor	r9d, r9d
               	jmp	 <L4>
               	nop	word ptr [rax + rax]
<L6>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L5>
<L4>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L6>
               	xor	r9, rsi
               	xor	r10, rdx
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0xd0], rax
               	jmp	 <L6>
<L5>:
               	xor	edi, edi
               	jmp	 <L7>
               	nop	word ptr [rax + rax]
<L9>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L8>
<L7>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L9>
               	xor	r9, rsi
               	xor	r10, rdx
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0xd0], rax
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	word ptr [rax + rax]
<L12>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L11>
<L10>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L12>
               	xor	r9, rsi
               	xor	r10, rdx
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0xd0], rax
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	word ptr [rax + rax]
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
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	r9, rsi
               	xor	r10, rdx
               	xor	r11, rcx
               	xor	qword ptr [rsp + 0xd0], rax
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	xor	r14d, r14d
               	mov	rax, qword ptr [rsp + 0xd0]
               	xor	r15d, r15d
               	mov	rcx, r11
               	xor	r12d, r12d
               	mov	rdx, r10
               	mov	rsi, r9
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x110], r8
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
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	r12, rdx
               	xor	r15, rcx
               	xor	r14, rax
               	jmp	 <L18>
<L17>:
               	xor	edi, edi
               	jmp	 <L19>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	r12, rdx
               	xor	r15, rcx
               	xor	r14, rax
               	jmp	 <L21>
<L20>:
               	xor	edi, edi
               	jmp	 <L22>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	r12, rdx
               	xor	r15, rcx
               	xor	r14, rax
               	jmp	 <L24>
<L23>:
               	xor	edi, edi
               	jmp	 <L25>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x110], rsi
               	xor	r12, rdx
               	xor	r15, rcx
               	xor	r14, rax
               	jmp	 <L27>
<L26>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x160], rax
               	mov	rax, r14
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x80], rcx
               	mov	rcx, r15
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x78], rdx
               	mov	rdx, r12
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x108], r8
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
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x160], rax
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
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x160], rax
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
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x160], rax
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
               	xor	qword ptr [rsp + 0x108], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x160], rax
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	mov	rax, qword ptr [rsp + 0x160]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xc8], rcx
               	mov	rcx, qword ptr [rsp + 0x80]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x70], rdx
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	rsi, qword ptr [rsp + 0x108]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x100], r8
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0x48], rax
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	mov	rax, qword ptr [rsp + 0x48]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xc0], rcx
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x28], rdx
               	mov	rdx, qword ptr [rsp + 0x70]
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xf8], r8
               	jmp	 <L52>
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
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
               	xor	qword ptr [rsp + 0xf8], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0x40], rax
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	mov	rax, qword ptr [rsp + 0x40]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xb8], rcx
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x68], rdx
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xf0], r8
               	jmp	 <L64>
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
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
               	xor	qword ptr [rsp + 0xf0], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0x38], rax
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	rcx, qword ptr [rsp + 0xb8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x60], rdx
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	rsi, qword ptr [rsp + 0xf0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xe8], r8
               	jmp	 <L76>
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x30], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x30], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x30], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0x30], rax
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa8], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xa0], rcx
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x58], rdx
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rsi, qword ptr [rsp + 0xe8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xe0], r8
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
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
               	xor	qword ptr [rsp + 0xe0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L99>
<L98>:
               	xor	eax, eax
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x98], rcx
               	mov	rcx, qword ptr [rsp + 0xa8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x90], rdx
               	mov	rdx, qword ptr [rsp + 0xa0]
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x50], rsi
               	mov	rsi, qword ptr [rsp + 0x58]
               	mov	rdi, qword ptr [rsp + 0xe0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x88], r8
               	jmp	 <L100>
               	nop	dword ptr [rax]
<L102>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L101>
<L100>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rax
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	jmp	 <L102>
<L101>:
               	xor	eax, eax
               	jmp	 <L103>
               	nop	word ptr cs:[rax + rax]
<L105>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L104>
<L103>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rax
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	jmp	 <L105>
<L104>:
               	xor	eax, eax
               	jmp	 <L106>
               	nop	word ptr cs:[rax + rax]
<L108>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L107>
<L106>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rax
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	jmp	 <L108>
<L107>:
               	xor	eax, eax
               	jmp	 <L109>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	mov	r8, rsi
               	shl	r8, 0x11
               	xor	rdx, rdi
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	rdi, rcx
               	xor	rdx, r8
               	rol	rcx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L110>
<L109>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rax
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x90], rdx
               	xor	qword ptr [rsp + 0x98], rcx
               	jmp	 <L111>
<L110>:
               	mov	qword ptr [rsp + 0x1b0], r9
               	mov	qword ptr [rsp + 0x118], r10
               	xor	eax, eax
               	xor	edx, edx
               	mov	rsi, qword ptr [rsp + 0x98]
               	xor	r8d, r8d
               	mov	rdi, qword ptr [rsp + 0x90]
               	xor	ebx, ebx
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	r10, qword ptr [rsp + 0x88]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xd8], rcx
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
<L114>:
               	mov	rcx, r9
               	shl	rcx, 0x11
               	xor	rdi, r10
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r10, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L113>
<L112>:
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rax
               	jae	 <L114>
               	xor	qword ptr [rsp + 0xd8], r10
               	xor	rbx, r9
               	xor	r8, rdi
               	xor	rdx, rsi
               	jmp	 <L114>
<L113>:
               	xor	eax, eax
               	jmp	 <L115>
               	nop	word ptr [rax + rax]
<L117>:
               	mov	rcx, r9
               	shl	rcx, 0x11
               	xor	rdi, r10
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r10, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L116>
<L115>:
               	movabs	rcx, -0x2a59ed990f36c6d4
               	bt	rcx, rax
               	jae	 <L117>
               	xor	qword ptr [rsp + 0xd8], r10
               	xor	rbx, r9
               	xor	r8, rdi
               	xor	rdx, rsi
               	jmp	 <L117>
<L116>:
               	xor	eax, eax
               	jmp	 <L118>
               	nop	word ptr [rax + rax]
<L120>:
               	mov	rcx, r9
               	shl	rcx, 0x11
               	xor	rdi, r10
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r10, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L119>
<L118>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	bt	rcx, rax
               	jae	 <L120>
               	xor	qword ptr [rsp + 0xd8], r10
               	xor	rbx, r9
               	xor	r8, rdi
               	xor	rdx, rsi
               	jmp	 <L120>
<L119>:
               	xor	eax, eax
               	jmp	 <L121>
               	nop	word ptr [rax + rax]
<L123>:
               	mov	rcx, r9
               	shl	rcx, 0x11
               	xor	rdi, r10
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r10, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L122>
<L121>:
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rax
               	jae	 <L123>
               	xor	qword ptr [rsp + 0xd8], r10
               	xor	rbx, r9
               	xor	r8, rdi
               	xor	rdx, rsi
               	jmp	 <L123>
<L122>:
               	mov	r10, rdx
               	mov	rdx, r12
               	mov	r12, r15
               	mov	rcx, r8
               	mov	r8, r14
               	mov	r9, r11
               	mov	qword ptr [rsp + 0x150], r13
               	xor	eax, eax
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1a8], r10
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rcx
               	mov	r11, rcx
               	xor	r13d, r13d
               	mov	r14, rbx
               	mov	r15, qword ptr [rsp + 0xd8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x120], rcx
               	jmp	 <L124>
               	nop	word ptr cs:[rax + rax]
<L126>:
               	mov	rcx, r14
               	shl	rcx, 0x11
               	xor	r11, r15
               	xor	r10, r14
               	xor	r14, r11
               	xor	r15, r10
               	xor	r11, rcx
               	rol	r10, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L125>
<L124>:
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rax
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x120], r15
               	xor	r13, r14
               	xor	rdi, r11
               	xor	rsi, r10
               	jmp	 <L126>
<L125>:
               	xor	eax, eax
               	jmp	 <L127>
               	nop	word ptr [rax + rax]
<L129>:
               	mov	rcx, r14
               	shl	rcx, 0x11
               	xor	r11, r15
               	xor	r10, r14
               	xor	r14, r11
               	xor	r15, r10
               	xor	r11, rcx
               	rol	r10, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L128>
<L127>:
               	movabs	rcx, -0x2a59ed990f36c6d4
               	bt	rcx, rax
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x120], r15
               	xor	r13, r14
               	xor	rdi, r11
               	xor	rsi, r10
               	jmp	 <L129>
<L128>:
               	xor	eax, eax
               	jmp	 <L130>
               	nop	word ptr [rax + rax]
<L132>:
               	mov	rcx, r14
               	shl	rcx, 0x11
               	xor	r11, r15
               	xor	r10, r14
               	xor	r14, r11
               	xor	r15, r10
               	xor	r11, rcx
               	rol	r10, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L131>
<L130>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	bt	rcx, rax
               	jae	 <L132>
               	xor	qword ptr [rsp + 0x120], r15
               	xor	r13, r14
               	xor	rdi, r11
               	xor	rsi, r10
               	jmp	 <L132>
<L131>:
               	xor	eax, eax
               	jmp	 <L133>
               	nop	word ptr [rax + rax]
<L135>:
               	mov	rcx, r14
               	shl	rcx, 0x11
               	xor	r11, r15
               	xor	r10, r14
               	xor	r14, r11
               	xor	r15, r10
               	xor	r11, rcx
               	rol	r10, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L134>
<L133>:
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rax
               	jae	 <L135>
               	xor	qword ptr [rsp + 0x120], r15
               	xor	r13, r14
               	xor	rdi, r11
               	xor	rsi, r10
               	jmp	 <L135>
<L134>:
               	mov	eax, 0x40
               	nop	dword ptr [rax + rax]
<L136>:
               	dec	rax
               	jne	 <L136>
               	mov	eax, 0x40
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	r14, r8
               	mov	r10, r12
               	nop	dword ptr [rax + rax]
<L137>:
               	dec	rax
               	jne	 <L137>
               	mov	eax, 0x40
               	mov	r11, rdx
               	nop	dword ptr [rax]
<L138>:
               	dec	rax
               	jne	 <L138>
               	mov	eax, 0x40
               	mov	r8, rcx
               	nop	dword ptr [rax]
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
               	mov	rax, qword ptr [rsp + 0x190]
               	test	rax, rax
               	je	 <L168>
               	mov	qword ptr [rsp + 0x198], rdi
               	vmovq	xmm0, r13
               	vmovq	xmm1, rbx
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	vmovq	xmm1, qword ptr [rsp + 0x50]
               	vmovq	xmm2, qword ptr [rsp + 0x58]
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vpsrlq	ymm1, ymm0, 0x39
               	vpsllq	ymm0, ymm0, 0x7
               	vpor	ymm0, ymm0, ymm1
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm7, ymm1, ymm0
               	vmovq	xmm0, qword ptr [rsp + 0x60]
               	vmovq	xmm1, qword ptr [rsp + 0x68]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	vmovq	xmm1, qword ptr [rsp + 0x28]
               	vmovq	xmm2, qword ptr [rsp + 0x70]
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vpsrlq	ymm1, ymm0, 0x39
               	vpsllq	ymm0, ymm0, 0x7
               	vpor	ymm0, ymm0, ymm1
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm8, ymm1, ymm0
               	vmovq	xmm0, qword ptr [rsp + 0x78]
               	vmovq	xmm1, r11
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	vmovq	xmm1, r8
               	vmovq	xmm2, qword ptr [rsp + 0x158]
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vpsrlq	ymm1, ymm0, 0x39
               	vpsllq	ymm0, ymm0, 0x7
               	vpor	ymm0, ymm0, ymm1
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm9, ymm1, ymm0
               	mov	ecx, eax
               	neg	ecx
               	mov	qword ptr [rsp + 0x1d8], rcx
               	mov	edx, 0x1
               	vbroadcastss	xmm0, dword ptr  <__libc_start_main+0xa3c>
               	vmovd	xmm1, dword ptr  <__libc_start_main+0xa3c>
               	vmovd	xmm5, dword ptr  <__libc_start_main+0xa50>
               	mov	qword ptr [rsp + 0x10], rax
               	jmp	 <L169>
               	vpextrb	ecx, xmm2, 0x0
               	vxorps	xmm6, xmm6, xmm6
               	vcvtsi2ss	xmm2, xmm6, ecx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vblendps	xmm6, xmm2, xmm0, 0xe   # xmm6 = xmm2[0],xmm0[1,2,3]
               	vmovd	xmm2, dword ptr  <__libc_start_main+0xa48>
               	nop
<L174>:
               	mov	qword ptr [rsp + 0x10], rcx
               	mov	r12, qword ptr [rsp + 0x20]
               	vmovss	dword ptr [r8], xmm4
               	mov	ecx, r11d
               	shr	ecx, 0x3
               	shl	rcx, 0x5
               	shl	r15, 0x5
               	lea	r8, [r10 + r15]
               	add	rcx, r8
               	vmovss	dword ptr [rcx + 4*r14], xmm3
               	mov	ecx, r11d
               	shr	ecx, 0x2
               	shl	rcx, 0x5
               	add	rcx, r8
               	vmovss	dword ptr [rcx + 4*r14], xmm15
               	lea	rcx, [4*r11]
               	lea	rdx, [rcx + 2*rcx]
               	and	rdx, -0x20
               	add	rdx, r8
               	vmovss	dword ptr [rdx + 4*r14], xmm14
               	mov	edx, r11d
               	shr	edx
               	shl	rdx, 0x5
               	add	rdx, r8
               	vmovss	dword ptr [rdx + 4*r14], xmm13
               	lea	rdx, [rcx + 4*rcx]
               	and	rdx, -0x20
               	add	rdx, r8
               	vmovss	dword ptr [rdx + 4*r14], xmm12
               	lea	rdx, [8*r11]
               	lea	r9, [rdx + 2*rdx]
               	and	r9, -0x20
               	add	r9, r8
               	vmovss	dword ptr [r9 + 4*r14], xmm11
               	lea	r9, [r11 + 8*r11]
               	lea	r9, [r9 + 2*r9]
               	add	r9, r11
               	movabs	rax, 0x1fffffffe0
               	and	r9, rax
               	add	r9, r8
               	vmovss	dword ptr [r9 + 4*r14], xmm10
               	shl	r11, 0x5
               	add	r11, r10
               	add	r11, r15
               	vmovss	dword ptr [r11 + 4*r14], xmm6
               	lea	rcx, [rcx + 8*rcx]
               	and	rcx, -0x20
               	add	rcx, r8
               	vextractps	dword ptr [rcx + 4*r14], xmm6, 0x1
               	lea	rcx, [rdx + 4*rdx]
               	and	rcx, -0x20
               	add	rcx, r8
               	vmovd	dword ptr [rcx + 4*r14], xmm2
               	test	r12b, 0x7
               	mov	r11, qword ptr [rsp + 0x130]
               	mov	r13, qword ptr [rsp + 0x128]
               	je	 <L170>
               	vpsrlq	ymm9, ymm9, 0x8
               	vpsrlq	ymm8, ymm8, 0x8
               	vpsrlq	ymm7, ymm7, 0x8
               	mov	r9, qword ptr [rsp + 0x148]
               	mov	r8, qword ptr [rsp + 0x118]
               	mov	r14, qword ptr [rsp + 0x140]
               	mov	r10, qword ptr [rsp + 0x138]
<L173>:
               	mov	rax, qword ptr [rsp + 0x1d8]
               	lea	ecx, [rax + r12]
               	inc	ecx
               	mov	edx, r12d
               	inc	edx
               	cmp	ecx, 0x1
               	je	 <L171>
<L169>:
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	qword ptr [rsp + 0x128], r13
               	mov	qword ptr [rsp + 0x130], r11
               	mov	qword ptr [rsp + 0x138], r10
               	mov	qword ptr [rsp + 0x140], r14
               	mov	qword ptr [rsp + 0x118], r8
               	mov	qword ptr [rsp + 0x148], r9
               	vpextrb	r15d, xmm9, 0x8
               	vextracti128	xmm2, ymm9, 0x1
               	vpextrb	edx, xmm2, 0x0
               	vpextrb	r12d, xmm2, 0x8
               	vpextrb	r13d, xmm8, 0x0
               	vpextrb	r11d, xmm8, 0x8
               	vextracti128	xmm2, ymm8, 0x1
               	vpextrb	r14d, xmm2, 0x0
               	vpextrb	ecx, xmm2, 0x8
               	vpextrb	r8d, xmm7, 0x0
               	vpextrq	r10, xmm7, 0x1
               	vextracti128	xmm2, ymm7, 0x1
               	vmovq	r9, xmm2
               	vmovd	xmm2, r10d
               	vpinsrb	xmm2, xmm2, r9d, 0x1
               	vxorps	xmm4, xmm4, xmm4
               	vcvtsi2ss	xmm4, xmm4, r15d
               	vxorps	xmm10, xmm10, xmm10
               	vcvtsi2ss	xmm3, xmm10, edx
               	vmovd	edx, xmm9
               	vxorps	xmm10, xmm10, xmm10
               	vcvtsi2ss	xmm15, xmm10, r12d
               	movzx	edx, dl
               	vxorps	xmm10, xmm10, xmm10
               	vcvtsi2ss	xmm14, xmm10, r13d
               	imul	r9d, edx, 0x4f
               	vxorps	xmm10, xmm10, xmm10
               	vcvtsi2ss	xmm13, xmm10, r11d
               	shr	r9d, 0xa
               	vxorps	xmm10, xmm10, xmm10
               	vcvtsi2ss	xmm12, xmm10, r14d
               	lea	r10d, [r9 + 2*r9]
               	vxorps	xmm10, xmm10, xmm10
               	vcvtsi2ss	xmm11, xmm10, ecx
               	lea	ecx, [r9 + 4*r10]
               	vxorps	xmm10, xmm10, xmm10
               	vcvtsi2ss	xmm10, xmm10, r8d
               	sub	dl, cl
               	movzx	ecx, dl
               	lea	rax,  <__libc_start_main+0xa54>
               	movsxd	rcx, dword ptr [rax + 4*rcx]
               	add	rcx, rax
               	jmp	rcx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vbroadcastss	xmm6, xmm10
               	jmp	 <L172>
               	nop	dword ptr [rax]
<L170>:
               	mov	r8, qword ptr [rsp + 0x158]
               	mov	rcx, r8
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0x1c8]
               	mov	r9, qword ptr [rsp + 0x1c0]
               	xor	r9, rdx
               	mov	r10, qword ptr [rsp + 0x1b8]
               	xor	r10, r8
               	xor	r8, r9
               	xor	rdx, r10
               	mov	qword ptr [rsp + 0x1c8], rdx
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x1c0], r9
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x1b8], r10
               	mov	rdi, qword ptr [rsp + 0x118]
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0x148]
               	mov	rdx, qword ptr [rsp + 0x1b0]
               	xor	rax, rdx
               	mov	r11, qword ptr [rsp + 0xd0]
               	xor	r11, rdi
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x118], rdi
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x1b0], rdx
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0xd0], r11
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x148], rax
               	mov	rcx, qword ptr [rsp + 0x130]
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0x138]
               	mov	r12, qword ptr [rsp + 0x110]
               	xor	rdx, r12
               	mov	rax, qword ptr [rsp + 0x140]
               	xor	rax, qword ptr [rsp + 0x130]
               	mov	qword ptr [rsp + 0x140], rax
               	xor	qword ptr [rsp + 0x130], rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x138], rdx
               	mov	r11, qword ptr [rsp + 0x78]
               	mov	rcx, r11
               	shl	rcx, 0x11
               	mov	r9, qword ptr [rsp + 0x108]
               	xor	qword ptr [rsp + 0x80], r9
               	mov	r13, qword ptr [rsp + 0x160]
               	xor	r13, r11
               	mov	qword ptr [rsp + 0x160], r13
               	xor	r11, qword ptr [rsp + 0x80]
               	xor	qword ptr [rsp + 0x80], rcx
               	mov	r12, qword ptr [rsp + 0x70]
               	mov	rcx, r12
               	shl	rcx, 0x11
               	mov	r14, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0x1d0], rsi
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	r14, rsi
               	mov	r10, qword ptr [rsp + 0x48]
               	xor	r10, r12
               	mov	qword ptr [rsp + 0x48], r10
               	xor	r12, r14
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0xc8], r14
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rcx, rdx
               	shl	rcx, 0x11
               	mov	rdi, qword ptr [rsp + 0xc0]
               	mov	rax, qword ptr [rsp + 0xf8]
               	xor	rdi, rax
               	mov	r14, qword ptr [rsp + 0x40]
               	xor	r14, rdx
               	mov	qword ptr [rsp + 0x40], r14
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x28], rdx
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0xc0], rdi
               	mov	r10, qword ptr [rsp + 0x68]
               	mov	rcx, r10
               	shl	rcx, 0x11
               	mov	rax, qword ptr [rsp + 0xb8]
               	mov	r9, qword ptr [rsp + 0xf0]
               	xor	rax, r9
               	mov	rdi, qword ptr [rsp + 0x38]
               	xor	rdi, r10
               	mov	qword ptr [rsp + 0x38], rdi
               	xor	r10, rax
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xb8], rax
               	mov	rsi, qword ptr [rsp + 0x60]
               	mov	rdx, rsi
               	shl	rdx, 0x11
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	r9, qword ptr [rsp + 0xe8]
               	xor	rcx, r9
               	mov	rax, qword ptr [rsp + 0x30]
               	xor	rax, rsi
               	mov	qword ptr [rsp + 0x30], rax
               	xor	rsi, rcx
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	rcx, r9
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0xa0]
               	mov	rax, qword ptr [rsp + 0xe0]
               	xor	rdx, rax
               	mov	r15, qword ptr [rsp + 0xa8]
               	xor	r15, r9
               	xor	r9, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0xa0], rdx
               	mov	rdi, qword ptr [rsp + 0x50]
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0x90]
               	xor	rdx, qword ptr [rsp + 0x88]
               	mov	rax, qword ptr [rsp + 0x98]
               	mov	r14, rbx
               	mov	rbx, rax
               	xor	rbx, rdi
               	xor	rdi, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x90], rdx
               	mov	rcx, r14
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0x1a0]
               	mov	rax, qword ptr [rsp + 0xd8]
               	xor	rdx, rax
               	mov	rax, qword ptr [rsp + 0x1a8]
               	xor	rax, r14
               	xor	r14, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x1a0], rdx
               	mov	rcx, qword ptr [rsp + 0x128]
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0x198]
               	mov	r13, qword ptr [rsp + 0x120]
               	xor	rdx, r13
               	mov	r13, qword ptr [rsp + 0x128]
               	xor	qword ptr [rsp + 0x1d0], r13
               	xor	qword ptr [rsp + 0x128], rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x198], rdx
               	mov	qword ptr [rsp + 0x158], r8
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	mov	qword ptr [rsp + 0x78], r11
               	lea	rcx, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x130]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm2, rcx
               	lea	rcx, [r11 + 4*r11]
               	rol	rcx, 0x7
               	lea	rdx, [r8 + 8*r8]
               	mov	r8, qword ptr [rsp + 0x118]
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm3, rcx
               	lea	rcx, [r8 + 4*r8]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm4, rcx
               	mov	qword ptr [rsp + 0x70], r12
               	lea	rcx, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x20]
               	rol	rcx, 0x7
               	vmovq	xmm6, rdx
               	mov	qword ptr [rsp + 0x60], rsi
               	lea	rdx, [rsi + 4*rsi]
               	mov	rsi, qword ptr [rsp + 0x1d0]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm7, rdx
               	mov	qword ptr [rsp + 0x68], r10
               	lea	rdx, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x138]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm8, rdx
               	mov	rdx, qword ptr [rsp + 0x28]
               	lea	rdx, [rdx + 4*rdx]
               	mov	r13, qword ptr [rsp + 0x128]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	vmovq	xmm10, rdx
               	lea	rdx, [r14 + 4*r14]
               	rol	rdx, 0x7
               	vmovq	xmm11, rcx
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm12, rcx
               	lea	rcx, [rdx + 8*rdx]
               	vmovq	xmm13, rcx
               	mov	qword ptr [rsp + 0x50], rdi
               	lea	rcx, [rdi + 4*rdi]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm14, rcx
               	mov	qword ptr [rsp + 0x58], r9
               	lea	rcx, [r9 + 4*r9]
               	mov	r9, qword ptr [rsp + 0x148]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm15, rcx
               	mov	rcx, qword ptr [rsp + 0x140]
               	xor	qword ptr [rsp + 0x110], rcx
               	rol	rcx, 0x2d
               	vpunpcklqdq	xmm2, xmm3, xmm2 # xmm2 = xmm3[0],xmm2[0]
               	mov	rdx, qword ptr [rsp + 0x160]
               	xor	qword ptr [rsp + 0x108], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x160], rdx
               	vpunpcklqdq	xmm3, xmm6, xmm4 # xmm3 = xmm6[0],xmm4[0]
               	mov	rdi, qword ptr [rsp + 0x48]
               	xor	qword ptr [rsp + 0x100], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x48], rdi
               	vinserti128	ymm9, ymm3, xmm2, 0x1
               	mov	rdi, qword ptr [rsp + 0x40]
               	xor	qword ptr [rsp + 0xf8], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x40], rdi
               	vpunpcklqdq	xmm2, xmm8, xmm7 # xmm2 = xmm8[0],xmm7[0]
               	mov	rdi, qword ptr [rsp + 0x38]
               	xor	qword ptr [rsp + 0xf0], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x38], rdi
               	vpunpcklqdq	xmm3, xmm11, xmm10 # xmm3 = xmm11[0],xmm10[0]
               	mov	rdi, qword ptr [rsp + 0x30]
               	xor	qword ptr [rsp + 0xe8], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x30], rdi
               	vinserti128	ymm8, ymm3, xmm2, 0x1
               	xor	qword ptr [rsp + 0xe0], r15
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xa8], r15
               	vpunpcklqdq	xmm2, xmm13, xmm12 # xmm2 = xmm13[0],xmm12[0]
               	xor	qword ptr [rsp + 0x88], rbx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x98], rbx
               	mov	rbx, r14
               	mov	r14, rcx
               	xor	qword ptr [rsp + 0xd8], rax
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x1a8], rax
               	xor	qword ptr [rsp + 0x120], rsi
               	rol	rsi, 0x2d
               	vpunpcklqdq	xmm3, xmm15, xmm14 # xmm3 = xmm15[0],xmm14[0]
               	vinserti128	ymm7, ymm3, xmm2, 0x1
               	jmp	 <L173>
               	vpextrb	ecx, xmm2, 0x1
               	vxorps	xmm6, xmm6, xmm6
               	vcvtsi2ss	xmm2, xmm6, ecx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vinsertps	xmm6, xmm10, xmm2, 0x10 # xmm6 = xmm10[0],xmm2[0],xmm10[2,3]
               	vmovd	xmm2, dword ptr  <__libc_start_main+0xa38>
               	jmp	 <L174>
               	vpextrb	ecx, xmm2, 0x0
               	vxorps	xmm6, xmm6, xmm6
               	vcvtsi2ss	xmm2, xmm6, ecx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vblendps	xmm6, xmm2, xmm0, 0xe   # xmm6 = xmm2[0],xmm0[1,2,3]
               	vmovdqa	xmm2, xmm1
               	jmp	 <L174>
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vblendps	xmm6, xmm10, xmm0, 0xe  # xmm6 = xmm10[0],xmm0[1,2,3]
               	vmovdqa	xmm2, xmm1
               	jmp	 <L174>
               	vpmovzxbd	xmm2, xmm2      # xmm2 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero
               	vcvtdq2ps	xmm6, xmm2
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vmovd	xmm2, dword ptr  <__libc_start_main+0xa44>
               	jmp	 <L174>
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vblendps	xmm6, xmm10, xmm0, 0xe  # xmm6 = xmm10[0],xmm0[1,2,3]
               	vmovd	xmm2, dword ptr  <__libc_start_main+0xa40>
               	jmp	 <L174>
               	vpextrb	ecx, xmm2, 0x0
               	vxorps	xmm6, xmm6, xmm6
               	vcvtsi2ss	xmm2, xmm6, ecx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vblendps	xmm6, xmm2, xmm0, 0xe   # xmm6 = xmm2[0],xmm0[1,2,3]
               	vmovd	xmm2, dword ptr  <__libc_start_main+0xa40>
               	jmp	 <L174>
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vbroadcastss	xmm6, xmm10
               	vmovdqa	xmm2, xmm1
               	jmp	 <L174>
               	vpmovzxbd	xmm2, xmm2      # xmm2 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero
               	vcvtdq2ps	xmm6, xmm2
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vmovdqa	xmm2, xmm1
               	jmp	 <L174>
               	vpmovzxbd	xmm2, xmm2      # xmm2 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero
               	vcvtdq2ps	xmm6, xmm2
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
<L172>:
               	vmovdqa	xmm2, xmm5
               	jmp	 <L174>
               	vpextrb	ecx, xmm2, 0x1
               	vxorps	xmm6, xmm6, xmm6
               	vcvtsi2ss	xmm2, xmm6, ecx
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	r14, rdx
               	shr	r14, 0x20
               	mov	rcx, rdx
               	movabs	rax, -0x100000000
               	and	rcx, rax
               	movabs	rax, 0x100000000
               	add	rcx, rax
               	mov	r11d, edx
               	or	rcx, r11
               	shr	rdx, 0x23
               	mov	r15, rdx
               	mov	rax, rdx
               	shl	rax, 0x5
               	mov	r10, qword ptr [rsp + 0x18]
               	add	rax, r10
               	and	r14d, 0x7
               	mov	edx, r14d
               	lea	r8, [rax + 4*rdx]
               	vinsertps	xmm6, xmm10, xmm2, 0x10 # xmm6 = xmm10[0],xmm2[0],xmm10[2,3]
               	vmovd	xmm2, dword ptr  <__libc_start_main+0xa40>
               	jmp	 <L174>
<L171>:
               	mov	r13, qword ptr [rsp + 0x10]
               	mov	rcx, r13
               	shr	rcx, 0x20
               	jne	 <L175>
               	mov	rbx, qword ptr [rsp + 0x150]
               	mov	rdi, qword ptr [rsp + 0x18]
               	jmp	 <L176>
<L168>:
               	mov	rbx, qword ptr [rsp + 0x150]
               	mov	rdi, qword ptr [rsp + 0x18]
               	jmp	 <L177>
<L175>:
               	mov	r12d, r13d
               	lea	rdx, [rsp + 0x1c0]
               	mov	esi, 0x1
               	xor	r10d, r10d
               	movabs	r8, 0x800000000
               	mov	r11d, 0x1
               	mov	rdi, qword ptr [rsp + 0x18]
               	jmp	 <L178>
               	nop	word ptr cs:[rax + rax]
<L180>:
               	movabs	rax, -0x100000000
               	and	r12, rax
               	add	r12, r8
               	or	r9, r12
               	inc	esi
               	popcnt	r11d, esi
               	xor	r12, r13
               	shr	r12, 0x20
               	mov	r10d, ecx
               	mov	r12, r9
               	je	 <L179>
<L178>:
               	mov	ecx, r11d
               	mov	r9d, r12d
               	lea	r11, [r9 + 8*r9]
               	lea	r11, [r11 + 2*r11]
               	add	r11, r9
               	movabs	rax, 0x1fffffffe0
               	and	r11, rax
               	add	r11, rdi
               	mov	rbx, r12
               	shr	rbx, 0x1e
               	and	rbx, -0x20
               	mov	r14, r9
               	shl	r14, 0x5
               	add	r14, rdi
               	vmovaps	ymm0, ymmword ptr [rbx + r14]
               	lea	r14, [4*r9]
               	lea	r14, [r14 + 8*r14]
               	and	r14, -0x20
               	add	r14, rdi
               	lea	r15, [8*r9]
               	lea	r15, [r15 + 4*r15]
               	and	r15, -0x20
               	vmulps	ymm0, ymm0, ymmword ptr [rbx + r11]
               	vmulps	ymm0, ymm0, ymmword ptr [rbx + r14]
               	add	r15, rdi
               	vmulps	ymm0, ymm0, ymmword ptr [rbx + r15]
               	movsxd	r11, r10d
               	mov	rbx, r11
               	shl	rbx, 0x5
               	vmovaps	ymmword ptr [rsp + rbx + 0x1e0], ymm0
               	sub	r11d, ecx
               	jb	 <L180>
               	mov	r10d, r10d
               	mov	rbx, r10
               	shl	rbx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rbx + 0x1e0]
               	inc	r11d
               	and	r11d, 0x3
               	je	 <L181>
               	add	rbx, rdx
               	xor	r14d, r14d
               	nop
<L182>:
               	vaddps	ymm0, ymm0, ymmword ptr [rbx]
               	vmovaps	ymmword ptr [rbx], ymm0
               	inc	r14
               	add	rbx, -0x20
               	cmp	r11, r14
               	jne	 <L182>
               	mov	r11, r10
               	sub	r11, r14
               	mov	ebx, ecx
               	sub	r10, rbx
               	cmp	r10, 0x3
               	jb	 <L180>
               	jmp	 <L183>
<L181>:
               	mov	r11, r10
               	mov	ebx, ecx
               	sub	r10, rbx
               	cmp	r10, 0x3
               	jb	 <L180>
<L183>:
               	mov	r10, r11
               	shl	r10, 0x5
               	add	r10, rdx
               	inc	r11
               	nop	word ptr [rax + rax]
<L184>:
               	vaddps	ymm0, ymm0, ymmword ptr [r10]
               	vmovaps	ymmword ptr [r10], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [r10 - 0x20]
               	vmovaps	ymmword ptr [r10 - 0x20], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [r10 - 0x40]
               	vmovaps	ymmword ptr [r10 - 0x40], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [r10 - 0x60]
               	vmovaps	ymmword ptr [r10 - 0x60], ymm0
               	add	r10, -0x80
               	add	r11, -0x4
               	cmp	r11, rbx
               	jg	 <L184>
               	jmp	 <L180>
<L179>:
               	cmp	ecx, 0x2
               	mov	rbx, qword ptr [rsp + 0x150]
               	jb	 <L177>
               	mov	eax, ecx
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x1c0]
               	test	cl, 0x1
               	jne	 <L185>
               	dec	rax
               	lea	rsi, [rsp + 0x1e0]
               	vaddps	ymm0, ymm0, ymmword ptr [rdx + rsi - 0x40]
               	vmovaps	ymmword ptr [rdx + rsi - 0x40], ymm0
<L185>:
               	cmp	ecx, 0x2
               	je	 <L177>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	lea	rdx, [rsp + 0x1e0]
               	add	rax, rdx
               	add	rax, -0x40
               	nop	word ptr [rax + rax]
<L186>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L186>
<L177>:
               	vmovaps	ymm0, ymmword ptr [rsp + 0x1e0]
               	vmovaps	ymmword ptr [rsp + 0x160], ymm0
               	test	rdi, rdi
               	je	 <L187>
<L176>:
               	mov	esi, 0x20
               	vzeroupper
               	call	 <_ZdaPvSt11align_val_t@plt>
<L187>:
               	cmp	ebx, 0x2a
               	jne	 <L188>
               	cmp	dword ptr [rsp + 0x190], 0x186a0
               	jne	 <L188>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x160]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xa4c>
               	jne	 <L189>
<L188>:
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
<L189>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x160], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x160]
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
