
build/ZEvaluation/bin/Virtual:	file format elf64-x86-64

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
               	call	qword ptr  <memset+0x7a18>
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
               	mov	rax, qword ptr  <memset+0x7a28>
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
               	mov	rax, qword ptr  <memset+0x7a30>
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
               	cmp	qword ptr , 0x0 <memset+0x7a38>
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
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Cast>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW4Cast__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW4Cast__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.Int32>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Float>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Float__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Float__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Int32>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
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

<initializer for module Meta.Auto.Simd.UInt32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
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

<initializer for module Meta.Auto.Simd.UInt8>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5UInt8__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5UInt8__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4MathW6Random__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.UInt64>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.UInt64>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW6UInt64__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW6UInt64__in_chrg>
               	call	 <initializer for module Meta.Auto.Array.Bounded>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Array.Bounded>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
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

<initializer for module Evaluation.Dependency.TransformReduce>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW10DependencyW15TransformReduce__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW10DependencyW15TransformReduce__in_chrg>
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
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x138
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
               	movabs	rbp, 0x180ec6d33cfd0aba
               	mov	qword ptr [rsp + 0x80], rdx
               	movsxd	rdi, edx
               	shl	rdi, 0x3
               	mov	rsi, qword ptr  <memset+0x7a40>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x30], rax
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
               	mov	rsi, rax
               	shr	rsi, 0x1f
               	xor	rsi, rax
               	xor	eax, eax
               	xor	r14d, r14d
               	mov	qword ptr [rsp + 0x68], rsi
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x70], r10
               	mov	rdi, r10
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	qword ptr [rsp + 0x78], r9
               	xor	r13d, r13d
               	jmp	 <L4>
               	nop	dword ptr [rax]
<L6>:
               	mov	rcx, r8
               	shl	rcx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L5>
<L4>:
               	bt	rbp, rax
               	jae	 <L6>
               	xor	r13, r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L6>
<L5>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	mov	rbx, qword ptr [rsp + 0x30]
               	jmp	 <L7>
               	nop	word ptr [rax + rax]
<L9>:
               	mov	rdx, r8
               	shl	rdx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rdx
               	rol	rsi, 0x2d
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L8>
<L7>:
               	bt	rax, rcx
               	jae	 <L9>
               	xor	r13, r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L9>
<L8>:
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	word ptr cs:[rax + rax]
<L12>:
               	mov	r10, r8
               	shl	r10, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r10
               	rol	rsi, 0x2d
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L11>
<L10>:
               	bt	rcx, rdx
               	jae	 <L12>
               	xor	r13, r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r10d, r10d
               	jmp	 <L13>
               	nop	word ptr cs:[rax + rax]
<L15>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L14>
<L13>:
               	bt	rdx, r10
               	jae	 <L15>
               	xor	r13, r9
               	xor	r12, r8
               	xor	r15, rdi
               	xor	r14, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x8], rsi
               	mov	rsi, r14
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x18], rdi
               	mov	rdi, r15
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x20], r8
               	mov	r8, r12
               	mov	r9, r13
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x10], r11
               	jmp	 <L16>
               	nop	word ptr cs:[rax + rax]
<L18>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L17>
<L16>:
               	bt	rbp, r10
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x18], rdi
               	xor	qword ptr [rsp + 0x8], rsi
               	jmp	 <L18>
<L17>:
               	xor	r10d, r10d
               	jmp	 <L19>
               	nop	word ptr cs:[rax + rax]
<L21>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L20>
<L19>:
               	bt	rax, r10
               	jae	 <L21>
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x18], rdi
               	xor	qword ptr [rsp + 0x8], rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
               	nop	word ptr cs:[rax + rax]
<L24>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L23>
<L22>:
               	bt	rcx, r10
               	jae	 <L24>
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x18], rdi
               	xor	qword ptr [rsp + 0x8], rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
               	nop	word ptr cs:[rax + rax]
<L27>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L26>
<L25>:
               	bt	rdx, r10
               	jae	 <L27>
               	xor	qword ptr [rsp + 0x10], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x18], rdi
               	xor	qword ptr [rsp + 0x8], rsi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x50], r13
               	mov	qword ptr [rsp + 0x38], r12
               	mov	qword ptr [rsp + 0x58], r15
               	mov	qword ptr [rsp + 0x60], r14
               	xor	r10d, r10d
               	xor	r13d, r13d
               	mov	rsi, qword ptr [rsp + 0x8]
               	xor	r14d, r14d
               	mov	rdi, qword ptr [rsp + 0x18]
               	xor	r15d, r15d
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x10]
               	xor	r12d, r12d
               	jmp	 <L28>
               	nop	dword ptr [rax + rax]
<L30>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L29>
<L28>:
               	bt	rbp, r10
               	jae	 <L30>
               	xor	r12, r9
               	xor	r15, r8
               	xor	r14, rdi
               	xor	r13, rsi
               	jmp	 <L30>
<L29>:
               	xor	r10d, r10d
               	jmp	 <L31>
               	nop	dword ptr [rax]
<L33>:
               	mov	r11, r8
               	shl	r11, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r11
               	rol	rsi, 0x2d
               	inc	r10
               	cmp	r10, 0x40
               	je	 <L32>
<L31>:
               	bt	rax, r10
               	jae	 <L33>
               	xor	r12, r9
               	xor	r15, r8
               	xor	r14, rdi
               	xor	r13, rsi
               	jmp	 <L33>
<L32>:
               	xor	eax, eax
               	jmp	 <L34>
               	nop	dword ptr [rax + rax]
<L36>:
               	mov	r10, r8
               	shl	r10, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, r10
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L35>
<L34>:
               	bt	rcx, rax
               	jae	 <L36>
               	xor	r12, r9
               	xor	r15, r8
               	xor	r14, rdi
               	xor	r13, rsi
               	jmp	 <L36>
<L35>:
               	xor	eax, eax
               	jmp	 <L37>
               	nop	dword ptr [rax + rax]
<L39>:
               	mov	rcx, r8
               	shl	rcx, 0x11
               	xor	rdi, r9
               	xor	rsi, r8
               	xor	r8, rdi
               	xor	r9, rsi
               	xor	rdi, rcx
               	rol	rsi, 0x2d
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L38>
<L37>:
               	bt	rdx, rax
               	jae	 <L39>
               	xor	r12, r9
               	xor	r15, r8
               	xor	r14, rdi
               	xor	r13, rsi
               	jmp	 <L39>
<L38>:
               	mov	eax, 0x40
               	nop	dword ptr [rax]
<L40>:
               	dec	rax
               	jne	 <L40>
               	mov	eax, 0x40
               	mov	rcx, qword ptr [rsp + 0x80]
               	nop	word ptr cs:[rax + rax]
<L41>:
               	dec	rax
               	jne	 <L41>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L42>:
               	dec	rax
               	jne	 <L42>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L43>:
               	dec	rax
               	jne	 <L43>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L44>:
               	dec	rax
               	jne	 <L44>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L45>:
               	dec	rax
               	jne	 <L45>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L46>:
               	dec	rax
               	jne	 <L46>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L47>:
               	dec	rax
               	jne	 <L47>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L48>:
               	dec	rax
               	jne	 <L48>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L49>:
               	dec	rax
               	jne	 <L49>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L50>:
               	dec	rax
               	jne	 <L50>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L51>:
               	dec	rax
               	jne	 <L51>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L52>:
               	dec	rax
               	jne	 <L52>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L53>:
               	dec	rax
               	jne	 <L53>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L54>:
               	dec	rax
               	jne	 <L54>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L55>:
               	dec	rax
               	jne	 <L55>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L56>:
               	dec	rax
               	jne	 <L56>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L57>:
               	dec	rax
               	jne	 <L57>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L58>:
               	dec	rax
               	jne	 <L58>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L59>:
               	dec	rax
               	jne	 <L59>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L60>:
               	dec	rax
               	jne	 <L60>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L61>:
               	dec	rax
               	jne	 <L61>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L62>:
               	dec	rax
               	jne	 <L62>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L63>:
               	dec	rax
               	jne	 <L63>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L64>:
               	dec	rax
               	jne	 <L64>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L65>:
               	dec	rax
               	jne	 <L65>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L66>:
               	dec	rax
               	jne	 <L66>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L67>:
               	dec	rax
               	jne	 <L67>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L68>:
               	dec	rax
               	jne	 <L68>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L69>:
               	dec	rax
               	jne	 <L69>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L70>:
               	dec	rax
               	jne	 <L70>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L71>:
               	dec	rax
               	jne	 <L71>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L72>:
               	dec	rax
               	jne	 <L72>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L73>:
               	dec	rax
               	jne	 <L73>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L74>:
               	dec	rax
               	jne	 <L74>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L75>:
               	dec	rax
               	jne	 <L75>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L76>:
               	dec	rax
               	jne	 <L76>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L77>:
               	dec	rax
               	jne	 <L77>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L78>:
               	dec	rax
               	jne	 <L78>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L79>:
               	dec	rax
               	jne	 <L79>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L80>:
               	dec	rax
               	jne	 <L80>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L81>:
               	dec	rax
               	jne	 <L81>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L82>:
               	dec	rax
               	jne	 <L82>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L83>:
               	dec	rax
               	jne	 <L83>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L84>:
               	dec	rax
               	jne	 <L84>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L85>:
               	dec	rax
               	jne	 <L85>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L86>:
               	dec	rax
               	jne	 <L86>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L87>:
               	dec	rax
               	jne	 <L87>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L88>:
               	dec	rax
               	jne	 <L88>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L89>:
               	dec	rax
               	jne	 <L89>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L90>:
               	dec	rax
               	jne	 <L90>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L91>:
               	dec	rax
               	jne	 <L91>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L92>:
               	dec	rax
               	jne	 <L92>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L93>:
               	dec	rax
               	jne	 <L93>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L94>:
               	dec	rax
               	jne	 <L94>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L95>:
               	dec	rax
               	jne	 <L95>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L96>:
               	dec	rax
               	jne	 <L96>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L97>:
               	dec	rax
               	jne	 <L97>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L98>:
               	dec	rax
               	jne	 <L98>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L99>:
               	dec	rax
               	jne	 <L99>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L100>:
               	dec	rax
               	jne	 <L100>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L101>:
               	dec	rax
               	jne	 <L101>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L102>:
               	dec	rax
               	jne	 <L102>
               	mov	eax, 0x40
               	nop	word ptr [rax + rax]
<L103>:
               	dec	rax
               	jne	 <L103>
               	test	ecx, ecx
               	je	 <L104>
               	vmovq	xmm0, r15
               	vmovq	xmm1, qword ptr [rsp + 0x20]
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	vmovq	xmm1, qword ptr [rsp + 0x38]
               	vmovq	xmm2, qword ptr [rsp + 0x40]
               	vpunpcklqdq	xmm1, xmm2, xmm1 # xmm1 = xmm2[0],xmm1[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vpsrlq	ymm1, ymm0, 0x39
               	vpsllq	ymm0, ymm0, 0x7
               	vpor	ymm0, ymm0, ymm1
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm0, ymm1, ymm0
               	mov	eax, ecx
               	mov	qword ptr [rsp + 0xa8], rax
               	mov	eax, 0x8
               	mov	qword ptr [rsp + 0x48], rax
               	xor	ebp, ebp
               	vmovdqu	ymmword ptr [rsp + 0x80], ymm0
               	vmovd	eax, xmm0
               	movzx	eax, al
               	imul	ecx, eax, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	lea	rcx,  <memset+0x2420>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
<L104>:
               	vpxor	xmm0, xmm0, xmm0
<L118>:
               	test	rbx, rbx
               	je	 <L105>
               	mov	rdi, rbx
               	vmovdqa	xmmword ptr [rsp + 0x20], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x20]
<L105>:
               	vpxor	xmm1, xmm1, xmm1
               	xor	eax, eax
               	vucomiss	xmm0, xmm1
               	setne	al
               	add	rsp, 0x138
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L125>:
               	lea	rax, [8*rbp]
               	test	ebp, ebp
               	je	 <L106>
               	mov	qword ptr [rsp + 0x8], rax
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x110], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xf0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xd0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0xb0], ymm0
               	mov	r13, rbx
               	jmp	 <L107>
               	nop	dword ptr [rax]
<L108>:
               	vmovss	xmm0, dword ptr [rsp + 0xb4]
               	vmovss	dword ptr [rsp + 0xb8], xmm0
               	mov	r14d, 0x1
<L116>:
               	mov	eax, r14d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0xb0]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r13, r15
<L107>:
               	mov	eax, ebp
               	neg	eax
               	and	eax, ebp
               	lea	r15, [r13 + 8*rax]
               	je	 <L108>
               	mov	qword ptr [rsp + 0x20], rax
               	mov	r12d, 0x1
               	xor	ecx, ecx
               	mov	ebx, 0x1
               	jmp	 <L109>
               	nop	dword ptr [rax]
<L111>:
               	mov	ebx, r14d
               	movsxd	rax, r14d
               	vmovss	dword ptr [rsp + 4*rax + 0xb0], xmm0
               	add	r13, 0x8
               	mov	ecx, 0xfffffffe
               	sub	ecx, r12d
               	lea	edx, [r12 + 0x1]
               	bsr	esi, edx
               	xor	esi, 0x1f
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r12d, edx
               	cmp	r13, r15
               	je	 <L110>
<L109>:
               	mov	r14d, ecx
               	mov	rdi, qword ptr [r13]
               	mov	rax, qword ptr [rdi]
               	vzeroupper
               	call	qword ptr [rax + 0x18]
               	mov	ecx, r14d
               	sub	ecx, ebx
               	jl	 <L111>
               	movsxd	rax, ebx
               	cmp	ecx, 0x1f
               	jb	 <L112>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vpblendd	xmm0, xmm0, xmmword ptr , 0xe <memset+0x2410> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0x110]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	dword ptr [rax]
<L113>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
               	jne	 <L113>
               	vaddps	ymm0, ymm1, ymm0
               	vaddps	ymm1, ymm3, ymm2
               	vaddps	ymm0, ymm1, ymm0
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rdx
               	je	 <L111>
               	add	rax, rdx
<L112>:
               	mov	ecx, r14d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0xb0
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L114>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L114>
               	jmp	 <L111>
               	nop	word ptr cs:[rax + rax]
<L110>:
               	sub	ebp, dword ptr [rsp + 0x20]
               	mov	rbx, qword ptr [rsp + 0x30]
               	je	 <L115>
               	vmovss	dword ptr [rsp + 4*rax + 0xb4], xmm0
               	mov	r13, r15
               	test	r14d, r14d
               	jns	 <L116>
               	jmp	 <L107>
<L115>:
               	mov	r14, qword ptr [rsp + 0x48]
               	mov	rax, qword ptr [rsp + 0x8]
               	test	rax, rax
               	jne	 <L117>
               	jmp	 <L118>
<L106>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r14, qword ptr [rsp + 0x48]
               	test	rax, rax
               	je	 <L118>
<L117>:
               	vmovdqa	xmmword ptr [rsp + 0x20], xmm0
               	jmp	 <L119>
               	nop	word ptr cs:[rax + rax]
<L121>:
               	mov	qword ptr [rbx], 0x0
               	add	rbx, 0x8
               	add	r14, -0x8
               	je	 <L120>
<L119>:
               	mov	rdi, qword ptr [rbx]
               	test	rdi, rdi
               	je	 <L121>
               	mov	rax, qword ptr [rdi]
               	vzeroupper
               	call	qword ptr [rax + 0x28]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x20]
               	jmp	 <L121>
<L120>:
               	mov	rbx, qword ptr [rsp + 0x30]
               	jmp	 <L118>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Circle+0x10>
               	jmp	 <L122>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Ellipse+0x10>
               	jmp	 <L122>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Rectangle+0x10>
               	jmp	 <L122>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Square@Evaluation.Virtual.Square+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Square+0x10>
               	jmp	 <L122>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Triangle+0x10>
               	jmp	 <L122>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Square@Evaluation.Virtual.Square+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cube@Evaluation.Virtual.Cube+0x10>
               	jmp	 <L122>
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x20], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cuboid@Evaluation.Virtual.Cuboid+0x10>
               	jmp	 <L122>
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x20], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Pyramid@Evaluation.Virtual.Pyramid+0x10>
               	jmp	 <L122>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Sphere@Evaluation.Virtual.Sphere+0x10>
               	jmp	 <L122>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cylinder@Evaluation.Virtual.Cylinder+0x10>
               	jmp	 <L122>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cone@Evaluation.Virtual.Cone+0x10>
               	jmp	 <L122>
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x20], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Ellipsoid@Evaluation.Virtual.Ellipsoid+0x10>
<L122>:
               	mov	qword ptr [rax], rcx
               	mov	qword ptr [rbx + 8*rbp], rax
               	inc	rbp
               	test	bpl, 0x7
               	je	 <L123>
<L126>:
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x80]
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x80], ymm0
               	cmp	rbp, qword ptr [rsp + 0xa8]
               	jne	 <L124>
               	jmp	 <L125>
<L123>:
               	mov	rsi, qword ptr [rsp + 0x40]
               	mov	rax, rsi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x70]
               	xor	rcx, qword ptr [rsp + 0x78]
               	mov	rdi, qword ptr [rsp + 0x68]
               	xor	rdi, rsi
               	xor	rsi, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x70], rcx
               	mov	r9, qword ptr [rsp + 0x38]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x58]
               	mov	r10, qword ptr [rsp + 0x50]
               	xor	rcx, r10
               	mov	r8, qword ptr [rsp + 0x60]
               	xor	r8, r9
               	xor	r9, rcx
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x58], rcx
               	mov	rax, qword ptr [rsp + 0x20]
               	mov	rdx, rbx
               	mov	rbx, r15
               	mov	r15, r14
               	mov	r14, r13
               	mov	r13, rax
               	shl	r13, 0x11
               	mov	rcx, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x80], r12
               	mov	r12, qword ptr [rsp + 0x10]
               	xor	rcx, r12
               	mov	r11, qword ptr [rsp + 0x8]
               	xor	r11, rax
               	xor	rax, rcx
               	xor	rcx, r13
               	mov	r13, r14
               	mov	r14, r15
               	mov	r15, rbx
               	mov	rbx, rdx
               	mov	qword ptr [rsp + 0x18], rcx
               	mov	rcx, r15
               	shl	rcx, 0x11
               	xor	r14, qword ptr [rsp + 0x80]
               	xor	r13, r15
               	xor	r15, r14
               	xor	r14, rcx
               	mov	qword ptr [rsp + 0x20], rax
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rcx, [r15 + 4*r15]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	vmovq	xmm0, rcx
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm1, rax
               	mov	qword ptr [rsp + 0x38], r9
               	lea	rax, [r9 + 4*r9]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm2, rax
               	mov	qword ptr [rsp + 0x40], rsi
               	lea	rax, [rsi + 4*rsi]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	vmovq	xmm3, rax
               	xor	qword ptr [rsp + 0x78], rdi
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x68], rdi
               	vpunpcklqdq	xmm0, xmm1, xmm0 # xmm0 = xmm1[0],xmm0[0]
               	xor	r10, r8
               	mov	qword ptr [rsp + 0x50], r10
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x60], r8
               	xor	r12, r11
               	mov	qword ptr [rsp + 0x10], r12
               	mov	r12, qword ptr [rsp + 0x80]
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x8], r11
               	xor	r12, r13
               	rol	r13, 0x2d
               	vpunpcklqdq	xmm1, xmm3, xmm2 # xmm1 = xmm3[0],xmm2[0]
               	vinserti128	ymm0, ymm1, xmm0, 0x1
               	vmovdqu	ymmword ptr [rsp + 0x80], ymm0
               	cmp	rbp, qword ptr [rsp + 0xa8]
               	je	 <L125>
<L124>:
               	add	qword ptr [rsp + 0x48], 0x8
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x80]
               	vmovd	eax, xmm0
               	movzx	eax, al
               	imul	ecx, eax, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	lea	rcx,  <memset+0x2420>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	edi, 0x90
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rax + 0x30], ymm0
               	vmovdqu	ymmword ptr [rax + 0x50], ymm0
               	vmovdqu	ymmword ptr [rax + 0x70], ymm0
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rdx,  <vtable for Bodies3D::Head@Evaluation.Virtual.Head+0x10>
               	mov	qword ptr [rax], rdx
               	mov	qword ptr [rax + 0x38], rcx
               	lea	rdx,  <vtable for Bodies3D::Sphere@Evaluation.Virtual.Sphere+0x10>
               	mov	qword ptr [rax + 0x30], rdx
               	mov	qword ptr [rax + 0x68], rcx
               	mov	qword ptr [rax + 0x60], rdx
               	mov	qword ptr [rbx + 8*rbp], rax
               	inc	rbp
               	test	bpl, 0x7
               	jne	 <L126>
               	jmp	 <L123>
               	mov	rdi, rax
               	call	 <__clang_call_terminate>
               	int3
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
               	vmovss	xmm0, dword ptr [rdi + 0x2c]
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
               	vmovss	xmm0, dword ptr  <memset+0x2468>
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
               	vmovss	xmm0, dword ptr [rdi + 0x38]
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
               	vmovss	xmm0, dword ptr [rdi + 0x30]
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
               	vmovss	xmm0, dword ptr  <memset+0x2454>
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
               	vmovss	xmm0, dword ptr  <memset+0x245c>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::PyramidicBody@Evaluation.Virtual.PyramidicBody<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <memset+0x2460>
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
               	vmovss	xmm0, dword ptr  <memset+0x2458>
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
               	vmovss	xmm0, dword ptr  <memset+0x2464>
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
               	vmovss	xmm0, dword ptr [rdi + 0x28]
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
               	vmovss	xmm0, dword ptr [rdi + 0x24]
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
               	mov	rax, qword ptr  <memset+0x7a20>
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

<_Znwm@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x28>
               	push	0x2
               	jmp	 <.plt>

<_ZSt9terminatev@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x30>
               	push	0x3
               	jmp	 <.plt>

<__cxa_begin_catch@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x38>
               	push	0x4
               	jmp	 <.plt>

<_ZdlPv@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x40>
               	push	0x5
               	jmp	 <.plt>

<_ZnamRKSt9nothrow_t@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x48>
               	push	0x6
               	jmp	 <.plt>

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x50>
               	push	0x7
               	jmp	 <.plt>
