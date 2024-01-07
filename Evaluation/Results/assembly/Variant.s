
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
               	call	qword ptr  <__libc_start_main+0x6e68>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6e78>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6e80>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x6e88>
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
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x348
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
               	movabs	r14, 0x180ec6d33cfd0aba
               	movsxd	rax, r15d
               	imul	rdi, rax, 0x64
               	mov	rsi, qword ptr  <__libc_start_main+0x6e90>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	r12, rax
               	movsxd	rax, ebx
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <__libc_start_main+0xc40>
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
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xca8>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xc88>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xc98>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xca0>
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
               	xor	r13d, r13d
               	xor	r10d, r10d
               	xor	r11d, r11d
               	xor	ebp, ebp
               	xor	edi, edi
               	mov	r8, rsi
               	mov	qword ptr [rsp + 0x220], rsi
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
               	bt	r14, rdi
               	jae	 <L6>
               	xor	r11, rax
               	xor	r13, rsi
               	xor	r10, rcx
               	xor	rbp, rdx
               	jmp	 <L6>
<L5>:
               	movabs	r9, -0x2a59ed990f36c6d4
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
               	bt	r9, rdi
               	jae	 <L9>
               	xor	r11, rax
               	xor	r13, rsi
               	xor	r10, rcx
               	xor	rbp, rdx
               	jmp	 <L9>
<L8>:
               	xor	edi, edi
               	jmp	 <L10>
               	nop	dword ptr [rax + rax]
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
               	xor	r13, rsi
               	xor	r10, rcx
               	xor	rbp, rdx
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
               	xor	r13, rsi
               	xor	r10, rcx
               	xor	rbp, rdx
               	jmp	 <L15>
<L14>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x208], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x200], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1f8], rax
               	xor	edi, edi
               	mov	rax, rbp
               	mov	rcx, r10
               	mov	rdx, r13
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
               	bt	r14, rdi
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x208], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x200], rcx
               	xor	qword ptr [rsp + 0x1f8], rax
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
               	bt	r9, rdi
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x208], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x200], rcx
               	xor	qword ptr [rsp + 0x1f8], rax
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
               	xor	qword ptr [rsp + 0x208], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x200], rcx
               	xor	qword ptr [rsp + 0x1f8], rax
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
               	xor	qword ptr [rsp + 0x208], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x200], rcx
               	xor	qword ptr [rsp + 0x1f8], rax
               	jmp	 <L27>
<L26>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1f0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x58], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1e8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1e0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1f8]
               	mov	rcx, qword ptr [rsp + 0x200]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x208]
               	jmp	 <L28>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x1f0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1e8], rcx
               	xor	qword ptr [rsp + 0x1e0], rax
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
               	bt	r9, rdi
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x1f0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1e8], rcx
               	xor	qword ptr [rsp + 0x1e0], rax
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x1f0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1e8], rcx
               	xor	qword ptr [rsp + 0x1e0], rax
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
               	xor	qword ptr [rsp + 0x1f0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1e8], rcx
               	xor	qword ptr [rsp + 0x1e0], rax
               	jmp	 <L39>
<L38>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1d8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x50], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1d0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1e0]
               	mov	rcx, qword ptr [rsp + 0x1e8]
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0x1f0]
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
               	bt	r14, rdi
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
               	jmp	 <L42>
<L41>:
               	xor	edi, edi
               	jmp	 <L43>
               	nop	dword ptr [rax]
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
               	bt	r9, rdi
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
               	jmp	 <L51>
<L50>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1c8]
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	jmp	 <L52>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
               	jmp	 <L54>
<L53>:
               	xor	edi, edi
               	jmp	 <L55>
               	nop	dword ptr [rax]
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
               	bt	r9, rdi
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
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
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
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
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
               	jmp	 <L63>
<L62>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x198], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1b0]
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0x1c0]
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
               	bt	r14, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
               	jmp	 <L66>
<L65>:
               	xor	edi, edi
               	jmp	 <L67>
               	nop	dword ptr [rax]
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
               	bt	r9, rdi
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
               	jmp	 <L75>
<L74>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x190], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x188], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x180], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x198]
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0x1a8]
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
               	bt	r14, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
               	jmp	 <L78>
<L77>:
               	xor	edi, edi
               	jmp	 <L79>
               	nop	dword ptr [rax]
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
               	bt	r9, rdi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
               	jmp	 <L87>
<L86>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x178], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x170], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x168], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x180]
               	mov	rcx, qword ptr [rsp + 0x188]
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rsi, qword ptr [rsp + 0x190]
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
               	bt	r14, rdi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	bt	r9, rdi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
               	jmp	 <L99>
<L98>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x160], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x158], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x150], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x168]
               	mov	rcx, qword ptr [rsp + 0x170]
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0x178]
               	jmp	 <L100>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
               	jmp	 <L102>
<L101>:
               	xor	edi, edi
               	jmp	 <L103>
               	nop	dword ptr [rax]
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
               	bt	r9, rdi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
               	jmp	 <L111>
<L110>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x148], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x140], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x138], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x150]
               	mov	rcx, qword ptr [rsp + 0x158]
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x160]
               	jmp	 <L112>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
               	jmp	 <L114>
<L113>:
               	xor	edi, edi
               	jmp	 <L115>
               	nop	dword ptr [rax]
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
               	bt	r9, rdi
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
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
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
               	jmp	 <L120>
<L119>:
               	xor	edi, edi
               	jmp	 <L121>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
               	jmp	 <L123>
<L122>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x130], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x18], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x128], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x120], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x138]
               	mov	rcx, qword ptr [rsp + 0x140]
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0x148]
               	jmp	 <L124>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
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
               	bt	r9, rdi
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L129>
<L128>:
               	xor	edi, edi
               	jmp	 <L130>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
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
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L135>
<L134>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x118], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x110], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x108], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x120]
               	mov	rcx, qword ptr [rsp + 0x128]
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x130]
               	jmp	 <L136>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
               	jmp	 <L138>
<L137>:
               	xor	edi, edi
               	jmp	 <L139>
               	nop
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
               	bt	r9, rdi
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
               	jmp	 <L141>
<L140>:
               	xor	edi, edi
               	jmp	 <L142>
               	nop
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
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
               	jmp	 <L144>
<L143>:
               	xor	edi, edi
               	jmp	 <L145>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x80], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
               	jmp	 <L147>
<L146>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x100], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x10], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x108]
               	mov	rcx, qword ptr [rsp + 0x110]
               	mov	rdx, qword ptr [rsp + 0x80]
               	mov	rsi, qword ptr [rsp + 0x118]
               	jmp	 <L148>
               	nop
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
               	bt	r14, rdi
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
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
               	bt	r9, rdi
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
               	jmp	 <L153>
<L152>:
               	xor	edi, edi
               	jmp	 <L154>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
               	jmp	 <L159>
<L158>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xf0]
               	mov	rcx, qword ptr [rsp + 0xf8]
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x100]
               	jmp	 <L160>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L162>
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	bt	r9, rdi
               	jae	 <L165>
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L165>
<L164>:
               	xor	edi, edi
               	jmp	 <L166>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x78], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L171>
<L170>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x210], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x70], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xd8]
               	mov	rcx, qword ptr [rsp + 0xe0]
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	rsi, qword ptr [rsp + 0xe8]
               	jmp	 <L172>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x210], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	bt	r9, rdi
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x210], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L177>
<L176>:
               	xor	edi, edi
               	jmp	 <L178>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x210], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
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
               	xor	qword ptr [rsp + 0x210], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0xd0], rcx
               	xor	qword ptr [rsp + 0xc8], rax
               	jmp	 <L183>
<L182>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x90], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x68], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xc8]
               	mov	rcx, qword ptr [rsp + 0xd0]
               	mov	rdx, qword ptr [rsp + 0x70]
               	mov	rsi, qword ptr [rsp + 0x210]
               	jmp	 <L184>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, rdi
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
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
               	bt	r9, rdi
               	jae	 <L189>
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L189>
<L188>:
               	xor	edi, edi
               	jmp	 <L190>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
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
               	xor	qword ptr [rsp + 0x90], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0xc0], rcx
               	xor	qword ptr [rsp + 0xb8], rax
               	jmp	 <L195>
<L194>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x60], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	r8d, r8d
               	mov	rax, qword ptr [rsp + 0xb8]
               	mov	rcx, qword ptr [rsp + 0xc0]
               	mov	rsi, qword ptr [rsp + 0x68]
               	mov	rdi, qword ptr [rsp + 0x90]
               	movabs	rdx, -0x2a59ed990f36c6d4
               	jmp	 <L196>
               	nop	word ptr cs:[rax + rax]
<L198>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rcx, rdi
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	rdi, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L197>
<L196>:
               	bt	r14, r8
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L198>
<L197>:
               	xor	r8d, r8d
               	jmp	 <L199>
               	nop	dword ptr [rax]
<L201>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rcx, rdi
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	rdi, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	movabs	rdx, -0x2a59ed990f36c6d4
               	je	 <L200>
<L199>:
               	bt	rdx, r8
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L201>
<L200>:
               	xor	r8d, r8d
               	movabs	rdx, -0x56a7d9e71fc03656
               	jmp	 <L202>
               	nop	word ptr cs:[rax + rax]
<L204>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rcx, rdi
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	rdi, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L203>
<L202>:
               	bt	rdx, r8
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L204>
<L203>:
               	xor	r8d, r8d
               	movabs	rdx, 0x39abdc4529b1661c
               	jmp	 <L205>
               	nop	word ptr [rax + rax]
<L207>:
               	mov	r9, rsi
               	shl	r9, 0x11
               	xor	rcx, rdi
               	xor	rax, rsi
               	xor	rsi, rcx
               	xor	rdi, rax
               	xor	rcx, r9
               	rol	rax, 0x2d
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L206>
<L205>:
               	bt	rdx, r8
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x60], rsi
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x310], r11
               	mov	qword ptr [rsp + 0x318], r10
               	mov	qword ptr [rsp + 0x328], rbx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	xor	r11d, r11d
               	xor	ecx, ecx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	xor	esi, esi
               	mov	rdi, qword ptr [rsp + 0xa8]
               	mov	r8, qword ptr [rsp + 0xb0]
               	mov	r10, qword ptr [rsp + 0x60]
               	mov	rax, qword ptr [rsp + 0x88]
               	mov	r9, r14
               	jmp	 <L208>
               	nop	dword ptr [rax]
<L210>:
               	mov	r14, r10
               	shl	r14, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	mov	r14, r9
               	je	 <L209>
<L208>:
               	bt	r14, rsi
               	jae	 <L210>
               	xor	qword ptr [rsp + 0xa0], rax
               	xor	r11, r10
               	xor	rcx, r8
               	xor	qword ptr [rsp + 0x98], rdi
               	jmp	 <L210>
<L209>:
               	xor	esi, esi
               	movabs	rdx, -0x2a59ed990f36c6d4
               	jmp	 <L211>
               	nop	word ptr cs:[rax + rax]
<L213>:
               	mov	r14, r10
               	shl	r14, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L212>
<L211>:
               	bt	rdx, rsi
               	jae	 <L213>
               	xor	qword ptr [rsp + 0xa0], rax
               	xor	r11, r10
               	xor	rcx, r8
               	xor	qword ptr [rsp + 0x98], rdi
               	jmp	 <L213>
<L212>:
               	xor	esi, esi
               	movabs	rdx, -0x56a7d9e71fc03656
               	jmp	 <L214>
               	nop
<L216>:
               	mov	r14, r10
               	shl	r14, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L215>
<L214>:
               	bt	rdx, rsi
               	jae	 <L216>
               	xor	qword ptr [rsp + 0xa0], rax
               	xor	r11, r10
               	xor	rcx, r8
               	xor	qword ptr [rsp + 0x98], rdi
               	jmp	 <L216>
<L215>:
               	xor	esi, esi
               	movabs	rdx, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop
<L219>:
               	mov	r14, r10
               	shl	r14, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L218>
<L217>:
               	bt	rdx, rsi
               	jae	 <L219>
               	xor	qword ptr [rsp + 0xa0], rax
               	xor	r11, r10
               	xor	rcx, r8
               	xor	qword ptr [rsp + 0x98], rdi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x308], rbp
               	mov	rdi, r13
               	mov	qword ptr [rsp + 0x230], r12
               	mov	qword ptr [rsp + 0x2e8], r15
               	xor	edx, edx
               	xor	r8d, r8d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x228], rax
               	xor	ebx, ebx
               	xor	r13d, r13d
               	mov	r14, qword ptr [rsp + 0x98]
               	mov	r12, rcx
               	mov	rbp, r11
               	mov	rsi, qword ptr [rsp + 0xa0]
               	jmp	 <L220>
               	nop	dword ptr [rax + rax]
<L222>:
               	mov	rax, rbp
               	shl	rax, 0x11
               	xor	r12, rsi
               	xor	r14, rbp
               	xor	rbp, r12
               	xor	rsi, r14
               	xor	r12, rax
               	rol	r14, 0x2d
               	inc	r13
               	cmp	r13, 0x40
               	je	 <L221>
<L220>:
               	bt	r9, r13
               	jae	 <L222>
               	xor	rdx, rsi
               	xor	r8, rbp
               	xor	qword ptr [rsp + 0x228], r12
               	xor	rbx, r14
               	jmp	 <L222>
<L221>:
               	xor	r13d, r13d
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
<L225>:
               	mov	rax, rbp
               	shl	rax, 0x11
               	xor	r12, rsi
               	xor	r14, rbp
               	xor	rbp, r12
               	xor	rsi, r14
               	xor	r12, rax
               	rol	r14, 0x2d
               	inc	r13
               	cmp	r13, 0x40
               	je	 <L224>
<L223>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, r13
               	jae	 <L225>
               	xor	rdx, rsi
               	xor	r8, rbp
               	xor	qword ptr [rsp + 0x228], r12
               	xor	rbx, r14
               	jmp	 <L225>
<L224>:
               	xor	r13d, r13d
               	jmp	 <L226>
               	nop	dword ptr [rax + rax]
<L228>:
               	mov	rax, rbp
               	shl	rax, 0x11
               	xor	r12, rsi
               	xor	r14, rbp
               	xor	rbp, r12
               	xor	rsi, r14
               	xor	r12, rax
               	rol	r14, 0x2d
               	inc	r13
               	cmp	r13, 0x40
               	je	 <L227>
<L226>:
               	movabs	rax, -0x56a7d9e71fc03656
               	bt	rax, r13
               	jae	 <L228>
               	xor	rdx, rsi
               	xor	r8, rbp
               	xor	qword ptr [rsp + 0x228], r12
               	xor	rbx, r14
               	jmp	 <L228>
<L227>:
               	xor	r13d, r13d
               	jmp	 <L229>
               	nop	dword ptr [rax + rax]
<L231>:
               	mov	rax, rbp
               	shl	rax, 0x11
               	xor	r12, rsi
               	xor	r14, rbp
               	xor	rbp, r12
               	xor	rsi, r14
               	xor	r12, rax
               	rol	r14, 0x2d
               	inc	r13
               	cmp	r13, 0x40
               	je	 <L230>
<L229>:
               	movabs	rax, 0x39abdc4529b1661c
               	bt	rax, r13
               	jae	 <L231>
               	xor	rdx, rsi
               	xor	r8, rbp
               	xor	qword ptr [rsp + 0x228], r12
               	xor	rbx, r14
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x300], rcx
               	mov	rax, qword ptr [rsp + 0x220]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r14, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x240], r14
               	mov	qword ptr [rsp + 0x238], rdi
               	lea	rax, [rdi + 4*rdi]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x248], rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rsi, qword ptr [rsp + 0x58]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x250], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x258], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x260], rax
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x268], rax
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x270], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x278], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x280], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x290], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x298], rax
               	mov	rax, qword ptr [rsp + 0x80]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a0], rax
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rdi, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a8], rdi
               	mov	rax, qword ptr [rsp + 0x78]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x70]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2b0], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2b8], rax
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c0], rax
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c8], rax
               	lea	rax, [r11 + 4*r11]
               	rol	rax, 0x7
               	lea	r12, [rax + 8*rax]
               	lea	rax, [r8 + 4*r8]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2d0], r12
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2d8], rax
               	mov	rax, qword ptr [rsp + 0x2e8]
               	test	eax, eax
               	je	 <L232>
               	mov	qword ptr [rsp + 0x2f0], r8
               	mov	qword ptr [rsp + 0x2f8], rdx
               	mov	ecx, eax
               	neg	ecx
               	mov	r8d, 0x1
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xc80>
               	xor	edx, edx
               	vpbroadcastw	xmm2, word ptr  <__libc_start_main+0xcec>
               	vmovaps	ymm3, ymmword ptr  <__libc_start_main+0xc60>
               	vpbroadcastq	xmm4, qword ptr  <__libc_start_main+0xc90>
               	vmovdqa	xmm5, xmmword ptr  <__libc_start_main+0xcb0>
               	vmovdqa	xmm6, xmmword ptr  <__libc_start_main+0xcc0>
               	vbroadcastss	xmm7, dword ptr  <__libc_start_main+0xcd0>
               	mov	r13, qword ptr [rsp + 0x230]
               	mov	qword ptr [rsp + 0x330], rcx
               	jmp	 <L233>
               	nop
<L238>:
               	vpblendd	ymm8, ymm9, ymm8, 0xc0  # ymm8 = ymm9[0,1,2,3,4,5],ymm8[6,7]
               	vpermq	ymm8, ymm8, 0x93        # ymm8 = ymm8[3,0,1,2]
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x240]
               	vmovdqu	ymm10, ymmword ptr [rsp + 0x280]
               	vmovdqu	ymm11, ymmword ptr [rsp + 0x2a0]
               	vmovdqu	ymm12, ymmword ptr [rsp + 0x2c0]
               	vpsrlq	ymm9, ymm9, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x240], ymm9
               	vpsrlq	ymm8, ymm8, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x260], ymm8
               	vpsrlq	ymm8, ymm10, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x280], ymm8
               	vpsrlq	ymm8, ymm11, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2a0], ymm8
               	vpsrlq	ymm10, ymm12, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2c0], ymm10
               	vmovq	r14, xmm9
               	vextracti128	xmm9, ymm10, 0x1
               	vmovq	r12, xmm9
               	vpextrq	rdi, xmm8, 0x1
<L244>:
               	lea	eax, [rcx + r8]
               	inc	eax
               	mov	esi, r8d
               	inc	esi
               	mov	r8d, esi
               	cmp	eax, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	ymm8, ymmword ptr [rsp + 0x248]
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x268]
               	movzx	eax, r14b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	r14b, al
               	cmp	r14b, 0xc
               	ja	 <L235>
               	vpand	ymm10, ymm9, ymm1
               	vpand	ymm11, ymm8, ymm1
               	vpackusdw	ymm10, ymm11, ymm10
               	vextracti128	xmm11, ymm10, 0x1
               	vpackusdw	xmm10, xmm10, xmm11
               	vpshufd	xmm10, xmm10, 0xd8      # xmm10 = xmm10[0,2,1,3]
               	vpackuswb	xmm10, xmm10, xmm10
               	vmovdqu	xmm11, xmmword ptr [rsp + 0x288]
               	vpshufb	xmm11, xmm11, xmm2
               	movzx	eax, r14b
               	lea	rsi,  <__libc_start_main+0xcf0>
               	movsxd	rax, dword ptr [rsi + 4*rax]
               	add	rax, rsi
               	jmp	rax
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0x0
               	jmp	 <L236>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0xb
               	jmp	 <L237>
               	vpextrb	eax, xmm10, 0x7
               	imul	rsi, rdx, 0x64
               	vcvtsi2ss	xmm12, xmm15, eax
               	mov	byte ptr [r13 + rsi + 0x60], 0x4
               	inc	rdx
               	vmovss	dword ptr [r13 + rsi + 0x20], xmm12
               	vpunpcklbw	xmm10, xmm10, xmm11 # xmm10 = xmm10[0],xmm11[0],xmm10[1],xmm11[1],xmm10[2],xmm11[2],xmm10[3],xmm11[3],xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
               	vpshufb	xmm10, xmm10, xmm4
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vmovups	ymmword ptr [r13 + rsi], ymm10
               	test	r8b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0xc
               	inc	rdx
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm11, ymm10, ymm3
               	vmovups	ymmword ptr [r13 + rax], ymm11
               	vmovdqu	xmm11, xmmword ptr [rsp + 0x298]
               	vpshufb	xmm11, xmm11, xmm6
               	vcvtdq2ps	xmm11, xmm11
               	movzx	esi, dil
               	vcvtsi2ss	xmm12, xmm15, esi
               	vmovlps	qword ptr [r13 + rax + 0x20], xmm11
               	vmovss	dword ptr [r13 + rax + 0x28], xmm12
               	vshufps	xmm10, xmm10, xmm10, 0xff # xmm10 = xmm10[3,3,3,3]
               	vmovss	dword ptr [r13 + rax + 0x2c], xmm10
               	vmovups	xmm13, xmmword ptr [rsp + 0x2b0]
               	vshufps	xmm13, xmm13, xmmword ptr [rsp + 0x2c0], 0x88 # xmm13 = xmm13[0,2],mem[0,2]
               	vandps	xmm13, xmm13, xmm7
               	vcvtdq2ps	xmm13, xmm13
               	vshufps	xmm14, xmm13, xmm13, 0xd8 # xmm14 = xmm13[0,2,1,3]
               	vmovups	xmmword ptr [r13 + rax + 0x30], xmm14
               	vmovlps	qword ptr [r13 + rax + 0x40], xmm11
               	movzx	esi, r12b
               	vcvtsi2ss	xmm11, xmm15, esi
               	vmovss	dword ptr [r13 + rax + 0x48], xmm12
               	vmovss	dword ptr [r13 + rax + 0x4c], xmm10
               	vmovss	dword ptr [r13 + rax + 0x50], xmm11
               	vshufps	xmm10, xmm13, xmm13, 0xe6 # xmm10 = xmm13[2,1,2,3]
               	vmovlps	qword ptr [r13 + rax + 0x54], xmm10
               	vextractps	dword ptr [r13 + rax + 0x5c], xmm13, 0x3
               	test	r8b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0x9
               	jmp	 <L240>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0x2
               	jmp	 <L241>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0x3
               	jmp	 <L236>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0x7
               	inc	rdx
               	vpunpcklbw	xmm12, xmm10, xmm11 # xmm12 = xmm10[0],xmm11[0],xmm10[1],xmm11[1],xmm10[2],xmm11[2],xmm10[3],xmm11[3],xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
               	vpshufb	xmm12, xmm12, xmm4
               	vpmovzxbd	ymm12, xmm12    # ymm12 = xmm12[0],zero,zero,zero,xmm12[1],zero,zero,zero,xmm12[2],zero,zero,zero,xmm12[3],zero,zero,zero,xmm12[4],zero,zero,zero,xmm12[5],zero,zero,zero,xmm12[6],zero,zero,zero,xmm12[7],zero,zero,zero
               	vcvtdq2ps	ymm12, ymm12
               	vpsrlq	xmm10, xmm10, 0x38
               	vpblendvb	xmm10, xmm11, xmm10, xmm5
               	vmovups	ymmword ptr [r13 + rax], ymm12
               	vpmovzxbd	xmm10, xmm10    # xmm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero
               	jmp	 <L242>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0x1
<L241>:
               	inc	rdx
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [r13 + rax], ymm10
               	vpextrb	esi, xmm11, 0x0
               	jmp	 <L243>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0x5
               	jmp	 <L236>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0x6
<L237>:
               	inc	rdx
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [r13 + rax], ymm10
               	vpmovzxbd	xmm10, xmm11    # xmm10 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
<L242>:
               	vcvtdq2ps	xmm10, xmm10
               	vmovlps	qword ptr [r13 + rax + 0x20], xmm10
               	test	r8b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0xa
<L240>:
               	inc	rdx
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [r13 + rax], ymm10
               	vpextrb	esi, xmm11, 0x1
<L243>:
               	vcvtsi2ss	xmm10, xmm15, esi
               	vmovss	dword ptr [r13 + rax + 0x20], xmm10
<L235>:
               	test	r8b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, rdx, 0x64
               	mov	byte ptr [r13 + rax + 0x60], 0x8
<L236>:
               	inc	rdx
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [r13 + rax], ymm10
               	test	r8b, 0x7
               	jne	 <L238>
<L239>:
               	vpermq	ymm8, ymm0, 0xe3        # ymm8 = ymm0[3,0,2,3]
               	vpermq	ymm9, ymm0, 0xe9        # ymm9 = ymm0[1,2,2,3]
               	vpextrq	rax, xmm0, 0x1
               	shl	rax, 0x11
               	vpxor	xmm9, xmm9, xmm8
               	vpextrq	rsi, xmm9, 0x1
               	vpxor	xmm0, xmm9, xmm0
               	xor	rsi, rax
               	vmovq	xmm8, rsi
               	vmovq	rax, xmm9
               	rol	rax, 0x2d
               	vmovq	xmm9, rax
               	mov	r9, qword ptr [rsp + 0x238]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x318]
               	mov	rdi, qword ptr [rsp + 0x310]
               	xor	rsi, rdi
               	mov	r12, qword ptr [rsp + 0x308]
               	xor	r12, r9
               	xor	r9, rsi
               	mov	qword ptr [rsp + 0x238], r9
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x310], rdi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x318], rsi
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x308], r12
               	mov	rdi, qword ptr [rsp + 0x8]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x208]
               	mov	r12, qword ptr [rsp + 0x200]
               	xor	r12, rsi
               	mov	rbp, qword ptr [rsp + 0x1f8]
               	xor	rbp, rdi
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x8], rdi
               	xor	rsi, rbp
               	mov	qword ptr [rsp + 0x208], rsi
               	rol	rbp, 0x2d
               	mov	qword ptr [rsp + 0x1f8], rbp
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x200], r12
               	mov	rdi, qword ptr [rsp + 0x58]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1f0]
               	mov	r12, qword ptr [rsp + 0x1e8]
               	xor	r12, rsi
               	mov	r13, qword ptr [rsp + 0x1e0]
               	xor	r13, rdi
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x58], rdi
               	xor	rsi, r13
               	mov	qword ptr [rsp + 0x1f0], rsi
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x1e8], r12
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x1e0], r13
               	mov	rdi, qword ptr [rsp + 0x50]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	mov	r12, qword ptr [rsp + 0x1d0]
               	xor	r12, rsi
               	mov	r13, qword ptr [rsp + 0x1c8]
               	xor	r13, rdi
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x50], rdi
               	xor	rsi, r13
               	mov	qword ptr [rsp + 0x1d8], rsi
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x1d0], r12
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x1c8], r13
               	mov	rdi, qword ptr [rsp + 0x48]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	mov	r12, qword ptr [rsp + 0x1b8]
               	xor	r12, rsi
               	mov	r13, qword ptr [rsp + 0x1b0]
               	xor	r13, rdi
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x48], rdi
               	xor	rsi, r13
               	mov	qword ptr [rsp + 0x1c0], rsi
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x1b8], r12
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x1b0], r13
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	mov	r12, qword ptr [rsp + 0x1a0]
               	xor	r12, rsi
               	mov	r13, qword ptr [rsp + 0x198]
               	xor	r13, rdi
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	rsi, r13
               	mov	qword ptr [rsp + 0x1a8], rsi
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x198], r13
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x1a0], r12
               	mov	rdi, qword ptr [rsp + 0x38]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x190]
               	mov	r12, qword ptr [rsp + 0x188]
               	xor	r12, rsi
               	mov	r13, qword ptr [rsp + 0x180]
               	xor	r13, rdi
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x38], rdi
               	xor	rsi, r13
               	mov	qword ptr [rsp + 0x190], rsi
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x188], r12
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x180], r13
               	mov	rdi, qword ptr [rsp + 0x30]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x178]
               	mov	r12, qword ptr [rsp + 0x170]
               	xor	r12, rsi
               	mov	r13, qword ptr [rsp + 0x168]
               	xor	r13, rdi
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x30], rdi
               	xor	rsi, r13
               	mov	qword ptr [rsp + 0x178], rsi
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x170], r12
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x168], r13
               	mov	rdi, qword ptr [rsp + 0x28]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x160]
               	mov	r12, qword ptr [rsp + 0x158]
               	xor	r12, rsi
               	mov	r13, qword ptr [rsp + 0x150]
               	xor	r13, rdi
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x28], rdi
               	xor	rsi, r13
               	mov	qword ptr [rsp + 0x160], rsi
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x158], r12
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x150], r13
               	mov	rdi, qword ptr [rsp + 0x20]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x148]
               	mov	r12, qword ptr [rsp + 0x140]
               	xor	r12, rsi
               	mov	r13, qword ptr [rsp + 0x138]
               	xor	r13, rdi
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	rsi, r13
               	mov	qword ptr [rsp + 0x148], rsi
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x138], r13
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x140], r12
               	mov	rdi, qword ptr [rsp + 0x18]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x130]
               	mov	r12, qword ptr [rsp + 0x128]
               	xor	r12, rsi
               	mov	r13, qword ptr [rsp + 0x120]
               	xor	r13, rdi
               	xor	rdi, r12
               	mov	qword ptr [rsp + 0x18], rdi
               	xor	rsi, r13
               	mov	qword ptr [rsp + 0x130], rsi
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x128], r12
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x120], r13
               	mov	qword ptr [rsp + 0x220], r11
               	mov	r14, qword ptr [rsp + 0x80]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x118]
               	mov	r12, qword ptr [rsp + 0x110]
               	xor	r12, rsi
               	mov	r13, qword ptr [rsp + 0x108]
               	xor	r13, r14
               	xor	r14, r12
               	xor	rsi, r13
               	mov	qword ptr [rsp + 0x118], rsi
               	xor	r12, rax
               	mov	qword ptr [rsp + 0x110], r12
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x108], r13
               	mov	rdi, qword ptr [rsp + 0x10]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x100]
               	mov	r13, qword ptr [rsp + 0xf8]
               	xor	r13, rsi
               	mov	r11, qword ptr [rsp + 0xf0]
               	xor	r11, rdi
               	xor	rdi, r13
               	mov	qword ptr [rsp + 0x10], rdi
               	xor	rsi, r11
               	mov	qword ptr [rsp + 0x100], rsi
               	xor	r13, rax
               	mov	qword ptr [rsp + 0xf8], r13
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0xf0], r11
               	mov	r12, qword ptr [rsp + 0x78]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0xe8]
               	mov	r13, qword ptr [rsp + 0xe0]
               	xor	r13, rsi
               	mov	rcx, qword ptr [rsp + 0xd8]
               	xor	rcx, r12
               	xor	r12, r13
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xe8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xd8], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0xe0], r13
               	mov	r13, qword ptr [rsp + 0x228]
               	mov	r11, qword ptr [rsp + 0x70]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x210]
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	rsi, rcx
               	mov	rbp, qword ptr [rsp + 0xc8]
               	xor	rbp, r11
               	xor	r11, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xd0], rsi
               	mov	r10, qword ptr [rsp + 0x68]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x90]
               	mov	qword ptr [rsp + 0x90], rcx
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	rsi, rcx
               	mov	rdi, qword ptr [rsp + 0xb8]
               	mov	qword ptr [rsp + 0x320], rbx
               	mov	rbx, rdi
               	xor	rbx, r10
               	xor	r10, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xc0], rsi
               	mov	qword ptr [rsp + 0x338], r8
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x88], rcx
               	mov	rsi, qword ptr [rsp + 0xb0]
               	xor	rsi, rcx
               	mov	r15, qword ptr [rsp + 0xa8]
               	xor	r15, r8
               	xor	r8, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xb0], rsi
               	mov	rax, qword ptr [rsp + 0x220]
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x300]
               	xor	rsi, qword ptr [rsp + 0xa0]
               	mov	qword ptr [rsp + 0x340], rdx
               	mov	r9, qword ptr [rsp + 0x98]
               	xor	r9, qword ptr [rsp + 0x220]
               	xor	qword ptr [rsp + 0x220], rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x300], rsi
               	mov	rcx, qword ptr [rsp + 0x2f0]
               	mov	rax, rcx
               	shl	rax, 0x11
               	xor	r13, qword ptr [rsp + 0x2f8]
               	xor	qword ptr [rsp + 0x320], rcx
               	xor	rcx, r13
               	vpextrq	rsi, xmm0, 0x1
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x228], r13
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	rdx, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x238]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rsi, qword ptr [rsp + 0x8]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	rdi, qword ptr [rsp + 0x58]
               	lea	r13, [rdi + 4*rdi]
               	rol	r13, 0x7
               	lea	r13, [r13 + 8*r13]
               	mov	qword ptr [rsp + 0x240], rdx
               	mov	qword ptr [rsp + 0x248], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x250], rsi
               	mov	rsi, qword ptr [rsp + 0x48]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x258], r13
               	mov	rdi, qword ptr [rsp + 0x40]
               	lea	r13, [rdi + 4*rdi]
               	rol	r13, 0x7
               	mov	qword ptr [rsp + 0x260], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r13, [r13 + 8*r13]
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x268], rsi
               	mov	rsi, qword ptr [rsp + 0x30]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x270], r13
               	mov	rdi, qword ptr [rsp + 0x28]
               	lea	r13, [rdi + 4*rdi]
               	rol	r13, 0x7
               	lea	r13, [r13 + 8*r13]
               	mov	qword ptr [rsp + 0x278], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x280], rsi
               	mov	rsi, qword ptr [rsp + 0x18]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x288], r13
               	mov	qword ptr [rsp + 0x80], r14
               	lea	r13, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x220]
               	rol	r13, 0x7
               	lea	r13, [r13 + 8*r13]
               	mov	qword ptr [rsp + 0x290], rax
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rdi, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x298], rsi
               	mov	qword ptr [rsp + 0x78], r12
               	lea	rax, [r12 + 4*r12]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2a0], r13
               	mov	r13, qword ptr [rsp + 0x230]
               	mov	qword ptr [rsp + 0x70], r11
               	lea	rsi, [r11 + 4*r11]
               	rol	rsi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2a8], rdi
               	mov	qword ptr [rsp + 0x2b0], rax
               	mov	qword ptr [rsp + 0x68], r10
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b8], rsi
               	mov	qword ptr [rsp + 0x60], r8
               	lea	rsi, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x338]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2c0], rax
               	mov	r11, r14
               	lea	rax, [r14 + 4*r14]
               	mov	r14, rdx
               	rol	rax, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	r12, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c8], rsi
               	mov	qword ptr [rsp + 0x2f0], rcx
               	lea	rax, [rcx + 4*rcx]
               	mov	rcx, qword ptr [rsp + 0x330]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2d0], r12
               	mov	qword ptr [rsp + 0x2d8], rax
               	xor	qword ptr [rsp + 0x210], rbp
               	rol	rbp, 0x2d
               	mov	qword ptr [rsp + 0xc8], rbp
               	vpbroadcastq	ymm8, xmm8
               	xor	qword ptr [rsp + 0x90], rbx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0xb8], rbx
               	mov	rbx, qword ptr [rsp + 0x320]
               	vpblendd	ymm0, ymm0, ymm8, 0x30  # ymm0 = ymm0[0,1,2,3],ymm8[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0x88], r15
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xa8], r15
               	vpbroadcastq	ymm8, xmm9
               	xor	qword ptr [rsp + 0xa0], r9
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x98], r9
               	mov	rdx, qword ptr [rsp + 0x340]
               	vpblendd	ymm0, ymm0, ymm8, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm8[6,7]
               	xor	qword ptr [rsp + 0x2f8], rbx
               	rol	rbx, 0x2d
               	jmp	 <L244>
<L234>:
               	imul	r12, rdx, 0x64
               	test	r12, r12
               	je	 <L245>
               	add	r12, r13
               	xor	ebx, ebx
               	mov	eax, 0x1
               	lea	r14, [rsp + 0x21f]
               	mov	r15, r13
               	mov	ebp, 0x1
               	jmp	 <L246>
               	nop	dword ptr [rax]
<L248>:
               	add	r15, 0x64
               	inc	ebp
               	popcnt	eax, ebp
               	cmp	r15, r12
               	je	 <L247>
<L246>:
               	mov	r13d, ebx
               	mov	ebx, eax
               	movzx	eax, byte ptr [r15 + 0x60]
               	mov	rdi, r14
               	mov	rsi, r15
               	lea	rcx,  <std::__detail::__variant::__gen_vtable<std::__detail::__variant::__deduce_visit_result<float>, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&>::_S_vtable>
               	vzeroupper
               	call	qword ptr [rcx + 8*rax]
               	movsxd	rdx, r13d
               	vmovss	dword ptr [rsp + 4*rdx + 0x240], xmm0
               	sub	edx, ebx
               	jb	 <L248>
               	mov	ecx, r13d
               	vmovss	xmm0, dword ptr [rsp + 4*rcx + 0x240] # xmm0 = mem[0],zero,zero,zero
               	inc	edx
               	and	edx, 0x3
               	je	 <L249>
               	mov	rsi, rcx
               	nop	word ptr cs:[rax + rax]
<L250>:
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rsi + 0x23c]
               	lea	rax, [rsi - 0x1]
               	vmovss	dword ptr [rsp + 4*rsi + 0x23c], xmm0
               	mov	rsi, rax
               	dec	rdx
               	jne	 <L250>
               	mov	edx, ebx
               	sub	rcx, rdx
               	cmp	rcx, 0x3
               	jb	 <L248>
               	jmp	 <L251>
<L249>:
               	mov	rax, rcx
               	mov	edx, ebx
               	sub	rcx, rdx
               	cmp	rcx, 0x3
               	jb	 <L248>
<L251>:
               	inc	rax
               	nop	word ptr cs:[rax + rax]
<L252>:
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x238]
               	vmovss	dword ptr [rsp + 4*rax + 0x238], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x234]
               	vmovss	dword ptr [rsp + 4*rax + 0x234], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x230]
               	vmovss	dword ptr [rsp + 4*rax + 0x230], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x22c]
               	vmovss	dword ptr [rsp + 4*rax + 0x22c], xmm0
               	add	rax, -0x4
               	cmp	rax, rdx
               	jg	 <L252>
               	jmp	 <L248>
<L247>:
               	cmp	ebx, 0x2
               	mov	r13, qword ptr [rsp + 0x230]
               	jb	 <L245>
               	mov	edx, ebx
               	vmovss	xmm0, dword ptr [rsp + 4*rdx + 0x23c] # xmm0 = mem[0],zero,zero,zero
               	dec	ebx
               	lea	rcx, [rdx - 0x2]
               	and	ebx, 0x3
               	je	 <L253>
               	nop	dword ptr [rax]
<L254>:
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rdx + 0x238]
               	lea	rax, [rdx - 0x1]
               	vmovss	dword ptr [rsp + 4*rdx + 0x238], xmm0
               	mov	rdx, rax
               	dec	rbx
               	jne	 <L254>
               	cmp	rcx, 0x3
               	jae	 <L255>
               	jmp	 <L245>
<L232>:
               	mov	r13, qword ptr [rsp + 0x230]
               	jmp	 <L245>
<L253>:
               	mov	rax, rdx
               	cmp	rcx, 0x3
               	jb	 <L245>
<L255>:
               	add	rax, -0x2
               	nop	dword ptr [rax]
<L256>:
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x240]
               	vmovss	dword ptr [rsp + 4*rax + 0x240], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x23c]
               	vmovss	dword ptr [rsp + 4*rax + 0x23c], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x238]
               	vmovss	dword ptr [rsp + 4*rax + 0x238], xmm0
               	vaddss	xmm0, xmm0, dword ptr [rsp + 4*rax + 0x234]
               	vmovss	dword ptr [rsp + 4*rax + 0x234], xmm0
               	add	rax, -0x4
               	cmp	rax, -0x3
               	jb	 <L256>
<L245>:
               	vmovss	xmm0, dword ptr [rsp + 0x240] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rsp + 0x8], xmm0
               	test	r13, r13
               	je	 <L257>
               	mov	rdi, r13
               	vzeroupper
               	call	 <_ZdaPv@plt>
<L257>:
               	cmp	dword ptr [rsp + 0x328], 0x2a
               	jne	 <L258>
               	cmp	dword ptr [rsp + 0x2e8], 0x186a0
               	jne	 <L258>
               	vmovss	xmm0, dword ptr [rsp + 0x8] # xmm0 = mem[0],zero,zero,zero
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xce4>
               	jne	 <L259>
<L258>:
               	xor	eax, eax
               	add	rsp, 0x348
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L259>:
               	mov	edi, 0x4
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x8] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x6e98>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcd8>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcd8>
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
               	vmovss	xmm0, dword ptr [rsi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 3ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 4ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xce0>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 6ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 7ul>>::__visit_invoke(ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcdc>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0xce8>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcd8>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcd4>
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
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xce8>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x6e70>
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
