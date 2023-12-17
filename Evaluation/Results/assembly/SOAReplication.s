
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
               	call	qword ptr  <__libc_start_main+0x39a0>
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
               	mov	rax, qword ptr  <__libc_start_main+0x39b0>
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
               	mov	rax, qword ptr  <__libc_start_main+0x39b8>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x39c0>
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
               	sub	rsp, 0x58
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
               	mov	ebx, r14d
               	mov	rdx, qword ptr  <__libc_start_main+0x39c8>
               	mov	esi, 0x20
               	imul	rdi, rbx, 0x2c
               	and	rdi, -0x20
               	call	 <_ZnamSt11align_val_tRKSt9nothrow_t@plt>
               	test	r14d, r14d
               	je	 <L4>
               	movsxd	rdx, r15d
               	movabs	rcx, -0x255992d382208bc1
               	movabs	r8, -0x40a7b892e31b1a47
               	movabs	r9, -0x6b2fb644ecceee15
               	vmovss	xmm0, dword ptr  <__libc_start_main+0x930> # xmm0 = mem[0],zero,zero,zero
               	vmovss	xmm1, dword ptr  <__libc_start_main+0x92c> # xmm1 = mem[0],zero,zero,zero
               	vmovss	xmm2, dword ptr  <__libc_start_main+0x938> # xmm2 = mem[0],zero,zero,zero
               	vmovss	xmm3, dword ptr  <__libc_start_main+0x934> # xmm3 = mem[0],zero,zero,zero
               	vmovss	xmm4, dword ptr  <__libc_start_main+0x93c> # xmm4 = mem[0],zero,zero,zero
               	vmovss	xmm5, dword ptr  <__libc_start_main+0x928> # xmm5 = mem[0],zero,zero,zero
               	lea	r15, [rbx + 8*rbx]
               	add	rcx, rdx
               	shr	r15, 0x3
               	mov	rsi, rcx
               	shl	r15, 0x5
               	shr	rsi, 0x1e
               	add	r15, rax
               	xor	rsi, rcx
               	imul	rsi, r8
               	mov	rdi, rsi
               	shr	rdi, 0x1b
               	xor	rdi, rsi
               	movabs	rsi, 0x3c6ef372fe94f82a
               	imul	rdi, r9
               	add	rsi, rdx
               	mov	rcx, rdi
               	shr	rcx, 0x1f
               	xor	rcx, rdi
               	mov	rdi, rsi
               	shr	rdi, 0x1e
               	xor	rdi, rsi
               	imul	rdi, r8
               	mov	r10, rdi
               	shr	r10, 0x1b
               	xor	r10, rdi
               	movabs	rdi, -0x61c8864680b583eb
               	add	rdi, rdx
               	imul	r10, r9
               	mov	r11, rdi
               	shr	r11, 0x1e
               	xor	r11, rdi
               	imul	r11, r8
               	mov	rsi, r10
               	shr	rsi, 0x1f
               	xor	rsi, r10
               	mov	r10, r11
               	shr	r10, 0x1b
               	xor	r10, r11
               	imul	r10, r9
               	mov	rdi, r10
               	shr	rdi, 0x1f
               	xor	rdi, r10
               	mov	r10, rdx
               	shr	r10, 0x1e
               	xor	r10, rdx
               	imul	r10, r8
               	mov	rdx, r10
               	shr	rdx, 0x1b
               	xor	rdx, r10
               	mov	r10, rbx
               	imul	rdx, r9
               	lea	r9, [rbx + 4*rbx]
               	shl	r10, 0x5
               	shr	r9, 0x3
               	add	r10, rax
               	shl	r9, 0x5
               	mov	qword ptr [rsp + 0x8], r10
               	xor	r10d, r10d
               	add	r9, rax
               	mov	r8, rdx
               	mov	qword ptr [rsp + 0x10], r9
               	lea	r9, [8*rbx]
               	shr	r8, 0x1f
               	sub	r9, rbx
               	xor	r8, rdx
               	mov	edx, ebx
               	shr	r9, 0x3
               	shr	edx, 0x3
               	shl	r9, 0x5
               	shl	rdx, 0x5
               	add	r9, rax
               	add	rdx, rax
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	edx, ebx
               	shr	edx, 0x2
               	shl	rdx, 0x5
               	add	rdx, rax
               	mov	qword ptr [rsp + 0x28], rdx
               	lea	rdx, [rbx + 2*rbx]
               	shr	rdx, 0x3
               	shl	rdx, 0x5
               	add	rdx, rax
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	edx, ebx
               	shr	edx
               	shl	rdx, 0x5
               	add	rdx, rax
               	mov	qword ptr [rsp + 0x18], rdx
               	lea	rdx, [rbx + rbx]
               	lea	rbp, [rdx + 2*rdx]
               	lea	r12, [rdx + 4*rdx]
               	shr	rbp, 0x3
               	shr	r12, 0x3
               	shl	rbp, 0x5
               	shl	r12, 0x5
               	add	rbp, rax
               	add	r12, rax
               	nop	word ptr cs:[rax + rax]
<L7>:
               	lea	rdx, [rdi + 4*rdi]
               	movabs	r11, 0x4ec4ec4ec4ec4ec5
               	rorx	rdx, rdx, 0x39
               	lea	rdx, [rdx + 8*rdx]
               	mulx	r11, r11, r11
               	shr	r11, 0x2
               	lea	r13, [r11 + 2*r11]
               	lea	r11, [r11 + 4*r13]
               	sub	rdx, r11
               	cmp	rdx, 0xc
               	ja	 <L5>
               	lea	r11,  <__libc_start_main+0x940>
               	movsxd	rdx, dword ptr [r11 + 4*rdx]
               	add	rdx, r11
               	jmp	rdx
               	mov	edx, r10d
               	mov	r13d, r10d
               	vmovaps	xmm6, xmm1
               	jmp	 <L6>
               	nop	word ptr cs:[rax + rax]
               	mov	edx, r10d
               	mov	r13d, r10d
               	vmovaps	xmm6, xmm4
               	jmp	 <L6>
               	nop	dword ptr [rax]
               	mov	edx, r10d
               	mov	r13d, r10d
               	vmovaps	xmm6, xmm0
               	jmp	 <L6>
               	mov	edx, r10d
               	mov	r13d, r10d
               	vmovaps	xmm6, xmm5
               	jmp	 <L6>
               	mov	edx, r10d
               	mov	r13d, r10d
               	vmovaps	xmm6, xmm2
               	jmp	 <L6>
               	mov	edx, r10d
               	mov	r13d, r10d
               	vmovaps	xmm6, xmm3
               	nop
<L6>:
               	shr	edx, 0x3
               	and	r13d, 0x7
               	mov	r11, rdx
               	shl	r11, 0x5
               	add	r11, rax
               	lea	r11, [r11 + 4*r13]
               	mov	dword ptr [r11], 0x0
               	mov	r11, qword ptr [rsp + 0x30]
               	shl	rdx, 0x5
               	inc	r10d
               	add	r11, rdx
               	mov	dword ptr [r11 + 4*r13], 0x0
               	mov	r11, qword ptr [rsp + 0x28]
               	lea	r11, [r11 + rdx]
               	mov	dword ptr [r11 + 4*r13], 0x0
               	mov	r11, qword ptr [rsp + 0x20]
               	lea	r11, [r11 + rdx]
               	mov	dword ptr [r11 + 4*r13], 0x0
               	mov	r11, qword ptr [rsp + 0x18]
               	lea	r11, [r11 + rdx]
               	mov	dword ptr [r11 + 4*r13], 0x0
               	mov	r11, qword ptr [rsp + 0x10]
               	lea	r11, [r11 + rdx]
               	mov	dword ptr [r11 + 4*r13], 0x0
               	lea	r11, [rbp + rdx]
               	mov	dword ptr [r11 + 4*r13], 0x0
               	lea	r11, [r9 + rdx]
               	mov	dword ptr [r11 + 4*r13], 0x0
               	mov	r11, qword ptr [rsp + 0x8]
               	add	r11, rdx
               	mov	dword ptr [r11 + 4*r13], 0x0
               	lea	r11, [r15 + rdx]
               	add	rdx, r12
               	mov	dword ptr [r11 + 4*r13], 0x0
               	vmovss	dword ptr [rdx + 4*r13], xmm6
<L5>:
               	mov	rdx, rdi
               	xor	rsi, r8
               	xor	rcx, rdi
               	shl	rdx, 0x11
               	xor	rdi, rsi
               	xor	r8, rcx
               	rorx	rcx, rcx, 0x13
               	xor	rsi, rdx
               	dec	r14d
               	jne	 <L7>
               	test	r10d, r10d
               	je	 <L4>
               	vxorps	xmm1, xmm1, xmm1
               	movabs	rcx, -0x100000000
               	movabs	rdx, 0x800000000
               	nop	dword ptr [rax + rax]
<L8>:
               	mov	esi, ebx
               	mov	r8, rbx
               	and	rbx, rcx
               	lea	rdi, [8*rsi]
               	mov	r9, rsi
               	shr	r8, 0x23
               	lea	r11, [rsi + rsi]
               	add	rbx, rdx
               	sub	rdi, rsi
               	shl	r9, 0x5
               	shl	r8, 0x5
               	lea	r11, [r11 + 4*r11]
               	shr	rdi, 0x3
               	add	r9, rax
               	shr	r11, 0x3
               	shl	rdi, 0x5
               	vmovaps	ymm0, ymmword ptr [r8 + r9]
               	lea	r9, [rsi + 8*rsi]
               	shl	r11, 0x5
               	or	rsi, rbx
               	shr	rbx, 0x20
               	add	rdi, rax
               	shr	r9, 0x3
               	add	r11, rax
               	vmulps	ymm0, ymm0, ymmword ptr [r8 + rdi]
               	shl	r9, 0x5
               	add	r9, rax
               	vmulps	ymm0, ymm0, ymmword ptr [r8 + r9]
               	vfmadd231ps	ymm1, ymm0, ymmword ptr [r8 + r11] # ymm1 = (ymm0 * mem) + ymm1
               	cmp	r10d, ebx
               	mov	rbx, rsi
               	jne	 <L8>
               	jmp	 <L9>
<L4>:
               	vxorps	xmm1, xmm1, xmm1
               	test	rax, rax
               	je	 <L10>
<L9>:
               	mov	esi, 0x20
               	mov	rdi, rax
               	vmovups	ymmword ptr [rsp + 0x30], ymm1
               	vzeroupper
               	call	 <_ZdaPvSt11align_val_t@plt>
               	vmovups	ymm1, ymmword ptr [rsp + 0x30]
<L10>:
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vcvttss2si	eax, xmm0
               	add	rsp, 0x58
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x39a8>
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

<_ZnamSt11align_val_tRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>
