
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
               	call	qword ptr  <memset+0x9e98>
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
               	mov	rax, qword ptr  <memset+0x9ea8>
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
               	mov	rax, qword ptr  <memset+0x9eb0>
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
               	cmp	qword ptr , 0x0 <memset+0x9eb8>
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
               	sub	rsp, 0x408
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r14d, byte ptr [rcx]
               	add	r14d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	dword ptr [rax]
<L1>:
               	lea	esi, [r14 + 4*r14]
               	movsx	edx, dl
               	lea	r14d, [rdx + 2*rsi]
               	add	r14d, -0x30
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
               	mov	qword ptr [rsp + 0x340], rdx
               	movsxd	rdi, edx
               	shl	rdi, 0x3
               	mov	rsi, qword ptr  <memset+0x9ec0>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x10], rax
               	movsxd	rdx, r14d
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
               	xor	r15d, r15d
               	mov	qword ptr [rsp + 0x360], rsi
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x368], r10
               	mov	rdi, r10
               	xor	r13d, r13d
               	mov	rcx, r8
               	mov	qword ptr [rsp + 0x278], r8
               	mov	qword ptr [rsp + 0x370], r9
               	xor	ebx, ebx
               	jmp	 <L4>
               	nop	word ptr cs:[rax + rax]
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
               	movabs	rcx, 0x180ec6d33cfd0aba
               	bt	rcx, rax
               	jae	 <L6>
               	xor	rbx, r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L6>
<L5>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop
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
               	xor	rbx, r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
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
               	xor	rbx, r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
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
               	xor	rbx, r9
               	xor	r13, r8
               	xor	r12, rdi
               	xor	r15, rsi
               	jmp	 <L15>
<L14>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x240], rsi
               	mov	rsi, r15
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x248], rdi
               	mov	rdi, r12
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r8, r13
               	mov	r9, rbx
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x238], r11
               	jmp	 <L16>
               	nop
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
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L18>
               	xor	qword ptr [rsp + 0x238], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x248], rdi
               	xor	qword ptr [rsp + 0x240], rsi
               	jmp	 <L18>
<L17>:
               	xor	r10d, r10d
               	jmp	 <L19>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x238], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x248], rdi
               	xor	qword ptr [rsp + 0x240], rsi
               	jmp	 <L21>
<L20>:
               	xor	r10d, r10d
               	jmp	 <L22>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x238], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x248], rdi
               	xor	qword ptr [rsp + 0x240], rsi
               	jmp	 <L24>
<L23>:
               	xor	r10d, r10d
               	jmp	 <L25>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x238], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0x248], rdi
               	xor	qword ptr [rsp + 0x240], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x228], rsi
               	mov	rsi, qword ptr [rsp + 0x240]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x230], rdi
               	mov	rdi, qword ptr [rsp + 0x248]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x58], r8
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0x238]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x220], r11
               	jmp	 <L28>
               	nop	word ptr cs:[rax + rax]
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
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L30>
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L30>
<L29>:
               	xor	r10d, r10d
               	jmp	 <L31>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L33>
<L32>:
               	xor	r10d, r10d
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
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
               	je	 <L35>
<L34>:
               	bt	rcx, r10
               	jae	 <L36>
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L36>
<L35>:
               	xor	r10d, r10d
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
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
               	je	 <L38>
<L37>:
               	bt	rdx, r10
               	jae	 <L39>
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x218], rsi
               	mov	rsi, qword ptr [rsp + 0x228]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x210], rdi
               	mov	rdi, qword ptr [rsp + 0x230]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xb8], r8
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	r9, qword ptr [rsp + 0x220]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x208], r11
               	jmp	 <L40>
               	nop	word ptr cs:[rax + rax]
<L42>:
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
               	je	 <L41>
<L40>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L42>
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
               	jmp	 <L42>
<L41>:
               	xor	r10d, r10d
               	jmp	 <L43>
               	nop	word ptr [rax + rax]
<L45>:
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
               	je	 <L44>
<L43>:
               	bt	rax, r10
               	jae	 <L45>
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
               	jmp	 <L45>
<L44>:
               	xor	r10d, r10d
               	jmp	 <L46>
<L48>:
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
               	je	 <L47>
<L46>:
               	bt	rcx, r10
               	jae	 <L48>
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
               	jmp	 <L48>
<L47>:
               	xor	r10d, r10d
               	jmp	 <L49>
<L51>:
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
               	je	 <L50>
<L49>:
               	bt	rdx, r10
               	jae	 <L51>
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0xb8], r8
               	xor	qword ptr [rsp + 0x210], rdi
               	xor	qword ptr [rsp + 0x218], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1f8], rsi
               	mov	rsi, qword ptr [rsp + 0x218]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x200], rdi
               	mov	rdi, qword ptr [rsp + 0x210]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xb0], r8
               	mov	r8, qword ptr [rsp + 0xb8]
               	mov	r9, qword ptr [rsp + 0x208]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1f0], r11
               	jmp	 <L52>
               	nop	word ptr [rax + rax]
<L54>:
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
               	je	 <L53>
<L52>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L54>
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L54>
<L53>:
               	xor	r10d, r10d
               	jmp	 <L55>
               	nop	word ptr [rax + rax]
<L57>:
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
               	je	 <L56>
<L55>:
               	bt	rax, r10
               	jae	 <L57>
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L57>
<L56>:
               	xor	r10d, r10d
               	jmp	 <L58>
<L60>:
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
               	je	 <L59>
<L58>:
               	bt	rcx, r10
               	jae	 <L60>
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L60>
<L59>:
               	xor	r10d, r10d
               	jmp	 <L61>
<L63>:
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
               	je	 <L62>
<L61>:
               	bt	rdx, r10
               	jae	 <L63>
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0xb0], r8
               	xor	qword ptr [rsp + 0x200], rdi
               	xor	qword ptr [rsp + 0x1f8], rsi
               	jmp	 <L63>
<L62>:
               	mov	qword ptr [rsp + 0x338], r14
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1e8], rsi
               	mov	rsi, qword ptr [rsp + 0x1f8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e0], rdi
               	mov	rdi, qword ptr [rsp + 0x200]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	mov	r8, qword ptr [rsp + 0xb0]
               	mov	r9, qword ptr [rsp + 0x1f0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x178], r11
               	jmp	 <L64>
               	nop
<L66>:
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
               	je	 <L65>
<L64>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L66>
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
               	jmp	 <L66>
<L65>:
               	xor	r10d, r10d
               	jmp	 <L67>
               	nop	word ptr [rax + rax]
<L69>:
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
               	je	 <L68>
<L67>:
               	bt	rax, r10
               	jae	 <L69>
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
               	jmp	 <L69>
<L68>:
               	xor	r10d, r10d
               	jmp	 <L70>
               	nop	dword ptr [rax]
<L72>:
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
               	je	 <L71>
<L70>:
               	bt	rcx, r10
               	jae	 <L72>
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
               	jmp	 <L72>
<L71>:
               	xor	r10d, r10d
               	jmp	 <L73>
               	nop	dword ptr [rax]
<L75>:
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
               	je	 <L74>
<L73>:
               	bt	rdx, r10
               	jae	 <L75>
               	xor	qword ptr [rsp + 0x178], r9
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0x1e0], rdi
               	xor	qword ptr [rsp + 0x1e8], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1d8], rsi
               	mov	rsi, qword ptr [rsp + 0x1e8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1d0], rdi
               	mov	rdi, qword ptr [rsp + 0x1e0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x48], r8
               	mov	r8, qword ptr [rsp + 0x50]
               	mov	r9, qword ptr [rsp + 0x178]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1c8], r11
               	jmp	 <L76>
               	nop	word ptr cs:[rax + rax]
<L78>:
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
               	je	 <L77>
<L76>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L78>
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
               	jmp	 <L78>
<L77>:
               	xor	r10d, r10d
               	jmp	 <L79>
               	nop	word ptr [rax + rax]
<L81>:
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
               	je	 <L80>
<L79>:
               	bt	rax, r10
               	jae	 <L81>
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
               	jmp	 <L81>
<L80>:
               	xor	r10d, r10d
               	jmp	 <L82>
               	nop	dword ptr [rax]
<L84>:
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
               	je	 <L83>
<L82>:
               	bt	rcx, r10
               	jae	 <L84>
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
               	jmp	 <L84>
<L83>:
               	xor	r10d, r10d
               	jmp	 <L85>
               	nop	dword ptr [rax]
<L87>:
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
               	je	 <L86>
<L85>:
               	bt	rdx, r10
               	jae	 <L87>
               	xor	qword ptr [rsp + 0x1c8], r9
               	xor	qword ptr [rsp + 0x48], r8
               	xor	qword ptr [rsp + 0x1d0], rdi
               	xor	qword ptr [rsp + 0x1d8], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1c0], rsi
               	mov	rsi, qword ptr [rsp + 0x1d8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	mov	rdi, qword ptr [rsp + 0x1d0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	r8, qword ptr [rsp + 0x48]
               	mov	r9, qword ptr [rsp + 0x1c8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1b0], r11
               	jmp	 <L88>
               	nop	word ptr cs:[rax + rax]
<L90>:
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
               	je	 <L89>
<L88>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L90>
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
               	jmp	 <L90>
<L89>:
               	xor	r10d, r10d
               	jmp	 <L91>
               	nop	word ptr [rax + rax]
<L93>:
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
               	je	 <L92>
<L91>:
               	bt	rax, r10
               	jae	 <L93>
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
               	jmp	 <L93>
<L92>:
               	xor	r10d, r10d
               	jmp	 <L94>
               	nop	dword ptr [rax]
<L96>:
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
               	je	 <L95>
<L94>:
               	bt	rcx, r10
               	jae	 <L96>
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
               	jmp	 <L96>
<L95>:
               	xor	r10d, r10d
               	jmp	 <L97>
               	nop	dword ptr [rax]
<L99>:
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
               	je	 <L98>
<L97>:
               	bt	rdx, r10
               	jae	 <L99>
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1a8], rsi
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rdi
               	mov	rdi, qword ptr [rsp + 0x1b8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x38], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0x1b0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x198], r11
               	jmp	 <L100>
               	nop	word ptr cs:[rax + rax]
<L102>:
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
               	je	 <L101>
<L100>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L102>
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
               	jmp	 <L102>
<L101>:
               	xor	r10d, r10d
               	jmp	 <L103>
               	nop	word ptr [rax + rax]
<L105>:
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
               	je	 <L104>
<L103>:
               	bt	rax, r10
               	jae	 <L105>
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
               	jmp	 <L105>
<L104>:
               	xor	r10d, r10d
               	jmp	 <L106>
               	nop	dword ptr [rax]
<L108>:
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
               	je	 <L107>
<L106>:
               	bt	rcx, r10
               	jae	 <L108>
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
               	jmp	 <L108>
<L107>:
               	xor	r10d, r10d
               	jmp	 <L109>
               	nop	dword ptr [rax]
<L111>:
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
               	je	 <L110>
<L109>:
               	bt	rdx, r10
               	jae	 <L111>
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x38], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x190], rsi
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x188], rdi
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x18], r8
               	mov	r8, qword ptr [rsp + 0x38]
               	mov	r9, qword ptr [rsp + 0x198]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x180], r11
               	jmp	 <L112>
               	nop	word ptr cs:[rax + rax]
<L114>:
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
               	je	 <L113>
<L112>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L114>
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
               	jmp	 <L114>
<L113>:
               	xor	r10d, r10d
               	jmp	 <L115>
               	nop	word ptr [rax + rax]
<L117>:
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
               	je	 <L116>
<L115>:
               	bt	rax, r10
               	jae	 <L117>
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
               	jmp	 <L117>
<L116>:
               	xor	r10d, r10d
               	jmp	 <L118>
               	nop	dword ptr [rax]
<L120>:
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
               	je	 <L119>
<L118>:
               	bt	rcx, r10
               	jae	 <L120>
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
               	jmp	 <L120>
<L119>:
               	xor	r10d, r10d
               	jmp	 <L121>
               	nop	dword ptr [rax]
<L123>:
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
               	je	 <L122>
<L121>:
               	bt	rdx, r10
               	jae	 <L123>
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x170], rsi
               	mov	rsi, qword ptr [rsp + 0x190]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x168], rdi
               	mov	rdi, qword ptr [rsp + 0x188]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa8], r8
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	r9, qword ptr [rsp + 0x180]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x160], r11
               	jmp	 <L124>
               	nop	word ptr cs:[rax + rax]
<L126>:
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
               	je	 <L125>
<L124>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L126>
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
               	jmp	 <L126>
<L125>:
               	xor	r10d, r10d
               	jmp	 <L127>
               	nop	word ptr [rax + rax]
<L129>:
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
               	je	 <L128>
<L127>:
               	bt	rax, r10
               	jae	 <L129>
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
               	jmp	 <L129>
<L128>:
               	xor	r10d, r10d
               	jmp	 <L130>
<L132>:
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
               	je	 <L131>
<L130>:
               	bt	rcx, r10
               	jae	 <L132>
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
               	jmp	 <L132>
<L131>:
               	xor	r10d, r10d
               	jmp	 <L133>
<L135>:
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
               	je	 <L134>
<L133>:
               	bt	rdx, r10
               	jae	 <L135>
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0xa8], r8
               	xor	qword ptr [rsp + 0x168], rdi
               	xor	qword ptr [rsp + 0x170], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x158], rsi
               	mov	rsi, qword ptr [rsp + 0x170]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	mov	rdi, qword ptr [rsp + 0x168]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0xa0], r8
               	mov	r8, qword ptr [rsp + 0xa8]
               	mov	r9, qword ptr [rsp + 0x160]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x148], r11
               	jmp	 <L136>
               	nop	word ptr [rax + rax]
<L138>:
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
               	je	 <L137>
<L136>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L138>
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
               	jmp	 <L138>
<L137>:
               	xor	r10d, r10d
               	jmp	 <L139>
               	nop	word ptr [rax + rax]
<L141>:
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
               	je	 <L140>
<L139>:
               	bt	rax, r10
               	jae	 <L141>
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
               	jmp	 <L141>
<L140>:
               	xor	r10d, r10d
               	jmp	 <L142>
<L144>:
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
               	je	 <L143>
<L142>:
               	bt	rcx, r10
               	jae	 <L144>
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
               	jmp	 <L144>
<L143>:
               	xor	r10d, r10d
               	jmp	 <L145>
<L147>:
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
               	je	 <L146>
<L145>:
               	bt	rdx, r10
               	jae	 <L147>
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp + 0xa0], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x140], rsi
               	mov	rsi, qword ptr [rsp + 0x158]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	mov	rdi, qword ptr [rsp + 0x150]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x98], r8
               	mov	r8, qword ptr [rsp + 0xa0]
               	mov	r9, qword ptr [rsp + 0x148]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x130], r11
               	jmp	 <L148>
               	nop	word ptr [rax + rax]
<L150>:
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
               	je	 <L149>
<L148>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L150>
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
               	jmp	 <L150>
<L149>:
               	xor	r10d, r10d
               	jmp	 <L151>
               	nop	word ptr [rax + rax]
<L153>:
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
               	je	 <L152>
<L151>:
               	bt	rax, r10
               	jae	 <L153>
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
               	jmp	 <L153>
<L152>:
               	xor	r10d, r10d
               	jmp	 <L154>
<L156>:
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
               	je	 <L155>
<L154>:
               	bt	rcx, r10
               	jae	 <L156>
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
               	jmp	 <L156>
<L155>:
               	xor	r10d, r10d
               	jmp	 <L157>
<L159>:
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
               	je	 <L158>
<L157>:
               	bt	rdx, r10
               	jae	 <L159>
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
               	jmp	 <L159>
<L158>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x128], rsi
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	mov	rdi, qword ptr [rsp + 0x138]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x90], r8
               	mov	r8, qword ptr [rsp + 0x98]
               	mov	r9, qword ptr [rsp + 0x130]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x118], r11
               	jmp	 <L160>
               	nop	word ptr [rax + rax]
<L162>:
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
               	je	 <L161>
<L160>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L162>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L162>
<L161>:
               	xor	r10d, r10d
               	jmp	 <L163>
               	nop	word ptr [rax + rax]
<L165>:
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
               	je	 <L164>
<L163>:
               	bt	rax, r10
               	jae	 <L165>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L165>
<L164>:
               	xor	r10d, r10d
               	jmp	 <L166>
<L168>:
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
               	je	 <L167>
<L166>:
               	bt	rcx, r10
               	jae	 <L168>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L168>
<L167>:
               	xor	r10d, r10d
               	jmp	 <L169>
<L171>:
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
               	je	 <L170>
<L169>:
               	bt	rdx, r10
               	jae	 <L171>
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L171>
<L170>:
               	mov	r14, r12
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x110], rsi
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	mov	rdi, qword ptr [rsp + 0x120]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x88], r8
               	mov	r8, qword ptr [rsp + 0x90]
               	mov	r9, qword ptr [rsp + 0x118]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x100], r11
               	jmp	 <L172>
               	nop	dword ptr [rax]
<L174>:
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
               	je	 <L173>
<L172>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L174>
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L174>
<L173>:
               	xor	r10d, r10d
               	jmp	 <L175>
               	nop	word ptr [rax + rax]
<L177>:
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
               	je	 <L176>
<L175>:
               	bt	rax, r10
               	jae	 <L177>
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L177>
<L176>:
               	xor	r10d, r10d
               	jmp	 <L178>
<L180>:
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
               	je	 <L179>
<L178>:
               	bt	rcx, r10
               	jae	 <L180>
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L180>
<L179>:
               	xor	r10d, r10d
               	jmp	 <L181>
<L183>:
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
               	je	 <L182>
<L181>:
               	bt	rdx, r10
               	jae	 <L183>
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xf8], rsi
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	mov	rdi, qword ptr [rsp + 0x108]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x80], r8
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	r9, qword ptr [rsp + 0x100]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xe8], r11
               	jmp	 <L184>
               	nop	word ptr [rax + rax]
<L186>:
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
               	je	 <L185>
<L184>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L186>
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L186>
<L185>:
               	xor	r10d, r10d
               	jmp	 <L187>
               	nop	word ptr [rax + rax]
<L189>:
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
               	je	 <L188>
<L187>:
               	bt	rax, r10
               	jae	 <L189>
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L189>
<L188>:
               	xor	r10d, r10d
               	jmp	 <L190>
<L192>:
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
               	je	 <L191>
<L190>:
               	bt	rcx, r10
               	jae	 <L192>
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L192>
<L191>:
               	xor	r10d, r10d
               	jmp	 <L193>
<L195>:
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
               	je	 <L194>
<L193>:
               	bt	rdx, r10
               	jae	 <L195>
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xe0], rsi
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	mov	rdi, qword ptr [rsp + 0xf0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	r9, qword ptr [rsp + 0xe8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xd0], r11
               	jmp	 <L196>
               	nop	word ptr [rax + rax]
<L198>:
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
               	je	 <L197>
<L196>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L198>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L198>
<L197>:
               	xor	r10d, r10d
               	jmp	 <L199>
               	nop	word ptr [rax + rax]
<L201>:
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
               	je	 <L200>
<L199>:
               	bt	rax, r10
               	jae	 <L201>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L201>
<L200>:
               	xor	r10d, r10d
               	jmp	 <L202>
               	nop	dword ptr [rax]
<L204>:
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
               	je	 <L203>
<L202>:
               	bt	rcx, r10
               	jae	 <L204>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L204>
<L203>:
               	xor	r10d, r10d
               	jmp	 <L205>
               	nop	dword ptr [rax]
<L207>:
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
               	je	 <L206>
<L205>:
               	bt	rdx, r10
               	jae	 <L207>
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x358], r15
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xc8], rsi
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	mov	rdi, qword ptr [rsp + 0xd8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	r9, qword ptr [rsp + 0xd0]
               	xor	r15d, r15d
               	jmp	 <L208>
               	nop	word ptr cs:[rax + rax]
<L210>:
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
               	je	 <L209>
<L208>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L210>
               	xor	r15, r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L210>
<L209>:
               	xor	r10d, r10d
               	jmp	 <L211>
               	nop	word ptr cs:[rax + rax]
<L213>:
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
               	je	 <L212>
<L211>:
               	bt	rax, r10
               	jae	 <L213>
               	xor	r15, r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L213>
<L212>:
               	xor	r10d, r10d
               	jmp	 <L214>
               	nop	dword ptr [rax + rax]
<L216>:
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
               	je	 <L215>
<L214>:
               	bt	rcx, r10
               	jae	 <L216>
               	xor	r15, r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L216>
<L215>:
               	xor	r10d, r10d
               	jmp	 <L217>
               	nop	dword ptr [rax + rax]
<L219>:
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
               	je	 <L218>
<L217>:
               	bt	rdx, r10
               	jae	 <L219>
               	xor	r15, r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x348], rbx
               	mov	qword ptr [rsp + 0x270], r13
               	mov	qword ptr [rsp + 0x350], r14
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, qword ptr [rsp + 0xc8]
               	xor	r14d, r14d
               	mov	rdi, qword ptr [rsp + 0xc0]
               	xor	r12d, r12d
               	mov	r8, qword ptr [rsp + 0x70]
               	mov	r9, r15
               	xor	r13d, r13d
               	jmp	 <L220>
               	nop	word ptr cs:[rax + rax]
<L222>:
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
               	je	 <L221>
<L220>:
               	movabs	r11, 0x180ec6d33cfd0aba
               	bt	r11, r10
               	jae	 <L222>
               	xor	r13, r9
               	xor	r12, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L222>
<L221>:
               	xor	r10d, r10d
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
<L225>:
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
               	je	 <L224>
<L223>:
               	bt	rax, r10
               	jae	 <L225>
               	xor	r13, r9
               	xor	r12, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	jmp	 <L226>
               	nop	dword ptr [rax + rax]
<L228>:
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
               	je	 <L227>
<L226>:
               	bt	rcx, rax
               	jae	 <L228>
               	xor	r13, r9
               	xor	r12, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	jmp	 <L229>
               	nop	dword ptr [rax + rax]
<L231>:
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
               	je	 <L230>
<L229>:
               	bt	rdx, rax
               	jae	 <L231>
               	xor	r13, r9
               	xor	r12, r8
               	xor	r14, rdi
               	xor	rbx, rsi
               	jmp	 <L231>
<L230>:
               	mov	rax, qword ptr [rsp + 0x278]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rsi, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x290], rsi
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	rcx, qword ptr [rsp + 0x60]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x58]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2a0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	rcx, qword ptr [rsp + 0xb8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b0], rcx
               	mov	rcx, qword ptr [rsp + 0xb0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x48]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2c0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	rcx, qword ptr [rsp + 0x38]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rax, rcx
               	mov	qword ptr [rsp + 0x250], rcx
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rdx, [rcx + 8*rcx]
               	mov	rcx, qword ptr [rsp + 0xa8]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	rax, rdx
               	mov	qword ptr [rsp + 0x260], rdx
               	mov	qword ptr [rsp + 0x2e0], rdx
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	rcx, qword ptr [rsp + 0xa0]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2f0], rcx
               	mov	rcx, qword ptr [rsp + 0x98]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rax, rcx
               	mov	qword ptr [rsp + 0x280], rcx
               	mov	qword ptr [rsp + 0x2f8], rcx
               	mov	rcx, qword ptr [rsp + 0x90]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x88]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x300], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x308], rcx
               	mov	rax, qword ptr [rsp + 0x80]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x310], rcx
               	mov	rax, qword ptr [rsp + 0x78]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x318], rcx
               	mov	rax, qword ptr [rsp + 0x70]
               	lea	rcx, [rax + 4*rax]
               	rol	rcx, 0x7
               	lea	rbp, [rcx + 8*rcx]
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x320], rbp
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x328], rcx
               	mov	rcx, qword ptr [rsp + 0x340]
               	test	ecx, ecx
               	je	 <L232>
               	mov	eax, ecx
               	mov	qword ptr [rsp + 0x398], rax
               	mov	ecx, 0x8
               	vpbroadcastq	ymm0, qword ptr  <memset+0x24e0>
               	vmovdqu	ymmword ptr [rsp + 0x3e0], ymm0
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x8], rax
               	jmp	 <L233>
               	nop	word ptr cs:[rax + rax]
<L238>:
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x3c0]
               	vpblendd	ymm0, ymm0, ymmword ptr [rsp + 0x3a0], 0xc0 # ymm0 = ymm0[0,1,2,3,4,5],mem[6,7]
               	vpermq	ymm0, ymm0, 0x93        # ymm0 = ymm0[3,0,1,2]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x290]
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x2d0]
               	vmovdqu	ymm3, ymmword ptr [rsp + 0x2f0]
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x310]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x290], ymm1
               	vpsrlq	ymm0, ymm0, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm0
               	vpsrlq	ymm0, ymm2, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm0
               	vpsrlq	ymm2, ymm3, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x2f0], ymm2
               	vpsrlq	ymm3, ymm4, 0x8
               	vmovdqu	ymmword ptr [rsp + 0x310], ymm3
               	vmovq	rsi, xmm1
               	vpextrq	qword ptr [rsp + 0x250], xmm0, 0x1
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	qword ptr [rsp + 0x260], xmm0
               	vpextrq	qword ptr [rsp + 0x280], xmm2, 0x1
               	vextracti128	xmm0, ymm3, 0x1
               	vmovq	rbp, xmm0
<L244>:
               	mov	rax, qword ptr [rsp + 0x288]
               	lea	rcx, [rax + 0x8]
               	mov	rax, qword ptr [rsp + 0x398]
               	cmp	qword ptr [rsp + 0x8], rax
               	je	 <L234>
<L233>:
               	mov	qword ptr [rsp + 0x288], rcx
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x298]
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x2b8]
               	vmovdqu	ymm1, ymmword ptr [rsp + 0x3e0]
               	vmovdqu	ymmword ptr [rsp + 0x3c0], ymm0
               	vpand	ymm0, ymm0, ymm1
               	vmovdqu	ymmword ptr [rsp + 0x3a0], ymm2
               	vpand	ymm1, ymm2, ymm1
               	vpackusdw	ymm0, ymm1, ymm0
               	vextracti128	xmm1, ymm0, 0x1
               	vpackusdw	xmm0, xmm0, xmm1
               	vpshufd	xmm0, xmm0, 0xd8        # xmm0 = xmm0[0,2,1,3]
               	vpackuswb	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rsp + 0x20], xmm0
               	movzx	ecx, sil
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	sil, cl
               	movzx	eax, sil
               	lea	rcx,  <memset+0x2560>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Circle+0x10>
               	jmp	 <L235>
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Shapes2D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Ellipsoid@Evaluation.Virtual.Ellipsoid+0x10>
               	jmp	 <L236>
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	mov	qword ptr [rax + 0x30], 0x0
               	lea	rcx,  <vtable for Shapes2D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x20]
               	vpextrb	ecx, xmm1, 0x7
               	lea	rdx,  <vtable for Bodies3D::Triangle+0x10>
               	mov	qword ptr [rax], rdx
               	vcvtsi2ss	xmm0, xmm5, ecx
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rsi], rax
               	vpshufb	xmm1, xmm1, xmmword ptr  <memset+0x24f0>
               	vpinsrb	xmm1, xmm1, byte ptr [rsp + 0x250], 0x7
               	vmovss	dword ptr [rax + 0x30], xmm0
               	vpmovzxbd	ymm0, xmm1      # ymm0 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero,xmm1[4],zero,zero,zero,xmm1[5],zero,zero,zero,xmm1[6],zero,zero,zero,xmm1[7],zero,zero,zero
               	vcvtdq2ps	ymm0, ymm0
               	jmp	 <L237>
               	vmovups	xmm0, xmmword ptr [rsp + 0x2e8]
               	vmovaps	xmmword ptr [rsp + 0x380], xmm0
               	vmovups	xmm0, xmmword ptr [rsp + 0x310]
               	vmovaps	xmmword ptr [rsp + 0x250], xmm0
               	vmovups	xmm0, xmmword ptr [rsp + 0x300]
               	vmovaps	xmmword ptr [rsp + 0x260], xmm0
               	mov	edi, 0x90
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpbroadcastw	xmm2, word ptr  <memset+0x255c>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x380]
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
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rsi], rax
               	vpmovzxbd	ymm2, qword ptr [rsp + 0x20]
               	vcvtdq2ps	ymm2, ymm2
               	vpermilps	ymm3, ymm2, ymmword ptr  <memset+0x2520>
               	vmovups	ymmword ptr [rax + 0x10], ymm3
               	vpmovzxbd	xmm0, xmm0      # xmm0 = xmm0[0],zero,zero,zero,xmm0[1],zero,zero,zero,xmm0[2],zero,zero,zero,xmm0[3],zero,zero,zero
               	vcvtdq2ps	xmm0, xmm0
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	movzx	ecx, byte ptr [rsp + 0x280]
               	vcvtsi2ss	xmm3, xmm5, ecx
               	vmovss	dword ptr [rax + 0x48], xmm3
               	vshufps	xmm2, xmm2, xmm2, 0xff  # xmm2 = xmm2[3,3,3,3]
               	vmovss	dword ptr [rax + 0x4c], xmm2
               	vpmovzxbd	xmm1, xmm1      # xmm1 = xmm1[0],zero,zero,zero,xmm1[1],zero,zero,zero,xmm1[2],zero,zero,zero,xmm1[3],zero,zero,zero
               	vcvtdq2ps	xmm1, xmm1
               	vshufps	xmm4, xmm1, xmm1, 0xd8  # xmm4 = xmm1[0,2,1,3]
               	vmovups	xmmword ptr [rax + 0x50], xmm4
               	vmovlps	qword ptr [rax + 0x70], xmm0
               	movzx	ecx, bpl
               	vcvtsi2ss	xmm0, xmm5, ecx
               	vmovss	dword ptr [rax + 0x78], xmm3
               	vmovss	dword ptr [rax + 0x7c], xmm2
               	vmovss	dword ptr [rax + 0x80], xmm0
               	vshufps	xmm0, xmm1, xmm1, 0xe6  # xmm0 = xmm1[2,1,2,3]
               	vmovlps	qword ptr [rax + 0x84], xmm0
               	vextractps	dword ptr [rax + 0x8c], xmm1, 0x3
               	inc	rsi
               	mov	qword ptr [rsp + 0x8], rsi
               	test	sil, 0x7
               	jne	 <L238>
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
               	jmp	 <L235>
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Shapes2D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Pyramid@Evaluation.Virtual.Pyramid+0x10>
               	mov	qword ptr [rax], rcx
               	vmovdqa	xmm1, xmmword ptr [rsp + 0x20]
               	vpextrb	ecx, xmm1, 0x7
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	qword ptr [rdx + 8*rsi], rax
               	vcvtsi2ss	xmm0, xmm5, ecx
               	vmovss	dword ptr [rax + 0x30], xmm0
               	vpshufb	xmm0, xmm1, xmmword ptr  <memset+0x24f0>
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
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rsi], rax
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x20]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <memset+0x2520>
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	movzx	ecx, byte ptr [rsp + 0x250]
               	jmp	 <L243>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Shapes2D::Square@Evaluation.Virtual.Square+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cube@Evaluation.Virtual.Cube+0x10>
               	jmp	 <L235>
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqa	xmmword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Shapes2D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cuboid@Evaluation.Virtual.Cuboid+0x10>
<L236>:
               	mov	qword ptr [rax], rcx
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x20]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <memset+0x2520>
               	movzx	ecx, byte ptr [rsp + 0x250]
               	vcvtsi2ss	xmm1, xmm5, ecx
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rsi], rax
               	vmovss	dword ptr [rax + 0x30], xmm1
<L242>:
               	movzx	ecx, byte ptr [rsp + 0x260]
               	vcvtsi2ss	xmm0, xmm5, ecx
               	vmovss	dword ptr [rax + 0x38], xmm0
               	inc	rsi
               	mov	qword ptr [rsp + 0x8], rsi
               	test	sil, 0x7
               	jne	 <L238>
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
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rsi], rax
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x20]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <memset+0x2520>
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	movzx	ecx, byte ptr [rsp + 0x260]
<L243>:
               	vcvtsi2ss	xmm0, xmm5, ecx
               	vmovss	dword ptr [rax + 0x30], xmm0
               	inc	rsi
               	mov	qword ptr [rsp + 0x8], rsi
               	test	sil, 0x7
               	jne	 <L238>
               	jmp	 <L239>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Sphere@Evaluation.Virtual.Sphere+0x10>
<L235>:
               	mov	qword ptr [rax], rcx
               	mov	rcx, qword ptr [rsp + 0x10]
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	qword ptr [rcx + 8*rsi], rax
               	vpmovzxbd	ymm0, qword ptr [rsp + 0x20]
               	vcvtdq2ps	ymm0, ymm0
               	vpermilps	ymm0, ymm0, ymmword ptr  <memset+0x2520>
<L237>:
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	inc	rsi
               	mov	qword ptr [rsp + 0x8], rsi
               	test	sil, 0x7
               	jne	 <L238>
<L239>:
               	mov	rdx, qword ptr [rsp + 0x278]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x370]
               	mov	rsi, qword ptr [rsp + 0x368]
               	xor	rsi, rcx
               	mov	rdi, qword ptr [rsp + 0x360]
               	xor	rdi, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x278], rdx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x370], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x360], rdi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x368], rsi
               	mov	rdx, qword ptr [rsp + 0x270]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x350]
               	mov	r8, qword ptr [rsp + 0x348]
               	xor	rsi, r8
               	mov	rcx, qword ptr [rsp + 0x358]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x270], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x348], r8
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x350], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x358], rcx
               	mov	rdx, qword ptr [rsp + 0x60]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x248]
               	mov	r9, qword ptr [rsp + 0x238]
               	xor	rcx, r9
               	mov	r8, qword ptr [rsp + 0x240]
               	xor	r8, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x60], rdx
               	xor	r9, r8
               	mov	qword ptr [rsp + 0x238], r9
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x248], rcx
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x240], r8
               	mov	rdx, qword ptr [rsp + 0x58]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x230]
               	mov	r10, qword ptr [rsp + 0x220]
               	xor	rcx, r10
               	mov	r9, qword ptr [rsp + 0x228]
               	xor	r9, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x58], rdx
               	xor	r10, r9
               	mov	qword ptr [rsp + 0x220], r10
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x230], rcx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x228], r9
               	mov	rdi, qword ptr [rsp + 0xb8]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	r10, qword ptr [rsp + 0x210]
               	mov	r11, qword ptr [rsp + 0x208]
               	xor	r10, r11
               	mov	rcx, qword ptr [rsp + 0x218]
               	xor	rcx, rdi
               	xor	rdi, r10
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x208], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x218], rcx
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x210], r10
               	mov	r8, qword ptr [rsp + 0xb0]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x200]
               	mov	r11, qword ptr [rsp + 0x1f0]
               	mov	qword ptr [rsp + 0x3a0], r14
               	mov	r14, r11
               	xor	rcx, r11
               	mov	r11, qword ptr [rsp + 0x1f8]
               	xor	r11, r8
               	xor	r8, rcx
               	xor	r14, r11
               	mov	qword ptr [rsp + 0x1f0], r14
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x200], rcx
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x1f8], r11
               	mov	rdx, qword ptr [rsp + 0x50]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1e0]
               	xor	r11, qword ptr [rsp + 0x178]
               	mov	rcx, qword ptr [rsp + 0x1e8]
               	xor	rcx, rdx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x50], rdx
               	xor	qword ptr [rsp + 0x178], rcx
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1e0], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1e8], rcx
               	mov	rdx, qword ptr [rsp + 0x48]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1d0]
               	mov	rcx, qword ptr [rsp + 0x1c8]
               	mov	qword ptr [rsp + 0x20], r12
               	mov	r12, rcx
               	xor	r11, rcx
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	xor	rcx, rdx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x48], rdx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x1c8], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1d0], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1d8], rcx
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1b8]
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	mov	qword ptr [rsp + 0x378], r13
               	mov	r13, rcx
               	xor	r11, rcx
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	xor	rcx, rdx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x40], rdx
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x1b0], r13
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1c0], rcx
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1b8], r11
               	mov	rdx, qword ptr [rsp + 0x38]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1a0]
               	mov	rbp, qword ptr [rsp + 0x198]
               	xor	r11, rbp
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	xor	rcx, rdx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x38], rdx
               	xor	rbp, rcx
               	mov	qword ptr [rsp + 0x198], rbp
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1a0], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1a8], rcx
               	mov	rbp, qword ptr [rsp + 0x18]
               	mov	rdx, rbp
               	shl	rdx, 0x11
               	mov	r11, qword ptr [rsp + 0x188]
               	mov	rax, qword ptr [rsp + 0x180]
               	xor	r11, rax
               	mov	rcx, qword ptr [rsp + 0x190]
               	xor	rcx, rbp
               	xor	rbp, r11
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x180], rax
               	xor	r11, rdx
               	mov	qword ptr [rsp + 0x188], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x190], rcx
               	mov	r13, qword ptr [rsp + 0xa8]
               	mov	rsi, r13
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x168]
               	mov	rax, qword ptr [rsp + 0x160]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x170]
               	xor	rcx, r13
               	xor	r13, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x160], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x168], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x170], rcx
               	mov	r12, qword ptr [rsp + 0xa0]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x150]
               	xor	rdx, qword ptr [rsp + 0x148]
               	mov	rcx, qword ptr [rsp + 0x158]
               	xor	rcx, r12
               	xor	r12, rdx
               	xor	qword ptr [rsp + 0x148], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x158], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x150], rdx
               	mov	qword ptr [rsp + 0x3c0], r15
               	mov	r15, qword ptr [rsp + 0x98]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x138]
               	mov	rsi, qword ptr [rsp + 0x130]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x140]
               	xor	rcx, r15
               	xor	r15, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x130], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x138], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x140], rcx
               	mov	r14, qword ptr [rsp + 0x90]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x120]
               	mov	rsi, qword ptr [rsp + 0x118]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x128]
               	xor	rcx, r14
               	xor	r14, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x118], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x120], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x128], rcx
               	mov	qword ptr [rsp + 0x380], rbx
               	mov	rbx, qword ptr [rsp + 0x88]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x108]
               	xor	rdx, qword ptr [rsp + 0x100]
               	mov	rcx, qword ptr [rsp + 0x110]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x108], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x110], rcx
               	mov	r11, qword ptr [rsp + 0x80]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xf0]
               	xor	rdx, qword ptr [rsp + 0xe8]
               	mov	rcx, qword ptr [rsp + 0xf8]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf8], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xf0], rdx
               	mov	r10, qword ptr [rsp + 0x78]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xd8]
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xe0]
               	xor	rcx, r10
               	xor	r10, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xd0], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xd8], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xe0], rcx
               	mov	r9, qword ptr [rsp + 0x70]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc0]
               	xor	rdx, qword ptr [rsp + 0x3c0]
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	rcx, r9
               	xor	r9, rdx
               	xor	qword ptr [rsp + 0x3c0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xc0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xc8], rcx
               	mov	rax, qword ptr [rsp + 0x20]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x378]
               	xor	qword ptr [rsp + 0x3a0], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	xor	qword ptr [rsp + 0x380], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	xor	rcx, qword ptr [rsp + 0x3a0]
               	mov	qword ptr [rsp + 0x20], rcx
               	xor	qword ptr [rsp + 0x3a0], rax
               	mov	rax, qword ptr [rsp + 0x278]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x60]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rsi, qword ptr [rsp + 0x58]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0xb8], rdi
               	lea	rdi, [rdi + 4*rdi]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x18], rdi
               	mov	qword ptr [rsp + 0xb0], r8
               	lea	rdi, [r8 + 4*r8]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x290], rax
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	rcx, qword ptr [rsp + 0x50]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a0], rdx
               	mov	rdx, qword ptr [rsp + 0x48]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2a8], rsi
               	mov	rsi, qword ptr [rsp + 0x40]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	qword ptr [rsp + 0x2b0], r8
               	mov	r8, qword ptr [rsp + 0x38]
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	r8, [r8 + 8*r8]
               	mov	qword ptr [rsp + 0x2b8], rdi
               	mov	qword ptr [rsp + 0x18], rbp
               	lea	rdi, [4*rbp]
               	add	rdi, rbp
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2c0], rcx
               	mov	qword ptr [rsp + 0xa8], r13
               	lea	rcx, [4*r13]
               	add	rcx, r13
               	mov	r13, qword ptr [rsp + 0x378]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2c8], rdx
               	mov	qword ptr [rsp + 0xa0], r12
               	lea	rdx, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x20]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2d0], rsi
               	mov	qword ptr [rsp + 0x98], r15
               	lea	rsi, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0x3c0]
               	rol	rsi, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	rbp, [rsi + 8*rsi]
               	mov	rsi, rax
               	mov	rax, r8
               	mov	qword ptr [rsp + 0x250], r8
               	mov	qword ptr [rsp + 0x2d8], r8
               	mov	rax, rdi
               	mov	qword ptr [rsp + 0x260], rdi
               	mov	qword ptr [rsp + 0x2e0], rdi
               	mov	qword ptr [rsp + 0x2e8], rcx
               	mov	qword ptr [rsp + 0x90], r14
               	lea	rcx, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x3a0]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2f0], rdx
               	mov	qword ptr [rsp + 0x88], rbx
               	lea	rdx, [rbx + 4*rbx]
               	mov	rbx, qword ptr [rsp + 0x380]
               	rol	rdx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	lea	rdx, [rdx + 8*rdx]
               	mov	rax, rbp
               	mov	qword ptr [rsp + 0x280], rbp
               	mov	qword ptr [rsp + 0x2f8], rbp
               	mov	qword ptr [rsp + 0x300], rcx
               	mov	qword ptr [rsp + 0x80], r11
               	lea	rcx, [r11 + 4*r11]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x308], rdx
               	mov	qword ptr [rsp + 0x78], r10
               	lea	rdx, [r10 + 4*r10]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x310], rcx
               	mov	qword ptr [rsp + 0x70], r9
               	lea	rcx, [r9 + 4*r9]
               	rol	rcx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	lea	rbp, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x318], rdx
               	lea	rcx, [r12 + 4*r12]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x320], rbp
               	mov	qword ptr [rsp + 0x328], rcx
               	xor	r13, rbx
               	rol	rbx, 0x2d
               	jmp	 <L244>
<L234>:
               	mov	r14, qword ptr [rsp + 0x8]
               	lea	rax, [8*r14]
               	test	r14d, r14d
               	je	 <L245>
               	mov	qword ptr [rsp + 0x60], rax
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x2f0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x290], ymm0
               	mov	rbp, qword ptr [rsp + 0x10]
               	jmp	 <L246>
               	nop	dword ptr [rax]
<L247>:
               	vmovss	xmm0, dword ptr [rsp + 0x294]
               	vmovss	dword ptr [rsp + 0x298], xmm0
               	mov	r15d, 0x1
<L255>:
               	mov	eax, r15d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x290]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	rbp, r13
<L246>:
               	mov	ebx, r14d
               	neg	ebx
               	and	ebx, r14d
               	lea	r13, [rbp + 8*rbx]
               	je	 <L247>
               	mov	qword ptr [rsp + 0x8], r14
               	mov	r14d, 0x1
               	xor	ecx, ecx
               	mov	r12d, 0x1
               	jmp	 <L248>
               	nop	dword ptr [rax]
<L250>:
               	mov	r12d, r15d
               	movsxd	rax, r15d
               	vmovss	dword ptr [rsp + 4*rax + 0x290], xmm0
               	add	rbp, 0x8
               	mov	ecx, 0xfffffffe
               	sub	ecx, r14d
               	lea	edx, [r14 + 0x1]
               	bsr	esi, edx
               	xor	esi, 0x1f
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r14d, edx
               	cmp	rbp, r13
               	je	 <L249>
<L248>:
               	mov	r15d, ecx
               	mov	rdi, qword ptr [rbp]
               	mov	rax, qword ptr [rdi]
               	vzeroupper
               	call	qword ptr [rax + 0x18]
               	mov	ecx, r15d
               	sub	ecx, r12d
               	jl	 <L250>
               	movsxd	rax, r12d
               	cmp	ecx, 0x1f
               	jb	 <L251>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vpblendd	xmm0, xmm0, xmmword ptr , 0xe <memset+0x2500> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0x2f0]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	dword ptr [rax]
<L252>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
               	jne	 <L252>
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
               	je	 <L250>
               	add	rax, rdx
<L251>:
               	mov	ecx, r15d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x290
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L253>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L253>
               	jmp	 <L250>
               	nop	word ptr cs:[rax + rax]
<L249>:
               	mov	r14, qword ptr [rsp + 0x8]
               	sub	r14d, ebx
               	je	 <L254>
               	vmovss	dword ptr [rsp + 4*rax + 0x294], xmm0
               	mov	rbp, r13
               	test	r15d, r15d
               	jns	 <L255>
               	jmp	 <L246>
<L254>:
               	mov	r12, qword ptr [rsp + 0x288]
               	mov	rax, qword ptr [rsp + 0x60]
               	test	rax, rax
               	mov	r14, qword ptr [rsp + 0x338]
               	mov	r15, qword ptr [rsp + 0x340]
               	jne	 <L256>
               	jmp	 <L257>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r14, qword ptr [rsp + 0x338]
               	mov	r15, rcx
<L257>:
               	mov	rdi, qword ptr [rsp + 0x10]
               	test	rdi, rdi
               	je	 <L258>
               	vmovdqa	xmmword ptr [rsp + 0x60], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x60]
<L258>:
               	cmp	r14d, 0x2a
               	jne	 <L259>
               	cmp	r15d, 0x186a0
               	jne	 <L259>
               	vucomiss	xmm0, dword ptr  <memset+0x2554>
               	jne	 <L260>
<L259>:
               	xor	eax, eax
               	add	rsp, 0x408
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
               	mov	r12, qword ptr [rsp + 0x288]
               	test	rax, rax
               	mov	r14, qword ptr [rsp + 0x338]
               	mov	r15, qword ptr [rsp + 0x340]
               	je	 <L257>
<L256>:
               	mov	rbx, qword ptr [rsp + 0x10]
               	vmovdqa	xmmword ptr [rsp + 0x60], xmm0
               	jmp	 <L261>
               	nop	word ptr [rax + rax]
<L262>:
               	mov	qword ptr [rbx], 0x0
               	add	rbx, 0x8
               	add	r12, -0x8
               	je	 <L257>
<L261>:
               	mov	rdi, qword ptr [rbx]
               	test	rdi, rdi
               	je	 <L262>
               	mov	rax, qword ptr [rdi]
               	vzeroupper
               	call	qword ptr [rax + 0x28]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x60]
               	jmp	 <L262>
<L260>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x60], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x60]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0x9ec8>
               	mov	rdi, rax
               	xor	edx, edx
               	call	 <__cxa_throw@plt>
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
               	vmovss	xmm0, dword ptr  <memset+0x2558>
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
               	vmovss	xmm0, dword ptr  <memset+0x2540>
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
               	vmovss	xmm0, dword ptr  <memset+0x2548>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::PyramidicBody@Evaluation.Virtual.PyramidicBody<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <memset+0x254c>
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
               	vmovss	xmm0, dword ptr  <memset+0x2544>
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
               	vmovss	xmm0, dword ptr  <memset+0x2550>
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
               	mov	rax, qword ptr  <memset+0x9ea0>
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

<memset@plt>:
               	jmp	qword ptr  <_GLOBAL_OFFSET_TABLE_+0x60>
               	push	0x9
               	jmp	 <.plt>
