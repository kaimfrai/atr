
build/Evaluation/bin/Variant:	file format elf64-x86-64

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
               	call	qword ptr  <__libc_start_main+0x7018>
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
               	mov	rax, qword ptr  <__libc_start_main+0x7028>
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
               	mov	rax, qword ptr  <__libc_start_main+0x7030>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x7038>
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

<initializer for module Evaluation.CRTP.Shape3D>:
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

<initializer for module Evaluation.CRTP.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Circle__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.CircularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.CircularShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW13CircularShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW13CircularShape__in_chrg>
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

<initializer for module Evaluation.CRTP.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW7Ellipse__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.CircularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Rectangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW9Rectangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW9Rectangle__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.RectangularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.RectangularShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW16RectangularShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW16RectangularShape__in_chrg>
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

<initializer for module Evaluation.CRTP.Square>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW6Square__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Square__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.RectangularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW8Triangle__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.TriangularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.TriangularShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW15TriangularShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW15TriangularShape__in_chrg>
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

<initializer for module Evaluation.CRTP.Cube>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW4Cube__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW4Cube__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.Square>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.CubicBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.CubicBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW9CubicBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW9CubicBody__in_chrg>
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

<initializer for module Evaluation.CRTP.Cuboid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW6Cuboid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Cuboid__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.Rectangle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.CubicBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW7Pyramid__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.Triangle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.PyramidicBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.PyramidicBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW13PyramidicBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW13PyramidicBody__in_chrg>
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

<initializer for module Evaluation.CRTP.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW6Sphere__in_chrg>
               	jmp	 <initializer for module Evaluation.CRTP.BasicSphere>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.BasicSphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW11BasicSphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW11BasicSphere__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.SphericBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.SphericBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW11SphericBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW11SphericBody__in_chrg>
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

<initializer for module Evaluation.CRTP.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW8Cylinder__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Circle>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW4Cone__in_chrg>
               	call	 <initializer for module Evaluation.Dependency.PiFraction>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Circle>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW9Ellipsoid__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.Ellipse>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.SphericBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.CRTP.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW4CRTPW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW4CRTPW4Head__in_chrg>
               	call	 <initializer for module Evaluation.CRTP.BasicSphere>
               	pop	rax
               	jmp	 <initializer for module Evaluation.CRTP.Sphere>
               	int3
               	int3
               	int3

<_GLOBAL__sub_I_Variant.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.CRTP.Circle>
               	call	 <initializer for module Evaluation.CRTP.Ellipse>
               	call	 <initializer for module Evaluation.CRTP.Rectangle>
               	call	 <initializer for module Evaluation.CRTP.Square>
               	call	 <initializer for module Evaluation.CRTP.Triangle>
               	call	 <initializer for module Std>
               	call	 <initializer for module Evaluation.CRTP.Cube>
               	call	 <initializer for module Evaluation.CRTP.Cuboid>
               	call	 <initializer for module Evaluation.CRTP.Pyramid>
               	call	 <initializer for module Evaluation.CRTP.Sphere>
               	call	 <initializer for module Evaluation.CRTP.BasicSphere>
               	call	 <initializer for module Evaluation.CRTP.Cylinder>
               	call	 <initializer for module Evaluation.CRTP.Cone>
               	call	 <initializer for module Evaluation.CRTP.Ellipsoid>
               	call	 <initializer for module Evaluation.CRTP.Head>
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

<main>:
               	push	rbp
               	mov	rbp, rsp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	and	rsp, -0x20
               	sub	rsp, 0x6e0
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
               	movsx	r15d, byte ptr [rax]
               	add	r15d, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	word ptr [rax + rax]
<L3>:
               	lea	edx, [r15 + 4*r15]
               	movsx	ecx, cl
               	lea	r15d, [rcx + 2*rdx]
               	add	r15d, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movabs	r12, 0x180ec6d33cfd0aba
               	movsxd	rax, r15d
               	imul	rdi, rax, 0x64
               	mov	rsi, qword ptr  <__libc_start_main+0x7040>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x260], rax
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
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	rax, rcx
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x2f0], r10
               	mov	rcx, r10
               	mov	r10, r12
               	xor	r12d, r12d
               	mov	rdx, r8
               	mov	qword ptr [rsp + 0x270], r8
               	mov	qword ptr [rsp + 0x2f8], r9
               	mov	rsi, r9
               	xor	r9d, r9d
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
               	bt	r10, rdi
               	jae	 <L6>
               	xor	r9, rsi
               	xor	r12, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L6>
<L5>:
               	xor	edi, edi
               	jmp	 <L7>
               	nop	dword ptr [rax + rax]
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
               	xor	r12, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
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
               	xor	r12, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L12>
<L11>:
               	xor	edi, edi
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
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
               	xor	r12, rdx
               	xor	r14, rcx
               	xor	r11, rax
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x58], rax
               	mov	rax, r11
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x1e0], rcx
               	mov	rcx, r14
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x280], rdx
               	mov	rdx, r12
               	mov	rsi, r9
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1d8], r8
               	jmp	 <L16>
               	nop	word ptr [rax + rax]
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
               	bt	r10, rdi
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x280], rdx
               	xor	qword ptr [rsp + 0x1e0], rcx
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x280], rdx
               	xor	qword ptr [rsp + 0x1e0], rcx
               	xor	qword ptr [rsp + 0x58], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x280], rdx
               	xor	qword ptr [rsp + 0x1e0], rcx
               	xor	qword ptr [rsp + 0x58], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x280], rdx
               	xor	qword ptr [rsp + 0x1e0], rcx
               	xor	qword ptr [rsp + 0x58], rax
               	jmp	 <L27>
<L26>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1d0], rax
               	mov	rax, qword ptr [rsp + 0x58]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x1c8], rcx
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	rdx, qword ptr [rsp + 0x280]
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1c0], r8
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
               	bt	r10, rdi
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1d0], rax
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
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1d0], rax
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
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1d0], rax
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
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x1c8], rcx
               	xor	qword ptr [rsp + 0x1d0], rax
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b8], rax
               	mov	rax, qword ptr [rsp + 0x1d0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x1b0], rcx
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x250], rdx
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x1a8], r8
               	jmp	 <L40>
               	nop	dword ptr [rax]
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
               	bt	r10, rdi
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x250], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
               	jmp	 <L42>
<L41>:
               	xor	edi, edi
               	jmp	 <L43>
               	nop
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
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x250], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
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
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x250], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
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
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x250], rdx
               	xor	qword ptr [rsp + 0x1b0], rcx
               	xor	qword ptr [rsp + 0x1b8], rax
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a0], rax
               	mov	rax, qword ptr [rsp + 0x1b8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x198], rcx
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x240], rdx
               	mov	rdx, qword ptr [rsp + 0x250]
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x190], r8
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
               	bt	r10, rdi
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x240], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L54>
<L53>:
               	xor	edi, edi
               	jmp	 <L55>
               	nop
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x240], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x240], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x240], rdx
               	xor	qword ptr [rsp + 0x198], rcx
               	xor	qword ptr [rsp + 0x1a0], rax
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x188], rax
               	mov	rax, qword ptr [rsp + 0x1a0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x180], rcx
               	mov	rcx, qword ptr [rsp + 0x198]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x230], rdx
               	mov	rdx, qword ptr [rsp + 0x240]
               	mov	rsi, qword ptr [rsp + 0x190]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x178], r8
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
               	bt	r10, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x230], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x188], rax
               	jmp	 <L66>
<L65>:
               	xor	edi, edi
               	jmp	 <L67>
               	nop
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
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x230], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x188], rax
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
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x230], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x188], rax
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
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x230], rdx
               	xor	qword ptr [rsp + 0x180], rcx
               	xor	qword ptr [rsp + 0x188], rax
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x170], rax
               	mov	rax, qword ptr [rsp + 0x188]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x168], rcx
               	mov	rcx, qword ptr [rsp + 0x180]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x220], rdx
               	mov	rdx, qword ptr [rsp + 0x230]
               	mov	rsi, qword ptr [rsp + 0x178]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x160], r8
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
               	bt	r10, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x170], rax
               	jmp	 <L78>
<L77>:
               	xor	edi, edi
               	jmp	 <L79>
               	nop
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
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x170], rax
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x170], rax
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
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x168], rcx
               	xor	qword ptr [rsp + 0x170], rax
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x158], rax
               	mov	rax, qword ptr [rsp + 0x170]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x150], rcx
               	mov	rcx, qword ptr [rsp + 0x168]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x210], rdx
               	mov	rdx, qword ptr [rsp + 0x220]
               	mov	rsi, qword ptr [rsp + 0x160]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x148], r8
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
               	bt	r10, rdi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x158], rax
               	jmp	 <L90>
<L89>:
               	xor	edi, edi
               	jmp	 <L91>
               	nop
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
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x158], rax
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x158], rax
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
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x150], rcx
               	xor	qword ptr [rsp + 0x158], rax
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x140], rax
               	mov	rax, qword ptr [rsp + 0x158]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x138], rcx
               	mov	rcx, qword ptr [rsp + 0x150]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x200], rdx
               	mov	rdx, qword ptr [rsp + 0x210]
               	mov	rsi, qword ptr [rsp + 0x148]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x130], r8
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
               	bt	r10, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L102>
<L101>:
               	xor	edi, edi
               	jmp	 <L103>
               	nop
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
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x140], rax
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x140], rax
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
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x138], rcx
               	xor	qword ptr [rsp + 0x140], rax
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x128], rax
               	mov	rax, qword ptr [rsp + 0x140]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x120], rcx
               	mov	rcx, qword ptr [rsp + 0x138]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x1f0], rdx
               	mov	rdx, qword ptr [rsp + 0x200]
               	mov	rsi, qword ptr [rsp + 0x130]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x118], r8
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r10, rdi
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x128], rax
               	jmp	 <L114>
<L113>:
               	xor	edi, edi
               	jmp	 <L115>
               	nop
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
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x128], rax
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
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x128], rax
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
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x120], rcx
               	xor	qword ptr [rsp + 0x128], rax
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x110], rax
               	mov	rax, qword ptr [rsp + 0x128]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x108], rcx
               	mov	rcx, qword ptr [rsp + 0x120]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x18], rdx
               	mov	rdx, qword ptr [rsp + 0x1f0]
               	mov	rsi, qword ptr [rsp + 0x118]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x100], r8
               	jmp	 <L124>
               	nop
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
               	bt	r10, rdi
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x110], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x110], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x110], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x108], rcx
               	xor	qword ptr [rsp + 0x110], rax
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	mov	rax, qword ptr [rsp + 0x110]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	rcx, qword ptr [rsp + 0x108]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x50], rdx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xe8], r8
               	jmp	 <L136>
               	nop	dword ptr [rax]
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
               	bt	r10, rdi
               	jae	 <L138>
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L141>
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xf0], rcx
               	xor	qword ptr [rsp + 0xf8], rax
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	mov	rax, qword ptr [rsp + 0xf8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xd8], rcx
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x48], rdx
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0xe8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xd0], r8
               	jmp	 <L148>
               	nop	dword ptr [rax]
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
               	bt	r10, rdi
               	jae	 <L150>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L153>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
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
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
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
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xd8], rcx
               	xor	qword ptr [rsp + 0xe0], rax
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	mov	rax, qword ptr [rsp + 0xe0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xc0], rcx
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x40], rdx
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xb8], r8
               	jmp	 <L160>
               	nop	dword ptr [rax]
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
               	bt	r10, rdi
               	jae	 <L162>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	mov	rax, qword ptr [rsp + 0xc8]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xa8], rcx
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x38], rdx
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa0], r8
               	jmp	 <L172>
               	nop	dword ptr [rax]
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
               	bt	r10, rdi
               	jae	 <L174>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L177>
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
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
               	xor	qword ptr [rsp + 0xa0], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	mov	rax, qword ptr [rsp + 0xb0]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x90], rcx
               	mov	rcx, qword ptr [rsp + 0xa8]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0xa0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x88], r8
               	jmp	 <L184>
               	nop	dword ptr [rax]
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
               	bt	r10, rdi
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L186>
<L185>:
               	xor	edi, edi
               	jmp	 <L187>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	xor	qword ptr [rsp + 0x88], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L195>
<L194>:
               	xor	edi, edi
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	mov	rax, qword ptr [rsp + 0x98]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x78], rcx
               	mov	rcx, qword ptr [rsp + 0x90]
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x28], rdx
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0x88]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	jmp	 <L196>
               	nop	word ptr cs:[rax + rax]
<L198>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L197>
<L196>:
               	bt	r10, rdi
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x78], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L198>
<L197>:
               	xor	edi, edi
               	jmp	 <L199>
               	nop	word ptr cs:[rax + rax]
<L201>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L200>
<L199>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x78], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L201>
<L200>:
               	xor	edi, edi
               	jmp	 <L202>
<L204>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L203>
<L202>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rdi
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x78], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L204>
<L203>:
               	xor	edi, edi
               	jmp	 <L205>
<L207>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rsi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rsi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L206>
<L205>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rdi
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x70], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x78], rcx
               	xor	qword ptr [rsp + 0x80], rax
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x2d0], r9
               	mov	qword ptr [rsp + 0x2d8], r14
               	mov	qword ptr [rsp + 0x2e0], r11
               	mov	qword ptr [rsp + 0x2b8], rbx
               	xor	eax, eax
               	xor	ebx, ebx
               	mov	rdx, qword ptr [rsp + 0x80]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x60], rcx
               	mov	rsi, qword ptr [rsp + 0x78]
               	xor	r13d, r13d
               	mov	r11, qword ptr [rsp + 0x28]
               	mov	rdi, qword ptr [rsp + 0x70]
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x68], rcx
               	mov	rcx, r10
               	jmp	 <L208>
               	nop	dword ptr [rax]
<L210>:
               	mov	r10, r11
               	shl	r10, 0x11
               	xor	rsi, rdi
               	xor	rdx, r11
               	xor	r11, rsi
               	xor	rdi, rdx
               	xor	rsi, r10
               	rol	rdx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	mov	r10, rcx
               	je	 <L209>
<L208>:
               	bt	r10, rax
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	r13, r11
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	rbx, rdx
               	jmp	 <L210>
<L209>:
               	xor	eax, eax
               	movabs	r8, -0x2a59ed990f36c6d4
               	jmp	 <L211>
               	nop	dword ptr [rax]
<L213>:
               	mov	r10, r11
               	shl	r10, 0x11
               	xor	rsi, rdi
               	xor	rdx, r11
               	xor	r11, rsi
               	xor	rdi, rdx
               	xor	rsi, r10
               	rol	rdx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L212>
<L211>:
               	bt	r8, rax
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	r13, r11
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	rbx, rdx
               	jmp	 <L213>
<L212>:
               	xor	eax, eax
               	movabs	r8, -0x56a7d9e71fc03656
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
               	mov	r10, r11
               	shl	r10, 0x11
               	xor	rsi, rdi
               	xor	rdx, r11
               	xor	r11, rsi
               	xor	rdi, rdx
               	xor	rsi, r10
               	rol	rdx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L215>
<L214>:
               	bt	r8, rax
               	jae	 <L216>
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	r13, r11
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	rbx, rdx
               	jmp	 <L216>
<L215>:
               	xor	eax, eax
               	movabs	r8, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	dword ptr [rax]
<L219>:
               	mov	r10, r11
               	shl	r10, 0x11
               	xor	rsi, rdi
               	xor	rdx, r11
               	xor	r11, rsi
               	xor	rdi, rdx
               	xor	rsi, r10
               	rol	rdx, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L218>
<L217>:
               	bt	r8, rax
               	jae	 <L219>
               	xor	qword ptr [rsp + 0x68], rdi
               	xor	r13, r11
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	rbx, rdx
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x268], r12
               	mov	qword ptr [rsp + 0x2c0], r15
               	xor	r10d, r10d
               	xor	edx, edx
               	mov	qword ptr [rsp + 0x2c8], rbx
               	xor	esi, esi
               	mov	r15, qword ptr [rsp + 0x60]
               	xor	r9d, r9d
               	mov	r8, r13
               	mov	rax, qword ptr [rsp + 0x68]
               	xor	r11d, r11d
               	jmp	 <L220>
               	nop
<L222>:
               	mov	rdi, r8
               	shl	rdi, 0x11
               	xor	r15, rax
               	xor	rbx, r8
               	xor	r8, r15
               	xor	rax, rbx
               	xor	r15, rdi
               	rol	rbx, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L221>
<L220>:
               	bt	rcx, r10
               	jae	 <L222>
               	xor	r11, rax
               	xor	r9, r8
               	xor	rsi, r15
               	xor	rdx, rbx
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	movabs	rcx, -0x2a59ed990f36c6d4
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
<L225>:
               	mov	rdi, r8
               	shl	rdi, 0x11
               	xor	r15, rax
               	xor	rbx, r8
               	xor	r8, r15
               	xor	rax, rbx
               	xor	r15, rdi
               	rol	rbx, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L224>
<L223>:
               	bt	rcx, r10
               	jae	 <L225>
               	xor	r11, rax
               	xor	r9, r8
               	xor	rsi, r15
               	xor	rdx, rbx
               	jmp	 <L225>
<L224>:
               	xor	r10d, r10d
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L226>
               	nop	word ptr cs:[rax + rax]
<L228>:
               	mov	rdi, r8
               	shl	rdi, 0x11
               	xor	r15, rax
               	xor	rbx, r8
               	xor	r8, r15
               	xor	rax, rbx
               	xor	r15, rdi
               	rol	rbx, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L227>
<L226>:
               	bt	rcx, r10
               	jae	 <L228>
               	xor	r11, rax
               	xor	r9, r8
               	xor	rsi, r15
               	xor	rdx, rbx
               	jmp	 <L228>
<L227>:
               	xor	r10d, r10d
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rdi, r8
               	shl	rdi, 0x11
               	xor	r15, rax
               	xor	rbx, r8
               	xor	r8, r15
               	xor	rax, rbx
               	xor	r15, rdi
               	rol	rbx, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L230>
<L229>:
               	bt	rcx, r10
               	jae	 <L231>
               	xor	r11, rax
               	xor	r9, r8
               	xor	rsi, r15
               	xor	rdx, rbx
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x270]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r14, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x320], r14
               	mov	rax, qword ptr [rsp + 0x268]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x328], rax
               	mov	rax, qword ptr [rsp + 0x280]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x330], rax
               	lea	rax, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x338], rax
               	mov	rax, qword ptr [rsp + 0x250]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x340], rax
               	mov	rax, qword ptr [rsp + 0x240]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x348], rax
               	mov	rax, qword ptr [rsp + 0x230]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x220]
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x350], rax
               	lea	rax, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x358], rax
               	mov	rax, qword ptr [rsp + 0x210]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x360], rax
               	mov	rax, qword ptr [rsp + 0x200]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x368], rax
               	mov	rax, qword ptr [rsp + 0x1f0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x370], rax
               	lea	rax, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x378], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x380], rax
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r12, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x388], r12
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x390], rax
               	lea	rax, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x398], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3a0], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3a8], rax
               	lea	rax, [4*r13]
               	add	rax, r13
               	rol	rax, 0x7
               	lea	rcx, [rax + 8*rax]
               	lea	rax, [r9 + 4*r9]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x3b0], rcx
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3b8], rax
               	mov	r15, qword ptr [rsp + 0x2c0]
               	test	r15d, r15d
               	je	 <L232>
               	mov	rdi, rcx
               	mov	ecx, r15d
               	mov	rax, qword ptr [rsp + 0x260]
               	lea	r8, [rax + 0x60]
               	vpbroadcastq	ymm0, qword ptr  <__libc_start_main+0xc40>
               	xor	r10d, r10d
               	vpbroadcastw	xmm1, word ptr  <__libc_start_main+0xcbc>
               	lea	rbx,  <__libc_start_main+0xcc0>
               	vmovaps	ymm2, ymmword ptr  <__libc_start_main+0xc80>
               	vpbroadcastq	xmm3, qword ptr  <__libc_start_main+0xc48>
               	vmovdqa	xmm4, xmmword ptr  <__libc_start_main+0xc50>
               	vmovdqa	xmm5, xmmword ptr  <__libc_start_main+0xc60>
               	vbroadcastss	xmm6, dword ptr  <__libc_start_main+0xca0>
               	mov	r15, rdi
               	mov	qword ptr [rsp + 0x308], rcx
               	jmp	 <L233>
               	nop
<L237>:
               	vpblendd	ymm7, ymm8, ymm7, 0xc0  # ymm7 = ymm8[0,1,2,3,4,5],ymm7[6,7]
               	vpermq	ymm7, ymm7, 0x93        # ymm7 = ymm7[3,0,1,2]
               	vmovdqu	ymm8, ymmword ptr [rsp + 0x320]
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x360]
               	vmovdqu	ymm10, ymmword ptr [rsp + 0x380]
               	vmovdqu	ymm11, ymmword ptr [rsp + 0x3a0]
               	vpsrlq	ymm8, ymm8, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x320], ymm8
               	vpsrlq	ymm7, ymm7, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x340], ymm7
               	vpsrlq	ymm7, ymm9, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x360], ymm7
               	vpsrlq	ymm7, ymm10, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x380], ymm7
               	vpsrlq	ymm9, ymm11, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3a0], ymm9
               	vmovq	r14, xmm8
               	vextracti128	xmm8, ymm9, 0x1
               	vmovq	r15, xmm8
               	vpextrq	r12, xmm7, 0x1
               	add	r8, 0x64
               	cmp	rcx, r10
               	je	 <L234>
<L233>:
               	vmovdqu	ymm7, ymmword ptr [rsp + 0x328]
               	vmovdqu	ymm8, ymmword ptr [rsp + 0x348]
               	vpand	ymm9, ymm8, ymm0
               	vpand	ymm10, ymm7, ymm0
               	vpackusdw	ymm9, ymm10, ymm9
               	vextracti128	xmm10, ymm9, 0x1
               	vpackusdw	xmm9, xmm9, xmm10
               	vpshufd	xmm9, xmm9, 0xd8        # xmm9 = xmm9[0,2,1,3]
               	vpackuswb	xmm10, xmm9, xmm9
               	vmovdqu	xmm9, xmmword ptr [rsp + 0x368]
               	vpshufb	xmm9, xmm9, xmm1
               	movzx	eax, r14b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	edi, [rax + 2*rax]
               	lea	eax, [rax + 4*rdi]
               	sub	r14b, al
               	movzx	eax, r14b
               	movsxd	rax, dword ptr [rbx + 4*rax]
               	add	rax, rbx
               	jmp	rax
               	mov	byte ptr [r8], 0x0
               	jmp	 <L235>
               	mov	byte ptr [r8], 0xb
               	jmp	 <L236>
               	vpextrb	eax, xmm10, 0x7
               	vcvtsi2ss	xmm11, xmm14, eax
               	mov	byte ptr [r8], 0x4
               	vmovss	dword ptr [r8 - 0x40], xmm11
               	vpunpcklbw	xmm9, xmm10, xmm9 # xmm9 = xmm10[0],xmm9[0],xmm10[1],xmm9[1],xmm10[2],xmm9[2],xmm10[3],xmm9[3],xmm10[4],xmm9[4],xmm10[5],xmm9[5],xmm10[6],xmm9[6],xmm10[7],xmm9[7]
               	vpshufb	xmm9, xmm9, xmm3
               	vpmovzxbd	ymm9, xmm9      # ymm9 = xmm9[0],zero,zero,zero,xmm9[1],zero,zero,zero,xmm9[2],zero,zero,zero,xmm9[3],zero,zero,zero,xmm9[4],zero,zero,zero,xmm9[5],zero,zero,zero,xmm9[6],zero,zero,zero,xmm9[7],zero,zero,zero
               	vcvtdq2ps	ymm9, ymm9
               	vmovups	ymmword ptr [r8 - 0x60], ymm9
               	inc	r10
               	test	r10b, 0x7
               	jne	 <L237>
               	jmp	 <L238>
               	mov	byte ptr [r8], 0xc
               	vpmovzxbd	ymm9, xmm10     # ymm9 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm9, ymm9
               	vpermilps	ymm10, ymm9, ymm2
               	vmovups	ymmword ptr [r8 - 0x60], ymm10
               	vmovdqu	xmm10, xmmword ptr [rsp + 0x378]
               	vpshufb	xmm10, xmm10, xmm5
               	vcvtdq2ps	xmm10, xmm10
               	movzx	eax, r12b
               	vcvtsi2ss	xmm11, xmm14, eax
               	vmovlps	qword ptr [r8 - 0x40], xmm10
               	vmovss	dword ptr [r8 - 0x38], xmm11
               	vshufps	xmm9, xmm9, xmm9, 0xff  # xmm9 = xmm9[3,3,3,3]
               	vmovss	dword ptr [r8 - 0x34], xmm9
               	vmovups	xmm12, xmmword ptr [rsp + 0x390]
               	vshufps	xmm12, xmm12, xmmword ptr [rsp + 0x3a0], 0x88 # xmm12 = xmm12[0,2],mem[0,2]
               	vandps	xmm12, xmm12, xmm6
               	vcvtdq2ps	xmm12, xmm12
               	vshufps	xmm13, xmm12, xmm12, 0xd8 # xmm13 = xmm12[0,2,1,3]
               	vmovups	xmmword ptr [r8 - 0x30], xmm13
               	vmovlps	qword ptr [r8 - 0x20], xmm10
               	movzx	eax, r15b
               	vcvtsi2ss	xmm10, xmm14, eax
               	vmovss	dword ptr [r8 - 0x18], xmm11
               	vmovss	dword ptr [r8 - 0x14], xmm9
               	vmovss	dword ptr [r8 - 0x10], xmm10
               	vshufps	xmm9, xmm12, xmm12, 0xe6 # xmm9 = xmm12[2,1,2,3]
               	vmovlps	qword ptr [r8 - 0xc], xmm9
               	vextractps	dword ptr [r8 - 0x4], xmm12, 0x3
               	inc	r10
               	test	r10b, 0x7
               	jne	 <L237>
               	jmp	 <L238>
               	mov	byte ptr [r8], 0x9
               	jmp	 <L239>
               	mov	byte ptr [r8], 0x2
               	jmp	 <L240>
               	mov	byte ptr [r8], 0x3
               	jmp	 <L235>
               	mov	byte ptr [r8], 0x7
               	vpunpcklbw	xmm11, xmm10, xmm9 # xmm11 = xmm10[0],xmm9[0],xmm10[1],xmm9[1],xmm10[2],xmm9[2],xmm10[3],xmm9[3],xmm10[4],xmm9[4],xmm10[5],xmm9[5],xmm10[6],xmm9[6],xmm10[7],xmm9[7]
               	vpshufb	xmm11, xmm11, xmm3
               	vpmovzxbd	ymm11, xmm11    # ymm11 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero,xmm11[4],zero,zero,zero,xmm11[5],zero,zero,zero,xmm11[6],zero,zero,zero,xmm11[7],zero,zero,zero
               	vcvtdq2ps	ymm11, ymm11
               	vpsrlq	xmm10, xmm10, 0x38
               	vpblendvb	xmm9, xmm9, xmm10, xmm4
               	vmovups	ymmword ptr [r8 - 0x60], ymm11
               	jmp	 <L241>
               	mov	byte ptr [r8], 0x1
<L240>:
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm2
               	vmovups	ymmword ptr [r8 - 0x60], ymm10
               	vpextrb	eax, xmm9, 0x0
               	jmp	 <L242>
               	mov	byte ptr [r8], 0x5
               	jmp	 <L235>
               	mov	byte ptr [r8], 0x6
<L236>:
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm2
               	vmovups	ymmword ptr [r8 - 0x60], ymm10
<L241>:
               	vpmovzxbd	xmm9, xmm9      # xmm9 = xmm9[0],zero,zero,zero,xmm9[1],zero,zero,zero,xmm9[2],zero,zero,zero,xmm9[3],zero,zero,zero
               	vcvtdq2ps	xmm9, xmm9
               	vmovlps	qword ptr [r8 - 0x40], xmm9
               	inc	r10
               	test	r10b, 0x7
               	jne	 <L237>
               	jmp	 <L238>
               	mov	byte ptr [r8], 0xa
<L239>:
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm2
               	vmovups	ymmword ptr [r8 - 0x60], ymm10
               	vpextrb	eax, xmm9, 0x1
<L242>:
               	vcvtsi2ss	xmm9, xmm14, eax
               	vmovss	dword ptr [r8 - 0x40], xmm9
               	inc	r10
               	test	r10b, 0x7
               	jne	 <L237>
               	jmp	 <L238>
               	mov	byte ptr [r8], 0x8
<L235>:
               	vpmovzxbd	ymm9, xmm10     # ymm9 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm9, ymm9
               	vpermilps	ymm9, ymm9, ymm2
               	vmovups	ymmword ptr [r8 - 0x60], ymm9
               	inc	r10
               	test	r10b, 0x7
               	jne	 <L237>
<L238>:
               	mov	r14, qword ptr [rsp + 0x270]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x2f8]
               	mov	qword ptr [rsp + 0x310], r10
               	mov	r10, qword ptr [rsp + 0x2f0]
               	xor	r10, rdi
               	mov	rbx, qword ptr [rsp + 0x2e8]
               	xor	rbx, r14
               	xor	r14, r10
               	mov	qword ptr [rsp + 0x270], r14
               	xor	rdi, rbx
               	mov	qword ptr [rsp + 0x2f8], rdi
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x2e8], rbx
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x2f0], r10
               	mov	r14, qword ptr [rsp + 0x268]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	r10, qword ptr [rsp + 0x2d8]
               	mov	rbx, qword ptr [rsp + 0x2d0]
               	xor	r10, rbx
               	mov	rdi, qword ptr [rsp + 0x2e0]
               	xor	rdi, r14
               	xor	r14, r10
               	mov	qword ptr [rsp + 0x268], r14
               	xor	rbx, rdi
               	mov	qword ptr [rsp + 0x2d0], rbx
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x2d8], r10
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x2e0], rdi
               	mov	r10, qword ptr [rsp + 0x280]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	mov	rbx, qword ptr [rsp + 0x1d8]
               	xor	rdi, rbx
               	xor	qword ptr [rsp + 0x58], r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0x280], r10
               	xor	rbx, qword ptr [rsp + 0x58]
               	mov	qword ptr [rsp + 0x1d8], rbx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x1e0], rdi
               	rol	qword ptr [rsp + 0x58], 0x2d
               	mov	qword ptr [rsp + 0x318], r8
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x1c8]
               	mov	r14, qword ptr [rsp + 0x1c0]
               	mov	qword ptr [rsp + 0x278], r13
               	xor	rbx, r14
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	xor	rdi, r8
               	xor	r8, rbx
               	xor	r14, rdi
               	mov	qword ptr [rsp + 0x1c0], r14
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0x1c8], rbx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x1d0], rdi
               	mov	r10, qword ptr [rsp + 0x250]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rbx, qword ptr [rsp + 0x1b0]
               	mov	rdi, qword ptr [rsp + 0x1a8]
               	mov	qword ptr [rsp + 0x300], r11
               	mov	r11, rdi
               	xor	rbx, rdi
               	mov	rdi, qword ptr [rsp + 0x1b8]
               	xor	rdi, r10
               	xor	r10, rbx
               	mov	qword ptr [rsp + 0x250], r10
               	xor	r11, rdi
               	mov	qword ptr [rsp + 0x1a8], r11
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0x1b0], rbx
               	mov	r10, qword ptr [rsp + 0x240]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x198]
               	mov	rbx, qword ptr [rsp + 0x190]
               	xor	r11, rbx
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	xor	rdi, r10
               	xor	r10, r11
               	mov	qword ptr [rsp + 0x240], r10
               	xor	rbx, rdi
               	mov	qword ptr [rsp + 0x190], rbx
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x198], r11
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x1a0], rdi
               	mov	r10, qword ptr [rsp + 0x230]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x180]
               	mov	rbx, qword ptr [rsp + 0x178]
               	xor	r11, rbx
               	mov	rdi, qword ptr [rsp + 0x188]
               	xor	rdi, r10
               	xor	r10, r11
               	mov	qword ptr [rsp + 0x230], r10
               	xor	rbx, rdi
               	mov	qword ptr [rsp + 0x178], rbx
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x180], r11
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x188], rdi
               	mov	r10, qword ptr [rsp + 0x220]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x168]
               	mov	rbx, qword ptr [rsp + 0x160]
               	xor	r11, rbx
               	mov	rdi, qword ptr [rsp + 0x170]
               	xor	rdi, r10
               	xor	r10, r11
               	mov	qword ptr [rsp + 0x220], r10
               	xor	rbx, rdi
               	mov	qword ptr [rsp + 0x160], rbx
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x168], r11
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x170], rdi
               	mov	r10, qword ptr [rsp + 0x210]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x150]
               	mov	r15, qword ptr [rsp + 0x148]
               	xor	r11, r15
               	mov	rdi, qword ptr [rsp + 0x158]
               	xor	rdi, r10
               	xor	r10, r11
               	mov	qword ptr [rsp + 0x210], r10
               	xor	r15, rdi
               	mov	qword ptr [rsp + 0x148], r15
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x150], r11
               	mov	r10, qword ptr [rsp + 0x200]
               	mov	rcx, r10
               	shl	rcx, 0x11
               	mov	r11, qword ptr [rsp + 0x138]
               	mov	rax, qword ptr [rsp + 0x130]
               	xor	r11, rax
               	mov	rdi, qword ptr [rsp + 0x140]
               	xor	rdi, r10
               	xor	r10, r11
               	mov	qword ptr [rsp + 0x200], r10
               	xor	rax, rdi
               	mov	qword ptr [rsp + 0x130], rax
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x138], r11
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x140], rdi
               	mov	r10, qword ptr [rsp + 0x1f0]
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	rdx, r10
               	shl	rdx, 0x11
               	mov	rdi, qword ptr [rsp + 0x120]
               	mov	rax, qword ptr [rsp + 0x118]
               	xor	rdi, rax
               	mov	rcx, qword ptr [rsp + 0x128]
               	xor	rcx, r10
               	xor	r10, rdi
               	mov	qword ptr [rsp + 0x1f0], r10
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x118], rax
               	xor	rdi, rdx
               	mov	qword ptr [rsp + 0x120], rdi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x128], rcx
               	mov	r10, qword ptr [rsp + 0x18]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x108]
               	mov	rdi, qword ptr [rsp + 0x100]
               	xor	rdx, rdi
               	mov	rcx, qword ptr [rsp + 0x110]
               	xor	rcx, r10
               	xor	r10, rdx
               	mov	qword ptr [rsp + 0x18], r10
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0x100], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x108], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x110], rcx
               	mov	r13, qword ptr [rsp + 0x50]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xf0]
               	mov	rdi, qword ptr [rsp + 0xe8]
               	xor	rdx, rdi
               	mov	rcx, qword ptr [rsp + 0xf8]
               	xor	rcx, r13
               	xor	r13, rdx
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0xe8], rdi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf8], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xf0], rdx
               	mov	r12, qword ptr [rsp + 0x48]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xd8]
               	mov	rdi, qword ptr [rsp + 0xd0]
               	xor	rdx, rdi
               	mov	rcx, qword ptr [rsp + 0xe0]
               	xor	rcx, r12
               	xor	r12, rdx
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0xd0], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xd8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xe0], rcx
               	mov	rbx, qword ptr [rsp + 0x40]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc0]
               	mov	rdi, qword ptr [rsp + 0xb8]
               	xor	rdx, rdi
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	rdi, rcx
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xc0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xc8], rcx
               	mov	r11, qword ptr [rsp + 0x38]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xa8]
               	xor	rdx, qword ptr [rsp + 0xa0]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xa8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	rdi, qword ptr [rsp + 0x60]
               	mov	r10, qword ptr [rsp + 0x30]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x90]
               	xor	rdx, qword ptr [rsp + 0x88]
               	mov	rcx, qword ptr [rsp + 0x98]
               	xor	rcx, r10
               	xor	r10, rdx
               	xor	qword ptr [rsp + 0x88], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x98], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x90], rdx
               	mov	r15, r9
               	mov	r9, rsi
               	mov	rsi, qword ptr [rsp + 0x28]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x78]
               	xor	rdx, qword ptr [rsp + 0x70]
               	mov	rcx, qword ptr [rsp + 0x80]
               	xor	rcx, rsi
               	xor	rsi, rdx
               	xor	qword ptr [rsp + 0x70], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x78], rdx
               	mov	rdx, qword ptr [rsp + 0x20]
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x80], rcx
               	mov	rax, qword ptr [rsp + 0x278]
               	shl	rax, 0x11
               	xor	rdi, qword ptr [rsp + 0x68]
               	mov	rcx, qword ptr [rsp + 0x2c8]
               	xor	rcx, qword ptr [rsp + 0x278]
               	xor	qword ptr [rsp + 0x278], rdi
               	xor	qword ptr [rsp + 0x68], rcx
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x60], rdi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	rax, r15
               	shl	rax, 0x11
               	xor	r9, qword ptr [rsp + 0x300]
               	xor	rdx, r15
               	xor	r15, r9
               	xor	r9, rax
               	mov	rax, qword ptr [rsp + 0x270]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r14, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x268]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x280]
               	lea	rdi, [rcx + 4*rcx]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x20], r8
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	lea	rcx, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x320], r14
               	mov	qword ptr [rsp + 0x328], rax
               	mov	rax, qword ptr [rsp + 0x250]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x330], rdi
               	mov	rdi, qword ptr [rsp + 0x240]
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x338], rcx
               	mov	rcx, qword ptr [rsp + 0x308]
               	mov	r8, qword ptr [rsp + 0x230]
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	mov	qword ptr [rsp + 0x340], rax
               	mov	rax, qword ptr [rsp + 0x220]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r8, [r8 + 8*r8]
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x348], rdi
               	mov	rdi, qword ptr [rsp + 0x210]
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x350], r8
               	mov	r8, qword ptr [rsp + 0x200]
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x358], rax
               	mov	rax, qword ptr [rsp + 0x1f0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x360], rdi
               	mov	rdi, qword ptr [rsp + 0x18]
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x368], r8
               	mov	qword ptr [rsp + 0x50], r13
               	lea	r8, [4*r13]
               	add	r8, r13
               	rol	r8, 0x7
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x370], rax
               	mov	qword ptr [rsp + 0x48], r12
               	lea	rax, [r12 + 4*r12]
               	mov	r13, qword ptr [rsp + 0x278]
               	rol	rax, 0x7
               	lea	r12, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x378], rdi
               	mov	qword ptr [rsp + 0x40], rbx
               	lea	rax, [rbx + 4*rbx]
               	lea	rbx,  <__libc_start_main+0xcc0>
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x380], r8
               	mov	r8, qword ptr [rsp + 0x318]
               	mov	qword ptr [rsp + 0x38], r11
               	lea	rdi, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x300]
               	rol	rdi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x388], r12
               	mov	qword ptr [rsp + 0x390], rax
               	mov	qword ptr [rsp + 0x30], r10
               	lea	rax, [r10 + 4*r10]
               	mov	r10, qword ptr [rsp + 0x310]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x398], rdi
               	mov	qword ptr [rsp + 0x28], rsi
               	lea	rdi, [rsi + 4*rsi]
               	mov	rsi, r9
               	mov	r9, r15
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x3a0], rax
               	lea	rax, [4*r13]
               	add	rax, r13
               	rol	rax, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r15, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3a8], rdi
               	lea	rax, [r9 + 4*r9]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3b0], r15
               	mov	qword ptr [rsp + 0x3b8], rax
               	xor	r11, rdx
               	rol	rdx, 0x2d
               	add	r8, 0x64
               	cmp	rcx, r10
               	jne	 <L233>
<L234>:
               	imul	rdx, r10, 0x64
               	test	rdx, rdx
               	je	 <L243>
               	mov	r15, qword ptr [rsp + 0x260]
               	add	rdx, r15
               	mov	ecx, 0x1
               	xor	esi, esi
               	lea	rbx,  <std::__detail::__variant::__gen_vtable<std::__detail::__variant::__deduce_visit_result<float>, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&>::_S_vtable>
               	lea	r13, [rsp + 0x1ef]
               	mov	r14d, 0x1
               	mov	qword ptr [rsp + 0x18], rdx
               	jmp	 <L244>
               	nop	word ptr cs:[rax + rax]
<L246>:
               	add	r15, 0x320
               	mov	ecx, dword ptr [rsp + 0x280]
               	inc	ecx
               	popcnt	r14d, ecx
               	mov	esi, r12d
               	mov	rdx, qword ptr [rsp + 0x18]
               	cmp	r15, rdx
               	je	 <L245>
<L244>:
               	mov	r12, rsi
               	mov	dword ptr [rsp + 0x280], ecx
               	movzx	eax, byte ptr [r15 + 0x60]
               	mov	rdi, r13
               	mov	rsi, r15
               	vzeroupper
               	call	qword ptr [rbx + 8*rax]
               	vmovdqa	xmmword ptr [rsp + 0x250], xmm0
               	lea	rsi, [r15 + 0x64]
               	movzx	eax, byte ptr [r15 + 0xc4]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovdqa	xmmword ptr [rsp + 0x240], xmm0
               	lea	rsi, [r15 + 0xc8]
               	movzx	eax, byte ptr [r15 + 0x128]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovdqa	xmmword ptr [rsp + 0x230], xmm0
               	lea	rsi, [r15 + 0x12c]
               	movzx	eax, byte ptr [r15 + 0x18c]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovdqa	xmmword ptr [rsp + 0x220], xmm0
               	lea	rsi, [r15 + 0x190]
               	movzx	eax, byte ptr [r15 + 0x1f0]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovdqa	xmmword ptr [rsp + 0x210], xmm0
               	lea	rsi, [r15 + 0x1f4]
               	movzx	eax, byte ptr [r15 + 0x254]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovdqa	xmmword ptr [rsp + 0x200], xmm0
               	lea	rsi, [r15 + 0x258]
               	movzx	eax, byte ptr [r15 + 0x2b8]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovdqa	xmmword ptr [rsp + 0x1f0], xmm0
               	lea	rsi, [r15 + 0x2bc]
               	movzx	eax, byte ptr [r15 + 0x31c]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovaps	xmm1, xmmword ptr [rsp + 0x250]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x240], 0x10 # xmm1 = xmm1[0],mem[0],xmm1[2,3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x230], 0x20 # xmm1 = xmm1[0,1],mem[0],xmm1[3]
               	vinsertps	xmm1, xmm1, dword ptr [rsp + 0x220], 0x30 # xmm1 = xmm1[0,1,2],mem[0]
               	vmovaps	xmm2, xmmword ptr [rsp + 0x210]
               	vinsertps	xmm2, xmm2, dword ptr [rsp + 0x200], 0x10 # xmm2 = xmm2[0],mem[0],xmm2[2,3]
               	vinsertps	xmm2, xmm2, dword ptr [rsp + 0x1f0], 0x20 # xmm2 = xmm2[0,1],mem[0],xmm2[3]
               	vinsertps	xmm0, xmm2, xmm0, 0x30 # xmm0 = xmm2[0,1,2],xmm0[0]
               	mov	rdx, r12
               	movsxd	rcx, edx
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x330], xmm0
               	vmovaps	xmmword ptr [rsp + rax + 0x320], xmm1
               	mov	r12d, r14d
               	sub	ecx, r14d
               	jb	 <L246>
               	mov	eax, edx
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x320]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L247>
               	lea	rsi, [rsp + 0x300]
               	add	rdx, rsi
               	xor	esi, esi
<L248>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L248>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, r12d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L246>
               	jmp	 <L249>
<L247>:
               	mov	rcx, rax
               	mov	edx, r12d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L246>
<L249>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	lea	rsi, [rsp + 0x300]
               	add	rax, rsi
               	inc	rcx
               	nop	word ptr cs:[rax + rax]
<L250>:
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
               	jg	 <L250>
               	jmp	 <L246>
<L245>:
               	cmp	r12d, 0x2
               	mov	r14, qword ptr [rsp + 0x2b8]
               	mov	r15, qword ptr [rsp + 0x2c0]
               	jb	 <L251>
               	mov	eax, r12d
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x300]
               	lea	rdx, [rsp + 0x320]
               	test	r12b, 0x1
               	jne	 <L252>
               	dec	rax
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L252>:
               	cmp	r12d, 0x2
               	je	 <L251>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	add	rax, rdx
               	add	rax, -0x40
               	nop	word ptr cs:[rax + rax]
<L253>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L253>
               	jmp	 <L251>
<L232>:
               	mov	r14, qword ptr [rsp + 0x2b8]
<L251>:
               	vmovaps	ymm0, ymmword ptr [rsp + 0x320]
               	vmovaps	ymmword ptr [rsp + 0x280], ymm0
               	mov	rdi, qword ptr [rsp + 0x260]
               	test	rdi, rdi
               	jne	 <L254>
               	cmp	r14d, 0x2a
               	je	 <L255>
               	jmp	 <L256>
<L243>:
               	mov	r14, qword ptr [rsp + 0x2b8]
               	mov	r15, qword ptr [rsp + 0x2c0]
               	mov	rdi, qword ptr [rsp + 0x260]
<L254>:
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	cmp	r14d, 0x2a
               	jne	 <L256>
<L255>:
               	cmp	r15d, 0x186a0
               	jne	 <L256>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x280]
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xcb4>
               	jne	 <L257>
<L256>:
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
<L257>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x280], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x280]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x7048>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	int3

<__clang_call_terminate>:
               	push	rax
               	call	 <__cxa_begin_catch@plt>
               	call	 <_ZSt9terminatev@plt>
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 0ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xca8>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 1ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xca8>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 2ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 3ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 4ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcb0>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 5ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 6ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 7ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcac>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 12ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 8ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0xcb8>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 9ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xca8>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 10ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xca4>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 11ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcb8>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x7020>
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

<_ZSt9terminatev@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>

<__cxa_begin_catch@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	push	0x5
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x48>
               	push	0x6
               	jmp	 <.plt>
