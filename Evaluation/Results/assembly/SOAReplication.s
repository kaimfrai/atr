
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
               	call	qword ptr  <__libc_start_main+0x58d8>
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
               	mov	rax, qword ptr  <__libc_start_main+0x58e8>
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
               	mov	rax, qword ptr  <__libc_start_main+0x58f0>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x58f8>
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
               	call	 <initializer for module Evaluation.Dependency.Fraction>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
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
               	sub	rsp, 0x680
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
               	movsx	edx, byte ptr [rax]
               	add	edx, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	edx, [rdx + 4*rdx]
               	movsx	ecx, cl
               	lea	edx, [rcx + 2*rdx]
               	add	edx, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	mov	qword ptr [rsp + 0x110], rdx
               	mov	eax, edx
               	mov	qword ptr [rsp + 0xc0], rax
               	imul	rdi, rax, 0x2c
               	and	rdi, -0x20
               	mov	rdx, qword ptr  <__libc_start_main+0x5900>
               	mov	esi, 0x20
               	call	 <_ZnamSt11align_val_tRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x118], rax
               	mov	qword ptr [rsp + 0x108], rbx
               	movsxd	rdx, ebx
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
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x190], rcx
               	mov	rax, rcx
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x198], r10
               	mov	rcx, r10
               	xor	edx, edx
               	mov	qword ptr [rsp + 0xa0], rdx
               	mov	qword ptr [rsp + 0x128], r8
               	mov	rdx, r8
               	mov	qword ptr [rsp + 0x160], r9
               	mov	rsi, r9
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x98], r8
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x98], rsi
               	xor	qword ptr [rsp + 0xa0], rdx
               	xor	r12, rcx
               	xor	r11, rax
               	jmp	 <L6>
<L5>:
               	movabs	rbx, -0x2a59ed990f36c6d4
               	xor	edi, edi
               	jmp	 <L7>
               	nop	dword ptr [rax]
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
               	bt	rbx, rdi
               	jae	 <L9>
               	mov	r8, r12
               	xor	qword ptr [rsp + 0x98], rsi
               	xor	qword ptr [rsp + 0xa0], rdx
               	xor	r8, rcx
               	mov	r12, r8
               	xor	r11, rax
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x98], rsi
               	xor	qword ptr [rsp + 0xa0], rdx
               	xor	r12, rcx
               	xor	r11, rax
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop
<L15>:
               	mov	qword ptr [rsp + 0xd8], r12
<L16>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r12, qword ptr [rsp + 0xd8]
               	je	 <L14>
<L13>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L15>
               	xor	qword ptr [rsp + 0x98], rsi
               	xor	qword ptr [rsp + 0xa0], rdx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0xd8], r12
               	xor	r11, rax
               	jmp	 <L16>
<L14>:
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	qword ptr [rsp + 0x158], r11
               	mov	rax, r11
               	xor	r13d, r13d
               	xor	r10d, r10d
               	mov	rdx, qword ptr [rsp + 0xa0]
               	mov	rsi, qword ptr [rsp + 0x98]
               	xor	r11d, r11d
               	jmp	 <L17>
               	nop
<L19>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r12, rsi
               	xor	rax, rdx
               	xor	rdx, r12
               	xor	rsi, rax
               	xor	r12, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L18>
<L17>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L19>
               	xor	r11, rsi
               	xor	r10, rdx
               	xor	r13, r12
               	xor	r9, rax
               	jmp	 <L19>
<L18>:
               	xor	edi, edi
               	mov	r14, r9
               	jmp	 <L20>
               	nop	dword ptr [rax + rax]
<L22>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r12, rsi
               	xor	rax, rdx
               	xor	rdx, r12
               	xor	rsi, rax
               	xor	r12, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L21>
<L20>:
               	bt	rbx, rdi
               	jae	 <L22>
               	xor	r11, rsi
               	xor	r10, rdx
               	xor	r13, r12
               	xor	r14, rax
               	jmp	 <L22>
<L21>:
               	xor	edi, edi
               	jmp	 <L23>
               	nop	dword ptr [rax + rax]
<L25>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r12, rsi
               	xor	rax, rdx
               	xor	rdx, r12
               	xor	rsi, rax
               	xor	r12, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L24>
<L23>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L25>
               	xor	r11, rsi
               	xor	r10, rdx
               	xor	r13, r12
               	xor	r14, rax
               	jmp	 <L25>
<L24>:
               	xor	edi, edi
               	jmp	 <L26>
               	nop	word ptr cs:[rax + rax]
<L28>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	r12, rsi
               	xor	rax, rdx
               	xor	rdx, r12
               	xor	rsi, rax
               	xor	r12, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L27>
<L26>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L28>
               	xor	r11, rsi
               	xor	r10, rdx
               	xor	r13, r12
               	xor	r14, rax
               	jmp	 <L28>
<L27>:
               	xor	edi, edi
               	xor	r9d, r9d
               	mov	qword ptr [rsp + 0x150], r14
               	mov	rax, r14
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x178], r13
               	mov	rcx, r13
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x1c0], r10
               	mov	rdx, r10
               	mov	rsi, r11
               	xor	r13d, r13d
               	movabs	r10, 0x180ec6d33cfd0aba
               	jmp	 <L29>
               	nop
<L31>:
               	mov	r15, r13
               	mov	r13, r14
               	mov	r14, r8
<L32>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, r14
               	mov	r14, r13
               	mov	r13, r15
               	je	 <L30>
<L29>:
               	bt	r10, rdi
               	jae	 <L31>
               	xor	r13, rsi
               	mov	r15, r13
               	xor	r14, rdx
               	mov	r13, r14
               	xor	r8, rcx
               	mov	r14, r8
               	xor	r9, rax
               	jmp	 <L32>
<L30>:
               	xor	edi, edi
               	jmp	 <L33>
               	nop	word ptr cs:[rax + rax]
<L35>:
               	mov	r15, r13
               	mov	r13, r14
               	mov	r14, r8
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
               	mov	r8, r14
               	mov	r14, r13
               	mov	r13, r15
               	je	 <L34>
<L33>:
               	bt	rbx, rdi
               	jae	 <L35>
               	xor	r13, rsi
               	mov	r15, r13
               	xor	r14, rdx
               	mov	r13, r14
               	xor	r8, rcx
               	mov	r14, r8
               	xor	r9, rax
               	jmp	 <L36>
<L34>:
               	xor	edi, edi
               	movabs	r10, -0x56a7d9e71fc03656
               	jmp	 <L37>
<L39>:
               	mov	r15, r13
               	mov	r13, r14
               	mov	r14, r8
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
               	mov	r8, r14
               	mov	r14, r13
               	mov	r13, r15
               	je	 <L38>
<L37>:
               	bt	r10, rdi
               	jae	 <L39>
               	xor	r13, rsi
               	mov	r15, r13
               	xor	r14, rdx
               	mov	r13, r14
               	xor	r8, rcx
               	mov	r14, r8
               	xor	r9, rax
               	jmp	 <L40>
<L38>:
               	xor	edi, edi
               	movabs	r10, 0x39abdc4529b1661c
               	jmp	 <L41>
<L43>:
               	mov	qword ptr [rsp + 0xd0], r8
<L44>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	mov	r8, qword ptr [rsp + 0xd0]
               	je	 <L42>
<L41>:
               	bt	r10, rdi
               	jae	 <L43>
               	xor	r13, rsi
               	xor	r14, rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0xd0], r8
               	xor	r9, rax
               	jmp	 <L44>
<L42>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	mov	rax, r9
               	xor	r12d, r12d
               	mov	rcx, r8
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x38], rdx
               	mov	rdx, r14
               	mov	rsi, r13
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x90], r8
               	jmp	 <L45>
               	nop	dword ptr [rax + rax]
<L47>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L46>
<L45>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L47>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	r12, rcx
               	xor	qword ptr [rsp + 0x40], rax
               	jmp	 <L47>
<L46>:
               	xor	edi, edi
               	jmp	 <L48>
               	nop
<L50>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L49>
<L48>:
               	bt	rbx, rdi
               	jae	 <L50>
               	mov	r8, r12
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	r8, rcx
               	mov	r12, r8
               	xor	qword ptr [rsp + 0x40], rax
               	jmp	 <L50>
<L49>:
               	xor	edi, edi
               	jmp	 <L51>
               	nop	word ptr [rax + rax]
<L53>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L52>
<L51>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L53>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	r12, rcx
               	xor	qword ptr [rsp + 0x40], rax
               	jmp	 <L53>
<L52>:
               	xor	edi, edi
               	jmp	 <L54>
               	nop
<L56>:
               	mov	qword ptr [rsp + 0xc8], r12
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
               	mov	r12, qword ptr [rsp + 0xc8]
               	je	 <L55>
<L54>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L56>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0xc8], r12
               	xor	qword ptr [rsp + 0x40], rax
               	jmp	 <L57>
<L55>:
               	mov	qword ptr [rsp + 0x188], r11
               	xor	edi, edi
               	xor	ebx, ebx
               	mov	rax, qword ptr [rsp + 0x40]
               	xor	r10d, r10d
               	mov	rcx, r12
               	xor	r11d, r11d
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0x90]
               	xor	r12d, r12d
               	jmp	 <L58>
               	nop
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L60>
               	xor	r12, rsi
               	xor	r11, rdx
               	xor	r10, rcx
               	xor	rbx, rax
               	jmp	 <L60>
<L59>:
               	mov	qword ptr [rsp + 0xb0], r12
               	xor	edi, edi
               	mov	r12, rbx
               	movabs	rbx, -0x2a59ed990f36c6d4
               	jmp	 <L61>
               	nop	word ptr [rax + rax]
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
               	bt	rbx, rdi
               	jae	 <L63>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	r11, rdx
               	xor	r10, rcx
               	xor	r12, rax
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	r11, rdx
               	xor	r10, rcx
               	xor	r12, rax
               	jmp	 <L66>
<L65>:
               	xor	edi, edi
               	jmp	 <L67>
               	nop	word ptr [rax + rax]
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L69>
               	xor	qword ptr [rsp + 0xb0], rsi
               	xor	r11, rdx
               	xor	r10, rcx
               	xor	r12, rax
               	jmp	 <L69>
<L68>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	mov	rax, r12
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x80], rcx
               	mov	rcx, r10
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x78], rdx
               	mov	rdx, r11
               	mov	rsi, qword ptr [rsp + 0xb0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	jmp	 <L70>
               	nop
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
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
               	bt	rbx, rdi
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	jmp	 <L76>
               	nop	dword ptr [rax]
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x88], rax
               	jmp	 <L81>
<L80>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	mov	rax, qword ptr [rsp + 0x88]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x68], rcx
               	mov	rcx, qword ptr [rsp + 0x80]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x60], rdx
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	rsi, qword ptr [rsp + 0x70]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x58], r8
               	jmp	 <L82>
               	nop	word ptr [rax + rax]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0x28], rax
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
               	bt	rbx, rdi
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0x28], rax
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0x28], rax
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
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x58], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	qword ptr [rsp + 0x28], rax
               	jmp	 <L93>
<L92>:
               	xor	r8d, r8d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	mov	rdx, qword ptr [rsp + 0x28]
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x50], rax
               	mov	rsi, qword ptr [rsp + 0x68]
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	mov	rax, qword ptr [rsp + 0x60]
               	mov	rdi, qword ptr [rsp + 0x58]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x48], rcx
               	mov	qword ptr [rsp + 0x180], r9
               	movabs	rcx, 0x180ec6d33cfd0aba
               	jmp	 <L94>
<L96>:
               	mov	r9, rax
               	shl	r9, 0x11
               	xor	rsi, rdi
               	xor	rdx, rax
               	xor	rax, rsi
               	xor	rdi, rdx
               	xor	rsi, r9
               	rol	rdx, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L95>
<L94>:
               	bt	rcx, r8
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x30], rax
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	jmp	 <L96>
<L95>:
               	xor	r8d, r8d
               	jmp	 <L97>
               	nop	word ptr cs:[rax + rax]
<L99>:
               	mov	r9, rax
               	shl	r9, 0x11
               	xor	rsi, rdi
               	xor	rdx, rax
               	xor	rax, rsi
               	xor	rdi, rdx
               	xor	rsi, r9
               	rol	rdx, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L98>
<L97>:
               	bt	rbx, r8
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x30], rax
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	jmp	 <L99>
<L98>:
               	xor	r8d, r8d
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L100>
               	nop
<L102>:
               	mov	r9, rax
               	shl	r9, 0x11
               	xor	rsi, rdi
               	xor	rdx, rax
               	xor	rax, rsi
               	xor	rdi, rdx
               	xor	rsi, r9
               	rol	rdx, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L101>
<L100>:
               	bt	rcx, r8
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x30], rax
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	jmp	 <L102>
<L101>:
               	xor	r8d, r8d
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L103>
               	nop
<L105>:
               	mov	r9, rax
               	shl	r9, 0x11
               	xor	rsi, rdi
               	xor	rdx, rax
               	xor	rax, rsi
               	xor	rdi, rdx
               	xor	rsi, r9
               	rol	rdx, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L104>
<L103>:
               	bt	rcx, r8
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x48], rdi
               	xor	qword ptr [rsp + 0x30], rax
               	xor	qword ptr [rsp + 0x50], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	jmp	 <L105>
<L104>:
               	mov	qword ptr [rsp + 0x168], r11
               	mov	qword ptr [rsp + 0x170], r10
               	xor	r11d, r11d
               	xor	esi, esi
               	mov	rdx, qword ptr [rsp + 0x20]
               	xor	r15d, r15d
               	mov	r8, qword ptr [rsp + 0x50]
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	mov	rdi, qword ptr [rsp + 0x30]
               	mov	r10, qword ptr [rsp + 0x48]
               	xor	r9d, r9d
               	jmp	 <L106>
               	nop	word ptr [rax + rax]
<L108>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdx, rdi
               	xor	rdi, r8
               	xor	r10, rdx
               	xor	r8, rbx
               	rol	rdx, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	movabs	rcx, -0x2a59ed990f36c6d4
               	je	 <L107>
<L106>:
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, r11
               	jae	 <L108>
               	xor	r9, r10
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	r15, r8
               	xor	rsi, rdx
               	jmp	 <L108>
<L107>:
               	xor	r11d, r11d
               	jmp	 <L109>
               	nop	word ptr cs:[rax + rax]
<L111>:
               	mov	qword ptr [rsp + 0x18], r9
<L112>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdx, rdi
               	xor	rdi, r8
               	xor	r10, rdx
               	xor	r8, rbx
               	rol	rdx, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	movabs	rcx, -0x2a59ed990f36c6d4
               	mov	r9, qword ptr [rsp + 0x18]
               	je	 <L110>
<L109>:
               	bt	rcx, r11
               	jae	 <L111>
               	xor	r9, r10
               	mov	qword ptr [rsp + 0x18], r9
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	r15, r8
               	xor	rsi, rdx
               	jmp	 <L112>
<L110>:
               	xor	r11d, r11d
               	jmp	 <L113>
               	nop	word ptr [rax + rax]
<L115>:
               	mov	rcx, qword ptr [rsp + 0xe0]
<L116>:
               	mov	qword ptr [rsp + 0xe0], rcx
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdx, rdi
               	xor	rdi, r8
               	xor	r10, rdx
               	xor	r8, rbx
               	rol	rdx, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L114>
<L113>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	bt	rcx, r11
               	mov	rcx, qword ptr [rsp + 0x18]
               	jae	 <L115>
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x18], rcx
               	mov	rcx, qword ptr [rsp + 0xe0]
               	xor	rcx, rdi
               	xor	r15, r8
               	xor	rsi, rdx
               	jmp	 <L116>
<L114>:
               	xor	r11d, r11d
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L117>
               	nop	word ptr cs:[rax + rax]
<L119>:
               	mov	rbx, rdi
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdx, rdi
               	xor	rdi, r8
               	xor	r10, rdx
               	xor	r8, rbx
               	rol	rdx, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L118>
<L117>:
               	bt	rcx, r11
               	jae	 <L119>
               	xor	qword ptr [rsp + 0x18], r10
               	xor	qword ptr [rsp + 0xe0], rdi
               	xor	r15, r8
               	xor	rsi, rdx
               	jmp	 <L119>
<L118>:
               	mov	rbx, r12
               	mov	qword ptr [rsp + 0x120], r14
               	mov	rdx, qword ptr [rsp + 0xc0]
               	xor	r12d, r12d
               	xor	r9d, r9d
               	mov	qword ptr [rsp + 0x148], rsi
               	mov	r8, rsi
               	xor	r11d, r11d
               	mov	rdi, r15
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xa8], rsi
               	mov	rsi, qword ptr [rsp + 0xe0]
               	mov	r14, qword ptr [rsp + 0x18]
               	xor	r10d, r10d
               	mov	qword ptr [rsp + 0xb8], r10
               	jmp	 <L120>
               	nop	dword ptr [rax]
<L122>:
               	mov	r10, r11
<L123>:
               	mov	r11, rsi
               	shl	r11, 0x11
               	xor	rdi, r14
               	xor	r8, rsi
               	xor	rsi, rdi
               	xor	r14, r8
               	xor	rdi, r11
               	rol	r8, 0x2d
               	inc	r12
               	cmp	r12, 0x40
               	mov	r11, r10
               	je	 <L121>
<L120>:
               	movabs	r10, 0x180ec6d33cfd0aba
               	bt	r10, r12
               	jae	 <L122>
               	xor	qword ptr [rsp + 0xb8], r14
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	r11, rdi
               	mov	r10, r11
               	xor	r9, r8
               	jmp	 <L123>
<L121>:
               	xor	r12d, r12d
               	jmp	 <L124>
               	nop	dword ptr [rax]
<L126>:
               	mov	r10, r11
<L127>:
               	mov	r11, rsi
               	shl	r11, 0x11
               	xor	rdi, r14
               	xor	r8, rsi
               	xor	rsi, rdi
               	xor	r14, r8
               	xor	rdi, r11
               	rol	r8, 0x2d
               	inc	r12
               	cmp	r12, 0x40
               	mov	r11, r10
               	je	 <L125>
<L124>:
               	movabs	r10, -0x2a59ed990f36c6d4
               	bt	r10, r12
               	jae	 <L126>
               	xor	qword ptr [rsp + 0xb8], r14
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	r11, rdi
               	mov	r10, r11
               	xor	r9, r8
               	jmp	 <L127>
<L125>:
               	xor	r12d, r12d
               	jmp	 <L128>
               	nop	dword ptr [rax]
<L130>:
               	mov	r10, r11
<L131>:
               	mov	r11, rsi
               	shl	r11, 0x11
               	xor	rdi, r14
               	xor	r8, rsi
               	xor	rsi, rdi
               	xor	r14, r8
               	xor	rdi, r11
               	rol	r8, 0x2d
               	inc	r12
               	cmp	r12, 0x40
               	mov	r11, r10
               	je	 <L129>
<L128>:
               	movabs	r10, -0x56a7d9e71fc03656
               	bt	r10, r12
               	jae	 <L130>
               	xor	qword ptr [rsp + 0xb8], r14
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	r11, rdi
               	mov	r10, r11
               	xor	r9, r8
               	jmp	 <L131>
<L129>:
               	xor	r12d, r12d
               	jmp	 <L132>
               	nop	dword ptr [rax]
<L134>:
               	mov	r10, r11
<L135>:
               	mov	r11, rsi
               	shl	r11, 0x11
               	xor	rdi, r14
               	xor	r8, rsi
               	xor	rsi, rdi
               	xor	r14, r8
               	xor	rdi, r11
               	rol	r8, 0x2d
               	inc	r12
               	cmp	r12, 0x40
               	mov	r11, r10
               	je	 <L133>
<L132>:
               	movabs	r10, 0x39abdc4529b1661c
               	bt	r10, r12
               	jae	 <L134>
               	xor	qword ptr [rsp + 0xb8], r14
               	xor	qword ptr [rsp + 0xa8], rsi
               	xor	r11, rdi
               	mov	r10, r11
               	xor	r9, r8
               	jmp	 <L135>
<L133>:
               	mov	edi, 0x40
               	nop	dword ptr [rax]
<L136>:
               	dec	rdi
               	jne	 <L136>
               	mov	edi, 0x40
               	mov	r14, qword ptr [rsp + 0x110]
               	mov	r12, qword ptr [rsp + 0x118]
               	nop	word ptr [rax + rax]
<L137>:
               	dec	rdi
               	jne	 <L137>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
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
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L168>:
               	dec	rdi
               	jne	 <L168>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L169>:
               	dec	rdi
               	jne	 <L169>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L170>:
               	dec	rdi
               	jne	 <L170>
               	mov	edi, 0x40
               	nop	word ptr [rax + rax]
<L171>:
               	dec	rdi
               	jne	 <L171>
               	test	r14d, r14d
               	je	 <L172>
               	vbroadcastsd	ymm0, qword ptr  <__libc_start_main+0xbc0>
               	vmovaps	ymmword ptr [rsp + 0x2a0], ymm0
               	vbroadcastss	ymm0, dword ptr  <__libc_start_main+0xbd8>
               	vmovaps	ymmword ptr [rsp + 0x280], ymm0
               	mov	r10d, r14d
               	vbroadcastss	ymm0, dword ptr  <__libc_start_main+0xbd4>
               	vmovaps	ymmword ptr [rsp + 0x260], ymm0
               	vbroadcastss	ymm0, dword ptr  <__libc_start_main+0xbd0>
               	vmovaps	ymmword ptr [rsp + 0x240], ymm0
               	vbroadcastss	ymm0, dword ptr  <__libc_start_main+0xbc8>
               	vmovaps	ymmword ptr [rsp + 0x220], ymm0
               	vbroadcastss	ymm0, dword ptr  <__libc_start_main+0xbe0>
               	vmovaps	ymmword ptr [rsp + 0x200], ymm0
               	vbroadcastss	ymm0, dword ptr  <__libc_start_main+0xbcc>
               	vmovaps	ymmword ptr [rsp + 0x1e0], ymm0
               	mov	qword ptr [rsp + 0x140], r13
               	mov	r13, qword ptr [rsp + 0x1c0]
               	mov	rdi, r9
               	mov	qword ptr [rsp + 0x138], rbx
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	rsi, r15
               	mov	rcx, qword ptr [rsp + 0x18]
               	nop	dword ptr [rax]
<L173>:
               	mov	qword ptr [rsp + 0x18], rcx
               	mov	qword ptr [rsp + 0x20], r9
               	mov	qword ptr [rsp + 0x28], rax
               	mov	qword ptr [rsp + 0x1a8], rsi
               	mov	qword ptr [rsp + 0x1b0], rdi
               	mov	dword ptr [rsp + 0x134], r10d
               	mov	qword ptr [rsp + 0x1b8], r11
               	mov	rax, qword ptr [rsp + 0x128]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rcx, [rsi + 8*rsi]
               	mov	r8d, ecx
               	shr	r8d, 0x8
               	mov	r11d, ecx
               	mov	r14d, ecx
               	shr	r11d, 0x10
               	shr	r14d, 0x18
               	vmovd	xmm0, ecx
               	vpinsrb	xmm0, xmm0, r8d, 0x1
               	vpinsrb	xmm0, xmm0, r11d, 0x2
               	vpinsrb	xmm0, xmm0, r14d, 0x3
               	mov	rsi, rcx
               	shr	rsi, 0x20
               	vpinsrb	xmm1, xmm0, esi, 0x4
               	mov	r12, rcx
               	shr	r12, 0x28
               	vpinsrb	xmm1, xmm1, r12d, 0x5
               	mov	rdi, rcx
               	shr	rdi, 0x30
               	vpinsrb	xmm1, xmm1, edi, 0x6
               	mov	r15, rcx
               	shr	r15, 0x38
               	vpinsrb	xmm1, xmm1, r15d, 0x7
               	vpinsrb	xmm2, xmm1, ecx, 0x8
               	vpinsrb	xmm2, xmm2, r8d, 0x9
               	vpinsrb	xmm2, xmm2, r11d, 0xa
               	vpinsrb	xmm2, xmm2, r14d, 0xb
               	mov	rax, qword ptr [rsp + 0xe0]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	r8, [rcx + 8*rcx]
               	vpinsrb	xmm2, xmm2, esi, 0xc
               	vmovd	ecx, xmm0
               	vpinsrb	xmm0, xmm2, r12d, 0xd
               	mov	rax, qword ptr [rsp + 0x118]
               	vpinsrb	xmm0, xmm0, edi, 0xe
               	shr	ecx, 0x8
               	vpinsrb	xmm0, xmm0, r15d, 0xf
               	vpsrlvq	xmm2, xmm0, xmmword ptr  <__libc_start_main+0xa80>
               	vinserti128	ymm0, ymm0, xmm0, 0x1
               	vmovd	xmm3, ecx
               	vpunpcklqdq	xmm1, xmm1, xmm3 # xmm1 = xmm1[0],xmm3[0]
               	vpsrlvq	ymm0, ymm0, ymmword ptr  <__libc_start_main+0xb80>
               	vinserti128	ymm1, ymm1, xmm2, 0x1
               	vmovdqa	ymm2, ymmword ptr [rsp + 0x2a0]
               	vpand	ymm1, ymm1, ymm2
               	vpand	ymm0, ymm0, ymm2
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm0, xmm0, xmm0
               	vpmovzxbw	ymm1, xmm0      # ymm1 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero,xmm0[8],zero,xmm0[9],zero,xmm0[10],zero,xmm0[11],zero,xmm0[12],zero,xmm0[13],zero,xmm0[14],zero,xmm0[15],zero
               	vpmullw	ymm1, ymm1, ymmword ptr  <__libc_start_main+0xb60>
               	vpsrlw	ymm1, ymm1, 0x8
               	vextracti128	xmm2, ymm1, 0x1
               	vpackuswb	xmm1, xmm1, xmm2
               	vpsrlw	xmm1, xmm1, 0x2
               	vpand	xmm1, xmm1, xmmword ptr  <__libc_start_main+0xb10>
               	vpmovzxbw	ymm1, xmm1      # ymm1 = xmm1[0],zero,xmm1[1],zero,xmm1[2],zero,xmm1[3],zero,xmm1[4],zero,xmm1[5],zero,xmm1[6],zero,xmm1[7],zero,xmm1[8],zero,xmm1[9],zero,xmm1[10],zero,xmm1[11],zero,xmm1[12],zero,xmm1[13],zero,xmm1[14],zero,xmm1[15],zero
               	vpmullw	ymm1, ymm1, ymmword ptr  <__libc_start_main+0xb40>
               	vpand	ymm1, ymm1, ymmword ptr  <__libc_start_main+0xba0>
               	vextracti128	xmm2, ymm1, 0x1
               	vpackuswb	xmm1, xmm1, xmm2
               	vpsubb	xmm12, xmm0, xmm1
               	vpcmpeqb	xmm0, xmm12, xmmword ptr  <__libc_start_main+0xac0>
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vmovdqa	ymm13, ymmword ptr [rsp + 0x280]
               	vpand	ymm0, ymm13, ymm0
               	vpcmpeqb	xmm1, xmm12, xmmword ptr  <__libc_start_main+0xa50>
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vpand	ymm1, ymm13, ymm1
               	vcvtdq2ps	ymm14, ymm0
               	vpcmpeqb	xmm0, xmm12, xmmword ptr  <__libc_start_main+0xae0>
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vpand	ymm0, ymm13, ymm0
               	vcvtdq2ps	ymm3, ymm1
               	vpcmpeqb	xmm1, xmm12, xmmword ptr  <__libc_start_main+0xb20>
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vpand	ymm1, ymm13, ymm1
               	vcvtdq2ps	ymm4, ymm0
               	vpcmpeqb	xmm0, xmm12, xmmword ptr  <__libc_start_main+0xad0>
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vpand	ymm0, ymm13, ymm0
               	vcvtdq2ps	ymm5, ymm1
               	vpcmpeqb	xmm1, xmm12, xmmword ptr  <__libc_start_main+0xa60>
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vpand	ymm1, ymm13, ymm1
               	vcvtdq2ps	ymm6, ymm0
               	vpcmpeqb	xmm0, xmm12, xmmword ptr  <__libc_start_main+0xaf0>
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vpand	ymm2, ymm13, ymm0
               	vcvtdq2ps	ymm0, ymm1
               	vpcmpeqb	xmm1, xmm12, xmmword ptr  <__libc_start_main+0xaa0>
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vpand	ymm1, ymm13, ymm1
               	vcvtdq2ps	ymm2, ymm2
               	vpcmpeqb	xmm7, xmm12, xmmword ptr  <__libc_start_main+0xa40>
               	vpmovzxbd	ymm7, xmm7      # ymm7 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
               	vpand	ymm7, ymm13, ymm7
               	vcvtdq2ps	ymm11, ymm1
               	vpcmpeqb	xmm1, xmm12, xmmword ptr  <__libc_start_main+0xb00>
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vpand	ymm1, ymm13, ymm1
               	vcvtdq2ps	ymm10, ymm7
               	vpcmpeqb	xmm7, xmm12, xmmword ptr  <__libc_start_main+0xa90>
               	vpmovzxbd	ymm7, xmm7      # ymm7 = xmm7[0],zero,zero,zero,xmm7[1],zero,zero,zero,xmm7[2],zero,zero,zero,xmm7[3],zero,zero,zero,xmm7[4],zero,zero,zero,xmm7[5],zero,zero,zero,xmm7[6],zero,zero,zero,xmm7[7],zero,zero,zero
               	vpand	ymm8, ymm13, ymm7
               	vcvtdq2ps	ymm7, ymm1
               	vpcmpeqb	xmm1, xmm12, xmmword ptr  <__libc_start_main+0xab0>
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vpand	ymm1, ymm13, ymm1
               	vcvtdq2ps	ymm9, ymm8
               	vpcmpeqb	xmm8, xmm12, xmmword ptr  <__libc_start_main+0xa70>
               	vpmovzxbd	ymm8, xmm8      # ymm8 = xmm8[0],zero,zero,zero,xmm8[1],zero,zero,zero,xmm8[2],zero,zero,zero,xmm8[3],zero,zero,zero,xmm8[4],zero,zero,zero,xmm8[5],zero,zero,zero,xmm8[6],zero,zero,zero,xmm8[7],zero,zero,zero
               	vpand	ymm8, ymm8, ymm13
               	vcvtdq2ps	ymm1, ymm1
               	vcvtdq2ps	ymm8, ymm8
               	vaddps	ymm12, ymm8, ymm9
               	vaddps	ymm15, ymm10, ymm7
               	vaddps	ymm12, ymm12, ymm15
               	vaddps	ymm15, ymm0, ymm5
               	vaddps	ymm15, ymm15, ymm14
               	vaddps	ymm13, ymm11, ymm1
               	vaddps	ymm12, ymm12, ymm15
               	vmovaps	ymmword ptr [rsp + 0x1c0], ymm12
               	vaddps	ymm12, ymm2, ymm6
               	vaddps	ymm12, ymm13, ymm12
               	vaddps	ymm13, ymm4, ymm3
               	vaddps	ymm12, ymm12, ymm13
               	vmovq	xmm13, r8
               	vpmovzxbd	ymm13, xmm13    # ymm13 = xmm13[0],zero,zero,zero,xmm13[1],zero,zero,zero,xmm13[2],zero,zero,zero,xmm13[3],zero,zero,zero,xmm13[4],zero,zero,zero,xmm13[5],zero,zero,zero,xmm13[6],zero,zero,zero,xmm13[7],zero,zero,zero
               	vcvtdq2ps	ymm13, ymm13
               	vmulps	ymm12, ymm12, ymm13
               	vaddps	ymm13, ymm9, ymm1
               	vaddps	ymm15, ymm11, ymm7
               	vaddps	ymm13, ymm13, ymm15
               	mov	rcx, qword ptr [rsp + 0xa8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm15, rcx
               	vpmovzxbd	ymm15, xmm15    # ymm15 = xmm15[0],zero,zero,zero,xmm15[1],zero,zero,zero,xmm15[2],zero,zero,zero,xmm15[3],zero,zero,zero,xmm15[4],zero,zero,zero,xmm15[5],zero,zero,zero,xmm15[6],zero,zero,zero,xmm15[7],zero,zero,zero
               	vcvtdq2ps	ymm15, ymm15
               	vaddps	ymm13, ymm13, ymm2
               	vmulps	ymm15, ymm13, ymm15
               	vaddps	ymm13, ymm14, ymm3
               	vaddps	ymm3, ymm4, ymm5
               	vaddps	ymm4, ymm13, ymm3
               	vaddps	ymm5, ymm4, ymm6
               	vmulps	ymm4, ymm6, ymmword ptr [rsp + 0x260]
               	vmulps	ymm6, ymm11, ymmword ptr [rsp + 0x240]
               	vaddps	ymm11, ymm4, ymm6
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vaddps	ymm1, ymm8, ymm1
               	vaddps	ymm6, ymm8, ymm10
               	vaddps	ymm4, ymm10, ymm1
               	vmovq	xmm1, rcx
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm14, ymm1
               	vaddps	ymm1, ymm6, ymm0
               	vmulps	ymm1, ymm14, ymm1
               	vaddps	ymm6, ymm5, ymm1
               	vaddps	ymm5, ymm13, ymm7
               	vaddps	ymm0, ymm0, ymm2
               	vaddps	ymm0, ymm3, ymm0
               	vmulps	ymm1, ymm9, ymmword ptr [rsp + 0x220]
               	vaddps	ymm0, ymm0, ymm1
               	mov	r10, qword ptr [rsp + 0xa0]
               	lea	rcx, [r10 + 4*r10]
               	rol	rcx, 0x7
               	mov	r11, rdx
               	mov	qword ptr [rsp + 0xc0], rdx
               	mov	r15, r13
               	lea	rsi, [4*r13]
               	add	rsi, r13
               	rol	rsi, 0x7
               	mov	rdx, qword ptr [rsp + 0x120]
               	lea	rdi, [rdx + 4*rdx]
               	rol	rdi, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rsi, [rsi + 8*rsi]
               	lea	r8, [rdi + 8*rdi]
               	vaddps	ymm0, ymm11, ymm0
               	vmovq	xmm1, rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	mov	rdi, r11
               	vcvtdq2ps	ymm1, ymm1
               	shr	rdi, 0x1e
               	and	rdi, -0x20
               	vmovaps	ymmword ptr [rax + rdi], ymm1
               	vmovq	xmm1, rsi
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	add	rdi, rax
               	mov	esi, r11d
               	vcvtdq2ps	ymm1, ymm1
               	shr	esi, 0x3
               	shl	rsi, 0x5
               	vmovaps	ymmword ptr [rsi + rdi], ymm1
               	vmovq	xmm1, r8
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	mov	esi, r11d
               	shr	esi, 0x2
               	shl	rsi, 0x5
               	vcvtdq2ps	ymm1, ymm1
               	vmovaps	ymmword ptr [rsi + rdi], ymm1
               	vmovq	xmm1, rcx
               	mov	eax, r11d
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	lea	r14, [4*rax]
               	lea	rcx, [r14 + 2*r14]
               	and	rcx, -0x20
               	vcvtdq2ps	ymm1, ymm1
               	vmovaps	ymmword ptr [rcx + rdi], ymm1
               	mov	r13, qword ptr [rsp + 0x168]
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmulps	ymm1, ymm4, ymmword ptr [rsp + 0x200]
               	vmulps	ymm2, ymm5, ymmword ptr [rsp + 0x1e0]
               	vaddps	ymm1, ymm1, ymm2
               	vmovq	xmm2, rcx
               	vpmovzxbd	ymm2, xmm2      # ymm2 = xmm2[0],zero,zero,zero,xmm2[1],zero,zero,zero,xmm2[2],zero,zero,zero,xmm2[3],zero,zero,zero,xmm2[4],zero,zero,zero,xmm2[5],zero,zero,zero,xmm2[6],zero,zero,zero,xmm2[7],zero,zero,zero
               	shr	r11d
               	vcvtdq2ps	ymm2, ymm2
               	shl	r11, 0x5
               	vmovaps	ymmword ptr [r11 + rdi], ymm2
               	vmulps	ymm2, ymm14, ymmword ptr [rsp + 0x1c0]
               	vaddps	ymm2, ymm12, ymm2
               	mov	rdx, qword ptr [rsp + 0x78]
               	lea	rcx, [rdx + 4*rdx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	r8, qword ptr [rsp + 0x60]
               	lea	rsi, [r8 + 4*r8]
               	rol	rsi, 0x7
               	vaddps	ymm3, ymm15, ymm6
               	vmovq	xmm4, rcx
               	lea	rcx, [rsi + 8*rsi]
               	vpmovzxbd	ymm4, xmm4      # ymm4 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero,xmm4[4],zero,zero,zero,xmm4[5],zero,zero,zero,xmm4[6],zero,zero,zero,xmm4[7],zero,zero,zero
               	vcvtdq2ps	ymm4, ymm4
               	lea	rsi, [r14 + 4*r14]
               	and	rsi, -0x20
               	vmovaps	ymmword ptr [rsi + rdi], ymm4
               	vmovq	xmm4, rcx
               	vpmovzxbd	ymm4, xmm4      # ymm4 = xmm4[0],zero,zero,zero,xmm4[1],zero,zero,zero,xmm4[2],zero,zero,zero,xmm4[3],zero,zero,zero,xmm4[4],zero,zero,zero,xmm4[5],zero,zero,zero,xmm4[6],zero,zero,zero,xmm4[7],zero,zero,zero
               	mov	qword ptr [rsp + 0x1a0], rax
               	lea	rcx, [8*rax]
               	lea	rsi, [rcx + 2*rcx]
               	vcvtdq2ps	ymm4, ymm4
               	and	rsi, -0x20
               	vmovaps	ymmword ptr [rsi + rdi], ymm4
               	lea	rsi, [rax + 8*rax]
               	lea	rsi, [rsi + 2*rsi]
               	add	rsi, rax
               	movabs	r12, 0x1fffffffe0
               	and	rsi, r12
               	mov	r9, qword ptr [rsp + 0x190]
               	vmovaps	ymmword ptr [rsi + rdi], ymm14
               	vaddps	ymm0, ymm0, ymm1
               	mov	rsi, rax
               	shl	rsi, 0x5
               	vmovaps	ymmword ptr [rsi + rdi], ymm2
               	lea	rsi, [r14 + 8*r14]
               	and	rsi, -0x20
               	vmovaps	ymmword ptr [rsi + rdi], ymm3
               	lea	rcx, [rcx + 4*rcx]
               	and	rcx, -0x20
               	vmovaps	ymmword ptr [rcx + rdi], ymm0
               	mov	rsi, qword ptr [rsp + 0x128]
               	mov	rcx, rsi
               	mov	rbx, qword ptr [rsp + 0x160]
               	mov	rax, qword ptr [rsp + 0x198]
               	xor	rax, rbx
               	shl	rcx, 0x11
               	xor	r9, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x128], rsi
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x160], rbx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x198], rax
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x190], r9
               	mov	rcx, r10
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0xd8]
               	mov	r9, qword ptr [rsp + 0x98]
               	xor	rbx, r9
               	mov	rax, qword ptr [rsp + 0x158]
               	xor	rax, r10
               	xor	r10, rbx
               	mov	qword ptr [rsp + 0xa0], r10
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x98], r9
               	mov	r9, qword ptr [rsp + 0x180]
               	mov	r10, qword ptr [rsp + 0x150]
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0xd8], rbx
               	mov	rcx, r15
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x158], rax
               	mov	rax, qword ptr [rsp + 0x188]
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0x178]
               	xor	rbx, rax
               	xor	r10, r15
               	xor	r15, rbx
               	mov	qword ptr [rsp + 0x1c0], r15
               	xor	rax, r10
               	mov	qword ptr [rsp + 0x188], rax
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x150], r10
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x178], rbx
               	mov	rax, qword ptr [rsp + 0x120]
               	mov	rcx, rax
               	mov	rbx, qword ptr [rsp + 0x140]
               	mov	r10, qword ptr [rsp + 0xd0]
               	xor	r10, rbx
               	xor	r9, rax
               	shl	rcx, 0x11
               	xor	rax, r10
               	mov	qword ptr [rsp + 0x120], rax
               	xor	rbx, r9
               	mov	qword ptr [rsp + 0x140], rbx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x180], r9
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0xd0], r10
               	mov	rax, qword ptr [rsp + 0x38]
               	mov	rcx, rax
               	mov	r10, qword ptr [rsp + 0xc8]
               	mov	rbx, qword ptr [rsp + 0x90]
               	xor	r10, rbx
               	shl	rcx, 0x11
               	mov	rsi, qword ptr [rsp + 0x40]
               	xor	rsi, rax
               	xor	rax, r10
               	mov	qword ptr [rsp + 0x38], rax
               	xor	rbx, rsi
               	mov	qword ptr [rsp + 0x90], rbx
               	mov	rax, qword ptr [rsp + 0x170]
               	xor	r10, rcx
               	mov	qword ptr [rsp + 0xc8], r10
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x40], rsi
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	mov	rcx, r13
               	shl	rcx, 0x11
               	mov	r10, qword ptr [rsp + 0xb0]
               	xor	rax, r10
               	mov	rdi, qword ptr [rsp + 0x138]
               	xor	rdi, r13
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x168], r13
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x170], rax
               	mov	rcx, rdx
               	mov	rax, qword ptr [rsp + 0x80]
               	mov	r14, qword ptr [rsp + 0x70]
               	xor	rax, r14
               	mov	r13, qword ptr [rsp + 0x88]
               	xor	r13, rdx
               	shl	rcx, 0x11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x78], rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x80], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	mov	rcx, r8
               	shl	rcx, 0x11
               	mov	rbx, qword ptr [rsp + 0x68]
               	mov	rdx, qword ptr [rsp + 0x58]
               	xor	rbx, rdx
               	xor	rax, r8
               	xor	r8, rbx
               	mov	qword ptr [rsp + 0x60], r8
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x68], rbx
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	rcx, r8
               	mov	rbx, qword ptr [rsp + 0x50]
               	mov	r12, qword ptr [rsp + 0x48]
               	xor	rbx, r12
               	xor	r9, r8
               	shl	rcx, 0x11
               	xor	r8, rbx
               	mov	qword ptr [rsp + 0x30], r8
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x50], rbx
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	rcx, qword ptr [rsp + 0xe0]
               	mov	r11, rcx
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0xb0], r10
               	shl	r11, 0x11
               	xor	rsi, r8
               	mov	rbx, qword ptr [rsp + 0x148]
               	xor	rbx, rcx
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0xe0], rcx
               	xor	rsi, r11
               	mov	rcx, qword ptr [rsp + 0xa8]
               	mov	r15, rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x138], rdi
               	shl	r15, 0x11
               	mov	r10, qword ptr [rsp + 0xb8]
               	mov	r11, qword ptr [rsp + 0x1b8]
               	xor	r11, r10
               	mov	rdi, qword ptr [rsp + 0x1b0]
               	xor	rdi, rcx
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0xa8], rcx
               	xor	r11, r15
               	xor	r14, r13
               	mov	qword ptr [rsp + 0x70], r14
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x88], r13
               	mov	r13, qword ptr [rsp + 0x1c0]
               	movabs	rcx, -0x100000000
               	and	qword ptr [rsp + 0xc0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x58], rdx
               	mov	r14, qword ptr [rsp + 0xc0]
               	rol	rax, 0x2d
               	movabs	rcx, 0x800000000
               	add	r14, rcx
               	xor	r12, r9
               	mov	qword ptr [rsp + 0x48], r12
               	rol	r9, 0x2d
               	xor	r8, rbx
               	mov	rcx, r8
               	mov	r8, qword ptr [rsp + 0x1a0]
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x148], rbx
               	or	r14, r8
               	mov	rdx, r14
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0xb8], r10
               	rol	rdi, 0x2d
               	mov	r10d, dword ptr [rsp + 0x134]
               	add	r10d, -0x8
               	jne	 <L173>
               	mov	r12, qword ptr [rsp + 0x118]
               	movabs	rcx, 0x1fffffffe0
               	movabs	r15, 0x800000000
               	movabs	r13, -0x100000000
               	mov	rax, rdx
               	shr	rax, 0x20
               	jne	 <L174>
               	vmovaps	ymm0, ymmword ptr [rsp + 0x2c0]
               	vmovaps	ymmword ptr [rsp + 0xe0], ymm0
               	mov	rbx, qword ptr [rsp + 0x108]
               	mov	r14, qword ptr [rsp + 0x110]
               	jmp	 <L175>
<L172>:
               	mov	rbx, qword ptr [rsp + 0x108]
               	jmp	 <L176>
<L174>:
               	mov	r14, rdx
               	mov	edx, 0x1
               	xor	edi, edi
               	mov	r9d, 0x1
               	mov	r10, rcx
               	jmp	 <L177>
               	nop	dword ptr [rax]
<L179>:
               	and	r8, r13
               	add	r8, rbx
               	or	rsi, r8
               	inc	edx
               	popcnt	r9d, edx
               	xor	r8, r14
               	shr	r8, 0x20
               	mov	edi, eax
               	mov	r8, rsi
               	mov	r10, rcx
               	je	 <L178>
<L177>:
               	mov	eax, r9d
               	mov	esi, r8d
               	lea	r9, [rsi + 8*rsi]
               	lea	r9, [r9 + 2*r9]
               	add	r9, rsi
               	and	r9, r10
               	add	r9, r12
               	mov	r10, r8
               	shr	r10, 0x1e
               	and	r10, -0x20
               	mov	r11, rsi
               	shl	r11, 0x5
               	add	r11, r12
               	vmovaps	ymm0, ymmword ptr [r10 + r11]
               	lea	r11, [4*rsi]
               	lea	r11, [r11 + 8*r11]
               	and	r11, -0x20
               	add	r11, r12
               	lea	rbx, [8*rsi]
               	lea	rbx, [rbx + 4*rbx]
               	and	rbx, -0x20
               	vmulps	ymm0, ymm0, ymmword ptr [r10 + r9]
               	vmulps	ymm0, ymm0, ymmword ptr [r10 + r11]
               	add	rbx, r12
               	vmulps	ymm0, ymm0, ymmword ptr [r10 + rbx]
               	movsxd	r9, edi
               	mov	r10, r9
               	shl	r10, 0x5
               	vmovaps	ymmword ptr [rsp + r10 + 0x2c0], ymm0
               	sub	r9d, eax
               	mov	rbx, r15
               	jb	 <L179>
               	mov	edi, edi
               	mov	r10, rdi
               	shl	r10, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + r10 + 0x2c0]
               	inc	r9d
               	and	r9d, 0x3
               	je	 <L180>
               	lea	r11, [rsp + 0x2a0]
               	add	r10, r11
               	xor	r11d, r11d
               	nop	dword ptr [rax]
<L181>:
               	vaddps	ymm0, ymm0, ymmword ptr [r10]
               	vmovaps	ymmword ptr [r10], ymm0
               	inc	r11
               	add	r10, -0x20
               	cmp	r9, r11
               	jne	 <L181>
               	mov	r9, rdi
               	sub	r9, r11
               	mov	r10d, eax
               	sub	rdi, r10
               	cmp	rdi, 0x3
               	jb	 <L179>
               	jmp	 <L182>
<L180>:
               	mov	r9, rdi
               	mov	r10d, eax
               	sub	rdi, r10
               	cmp	rdi, 0x3
               	jb	 <L179>
<L182>:
               	mov	rdi, r9
               	shl	rdi, 0x5
               	lea	r11, [rsp + 0x2a0]
               	add	rdi, r11
               	inc	r9
               	nop	word ptr cs:[rax + rax]
<L183>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi]
               	vmovaps	ymmword ptr [rdi], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rdi - 0x20]
               	vmovaps	ymmword ptr [rdi - 0x20], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rdi - 0x40]
               	vmovaps	ymmword ptr [rdi - 0x40], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rdi - 0x60]
               	vmovaps	ymmword ptr [rdi - 0x60], ymm0
               	add	rdi, -0x80
               	add	r9, -0x4
               	cmp	r9, r10
               	jg	 <L183>
               	jmp	 <L179>
<L178>:
               	cmp	eax, 0x2
               	mov	r14, qword ptr [rsp + 0x110]
               	mov	rbx, qword ptr [rsp + 0x108]
               	jb	 <L176>
               	mov	ecx, eax
               	mov	rdx, rcx
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x2a0]
               	test	al, 0x1
               	jne	 <L184>
               	dec	rcx
               	lea	rsi, [rsp + 0x2c0]
               	vaddps	ymm0, ymm0, ymmword ptr [rdx + rsi - 0x40]
               	vmovaps	ymmword ptr [rdx + rsi - 0x40], ymm0
<L184>:
               	cmp	eax, 0x2
               	je	 <L176>
               	lea	rax, [rcx - 0x2]
               	shl	rcx, 0x5
               	lea	rdx, [rsp + 0x2c0]
               	add	rcx, rdx
               	add	rcx, -0x40
               	nop	word ptr cs:[rax + rax]
<L185>:
               	vaddps	ymm0, ymm0, ymmword ptr [rcx]
               	vmovaps	ymmword ptr [rcx], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rcx - 0x20]
               	vmovaps	ymmword ptr [rcx - 0x20], ymm0
               	add	rax, -0x2
               	add	rcx, -0x40
               	cmp	rax, -0x3
               	jb	 <L185>
<L176>:
               	vmovaps	ymm0, ymmword ptr [rsp + 0x2c0]
               	vmovaps	ymmword ptr [rsp + 0xe0], ymm0
               	test	r12, r12
               	je	 <L186>
<L175>:
               	mov	esi, 0x20
               	mov	rdi, r12
               	vzeroupper
               	call	 <_ZdaPvSt11align_val_t@plt>
<L186>:
               	cmp	ebx, 0x2a
               	jne	 <L187>
               	cmp	r14d, 0x186a0
               	jne	 <L187>
               	vmovaps	ymm1, ymmword ptr [rsp + 0xe0]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xbdc>
               	jne	 <L188>
<L187>:
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
<L188>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0xe0], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0xe0]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x5908>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x58e0>
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
