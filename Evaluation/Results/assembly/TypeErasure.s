
build/Evaluation/bin/TypeErasure:	file format elf64-x86-64

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
               	call	qword ptr  <__libc_start_main+0x7600>
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
               	mov	rax, qword ptr  <__libc_start_main+0x7610>
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
               	mov	rax, qword ptr  <__libc_start_main+0x7618>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x7620>
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

<_GLOBAL__sub_I_TypeErasure.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
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
               	sub	rsp, 0x3f8
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
               	mov	qword ptr [rsp + 0xb0], rcx
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
<L3>:
               	mov	rdx, qword ptr [rsp + 0xb0]
               	lea	edx, [rdx + 4*rdx]
               	movsx	ecx, cl
               	lea	ecx, [rcx + 2*rdx]
               	add	ecx, -0x30
               	mov	qword ptr [rsp + 0xb0], rcx
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	mov	rdi, qword ptr [rsp + 0xb0]
               	shl	rdi, 0x20
               	mov	eax, ebx
               	mov	qword ptr [rsp + 0x390], rax
               	mov	qword ptr [rsp + 0x398], rdi
               	sar	rdi, 0x1b
               	mov	rsi, qword ptr  <__libc_start_main+0x7628>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x250], rax
               	movsxd	rax, ebx
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <__libc_start_main+0xf00>
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
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xf60>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xf48>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xf50>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xf58>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovq	rdi, xmm0
               	vpextrq	r10, xmm0, 0x1
               	vmovdqu	ymmword ptr [rsp + 0x3b0], ymm0
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	r8, xmm0
               	vpextrq	r9, xmm0, 0x1
               	xor	r12d, r12d
               	xor	r13d, r13d
               	xor	r15d, r15d
               	xor	eax, eax
               	xor	ecx, ecx
               	mov	rdx, r10
               	mov	qword ptr [rsp + 0x8], r10
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
<L6>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, rdx
               	rol	r9, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L5>
<L4>:
               	movabs	rdx, 0x180ec6d33cfd0aba
               	bt	rdx, rcx
               	jae	 <L6>
               	xor	r15, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	rax, r9
               	jmp	 <L6>
<L5>:
               	movabs	rcx, -0x2a59ed990f36c6d4
               	xor	edx, edx
               	jmp	 <L7>
               	nop
<L9>:
               	mov	rsi, r10
               	shl	rsi, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, rsi
               	rol	r9, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L8>
<L7>:
               	bt	rcx, rdx
               	jae	 <L9>
               	xor	r15, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	rax, r9
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x10], rax
               	movabs	rdx, -0x56a7d9e71fc03656
               	xor	esi, esi
               	jmp	 <L10>
               	nop	word ptr [rax + rax]
<L12>:
               	mov	r11, r10
               	shl	r11, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, r11
               	rol	r9, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L11>
<L10>:
               	bt	rdx, rsi
               	mov	rax, qword ptr [rsp + 0x10]
               	jae	 <L12>
               	xor	r15, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	rax, r9
               	mov	qword ptr [rsp + 0x10], rax
               	jmp	 <L12>
<L11>:
               	movabs	rsi, 0x39abdc4529b1661c
               	xor	r11d, r11d
               	jmp	 <L13>
<L15>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rdi
               	xor	r9, r10
               	xor	r10, r8
               	xor	rdi, r9
               	xor	r8, rbx
               	rol	r9, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L14>
<L13>:
               	bt	rsi, r11
               	jae	 <L15>
               	xor	r15, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	qword ptr [rsp + 0x10], r9
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x220], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x70], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x218], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x210], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x10]
               	mov	r8, r13
               	mov	r9, r12
               	mov	r10, r15
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
<L18>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L17>
<L16>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x218], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	jmp	 <L18>
<L17>:
               	xor	r11d, r11d
               	jmp	 <L19>
               	nop	word ptr [rax + rax]
<L21>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L20>
<L19>:
               	bt	rcx, r11
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x218], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	jmp	 <L21>
<L20>:
               	xor	r11d, r11d
               	jmp	 <L22>
               	nop	dword ptr [rax]
<L24>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L23>
<L22>:
               	bt	rdx, r11
               	jae	 <L24>
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x218], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	jmp	 <L24>
<L23>:
               	xor	r11d, r11d
               	jmp	 <L25>
               	nop	dword ptr [rax]
<L27>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L26>
<L25>:
               	bt	rsi, r11
               	jae	 <L27>
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0x70], r9
               	xor	qword ptr [rsp + 0x218], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	jmp	 <L27>
<L26>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x208], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x200], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x210]
               	mov	r8, qword ptr [rsp + 0x218]
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	r10, qword ptr [rsp + 0x220]
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
<L30>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L29>
<L28>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	jmp	 <L30>
<L29>:
               	xor	r11d, r11d
               	jmp	 <L31>
               	nop	word ptr [rax + rax]
<L33>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L32>
<L31>:
               	bt	rcx, r11
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	jmp	 <L33>
<L32>:
               	xor	r11d, r11d
               	jmp	 <L34>
<L36>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L35>
<L34>:
               	bt	rdx, r11
               	jae	 <L36>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	jmp	 <L36>
<L35>:
               	xor	r11d, r11d
               	jmp	 <L37>
<L39>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L38>
<L37>:
               	bt	rsi, r11
               	jae	 <L39>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x68], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1f8]
               	mov	r8, qword ptr [rsp + 0x200]
               	mov	r9, qword ptr [rsp + 0xa8]
               	mov	r10, qword ptr [rsp + 0x208]
               	jmp	 <L40>
               	nop	word ptr cs:[rax + rax]
<L42>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L41>
<L40>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	jmp	 <L42>
<L41>:
               	xor	r11d, r11d
               	jmp	 <L43>
               	nop	word ptr [rax + rax]
<L45>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L44>
<L43>:
               	bt	rcx, r11
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	jmp	 <L45>
<L44>:
               	xor	r11d, r11d
               	jmp	 <L46>
               	nop	dword ptr [rax]
<L48>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L47>
<L46>:
               	bt	rdx, r11
               	jae	 <L48>
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	jmp	 <L48>
<L47>:
               	xor	r11d, r11d
               	jmp	 <L49>
               	nop	dword ptr [rax]
<L51>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L50>
<L49>:
               	bt	rsi, r11
               	jae	 <L51>
               	xor	qword ptr [rsp + 0x1f0], r10
               	xor	qword ptr [rsp + 0x68], r9
               	xor	qword ptr [rsp + 0x1e8], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	jmp	 <L51>
<L50>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x60], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	mov	r8, qword ptr [rsp + 0x1e8]
               	mov	r9, qword ptr [rsp + 0x68]
               	mov	r10, qword ptr [rsp + 0x1f0]
               	jmp	 <L52>
               	nop
<L54>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L53>
<L52>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L54>
<L53>:
               	xor	r11d, r11d
               	jmp	 <L55>
               	nop	word ptr [rax + rax]
<L57>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L56>
<L55>:
               	bt	rcx, r11
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L57>
<L56>:
               	xor	r11d, r11d
               	jmp	 <L58>
               	nop	dword ptr [rax]
<L60>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L59>
<L58>:
               	bt	rdx, r11
               	jae	 <L60>
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L60>
<L59>:
               	xor	r11d, r11d
               	jmp	 <L61>
               	nop	dword ptr [rax]
<L63>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L62>
<L61>:
               	bt	rsi, r11
               	jae	 <L63>
               	xor	qword ptr [rsp + 0x1d8], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0x1d0], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x58], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	mov	r8, qword ptr [rsp + 0x1d0]
               	mov	r9, qword ptr [rsp + 0x60]
               	mov	r10, qword ptr [rsp + 0x1d8]
               	jmp	 <L64>
               	nop
<L66>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L65>
<L64>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L66>
<L65>:
               	xor	r11d, r11d
               	jmp	 <L67>
               	nop	word ptr [rax + rax]
<L69>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L68>
<L67>:
               	bt	rcx, r11
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L69>
<L68>:
               	xor	r11d, r11d
               	jmp	 <L70>
               	nop	dword ptr [rax]
<L72>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L71>
<L70>:
               	bt	rdx, r11
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L72>
<L71>:
               	xor	r11d, r11d
               	jmp	 <L73>
               	nop	dword ptr [rax]
<L75>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L74>
<L73>:
               	bt	rsi, r11
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x1c0], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1b8], r8
               	xor	qword ptr [rsp + 0x1b0], rdi
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x50], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x198], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1b0]
               	mov	r8, qword ptr [rsp + 0x1b8]
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	r10, qword ptr [rsp + 0x1c0]
               	jmp	 <L76>
               	nop
<L78>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L77>
<L76>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L78>
<L77>:
               	xor	r11d, r11d
               	jmp	 <L79>
               	nop	word ptr [rax + rax]
<L81>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L80>
<L79>:
               	bt	rcx, r11
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L81>
<L80>:
               	xor	r11d, r11d
               	jmp	 <L82>
               	nop	dword ptr [rax]
<L84>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L83>
<L82>:
               	bt	rdx, r11
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L84>
<L83>:
               	xor	r11d, r11d
               	jmp	 <L85>
               	nop	dword ptr [rax]
<L87>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L86>
<L85>:
               	bt	rsi, r11
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x1a8], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1a0], r8
               	xor	qword ptr [rsp + 0x198], rdi
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x48], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x188], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x180], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x198]
               	mov	r8, qword ptr [rsp + 0x1a0]
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	r10, qword ptr [rsp + 0x1a8]
               	jmp	 <L88>
               	nop
<L90>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L89>
<L88>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L90>
<L89>:
               	xor	r11d, r11d
               	jmp	 <L91>
               	nop	word ptr [rax + rax]
<L93>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L92>
<L91>:
               	bt	rcx, r11
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L93>
<L92>:
               	xor	r11d, r11d
               	jmp	 <L94>
               	nop	dword ptr [rax]
<L96>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L95>
<L94>:
               	bt	rdx, r11
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L96>
<L95>:
               	xor	r11d, r11d
               	jmp	 <L97>
               	nop	dword ptr [rax]
<L99>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L98>
<L97>:
               	bt	rsi, r11
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x190], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x188], r8
               	xor	qword ptr [rsp + 0x180], rdi
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x170], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x180]
               	mov	r8, qword ptr [rsp + 0x188]
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	r10, qword ptr [rsp + 0x190]
               	jmp	 <L100>
               	nop
<L102>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L101>
<L100>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L102>
<L101>:
               	xor	r11d, r11d
               	jmp	 <L103>
               	nop	word ptr [rax + rax]
<L105>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L104>
<L103>:
               	bt	rcx, r11
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L105>
<L104>:
               	xor	r11d, r11d
               	jmp	 <L106>
               	nop	dword ptr [rax]
<L108>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L107>
<L106>:
               	bt	rdx, r11
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L108>
<L107>:
               	xor	r11d, r11d
               	jmp	 <L109>
               	nop	dword ptr [rax]
<L111>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L110>
<L109>:
               	bt	rsi, r11
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x178], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x170], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x38], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x168]
               	mov	r8, qword ptr [rsp + 0x170]
               	mov	r9, qword ptr [rsp + 0x40]
               	mov	r10, qword ptr [rsp + 0x178]
               	jmp	 <L112>
               	nop
<L114>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L113>
<L112>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	jmp	 <L114>
<L113>:
               	xor	r11d, r11d
               	jmp	 <L115>
               	nop	word ptr [rax + rax]
<L117>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L116>
<L115>:
               	bt	rcx, r11
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	jmp	 <L117>
<L116>:
               	xor	r11d, r11d
               	jmp	 <L118>
               	nop	dword ptr [rax]
<L120>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L119>
<L118>:
               	bt	rdx, r11
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	jmp	 <L120>
<L119>:
               	xor	r11d, r11d
               	jmp	 <L121>
               	nop	dword ptr [rax]
<L123>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L122>
<L121>:
               	bt	rsi, r11
               	jae	 <L123>
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x30], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x140], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x158]
               	mov	r8, qword ptr [rsp + 0x160]
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	r10, qword ptr [rsp + 0x120]
               	jmp	 <L124>
               	nop
<L126>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L125>
<L124>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	jmp	 <L126>
<L125>:
               	xor	r11d, r11d
               	jmp	 <L127>
               	nop	word ptr [rax + rax]
<L129>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L128>
<L127>:
               	bt	rcx, r11
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	jmp	 <L129>
<L128>:
               	xor	r11d, r11d
               	jmp	 <L130>
               	nop	dword ptr [rax]
<L132>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L131>
<L130>:
               	bt	rdx, r11
               	jae	 <L132>
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	jmp	 <L132>
<L131>:
               	xor	r11d, r11d
               	jmp	 <L133>
               	nop	dword ptr [rax]
<L135>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L134>
<L133>:
               	bt	rsi, r11
               	jae	 <L135>
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x28], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x128], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x140]
               	mov	r8, qword ptr [rsp + 0x148]
               	mov	r9, qword ptr [rsp + 0x30]
               	mov	r10, qword ptr [rsp + 0x150]
               	jmp	 <L136>
               	nop
<L138>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L137>
<L136>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	jmp	 <L138>
<L137>:
               	xor	r11d, r11d
               	jmp	 <L139>
               	nop	word ptr [rax + rax]
<L141>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L140>
<L139>:
               	bt	rcx, r11
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	jmp	 <L141>
<L140>:
               	xor	r11d, r11d
               	jmp	 <L142>
               	nop	dword ptr [rax]
<L144>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L143>
<L142>:
               	bt	rdx, r11
               	jae	 <L144>
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	jmp	 <L144>
<L143>:
               	xor	r11d, r11d
               	jmp	 <L145>
               	nop	dword ptr [rax]
<L147>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L146>
<L145>:
               	bt	rsi, r11
               	jae	 <L147>
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	jmp	 <L147>
<L146>:
               	xor	r14d, r14d
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	ebp, ebp
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x128]
               	mov	r8, qword ptr [rsp + 0x130]
               	mov	r9, qword ptr [rsp + 0x28]
               	mov	r10, qword ptr [rsp + 0x138]
               	jmp	 <L148>
<L150>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L149>
<L148>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L150>
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x118], rdi
               	jmp	 <L150>
<L149>:
               	xor	r11d, r11d
               	jmp	 <L151>
               	nop	dword ptr [rax]
<L153>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L152>
<L151>:
               	bt	rcx, r11
               	jae	 <L153>
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x118], rdi
               	jmp	 <L153>
<L152>:
               	xor	r11d, r11d
               	jmp	 <L154>
               	nop	word ptr cs:[rax + rax]
<L156>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L155>
<L154>:
               	bt	rdx, r11
               	jae	 <L156>
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x118], rdi
               	jmp	 <L156>
<L155>:
               	xor	r11d, r11d
               	jmp	 <L157>
               	nop	word ptr cs:[rax + rax]
<L159>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L158>
<L157>:
               	bt	rsi, r11
               	jae	 <L159>
               	xor	r14, r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	rbp, r8
               	xor	qword ptr [rsp + 0x118], rdi
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x110], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x118]
               	mov	r8, rbp
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	r10, r14
               	jmp	 <L160>
               	nop
<L162>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L161>
<L160>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	jmp	 <L162>
<L161>:
               	xor	r11d, r11d
               	jmp	 <L163>
               	nop	word ptr [rax + rax]
<L165>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L164>
<L163>:
               	bt	rcx, r11
               	jae	 <L165>
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	jmp	 <L165>
<L164>:
               	xor	r11d, r11d
               	jmp	 <L166>
<L168>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L167>
<L166>:
               	bt	rdx, r11
               	jae	 <L168>
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	jmp	 <L168>
<L167>:
               	xor	r11d, r11d
               	jmp	 <L169>
<L171>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L170>
<L169>:
               	bt	rsi, r11
               	jae	 <L171>
               	xor	qword ptr [rsp + 0x110], r10
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x100], rdi
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x238], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x98], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x80], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x100]
               	mov	r8, qword ptr [rsp + 0x108]
               	mov	r9, qword ptr [rsp + 0xa0]
               	mov	r10, qword ptr [rsp + 0x110]
               	jmp	 <L172>
               	nop	dword ptr [rax + rax]
<L174>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L173>
<L172>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	jmp	 <L174>
<L173>:
               	xor	r11d, r11d
               	jmp	 <L175>
               	nop	word ptr [rax + rax]
<L177>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L176>
<L175>:
               	bt	rcx, r11
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	jmp	 <L177>
<L176>:
               	xor	r11d, r11d
               	jmp	 <L178>
<L180>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L179>
<L178>:
               	bt	rdx, r11
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	jmp	 <L180>
<L179>:
               	xor	r11d, r11d
               	jmp	 <L181>
<L183>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L182>
<L181>:
               	bt	rsi, r11
               	jae	 <L183>
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0xf8], r8
               	xor	qword ptr [rsp + 0x80], rdi
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x90], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x80]
               	mov	r8, qword ptr [rsp + 0xf8]
               	mov	r9, qword ptr [rsp + 0x98]
               	mov	r10, qword ptr [rsp + 0x238]
               	jmp	 <L184>
               	nop	dword ptr [rax + rax]
<L186>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L185>
<L184>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x230], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	jmp	 <L186>
<L185>:
               	xor	r11d, r11d
               	jmp	 <L187>
               	nop	word ptr [rax + rax]
<L189>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L188>
<L187>:
               	bt	rcx, r11
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x230], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	jmp	 <L189>
<L188>:
               	xor	r11d, r11d
               	jmp	 <L190>
<L192>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L191>
<L190>:
               	bt	rdx, r11
               	jae	 <L192>
               	xor	qword ptr [rsp + 0x230], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	jmp	 <L192>
<L191>:
               	xor	r11d, r11d
               	jmp	 <L193>
<L195>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L194>
<L193>:
               	bt	rsi, r11
               	jae	 <L195>
               	xor	qword ptr [rsp + 0x230], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	jmp	 <L195>
<L194>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x228], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xe8]
               	mov	r8, qword ptr [rsp + 0xf0]
               	mov	r9, qword ptr [rsp + 0x90]
               	mov	r10, qword ptr [rsp + 0x230]
               	jmp	 <L196>
               	nop	dword ptr [rax + rax]
<L198>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L197>
<L196>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x228], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L198>
<L197>:
               	xor	r11d, r11d
               	jmp	 <L199>
               	nop	word ptr [rax + rax]
<L201>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L200>
<L199>:
               	bt	rcx, r11
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x228], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L201>
<L200>:
               	xor	r11d, r11d
               	jmp	 <L202>
<L204>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L203>
<L202>:
               	bt	rdx, r11
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x228], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L204>
<L203>:
               	xor	r11d, r11d
               	jmp	 <L205>
<L207>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L206>
<L205>:
               	bt	rsi, r11
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x228], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xe0], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L207>
<L206>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xd8]
               	mov	r8, qword ptr [rsp + 0xe0]
               	mov	r9, qword ptr [rsp + 0x88]
               	mov	r10, qword ptr [rsp + 0x228]
               	jmp	 <L208>
               	nop	dword ptr [rax + rax]
<L210>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L209>
<L208>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L210>
               	xor	qword ptr [rsp + 0xd0], r10
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	jmp	 <L210>
<L209>:
               	xor	r11d, r11d
               	jmp	 <L211>
               	nop	word ptr [rax + rax]
<L213>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L212>
<L211>:
               	bt	rcx, r11
               	jae	 <L213>
               	xor	qword ptr [rsp + 0xd0], r10
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	jmp	 <L213>
<L212>:
               	xor	r11d, r11d
               	jmp	 <L214>
<L216>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L215>
<L214>:
               	bt	rdx, r11
               	jae	 <L216>
               	xor	qword ptr [rsp + 0xd0], r10
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	jmp	 <L216>
<L215>:
               	xor	r11d, r11d
               	jmp	 <L217>
<L219>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L218>
<L217>:
               	bt	rsi, r11
               	jae	 <L219>
               	xor	qword ptr [rsp + 0xd0], r10
               	xor	qword ptr [rsp + 0xc8], r9
               	xor	qword ptr [rsp + 0xc0], r8
               	xor	qword ptr [rsp + 0xb8], rdi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2e0], r15
               	mov	qword ptr [rsp + 0x2e8], r13
               	mov	qword ptr [rsp + 0x258], r12
               	xor	r12d, r12d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	xor	r15d, r15d
               	xor	eax, eax
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xb8]
               	mov	r8, qword ptr [rsp + 0xc0]
               	mov	r13, qword ptr [rsp + 0xc8]
               	mov	r9, r13
               	mov	r10, qword ptr [rsp + 0xd0]
               	jmp	 <L220>
               	nop	word ptr [rax + rax]
<L222>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L221>
<L220>:
               	movabs	rbx, 0x180ec6d33cfd0aba
               	bt	rbx, r11
               	jae	 <L222>
               	xor	r12, r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L222>
<L221>:
               	xor	r11d, r11d
               	jmp	 <L223>
               	nop	dword ptr [rax + rax]
<L225>:
               	mov	rbx, r9
               	shl	rbx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L224>
<L223>:
               	bt	rcx, r11
               	jae	 <L225>
               	xor	r12, r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L225>
<L224>:
               	xor	ecx, ecx
               	jmp	 <L226>
               	nop	dword ptr [rax]
<L228>:
               	mov	r11, r9
               	shl	r11, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r11
               	rol	rdi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L227>
<L226>:
               	bt	rdx, rcx
               	jae	 <L228>
               	xor	r12, r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L228>
<L227>:
               	xor	ecx, ecx
               	mov	r11, qword ptr [rsp + 0x10]
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rdx, r9
               	shl	rdx, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, rdx
               	rol	rdi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L230>
<L229>:
               	bt	rsi, rcx
               	jae	 <L231>
               	xor	r12, r10
               	xor	qword ptr [rsp + 0x78], r9
               	xor	r15, r8
               	xor	rax, rdi
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x2d0], rax
               	mov	qword ptr [rsp + 0x2d8], r15
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f0], rax
               	mov	rcx, qword ptr [rsp + 0x258]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rcx
               	mov	rcx, qword ptr [rsp + 0x70]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0xa8]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x300], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x308], rcx
               	mov	rcx, qword ptr [rsp + 0x68]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x310], rcx
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x318], rcx
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x50]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x320], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x328], rcx
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x330], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x338], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x30]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x340], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x350], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x358], rsi
               	mov	rcx, qword ptr [rsp + 0xa0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x98]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x360], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x368], rcx
               	mov	rcx, qword ptr [rsp + 0x90]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x370], rcx
               	mov	rcx, qword ptr [rsp + 0x88]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x378], rcx
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	rol	rcx, 0x7
               	lea	rbx, [rcx + 8*rcx]
               	mov	rcx, qword ptr [rsp + 0x78]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x380], rbx
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x388], rcx
               	cmp	dword ptr [rsp + 0xb0], 0x0
               	je	 <L232>
               	mov	qword ptr [rsp + 0x2a0], rbp
               	mov	rcx, qword ptr [rsp + 0xb0]
               	neg	ecx
               	mov	qword ptr [rsp + 0xb0], rcx
               	mov	ecx, 0x1
               	mov	qword ptr [rsp + 0x2a8], rcx
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x8], rcx
               	vpbroadcastq	ymm0, qword ptr  <__libc_start_main+0xf40>
               	vmovdqu	ymmword ptr [rsp + 0x3d0], ymm0
               	mov	rdi, qword ptr [rsp + 0x250]
               	mov	r15, r14
               	jmp	 <L233>
               	nop
<L243>:
               	vpblendd	ymm0, ymm0, ymm2, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm2[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x2f0]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x330]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x350]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x370]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2f0], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x310], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x330], ymm0
               	vpsrlq	ymm0, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x350], ymm0
               	vpsrlq	ymm2, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x370], ymm2
               	vmovq	rax, xmm1
               	vextracti128	xmm1, ymm2, 0x1
               	vmovq	rbx, xmm1
               	vpextrq	rsi, xmm0, 0x1
<L244>:
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	rdx, qword ptr [rsp + 0x2a8]
               	add	ecx, edx
               	inc	ecx
               	inc	edx
               	mov	qword ptr [rsp + 0x2a8], rdx
               	cmp	ecx, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x2f8]
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x318]
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	cmp	al, 0xc
               	mov	qword ptr [rsp + 0x18], r15
               	ja	 <L235>
               	mov	qword ptr [rsp + 0x10], r11
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x3d0]
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm0
               	vpand	ymm0, ymm0, ymm1
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm2
               	vpand	ymm1, ymm2, ymm1
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x240], xmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x338]
               	vpshufb	xmm0, xmm0, xmmword ptr  <__libc_start_main+0xfa0>
               	movzx	eax, al
               	lea	rcx,  <__libc_start_main+0xfdc>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Circle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Circle (Bodies3D::Circle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Circle>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x20
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L236>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	add	rbx, r15
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x240] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0xf20>
               	vmovups	ymmword ptr [rax], ymm0
               	vpmovzxbd	xmm0, dword ptr [rsp + 0x260] # xmm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero
               	jmp	 <L237>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Triangle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Triangle (Bodies3D::Triangle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Triangle>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x24
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x240]
               	vpextrb	ecx, xmm1, 0x7
               	add	rbx, r15
               	vcvtsi2ss	xmm0, xmm6, ecx
               	vpunpcklbw	xmm1, xmm1, xmmword ptr [rsp + 0x260] # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
               	vpshufb	xmm1, xmm1, xmmword ptr  <__libc_start_main+0xf80>
               	vpmovzxbd	ymm1, xmm1      # ymm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	jmp	 <L238>
               	mov	r14, rbx
               	mov	r13, rsi
               	vmovups	ymm0, ymmword ptr [rsp + 0x360]
               	vmovups	ymmword ptr [rsp + 0x260], ymm0
               	vmovups	xmm0, xmmword ptr [rsp + 0x348]
               	vmovaps	xmmword ptr [rsp + 0x3a0], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vxorps	xmm0, xmm0, xmm0
               	vmovups	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Head@Evaluation.CRTP.Head const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Head@Evaluation.CRTP.Head (Bodies3D::Head@Evaluation.CRTP.Head&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Head@Evaluation.CRTP.Head>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x60
               	vzeroupper
               	call	 <_Znwm@plt>
               	movzx	ecx, r14b
               	vcvtsi2ss	xmm0, xmm6, ecx
               	movzx	ecx, r13b
               	vcvtsi2ss	xmm1, xmm6, ecx
               	vpmovzxbd	ymm2, qword ptr [rsp + 0x240] # ymm2 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm2, ymm2
               	vpermilps	ymm3, ymm2, ymmword ptr  <__libc_start_main+0xf20>
               	vmovups	ymmword ptr [rax], ymm3
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x3a0]
               	vpshufb	xmm3, xmm3, xmmword ptr  <__libc_start_main+0xf90>
               	vcvtdq2ps	xmm3, xmm3
               	vmovlps	qword ptr [rax + 0x20], xmm3
               	vmovss	dword ptr [rax + 0x28], xmm1
               	vshufps	xmm2, xmm2, xmm2, 0xff  # xmm2 = xmm2[3,3,3,3]
               	vmovss	dword ptr [rax + 0x2c], xmm2
               	vmovups	ymm5, ymmword ptr [rsp + 0x260]
               	vextractf128	xmm4, ymm5, 0x1
               	vshufps	xmm4, xmm5, xmm4, 0x88  # xmm4 = xmm5[0,2],xmm4[0,2]
               	vandps	xmm4, xmm4, xmmword ptr  <__libc_start_main+0xfb0>
               	vcvtdq2ps	xmm4, xmm4
               	vshufps	xmm5, xmm4, xmm4, 0xd8  # xmm5 = xmm4[0,2,1,3]
               	vmovaps	xmmword ptr [rax + 0x30], xmm5
               	vmovlps	qword ptr [rax + 0x40], xmm3
               	vmovss	dword ptr [rax + 0x48], xmm1
               	vmovss	dword ptr [rax + 0x4c], xmm2
               	vmovss	dword ptr [rax + 0x50], xmm0
               	vshufps	xmm0, xmm4, xmm4, 0xe6  # xmm0 = xmm4[2,1,2,3]
               	vmovlps	qword ptr [rax + 0x54], xmm0
               	vextractps	dword ptr [rax + 0x5c], xmm4, 0x3
               	add	rbx, r15
               	jmp	 <L239>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x24
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L240>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Rectangle const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Rectangle (Bodies3D::Rectangle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Rectangle>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x24
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L241>
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Square const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Square (Bodies3D::Square&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Square>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x20
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L236>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	add	rbx, r15
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x240]
               	vmovdqa	xmm2, xmmword ptr [rsp + 0x260]
               	vpunpcklbw	xmm0, xmm1, xmm2 # xmm0 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
               	vpshufb	xmm0, xmm0, xmmword ptr  <__libc_start_main+0xf80>
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax], ymm0
               	vpsrlq	xmm0, xmm1, 0x38
               	vmovdqa	xmm1, xmmword ptr  <__libc_start_main+0xf70>
               	vpblendvb	xmm0, xmm2, xmm0, xmm1
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
<L237>:
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rax + 0x20], xmm0
               	jmp	 <L239>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipse const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Ellipse (Bodies3D::Ellipse&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Ellipse>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x24
               	vzeroupper
               	call	 <_Znwm@plt>
<L241>:
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x260]
               	vpextrb	ecx, xmm0, 0x0
               	jmp	 <L242>
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cube@Evaluation.CRTP.Cube const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cube@Evaluation.CRTP.Cube (Bodies3D::Cube@Evaluation.CRTP.Cube&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cube@Evaluation.CRTP.Cube>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x20
               	vzeroupper
               	call	 <_Znwm@plt>
               	jmp	 <L236>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x28
               	vzeroupper
               	call	 <_Znwm@plt>
               	add	rbx, r15
               	vpmovzxbd	xmm0, dword ptr [rsp + 0x260] # xmm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x240] # ymm1 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <__libc_start_main+0xf20>
               	vmovups	ymmword ptr [rax], ymm1
               	vmovlps	qword ptr [rax + 0x20], xmm0
               	jmp	 <L239>
               	vmovdqa	xmmword ptr [rsp + 0x260], xmm0
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cone@Evaluation.CRTP.Cone const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Cone@Evaluation.CRTP.Cone (Bodies3D::Cone@Evaluation.CRTP.Cone&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Cone@Evaluation.CRTP.Cone>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x24
               	vzeroupper
               	call	 <_Znwm@plt>
<L240>:
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x260]
               	vpextrb	ecx, xmm0, 0x1
<L242>:
               	vcvtsi2ss	xmm0, xmm6, ecx
               	add	rbx, r15
               	vpmovzxbd	ymm1, qword ptr [rsp + 0x240] # ymm1 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm1, ymm1
               	vpermilps	ymm1, ymm1, ymmword ptr  <__libc_start_main+0xf20>
<L238>:
               	vmovups	ymmword ptr [rax], ymm1
               	vmovss	dword ptr [rax + 0x20], xmm0
               	jmp	 <L239>
               	mov	rbx, qword ptr [rsp + 0x8]
               	shl	rbx, 0x5
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	xmmword ptr [rdi + rbx + 0x8], xmm0
               	lea	rax,  <boost::type_erasure::detail::vtable_init<boost::type_erasure::detail::vtable_storage<boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), boost::type_erasure::_self const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>>, boost::type_erasure::detail::vtable_adapter<Bodies3D::has_ComputeVolume<float (), Bodies3D::Sphere@Evaluation.CRTP.Sphere const>, float (boost::type_erasure::detail::storage const&)>, boost::type_erasure::detail::vtable_adapter<boost::type_erasure::constructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere (Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&)>, boost::type_erasure::destructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere>>::value>
               	mov	qword ptr [rdi + rbx], rax
               	mov	r15, rdi
               	mov	edi, 0x20
               	vzeroupper
               	call	 <_Znwm@plt>
<L236>:
               	add	rbx, r15
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x240] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0xf20>
               	vmovups	ymmword ptr [rax], ymm0
<L239>:
               	mov	qword ptr [rbx + 0x18], rax
               	inc	qword ptr [rsp + 0x8]
               	mov	rdi, r15
               	mov	r11, qword ptr [rsp + 0x10]
               	mov	r15, qword ptr [rsp + 0x18]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x280]
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x2b0]
<L235>:
               	test	byte ptr [rsp + 0x2a8], 0x7
               	jne	 <L243>
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x3b0]
               	vpermq	ymm0, ymm3, 0xe3        # ymm0 = ymm3[3,0,2,3]
               	vpermq	ymm1, ymm3, 0xe9        # ymm1 = ymm3[1,2,2,3]
               	vpextrq	rax, xmm3, 0x1
               	shl	rax, 0x11
               	vpxor	xmm2, xmm1, xmm0
               	vpextrq	rcx, xmm2, 0x1
               	vpxor	xmm0, xmm2, xmm3
               	xor	rcx, rax
               	vmovq	xmm1, rcx
               	vmovq	rax, xmm2
               	rol	rax, 0x2d
               	vmovq	xmm2, rax
               	mov	rdx, qword ptr [rsp + 0x258]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2e8]
               	mov	rsi, qword ptr [rsp + 0x2e0]
               	xor	rcx, rsi
               	xor	r11, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x258], rdx
               	xor	rsi, r11
               	mov	qword ptr [rsp + 0x2e0], rsi
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x2e8], rcx
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x10], r11
               	mov	rdx, qword ptr [rsp + 0x70]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x220]
               	mov	r8, qword ptr [rsp + 0x218]
               	xor	r8, rcx
               	mov	r9, qword ptr [rsp + 0x210]
               	xor	r9, rdx
               	xor	rdx, r8
               	mov	qword ptr [rsp + 0x70], rdx
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x220], rcx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x210], r9
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x218], r8
               	mov	rsi, qword ptr [rsp + 0xa8]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x208]
               	mov	r9, qword ptr [rsp + 0x200]
               	xor	r9, rcx
               	mov	r10, qword ptr [rsp + 0x1f8]
               	xor	r10, rsi
               	xor	rsi, r9
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x208], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x200], r9
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x1f8], r10
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	mov	r10, qword ptr [rsp + 0x1e8]
               	xor	r10, rcx
               	mov	rbx, qword ptr [rsp + 0x1e0]
               	xor	rbx, rdx
               	xor	rdx, r10
               	mov	qword ptr [rsp + 0x68], rdx
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x1f0], rcx
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x1e8], r10
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x1e0], rbx
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	mov	rbx, qword ptr [rsp + 0x1d0]
               	xor	rbx, rcx
               	mov	r15, qword ptr [rsp + 0x1c8]
               	xor	r15, rdx
               	xor	rdx, rbx
               	mov	qword ptr [rsp + 0x60], rdx
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x1d8], rcx
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0x1d0], rbx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x1c8], r15
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	rbx, qword ptr [rsp + 0x1b8]
               	xor	rbx, rcx
               	mov	r15, qword ptr [rsp + 0x1b0]
               	xor	r15, rdx
               	xor	rdx, rbx
               	mov	qword ptr [rsp + 0x58], rdx
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x1c0], rcx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x1b0], r15
               	mov	r14, qword ptr [rsp + 0x1a8]
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0x1b8], rbx
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	xor	rcx, r14
               	mov	rbp, qword ptr [rsp + 0x198]
               	xor	rbp, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x50], rdx
               	xor	r14, rbp
               	mov	qword ptr [rsp + 0x1a8], r14
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x1a0], rcx
               	rol	rbp, 0x2d
               	mov	qword ptr [rsp + 0x198], rbp
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x190]
               	mov	r15, qword ptr [rsp + 0x188]
               	xor	r15, rcx
               	mov	qword ptr [rsp + 0x280], r12
               	mov	r12, qword ptr [rsp + 0x180]
               	xor	r12, rdx
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x48], rdx
               	xor	rcx, r12
               	mov	qword ptr [rsp + 0x190], rcx
               	xor	r15, rax
               	mov	qword ptr [rsp + 0x188], r15
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x180], r12
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x178]
               	mov	r12, qword ptr [rsp + 0x170]
               	xor	r12, rcx
               	mov	r15, qword ptr [rsp + 0x168]
               	xor	r15, rdx
               	xor	rdx, r12
               	mov	qword ptr [rsp + 0x40], rdx
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x178], rcx
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x170], r12
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x168], r15
               	mov	rdx, qword ptr [rsp + 0x120]
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x160]
               	xor	rcx, rdx
               	mov	r13, qword ptr [rsp + 0x158]
               	xor	r13, r8
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x38], r8
               	xor	rdx, r13
               	mov	qword ptr [rsp + 0x120], rdx
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x158], r13
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x160], rcx
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x150]
               	mov	r15, qword ptr [rsp + 0x148]
               	xor	r15, rcx
               	mov	r9, qword ptr [rsp + 0x140]
               	xor	r9, rdx
               	xor	rdx, r15
               	mov	qword ptr [rsp + 0x30], rdx
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x150], rcx
               	xor	r15, rax
               	mov	qword ptr [rsp + 0x148], r15
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x140], r9
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x138]
               	mov	rdx, qword ptr [rsp + 0x130]
               	xor	rdx, rcx
               	mov	r15, qword ptr [rsp + 0x128]
               	xor	r15, r8
               	xor	r8, rdx
               	mov	qword ptr [rsp + 0x28], r8
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x138], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x130], rdx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x128], r15
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	rax, r8
               	shl	rax, 0x11
               	xor	qword ptr [rsp + 0x2a0], rdx
               	mov	rcx, qword ptr [rsp + 0x118]
               	xor	rcx, r8
               	xor	r8, qword ptr [rsp + 0x2a0]
               	mov	qword ptr [rsp + 0x20], r8
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x2a0], rax
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x118], rcx
               	mov	r12, qword ptr [rsp + 0xa0]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x110]
               	mov	rdx, qword ptr [rsp + 0x108]
               	xor	rdx, rcx
               	mov	r10, qword ptr [rsp + 0x100]
               	xor	r10, r12
               	xor	r12, rdx
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x110], rcx
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x100], r10
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x108], rdx
               	mov	r13, qword ptr [rsp + 0x98]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	r10, qword ptr [rsp + 0x238]
               	mov	rcx, qword ptr [rsp + 0xf8]
               	xor	rcx, r10
               	mov	r9, qword ptr [rsp + 0x80]
               	xor	r9, r13
               	mov	qword ptr [rsp + 0x80], r9
               	xor	r13, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xf8], rcx
               	mov	rbx, qword ptr [rsp + 0x90]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	r10, qword ptr [rsp + 0x230]
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rcx, r10
               	mov	rbp, qword ptr [rsp + 0xe8]
               	xor	rbp, rbx
               	xor	rbx, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	r11, qword ptr [rsp + 0x88]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	r10, qword ptr [rsp + 0x228]
               	mov	rcx, qword ptr [rsp + 0xe0]
               	xor	rcx, r10
               	mov	r15, qword ptr [rsp + 0xd8]
               	xor	r15, r11
               	xor	r11, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xe0], rcx
               	mov	r8, qword ptr [rsp + 0xc8]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	r14, qword ptr [rsp + 0xd0]
               	mov	rcx, qword ptr [rsp + 0xc0]
               	xor	rcx, r14
               	mov	r10, qword ptr [rsp + 0xb8]
               	xor	r10, r8
               	xor	r8, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xc0], rcx
               	mov	rax, qword ptr [rsp + 0x78]
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x2d8]
               	xor	rdx, qword ptr [rsp + 0x280]
               	mov	r9, qword ptr [rsp + 0x2d0]
               	xor	r9, qword ptr [rsp + 0x78]
               	xor	qword ptr [rsp + 0x78], rdx
               	vpextrq	rcx, xmm0, 0x1
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x2d8], rdx
               	lea	rax, [rcx + 4*rcx]
               	rol	rax, 0x7
               	lea	rdi, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x258]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rax, qword ptr [rsp + 0x70]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0xa8], rsi
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2f0], rdi
               	mov	qword ptr [rsp + 0x2f8], rcx
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x300], rdx
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x308], rsi
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x310], rcx
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x318], rdx
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x320], rsi
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x328], rcx
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x330], rdx
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x338], rsi
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x340], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rsi, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x348], rdx
               	mov	qword ptr [rsp + 0xa0], r12
               	lea	rcx, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x280]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x350], rax
               	mov	rax, rdi
               	mov	qword ptr [rsp + 0x98], r13
               	lea	rdx, [4*r13]
               	add	rdx, r13
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x358], rsi
               	mov	qword ptr [rsp + 0x360], rcx
               	mov	qword ptr [rsp + 0x90], rbx
               	lea	rcx, [rbx + 4*rbx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x368], rdx
               	mov	qword ptr [rsp + 0x88], r11
               	lea	rdx, [r11 + 4*r11]
               	mov	r11, qword ptr [rsp + 0x10]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x370], rcx
               	mov	qword ptr [rsp + 0xc8], r8
               	lea	rcx, [r8 + 4*r8]
               	mov	rdi, qword ptr [rsp + 0x250]
               	rol	rcx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	rbx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x378], rdx
               	mov	rcx, qword ptr [rsp + 0x78]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x380], rbx
               	mov	qword ptr [rsp + 0x388], rcx
               	mov	rdx, qword ptr [rsp + 0x80]
               	xor	qword ptr [rsp + 0x238], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x80], rdx
               	vpbroadcastq	ymm1, xmm1
               	xor	qword ptr [rsp + 0x230], rbp
               	rol	rbp, 0x2d
               	mov	qword ptr [rsp + 0xe8], rbp
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0x228], r15
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xd8], r15
               	mov	r15, qword ptr [rsp + 0x18]
               	vpbroadcastq	ymm1, xmm2
               	xor	r14, r10
               	mov	qword ptr [rsp + 0xd0], r14
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0xb8], r10
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vmovdqu	ymmword ptr [rsp + 0x3b0], ymm0
               	xor	r12, r9
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x2d0], r9
               	jmp	 <L244>
<L234>:
               	shl	qword ptr [rsp + 0x8], 0x5
               	je	 <L245>
               	add	qword ptr [rsp + 0x8], rdi
               	vpxor	xmm0, xmm0, xmm0
               	vmovd	dword ptr [rsp + 0x10], xmm0
               	mov	r14, rdi
               	nop	word ptr cs:[rax + rax]
<L246>:
               	mov	rax, qword ptr [r14]
               	add	r14, 0x18
               	mov	rdi, r14
               	vzeroupper
               	call	qword ptr [rax]
               	vmovss	xmm1, dword ptr [rsp + 0x10] # xmm1 = mem[0],zero,zero,zero
               	vaddss	xmm1, xmm0, xmm1
               	vmovss	dword ptr [rsp + 0x10], xmm1
               	add	r14, 0x8
               	cmp	r14, qword ptr [rsp + 0x8]
               	jne	 <L246>
               	mov	r14, qword ptr [rsp + 0x250]
               	jmp	 <L247>
               	nop	word ptr cs:[rax + rax]
<L249>:
               	add	r14, 0x8
               	cmp	r14, qword ptr [rsp + 0x8]
               	je	 <L248>
<L247>:
               	mov	rax, qword ptr [r14]
               	add	r14, 0x18
               	mov	rdi, r14
               	call	qword ptr [rax + 0x10]
               	mov	r15, qword ptr [r14 - 0x8]
               	test	r15, r15
               	je	 <L249>
               	lock
               	dec	dword ptr [r15 + 0x8]
               	jne	 <L249>
               	mov	rax, qword ptr [r15]
               	mov	rdi, r15
               	call	qword ptr [rax + 0x10]
               	lock
               	dec	dword ptr [r15 + 0xc]
               	jne	 <L249>
               	mov	rax, qword ptr [r15]
               	mov	rdi, r15
               	call	qword ptr [rax + 0x18]
               	jmp	 <L249>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	vmovd	dword ptr [rsp + 0x10], xmm0
<L248>:
               	mov	rdi, qword ptr [rsp + 0x250]
               	mov	rbx, qword ptr [rsp + 0x398]
               	or	rbx, qword ptr [rsp + 0x390]
               	test	rdi, rdi
               	je	 <L250>
<L253>:
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L250>:
               	movabs	rax, 0x186a00000002a
               	cmp	rbx, rax
               	jne	 <L251>
               	vmovss	xmm0, dword ptr [rsp + 0x10] # xmm0 = mem[0],zero,zero,zero
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xfd8>
               	jb	 <L252>
               	vmovss	xmm0, dword ptr [rsp + 0x10] # xmm0 = mem[0],zero,zero,zero
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xfd0>
               	ja	 <L252>
<L251>:
               	xor	eax, eax
               	add	rsp, 0x3f8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L245>:
               	vpxor	xmm0, xmm0, xmm0
               	vmovd	dword ptr [rsp + 0x10], xmm0
               	mov	rbx, qword ptr [rsp + 0x398]
               	or	rbx, qword ptr [rsp + 0x390]
               	test	rdi, rdi
               	jne	 <L253>
               	jmp	 <L250>
<L252>:
               	mov	edi, 0x4
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x10] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x7630>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	jmp	 <L254>
               	jmp	 <L254>
               	jmp	 <L254>
               	jmp	 <L254>
               	jmp	 <L254>
               	jmp	 <L254>
               	jmp	 <L254>
               	jmp	 <L254>
               	jmp	 <L254>
               	jmp	 <L254>
               	jmp	 <L254>
               	jmp	 <L254>
<L254>:
               	mov	rbx, rax
               	xor	edi, edi
               	call	 <boost::type_erasure::binding<boost::mpl::vector<Bodies3D::has_ComputeVolume<float () const, boost::type_erasure::_self>, boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na>>::~binding()>
               	mov	rdi, rbx
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::binding<boost::mpl::vector<Bodies3D::has_ComputeVolume<float () const, boost::type_erasure::_self>, boost::type_erasure::constructible<boost::type_erasure::_self (boost::type_erasure::_self&&)>, boost::type_erasure::destructible<boost::type_erasure::_self>, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na, mpl_::na>>::~binding()>:
               	push	rbx
               	test	rdi, rdi
               	je	 <L0>
               	lock
               	dec	dword ptr [rdi + 0x8]
               	jne	 <L0>
               	mov	rax, qword ptr [rdi]
               	mov	rbx, rdi
               	call	qword ptr [rax + 0x10]
               	lock
               	dec	dword ptr [rbx + 0xc]
               	jne	 <L0>
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	call	qword ptr [rax + 0x18]
<L0>:
               	pop	rbx
               	ret
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	int3
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Head@Evaluation.CRTP.Head const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Head@Evaluation.CRTP.Head const&)>::value(boost::type_erasure::detail::storage const&)>:
<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Sphere@Evaluation.CRTP.Sphere const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Sphere@Evaluation.CRTP.Sphere const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0xfd4>
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Head@Evaluation.CRTP.Head (Bodies3D::Head@Evaluation.CRTP.Head&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Head@Evaluation.CRTP.Head&&)>::value(boost::type_erasure::detail::storage&&)>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rdi
               	mov	r14, qword ptr [rsi]
               	mov	edi, 0x60
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [r14]
               	vmovups	ymm1, ymmword ptr [r14 + 0x20]
               	vmovups	ymm2, ymmword ptr [r14 + 0x40]
               	vmovups	ymmword ptr [rax], ymm0
               	vmovups	ymmword ptr [rax + 0x20], ymm1
               	vmovups	ymmword ptr [rax + 0x40], ymm2
               	mov	qword ptr [rbx], rax
               	mov	rax, rbx
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<boost::type_erasure::destructible<Bodies3D::Circle>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Square>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Ellipse>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Triangle>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Rectangle>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Cone@Evaluation.CRTP.Cone>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Cube@Evaluation.CRTP.Cube>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Head@Evaluation.CRTP.Head>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder>::value(boost::type_erasure::detail::storage&)>:
<boost::type_erasure::destructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid>::value(boost::type_erasure::detail::storage&)>:
               	mov	rdi, qword ptr [rdi]
               	test	rdi, rdi
               	jne	 <_ZdlPv@plt>
               	ret
               	int3
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xfd4>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Cuboid@Evaluation.CRTP.Cuboid (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid&&)>::value(boost::type_erasure::detail::storage&&)>:
<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Pyramid@Evaluation.CRTP.Pyramid (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid&&)>::value(boost::type_erasure::detail::storage&&)>:
<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid&&)>::value(boost::type_erasure::detail::storage&&)>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rdi
               	mov	r14, qword ptr [rsi]
               	mov	edi, 0x28
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [r14]
               	vmovups	ymmword ptr [rax], ymm0
               	mov	rcx, qword ptr [r14 + 0x20]
               	mov	qword ptr [rax + 0x20], rcx
               	mov	qword ptr [rbx], rax
               	mov	rax, rbx
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cone@Evaluation.CRTP.Cone const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Cone@Evaluation.CRTP.Cone const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xfc0>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Ellipse (Bodies3D::Ellipse&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Ellipse&&)>::value(boost::type_erasure::detail::storage&&)>:
<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Triangle (Bodies3D::Triangle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Triangle&&)>::value(boost::type_erasure::detail::storage&&)>:
<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Rectangle (Bodies3D::Rectangle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Rectangle&&)>::value(boost::type_erasure::detail::storage&&)>:
<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Cone@Evaluation.CRTP.Cone (Bodies3D::Cone@Evaluation.CRTP.Cone&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Cone@Evaluation.CRTP.Cone&&)>::value(boost::type_erasure::detail::storage&&)>:
<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Cylinder@Evaluation.CRTP.Cylinder (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder&&)>::value(boost::type_erasure::detail::storage&&)>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rdi
               	mov	r14, qword ptr [rsi]
               	mov	edi, 0x24
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [r14]
               	vmovups	ymmword ptr [rax], ymm0
               	mov	ecx, dword ptr [r14 + 0x20]
               	mov	dword ptr [rax + 0x20], ecx
               	mov	qword ptr [rbx], rax
               	mov	rax, rbx
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Cylinder@Evaluation.CRTP.Cylinder const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xfc4>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Circle (Bodies3D::Circle&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Circle&&)>::value(boost::type_erasure::detail::storage&&)>:
<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Square (Bodies3D::Square&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Square&&)>::value(boost::type_erasure::detail::storage&&)>:
<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Cube@Evaluation.CRTP.Cube (Bodies3D::Cube@Evaluation.CRTP.Cube&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Cube@Evaluation.CRTP.Cube&&)>::value(boost::type_erasure::detail::storage&&)>:
<boost::type_erasure::detail::vtable_adapter_impl<boost::type_erasure::constructible<Bodies3D::Sphere@Evaluation.CRTP.Sphere (Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)>, boost::type_erasure::detail::storage (boost::type_erasure::detail::storage&&), boost::type_erasure::detail::storage (Bodies3D::Sphere@Evaluation.CRTP.Sphere&&)>::value(boost::type_erasure::detail::storage&&)>:
               	push	r14
               	push	rbx
               	push	rax
               	mov	rbx, rdi
               	mov	r14, qword ptr [rsi]
               	mov	edi, 0x20
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [r14]
               	vmovups	ymmword ptr [rax], ymm0
               	mov	qword ptr [rbx], rax
               	mov	rax, rbx
               	add	rsp, 0x8
               	pop	rbx
               	pop	r14
               	vzeroupper
               	ret
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Pyramid@Evaluation.CRTP.Pyramid const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xfc8>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Cuboid@Evaluation.CRTP.Cuboid const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x24]
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Cube@Evaluation.CRTP.Cube const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Cube@Evaluation.CRTP.Cube const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
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
               	int3
               	int3
               	int3
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Triangle const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Triangle const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xfcc>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Square const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Square const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Rectangle const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Rectangle const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x1c]
               	ret
               	int3
               	int3

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Ellipse const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Ellipse const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xfc4>
               	vmulss	xmm0, xmm0, dword ptr [rax + 0x20]
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

<boost::type_erasure::detail::vtable_adapter_impl<Bodies3D::has_ComputeVolume<float (), Bodies3D::Circle const>, float (boost::type_erasure::detail::storage const&), float (Bodies3D::Circle const&)>::value(boost::type_erasure::detail::storage const&)>:
               	mov	rax, qword ptr [rdi]
               	vmovss	xmm0, dword ptr [rax + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xfc4>
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x7608>
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

<_Znwm@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>

<_ZSt9terminatev@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	push	0x5
               	jmp	 <.plt>

<__cxa_begin_catch@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x48>
               	push	0x6
               	jmp	 <.plt>

<_ZdlPv@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x50>
               	push	0x7
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x58>
               	push	0x8
               	jmp	 <.plt>
