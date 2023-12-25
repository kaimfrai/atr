
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
               	call	qword ptr  <__libc_start_main+0x6d10>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6d20>
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
               	mov	rax, qword ptr  <__libc_start_main+0x6d28>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x6d30>
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

<_GLOBAL__sub_I_Variant.cpp>:
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
               	sub	rsp, 0x328
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
               	movabs	r14, 0x180ec6d33cfd0aba
               	mov	r15d, ecx
               	mov	eax, ebx
               	mov	qword ptr [rsp + 0x310], rax
               	movsxd	rax, ecx
               	imul	rdi, rax, 0x64
               	mov	rsi, qword ptr  <__libc_start_main+0x6d38>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	r9, r14
               	mov	r14, rax
               	movsxd	rax, ebx
               	vmovq	xmm0, rax
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <__libc_start_main+0xc20>
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
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xc88>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xc68>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xc78>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0xc80>
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
               	xor	r12d, r12d
               	xor	r10d, r10d
               	xor	r11d, r11d
               	xor	ebx, ebx
               	xor	edi, edi
               	mov	r8, rsi
               	mov	qword ptr [rsp + 0x1f8], rsi
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
               	bt	r9, rdi
               	jae	 <L6>
               	xor	r11, rax
               	xor	r12, rsi
               	xor	r10, rcx
               	xor	rbx, rdx
               	jmp	 <L6>
<L5>:
               	mov	rdi, r15
               	shl	rdi, 0x20
               	mov	qword ptr [rsp + 0x308], rdi
               	xor	edi, edi
               	jmp	 <L7>
               	nop	word ptr [rax + rax]
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
               	xor	r12, rsi
               	xor	r10, rcx
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
               	xor	r11, rax
               	xor	r12, rsi
               	xor	r10, rcx
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
               	xor	r11, rax
               	xor	r12, rsi
               	xor	r10, rcx
               	xor	rbx, rdx
               	jmp	 <L15>
<L14>:
               	xor	r13d, r13d
               	xor	ebp, ebp
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1e8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1e0], rax
               	xor	edi, edi
               	mov	rax, rbx
               	mov	rcx, r10
               	mov	rdx, r12
               	mov	rsi, r11
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
               	bt	r9, rdi
               	jae	 <L18>
               	xor	r13, rsi
               	xor	rbp, rdx
               	xor	qword ptr [rsp + 0x1e8], rcx
               	xor	qword ptr [rsp + 0x1e0], rax
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
               	xor	r13, rsi
               	xor	rbp, rdx
               	xor	qword ptr [rsp + 0x1e8], rcx
               	xor	qword ptr [rsp + 0x1e0], rax
               	jmp	 <L21>
<L20>:
               	xor	edi, edi
               	jmp	 <L22>
               	nop
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
               	xor	r13, rsi
               	xor	rbp, rdx
               	xor	qword ptr [rsp + 0x1e8], rcx
               	xor	qword ptr [rsp + 0x1e0], rax
               	jmp	 <L24>
<L23>:
               	xor	edi, edi
               	jmp	 <L25>
               	nop
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
               	xor	r13, rsi
               	xor	rbp, rdx
               	xor	qword ptr [rsp + 0x1e8], rcx
               	xor	qword ptr [rsp + 0x1e0], rax
               	jmp	 <L27>
<L26>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1d8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x70], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1d0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1e0]
               	mov	rcx, qword ptr [rsp + 0x1e8]
               	mov	rdx, rbp
               	mov	rsi, r13
               	jmp	 <L28>
               	nop	word ptr [rax + rax]
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
               	bt	r9, rdi
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x70], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
               	jmp	 <L39>
<L38>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1c8]
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	mov	rdx, qword ptr [rsp + 0x70]
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	jmp	 <L40>
               	nop	word ptr [rax + rax]
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
               	bt	r9, rdi
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
               	jmp	 <L42>
<L41>:
               	xor	edi, edi
               	jmp	 <L43>
               	nop	dword ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
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
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
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
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
               	jmp	 <L51>
<L50>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x198], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1b0]
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	rdx, qword ptr [rsp]
               	mov	rsi, qword ptr [rsp + 0x1c0]
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
               	bt	r9, rdi
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
               	jmp	 <L63>
<L62>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x190], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x188], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x180], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x198]
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	rdx, qword ptr [rsp + 0x30]
               	mov	rsi, qword ptr [rsp + 0x1a8]
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
               	bt	r9, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
               	jmp	 <L75>
<L74>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x178], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x170], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x168], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x180]
               	mov	rcx, qword ptr [rsp + 0x188]
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x190]
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
               	bt	r9, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
               	jmp	 <L87>
<L86>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x160], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x18], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x158], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x150], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x168]
               	mov	rcx, qword ptr [rsp + 0x170]
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0x178]
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
               	bt	r9, rdi
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
               	jmp	 <L99>
<L98>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x148], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x10], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x140], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x138], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x150]
               	mov	rcx, qword ptr [rsp + 0x158]
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x160]
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
               	bt	r9, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
               	jmp	 <L105>
<L104>:
               	xor	edi, edi
               	jmp	 <L106>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
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
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x10], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
               	jmp	 <L111>
<L110>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x130], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x128], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x120], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x138]
               	mov	rcx, qword ptr [rsp + 0x140]
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x148]
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
               	bt	r9, rdi
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L117>
<L116>:
               	xor	edi, edi
               	jmp	 <L118>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
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
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x8], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L123>
<L122>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x118], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x68], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x110], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x108], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x120]
               	mov	rcx, qword ptr [rsp + 0x128]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	rsi, qword ptr [rsp + 0x130]
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
               	bt	r9, rdi
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x68], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
               	jmp	 <L135>
<L134>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x100], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x60], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x108]
               	mov	rcx, qword ptr [rsp + 0x110]
               	mov	rdx, qword ptr [rsp + 0x68]
               	mov	rsi, qword ptr [rsp + 0x118]
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
               	bt	r9, rdi
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
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
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x60], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
               	jmp	 <L147>
<L146>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x58], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xf0]
               	mov	rcx, qword ptr [rsp + 0xf8]
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rsi, qword ptr [rsp + 0x100]
               	jmp	 <L148>
               	nop	dword ptr [rax + rax]
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
               	bt	r9, rdi
               	jae	 <L150>
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L159>
<L158>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x50], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xc0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xd8]
               	mov	rcx, qword ptr [rsp + 0xe0]
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0xe8]
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
               	bt	r9, rdi
               	jae	 <L162>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
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
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
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
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
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
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
               	jmp	 <L171>
<L170>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1f0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xc0]
               	mov	rcx, qword ptr [rsp + 0xc8]
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0xd0]
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
               	bt	r9, rdi
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x1f0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
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
               	xor	qword ptr [rsp + 0x1f0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
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
               	xor	qword ptr [rsp + 0x1f0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
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
               	xor	qword ptr [rsp + 0x1f0], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb8], rcx
               	xor	qword ptr [rsp + 0xb0], rax
               	jmp	 <L183>
<L182>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xb0]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0x1f0]
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
               	bt	r9, rdi
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xa0], rax
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
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xa0], rax
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
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xa0], rax
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
               	xor	qword ptr [rsp + 0x80], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa8], rcx
               	xor	qword ptr [rsp + 0xa0], rax
               	jmp	 <L195>
<L194>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x90], rax
               	xor	r8d, r8d
               	mov	rax, qword ptr [rsp + 0xa0]
               	mov	rcx, qword ptr [rsp + 0xa8]
               	mov	rsi, qword ptr [rsp + 0x40]
               	mov	rdi, qword ptr [rsp + 0x80]
               	mov	rdx, r9
               	jmp	 <L196>
               	nop	dword ptr [rax]
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
               	mov	r9, rdx
               	je	 <L197>
<L196>:
               	bt	r9, r8
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
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
               	je	 <L200>
<L199>:
               	movabs	r9, -0x2a59ed990f36c6d4
               	bt	r9, r8
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
               	jmp	 <L201>
<L200>:
               	xor	r8d, r8d
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
               	movabs	r9, -0x56a7d9e71fc03656
               	bt	r9, r8
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
               	jmp	 <L204>
<L203>:
               	xor	r8d, r8d
               	jmp	 <L205>
               	nop	word ptr cs:[rax + rax]
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
               	movabs	r9, 0x39abdc4529b1661c
               	bt	r9, r8
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x78], rdi
               	xor	qword ptr [rsp + 0x38], rsi
               	xor	qword ptr [rsp + 0x98], rcx
               	xor	qword ptr [rsp + 0x90], rax
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x230], r13
               	mov	qword ptr [rsp + 0x238], rbx
               	mov	qword ptr [rsp + 0x240], r11
               	mov	qword ptr [rsp + 0x248], r10
               	xor	r9d, r9d
               	xor	r13d, r13d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	xor	r11d, r11d
               	xor	esi, esi
               	mov	rdi, qword ptr [rsp + 0x90]
               	mov	r8, qword ptr [rsp + 0x98]
               	mov	r10, qword ptr [rsp + 0x38]
               	mov	rax, qword ptr [rsp + 0x78]
               	jmp	 <L208>
<L210>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L209>
<L208>:
               	bt	rdx, rsi
               	jae	 <L210>
               	xor	r9, rax
               	xor	r13, r10
               	xor	qword ptr [rsp + 0x88], r8
               	xor	r11, rdi
               	jmp	 <L210>
<L209>:
               	xor	esi, esi
               	movabs	rcx, -0x2a59ed990f36c6d4
               	jmp	 <L211>
               	nop	word ptr [rax + rax]
<L213>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L212>
<L211>:
               	bt	rcx, rsi
               	jae	 <L213>
               	xor	r9, rax
               	xor	r13, r10
               	xor	qword ptr [rsp + 0x88], r8
               	xor	r11, rdi
               	jmp	 <L213>
<L212>:
               	xor	esi, esi
               	movabs	rcx, -0x56a7d9e71fc03656
               	jmp	 <L214>
               	nop	word ptr [rax + rax]
<L216>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, rsi
               	jae	 <L216>
               	xor	r9, rax
               	xor	r13, r10
               	xor	qword ptr [rsp + 0x88], r8
               	xor	r11, rdi
               	jmp	 <L216>
<L215>:
               	xor	esi, esi
               	movabs	rcx, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	word ptr [rax + rax]
<L219>:
               	mov	rbx, r10
               	shl	rbx, 0x11
               	xor	r8, rax
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rax, rdi
               	xor	r8, rbx
               	rol	rdi, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L218>
<L217>:
               	bt	rcx, rsi
               	jae	 <L219>
               	xor	r9, rax
               	xor	r13, r10
               	xor	qword ptr [rsp + 0x88], r8
               	xor	r11, rdi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x208], rbp
               	mov	qword ptr [rsp + 0x210], r12
               	mov	qword ptr [rsp + 0x218], r15
               	mov	qword ptr [rsp + 0x200], r14
               	xor	edi, edi
               	xor	r10d, r10d
               	xor	ecx, ecx
               	xor	r8d, r8d
               	xor	ebx, ebx
               	mov	r14, r11
               	mov	r15, qword ptr [rsp + 0x88]
               	mov	r12, r13
               	mov	rsi, r9
               	jmp	 <L220>
               	nop	dword ptr [rax + rax]
<L222>:
               	mov	rax, r12
               	shl	rax, 0x11
               	xor	r15, rsi
               	xor	r14, r12
               	xor	r12, r15
               	xor	rsi, r14
               	xor	r15, rax
               	rol	r14, 0x2d
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L221>
<L220>:
               	bt	rdx, rbx
               	jae	 <L222>
               	xor	rdi, rsi
               	xor	r10, r12
               	xor	rcx, r15
               	xor	r8, r14
               	jmp	 <L222>
<L221>:
               	xor	ebx, ebx
               	jmp	 <L223>
               	nop	dword ptr [rax + rax]
<L225>:
               	mov	rax, r12
               	shl	rax, 0x11
               	xor	r15, rsi
               	xor	r14, r12
               	xor	r12, r15
               	xor	rsi, r14
               	xor	r15, rax
               	rol	r14, 0x2d
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L224>
<L223>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, rbx
               	jae	 <L225>
               	xor	rdi, rsi
               	xor	r10, r12
               	xor	rcx, r15
               	xor	r8, r14
               	jmp	 <L225>
<L224>:
               	xor	ebx, ebx
               	jmp	 <L226>
               	nop	word ptr cs:[rax + rax]
<L228>:
               	mov	rax, r12
               	shl	rax, 0x11
               	xor	r15, rsi
               	xor	r14, r12
               	xor	r12, r15
               	xor	rsi, r14
               	xor	r15, rax
               	rol	r14, 0x2d
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L227>
<L226>:
               	movabs	rax, -0x56a7d9e71fc03656
               	bt	rax, rbx
               	jae	 <L228>
               	xor	rdi, rsi
               	xor	r10, r12
               	xor	rcx, r15
               	xor	r8, r14
               	jmp	 <L228>
<L227>:
               	xor	ebx, ebx
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rax, r12
               	shl	rax, 0x11
               	xor	r15, rsi
               	xor	r14, r12
               	xor	r12, r15
               	xor	rsi, r14
               	xor	r15, rax
               	rol	r14, 0x2d
               	inc	rbx
               	cmp	rbx, 0x40
               	je	 <L230>
<L229>:
               	movabs	rax, 0x39abdc4529b1661c
               	bt	rax, rbx
               	jae	 <L231>
               	xor	rdi, rsi
               	xor	r10, r12
               	xor	rcx, r15
               	xor	r8, r14
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x228], rcx
               	mov	rax, qword ptr [rsp + 0x1f8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r15, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x268], r15
               	mov	rax, qword ptr [rsp + 0x210]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x270], rax
               	mov	rax, qword ptr [rsp + 0x208]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rdx, qword ptr [rsp + 0x70]
               	lea	rsi, [rdx + 4*rdx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x278], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x280], rax
               	mov	rax, qword ptr [rsp]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x290], rax
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x298], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2a0], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2a8], rax
               	mov	rax, qword ptr [rsp + 0x10]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2b0], rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x68]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2b8], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2c0], rax
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c8], rax
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r12, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2d0], r12
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rsi, [rcx + 4*rcx]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2d8], rax
               	lea	rax, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2e0], rax
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e8], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f0], rax
               	lea	rax, [4*r13]
               	add	rax, r13
               	rol	rax, 0x7
               	lea	rbp, [rax + 8*rax]
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2f8], rbp
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x300], rax
               	mov	rax, qword ptr [rsp + 0x218]
               	test	rax, rax
               	je	 <L232>
               	neg	eax
               	mov	qword ptr [rsp + 0x218], rax
               	mov	edx, 0x1
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xc60>
               	xor	ecx, ecx
               	vpbroadcastw	xmm2, word ptr  <__libc_start_main+0xcd0>
               	lea	rbx,  <__libc_start_main+0xcd4>
               	vmovaps	ymm3, ymmword ptr  <__libc_start_main+0xc40>
               	vpbroadcastq	xmm4, qword ptr  <__libc_start_main+0xc70>
               	vmovdqa	xmm5, xmmword ptr  <__libc_start_main+0xc90>
               	vmovdqa	xmm6, xmmword ptr  <__libc_start_main+0xca0>
               	vbroadcastss	xmm7, dword ptr  <__libc_start_main+0xcb0>
               	mov	r14, qword ptr [rsp + 0x200]
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L238>:
               	vpblendd	ymm8, ymm9, ymm8, 0xc0  # ymm8 = ymm9[0,1,2,3,4,5],ymm8[6,7]
               	vpermq	ymm8, ymm8, 0x93        # ymm8 = ymm8[3,0,1,2]
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x268]
               	vmovdqu	ymm10, ymmword ptr [rsp + 0x2a8]
               	vmovdqu	ymm11, ymmword ptr [rsp + 0x2c8]
               	vmovdqu	ymm12, ymmword ptr [rsp + 0x2e8]
               	vpsrlq	ymm9, ymm9, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x268], ymm9
               	vpsrlq	ymm8, ymm8, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x288], ymm8
               	vpsrlq	ymm8, ymm10, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2a8], ymm8
               	vpsrlq	ymm8, ymm11, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2c8], ymm8
               	vpsrlq	ymm10, ymm12, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2e8], ymm10
               	vmovq	r15, xmm9
               	vextracti128	xmm9, ymm10, 0x1
               	vmovq	rbp, xmm9
               	vpextrq	r12, xmm8, 0x1
<L244>:
               	mov	rax, qword ptr [rsp + 0x218]
               	add	eax, edx
               	inc	eax
               	mov	esi, edx
               	inc	esi
               	mov	edx, esi
               	cmp	eax, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	ymm8, ymmword ptr [rsp + 0x270]
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x290]
               	movzx	eax, r15b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	esi, [rax + 2*rax]
               	lea	eax, [rax + 4*rsi]
               	sub	r15b, al
               	cmp	r15b, 0xc
               	ja	 <L235>
               	vpand	ymm10, ymm9, ymm1
               	vpand	ymm11, ymm8, ymm1
               	vpackusdw	ymm10, ymm11, ymm10
               	vextracti128	xmm11, ymm10, 0x1
               	vpackusdw	xmm10, xmm10, xmm11
               	vpshufd	xmm10, xmm10, 0xd8      # xmm10 = xmm10[0,2,1,3]
               	vpackuswb	xmm10, xmm10, xmm10
               	vmovdqu	xmm11, xmmword ptr [rsp + 0x2b0]
               	vpshufb	xmm11, xmm11, xmm2
               	movzx	eax, r15b
               	movsxd	rax, dword ptr [rbx + 4*rax]
               	add	rax, rbx
               	jmp	rax
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0x0
               	jmp	 <L236>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0xb
               	jmp	 <L237>
               	vpextrb	eax, xmm10, 0x7
               	imul	rsi, rcx, 0x64
               	vcvtsi2ss	xmm12, xmm15, eax
               	mov	byte ptr [r14 + rsi + 0x60], 0x4
               	inc	rcx
               	vmovss	dword ptr [r14 + rsi + 0x20], xmm12
               	vpunpcklbw	xmm10, xmm10, xmm11 # xmm10 = xmm10[0],xmm11[0],xmm10[1],xmm11[1],xmm10[2],xmm11[2],xmm10[3],xmm11[3],xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
               	vpshufb	xmm10, xmm10, xmm4
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vmovups	ymmword ptr [r14 + rsi], ymm10
               	test	dl, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0xc
               	inc	rcx
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm11, ymm10, ymm3
               	vmovups	ymmword ptr [r14 + rax], ymm11
               	vmovdqu	xmm11, xmmword ptr [rsp + 0x2c0]
               	vpshufb	xmm11, xmm11, xmm6
               	vcvtdq2ps	xmm11, xmm11
               	movzx	esi, r12b
               	vcvtsi2ss	xmm12, xmm15, esi
               	vmovlps	qword ptr [r14 + rax + 0x20], xmm11
               	vmovss	dword ptr [r14 + rax + 0x28], xmm12
               	vshufps	xmm10, xmm10, xmm10, 0xff # xmm10 = xmm10[3,3,3,3]
               	vmovss	dword ptr [r14 + rax + 0x2c], xmm10
               	vmovups	xmm13, xmmword ptr [rsp + 0x2d8]
               	vshufps	xmm13, xmm13, xmmword ptr [rsp + 0x2e8], 0x88 # xmm13 = xmm13[0,2],mem[0,2]
               	vandps	xmm13, xmm13, xmm7
               	vcvtdq2ps	xmm13, xmm13
               	vshufps	xmm14, xmm13, xmm13, 0xd8 # xmm14 = xmm13[0,2,1,3]
               	vmovups	xmmword ptr [r14 + rax + 0x30], xmm14
               	vmovlps	qword ptr [r14 + rax + 0x40], xmm11
               	movzx	esi, bpl
               	vcvtsi2ss	xmm11, xmm15, esi
               	vmovss	dword ptr [r14 + rax + 0x48], xmm12
               	vmovss	dword ptr [r14 + rax + 0x4c], xmm10
               	vmovss	dword ptr [r14 + rax + 0x50], xmm11
               	vshufps	xmm10, xmm13, xmm13, 0xe6 # xmm10 = xmm13[2,1,2,3]
               	vmovlps	qword ptr [r14 + rax + 0x54], xmm10
               	vextractps	dword ptr [r14 + rax + 0x5c], xmm13, 0x3
               	test	dl, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0x9
               	jmp	 <L240>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0x2
               	jmp	 <L241>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0x3
               	jmp	 <L236>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0x7
               	inc	rcx
               	vpunpcklbw	xmm12, xmm10, xmm11 # xmm12 = xmm10[0],xmm11[0],xmm10[1],xmm11[1],xmm10[2],xmm11[2],xmm10[3],xmm11[3],xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
               	vpshufb	xmm12, xmm12, xmm4
               	vpmovzxbd	ymm12, xmm12    # ymm12 = xmm12[0],zero,zero,zero,xmm12[1],zero,zero,zero,xmm12[2],zero,zero,zero,xmm12[3],zero,zero,zero,xmm12[4],zero,zero,zero,xmm12[5],zero,zero,zero,xmm12[6],zero,zero,zero,xmm12[7],zero,zero,zero
               	vcvtdq2ps	ymm12, ymm12
               	vpsrlq	xmm10, xmm10, 0x38
               	vpblendvb	xmm10, xmm11, xmm10, xmm5
               	vmovups	ymmword ptr [r14 + rax], ymm12
               	vpmovzxbd	xmm10, xmm10    # xmm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero
               	jmp	 <L242>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0x1
<L241>:
               	inc	rcx
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [r14 + rax], ymm10
               	vpextrb	esi, xmm11, 0x0
               	jmp	 <L243>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0x5
               	jmp	 <L236>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0x6
<L237>:
               	inc	rcx
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [r14 + rax], ymm10
               	vpmovzxbd	xmm10, xmm11    # xmm10 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
<L242>:
               	vcvtdq2ps	xmm10, xmm10
               	vmovlps	qword ptr [r14 + rax + 0x20], xmm10
               	test	dl, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0xa
<L240>:
               	inc	rcx
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [r14 + rax], ymm10
               	vpextrb	esi, xmm11, 0x1
<L243>:
               	vcvtsi2ss	xmm10, xmm15, esi
               	vmovss	dword ptr [r14 + rax + 0x20], xmm10
<L235>:
               	test	dl, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, rcx, 0x64
               	mov	byte ptr [r14 + rax + 0x60], 0x8
<L236>:
               	inc	rcx
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [r14 + rax], ymm10
               	test	dl, 0x7
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
               	mov	rbx, qword ptr [rsp + 0x210]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x248]
               	mov	r14, qword ptr [rsp + 0x240]
               	xor	rsi, r14
               	mov	r12, qword ptr [rsp + 0x238]
               	xor	r12, rbx
               	xor	rbx, rsi
               	mov	qword ptr [rsp + 0x210], rbx
               	xor	r14, r12
               	mov	qword ptr [rsp + 0x240], r14
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x248], rsi
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x238], r12
               	mov	rbx, qword ptr [rsp + 0x208]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x230]
               	mov	r14, qword ptr [rsp + 0x1e8]
               	xor	r14, rsi
               	mov	qword ptr [rsp + 0x318], rdx
               	mov	rdx, qword ptr [rsp + 0x1e0]
               	xor	rdx, rbx
               	xor	rbx, r14
               	mov	qword ptr [rsp + 0x208], rbx
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x230], rsi
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x1e0], rdx
               	xor	r14, rax
               	mov	qword ptr [rsp + 0x1e8], r14
               	mov	rbx, qword ptr [rsp + 0x70]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1d8]
               	mov	rsi, qword ptr [rsp + 0x1d0]
               	xor	rsi, rdx
               	mov	r14, qword ptr [rsp + 0x1c8]
               	xor	r14, rbx
               	xor	rbx, rsi
               	xor	rdx, r14
               	mov	qword ptr [rsp + 0x1d8], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1d0], rsi
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x1c8], r14
               	mov	r15, qword ptr [rsp]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1c0]
               	mov	rsi, qword ptr [rsp + 0x1b8]
               	xor	rsi, rdx
               	mov	r14, qword ptr [rsp + 0x1b0]
               	xor	r14, r15
               	xor	r15, rsi
               	mov	qword ptr [rsp], r15
               	xor	rdx, r14
               	mov	qword ptr [rsp + 0x1c0], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1b8], rsi
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x1b0], r14
               	mov	r15, qword ptr [rsp + 0x30]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x1a8]
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	xor	rsi, rdx
               	mov	r14, qword ptr [rsp + 0x198]
               	xor	r14, r15
               	xor	r15, rsi
               	mov	qword ptr [rsp + 0x30], r15
               	xor	rdx, r14
               	mov	qword ptr [rsp + 0x1a8], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x1a0], rsi
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x198], r14
               	mov	r15, qword ptr [rsp + 0x28]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x190]
               	mov	rsi, qword ptr [rsp + 0x188]
               	xor	rsi, rdx
               	mov	r14, qword ptr [rsp + 0x180]
               	xor	r14, r15
               	xor	r15, rsi
               	mov	qword ptr [rsp + 0x28], r15
               	xor	rdx, r14
               	mov	qword ptr [rsp + 0x190], rdx
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x180], r14
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x188], rsi
               	mov	r15, qword ptr [rsp + 0x20]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x178]
               	mov	rsi, qword ptr [rsp + 0x170]
               	xor	rsi, rdx
               	mov	r14, qword ptr [rsp + 0x168]
               	xor	r14, r15
               	xor	r15, rsi
               	mov	qword ptr [rsp + 0x20], r15
               	xor	rdx, r14
               	mov	qword ptr [rsp + 0x178], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x170], rsi
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x168], r14
               	mov	r15, qword ptr [rsp + 0x18]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x160]
               	mov	rsi, qword ptr [rsp + 0x158]
               	xor	rsi, rdx
               	mov	r14, qword ptr [rsp + 0x150]
               	xor	r14, r15
               	xor	r15, rsi
               	mov	qword ptr [rsp + 0x18], r15
               	xor	rdx, r14
               	mov	qword ptr [rsp + 0x160], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x158], rsi
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x150], r14
               	mov	r15, qword ptr [rsp + 0x10]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x148]
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	rsi, rdx
               	mov	r14, qword ptr [rsp + 0x138]
               	xor	r14, r15
               	xor	r15, rsi
               	mov	qword ptr [rsp + 0x10], r15
               	xor	rdx, r14
               	mov	qword ptr [rsp + 0x148], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x140], rsi
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x138], r14
               	mov	r15, qword ptr [rsp + 0x8]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x130]
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	rsi, rdx
               	mov	r14, qword ptr [rsp + 0x120]
               	xor	r14, r15
               	xor	r15, rsi
               	mov	qword ptr [rsp + 0x8], r15
               	xor	rdx, r14
               	mov	qword ptr [rsp + 0x130], rdx
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x120], r14
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x128], rsi
               	mov	r12, qword ptr [rsp + 0x68]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x118]
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	rsi, rdx
               	mov	r14, qword ptr [rsp + 0x108]
               	xor	r14, r12
               	xor	r12, rsi
               	xor	rdx, r14
               	mov	qword ptr [rsp + 0x118], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x110], rsi
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x108], r14
               	mov	r15, qword ptr [rsp + 0x60]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x100]
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x320], rcx
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rcx, r15
               	xor	r15, rsi
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x100], rdx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xf8], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	qword ptr [rsp + 0x1f8], r13
               	mov	r14, qword ptr [rsp + 0x58]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xe8]
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x260], r9
               	mov	r9, qword ptr [rsp + 0xd8]
               	xor	r9, r14
               	xor	r14, rsi
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0xe8], rcx
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xe0], rsi
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0xd8], r9
               	mov	rbp, r10
               	mov	r10, qword ptr [rsp + 0x50]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xd0]
               	mov	rsi, qword ptr [rsp + 0xc8]
               	xor	rsi, rcx
               	mov	r9, qword ptr [rsp + 0x88]
               	mov	r13, qword ptr [rsp + 0xc0]
               	xor	r13, r10
               	xor	r10, rsi
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0xd0], rcx
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0xc0], r13
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xc8], rsi
               	mov	r13, qword ptr [rsp + 0x48]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1f0]
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	rsi, rcx
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	qword ptr [rsp + 0x220], r11
               	mov	r11, rcx
               	xor	r11, r13
               	xor	r13, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xb8], rsi
               	mov	qword ptr [rsp + 0x258], rdi
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x80]
               	mov	qword ptr [rsp + 0x80], rcx
               	mov	rsi, qword ptr [rsp + 0xa8]
               	xor	rsi, rcx
               	mov	rdx, qword ptr [rsp + 0xa0]
               	mov	qword ptr [rsp + 0x250], r8
               	mov	r8, rdx
               	xor	r8, rdi
               	xor	rdi, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0xa8], rsi
               	mov	rcx, qword ptr [rsp + 0x38]
               	mov	rax, rcx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	qword ptr [rsp + 0x78], rdx
               	mov	rsi, qword ptr [rsp + 0x98]
               	xor	rsi, rdx
               	mov	rdx, qword ptr [rsp + 0x90]
               	xor	rdx, rcx
               	xor	rcx, rsi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x98], rsi
               	mov	rax, qword ptr [rsp + 0x1f8]
               	shl	rax, 0x11
               	xor	r9, qword ptr [rsp + 0x260]
               	mov	rsi, qword ptr [rsp + 0x220]
               	xor	rsi, qword ptr [rsp + 0x1f8]
               	mov	qword ptr [rsp + 0x220], rsi
               	xor	qword ptr [rsp + 0x1f8], r9
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x88], r9
               	mov	rax, rbp
               	shl	rax, 0x11
               	mov	r9, qword ptr [rsp + 0x228]
               	xor	r9, qword ptr [rsp + 0x258]
               	xor	qword ptr [rsp + 0x250], rbp
               	xor	rbp, r9
               	vpextrq	rsi, xmm0, 0x1
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x228], r9
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	r9, [rax + 8*rax]
               	mov	rax, qword ptr [rsp + 0x210]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rsi, qword ptr [rsp + 0x208]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x70], rbx
               	lea	rbx, [rbx + 4*rbx]
               	rol	rbx, 0x7
               	lea	rbx, [rbx + 8*rbx]
               	mov	qword ptr [rsp + 0x268], r9
               	mov	qword ptr [rsp + 0x270], rax
               	mov	rax, qword ptr [rsp]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x278], rsi
               	mov	rsi, qword ptr [rsp + 0x30]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x280], rbx
               	mov	rbx, qword ptr [rsp + 0x28]
               	lea	rbx, [rbx + 4*rbx]
               	rol	rbx, 0x7
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rbx, [rbx + 8*rbx]
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x290], rsi
               	mov	rsi, qword ptr [rsp + 0x18]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x298], rbx
               	mov	rbx, qword ptr [rsp + 0x10]
               	lea	rbx, [rbx + 4*rbx]
               	rol	rbx, 0x7
               	lea	rbx, [rbx + 8*rbx]
               	mov	qword ptr [rsp + 0x2a0], rax
               	mov	rax, qword ptr [rsp + 0x8]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2a8], rsi
               	mov	qword ptr [rsp + 0x68], r12
               	lea	rsi, [r12 + 4*r12]
               	rol	rsi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2b0], rbx
               	mov	qword ptr [rsp + 0x60], r15
               	lea	rbx, [r15 + 4*r15]
               	mov	r15, r9
               	rol	rbx, 0x7
               	lea	rbx, [rbx + 8*rbx]
               	mov	qword ptr [rsp + 0x2b8], rax
               	mov	qword ptr [rsp + 0x58], r14
               	lea	rax, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x1f8]
               	rol	rax, 0x7
               	lea	r12, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2c0], rsi
               	mov	qword ptr [rsp + 0x50], r10
               	lea	rax, [r10 + 4*r10]
               	mov	r10, rbp
               	mov	r9, qword ptr [rsp + 0x260]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x2c8], rbx
               	lea	rbx,  <__libc_start_main+0xcd4>
               	mov	qword ptr [rsp + 0x48], r13
               	lea	rsi, [4*r13]
               	add	rsi, r13
               	rol	rsi, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2d0], r12
               	mov	qword ptr [rsp + 0x2d8], rax
               	mov	qword ptr [rsp + 0x40], rdi
               	lea	rax, [rdi + 4*rdi]
               	mov	rdi, qword ptr [rsp + 0x258]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2e0], rsi
               	mov	qword ptr [rsp + 0x38], rcx
               	lea	rsi, [rcx + 4*rcx]
               	mov	rcx, qword ptr [rsp + 0x320]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2e8], rax
               	mov	r13, r14
               	lea	rax, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x200]
               	rol	rax, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rbp, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f0], rsi
               	lea	rax, [r10 + 4*r10]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x2f8], rbp
               	mov	qword ptr [rsp + 0x300], rax
               	xor	qword ptr [rsp + 0x1f0], r11
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0xb0], r11
               	mov	r11, qword ptr [rsp + 0x220]
               	vpbroadcastq	ymm8, xmm8
               	xor	qword ptr [rsp + 0x80], r8
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0xa0], r8
               	mov	r8, qword ptr [rsp + 0x250]
               	vpblendd	ymm0, ymm0, ymm8, 0x30  # ymm0 = ymm0[0,1,2,3],ymm8[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0x78], rdx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x90], rdx
               	mov	rdx, qword ptr [rsp + 0x318]
               	vpbroadcastq	ymm8, xmm9
               	xor	r9, r11
               	rol	r11, 0x2d
               	vpblendd	ymm0, ymm0, ymm8, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm8[6,7]
               	xor	rdi, r8
               	rol	r8, 0x2d
               	jmp	 <L244>
<L234>:
               	imul	rbx, rcx, 0x64
               	vxorps	xmm0, xmm0, xmm0
               	test	rbx, rbx
               	je	 <L245>
               	lea	r12,  <std::__detail::__variant::__gen_vtable<std::__detail::__variant::__deduce_visit_result<float>, Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&>::_S_vtable>
               	lea	r14, [rsp + 0x268]
               	mov	r15, qword ptr [rsp + 0x200]
               	nop	word ptr cs:[rax + rax]
<L246>:
               	vmovss	dword ptr [rsp], xmm0
               	movzx	eax, byte ptr [r15 + 0x60]
               	mov	rdi, r14
               	mov	rsi, r15
               	vzeroupper
               	call	qword ptr [r12 + 8*rax]
               	vmovss	xmm1, dword ptr [rsp]   # xmm1 = mem[0],zero,zero,zero
               	vaddss	xmm0, xmm0, xmm1
               	add	r15, 0x64
               	add	rbx, -0x64
               	jne	 <L246>
               	jmp	 <L245>
<L232>:
               	vxorps	xmm0, xmm0, xmm0
<L245>:
               	mov	rbx, qword ptr [rsp + 0x308]
               	or	rbx, qword ptr [rsp + 0x310]
               	mov	rdi, qword ptr [rsp + 0x200]
               	test	rdi, rdi
               	je	 <L247>
               	vmovss	dword ptr [rsp], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovss	xmm0, dword ptr [rsp]   # xmm0 = mem[0],zero,zero,zero
<L247>:
               	movabs	rax, 0x186a00000002a
               	cmp	rbx, rax
               	jne	 <L248>
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xccc>
               	jb	 <L249>
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xcc4>
               	ja	 <L249>
<L248>:
               	xor	eax, eax
               	add	rsp, 0x328
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L249>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp]   # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x6d40>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	int3
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 0ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcb8>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 1ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcb8>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 2ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 3ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 4ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcc0>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 5ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm0, xmm1, xmm0
               	ret
               	int3
               	int3

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 6ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x1c]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 7ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x20] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcbc>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 12ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 8ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm1, xmm0, xmm0
               	vmulss	xmm1, xmm1, dword ptr  <__libc_start_main+0xcc8>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 9ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcb8>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 10ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, xmm0
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcb4>
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

<std::__detail::__variant::__gen_vtable_impl<std::__detail::__variant::_Multi_array<std::__detail::__variant::__deduce_visit_result<float> (*)(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>, std::integer_sequence<unsigned long, 11ul>>::__visit_invoke(Bodies3D::ComputeVolume(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)>:
               	vmovss	xmm0, dword ptr [rsi + 0x1c] # xmm0 = mem[0],zero,zero,zero
               	vmulss	xmm0, xmm0, dword ptr  <__libc_start_main+0xcc8>
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x20]
               	vmulss	xmm0, xmm0, dword ptr [rsi + 0x24]
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x6d18>
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
