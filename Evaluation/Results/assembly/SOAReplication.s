
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
               	call	qword ptr  <__libc_start_main+0x3ab0>
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
               	mov	rax, qword ptr  <__libc_start_main+0x3ac0>
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
               	mov	rax, qword ptr  <__libc_start_main+0x3ac8>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x3ad0>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x38
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r15d, byte ptr [rcx]
               	movzx	edx, byte ptr [rcx + 0x1]
               	add	r15d, -0x30
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	word ptr [rax + rax]
<L1>:
               	lea	esi, [r15 + 4*r15]
               	movsx	edx, dl
               	lea	r15d, [rdx + 2*rsi - 0x30]
               	movzx	edx, byte ptr [rcx]
               	inc	rcx
               	test	dl, dl
               	jne	 <L1>
<L0>:
               	movsx	r14d, byte ptr [rax]
               	movzx	ecx, byte ptr [rax + 0x1]
               	add	r14d, -0x30
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	word ptr [rax + rax]
<L3>:
               	lea	edx, [r14 + 4*r14]
               	movsx	ecx, cl
               	lea	r14d, [rcx + 2*rdx - 0x30]
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	mov	rsi, qword ptr  <__libc_start_main+0x3ad8>
               	mov	ebx, r14d
               	lea	r13, [rbx + 4*rbx]
               	lea	rdi, [rbx + 8*r13]
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	test	r14d, r14d
               	je	 <L4>
               	movsxd	rcx, r15d
               	movabs	rdx, -0x255992d382208bc1
               	movabs	rbp, -0x40a7b892e31b1a47
               	movabs	r12, -0x6b2fb644ecceee15
               	xor	r15d, r15d
               	add	rdx, rcx
               	mov	rsi, rdx
               	shr	rsi, 0x1e
               	xor	rsi, rdx
               	imul	rsi, rbp
               	mov	r8, rsi
               	shr	r8, 0x1b
               	xor	r8, rsi
               	lea	rsi, [rax + 8*r13]
               	imul	r8, r12
               	mov	rdi, r8
               	shr	rdi, 0x1f
               	xor	rdi, r8
               	movabs	r8, 0x3c6ef372fe94f82a
               	add	r8, rcx
               	mov	r9, r8
               	shr	r9, 0x1e
               	xor	r9, r8
               	imul	r9, rbp
               	mov	r10, r9
               	shr	r10, 0x1b
               	xor	r10, r9
               	movabs	r9, -0x61c8864680b583eb
               	add	r9, rcx
               	imul	r10, r12
               	mov	r11, r9
               	shr	r11, 0x1e
               	xor	r11, r9
               	imul	r11, rbp
               	mov	r8, r10
               	shr	r8, 0x1f
               	xor	r8, r10
               	mov	r10, r11
               	shr	r10, 0x1b
               	xor	r10, r11
               	lea	r11, [8*rbx]
               	imul	r10, r12
               	sub	r11, rbx
               	mov	r9, r10
               	shr	r9, 0x1f
               	xor	r9, r10
               	mov	r10, rcx
               	shr	r10, 0x1e
               	xor	r10, rcx
               	imul	r10, rbp
               	mov	rbp, rbx
               	shl	rbp, 0x4
               	add	rbp, rax
               	mov	rcx, r10
               	shr	rcx, 0x1b
               	xor	rcx, r10
               	imul	rcx, r12
               	mov	r12, r13
               	mov	r10, rcx
               	shr	r10, 0x1f
               	xor	r10, rcx
               	lea	rcx, [rax + 8*rbx]
               	mov	qword ptr [rsp + 0x20], rcx
               	lea	rcx, [rbx + 2*rbx]
               	mov	qword ptr [rsp + 0x18], rcx
               	lea	rcx, [rbx + rbx]
               	lea	rcx, [rcx + 2*rcx]
               	mov	qword ptr [rsp + 0x10], rcx
               	mov	rcx, rbx
               	shl	rcx, 0x5
               	add	rcx, rax
               	mov	qword ptr [rsp + 0x8], rcx
               	lea	rcx, [rbx + 8*rbx]
               	mov	qword ptr [rsp + 0x28], rcx
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x30], rcx
               	nop	dword ptr [rax]
<L11>:
               	lea	rdx, [r9 + 4*r9]
               	movabs	rcx, 0x4ec4ec4ec4ec4ec5
               	rorx	rdx, rdx, 0x39
               	lea	rdx, [rdx + 8*rdx]
               	mulx	r13, r13, rcx
               	shr	r13, 0x2
               	lea	rcx, [r13 + 2*r13]
               	lea	rcx, [r13 + 4*rcx]
               	sub	rdx, rcx
               	cmp	rdx, 0xc
               	ja	 <L5>
               	lea	r13,  <__libc_start_main+0x924>
               	movsxd	rcx, dword ptr [r13 + 4*rdx]
               	add	rcx, r13
               	jmp	rcx
               	mov	edx, r15d
               	xor	r13d, r13d
               	jmp	 <L6>
               	mov	edx, r15d
               	mov	r13b, 0xb
               	jmp	 <L7>
               	mov	edx, r15d
               	mov	r13b, 0x4
               	jmp	 <L8>
               	mov	edx, r15d
               	mov	r13, qword ptr [rsp + 0x10]
               	lea	rcx, [rdx + rbx]
               	mov	dword ptr [rax + 4*rdx], 0x0
               	mov	dword ptr [rax + 4*rcx], 0x0
               	mov	rcx, qword ptr [rsp + 0x20]
               	mov	dword ptr [rcx + 4*rdx], 0x0
               	mov	rcx, qword ptr [rsp + 0x18]
               	add	rcx, rdx
               	mov	dword ptr [rax + 4*rcx], 0x0
               	lea	rcx, [r12 + rdx]
               	mov	dword ptr [rbp + 4*rdx], 0x0
               	mov	dword ptr [rax + 4*rcx], 0x0
               	lea	rcx, [r13 + rdx]
               	mov	r13, qword ptr [rsp + 0x30]
               	mov	dword ptr [rax + 4*rcx], 0x0
               	lea	rcx, [r11 + rdx]
               	mov	dword ptr [rax + 4*rcx], 0x0
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	dword ptr [rcx + 4*rdx], r13d
               	lea	ecx, [r13 + 0x1]
               	mov	r13b, 0xc
               	mov	qword ptr [rsp + 0x30], rcx
               	jmp	 <L9>
               	mov	edx, r15d
               	mov	r13b, 0x9
               	jmp	 <L8>
               	mov	edx, r15d
               	mov	r13b, 0x2
               	jmp	 <L8>
               	mov	edx, r15d
               	mov	r13b, 0x3
               	jmp	 <L6>
               	mov	edx, r15d
               	mov	r13b, 0x7
               	jmp	 <L7>
               	mov	edx, r15d
               	mov	r13b, 0x1
               	jmp	 <L8>
               	mov	edx, r15d
               	mov	r13b, 0x5
               	jmp	 <L6>
               	mov	edx, r15d
               	mov	r13b, 0x6
<L7>:
               	lea	rcx, [rdx + rbx]
               	mov	dword ptr [rax + 4*rdx], 0x0
               	mov	dword ptr [rax + 4*rcx], 0x0
               	mov	rcx, qword ptr [rsp + 0x20]
               	mov	dword ptr [rcx + 4*rdx], 0x0
               	mov	rcx, qword ptr [rsp + 0x18]
               	add	rcx, rdx
               	mov	dword ptr [rax + 4*rcx], 0x0
               	lea	rcx, [r12 + rdx]
               	mov	dword ptr [rbp + 4*rdx], 0x0
               	mov	dword ptr [rax + 4*rcx], 0x0
               	mov	rcx, qword ptr [rsp + 0x10]
               	add	rcx, rdx
               	mov	dword ptr [rax + 4*rcx], 0x0
               	lea	rcx, [r11 + rdx]
               	mov	dword ptr [rax + 4*rcx], 0x0
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	dword ptr [rcx + 4*rdx], 0x0
               	mov	rcx, qword ptr [rsp + 0x28]
               	add	rcx, rdx
               	jmp	 <L10>
               	mov	edx, r15d
               	mov	r13b, 0xa
               	nop	word ptr cs:[rax + rax]
<L8>:
               	lea	rcx, [rdx + rbx]
               	mov	dword ptr [rax + 4*rdx], 0x0
               	mov	dword ptr [rax + 4*rcx], 0x0
               	mov	rcx, qword ptr [rsp + 0x20]
               	mov	dword ptr [rcx + 4*rdx], 0x0
               	mov	rcx, qword ptr [rsp + 0x18]
               	add	rcx, rdx
               	mov	dword ptr [rax + 4*rcx], 0x0
               	lea	rcx, [r12 + rdx]
               	mov	dword ptr [rbp + 4*rdx], 0x0
               	mov	dword ptr [rax + 4*rcx], 0x0
               	mov	rcx, qword ptr [rsp + 0x10]
               	add	rcx, rdx
               	mov	dword ptr [rax + 4*rcx], 0x0
               	lea	rcx, [r11 + rdx]
               	mov	dword ptr [rax + 4*rcx], 0x0
               	mov	rcx, qword ptr [rsp + 0x8]
               	mov	dword ptr [rcx + 4*rdx], 0x0
               	jmp	 <L9>
               	mov	edx, r15d
               	mov	r13b, 0x8
<L6>:
               	lea	rcx, [rdx + rbx]
               	mov	dword ptr [rax + 4*rdx], 0x0
               	mov	dword ptr [rax + 4*rcx], 0x0
               	mov	rcx, qword ptr [rsp + 0x20]
               	mov	dword ptr [rcx + 4*rdx], 0x0
               	mov	rcx, qword ptr [rsp + 0x18]
               	add	rcx, rdx
               	mov	dword ptr [rax + 4*rcx], 0x0
               	lea	rcx, [r12 + rdx]
               	mov	dword ptr [rbp + 4*rdx], 0x0
               	mov	dword ptr [rax + 4*rcx], 0x0
               	mov	rcx, qword ptr [rsp + 0x10]
               	add	rcx, rdx
               	mov	dword ptr [rax + 4*rcx], 0x0
               	lea	rcx, [r11 + rdx]
<L10>:
               	mov	dword ptr [rax + 4*rcx], 0x0
<L9>:
               	inc	r15d
               	mov	byte ptr [rsi + rdx], r13b
<L5>:
               	mov	rcx, r9
               	xor	r8, r10
               	xor	rdi, r9
               	shl	rcx, 0x11
               	xor	r9, r8
               	xor	r10, rdi
               	rorx	rdi, rdi, 0x13
               	xor	r8, rcx
               	dec	r14d
               	jne	 <L11>
               	test	r15d, r15d
               	je	 <L4>
               	mov	rdi, qword ptr [rsp + 0x28]
               	add	rbx, rax
               	lea	r8,  <__libc_start_main+0x958>
               	mov	ecx, r15d
               	vxorps	xmm0, xmm0, xmm0
               	lea	rdx, [rdi + 2*rdi]
               	add	rbx, rdx
               	lea	rdx, [rax + 4*rdi]
               	xor	edi, edi
               	movzx	r9d, byte ptr [rsi + rdi]
               	vmovss	xmm1, dword ptr [rbx + 4*rdi] # xmm1 = mem[0],zero,zero,zero
               	movsxd	r9, dword ptr [r8 + 4*r9]
               	add	r9, r8
               	jmp	r9
<L4>:
               	xor	ebx, ebx
               	test	rax, rax
               	je	 <L12>
<L17>:
               	mov	rdi, rax
               	call	 <_ZdaPv@plt>
<L12>:
               	mov	eax, ebx
               	add	rsp, 0x38
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	ret
               	vmulss	xmm2, xmm1, xmm1
               	vmulss	xmm2, xmm2, dword ptr  <__libc_start_main+0x920>
               	vmulss	xmm1, xmm2, xmm1
               	vaddss	xmm0, xmm1, xmm0
               	inc	rdi
               	cmp	rcx, rdi
               	je	 <L13>
<L14>:
               	movzx	r9d, byte ptr [rsi + rdi]
               	vmovss	xmm1, dword ptr [rbx + 4*rdi] # xmm1 = mem[0],zero,zero,zero
               	movsxd	r9, dword ptr [r8 + 4*r9]
               	add	r9, r8
               	jmp	r9
               	vmulss	xmm1, xmm1, xmm1
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x914>
               	vaddss	xmm0, xmm1, xmm0
               	inc	rdi
               	cmp	rcx, rdi
               	jne	 <L14>
               	jmp	 <L13>
               	vmulss	xmm1, xmm1, xmm1
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x910>
               	jmp	 <L15>
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x918>
               	jmp	 <L16>
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x91c>
               	jmp	 <L15>
               	vmulss	xmm1, xmm1, xmm1
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x914>
<L15>:
               	mov	r9, qword ptr [rsp + 0x8]
               	vmulss	xmm1, xmm1, dword ptr [r9 + 4*rdi]
               	vaddss	xmm0, xmm1, xmm0
               	inc	rdi
               	cmp	rcx, rdi
               	jne	 <L14>
               	jmp	 <L13>
               	vmulss	xmm1, xmm1, xmm1
               	vaddss	xmm0, xmm1, xmm0
               	inc	rdi
               	cmp	rcx, rdi
               	jne	 <L14>
               	jmp	 <L13>
               	vmulss	xmm2, xmm1, xmm1
               	vmulss	xmm1, xmm1, xmm2
               	vaddss	xmm0, xmm1, xmm0
               	inc	rdi
               	cmp	rcx, rdi
               	jne	 <L14>
               	jmp	 <L13>
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0x920>
<L16>:
               	mov	r9, qword ptr [rsp + 0x8]
               	vmulss	xmm1, xmm1, dword ptr [r9 + 4*rdi]
               	vmulss	xmm1, xmm1, dword ptr [rdx + 4*rdi]
               	vaddss	xmm0, xmm1, xmm0
               	inc	rdi
               	cmp	rcx, rdi
               	jne	 <L14>
<L13>:
               	vcvttss2si	ebx, xmm0
               	jmp	 <L17>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x3ab8>
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

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>
