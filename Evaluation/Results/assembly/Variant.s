
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
               	call	qword ptr  <__libc_start_main+0x7268>
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
               	mov	rax, qword ptr  <__libc_start_main+0x7278>
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
               	mov	rax, qword ptr  <__libc_start_main+0x7280>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x7288>
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
               	mov	qword ptr [rsp + 0x2c8], rdx
               	movsxd	rax, edx
               	imul	rdi, rax, 0x64
               	mov	rsi, qword ptr  <__libc_start_main+0x7290>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	r11, rax
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
               	xor	r15d, r15d
               	xor	r9d, r9d
               	xor	r10d, r10d
               	xor	r12d, r12d
               	xor	edi, edi
               	mov	r8, rsi
               	mov	qword ptr [rsp + 0x60], rsi
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
               	xor	r10, rax
               	xor	r15, rsi
               	xor	r9, rcx
               	xor	r12, rdx
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
               	xor	r10, rax
               	xor	r15, rsi
               	xor	r9, rcx
               	xor	r12, rdx
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
               	xor	r10, rax
               	xor	r15, rsi
               	xor	r9, rcx
               	xor	r12, rdx
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
               	xor	r10, rax
               	xor	r15, rsi
               	xor	r9, rcx
               	xor	r12, rdx
               	jmp	 <L15>
<L14>:
               	xor	r13d, r13d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x250], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1d0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c8], rax
               	xor	edi, edi
               	mov	rax, r12
               	mov	rcx, r9
               	mov	rdx, r15
               	mov	rsi, r10
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L18>
               	xor	r13, rsi
               	xor	qword ptr [rsp + 0x250], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	qword ptr [rsp + 0x250], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	r13, rsi
               	xor	qword ptr [rsp + 0x250], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
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
               	xor	r13, rsi
               	xor	qword ptr [rsp + 0x250], rdx
               	xor	qword ptr [rsp + 0x1d0], rcx
               	xor	qword ptr [rsp + 0x1c8], rax
               	jmp	 <L27>
<L26>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1c0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x58], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1b0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1c8]
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	mov	rdx, qword ptr [rsp + 0x250]
               	mov	rsi, r13
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
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
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
               	xor	qword ptr [rsp + 0x1c0], rsi
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
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
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
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
               	xor	qword ptr [rsp + 0x58], rdx
               	xor	qword ptr [rsp + 0x1b8], rcx
               	xor	qword ptr [rsp + 0x1b0], rax
               	jmp	 <L39>
<L38>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x240], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1a0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x198], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x1b0]
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rsi, qword ptr [rsp + 0x1c0]
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
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x240], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rdi
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x1a8], rsi
               	xor	qword ptr [rsp + 0x240], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	xor	qword ptr [rsp + 0x240], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
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
               	xor	qword ptr [rsp + 0x240], rdx
               	xor	qword ptr [rsp + 0x1a0], rcx
               	xor	qword ptr [rsp + 0x198], rax
               	jmp	 <L51>
<L50>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x190], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x230], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x188], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x180], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x198]
               	mov	rcx, qword ptr [rsp + 0x1a0]
               	mov	rdx, qword ptr [rsp + 0x240]
               	mov	rsi, qword ptr [rsp + 0x1a8]
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x230], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	xor	qword ptr [rsp + 0x190], rsi
               	xor	qword ptr [rsp + 0x230], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	xor	qword ptr [rsp + 0x230], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
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
               	xor	qword ptr [rsp + 0x230], rdx
               	xor	qword ptr [rsp + 0x188], rcx
               	xor	qword ptr [rsp + 0x180], rax
               	jmp	 <L63>
<L62>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x178], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x220], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x170], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x168], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x180]
               	mov	rcx, qword ptr [rsp + 0x188]
               	mov	rdx, qword ptr [rsp + 0x230]
               	mov	rsi, qword ptr [rsp + 0x190]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	xor	qword ptr [rsp + 0x178], rsi
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
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
               	xor	qword ptr [rsp + 0x220], rdx
               	xor	qword ptr [rsp + 0x170], rcx
               	xor	qword ptr [rsp + 0x168], rax
               	jmp	 <L75>
<L74>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x160], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x210], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x158], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x150], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x168]
               	mov	rcx, qword ptr [rsp + 0x170]
               	mov	rdx, qword ptr [rsp + 0x220]
               	mov	rsi, qword ptr [rsp + 0x178]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	xor	qword ptr [rsp + 0x160], rsi
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
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
               	xor	qword ptr [rsp + 0x210], rdx
               	xor	qword ptr [rsp + 0x158], rcx
               	xor	qword ptr [rsp + 0x150], rax
               	jmp	 <L87>
<L86>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x148], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x200], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x140], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x138], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x150]
               	mov	rcx, qword ptr [rsp + 0x158]
               	mov	rdx, qword ptr [rsp + 0x210]
               	mov	rsi, qword ptr [rsp + 0x160]
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
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
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
               	xor	qword ptr [rsp + 0x148], rsi
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
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
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
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
               	xor	qword ptr [rsp + 0x200], rdx
               	xor	qword ptr [rsp + 0x140], rcx
               	xor	qword ptr [rsp + 0x138], rax
               	jmp	 <L99>
<L98>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x130], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1f0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x128], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x120], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x138]
               	mov	rcx, qword ptr [rsp + 0x140]
               	mov	rdx, qword ptr [rsp + 0x200]
               	mov	rsi, qword ptr [rsp + 0x148]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
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
               	xor	qword ptr [rsp + 0x130], rsi
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
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
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
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
               	xor	qword ptr [rsp + 0x1f0], rdx
               	xor	qword ptr [rsp + 0x128], rcx
               	xor	qword ptr [rsp + 0x120], rax
               	jmp	 <L111>
<L110>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x118], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x18], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x110], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x108], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x120]
               	mov	rcx, qword ptr [rsp + 0x128]
               	mov	rdx, qword ptr [rsp + 0x1f0]
               	mov	rsi, qword ptr [rsp + 0x130]
               	jmp	 <L112>
               	nop
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
               	jmp	 <L114>
<L113>:
               	xor	edi, edi
               	jmp	 <L115>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
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
               	xor	qword ptr [rsp + 0x118], rsi
               	xor	qword ptr [rsp + 0x18], rdx
               	xor	qword ptr [rsp + 0x110], rcx
               	xor	qword ptr [rsp + 0x108], rax
               	jmp	 <L123>
<L122>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x100], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x28], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xf0], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x108]
               	mov	rcx, qword ptr [rsp + 0x110]
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x118]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x100], rsi
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
               	jmp	 <L126>
<L125>:
               	xor	edi, edi
               	jmp	 <L127>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
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
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
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
               	xor	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0xf8], rcx
               	xor	qword ptr [rsp + 0xf0], rax
               	jmp	 <L135>
<L134>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x20], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xe0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xf0]
               	mov	rcx, qword ptr [rsp + 0xf8]
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rsi, qword ptr [rsp + 0x100]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L138>
               	xor	qword ptr [rsp + 0xe8], rsi
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L138>
<L137>:
               	xor	edi, edi
               	jmp	 <L139>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
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
               	xor	qword ptr [rsp + 0x20], rdx
               	xor	qword ptr [rsp + 0xe0], rcx
               	xor	qword ptr [rsp + 0xd8], rax
               	jmp	 <L147>
<L146>:
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
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rsi, qword ptr [rsp + 0xe8]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L150>
               	xor	qword ptr [rsp + 0xd0], rsi
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
               	jmp	 <L150>
<L149>:
               	xor	edi, edi
               	jmp	 <L151>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
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
               	xor	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0xc8], rcx
               	xor	qword ptr [rsp + 0xc0], rax
               	jmp	 <L159>
<L158>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x48], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xb0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa8], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xc0]
               	mov	rcx, qword ptr [rsp + 0xc8]
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rsi, qword ptr [rsp + 0xd0]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L162>
               	xor	qword ptr [rsp + 0xb8], rsi
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L162>
<L161>:
               	xor	edi, edi
               	jmp	 <L163>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
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
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
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
               	xor	qword ptr [rsp + 0x48], rdx
               	xor	qword ptr [rsp + 0xb0], rcx
               	xor	qword ptr [rsp + 0xa8], rax
               	jmp	 <L171>
<L170>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1e0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x40], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xa0], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x98], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0xa8]
               	mov	rcx, qword ptr [rsp + 0xb0]
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rsi, qword ptr [rsp + 0xb8]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L174>
<L173>:
               	xor	edi, edi
               	jmp	 <L175>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
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
               	xor	qword ptr [rsp + 0x1e0], rsi
               	xor	qword ptr [rsp + 0x40], rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	qword ptr [rsp + 0x98], rax
               	jmp	 <L183>
<L182>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x1d8], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x38], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x90], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x280], rax
               	xor	edi, edi
               	mov	rax, qword ptr [rsp + 0x98]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rsi, qword ptr [rsp + 0x1e0]
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
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rdi
               	jae	 <L186>
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x280], rax
               	jmp	 <L186>
<L185>:
               	xor	edi, edi
               	jmp	 <L187>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x280], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x280], rax
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
               	xor	qword ptr [rsp + 0x1d8], rsi
               	xor	qword ptr [rsp + 0x38], rdx
               	xor	qword ptr [rsp + 0x90], rcx
               	xor	qword ptr [rsp + 0x280], rax
               	jmp	 <L195>
<L194>:
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x88], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x30], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x80], rax
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x78], rax
               	xor	esi, esi
               	mov	rax, qword ptr [rsp + 0x280]
               	mov	rcx, qword ptr [rsp + 0x90]
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rdi, qword ptr [rsp + 0x1d8]
               	jmp	 <L196>
               	nop	word ptr cs:[rax + rax]
<L198>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L197>
<L196>:
               	movabs	r8, 0x180ec6d33cfd0aba
               	bt	r8, rsi
               	jae	 <L198>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L198>
<L197>:
               	xor	esi, esi
               	jmp	 <L199>
               	nop	word ptr cs:[rax + rax]
<L201>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L200>
<L199>:
               	movabs	r8, -0x2a59ed990f36c6d4
               	bt	r8, rsi
               	jae	 <L201>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L201>
<L200>:
               	xor	esi, esi
               	jmp	 <L202>
               	nop	word ptr cs:[rax + rax]
<L204>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L203>
<L202>:
               	movabs	r8, -0x56a7d9e71fc03656
               	bt	r8, rsi
               	jae	 <L204>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L204>
<L203>:
               	xor	esi, esi
               	jmp	 <L205>
               	nop	word ptr cs:[rax + rax]
<L207>:
               	mov	r8, rdx
               	shl	r8, 0x11
               	xor	rcx, rdi
               	xor	rax, rdx
               	xor	rdx, rcx
               	xor	rdi, rax
               	xor	rcx, r8
               	rol	rax, 0x2d
               	inc	rsi
               	cmp	rsi, 0x40
               	je	 <L206>
<L205>:
               	movabs	r8, 0x39abdc4529b1661c
               	bt	r8, rsi
               	jae	 <L207>
               	xor	qword ptr [rsp + 0x88], rdi
               	xor	qword ptr [rsp + 0x30], rdx
               	xor	qword ptr [rsp + 0x80], rcx
               	xor	qword ptr [rsp + 0x78], rax
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x2d0], r13
               	mov	qword ptr [rsp + 0x2e0], r10
               	mov	qword ptr [rsp + 0x2e8], r9
               	mov	qword ptr [rsp + 0x2f8], rbx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x70], rax
               	xor	r13d, r13d
               	xor	ebx, ebx
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x68], rax
               	xor	ecx, ecx
               	mov	rdx, qword ptr [rsp + 0x78]
               	mov	rdi, qword ptr [rsp + 0x80]
               	mov	r8, qword ptr [rsp + 0x30]
               	mov	rax, qword ptr [rsp + 0x88]
               	movabs	rsi, 0x180ec6d33cfd0aba
               	jmp	 <L208>
               	nop	word ptr [rax + rax]
<L210>:
               	mov	r9, r8
               	shl	r9, 0x11
               	xor	rdi, rax
               	xor	rdx, r8
               	xor	r8, rdi
               	xor	rax, rdx
               	xor	rdi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L209>
<L208>:
               	bt	rsi, rcx
               	jae	 <L210>
               	xor	qword ptr [rsp + 0x70], rax
               	xor	r13, r8
               	xor	rbx, rdi
               	xor	qword ptr [rsp + 0x68], rdx
               	jmp	 <L210>
<L209>:
               	xor	ecx, ecx
               	movabs	rsi, -0x2a59ed990f36c6d4
               	jmp	 <L211>
               	nop	dword ptr [rax]
<L213>:
               	mov	r9, r8
               	shl	r9, 0x11
               	xor	rdi, rax
               	xor	rdx, r8
               	xor	r8, rdi
               	xor	rax, rdx
               	xor	rdi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L212>
<L211>:
               	bt	rsi, rcx
               	jae	 <L213>
               	xor	qword ptr [rsp + 0x70], rax
               	xor	r13, r8
               	xor	rbx, rdi
               	xor	qword ptr [rsp + 0x68], rdx
               	jmp	 <L213>
<L212>:
               	xor	ecx, ecx
               	movabs	rsi, -0x56a7d9e71fc03656
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
               	mov	r9, r8
               	shl	r9, 0x11
               	xor	rdi, rax
               	xor	rdx, r8
               	xor	r8, rdi
               	xor	rax, rdx
               	xor	rdi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L215>
<L214>:
               	bt	rsi, rcx
               	jae	 <L216>
               	xor	qword ptr [rsp + 0x70], rax
               	xor	r13, r8
               	xor	rbx, rdi
               	xor	qword ptr [rsp + 0x68], rdx
               	jmp	 <L216>
<L215>:
               	xor	ecx, ecx
               	movabs	rsi, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	dword ptr [rax]
<L219>:
               	mov	r9, r8
               	shl	r9, 0x11
               	xor	rdi, rax
               	xor	rdx, r8
               	xor	r8, rdi
               	xor	rax, rdx
               	xor	rdi, r9
               	rol	rdx, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L218>
<L217>:
               	bt	rsi, rcx
               	jae	 <L219>
               	xor	qword ptr [rsp + 0x70], rax
               	xor	r13, r8
               	xor	rbx, rdi
               	xor	qword ptr [rsp + 0x68], rdx
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2d8], r12
               	mov	qword ptr [rsp + 0x268], r15
               	mov	qword ptr [rsp + 0x10], r11
               	xor	edx, edx
               	xor	r14d, r14d
               	xor	esi, esi
               	xor	edi, edi
               	xor	r11d, r11d
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r15, rbx
               	mov	r12, r13
               	mov	rcx, qword ptr [rsp + 0x70]
               	jmp	 <L220>
               	nop
<L222>:
               	mov	rax, r12
               	shl	rax, 0x11
               	xor	r15, rcx
               	xor	r8, r12
               	xor	r12, r15
               	xor	rcx, r8
               	xor	r15, rax
               	rol	r8, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L221>
<L220>:
               	movabs	rax, 0x180ec6d33cfd0aba
               	bt	rax, r11
               	jae	 <L222>
               	xor	rdx, rcx
               	xor	r14, r12
               	xor	rsi, r15
               	xor	rdi, r8
               	jmp	 <L222>
<L221>:
               	xor	r11d, r11d
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
<L225>:
               	mov	rax, r12
               	shl	rax, 0x11
               	xor	r15, rcx
               	xor	r8, r12
               	xor	r12, r15
               	xor	rcx, r8
               	xor	r15, rax
               	rol	r8, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L224>
<L223>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	bt	rax, r11
               	jae	 <L225>
               	xor	rdx, rcx
               	xor	r14, r12
               	xor	rsi, r15
               	xor	rdi, r8
               	jmp	 <L225>
<L224>:
               	xor	r11d, r11d
               	jmp	 <L226>
               	nop	word ptr cs:[rax + rax]
<L228>:
               	mov	rax, r12
               	shl	rax, 0x11
               	xor	r15, rcx
               	xor	r8, r12
               	xor	r12, r15
               	xor	rcx, r8
               	xor	r15, rax
               	rol	r8, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L227>
<L226>:
               	movabs	rax, -0x56a7d9e71fc03656
               	bt	rax, r11
               	jae	 <L228>
               	xor	rdx, rcx
               	xor	r14, r12
               	xor	rsi, r15
               	xor	rdi, r8
               	jmp	 <L228>
<L227>:
               	xor	r11d, r11d
               	jmp	 <L229>
               	nop	word ptr cs:[rax + rax]
<L231>:
               	mov	rax, r12
               	shl	rax, 0x11
               	xor	r15, rcx
               	xor	r8, r12
               	xor	r12, r15
               	xor	rcx, r8
               	xor	r15, rax
               	rol	r8, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L230>
<L229>:
               	movabs	rax, 0x39abdc4529b1661c
               	bt	rax, r11
               	jae	 <L231>
               	xor	rdx, rcx
               	xor	r14, r12
               	xor	rsi, r15
               	xor	rdi, r8
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r8, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x320], r8
               	mov	rax, qword ptr [rsp + 0x268]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x328], rax
               	mov	rax, qword ptr [rsp + 0x250]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x58]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x330], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x338], rax
               	mov	rax, qword ptr [rsp + 0x240]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x340], rax
               	mov	rax, qword ptr [rsp + 0x230]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x348], rax
               	mov	rax, qword ptr [rsp + 0x220]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x210]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x350], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x358], rax
               	mov	rax, qword ptr [rsp + 0x200]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x360], rax
               	mov	rax, qword ptr [rsp + 0x1f0]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x368], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x370], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x378], rax
               	mov	rax, qword ptr [rsp + 0x20]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x380], rax
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r10, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x388], r10
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x390], rax
               	lea	rax, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x398], rax
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3a0], rax
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3a8], rax
               	lea	rax, [4*r13]
               	add	rax, r13
               	rol	rax, 0x7
               	lea	r9, [rax + 8*rax]
               	lea	rax, [r14 + 4*r14]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x3b0], r9
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3b8], rax
               	mov	rax, qword ptr [rsp + 0x2c8]
               	test	eax, eax
               	je	 <L232>
               	mov	qword ptr [rsp + 0x2b8], r10
               	neg	eax
               	mov	qword ptr [rsp + 0x318], rax
               	mov	r15d, 0x1
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0xc80>
               	xor	r11d, r11d
               	vpbroadcastw	xmm2, word ptr  <__libc_start_main+0xcec>
               	lea	r12,  <__libc_start_main+0xcf0>
               	vmovaps	ymm3, ymmword ptr  <__libc_start_main+0xc60>
               	vpbroadcastq	xmm4, qword ptr  <__libc_start_main+0xc90>
               	vmovdqa	xmm5, xmmword ptr  <__libc_start_main+0xcb0>
               	vmovdqa	xmm6, xmmword ptr  <__libc_start_main+0xcc0>
               	vbroadcastss	xmm7, dword ptr  <__libc_start_main+0xcd0>
               	jmp	 <L233>
               	nop	dword ptr [rax]
<L238>:
               	vpblendd	ymm8, ymm9, ymm8, 0xc0  # ymm8 = ymm9[0,1,2,3,4,5],ymm8[6,7]
               	vpermq	ymm8, ymm8, 0x93        # ymm8 = ymm8[3,0,1,2]
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x320]
               	vmovdqu	ymm10, ymmword ptr [rsp + 0x360]
               	vmovdqu	ymm11, ymmword ptr [rsp + 0x380]
               	vmovdqu	ymm12, ymmword ptr [rsp + 0x3a0]
               	vpsrlq	ymm9, ymm9, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x320], ymm9
               	vpsrlq	ymm8, ymm8, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x340], ymm8
               	vpsrlq	ymm8, ymm10, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x360], ymm8
               	vpsrlq	ymm8, ymm11, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x380], ymm8
               	vpsrlq	ymm10, ymm12, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x3a0], ymm10
               	vmovq	r8, xmm9
               	vextracti128	xmm9, ymm10, 0x1
               	vmovq	r9, xmm9
               	vpextrq	qword ptr [rsp + 0x2b8], xmm8, 0x1
<L244>:
               	mov	rax, qword ptr [rsp + 0x318]
               	add	eax, r15d
               	inc	eax
               	mov	ecx, r15d
               	inc	ecx
               	mov	r15d, ecx
               	cmp	eax, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	ymm8, ymmword ptr [rsp + 0x328]
               	vmovdqu	ymm9, ymmword ptr [rsp + 0x348]
               	movzx	eax, r8b
               	imul	eax, eax, 0x4f
               	shr	eax, 0xa
               	lea	ecx, [rax + 2*rax]
               	lea	eax, [rax + 4*rcx]
               	sub	r8b, al
               	cmp	r8b, 0xc
               	ja	 <L235>
               	vpand	ymm10, ymm9, ymm1
               	vpand	ymm11, ymm8, ymm1
               	vpackusdw	ymm10, ymm11, ymm10
               	vextracti128	xmm11, ymm10, 0x1
               	vpackusdw	xmm10, xmm10, xmm11
               	vpshufd	xmm10, xmm10, 0xd8      # xmm10 = xmm10[0,2,1,3]
               	vpackuswb	xmm10, xmm10, xmm10
               	vmovdqu	xmm11, xmmword ptr [rsp + 0x368]
               	vpshufb	xmm11, xmm11, xmm2
               	movzx	eax, r8b
               	movsxd	rax, dword ptr [r12 + 4*rax]
               	add	rax, r12
               	jmp	rax
               	imul	rax, r11, 0x64
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	byte ptr [rcx + rax + 0x60], 0x0
               	jmp	 <L236>
               	imul	rax, r11, 0x64
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	byte ptr [rcx + rax + 0x60], 0xb
               	jmp	 <L237>
               	vpextrb	eax, xmm10, 0x7
               	imul	rcx, r11, 0x64
               	vcvtsi2ss	xmm12, xmm15, eax
               	mov	rax, qword ptr [rsp + 0x10]
               	mov	byte ptr [rax + rcx + 0x60], 0x4
               	inc	r11
               	vmovss	dword ptr [rax + rcx + 0x20], xmm12
               	vpunpcklbw	xmm10, xmm10, xmm11 # xmm10 = xmm10[0],xmm11[0],xmm10[1],xmm11[1],xmm10[2],xmm11[2],xmm10[3],xmm11[3],xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
               	vpshufb	xmm10, xmm10, xmm4
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vmovups	ymmword ptr [rax + rcx], ymm10
               	test	r15b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, r11, 0x64
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	byte ptr [r8 + rax + 0x60], 0xc
               	inc	r11
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm11, ymm10, ymm3
               	vmovups	ymmword ptr [r8 + rax], ymm11
               	vmovdqu	xmm11, xmmword ptr [rsp + 0x378]
               	vpshufb	xmm11, xmm11, xmm6
               	vcvtdq2ps	xmm11, xmm11
               	movzx	ecx, byte ptr [rsp + 0x2b8]
               	vcvtsi2ss	xmm12, xmm15, ecx
               	vmovlps	qword ptr [r8 + rax + 0x20], xmm11
               	vmovss	dword ptr [r8 + rax + 0x28], xmm12
               	vshufps	xmm10, xmm10, xmm10, 0xff # xmm10 = xmm10[3,3,3,3]
               	vmovss	dword ptr [r8 + rax + 0x2c], xmm10
               	vmovups	xmm13, xmmword ptr [rsp + 0x390]
               	vshufps	xmm13, xmm13, xmmword ptr [rsp + 0x3a0], 0x88 # xmm13 = xmm13[0,2],mem[0,2]
               	vandps	xmm13, xmm13, xmm7
               	vcvtdq2ps	xmm13, xmm13
               	vshufps	xmm14, xmm13, xmm13, 0xd8 # xmm14 = xmm13[0,2,1,3]
               	vmovups	xmmword ptr [r8 + rax + 0x30], xmm14
               	vmovlps	qword ptr [r8 + rax + 0x40], xmm11
               	movzx	ecx, r9b
               	vcvtsi2ss	xmm11, xmm15, ecx
               	vmovss	dword ptr [r8 + rax + 0x48], xmm12
               	vmovss	dword ptr [r8 + rax + 0x4c], xmm10
               	vmovss	dword ptr [r8 + rax + 0x50], xmm11
               	vshufps	xmm10, xmm13, xmm13, 0xe6 # xmm10 = xmm13[2,1,2,3]
               	vmovlps	qword ptr [r8 + rax + 0x54], xmm10
               	vextractps	dword ptr [r8 + rax + 0x5c], xmm13, 0x3
               	test	r15b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, r11, 0x64
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	byte ptr [r8 + rax + 0x60], 0x9
               	jmp	 <L240>
               	imul	rax, r11, 0x64
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	byte ptr [r8 + rax + 0x60], 0x2
               	jmp	 <L241>
               	imul	rax, r11, 0x64
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	byte ptr [rcx + rax + 0x60], 0x3
               	jmp	 <L236>
               	imul	rax, r11, 0x64
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	byte ptr [rcx + rax + 0x60], 0x7
               	inc	r11
               	vpunpcklbw	xmm12, xmm10, xmm11 # xmm12 = xmm10[0],xmm11[0],xmm10[1],xmm11[1],xmm10[2],xmm11[2],xmm10[3],xmm11[3],xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
               	vpshufb	xmm12, xmm12, xmm4
               	vpmovzxbd	ymm12, xmm12    # ymm12 = xmm12[0],zero,zero,zero,xmm12[1],zero,zero,zero,xmm12[2],zero,zero,zero,xmm12[3],zero,zero,zero,xmm12[4],zero,zero,zero,xmm12[5],zero,zero,zero,xmm12[6],zero,zero,zero,xmm12[7],zero,zero,zero
               	vcvtdq2ps	ymm12, ymm12
               	vpsrlq	xmm10, xmm10, 0x38
               	vpblendvb	xmm10, xmm11, xmm10, xmm5
               	vmovups	ymmword ptr [rcx + rax], ymm12
               	vpmovzxbd	xmm10, xmm10    # xmm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero
               	jmp	 <L242>
               	imul	rax, r11, 0x64
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	byte ptr [r8 + rax + 0x60], 0x1
<L241>:
               	inc	r11
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [r8 + rax], ymm10
               	vpextrb	ecx, xmm11, 0x0
               	jmp	 <L243>
               	imul	rax, r11, 0x64
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	byte ptr [rcx + rax + 0x60], 0x5
               	jmp	 <L236>
               	imul	rax, r11, 0x64
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	byte ptr [rcx + rax + 0x60], 0x6
<L237>:
               	inc	r11
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [rcx + rax], ymm10
               	vpmovzxbd	xmm10, xmm11    # xmm10 = xmm11[0],zero,zero,zero,xmm11[1],zero,zero,zero,xmm11[2],zero,zero,zero,xmm11[3],zero,zero,zero
<L242>:
               	vcvtdq2ps	xmm10, xmm10
               	vmovlps	qword ptr [rcx + rax + 0x20], xmm10
               	test	r15b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, r11, 0x64
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	byte ptr [r8 + rax + 0x60], 0xa
<L240>:
               	inc	r11
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [r8 + rax], ymm10
               	vpextrb	ecx, xmm11, 0x1
<L243>:
               	vcvtsi2ss	xmm10, xmm15, ecx
               	vmovss	dword ptr [r8 + rax + 0x20], xmm10
<L235>:
               	test	r15b, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	imul	rax, r11, 0x64
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	byte ptr [rcx + rax + 0x60], 0x8
<L236>:
               	inc	r11
               	vpmovzxbd	ymm10, xmm10    # ymm10 = xmm10[0],zero,zero,zero,xmm10[1],zero,zero,zero,xmm10[2],zero,zero,zero,xmm10[3],zero,zero,zero,xmm10[4],zero,zero,zero,xmm10[5],zero,zero,zero,xmm10[6],zero,zero,zero,xmm10[7],zero,zero,zero
               	vcvtdq2ps	ymm10, ymm10
               	vpermilps	ymm10, ymm10, ymm3
               	vmovups	ymmword ptr [rcx + rax], ymm10
               	test	r15b, 0x7
               	jne	 <L238>
<L239>:
               	vpermq	ymm8, ymm0, 0xe3        # ymm8 = ymm0[3,0,2,3]
               	vpermq	ymm9, ymm0, 0xe9        # ymm9 = ymm0[1,2,2,3]
               	vpextrq	rax, xmm0, 0x1
               	shl	rax, 0x11
               	vpxor	xmm9, xmm9, xmm8
               	vpextrq	rcx, xmm9, 0x1
               	vpxor	xmm0, xmm9, xmm0
               	xor	rcx, rax
               	vmovq	xmm8, rcx
               	vmovq	rax, xmm9
               	rol	rax, 0x2d
               	vmovq	xmm9, rax
               	mov	r9, qword ptr [rsp + 0x268]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2e8]
               	mov	r8, qword ptr [rsp + 0x2e0]
               	xor	rcx, r8
               	mov	r12, qword ptr [rsp + 0x2d8]
               	xor	r12, r9
               	xor	r9, rcx
               	mov	qword ptr [rsp + 0x268], r9
               	xor	r8, r12
               	mov	qword ptr [rsp + 0x2e0], r8
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x2e8], rcx
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x2d8], r12
               	mov	r9, qword ptr [rsp + 0x250]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2d0]
               	mov	r8, qword ptr [rsp + 0x1d0]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x260], rsi
               	mov	rsi, qword ptr [rsp + 0x1c8]
               	xor	rsi, r9
               	xor	r9, r8
               	mov	qword ptr [rsp + 0x250], r9
               	xor	rcx, rsi
               	mov	qword ptr [rsp + 0x2d0], rcx
               	rol	rsi, 0x2d
               	mov	qword ptr [rsp + 0x1c8], rsi
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x1d0], r8
               	mov	qword ptr [rsp + 0x310], r11
               	mov	r11, qword ptr [rsp + 0x58]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	mov	r8, qword ptr [rsp + 0x1b8]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x278], r13
               	mov	r13, qword ptr [rsp + 0x1b0]
               	xor	r13, r11
               	xor	r11, r8
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x1c0], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x1b8], r8
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x1b0], r13
               	mov	rsi, qword ptr [rsp + 0x240]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	mov	r8, qword ptr [rsp + 0x1a0]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x60], rbx
               	mov	rbx, qword ptr [rsp + 0x198]
               	xor	rbx, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x240], rsi
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x1a8], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x1a0], r8
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x198], rbx
               	mov	rsi, qword ptr [rsp + 0x230]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x190]
               	mov	r8, qword ptr [rsp + 0x188]
               	xor	r8, rcx
               	mov	r10, qword ptr [rsp + 0x180]
               	xor	r10, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x230], rsi
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x190], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x188], r8
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x180], r10
               	mov	rsi, qword ptr [rsp + 0x220]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x178]
               	mov	r8, qword ptr [rsp + 0x170]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x308], r15
               	mov	r15, qword ptr [rsp + 0x168]
               	xor	r15, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x220], rsi
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x178], rcx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x168], r15
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x170], r8
               	mov	rsi, qword ptr [rsp + 0x210]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x160]
               	mov	r8, qword ptr [rsp + 0x158]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x2c0], rdi
               	mov	r9, qword ptr [rsp + 0x150]
               	xor	r9, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x210], rsi
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x160], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x158], r8
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x150], r9
               	mov	rsi, qword ptr [rsp + 0x200]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x148]
               	mov	r8, qword ptr [rsp + 0x140]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x270], r14
               	mov	rdi, qword ptr [rsp + 0x138]
               	xor	rdi, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x200], rsi
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x148], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x140], r8
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x138], rdi
               	mov	rsi, qword ptr [rsp + 0x1f0]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x130]
               	mov	r8, qword ptr [rsp + 0x128]
               	xor	r8, rcx
               	mov	r14, qword ptr [rsp + 0x120]
               	xor	r14, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x1f0], rsi
               	xor	rcx, r14
               	mov	qword ptr [rsp + 0x130], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x128], r8
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x120], r14
               	mov	rsi, qword ptr [rsp + 0x18]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	r8, qword ptr [rsp + 0x110]
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x2f0], rdx
               	mov	rdx, qword ptr [rsp + 0x108]
               	xor	rdx, rsi
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x18], rsi
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0x118], rcx
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x108], rdx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x110], r8
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x100]
               	mov	r8, qword ptr [rsp + 0xf8]
               	xor	r8, rcx
               	mov	r13, qword ptr [rsp + 0xf0]
               	xor	r13, rdx
               	xor	rdx, r8
               	mov	qword ptr [rsp + 0x28], rdx
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x100], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xf8], r8
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0xf0], r13
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xe8]
               	mov	r8, qword ptr [rsp + 0xe0]
               	xor	r8, rcx
               	mov	rbx, qword ptr [rsp + 0xd8]
               	xor	rbx, rdx
               	xor	rdx, r8
               	mov	qword ptr [rsp + 0x20], rdx
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0xe8], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xe0], r8
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0xd8], rbx
               	mov	r13, qword ptr [rsp + 0x50]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xd0]
               	mov	r8, qword ptr [rsp + 0xc8]
               	xor	r8, rcx
               	mov	r10, qword ptr [rsp + 0xc0]
               	xor	r10, r13
               	xor	r13, r8
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0xd0], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xc8], r8
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0xc0], r10
               	mov	rbx, qword ptr [rsp + 0x48]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xb8]
               	mov	r8, qword ptr [rsp + 0xb0]
               	xor	r8, rcx
               	mov	r15, qword ptr [rsp + 0xa8]
               	xor	r15, rbx
               	xor	rbx, r8
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0xb8], rcx
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xa8], r15
               	xor	r8, rax
               	mov	qword ptr [rsp + 0xb0], r8
               	mov	rdi, qword ptr [rsp + 0x40]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r15, qword ptr [rsp + 0x1e0]
               	mov	rcx, qword ptr [rsp + 0xa0]
               	xor	rcx, r15
               	mov	r12, qword ptr [rsp + 0x98]
               	xor	r12, rdi
               	xor	rdi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xa0], rcx
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	r15, qword ptr [rsp + 0x1d8]
               	mov	rcx, qword ptr [rsp + 0x90]
               	xor	rcx, r15
               	mov	rsi, qword ptr [rsp + 0x280]
               	xor	rsi, r8
               	mov	qword ptr [rsp + 0x280], rsi
               	xor	r8, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x90], rcx
               	mov	r14, qword ptr [rsp + 0x30]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	r15, qword ptr [rsp + 0x88]
               	mov	rcx, qword ptr [rsp + 0x80]
               	xor	rcx, r15
               	mov	r10, qword ptr [rsp + 0x78]
               	xor	r10, r14
               	xor	r14, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x80], rcx
               	mov	rax, qword ptr [rsp + 0x278]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x60]
               	xor	rcx, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0x60], rcx
               	mov	r9, qword ptr [rsp + 0x68]
               	xor	r9, qword ptr [rsp + 0x278]
               	mov	rcx, qword ptr [rsp + 0x60]
               	xor	qword ptr [rsp + 0x278], rcx
               	xor	qword ptr [rsp + 0x60], rax
               	mov	rax, qword ptr [rsp + 0x270]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x260]
               	xor	rcx, qword ptr [rsp + 0x2f0]
               	mov	qword ptr [rsp + 0x260], rcx
               	mov	rcx, qword ptr [rsp + 0x2c0]
               	xor	rcx, qword ptr [rsp + 0x270]
               	mov	qword ptr [rsp + 0x2c0], rcx
               	mov	rcx, qword ptr [rsp + 0x260]
               	xor	qword ptr [rsp + 0x270], rcx
               	vpextrq	rcx, xmm0, 0x1
               	xor	qword ptr [rsp + 0x260], rax
               	lea	rax, [rcx + 4*rcx]
               	rol	rax, 0x7
               	lea	rdx, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x300], rdx
               	mov	rax, qword ptr [rsp + 0x268]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x250]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x58], r11
               	lea	r11, [r11 + 4*r11]
               	rol	r11, 0x7
               	lea	r11, [r11 + 8*r11]
               	mov	qword ptr [rsp + 0x320], rdx
               	mov	qword ptr [rsp + 0x328], rax
               	mov	rax, qword ptr [rsp + 0x240]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x330], rcx
               	mov	rcx, qword ptr [rsp + 0x230]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x338], r11
               	mov	rdx, qword ptr [rsp + 0x220]
               	lea	r11, [rdx + 4*rdx]
               	rol	r11, 0x7
               	mov	qword ptr [rsp + 0x340], rax
               	mov	rax, qword ptr [rsp + 0x210]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	r11, [r11 + 8*r11]
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	rcx, qword ptr [rsp + 0x200]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x350], r11
               	mov	rdx, qword ptr [rsp + 0x1f0]
               	lea	r11, [rdx + 4*rdx]
               	rol	r11, 0x7
               	lea	r11, [r11 + 8*r11]
               	mov	qword ptr [rsp + 0x358], rax
               	mov	rax, qword ptr [rsp + 0x18]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x360], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x368], r11
               	mov	rdx, qword ptr [rsp + 0x20]
               	lea	r11, [rdx + 4*rdx]
               	mov	rsi, qword ptr [rsp + 0x278]
               	rol	r11, 0x7
               	lea	r11, [r11 + 8*r11]
               	mov	qword ptr [rsp + 0x370], rax
               	mov	qword ptr [rsp + 0x50], r13
               	lea	rax, [4*r13]
               	add	rax, r13
               	rol	rax, 0x7
               	lea	r13, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x378], rcx
               	mov	qword ptr [rsp + 0x48], rbx
               	lea	rax, [rbx + 4*rbx]
               	rol	rax, 0x7
               	mov	qword ptr [rsp + 0x380], r11
               	mov	r11, qword ptr [rsp + 0x310]
               	mov	qword ptr [rsp + 0x40], rdi
               	lea	rcx, [rdi + 4*rdi]
               	mov	rdi, qword ptr [rsp + 0x2c0]
               	rol	rcx, 0x7
               	lea	rax, [rax + 8*rax]
               	lea	rcx, [rcx + 8*rcx]
               	mov	rbx, r13
               	mov	qword ptr [rsp + 0x2b8], r13
               	mov	qword ptr [rsp + 0x388], r13
               	mov	qword ptr [rsp + 0x390], rax
               	mov	qword ptr [rsp + 0x38], r8
               	lea	rax, [r8 + 4*r8]
               	mov	r8, qword ptr [rsp + 0x270]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x398], rcx
               	mov	qword ptr [rsp + 0x30], r14
               	lea	rcx, [r14 + 4*r14]
               	mov	rdx, qword ptr [rsp + 0x2f0]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x3a0], rax
               	mov	r13, rsi
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rsi, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3a8], rcx
               	mov	r14, r8
               	lea	rax, [r8 + 4*r8]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x3b0], rsi
               	mov	qword ptr [rsp + 0x3b8], rax
               	xor	qword ptr [rsp + 0x1e0], r12
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x98], r12
               	lea	r12,  <__libc_start_main+0xcf0>
               	mov	rbx, qword ptr [rsp + 0x60]
               	vpbroadcastq	ymm8, xmm8
               	mov	rax, qword ptr [rsp + 0x280]
               	xor	qword ptr [rsp + 0x1d8], rax
               	rol	rax, 0x2d
               	mov	qword ptr [rsp + 0x280], rax
               	vpblendd	ymm0, ymm0, ymm8, 0x30  # ymm0 = ymm0[0,1,2,3],ymm8[4,5],ymm0[6,7]
               	xor	r15, r10
               	mov	qword ptr [rsp + 0x88], r15
               	mov	r15, qword ptr [rsp + 0x308]
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x78], r10
               	mov	r8, qword ptr [rsp + 0x300]
               	vpbroadcastq	ymm8, xmm9
               	xor	qword ptr [rsp + 0x70], r9
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x68], r9
               	mov	r9, rsi
               	mov	rsi, qword ptr [rsp + 0x260]
               	vpblendd	ymm0, ymm0, ymm8, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm8[6,7]
               	xor	rdx, rdi
               	rol	rdi, 0x2d
               	jmp	 <L244>
<L234>:
               	imul	rdx, r11, 0x64
               	test	rdx, rdx
               	mov	rdi, qword ptr [rsp + 0x10]
               	je	 <L245>
               	add	rdx, rdi
               	mov	ecx, 0x1
               	xor	r12d, r12d
               	lea	rbx,  <std::__detail::__variant::__gen_vtable<std::__detail::__variant::__deduce_visit_result<float>, ComputeVolumeSum(PseudoRandomSequence@Evaluation.Dependency.PseudoRandomSequence)::'lambda'(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&)::operator()(std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&) const::'lambda'(auto const&)&&, std::variant<Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Circle@Evaluation.CRTP.Circle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Ellipse@Evaluation.CRTP.Ellipse>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Rectangle@Evaluation.CRTP.Rectangle>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Square@Evaluation.CRTP.Square>, Bodies3D::Shape3D@Evaluation.CRTP.Shape3D<Shapes2D::Triangle@Evaluation.CRTP.Triangle>, Bodies3D::Cube@Evaluation.CRTP.Cube, Bodies3D::Cuboid@Evaluation.CRTP.Cuboid, Bodies3D::Pyramid@Evaluation.CRTP.Pyramid, Bodies3D::Sphere@Evaluation.CRTP.Sphere, Bodies3D::Cylinder@Evaluation.CRTP.Cylinder, Bodies3D::Cone@Evaluation.CRTP.Cone, Bodies3D::Ellipsoid@Evaluation.CRTP.Ellipsoid, Bodies3D::Head@Evaluation.CRTP.Head> const&>::_S_vtable>
               	lea	r13, [rsp + 0x1ef]
               	mov	eax, 0x1
               	mov	r15, rdi
               	mov	qword ptr [rsp + 0x18], rdx
               	jmp	 <L246>
               	nop	dword ptr [rax]
<L248>:
               	add	r15, 0x320
               	mov	ecx, dword ptr [rsp + 0x280]
               	inc	ecx
               	popcnt	eax, ecx
               	mov	r12d, r14d
               	mov	rdx, qword ptr [rsp + 0x18]
               	cmp	r15, rdx
               	je	 <L247>
<L246>:
               	mov	dword ptr [rsp + 0x280], ecx
               	mov	r14d, eax
               	movzx	eax, byte ptr [r15 + 0x60]
               	mov	rdi, r13
               	mov	rsi, r15
               	vzeroupper
               	call	qword ptr [rbx + 8*rax]
               	vmovaps	xmmword ptr [rsp + 0x250], xmm0
               	lea	rsi, [r15 + 0x64]
               	movzx	eax, byte ptr [r15 + 0xc4]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovaps	xmmword ptr [rsp + 0x240], xmm0
               	lea	rsi, [r15 + 0xc8]
               	movzx	eax, byte ptr [r15 + 0x128]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovaps	xmmword ptr [rsp + 0x230], xmm0
               	lea	rsi, [r15 + 0x12c]
               	movzx	eax, byte ptr [r15 + 0x18c]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovaps	xmmword ptr [rsp + 0x220], xmm0
               	lea	rsi, [r15 + 0x190]
               	movzx	eax, byte ptr [r15 + 0x1f0]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovaps	xmmword ptr [rsp + 0x210], xmm0
               	lea	rsi, [r15 + 0x1f4]
               	movzx	eax, byte ptr [r15 + 0x254]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovaps	xmmword ptr [rsp + 0x200], xmm0
               	lea	rsi, [r15 + 0x258]
               	movzx	eax, byte ptr [r15 + 0x2b8]
               	mov	rdi, r13
               	call	qword ptr [rbx + 8*rax]
               	vmovaps	xmmword ptr [rsp + 0x1f0], xmm0
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
               	movsxd	rcx, r12d
               	mov	rax, rcx
               	shl	rax, 0x5
               	vmovaps	xmmword ptr [rsp + rax + 0x330], xmm0
               	vmovaps	xmmword ptr [rsp + rax + 0x320], xmm1
               	sub	ecx, r14d
               	jb	 <L248>
               	mov	eax, r12d
               	mov	rdx, rax
               	shl	rdx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rdx + 0x320]
               	inc	ecx
               	and	ecx, 0x3
               	je	 <L249>
               	lea	rsi, [rsp + 0x300]
               	add	rdx, rsi
               	xor	esi, esi
               	nop	word ptr [rax + rax]
<L250>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdx]
               	vmovaps	ymmword ptr [rdx], ymm0
               	inc	rsi
               	add	rdx, -0x20
               	cmp	rcx, rsi
               	jne	 <L250>
               	mov	rcx, rax
               	sub	rcx, rsi
               	mov	edx, r14d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L248>
               	jmp	 <L251>
<L249>:
               	mov	rcx, rax
               	mov	edx, r14d
               	sub	rax, rdx
               	cmp	rax, 0x3
               	jb	 <L248>
<L251>:
               	mov	rax, rcx
               	shl	rax, 0x5
               	lea	rsi, [rsp + 0x300]
               	add	rax, rsi
               	inc	rcx
               	nop	word ptr cs:[rax + rax]
<L252>:
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
               	jg	 <L252>
               	jmp	 <L248>
<L247>:
               	cmp	r14d, 0x2
               	mov	rdi, qword ptr [rsp + 0x10]
               	jb	 <L245>
               	mov	eax, r14d
               	mov	rcx, rax
               	shl	rcx, 0x5
               	vmovaps	ymm0, ymmword ptr [rsp + rcx + 0x300]
               	lea	rdx, [rsp + 0x320]
               	test	r14b, 0x1
               	jne	 <L253>
               	dec	rax
               	vaddps	ymm0, ymm0, ymmword ptr [rcx + rdx - 0x40]
               	vmovaps	ymmword ptr [rcx + rdx - 0x40], ymm0
<L253>:
               	cmp	r14d, 0x2
               	je	 <L245>
               	lea	rcx, [rax - 0x2]
               	shl	rax, 0x5
               	add	rax, rdx
               	add	rax, -0x40
               	nop	dword ptr [rax + rax]
<L254>:
               	vaddps	ymm0, ymm0, ymmword ptr [rax]
               	vmovaps	ymmword ptr [rax], ymm0
               	vaddps	ymm0, ymm0, ymmword ptr [rax - 0x20]
               	vmovaps	ymmword ptr [rax - 0x20], ymm0
               	add	rcx, -0x2
               	add	rax, -0x40
               	cmp	rcx, -0x3
               	jb	 <L254>
               	jmp	 <L245>
<L232>:
               	mov	rdi, qword ptr [rsp + 0x10]
<L245>:
               	vmovaps	ymm1, ymmword ptr [rsp + 0x320]
               	test	rdi, rdi
               	je	 <L255>
               	vmovaps	ymmword ptr [rsp + 0x280], ymm1
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovaps	ymm1, ymmword ptr [rsp + 0x280]
<L255>:
               	cmp	dword ptr [rsp + 0x2f8], 0x2a
               	mov	rax, qword ptr [rsp + 0x2c8]
               	jne	 <L256>
               	cmp	eax, 0x186a0
               	jne	 <L256>
               	vextractf128	xmm0, ymm1, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufps	xmm1, xmm0, xmm0, 0xd7  # xmm1 = xmm0[3,1,1,3]
               	vaddps	xmm0, xmm1, xmm0
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddss	xmm0, xmm0, xmm1
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0xce4>
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
               	vmovss	xmm0, dword ptr [rsp + 0x280] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x7298>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
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
               	mov	rax, qword ptr  <__libc_start_main+0x7270>
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
