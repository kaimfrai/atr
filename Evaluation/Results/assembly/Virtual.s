
build/Evaluation/bin/Virtual:	file format elf64-x86-64

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
               	call	qword ptr  <__libc_start_main+0x9828>
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
               	mov	rax, qword ptr  <__libc_start_main+0x9838>
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
               	mov	rax, qword ptr  <__libc_start_main+0x9840>
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
               	cmp	qword ptr , 0x0 <__libc_start_main+0x9848>
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
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.IBody>:
<initializer for module Evaluation.Virtual.Shape3D>:
<initializer for module Std>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Circle@Evaluation.Virtual.Circle>::~ExtendedShape()>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Square@Evaluation.Virtual.Square>::~ExtendedShape()>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse>::~ExtendedShape()>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::~ExtendedShape()>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Rectangle@Evaluation.Virtual.Rectangle>::~ExtendedShape()>:
<Bodies3D::Head@Evaluation.Virtual.Head::~Head()>:
<Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>:
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
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3

<initializer for module Meta.Math.Random>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
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
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Cube>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW4Cube__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW4Cube__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.Square>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Virtual.CubicBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Square>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW6Square__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW6Square__in_chrg>
               	jmp	 <initializer for module Evaluation.Virtual.RectangularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.RectangularShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW16RectangularShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW16RectangularShape__in_chrg>
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
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.CubicBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW9CubicBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW9CubicBody__in_chrg>
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

<initializer for module Evaluation.Virtual.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW6Circle__in_chrg>
               	jmp	 <initializer for module Evaluation.Virtual.CircularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.CircularShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW13CircularShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW13CircularShape__in_chrg>
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
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Ellipse>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW7Ellipse__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW7Ellipse__in_chrg>
               	jmp	 <initializer for module Evaluation.Virtual.CircularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Rectangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW9Rectangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW9Rectangle__in_chrg>
               	jmp	 <initializer for module Evaluation.Virtual.RectangularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW8Triangle__in_chrg>
               	jmp	 <initializer for module Evaluation.Virtual.TriangularShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.TriangularShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW15TriangularShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW15TriangularShape__in_chrg>
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

<initializer for module Evaluation.Virtual.Cuboid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW6Cuboid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW6Cuboid__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.Rectangle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Virtual.CubicBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Pyramid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW7Pyramid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW7Pyramid__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.Triangle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Virtual.PyramidicBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.PyramidicBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW13PyramidicBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW13PyramidicBody__in_chrg>
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

<initializer for module Evaluation.Virtual.Sphere>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW6Sphere__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW6Sphere__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.Circle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Virtual.SphericBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.SphericBody>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW11SphericBody__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW11SphericBody__in_chrg>
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

<initializer for module Evaluation.Virtual.Cylinder>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW8Cylinder__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW8Cylinder__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.Circle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Cone>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW4Cone__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW4Cone__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.Circle>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Ellipsoid>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW9Ellipsoid__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW9Ellipsoid__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.Ellipse>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Virtual.SphericBody>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Head>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW4Head__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW4Head__in_chrg>
               	jmp	 <initializer for module Evaluation.Virtual.Sphere>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<_GLOBAL__sub_I_Virtual.cpp>:
               	push	rax
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.Virtual.Cube>
               	call	 <initializer for module Evaluation.Virtual.Circle>
               	call	 <initializer for module Evaluation.Virtual.Ellipse>
               	call	 <initializer for module Evaluation.Virtual.Rectangle>
               	call	 <initializer for module Evaluation.Virtual.Square>
               	call	 <initializer for module Evaluation.Virtual.Triangle>
               	call	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	call	 <initializer for module Evaluation.Virtual.Cuboid>
               	call	 <initializer for module Evaluation.Virtual.Pyramid>
               	call	 <initializer for module Evaluation.Virtual.Sphere>
               	call	 <initializer for module Evaluation.Virtual.Cylinder>
               	call	 <initializer for module Evaluation.Virtual.Cone>
               	call	 <initializer for module Evaluation.Virtual.Ellipsoid>
               	call	 <initializer for module Evaluation.Virtual.Head>
               	call	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
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
               	movsx	edi, byte ptr [rax]
               	add	edi, -0x30
               	movzx	ecx, byte ptr [rax + 0x1]
               	test	cl, cl
               	je	 <L2>
               	add	rax, 0x2
               	nop	dword ptr [rax + rax]
<L3>:
               	lea	edx, [rdi + 4*rdi]
               	movsx	ecx, cl
               	lea	edi, [rcx + 2*rdx]
               	add	edi, -0x30
               	movzx	ecx, byte ptr [rax]
               	inc	rax
               	test	cl, cl
               	jne	 <L3>
<L2>:
               	movabs	r14, 0x180ec6d33cfd0aba
               	mov	qword ptr [rsp + 0x2a0], rdi
               	shl	rdi, 0x20
               	mov	eax, ebx
               	mov	qword ptr [rsp + 0x378], rax
               	mov	qword ptr [rsp + 0x380], rdi
               	sar	rdi, 0x1d
               	mov	rsi, qword ptr  <__libc_start_main+0x9850>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x18], rax
               	movsxd	rcx, ebx
               	vmovq	xmm0, rcx
               	vpbroadcastq	ymm0, xmm0
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <__libc_start_main+0x23e0>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	vextracti128	xmm3, ymm2, 0x1
               	vpermq	ymm2, ymm2, 0xe9        # ymm2 = ymm2[1,2,2,3]
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpextrq	rcx, xmm3, 0x1
               	shr	rcx, 0x1e
               	vpermq	ymm2, ymm2, 0xd0        # ymm2 = ymm2[0,0,1,3]
               	vpblendd	ymm0, ymm2, ymm0, 0x3   # ymm0 = ymm0[0,1],ymm2[2,3,4,5,6,7]
               	vmovq	xmm2, rcx
               	vpbroadcastq	ymm2, xmm2
               	vpblendd	ymm0, ymm0, ymm2, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm2[6,7]
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0x2440>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0x2428>
               	vpmuludq	ymm2, ymm2, ymm3
               	vpaddq	ymm1, ymm1, ymm2
               	vpsllq	ymm1, ymm1, 0x20
               	vpmuludq	ymm0, ymm0, ymm3
               	vpaddq	ymm0, ymm0, ymm1
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpbroadcastq	ymm1, qword ptr  <__libc_start_main+0x2430>
               	vpmuludq	ymm1, ymm0, ymm1
               	vpsrlq	ymm2, ymm0, 0x20
               	vpbroadcastq	ymm3, qword ptr  <__libc_start_main+0x2438>
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
               	xor	ebp, ebp
               	xor	esi, esi
               	xor	ecx, ecx
               	mov	rdx, r10
               	mov	qword ptr [rsp + 0x270], r10
               	jmp	 <L4>
               	nop
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
               	bt	r14, rcx
               	jae	 <L6>
               	xor	rbp, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	rsi, r9
               	jmp	 <L6>
<L5>:
               	mov	qword ptr [rsp + 0x248], rsi
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	edx, edx
               	jmp	 <L7>
               	nop	dword ptr [rax]
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
               	bt	rax, rdx
               	mov	rsi, qword ptr [rsp + 0x248]
               	jae	 <L9>
               	xor	rbp, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	rsi, r9
               	mov	qword ptr [rsp + 0x248], rsi
               	jmp	 <L9>
<L8>:
               	movabs	rdx, -0x56a7d9e71fc03656
               	xor	esi, esi
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
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
               	jae	 <L12>
               	xor	rbp, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	qword ptr [rsp + 0x248], r9
               	jmp	 <L12>
<L11>:
               	movabs	rsi, 0x39abdc4529b1661c
               	xor	r11d, r11d
               	jmp	 <L13>
               	nop	dword ptr [rax + rax]
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
               	xor	rbp, rdi
               	xor	r12, r10
               	xor	r13, r8
               	xor	qword ptr [rsp + 0x248], r9
               	jmp	 <L15>
<L14>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x238], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x60], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x230], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x228], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x248]
               	mov	r8, r13
               	mov	r9, r12
               	mov	r10, rbp
               	jmp	 <L16>
               	nop	word ptr [rax + rax]
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
               	bt	r14, r11
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x228], rdi
               	jmp	 <L18>
<L17>:
               	xor	r11d, r11d
               	jmp	 <L19>
               	nop	dword ptr [rax]
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
               	bt	rax, r11
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x228], rdi
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
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x228], rdi
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
               	xor	qword ptr [rsp + 0x238], r10
               	xor	qword ptr [rsp + 0x60], r9
               	xor	qword ptr [rsp + 0x230], r8
               	xor	qword ptr [rsp + 0x228], rdi
               	jmp	 <L27>
<L26>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x220], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x218], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x210], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x228]
               	mov	r8, qword ptr [rsp + 0x230]
               	mov	r9, qword ptr [rsp + 0x60]
               	mov	r10, qword ptr [rsp + 0x238]
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
               	bt	r14, r11
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x218], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	jmp	 <L30>
<L29>:
               	xor	r11d, r11d
               	jmp	 <L31>
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
               	bt	rax, r11
               	jae	 <L33>
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x218], r8
               	xor	qword ptr [rsp + 0x210], rdi
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
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x218], r8
               	xor	qword ptr [rsp + 0x210], rdi
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
               	xor	qword ptr [rsp + 0x220], r10
               	xor	qword ptr [rsp + 0xb8], r9
               	xor	qword ptr [rsp + 0x218], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	jmp	 <L39>
<L38>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x208], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x200], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x210]
               	mov	r8, qword ptr [rsp + 0x218]
               	mov	r9, qword ptr [rsp + 0xb8]
               	mov	r10, qword ptr [rsp + 0x220]
               	jmp	 <L40>
               	nop	dword ptr [rax + rax]
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
               	bt	r14, r11
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	jmp	 <L42>
<L41>:
               	xor	r11d, r11d
               	jmp	 <L43>
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
               	bt	rax, r11
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	jmp	 <L45>
<L44>:
               	xor	r11d, r11d
               	jmp	 <L46>
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
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	jmp	 <L48>
<L47>:
               	xor	r11d, r11d
               	jmp	 <L49>
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
               	xor	qword ptr [rsp + 0x208], r10
               	xor	qword ptr [rsp + 0xb0], r9
               	xor	qword ptr [rsp + 0x200], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	jmp	 <L51>
<L50>:
               	xor	ecx, ecx
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1f8]
               	mov	r8, qword ptr [rsp + 0x200]
               	mov	r9, qword ptr [rsp + 0xb0]
               	mov	r10, qword ptr [rsp + 0x208]
               	jmp	 <L52>
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
               	bt	r14, r11
               	jae	 <L54>
               	xor	rcx, r10
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x1f0], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	jmp	 <L54>
<L53>:
               	xor	r11d, r11d
               	jmp	 <L55>
               	nop	dword ptr [rax + rax]
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
               	bt	rax, r11
               	jae	 <L57>
               	xor	rcx, r10
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x1f0], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	jmp	 <L57>
<L56>:
               	xor	r11d, r11d
               	jmp	 <L58>
               	nop	dword ptr [rax + rax]
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
               	xor	rcx, r10
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x1f0], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	jmp	 <L60>
<L59>:
               	xor	r11d, r11d
               	jmp	 <L61>
               	nop	dword ptr [rax + rax]
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
               	xor	rcx, r10
               	xor	qword ptr [rsp + 0xa8], r9
               	xor	qword ptr [rsp + 0x1f0], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	jmp	 <L63>
<L62>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xa0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1e8]
               	mov	r8, qword ptr [rsp + 0x1f0]
               	mov	r9, qword ptr [rsp + 0xa8]
               	mov	r10, rcx
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
               	bt	r14, r11
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x1d8], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	jmp	 <L66>
<L65>:
               	xor	r11d, r11d
               	jmp	 <L67>
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
               	bt	rax, r11
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x1d8], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	jmp	 <L69>
<L68>:
               	xor	r11d, r11d
               	jmp	 <L70>
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
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x1d8], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	jmp	 <L72>
<L71>:
               	xor	r11d, r11d
               	jmp	 <L73>
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
               	xor	qword ptr [rsp + 0x1e0], r10
               	xor	qword ptr [rsp + 0xa0], r9
               	xor	qword ptr [rsp + 0x1d8], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	jmp	 <L75>
<L74>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x58], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	mov	r8, qword ptr [rsp + 0x1d8]
               	mov	r9, qword ptr [rsp + 0xa0]
               	mov	r10, qword ptr [rsp + 0x1e0]
               	jmp	 <L76>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r14, r11
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x1c8], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1c0], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	jmp	 <L78>
<L77>:
               	xor	r11d, r11d
               	jmp	 <L79>
               	nop	dword ptr [rax]
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
               	bt	rax, r11
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x1c8], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1c0], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
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
               	xor	qword ptr [rsp + 0x1c8], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1c0], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
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
               	xor	qword ptr [rsp + 0x1c8], r10
               	xor	qword ptr [rsp + 0x58], r9
               	xor	qword ptr [rsp + 0x1c0], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	jmp	 <L87>
<L86>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x50], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1b8]
               	mov	r8, qword ptr [rsp + 0x1c0]
               	mov	r9, qword ptr [rsp + 0x58]
               	mov	r10, qword ptr [rsp + 0x1c8]
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
               	bt	r14, r11
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x1b0], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1a8], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	jmp	 <L90>
<L89>:
               	xor	r11d, r11d
               	jmp	 <L91>
               	nop	dword ptr [rax]
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
               	bt	rax, r11
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x1b0], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1a8], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
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
               	xor	qword ptr [rsp + 0x1b0], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1a8], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
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
               	xor	qword ptr [rsp + 0x1b0], r10
               	xor	qword ptr [rsp + 0x50], r9
               	xor	qword ptr [rsp + 0x1a8], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	jmp	 <L99>
<L98>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x198], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x20], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x190], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x188], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	mov	r8, qword ptr [rsp + 0x1a8]
               	mov	r9, qword ptr [rsp + 0x50]
               	mov	r10, qword ptr [rsp + 0x1b0]
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
               	bt	r14, r11
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x198], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x190], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	jmp	 <L102>
<L101>:
               	xor	r11d, r11d
               	jmp	 <L103>
               	nop	dword ptr [rax]
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
               	bt	rax, r11
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x198], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x190], r8
               	xor	qword ptr [rsp + 0x188], rdi
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
               	xor	qword ptr [rsp + 0x198], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x190], r8
               	xor	qword ptr [rsp + 0x188], rdi
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
               	xor	qword ptr [rsp + 0x198], r10
               	xor	qword ptr [rsp + 0x20], r9
               	xor	qword ptr [rsp + 0x190], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	jmp	 <L111>
<L110>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x180], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x48], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x178], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x170], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x188]
               	mov	r8, qword ptr [rsp + 0x190]
               	mov	r9, qword ptr [rsp + 0x20]
               	mov	r10, qword ptr [rsp + 0x198]
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
               	bt	r14, r11
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x180], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x178], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	jmp	 <L114>
<L113>:
               	xor	r11d, r11d
               	jmp	 <L115>
               	nop	dword ptr [rax]
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
               	bt	rax, r11
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x180], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x178], r8
               	xor	qword ptr [rsp + 0x170], rdi
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
               	xor	qword ptr [rsp + 0x180], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x178], r8
               	xor	qword ptr [rsp + 0x170], rdi
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
               	xor	qword ptr [rsp + 0x180], r10
               	xor	qword ptr [rsp + 0x48], r9
               	xor	qword ptr [rsp + 0x178], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	jmp	 <L123>
<L122>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x40], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x160], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x170]
               	mov	r8, qword ptr [rsp + 0x178]
               	mov	r9, qword ptr [rsp + 0x48]
               	mov	r10, qword ptr [rsp + 0x180]
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
               	bt	r14, r11
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x168], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	jmp	 <L126>
<L125>:
               	xor	r11d, r11d
               	jmp	 <L127>
               	nop	dword ptr [rax]
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
               	bt	rax, r11
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x168], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
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
               	xor	qword ptr [rsp + 0x168], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
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
               	xor	qword ptr [rsp + 0x168], r10
               	xor	qword ptr [rsp + 0x40], r9
               	xor	qword ptr [rsp + 0x160], r8
               	xor	qword ptr [rsp + 0x158], rdi
               	jmp	 <L135>
<L134>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x38], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x148], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x140], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x158]
               	mov	r8, qword ptr [rsp + 0x160]
               	mov	r9, qword ptr [rsp + 0x40]
               	mov	r10, qword ptr [rsp + 0x168]
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
               	bt	r14, r11
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	jmp	 <L138>
<L137>:
               	xor	r11d, r11d
               	jmp	 <L139>
               	nop	dword ptr [rax]
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
               	bt	rax, r11
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
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
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
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
               	xor	qword ptr [rsp + 0x150], r10
               	xor	qword ptr [rsp + 0x38], r9
               	xor	qword ptr [rsp + 0x148], r8
               	xor	qword ptr [rsp + 0x140], rdi
               	jmp	 <L147>
<L146>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x30], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x130], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x128], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x140]
               	mov	r8, qword ptr [rsp + 0x148]
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	r10, qword ptr [rsp + 0x150]
               	jmp	 <L148>
               	nop
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
               	bt	r14, r11
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
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
               	bt	rax, r11
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	jmp	 <L153>
<L152>:
               	xor	r11d, r11d
               	jmp	 <L154>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	jmp	 <L156>
<L155>:
               	xor	r11d, r11d
               	jmp	 <L157>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x138], r10
               	xor	qword ptr [rsp + 0x30], r9
               	xor	qword ptr [rsp + 0x130], r8
               	xor	qword ptr [rsp + 0x128], rdi
               	jmp	 <L159>
<L158>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x28], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x118], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x110], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x128]
               	mov	r8, qword ptr [rsp + 0x130]
               	mov	r9, qword ptr [rsp + 0x30]
               	mov	r10, qword ptr [rsp + 0x138]
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
               	bt	r14, r11
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	jmp	 <L162>
<L161>:
               	xor	r11d, r11d
               	jmp	 <L163>
               	nop	dword ptr [rax]
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
               	bt	rax, r11
               	jae	 <L165>
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	jmp	 <L165>
<L164>:
               	xor	r11d, r11d
               	jmp	 <L166>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	jmp	 <L168>
<L167>:
               	xor	r11d, r11d
               	jmp	 <L169>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x120], r10
               	xor	qword ptr [rsp + 0x28], r9
               	xor	qword ptr [rsp + 0x118], r8
               	xor	qword ptr [rsp + 0x110], rdi
               	jmp	 <L171>
<L170>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x240], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x98], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x10], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x110]
               	mov	r8, qword ptr [rsp + 0x118]
               	mov	r9, qword ptr [rsp + 0x28]
               	mov	r10, qword ptr [rsp + 0x120]
               	jmp	 <L172>
               	nop
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
               	bt	r14, r11
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x240], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	jmp	 <L174>
<L173>:
               	xor	r11d, r11d
               	jmp	 <L175>
               	nop	dword ptr [rax]
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
               	bt	rax, r11
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x240], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	jmp	 <L177>
<L176>:
               	xor	r11d, r11d
               	jmp	 <L178>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x240], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	jmp	 <L180>
<L179>:
               	xor	r11d, r11d
               	jmp	 <L181>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x240], r10
               	xor	qword ptr [rsp + 0x98], r9
               	xor	qword ptr [rsp + 0x108], r8
               	xor	qword ptr [rsp + 0x10], rdi
               	jmp	 <L183>
<L182>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc8], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x90], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x100], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0x10]
               	mov	r8, qword ptr [rsp + 0x108]
               	mov	r9, qword ptr [rsp + 0x98]
               	mov	r10, qword ptr [rsp + 0x240]
               	jmp	 <L184>
               	nop	word ptr cs:[rax + rax]
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
               	bt	r14, r11
               	jae	 <L186>
               	xor	qword ptr [rsp + 0xc8], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	jmp	 <L186>
<L185>:
               	xor	r11d, r11d
               	jmp	 <L187>
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
               	bt	rax, r11
               	jae	 <L189>
               	xor	qword ptr [rsp + 0xc8], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0xf8], rdi
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
               	xor	qword ptr [rsp + 0xc8], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0xf8], rdi
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
               	xor	qword ptr [rsp + 0xc8], r10
               	xor	qword ptr [rsp + 0x90], r9
               	xor	qword ptr [rsp + 0x100], r8
               	xor	qword ptr [rsp + 0xf8], rdi
               	jmp	 <L195>
<L194>:
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x88], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xe8], rdi
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xf8]
               	mov	r8, qword ptr [rsp + 0x100]
               	mov	r9, qword ptr [rsp + 0x90]
               	mov	r10, qword ptr [rsp + 0xc8]
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
               	bt	r14, r11
               	jae	 <L198>
               	xor	qword ptr [rsp + 0xc0], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	jmp	 <L198>
<L197>:
               	xor	r11d, r11d
               	jmp	 <L199>
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
               	bt	rax, r11
               	jae	 <L201>
               	xor	qword ptr [rsp + 0xc0], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
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
               	xor	qword ptr [rsp + 0xc0], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
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
               	xor	qword ptr [rsp + 0xc0], r10
               	xor	qword ptr [rsp + 0x88], r9
               	xor	qword ptr [rsp + 0xf0], r8
               	xor	qword ptr [rsp + 0xe8], rdi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x2a8], rcx
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xe0], rcx
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x80], rcx
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0x68], rcx
               	xor	ecx, ecx
               	mov	qword ptr [rsp + 0xd8], rcx
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xe8]
               	mov	r8, qword ptr [rsp + 0xf0]
               	mov	r9, qword ptr [rsp + 0x88]
               	mov	r10, qword ptr [rsp + 0xc0]
               	mov	rcx, r14
               	jmp	 <L208>
<L210>:
               	mov	r14, r9
               	shl	r14, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	mov	r14, rcx
               	je	 <L209>
<L208>:
               	bt	r14, r11
               	jae	 <L210>
               	xor	qword ptr [rsp + 0xe0], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L210>
<L209>:
               	xor	r11d, r11d
               	jmp	 <L211>
<L213>:
               	mov	r14, r9
               	shl	r14, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L212>
<L211>:
               	bt	rax, r11
               	jae	 <L213>
               	xor	qword ptr [rsp + 0xe0], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L213>
<L212>:
               	xor	r11d, r11d
               	jmp	 <L214>
               	nop	dword ptr [rax]
<L216>:
               	mov	r14, r9
               	shl	r14, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L215>
<L214>:
               	bt	rdx, r11
               	jae	 <L216>
               	xor	qword ptr [rsp + 0xe0], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L216>
<L215>:
               	xor	r11d, r11d
               	jmp	 <L217>
               	nop	dword ptr [rax]
<L219>:
               	mov	r14, r9
               	shl	r14, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r14
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L218>
<L217>:
               	bt	rsi, r11
               	jae	 <L219>
               	xor	qword ptr [rsp + 0xe0], r10
               	xor	qword ptr [rsp + 0x80], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	jmp	 <L219>
<L218>:
               	mov	rdx, rax
               	mov	qword ptr [rsp + 0x2b0], rbp
               	mov	qword ptr [rsp + 0x2b8], r13
               	mov	qword ptr [rsp + 0x290], r12
               	xor	r14d, r14d
               	xor	r12d, r12d
               	xor	eax, eax
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	eax, eax
               	xor	r11d, r11d
               	mov	rdi, qword ptr [rsp + 0xd8]
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r9, qword ptr [rsp + 0x80]
               	mov	r10, qword ptr [rsp + 0xe0]
               	jmp	 <L220>
               	nop	word ptr [rax + rax]
<L222>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r13
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L221>
<L220>:
               	bt	rcx, r11
               	jae	 <L222>
               	xor	r14, r10
               	xor	r12, r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	rax, rdi
               	jmp	 <L222>
<L221>:
               	xor	r11d, r11d
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
<L225>:
               	mov	r13, r9
               	shl	r13, 0x11
               	xor	r8, r10
               	xor	rdi, r9
               	xor	r9, r8
               	xor	r10, rdi
               	xor	r8, r13
               	rol	rdi, 0x2d
               	inc	r11
               	cmp	r11, 0x40
               	je	 <L224>
<L223>:
               	bt	rdx, r11
               	jae	 <L225>
               	xor	r14, r10
               	xor	r12, r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	rax, rdi
               	jmp	 <L225>
<L224>:
               	xor	ecx, ecx
               	movabs	rdx, -0x56a7d9e71fc03656
               	jmp	 <L226>
               	nop	word ptr [rax + rax]
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
               	xor	r14, r10
               	xor	r12, r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	rax, rdi
               	jmp	 <L228>
<L227>:
               	xor	ecx, ecx
               	jmp	 <L229>
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
               	xor	r14, r10
               	xor	r12, r9
               	xor	qword ptr [rsp + 0xd0], r8
               	xor	rax, rdi
               	jmp	 <L231>
<L230>:
               	mov	rsi, rax
               	mov	rax, qword ptr [rsp + 0x270]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x270], rax
               	mov	qword ptr [rsp + 0x2c0], rax
               	mov	rcx, qword ptr [rsp + 0x290]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0xb8]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2d0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	rcx, qword ptr [rsp + 0xb0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e0], rcx
               	mov	rcx, qword ptr [rsp + 0xa8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	rcx, qword ptr [rsp + 0xa0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x58]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2f0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2f8], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x300], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r8, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x308], r8
               	mov	rcx, qword ptr [rsp + 0x48]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r9, [rcx + 8*rcx]
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x310], r9
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x318], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x320], rcx
               	mov	rcx, qword ptr [rsp + 0x30]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rdi, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x328], rdi
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rax, qword ptr [rsp + 0x98]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x330], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x338], rcx
               	mov	rax, qword ptr [rsp + 0x90]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x340], rcx
               	mov	rax, qword ptr [rsp + 0x88]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x348], rcx
               	mov	rax, qword ptr [rsp + 0x80]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	r10, [rcx + 8*rcx]
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x350], r10
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x358], rcx
               	mov	rcx, qword ptr [rsp + 0x2a0]
               	test	ecx, ecx
               	je	 <L232>
               	mov	qword ptr [rsp + 0x298], rdi
               	mov	qword ptr [rsp + 0x260], r9
               	mov	qword ptr [rsp + 0x250], r8
               	neg	ecx
               	mov	qword ptr [rsp + 0x2a0], rcx
               	mov	r13d, 0x1
               	vpbroadcastq	ymm0, qword ptr  <__libc_start_main+0x2420>
               	vmovdqu	ymmword ptr [rsp + 0x3d0], ymm0
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	mov	r9, rsi
               	jmp	 <L233>
               	nop	dword ptr [rax]
<L244>:
               	vpblendd	ymm0, ymm0, ymmword ptr [rsp + 0x390], 0x3f # ymm0 = mem[0,1,2,3,4,5],ymm0[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x2c0]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x300]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x320]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x340]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2c0], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2e0], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x300], ymm0
               	vpsrlq	ymm2, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x320], ymm2
               	vpsrlq	ymm3, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x340], ymm3
               	vmovq	qword ptr [rsp + 0x270], xmm1
               	vpextrq	qword ptr [rsp + 0x250], xmm0, 0x1
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	qword ptr [rsp + 0x260], xmm0
               	vpextrq	qword ptr [rsp + 0x298], xmm2, 0x1
               	vextracti128	xmm0, ymm3, 0x1
               	vmovq	r10, xmm0
<L245>:
               	mov	rcx, qword ptr [rsp + 0x2a0]
               	add	ecx, r13d
               	inc	ecx
               	mov	edx, r13d
               	inc	edx
               	mov	r13d, edx
               	cmp	ecx, 0x1
               	je	 <L234>
<L233>:
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x2c8]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x2e8]
               	mov	rsi, qword ptr [rsp + 0x270]
               	movzx	ecx, sil
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	sil, cl
               	cmp	sil, 0xc
               	vmovdqu	ymmword ptr [rsp + 0x390], ymm3
               	ja	 <L235>
               	mov	rax, rsi
               	mov	rbx, r13
               	mov	r13, r9
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x3d0]
               	vmovdqa	ymm2, ymm0
               	vpand	ymm0, ymm3, ymm1
               	vmovdqu	ymmword ptr [rsp + 0x270], ymm2
               	vpand	ymm1, ymm2, ymm1
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x70], xmm0
               	movzx	eax, al
               	lea	rcx,  <__libc_start_main+0x2484>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Circle+0x10>
               	jmp	 <L236>
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Shapes2D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Ellipsoid@Evaluation.Virtual.Ellipsoid+0x10>
               	jmp	 <L237>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Triangle+0x10>
               	mov	qword ptr [rax], rcx
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x70]
               	vpextrb	ecx, xmm1, 0x7
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdx + 8*rsi], rax
               	vcvtsi2ss	xmm0, xmm5, ecx
               	inc	rsi
               	mov	qword ptr [rsp + 0x8], rsi
               	vpshufb	xmm1, xmm1, xmmword ptr  <__libc_start_main+0x2450>
               	vpinsrb	xmm1, xmm1, byte ptr [rsp + 0x250], 0x7
               	vmovss	dword ptr [rax + 0x30], xmm0
               	vpmovzxbd	ymm0, xmm1      # ymm0 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	jmp	 <L238>
               	mov	r15, r10
               	vmovups	xmm0, xmmword ptr [rsp + 0x318]
               	vmovaps	xmmword ptr [rsp + 0x360], xmm0
               	vmovups	xmm0, xmmword ptr [rsp + 0x340]
               	vmovaps	xmmword ptr [rsp + 0x250], xmm0
               	vmovups	xmm0, xmmword ptr [rsp + 0x330]
               	vmovaps	xmmword ptr [rsp + 0x260], xmm0
               	mov	edi, 0x90
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpbroadcastw	xmm2, word ptr  <__libc_start_main+0x2480>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x360]
               	vpshufb	xmm0, xmm0, xmm2
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x250]
               	vpshufb	xmm1, xmm1, xmm2
               	vmovdqa	xmm3, xmmword ptr [rsp + 0x260]
               	vpshufb	xmm2, xmm3, xmm2
               	vpunpcklwd	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rdx,  <vtable for Bodies3D::Head@Evaluation.Virtual.Head+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x38], rcx
               	lea	rdx,  <vtable for Bodies3D::Sphere@Evaluation.Virtual.Sphere+0x10>
               	mov	qword ptr [rax + 0x30], rdx
               	mov	qword ptr [rax + 0x68], rcx
               	mov	qword ptr [rax + 0x60], rdx
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rdx], rax
               	inc	rdx
               	mov	qword ptr [rsp + 0x8], rdx
               	vpmovzxbd	ymm2, qword ptr [rsp + 0x70] # ymm2 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm2, ymm2
               	vpermilps	ymm3, ymm2, ymmword ptr  <__libc_start_main+0x2400>
               	vmovups	ymmword ptr [rax + 0x10], ymm3
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	movzx	ecx, byte ptr [rsp + 0x298]
               	vcvtsi2ss	xmm3, xmm5, ecx
               	vmovss	dword ptr [rax + 0x48], xmm3
               	vshufps	xmm2, xmm2, xmm2, 0xff  # xmm2 = xmm2[3,3,3,3]
               	vmovss	dword ptr [rax + 0x4c], xmm2
               	vpmovzxbd	xmm1, xmm1      # xmm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero
               	vcvtdq2ps	xmm1, xmm1
               	vshufps	xmm4, xmm1, xmm1, 0xd8  # xmm4 = xmm1[0,2,1,3]
               	vmovups	xmmword ptr [rax + 0x50], xmm4
               	vmovlps	qword ptr [rax + 0x70], xmm0
               	movzx	ecx, r15b
               	vcvtsi2ss	xmm0, xmm5, ecx
               	vmovss	dword ptr [rax + 0x78], xmm3
               	vmovss	dword ptr [rax + 0x7c], xmm2
               	vmovss	dword ptr [rax + 0x80], xmm0
               	vshufps	xmm0, xmm1, xmm1, 0xe6  # xmm0 = xmm1[2,1,2,3]
               	vmovlps	qword ptr [rax + 0x84], xmm0
               	vextractps	dword ptr [rax + 0x8c], xmm1, 0x3
               	jmp	 <L239>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cylinder@Evaluation.Virtual.Cylinder+0x10>
               	jmp	 <L240>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Rectangle+0x10>
               	jmp	 <L241>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Shapes2D::Square@Evaluation.Virtual.Square+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Square+0x10>
               	jmp	 <L236>
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Shapes2D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Pyramid@Evaluation.Virtual.Pyramid+0x10>
               	mov	qword ptr [rax], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rdx], rax
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x70]
               	vpextrb	ecx, xmm1, 0x7
               	inc	rdx
               	mov	qword ptr [rsp + 0x8], rdx
               	vcvtsi2ss	xmm0, xmm5, ecx
               	vmovss	dword ptr [rax + 0x30], xmm0
               	vpshufb	xmm0, xmm1, xmmword ptr  <__libc_start_main+0x2450>
               	vpinsrb	xmm0, xmm0, byte ptr [rsp + 0x250], 0x7
               	vpmovzxbd	ymm0, xmm0      # ymm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero,xmm0[4],zero,zero,zero,xmm0[5],zero,zero,zero,xmm0[6],zero,zero,zero,xmm0[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	jmp	 <L242>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Ellipse+0x10>
<L241>:
               	mov	qword ptr [rax], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rdx], rax
               	inc	rdx
               	mov	qword ptr [rsp + 0x8], rdx
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x70] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0x2400>
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	movzx	ecx, byte ptr [rsp + 0x250]
               	jmp	 <L243>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Shapes2D::Square@Evaluation.Virtual.Square+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cube@Evaluation.Virtual.Cube+0x10>
               	jmp	 <L236>
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Shapes2D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cuboid@Evaluation.Virtual.Cuboid+0x10>
<L237>:
               	mov	qword ptr [rax], rcx
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x70] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0x2400>
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	movzx	ecx, byte ptr [rsp + 0x250]
               	vcvtsi2ss	xmm0, xmm5, ecx
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rdx], rax
               	inc	rdx
               	mov	qword ptr [rsp + 0x8], rdx
               	vmovss	dword ptr [rax + 0x30], xmm0
<L242>:
               	movzx	ecx, byte ptr [rsp + 0x260]
               	vcvtsi2ss	xmm0, xmm5, ecx
               	vmovss	dword ptr [rax + 0x38], xmm0
               	jmp	 <L239>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cone@Evaluation.Virtual.Cone+0x10>
<L240>:
               	mov	qword ptr [rax], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rdx], rax
               	inc	rdx
               	mov	qword ptr [rsp + 0x8], rdx
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x70] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0x2400>
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	movzx	ecx, byte ptr [rsp + 0x260]
<L243>:
               	vcvtsi2ss	xmm0, xmm5, ecx
               	vmovss	dword ptr [rax + 0x30], xmm0
               	jmp	 <L239>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Sphere@Evaluation.Virtual.Sphere+0x10>
<L236>:
               	mov	qword ptr [rax], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	rdx, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rdx], rax
               	inc	rdx
               	mov	qword ptr [rsp + 0x8], rdx
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x70] # ymm0 = mem[0],zero,zero,zero,mem[1],zero,zero,zero,mem[2],zero,zero,zero,mem[3],zero,zero,zero,mem[4],zero,zero,zero,mem[5],zero,zero,zero,mem[6],zero,zero,zero,mem[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <__libc_start_main+0x2400>
<L238>:
               	vmovups	ymmword ptr [rax + 0x10], ymm0
<L239>:
               	mov	r9, r13
               	mov	r13, rbx
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x270]
<L235>:
               	test	r13b, 0x7
               	jne	 <L244>
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x3b0]
               	vpermq	ymm0, ymm3, 0xe3        # ymm0 = ymm3[3,0,2,3]
               	vpermq	ymm1, ymm3, 0xe9        # ymm1 = ymm3[1,2,2,3]
               	mov	qword ptr [rsp + 0x390], r9
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
               	mov	rdx, qword ptr [rsp + 0x290]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2b8]
               	mov	rsi, qword ptr [rsp + 0x2b0]
               	xor	rcx, rsi
               	mov	rdi, qword ptr [rsp + 0x248]
               	xor	rdi, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x290], rdx
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0x2b0], rsi
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x2b8], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x248], rdi
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x238]
               	mov	rdi, qword ptr [rsp + 0x230]
               	xor	rdi, rcx
               	mov	r8, qword ptr [rsp + 0x228]
               	xor	r8, rdx
               	xor	rdx, rdi
               	mov	qword ptr [rsp + 0x60], rdx
               	xor	rcx, r8
               	mov	qword ptr [rsp + 0x238], rcx
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x228], r8
               	xor	rdi, rax
               	mov	qword ptr [rsp + 0x230], rdi
               	mov	rsi, qword ptr [rsp + 0xb8]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x220]
               	mov	r8, qword ptr [rsp + 0x218]
               	xor	r8, rcx
               	mov	r9, qword ptr [rsp + 0x210]
               	xor	r9, rsi
               	xor	rsi, r8
               	xor	rcx, r9
               	mov	qword ptr [rsp + 0x220], rcx
               	xor	r8, rax
               	mov	qword ptr [rsp + 0x218], r8
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x210], r9
               	mov	rdi, qword ptr [rsp + 0xb0]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x208]
               	mov	r9, qword ptr [rsp + 0x200]
               	xor	r9, rcx
               	mov	r10, qword ptr [rsp + 0x1f8]
               	xor	r10, rdi
               	xor	rdi, r9
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x208], rcx
               	xor	r9, rax
               	mov	qword ptr [rsp + 0x200], r9
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x1f8], r10
               	mov	r8, qword ptr [rsp + 0xa8]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x2a8]
               	mov	r10, qword ptr [rsp + 0x1f0]
               	xor	r10, rcx
               	mov	r11, qword ptr [rsp + 0x1e8]
               	xor	r11, r8
               	xor	r8, r10
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x2a8], rcx
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x1f0], r10
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x1e8], r11
               	mov	r9, qword ptr [rsp + 0xa0]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1e0]
               	mov	r11, qword ptr [rsp + 0x1d8]
               	xor	r11, rcx
               	mov	rbx, qword ptr [rsp + 0x1d0]
               	xor	rbx, r9
               	xor	r9, r11
               	xor	rcx, rbx
               	mov	qword ptr [rsp + 0x1e0], rcx
               	rol	rbx, 0x2d
               	mov	qword ptr [rsp + 0x1d0], rbx
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1d8], r11
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	mov	rbx, qword ptr [rsp + 0x1c0]
               	xor	rbx, rcx
               	mov	qword ptr [rsp + 0x388], r13
               	mov	r13, qword ptr [rsp + 0x1b8]
               	xor	r13, rdx
               	xor	rdx, rbx
               	mov	qword ptr [rsp + 0x58], rdx
               	xor	rcx, r13
               	mov	qword ptr [rsp + 0x1c8], rcx
               	xor	rbx, rax
               	mov	qword ptr [rsp + 0x1c0], rbx
               	rol	r13, 0x2d
               	mov	qword ptr [rsp + 0x1b8], r13
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	mov	r13, qword ptr [rsp + 0x1a8]
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x70], r12
               	mov	rbp, qword ptr [rsp + 0x1a0]
               	xor	rbp, rdx
               	xor	rdx, r13
               	mov	qword ptr [rsp + 0x50], rdx
               	xor	rcx, rbp
               	mov	qword ptr [rsp + 0x1b0], rcx
               	xor	r13, rax
               	mov	qword ptr [rsp + 0x1a8], r13
               	rol	rbp, 0x2d
               	mov	qword ptr [rsp + 0x1a0], rbp
               	mov	r13, qword ptr [rsp + 0x20]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x198]
               	mov	rbp, qword ptr [rsp + 0x190]
               	xor	rbp, rcx
               	mov	r12, qword ptr [rsp + 0x188]
               	xor	r12, r13
               	xor	r13, rbp
               	xor	rcx, r12
               	mov	qword ptr [rsp + 0x198], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x190], rbp
               	rol	r12, 0x2d
               	mov	qword ptr [rsp + 0x188], r12
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x180]
               	mov	rbp, qword ptr [rsp + 0x178]
               	xor	rbp, rcx
               	mov	qword ptr [rsp + 0x360], r14
               	mov	r14, qword ptr [rsp + 0x170]
               	xor	r14, rdx
               	xor	rdx, rbp
               	mov	qword ptr [rsp + 0x48], rdx
               	xor	rcx, r14
               	mov	qword ptr [rsp + 0x180], rcx
               	rol	r14, 0x2d
               	mov	qword ptr [rsp + 0x170], r14
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x178], rbp
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x168]
               	mov	rbp, qword ptr [rsp + 0x160]
               	xor	rbp, rcx
               	mov	r15, qword ptr [rsp + 0x158]
               	xor	r15, rdx
               	xor	rdx, rbp
               	mov	qword ptr [rsp + 0x40], rdx
               	xor	rcx, r15
               	mov	qword ptr [rsp + 0x168], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x160], rbp
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0x158], r15
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x150]
               	mov	rbp, qword ptr [rsp + 0x148]
               	xor	rbp, rcx
               	mov	r10, qword ptr [rsp + 0x140]
               	xor	r10, rdx
               	xor	rdx, rbp
               	mov	qword ptr [rsp + 0x38], rdx
               	xor	rcx, r10
               	mov	qword ptr [rsp + 0x150], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x148], rbp
               	rol	r10, 0x2d
               	mov	qword ptr [rsp + 0x140], r10
               	mov	r10, qword ptr [rsp + 0x30]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x138]
               	mov	rbp, qword ptr [rsp + 0x130]
               	xor	rbp, rcx
               	mov	rdx, qword ptr [rsp + 0x128]
               	xor	rdx, r10
               	xor	r10, rbp
               	mov	qword ptr [rsp + 0x30], r10
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0x138], rcx
               	xor	rbp, rax
               	mov	qword ptr [rsp + 0x130], rbp
               	rol	rdx, 0x2d
               	mov	qword ptr [rsp + 0x128], rdx
               	mov	r10, qword ptr [rsp + 0x28]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x120]
               	mov	rdx, qword ptr [rsp + 0x118]
               	xor	rdx, rcx
               	mov	r11, qword ptr [rsp + 0x110]
               	xor	r11, r10
               	xor	r10, rdx
               	mov	qword ptr [rsp + 0x28], r10
               	xor	rcx, r11
               	mov	qword ptr [rsp + 0x120], rcx
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x110], r11
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x118], rdx
               	mov	r12, qword ptr [rsp + 0x98]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x240]
               	mov	rcx, qword ptr [rsp + 0x108]
               	xor	rcx, r11
               	mov	r11, qword ptr [rsp + 0x10]
               	xor	r11, r12
               	mov	qword ptr [rsp + 0x10], r11
               	xor	r12, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x108], rcx
               	mov	r14, qword ptr [rsp + 0x90]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0xc8], rdx
               	mov	rcx, qword ptr [rsp + 0x100]
               	xor	rcx, rdx
               	mov	rbp, qword ptr [rsp + 0xf8]
               	xor	rbp, r14
               	xor	r14, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x100], rcx
               	mov	rbx, qword ptr [rsp + 0x88]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc0]
               	mov	qword ptr [rsp + 0xc0], rdx
               	mov	rcx, qword ptr [rsp + 0xf0]
               	xor	rcx, rdx
               	mov	r15, qword ptr [rsp + 0xe8]
               	xor	r15, rbx
               	xor	rbx, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0xf0], rcx
               	mov	r10, qword ptr [rsp + 0x80]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x68]
               	xor	rcx, qword ptr [rsp + 0xe0]
               	mov	qword ptr [rsp + 0x68], rcx
               	mov	r11, qword ptr [rsp + 0xd8]
               	xor	r11, r10
               	xor	r10, qword ptr [rsp + 0x68]
               	xor	qword ptr [rsp + 0x68], rax
               	mov	rax, qword ptr [rsp + 0x70]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0xd0]
               	xor	rcx, qword ptr [rsp + 0x360]
               	mov	qword ptr [rsp + 0xd0], rcx
               	mov	rcx, qword ptr [rsp + 0x390]
               	xor	rcx, qword ptr [rsp + 0x70]
               	mov	qword ptr [rsp + 0x390], rcx
               	mov	rcx, qword ptr [rsp + 0xd0]
               	xor	qword ptr [rsp + 0x70], rcx
               	vpextrq	rcx, xmm0, 0x1
               	xor	qword ptr [rsp + 0xd0], rax
               	lea	rax, [rcx + 4*rcx]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x270], rax
               	mov	rcx, qword ptr [rsp + 0x290]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x60]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0xb8], rsi
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0xb0], rdi
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x20], rdi
               	mov	qword ptr [rsp + 0xa8], r8
               	lea	rdi, [r8 + 4*r8]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2c0], rax
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	qword ptr [rsp + 0xa0], r9
               	lea	rcx, [r9 + 4*r9]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d0], rdx
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2d8], rsi
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	mov	rax, qword ptr [rsp + 0x20]
               	mov	qword ptr [rsp + 0x2e0], rax
               	mov	r9, qword ptr [rsp + 0x390]
               	mov	qword ptr [rsp + 0x20], r13
               	lea	r8, [4*r13]
               	add	r8, r13
               	rol	r8, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x2e8], rdi
               	mov	rax, qword ptr [rsp + 0x48]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2f0], rcx
               	mov	rax, qword ptr [rsp + 0x40]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f8], rdx
               	mov	rax, qword ptr [rsp + 0x38]
               	lea	rdx, [rax + 4*rax]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x300], rsi
               	mov	rax, qword ptr [rsp + 0x30]
               	lea	rsi, [rax + 4*rax]
               	mov	r13, qword ptr [rsp + 0x388]
               	rol	rsi, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	rsi, [rsi + 8*rsi]
               	mov	rax, r8
               	mov	qword ptr [rsp + 0x250], r8
               	mov	qword ptr [rsp + 0x308], r8
               	mov	rax, rdi
               	mov	qword ptr [rsp + 0x260], rdi
               	mov	qword ptr [rsp + 0x310], rdi
               	mov	qword ptr [rsp + 0x318], rcx
               	mov	rax, qword ptr [rsp + 0x28]
               	lea	rcx, [rax + 4*rax]
               	mov	r8, qword ptr [rsp + 0x70]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x320], rdx
               	mov	qword ptr [rsp + 0x98], r12
               	lea	rdx, [r12 + 4*r12]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	rax, rsi
               	mov	qword ptr [rsp + 0x298], rsi
               	mov	qword ptr [rsp + 0x328], rsi
               	mov	qword ptr [rsp + 0x330], rcx
               	mov	qword ptr [rsp + 0x90], r14
               	lea	rcx, [r14 + 4*r14]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x338], rdx
               	mov	qword ptr [rsp + 0x88], rbx
               	lea	rdx, [rbx + 4*rbx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x340], rcx
               	mov	qword ptr [rsp + 0x80], r10
               	lea	rcx, [r10 + 4*r10]
               	rol	rcx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	r10, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x348], rdx
               	mov	r12, r8
               	lea	rcx, [r8 + 4*r8]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x350], r10
               	mov	qword ptr [rsp + 0x358], rcx
               	mov	rcx, qword ptr [rsp + 0x10]
               	xor	qword ptr [rsp + 0x240], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x10], rcx
               	vpbroadcastq	ymm1, xmm1
               	xor	qword ptr [rsp + 0xc8], rbp
               	rol	rbp, 0x2d
               	mov	qword ptr [rsp + 0xf8], rbp
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	xor	qword ptr [rsp + 0xc0], r15
               	rol	r15, 0x2d
               	mov	qword ptr [rsp + 0xe8], r15
               	mov	r14, qword ptr [rsp + 0x360]
               	vpbroadcastq	ymm1, xmm2
               	xor	qword ptr [rsp + 0xe0], r11
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0xd8], r11
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vmovdqu	ymmword ptr [rsp + 0x3b0], ymm0
               	xor	r14, r9
               	rol	r9, 0x2d
               	jmp	 <L245>
<L234>:
               	mov	r15, qword ptr [rsp + 0x8]
               	shl	r15, 0x3
               	test	r15, r15
               	mov	r14, qword ptr [rsp + 0x18]
               	vpxor	xmm0, xmm0, xmm0
               	je	 <L246>
               	xor	ebx, ebx
               	nop	dword ptr [rax]
<L247>:
               	vmovd	dword ptr [rsp + 0x10], xmm0
               	mov	rdi, qword ptr [r14 + rbx]
               	mov	rax, qword ptr [rdi]
               	vzeroupper
               	call	qword ptr [rax + 0x18]
               	vmovss	xmm1, dword ptr [rsp + 0x10] # xmm1 = mem[0],zero,zero,zero
               	vaddss	xmm1, xmm0, xmm1
               	vmovss	dword ptr [rsp + 0x10], xmm1
               	vmovss	xmm0, dword ptr [rsp + 0x10] # xmm0 = mem[0],zero,zero,zero
               	add	rbx, 0x8
               	cmp	r15, rbx
               	jne	 <L247>
               	xor	ebx, ebx
               	jmp	 <L248>
               	nop	word ptr cs:[rax + rax]
<L249>:
               	mov	qword ptr [r14 + rbx], 0x0
               	add	rbx, 0x8
               	cmp	r15, rbx
               	je	 <L246>
<L248>:
               	mov	rdi, qword ptr [r14 + rbx]
               	test	rdi, rdi
               	je	 <L249>
               	mov	rax, qword ptr [rdi]
               	call	qword ptr [rax + 0x28]
               	vmovss	xmm0, dword ptr [rsp + 0x10] # xmm0 = mem[0],zero,zero,zero
               	jmp	 <L249>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r14, qword ptr [rsp + 0x18]
<L246>:
               	mov	rbx, qword ptr [rsp + 0x380]
               	or	rbx, qword ptr [rsp + 0x378]
               	test	r14, r14
               	je	 <L250>
               	mov	rdi, r14
               	vmovd	dword ptr [rsp + 0x10], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovd	xmm0, dword ptr [rsp + 0x10] # xmm0 = mem[0],zero,zero,zero
<L250>:
               	movabs	rax, 0x186a00000002a
               	cmp	rbx, rax
               	jne	 <L251>
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0x247c>
               	jb	 <L252>
               	vucomiss	xmm0, dword ptr  <__libc_start_main+0x2474>
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
<L252>:
               	mov	edi, 0x4
               	vmovss	dword ptr [rsp + 0x10], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovss	xmm0, dword ptr [rsp + 0x10] # xmm0 = mem[0],zero,zero,zero
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <__libc_start_main+0x9858>
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

<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Circle@Evaluation.Virtual.Circle>::GetWidth() const>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Circle@Evaluation.Virtual.Circle>::GetHeight() const>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Square@Evaluation.Virtual.Square>::GetWidth() const>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Square@Evaluation.Virtual.Square>::GetHeight() const>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse>::GetHeight() const>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetWidth() const>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Rectangle@Evaluation.Virtual.Rectangle>::GetHeight() const>:
<Bodies3D::Cube@Evaluation.Virtual.Cube::GetDepth() const>:
<Bodies3D::Sphere@Evaluation.Virtual.Sphere::GetDepth() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x2c] # xmm0 = mem[0],zero,zero,zero
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

<Bodies3D::BasicBody@Evaluation.Virtual.BasicBody::ComputeVolume() const>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	call	qword ptr [rax + 0x30]
               	vmovss	dword ptr [rsp + 0x8], xmm0
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	call	qword ptr [rax + 0x8]
               	vmulss	xmm0, xmm0, dword ptr [rsp + 0x8]
               	vmovss	dword ptr [rsp + 0x8], xmm0
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	call	qword ptr [rax + 0x10]
               	vmovss	dword ptr [rsp + 0xc], xmm0
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	call	qword ptr [rax]
               	vmulss	xmm0, xmm0, dword ptr [rsp + 0xc]
               	vmulss	xmm0, xmm0, dword ptr [rsp + 0x8]
               	add	rsp, 0x10
               	pop	rbx
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

<Bodies3D::Circle::~Circle()>:
<Bodies3D::Square::~Square()>:
<Bodies3D::Ellipse::~Ellipse()>:
<Bodies3D::Triangle::~Triangle()>:
<Bodies3D::Rectangle::~Rectangle()>:
<Bodies3D::Cone@Evaluation.Virtual.Cone::~Cone()>:
<Bodies3D::Cube@Evaluation.Virtual.Cube::~Cube()>:
<Bodies3D::Head@Evaluation.Virtual.Head::~Head()>:
<Bodies3D::Cuboid@Evaluation.Virtual.Cuboid::~Cuboid()>:
<Bodies3D::Sphere@Evaluation.Virtual.Sphere::~Sphere()>:
<Bodies3D::Pyramid@Evaluation.Virtual.Pyramid::~Pyramid()>:
<Bodies3D::Cylinder@Evaluation.Virtual.Cylinder::~Cylinder()>:
<Bodies3D::Ellipsoid@Evaluation.Virtual.Ellipsoid::~Ellipsoid()>:
<Shapes2D::Circle@Evaluation.Virtual.Circle::~Circle()>:
<Shapes2D::Square@Evaluation.Virtual.Square::~Square()>:
<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse::~Ellipse()>:
<Shapes2D::Triangle@Evaluation.Virtual.Triangle::~Triangle()>:
<Shapes2D::Rectangle@Evaluation.Virtual.Rectangle::~Rectangle()>:
               	jmp	 <_ZdlPv@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::SphericBody@Evaluation.Virtual.SphericBody<Shapes2D::Circle@Evaluation.Virtual.Circle>::GetComputeSizeMultiplier() const>:
<Bodies3D::SphericBody@Evaluation.Virtual.SphericBody<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse>::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <__libc_start_main+0x2478> # xmm0 = mem[0],zero,zero,zero
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::Cuboid@Evaluation.Virtual.Cuboid::GetDepth() const>:
<Bodies3D::Pyramid@Evaluation.Virtual.Pyramid::GetDepth() const>:
<Bodies3D::Ellipsoid@Evaluation.Virtual.Ellipsoid::GetDepth() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x38] # xmm0 = mem[0],zero,zero,zero
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

<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse>::GetWidth() const>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetHeight() const>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Rectangle@Evaluation.Virtual.Rectangle>::GetWidth() const>:
<Bodies3D::Cone@Evaluation.Virtual.Cone::GetDepth() const>:
<Bodies3D::Cylinder@Evaluation.Virtual.Cylinder::GetDepth() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x30] # xmm0 = mem[0],zero,zero,zero
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

<Bodies3D::Cone@Evaluation.Virtual.Cone::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <__libc_start_main+0x2460> # xmm0 = mem[0],zero,zero,zero
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Circle@Evaluation.Virtual.Circle>::GetComputeSizeMultiplier() const>:
<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse>::GetComputeSizeMultiplier() const>:
<Bodies3D::Cylinder@Evaluation.Virtual.Cylinder::GetComputeSizeMultiplier() const>:
<Shapes2D::CircularShape@Evaluation.Virtual.CircularShape::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <__libc_start_main+0x2468> # xmm0 = mem[0],zero,zero,zero
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::PyramidicBody@Evaluation.Virtual.PyramidicBody<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <__libc_start_main+0x246c> # xmm0 = mem[0],zero,zero,zero
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Circle@Evaluation.Virtual.Circle>::GetDepth() const>:
<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Square@Evaluation.Virtual.Square>::GetComputeSizeMultiplier() const>:
<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Square@Evaluation.Virtual.Square>::GetDepth() const>:
<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse>::GetDepth() const>:
<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetDepth() const>:
<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Rectangle@Evaluation.Virtual.Rectangle>::GetComputeSizeMultiplier() const>:
<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Rectangle@Evaluation.Virtual.Rectangle>::GetDepth() const>:
<Bodies3D::CubicBody@Evaluation.Virtual.CubicBody<Shapes2D::Square@Evaluation.Virtual.Square>::GetComputeSizeMultiplier() const>:
<Bodies3D::CubicBody@Evaluation.Virtual.CubicBody<Shapes2D::Rectangle@Evaluation.Virtual.Rectangle>::GetComputeSizeMultiplier() const>:
<Shapes2D::RectangularShape@Evaluation.Virtual.RectangularShape::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <__libc_start_main+0x2464> # xmm0 = mem[0],zero,zero,zero
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetComputeSizeMultiplier() const>:
<Shapes2D::TriangularShape@Evaluation.Virtual.TriangularShape::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <__libc_start_main+0x2470> # xmm0 = mem[0],zero,zero,zero
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse::GetWidth() const>:
<Shapes2D::Triangle@Evaluation.Virtual.Triangle::GetHeight() const>:
<Shapes2D::Rectangle@Evaluation.Virtual.Rectangle::GetWidth() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x28] # xmm0 = mem[0],zero,zero,zero
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

<Shapes2D::CircularShape@Evaluation.Virtual.CircularShape::GetHeight() const>:
<Shapes2D::TriangularShape@Evaluation.Virtual.TriangularShape::GetWidth() const>:
<Shapes2D::RectangularShape@Evaluation.Virtual.RectangularShape::GetHeight() const>:
<Shapes2D::Circle@Evaluation.Virtual.Circle::GetWidth() const>:
<Shapes2D::Square@Evaluation.Virtual.Square::GetWidth() const>:
               	vmovss	xmm0, dword ptr [rdi + 0x24] # xmm0 = mem[0],zero,zero,zero
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

<Shapes2D::BasicShape@Evaluation.Virtual.BasicShape::ComputeArea() const>:
               	push	rbx
               	sub	rsp, 0x10
               	mov	rbx, rdi
               	mov	rax, qword ptr [rdi]
               	call	qword ptr [rax + 0x28]
               	vmovss	dword ptr [rsp + 0xc], xmm0
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	call	qword ptr [rax]
               	vmulss	xmm0, xmm0, dword ptr [rsp + 0xc]
               	vmovss	dword ptr [rsp + 0xc], xmm0
               	mov	rax, qword ptr [rbx]
               	mov	rdi, rbx
               	call	qword ptr [rax + 0x8]
               	vmulss	xmm0, xmm0, dword ptr [rsp + 0xc]
               	add	rsp, 0x10
               	pop	rbx
               	ret

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <__libc_start_main+0x9830>
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
