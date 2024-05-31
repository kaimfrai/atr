
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
               	call	qword ptr  <memset+0xa000>
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
               	mov	rax, qword ptr  <memset+0xa010>
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
               	mov	rax, qword ptr  <memset+0xa018>
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
               	cmp	qword ptr , 0x0 <memset+0xa020>
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

<initializer for module Evaluation.Dependency.CommonData>:
<initializer for module Evaluation.Virtual.IBody>:
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW5ArrayW7Bounded__in_chrg>
               	call	 <initializer for module Meta.Auto.Bit.Field>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Bit.Field>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW3BitW5Field__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3BitW5Field__in_chrg>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW6Square__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.RectangularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Virtual.Shape3D>
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

<initializer for module Evaluation.Virtual.Shape3D>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW7Shape3D__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW7Shape3D__in_chrg>
               	jmp	 <initializer for module Evaluation.Virtual.ExtendedShape>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.ExtendedShape>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW13ExtendedShape__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW13ExtendedShape__in_chrg>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW9CubicBody__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.ExtendedShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.Fraction>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Circle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW6Circle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW6Circle__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.CircularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Virtual.Shape3D>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW7Ellipse__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.CircularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Virtual.Shape3D>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Rectangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW9Rectangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW9Rectangle__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.RectangularShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Virtual.Shape3D>
               	int3
               	int3
               	int3

<initializer for module Evaluation.Virtual.Triangle>:
               	cmp	byte ptr , 0x0 <_ZGIW10EvaluationW7VirtualW8Triangle__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW8Triangle__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.Shape3D>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Virtual.TriangularShape>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW13PyramidicBody__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.ExtendedShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.Fraction>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW10EvaluationW7VirtualW11SphericBody__in_chrg>
               	call	 <initializer for module Evaluation.Virtual.ExtendedShape>
               	pop	rax
               	jmp	 <initializer for module Evaluation.Dependency.PiFraction>
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
               	call	 <initializer for module Evaluation.Virtual.ExtendedShape>
               	pop	rax
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
               	int3
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
               	call	 <initializer for module Evaluation.Virtual.ExtendedShape>
               	pop	rax
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
               	int3
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
               	call	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	call	 <initializer for module Evaluation.Dependency.DynamicArray>
               	call	 <initializer for module Evaluation.Dependency.PseudoRandomSequence>
               	call	 <initializer for module Meta.Auto.Simd.Cast>
               	call	 <initializer for module Meta.Auto.Simd.Float>
               	call	 <initializer for module Meta.Auto.Simd.UInt8>
               	call	 <initializer for module Meta.Math.Random>
               	call	 <initializer for module Evaluation.Dependency.TransformReduce>
               	call	 <initializer for module Evaluation.Dependency.VerifyLoopSum>
               	call	 <initializer for module Evaluation.Virtual.Cube>
               	call	 <initializer for module Evaluation.Virtual.Square>
               	call	 <initializer for module Evaluation.Virtual.CubicBody>
               	call	 <initializer for module Evaluation.Virtual.Circle>
               	call	 <initializer for module Evaluation.Virtual.Ellipse>
               	call	 <initializer for module Evaluation.Virtual.Rectangle>
               	call	 <initializer for module Evaluation.Virtual.Triangle>
               	call	 <initializer for module Evaluation.Virtual.Cuboid>
               	call	 <initializer for module Evaluation.Virtual.Pyramid>
               	call	 <initializer for module Evaluation.Virtual.PyramidicBody>
               	call	 <initializer for module Evaluation.Virtual.Sphere>
               	call	 <initializer for module Evaluation.Virtual.SphericBody>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x3b8
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
               	mov	qword ptr [rsp + 0x338], rdx
               	movsxd	rdi, edx
               	shl	rdi, 0x3
               	mov	rsi, qword ptr  <memset+0xa028>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	mov	qword ptr [rsp + 0x268], rax
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
               	mov	qword ptr [rsp + 0x358], rsi
               	xor	r12d, r12d
               	mov	qword ptr [rsp + 0x360], r10
               	mov	rdi, r10
               	xor	r13d, r13d
               	mov	qword ptr [rsp + 0x278], r8
               	mov	qword ptr [rsp + 0x368], r9
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
               	mov	qword ptr [rsp + 0x228], rsi
               	mov	rsi, r15
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x230], rdi
               	mov	rdi, r12
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x40], r8
               	mov	r8, r13
               	mov	r9, rbx
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x220], r11
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
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x228], rsi
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
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x228], rsi
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
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x228], rsi
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
               	xor	qword ptr [rsp + 0x220], r9
               	xor	qword ptr [rsp + 0x40], r8
               	xor	qword ptr [rsp + 0x230], rdi
               	xor	qword ptr [rsp + 0x228], rsi
               	jmp	 <L27>
<L26>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x210], rsi
               	mov	rsi, qword ptr [rsp + 0x228]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x218], rdi
               	mov	rdi, qword ptr [rsp + 0x230]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x98], r8
               	mov	r8, qword ptr [rsp + 0x40]
               	mov	r9, qword ptr [rsp + 0x220]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x208], r11
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	qword ptr [rsp + 0x210], rsi
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L33>
<L32>:
               	xor	r10d, r10d
               	jmp	 <L34>
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L36>
<L35>:
               	xor	r10d, r10d
               	jmp	 <L37>
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
               	xor	qword ptr [rsp + 0x208], r9
               	xor	qword ptr [rsp + 0x98], r8
               	xor	qword ptr [rsp + 0x218], rdi
               	xor	qword ptr [rsp + 0x210], rsi
               	jmp	 <L39>
<L38>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x200], rsi
               	mov	rsi, qword ptr [rsp + 0x210]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1f8], rdi
               	mov	rdi, qword ptr [rsp + 0x218]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x90], r8
               	mov	r8, qword ptr [rsp + 0x98]
               	mov	r9, qword ptr [rsp + 0x208]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1f0], r11
               	jmp	 <L40>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
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
               	xor	qword ptr [rsp + 0x1f0], r9
               	xor	qword ptr [rsp + 0x90], r8
               	xor	qword ptr [rsp + 0x1f8], rdi
               	xor	qword ptr [rsp + 0x200], rsi
               	jmp	 <L51>
<L50>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1e0], rsi
               	mov	rsi, qword ptr [rsp + 0x200]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1e8], rdi
               	mov	rdi, qword ptr [rsp + 0x1f8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x88], r8
               	mov	r8, qword ptr [rsp + 0x90]
               	mov	r9, qword ptr [rsp + 0x1f0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1d8], r11
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
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
               	xor	qword ptr [rsp + 0x1d8], r9
               	xor	qword ptr [rsp + 0x88], r8
               	xor	qword ptr [rsp + 0x1e8], rdi
               	xor	qword ptr [rsp + 0x1e0], rsi
               	jmp	 <L63>
<L62>:
               	mov	qword ptr [rsp + 0x330], r14
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1d0], rsi
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1c8], rdi
               	mov	rdi, qword ptr [rsp + 0x1e8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x28], r8
               	mov	r8, qword ptr [rsp + 0x88]
               	mov	r9, qword ptr [rsp + 0x1d8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x160], r11
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
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
               	xor	qword ptr [rsp + 0x160], r9
               	xor	qword ptr [rsp + 0x28], r8
               	xor	qword ptr [rsp + 0x1c8], rdi
               	xor	qword ptr [rsp + 0x1d0], rsi
               	jmp	 <L75>
<L74>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1c0], rsi
               	mov	rsi, qword ptr [rsp + 0x1d0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1b8], rdi
               	mov	rdi, qword ptr [rsp + 0x1c8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x20], r8
               	mov	r8, qword ptr [rsp + 0x28]
               	mov	r9, qword ptr [rsp + 0x160]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x1b0], r11
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
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
               	xor	qword ptr [rsp + 0x1b0], r9
               	xor	qword ptr [rsp + 0x20], r8
               	xor	qword ptr [rsp + 0x1b8], rdi
               	xor	qword ptr [rsp + 0x1c0], rsi
               	jmp	 <L87>
<L86>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x1a8], rsi
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x1a0], rdi
               	mov	rdi, qword ptr [rsp + 0x1b8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x18], r8
               	mov	r8, qword ptr [rsp + 0x20]
               	mov	r9, qword ptr [rsp + 0x1b0]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x198], r11
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
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
               	xor	qword ptr [rsp + 0x198], r9
               	xor	qword ptr [rsp + 0x18], r8
               	xor	qword ptr [rsp + 0x1a0], rdi
               	xor	qword ptr [rsp + 0x1a8], rsi
               	jmp	 <L99>
<L98>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x190], rsi
               	mov	rsi, qword ptr [rsp + 0x1a8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x188], rdi
               	mov	rdi, qword ptr [rsp + 0x1a0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x10], r8
               	mov	r8, qword ptr [rsp + 0x18]
               	mov	r9, qword ptr [rsp + 0x198]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x180], r11
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
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
               	xor	qword ptr [rsp + 0x180], r9
               	xor	qword ptr [rsp + 0x10], r8
               	xor	qword ptr [rsp + 0x188], rdi
               	xor	qword ptr [rsp + 0x190], rsi
               	jmp	 <L111>
<L110>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x178], rsi
               	mov	rsi, qword ptr [rsp + 0x190]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x170], rdi
               	mov	rdi, qword ptr [rsp + 0x188]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x8], r8
               	mov	r8, qword ptr [rsp + 0x10]
               	mov	r9, qword ptr [rsp + 0x180]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x168], r11
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
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
               	xor	qword ptr [rsp + 0x168], r9
               	xor	qword ptr [rsp + 0x8], r8
               	xor	qword ptr [rsp + 0x170], rdi
               	xor	qword ptr [rsp + 0x178], rsi
               	jmp	 <L123>
<L122>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x158], rsi
               	mov	rsi, qword ptr [rsp + 0x178]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x150], rdi
               	mov	rdi, qword ptr [rsp + 0x170]
               	xor	r8d, r8d
               	mov	qword ptr [rsp], r8
               	mov	r8, qword ptr [rsp + 0x8]
               	mov	r9, qword ptr [rsp + 0x168]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x148], r11
               	jmp	 <L124>
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
               	jmp	 <L126>
<L125>:
               	xor	r10d, r10d
               	jmp	 <L127>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
               	jmp	 <L129>
<L128>:
               	xor	r10d, r10d
               	jmp	 <L130>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
               	jmp	 <L132>
<L131>:
               	xor	r10d, r10d
               	jmp	 <L133>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x148], r9
               	xor	qword ptr [rsp], r8
               	xor	qword ptr [rsp + 0x150], rdi
               	xor	qword ptr [rsp + 0x158], rsi
               	jmp	 <L135>
<L134>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x140], rsi
               	mov	rsi, qword ptr [rsp + 0x158]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x138], rdi
               	mov	rdi, qword ptr [rsp + 0x150]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x80], r8
               	mov	r8, qword ptr [rsp]
               	mov	r9, qword ptr [rsp + 0x148]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x130], r11
               	jmp	 <L136>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
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
               	xor	qword ptr [rsp + 0x130], r9
               	xor	qword ptr [rsp + 0x80], r8
               	xor	qword ptr [rsp + 0x138], rdi
               	xor	qword ptr [rsp + 0x140], rsi
               	jmp	 <L147>
<L146>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x128], rsi
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x120], rdi
               	mov	rdi, qword ptr [rsp + 0x138]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x78], r8
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	r9, qword ptr [rsp + 0x130]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x118], r11
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L153>
<L152>:
               	xor	r10d, r10d
               	jmp	 <L154>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L156>
<L155>:
               	xor	r10d, r10d
               	jmp	 <L157>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x118], r9
               	xor	qword ptr [rsp + 0x78], r8
               	xor	qword ptr [rsp + 0x120], rdi
               	xor	qword ptr [rsp + 0x128], rsi
               	jmp	 <L159>
<L158>:
               	mov	r14, r12
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0x110], rsi
               	mov	rsi, qword ptr [rsp + 0x128]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0x108], rdi
               	mov	rdi, qword ptr [rsp + 0x120]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x70], r8
               	mov	r8, qword ptr [rsp + 0x78]
               	mov	r9, qword ptr [rsp + 0x118]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0x100], r11
               	jmp	 <L160>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L165>
<L164>:
               	xor	r10d, r10d
               	jmp	 <L166>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L168>
<L167>:
               	xor	r10d, r10d
               	jmp	 <L169>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0x100], r9
               	xor	qword ptr [rsp + 0x70], r8
               	xor	qword ptr [rsp + 0x108], rdi
               	xor	qword ptr [rsp + 0x110], rsi
               	jmp	 <L171>
<L170>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xf8], rsi
               	mov	rsi, qword ptr [rsp + 0x110]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xf0], rdi
               	mov	rdi, qword ptr [rsp + 0x108]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x68], r8
               	mov	r8, qword ptr [rsp + 0x70]
               	mov	r9, qword ptr [rsp + 0x100]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xe8], r11
               	jmp	 <L172>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L177>
<L176>:
               	xor	r10d, r10d
               	jmp	 <L178>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L180>
<L179>:
               	xor	r10d, r10d
               	jmp	 <L181>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xe8], r9
               	xor	qword ptr [rsp + 0x68], r8
               	xor	qword ptr [rsp + 0xf0], rdi
               	xor	qword ptr [rsp + 0xf8], rsi
               	jmp	 <L183>
<L182>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xe0], rsi
               	mov	rsi, qword ptr [rsp + 0xf8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xd8], rdi
               	mov	rdi, qword ptr [rsp + 0xf0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x60], r8
               	mov	r8, qword ptr [rsp + 0x68]
               	mov	r9, qword ptr [rsp + 0xe8]
               	xor	r11d, r11d
               	mov	qword ptr [rsp + 0xd0], r11
               	jmp	 <L184>
               	nop	word ptr cs:[rax + rax]
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L189>
<L188>:
               	xor	r10d, r10d
               	jmp	 <L190>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L192>
<L191>:
               	xor	r10d, r10d
               	jmp	 <L193>
               	nop	dword ptr [rax]
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
               	xor	qword ptr [rsp + 0xd0], r9
               	xor	qword ptr [rsp + 0x60], r8
               	xor	qword ptr [rsp + 0xd8], rdi
               	xor	qword ptr [rsp + 0xe0], rsi
               	jmp	 <L195>
<L194>:
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xc8], rsi
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xc0], rdi
               	mov	rdi, qword ptr [rsp + 0xd8]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x58], r8
               	mov	r8, qword ptr [rsp + 0x60]
               	mov	r9, qword ptr [rsp + 0xd0]
               	xor	ebp, ebp
               	jmp	 <L196>
               	nop	dword ptr [rax + rax]
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
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L198>
<L197>:
               	xor	r10d, r10d
               	jmp	 <L199>
               	nop	word ptr cs:[rax + rax]
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
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L201>
<L200>:
               	xor	r10d, r10d
               	jmp	 <L202>
               	nop	dword ptr [rax + rax]
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
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L204>
<L203>:
               	xor	r10d, r10d
               	jmp	 <L205>
               	nop	dword ptr [rax + rax]
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
               	xor	rbp, r9
               	xor	qword ptr [rsp + 0x58], r8
               	xor	qword ptr [rsp + 0xc0], rdi
               	xor	qword ptr [rsp + 0xc8], rsi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x350], r15
               	xor	r10d, r10d
               	xor	esi, esi
               	mov	qword ptr [rsp + 0xb8], rsi
               	mov	rsi, qword ptr [rsp + 0xc8]
               	xor	edi, edi
               	mov	qword ptr [rsp + 0xb0], rdi
               	mov	rdi, qword ptr [rsp + 0xc0]
               	xor	r8d, r8d
               	mov	qword ptr [rsp + 0x50], r8
               	mov	r8, qword ptr [rsp + 0x58]
               	mov	r9, rbp
               	xor	r15d, r15d
               	jmp	 <L208>
               	nop	word ptr [rax + rax]
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
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
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
               	xor	qword ptr [rsp + 0x50], r8
               	xor	qword ptr [rsp + 0xb0], rdi
               	xor	qword ptr [rsp + 0xb8], rsi
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x340], rbx
               	mov	qword ptr [rsp + 0x270], r13
               	mov	qword ptr [rsp + 0x348], r14
               	xor	r10d, r10d
               	xor	ebx, ebx
               	mov	rsi, qword ptr [rsp + 0xb8]
               	xor	r14d, r14d
               	mov	rdi, qword ptr [rsp + 0xb0]
               	xor	r12d, r12d
               	mov	r8, qword ptr [rsp + 0x50]
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
               	lea	r8, [rax + 8*rax]
               	mov	qword ptr [rsp + 0x290], r8
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	rcx, qword ptr [rsp + 0x40]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x98]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2a0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	rcx, qword ptr [rsp + 0x90]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b0], rcx
               	mov	rcx, qword ptr [rsp + 0x88]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x20]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	mov	qword ptr [rsp + 0x2c0], rcx
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2c8], rcx
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d0], rcx
               	mov	rcx, qword ptr [rsp + 0x10]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	rdx, qword ptr [rsp + 0x8]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	rsi, qword ptr [rsp]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2e0], rdx
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2e8], rsi
               	mov	rsi, qword ptr [rsp + 0x80]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2f0], rsi
               	mov	rsi, qword ptr [rsp + 0x78]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x288], rsi
               	mov	qword ptr [rsp + 0x2f8], rsi
               	mov	rsi, qword ptr [rsp + 0x70]
               	lea	rsi, [rsi + 4*rsi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	rax, qword ptr [rsp + 0x68]
               	lea	rdi, [rax + 4*rax]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x300], rsi
               	lea	rsi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x308], rsi
               	mov	rax, qword ptr [rsp + 0x60]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x310], rsi
               	mov	rax, qword ptr [rsp + 0x58]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x318], rsi
               	mov	rax, qword ptr [rsp + 0x50]
               	lea	rsi, [rax + 4*rax]
               	rol	rsi, 0x7
               	lea	rax, [rsi + 8*rsi]
               	lea	rsi, [r12 + 4*r12]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x320], rax
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x328], rsi
               	mov	rsi, qword ptr [rsp + 0x338]
               	test	esi, esi
               	je	 <L232>
               	mov	qword ptr [rsp + 0x280], rax
               	mov	eax, esi
               	mov	qword ptr [rsp + 0x388], rax
               	mov	esi, 0x8
               	xor	eax, eax
               	mov	qword ptr [rsp + 0x238], rax
               	jmp	 <L233>
               	vmovss	dword ptr [rsp + 0xa0], xmm3
               	vmovss	dword ptr [rsp + 0x30], xmm2
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovss	xmm0, dword ptr [rsp + 0x30]
               	vmovss	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Cuboid@Evaluation.Virtual.Cuboid+0x10>
<L238>:
               	mov	qword ptr [rax], rcx
               	vmovss	xmm0, dword ptr [rsp + 0xa0]
               	vmovss	dword ptr [rax + 0x38], xmm0
<L236>:
               	mov	rcx, qword ptr [rsp + 0x268]
               	mov	rdx, qword ptr [rsp + 0x238]
               	mov	qword ptr [rcx + 8*rdx], rax
               	inc	rdx
               	mov	qword ptr [rsp + 0x238], rdx
               	test	dl, 0x7
               	je	 <L234>
               	vpermq	ymm0, ymmword ptr [rsp + 0x390], 0x93 # ymm0 = mem[3,0,1,2]
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
               	vmovq	r8, xmm1
               	vpextrq	rcx, xmm0, 0x1
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	rdx, xmm0
               	vpextrq	qword ptr [rsp + 0x288], xmm2, 0x1
               	vextracti128	xmm0, ymm3, 0x1
               	vmovq	qword ptr [rsp + 0x280], xmm0
<L237>:
               	mov	rax, qword ptr [rsp + 0x380]
               	lea	rsi, [rax + 0x8]
               	mov	rdi, qword ptr [rsp + 0x388]
               	cmp	qword ptr [rsp + 0x238], rdi
               	je	 <L235>
<L233>:
               	mov	qword ptr [rsp + 0x380], rsi
               	vmovups	ymm0, ymmword ptr [rsp + 0x2a8]
               	vmovups	ymm1, ymmword ptr [rsp + 0x2b8]
               	vperm2f128	ymm2, ymm1, ymmword ptr [rsp + 0x298], 0x2 # ymm2 = mem[0,1],ymm1[0,1]
               	vinsertf128	ymm0, ymm0, xmmword ptr [rsp + 0x2c8], 0x1
               	vshufps	ymm0, ymm2, ymm0, 0x88  # ymm0 = ymm2[0,2],ymm0[0,2],ymm2[4,6],ymm0[4,6]
               	vandps	ymm0, ymm0, ymmword ptr  <memset+0x2520>
               	movzx	ecx, cl
               	vcvtsi2ss	xmm2, xmm5, ecx
               	movzx	ecx, dl
               	vcvtsi2ss	xmm3, xmm5, ecx
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rsp + 0x240], ymm0
               	movzx	ecx, r8b
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	vblendps	ymm0, ymm1, ymmword ptr [rsp + 0x298], 0xc0 # ymm0 = ymm1[0,1,2,3,4,5],mem[6,7]
               	vmovups	ymmword ptr [rsp + 0x390], ymm0
               	sub	r8b, cl
               	movzx	eax, r8b
               	lea	rcx,  <memset+0x2580>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax], rcx
               	jmp	 <L236>
               	nop	word ptr cs:[rax + rax]
<L234>:
               	mov	rdx, qword ptr [rsp + 0x278]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x368]
               	mov	rsi, qword ptr [rsp + 0x360]
               	xor	rsi, rcx
               	mov	rdi, qword ptr [rsp + 0x358]
               	xor	rdi, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x278], rdx
               	xor	rcx, rdi
               	mov	qword ptr [rsp + 0x368], rcx
               	rol	rdi, 0x2d
               	mov	qword ptr [rsp + 0x358], rdi
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x360], rsi
               	mov	rdx, qword ptr [rsp + 0x270]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rsi, qword ptr [rsp + 0x348]
               	mov	r8, qword ptr [rsp + 0x340]
               	xor	rsi, r8
               	mov	rcx, qword ptr [rsp + 0x350]
               	xor	rcx, rdx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x270], rdx
               	xor	r8, rcx
               	mov	qword ptr [rsp + 0x340], r8
               	xor	rsi, rax
               	mov	qword ptr [rsp + 0x348], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x350], rcx
               	mov	rdx, qword ptr [rsp + 0x40]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x230]
               	mov	r9, qword ptr [rsp + 0x220]
               	xor	rcx, r9
               	mov	r8, qword ptr [rsp + 0x228]
               	xor	r8, rdx
               	xor	rdx, rcx
               	mov	qword ptr [rsp + 0x40], rdx
               	xor	r9, r8
               	mov	qword ptr [rsp + 0x220], r9
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x230], rcx
               	rol	r8, 0x2d
               	mov	qword ptr [rsp + 0x228], r8
               	mov	rdi, qword ptr [rsp + 0x98]
               	mov	rax, rdi
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x218]
               	mov	r10, qword ptr [rsp + 0x208]
               	xor	rcx, r10
               	mov	r9, qword ptr [rsp + 0x210]
               	xor	r9, rdi
               	xor	rdi, rcx
               	xor	r10, r9
               	mov	qword ptr [rsp + 0x208], r10
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x218], rcx
               	rol	r9, 0x2d
               	mov	qword ptr [rsp + 0x210], r9
               	mov	r9, qword ptr [rsp + 0x90]
               	mov	rax, r9
               	shl	rax, 0x11
               	mov	r10, qword ptr [rsp + 0x1f8]
               	mov	r11, qword ptr [rsp + 0x1f0]
               	xor	r10, r11
               	mov	rcx, qword ptr [rsp + 0x200]
               	xor	rcx, r9
               	xor	r9, r10
               	xor	r11, rcx
               	mov	qword ptr [rsp + 0x1f0], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x200], rcx
               	xor	r10, rax
               	mov	qword ptr [rsp + 0x1f8], r10
               	mov	r10, qword ptr [rsp + 0x88]
               	mov	rax, r10
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x1e8]
               	mov	r11, qword ptr [rsp + 0x1d8]
               	mov	qword ptr [rsp + 0x390], r14
               	mov	r14, r11
               	xor	rcx, r11
               	mov	r11, qword ptr [rsp + 0x1e0]
               	xor	r11, r10
               	xor	r10, rcx
               	xor	r14, r11
               	mov	qword ptr [rsp + 0x1d8], r14
               	xor	rcx, rax
               	mov	qword ptr [rsp + 0x1e8], rcx
               	rol	r11, 0x2d
               	mov	qword ptr [rsp + 0x1e0], r11
               	mov	rdx, qword ptr [rsp + 0x28]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1c8]
               	xor	r11, qword ptr [rsp + 0x160]
               	mov	rcx, qword ptr [rsp + 0x1d0]
               	xor	rcx, rdx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x28], rdx
               	xor	qword ptr [rsp + 0x160], rcx
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1c8], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1d0], rcx
               	mov	rdx, qword ptr [rsp + 0x20]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1b8]
               	mov	rcx, qword ptr [rsp + 0x1b0]
               	mov	qword ptr [rsp + 0x30], rbp
               	mov	qword ptr [rsp + 0x240], r12
               	mov	r12, rcx
               	xor	r11, rcx
               	mov	rcx, qword ptr [rsp + 0x1c0]
               	xor	rcx, rdx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x20], rdx
               	xor	r12, rcx
               	mov	qword ptr [rsp + 0x1b0], r12
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1b8], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1c0], rcx
               	mov	rdx, qword ptr [rsp + 0x18]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x1a0]
               	mov	rcx, qword ptr [rsp + 0x198]
               	mov	qword ptr [rsp + 0x370], r13
               	mov	r13, rcx
               	xor	r11, rcx
               	mov	rcx, qword ptr [rsp + 0x1a8]
               	xor	rcx, rdx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x18], rdx
               	xor	r13, rcx
               	mov	qword ptr [rsp + 0x198], r13
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x1a8], rcx
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x1a0], r11
               	mov	rdx, qword ptr [rsp + 0x10]
               	mov	rax, rdx
               	shl	rax, 0x11
               	mov	r11, qword ptr [rsp + 0x188]
               	mov	rbp, qword ptr [rsp + 0x180]
               	xor	r11, rbp
               	mov	rcx, qword ptr [rsp + 0x190]
               	xor	rcx, rdx
               	xor	rdx, r11
               	mov	qword ptr [rsp + 0x10], rdx
               	xor	rbp, rcx
               	mov	qword ptr [rsp + 0x180], rbp
               	xor	r11, rax
               	mov	qword ptr [rsp + 0x188], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x190], rcx
               	mov	rsi, qword ptr [rsp + 0x8]
               	mov	rdx, rsi
               	shl	rdx, 0x11
               	mov	r11, qword ptr [rsp + 0x170]
               	mov	rax, qword ptr [rsp + 0x168]
               	xor	r11, rax
               	mov	rcx, qword ptr [rsp + 0x178]
               	xor	rcx, rsi
               	xor	rsi, r11
               	mov	qword ptr [rsp + 0x8], rsi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x168], rax
               	xor	r11, rdx
               	mov	qword ptr [rsp + 0x170], r11
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x178], rcx
               	mov	rbp, qword ptr [rsp]
               	mov	rsi, rbp
               	shl	rsi, 0x11
               	mov	rdx, qword ptr [rsp + 0x150]
               	mov	rax, qword ptr [rsp + 0x148]
               	xor	rdx, rax
               	mov	rcx, qword ptr [rsp + 0x158]
               	xor	rcx, rbp
               	xor	rbp, rdx
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x148], rax
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x150], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x158], rcx
               	mov	r8, qword ptr [rsp + 0x80]
               	mov	rax, r8
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x138]
               	xor	rdx, qword ptr [rsp + 0x130]
               	mov	rcx, qword ptr [rsp + 0x140]
               	xor	rcx, r8
               	xor	r8, rdx
               	xor	qword ptr [rsp + 0x130], rcx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x140], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x138], rdx
               	mov	r13, qword ptr [rsp + 0x78]
               	mov	rax, r13
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x120]
               	mov	rsi, qword ptr [rsp + 0x118]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0x128]
               	xor	rcx, r13
               	xor	r13, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0x118], rsi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x120], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x128], rcx
               	mov	r12, qword ptr [rsp + 0x70]
               	mov	rax, r12
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0x108]
               	xor	rdx, qword ptr [rsp + 0x100]
               	mov	rcx, qword ptr [rsp + 0x110]
               	xor	rcx, r12
               	xor	r12, rdx
               	xor	qword ptr [rsp + 0x100], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x108], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0x110], rcx
               	mov	qword ptr [rsp + 0xa0], r15
               	mov	r15, qword ptr [rsp + 0x68]
               	mov	rax, r15
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xf0]
               	xor	rdx, qword ptr [rsp + 0xe8]
               	mov	rcx, qword ptr [rsp + 0xf8]
               	xor	rcx, r15
               	xor	r15, rdx
               	xor	qword ptr [rsp + 0xe8], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xf0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xf8], rcx
               	mov	r14, qword ptr [rsp + 0x60]
               	mov	rax, r14
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xd8]
               	mov	rsi, qword ptr [rsp + 0xd0]
               	xor	rdx, rsi
               	mov	rcx, qword ptr [rsp + 0xe0]
               	xor	rcx, r14
               	xor	r14, rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xd0], rsi
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xe0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xd8], rdx
               	mov	qword ptr [rsp + 0x378], rbx
               	mov	rbx, qword ptr [rsp + 0x58]
               	mov	rax, rbx
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xc0]
               	xor	rdx, qword ptr [rsp + 0x30]
               	mov	rcx, qword ptr [rsp + 0xc8]
               	xor	rcx, rbx
               	xor	rbx, rdx
               	xor	qword ptr [rsp + 0x30], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xc0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xc8], rcx
               	mov	r11, qword ptr [rsp + 0x50]
               	mov	rax, r11
               	shl	rax, 0x11
               	mov	rdx, qword ptr [rsp + 0xb0]
               	xor	rdx, qword ptr [rsp + 0xa0]
               	mov	rcx, qword ptr [rsp + 0xb8]
               	xor	rcx, r11
               	xor	r11, rdx
               	xor	qword ptr [rsp + 0xa0], rcx
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xb0], rdx
               	rol	rcx, 0x2d
               	mov	qword ptr [rsp + 0xb8], rcx
               	mov	rax, qword ptr [rsp + 0x240]
               	shl	rax, 0x11
               	mov	rcx, qword ptr [rsp + 0x370]
               	xor	qword ptr [rsp + 0x390], rcx
               	mov	rcx, qword ptr [rsp + 0x240]
               	xor	qword ptr [rsp + 0x378], rcx
               	mov	rcx, qword ptr [rsp + 0x240]
               	xor	rcx, qword ptr [rsp + 0x390]
               	mov	qword ptr [rsp + 0x240], rcx
               	xor	qword ptr [rsp + 0x390], rax
               	mov	rax, qword ptr [rsp + 0x278]
               	lea	rax, [rax + 4*rax]
               	rol	rax, 0x7
               	lea	rax, [rax + 8*rax]
               	mov	rcx, qword ptr [rsp + 0x270]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	rcx, [rcx + 8*rcx]
               	mov	rdx, qword ptr [rsp + 0x40]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp], rdx
               	mov	qword ptr [rsp + 0x98], rdi
               	lea	rsi, [rdi + 4*rdi]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x90], r9
               	lea	rdi, [r9 + 4*r9]
               	rol	rdi, 0x7
               	lea	rdx, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x88], r10
               	lea	rdi, [r10 + 4*r10]
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x290], rax
               	mov	qword ptr [rsp + 0x298], rcx
               	mov	rcx, qword ptr [rsp + 0x28]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r9, [rcx + 8*rcx]
               	mov	rcx, qword ptr [rsp]
               	mov	qword ptr [rsp + 0x2a0], rcx
               	mov	rcx, qword ptr [rsp + 0x20]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	lea	r10, [rcx + 8*rcx]
               	mov	qword ptr [rsp + 0x2a8], rsi
               	mov	rcx, qword ptr [rsp + 0x18]
               	lea	rcx, [rcx + 4*rcx]
               	rol	rcx, 0x7
               	mov	qword ptr [rsp + 0x2b0], rdx
               	mov	rdx, qword ptr [rsp + 0x10]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rsi, [rcx + 8*rcx]
               	lea	rcx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2b8], rdi
               	mov	rdx, qword ptr [rsp + 0x8]
               	lea	rdx, [rdx + 4*rdx]
               	rol	rdx, 0x7
               	lea	rdx, [rdx + 8*rdx]
               	mov	qword ptr [rsp + 0x2c0], r9
               	mov	qword ptr [rsp], rbp
               	lea	rdi, [4*rbp]
               	add	rdi, rbp
               	rol	rdi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x2c8], r10
               	mov	qword ptr [rsp + 0x80], r8
               	lea	r8, [r8 + 4*r8]
               	rol	r8, 0x7
               	mov	qword ptr [rsp + 0x2d0], rsi
               	mov	qword ptr [rsp + 0x78], r13
               	lea	rsi, [4*r13]
               	add	rsi, r13
               	mov	r13, qword ptr [rsp + 0x370]
               	mov	rbp, qword ptr [rsp + 0x30]
               	rol	rsi, 0x7
               	lea	r8, [r8 + 8*r8]
               	lea	r9, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x2d8], rcx
               	mov	qword ptr [rsp + 0x2e0], rdx
               	mov	qword ptr [rsp + 0x2e8], rdi
               	mov	qword ptr [rsp + 0x70], r12
               	lea	rsi, [r12 + 4*r12]
               	mov	r12, qword ptr [rsp + 0x240]
               	rol	rsi, 0x7
               	mov	qword ptr [rsp + 0x2f0], r8
               	mov	r8, rax
               	mov	qword ptr [rsp + 0x68], r15
               	lea	rdi, [r15 + 4*r15]
               	mov	r15, qword ptr [rsp + 0xa0]
               	rol	rdi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	lea	rdi, [rdi + 8*rdi]
               	mov	qword ptr [rsp + 0x288], r9
               	mov	qword ptr [rsp + 0x2f8], r9
               	mov	qword ptr [rsp + 0x300], rsi
               	mov	qword ptr [rsp + 0x60], r14
               	lea	rsi, [r14 + 4*r14]
               	mov	r14, qword ptr [rsp + 0x390]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x308], rdi
               	mov	qword ptr [rsp + 0x58], rbx
               	lea	rdi, [rbx + 4*rbx]
               	mov	rbx, qword ptr [rsp + 0x378]
               	rol	rdi, 0x7
               	mov	qword ptr [rsp + 0x310], rsi
               	mov	qword ptr [rsp + 0x50], r11
               	lea	rsi, [r11 + 4*r11]
               	rol	rsi, 0x7
               	lea	rdi, [rdi + 8*rdi]
               	lea	r9, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x318], rdi
               	lea	rsi, [r12 + 4*r12]
               	rol	rsi, 0x7
               	lea	rsi, [rsi + 8*rsi]
               	mov	qword ptr [rsp + 0x280], r9
               	mov	qword ptr [rsp + 0x320], r9
               	mov	qword ptr [rsp + 0x328], rsi
               	xor	r13, rbx
               	rol	rbx, 0x2d
               	jmp	 <L237>
               	vmovss	dword ptr [rsp + 0xa0], xmm3
               	vmovss	dword ptr [rsp + 0x30], xmm2
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovss	xmm0, dword ptr [rsp + 0x30]
               	vmovss	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Ellipsoid@Evaluation.Virtual.Ellipsoid+0x10>
               	jmp	 <L238>
               	vmovss	dword ptr [rsp + 0x30], xmm2
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovss	xmm0, dword ptr [rsp + 0x30]
               	vmovss	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax], rcx
               	jmp	 <L236>
               	vmovups	xmm0, xmmword ptr [rsp + 0x2e8]
               	vmovaps	xmmword ptr [rsp + 0xa0], xmm0
               	vmovups	xmm0, xmmword ptr [rsp + 0x300]
               	vshufps	xmm0, xmm0, xmmword ptr [rsp + 0x310], 0x88 # xmm0 = xmm0[0,2],mem[0,2]
               	vmovaps	xmmword ptr [rsp + 0x30], xmm0
               	mov	edi, 0x90
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0xa0]
               	vpshufb	xmm0, xmm0, xmmword ptr  <memset+0x2540>
               	vcvtdq2ps	xmm0, xmm0
               	movzx	ecx, byte ptr [rsp + 0x288]
               	vcvtsi2ss	xmm1, xmm5, ecx
               	vbroadcastss	ymm2, dword ptr  <memset+0x2560>
               	vandps	xmm2, xmm2, xmmword ptr [rsp + 0x30]
               	movzx	ecx, byte ptr [rsp + 0x280]
               	vcvtsi2ss	xmm3, xmm5, ecx
               	vcvtdq2ps	xmm2, xmm2
               	vmovdqu	ymm4, ymmword ptr [rsp + 0x240]
               	vmovdqu	ymmword ptr [rax + 0x10], ymm4
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rdx,  <vtable for Bodies3D::Head@Evaluation.Virtual.Head+0x10>
               	mov	qword ptr [rax], rdx
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	vmovss	dword ptr [rax + 0x48], xmm1
               	vpshufd	xmm4, xmm4, 0xff        # xmm4 = xmm4[3,3,3,3]
               	vmovd	dword ptr [rax + 0x4c], xmm4
               	vmovups	xmmword ptr [rax + 0x50], xmm2
               	mov	qword ptr [rax + 0x38], rcx
               	lea	rdx,  <vtable for Bodies3D::Sphere@Evaluation.Virtual.Sphere+0x10>
               	mov	qword ptr [rax + 0x30], rdx
               	vmovlps	qword ptr [rax + 0x70], xmm0
               	vmovss	dword ptr [rax + 0x78], xmm1
               	vmovd	dword ptr [rax + 0x7c], xmm4
               	vmovss	dword ptr [rax + 0x80], xmm3
               	vshufps	xmm0, xmm2, xmm2, 0xe9  # xmm0 = xmm2[1,2,2,3]
               	vmovlps	qword ptr [rax + 0x84], xmm0
               	vextractps	dword ptr [rax + 0x8c], xmm2, 0x3
               	mov	qword ptr [rax + 0x68], rcx
               	mov	qword ptr [rax + 0x60], rdx
               	jmp	 <L236>
               	vmovss	dword ptr [rsp + 0xa0], xmm3
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cylinder@Evaluation.Virtual.Cylinder+0x10>
               	jmp	 <L239>
               	vmovss	dword ptr [rsp + 0x30], xmm2
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovss	xmm0, dword ptr [rsp + 0x30]
               	vmovss	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	mov	qword ptr [rax], rcx
               	jmp	 <L236>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Square@Evaluation.Virtual.Square+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Square@Evaluation.Virtual.Square+0x10>
               	mov	qword ptr [rax], rcx
               	jmp	 <L236>
               	vmovss	dword ptr [rsp + 0xa0], xmm3
               	vmovss	dword ptr [rsp + 0x30], xmm2
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovss	xmm0, dword ptr [rsp + 0x30]
               	vmovss	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Pyramid@Evaluation.Virtual.Pyramid+0x10>
               	jmp	 <L238>
               	vmovss	dword ptr [rsp + 0x30], xmm2
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovss	xmm0, dword ptr [rsp + 0x30]
               	vmovss	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	mov	qword ptr [rax], rcx
               	jmp	 <L236>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Square@Evaluation.Virtual.Square+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cube@Evaluation.Virtual.Cube+0x10>
               	mov	qword ptr [rax], rcx
               	jmp	 <L236>
               	vmovss	dword ptr [rsp + 0xa0], xmm3
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cone@Evaluation.Virtual.Cone+0x10>
<L239>:
               	mov	qword ptr [rax], rcx
               	vmovss	xmm0, dword ptr [rsp + 0xa0]
               	vmovss	dword ptr [rax + 0x30], xmm0
               	jmp	 <L236>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x240]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Sphere@Evaluation.Virtual.Sphere+0x10>
               	mov	qword ptr [rax], rcx
               	jmp	 <L236>
<L235>:
               	mov	r14, qword ptr [rsp + 0x238]
               	lea	rcx, [8*r14]
               	test	r14d, r14d
               	je	 <L240>
               	mov	qword ptr [rsp + 0x40], rcx
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu	ymmword ptr [rsp + 0x2f0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x2d0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x2b0], ymm0
               	vmovdqu	ymmword ptr [rsp + 0x290], ymm0
               	mov	rbp, qword ptr [rsp + 0x268]
               	jmp	 <L241>
               	nop	word ptr cs:[rax + rax]
<L242>:
               	vmovss	xmm0, dword ptr [rsp + 0x294]
               	vmovss	dword ptr [rsp + 0x298], xmm0
               	mov	r15d, 0x1
<L250>:
               	mov	eax, r15d
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x290]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	rbp, r13
<L241>:
               	mov	ebx, r14d
               	neg	ebx
               	and	ebx, r14d
               	lea	r13, [rbp + 8*rbx]
               	je	 <L242>
               	mov	qword ptr [rsp + 0x238], r14
               	mov	r14d, 0x1
               	xor	ecx, ecx
               	mov	r12d, 0x1
               	jmp	 <L243>
               	nop
<L245>:
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
               	je	 <L244>
<L243>:
               	mov	r15d, ecx
               	mov	rdi, qword ptr [rbp]
               	mov	rax, qword ptr [rdi]
               	vzeroupper
               	call	qword ptr [rax + 0x18]
               	mov	ecx, r15d
               	sub	ecx, r12d
               	jl	 <L245>
               	movsxd	rax, r12d
               	cmp	ecx, 0x1f
               	jb	 <L246>
               	inc	rcx
               	mov	rdx, rcx
               	and	rdx, -0x20
               	vpblendd	xmm0, xmm0, xmmword ptr , 0xe <memset+0x2550> # xmm0 = xmm0[0],mem[1,2,3]
               	lea	rsi, [rsp + 0x2f0]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	dword ptr [rax]
<L247>:
               	vaddps	ymm0, ymm0, ymmword ptr [rsi + 4*rdi - 0x60]
               	vaddps	ymm1, ymm1, ymmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	ymm2, ymm2, ymmword ptr [rsi + 4*rdi - 0x20]
               	vaddps	ymm3, ymm3, ymmword ptr [rsi + 4*rdi]
               	add	rdi, 0x20
               	cmp	rdx, rdi
               	jne	 <L247>
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
               	je	 <L245>
               	add	rax, rdx
<L246>:
               	mov	ecx, r15d
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x290
               	xor	edx, edx
               	nop	word ptr cs:[rax + rax]
<L248>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L248>
               	jmp	 <L245>
               	nop	word ptr cs:[rax + rax]
<L244>:
               	mov	r14, qword ptr [rsp + 0x238]
               	sub	r14d, ebx
               	je	 <L249>
               	vmovss	dword ptr [rsp + 4*rax + 0x294], xmm0
               	mov	rbp, r13
               	test	r15d, r15d
               	jns	 <L250>
               	jmp	 <L241>
<L249>:
               	mov	rax, qword ptr [rsp + 0x380]
               	mov	rcx, qword ptr [rsp + 0x40]
               	test	rcx, rcx
               	mov	r14, qword ptr [rsp + 0x330]
               	mov	r15, qword ptr [rsp + 0x338]
               	jne	 <L251>
               	jmp	 <L252>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r14, qword ptr [rsp + 0x330]
               	mov	r15, rsi
<L252>:
               	mov	rdi, qword ptr [rsp + 0x268]
               	test	rdi, rdi
               	je	 <L253>
               	vmovdqa	xmmword ptr [rsp + 0x40], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x40]
<L253>:
               	cmp	r14d, 0x2a
               	jne	 <L254>
               	cmp	r15d, 0x186a0
               	jne	 <L254>
               	vucomiss	xmm0, dword ptr  <memset+0x2578>
               	jne	 <L255>
<L254>:
               	xor	eax, eax
               	add	rsp, 0x3b8
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L240>:
               	vpxor	xmm0, xmm0, xmm0
               	test	rcx, rcx
               	mov	r14, qword ptr [rsp + 0x330]
               	mov	r15, qword ptr [rsp + 0x338]
               	je	 <L252>
<L251>:
               	mov	rbx, qword ptr [rsp + 0x268]
               	vmovdqa	xmmword ptr [rsp + 0x40], xmm0
               	jmp	 <L256>
               	nop	dword ptr [rax + rax]
<L257>:
               	mov	qword ptr [rbx], 0x0
               	add	rbx, 0x8
               	add	rax, -0x8
               	je	 <L252>
<L256>:
               	mov	rdi, qword ptr [rbx]
               	test	rdi, rdi
               	je	 <L257>
               	mov	r12, rax
               	mov	rax, qword ptr [rdi]
               	vzeroupper
               	call	qword ptr [rax + 0x28]
               	vmovdqa	xmm0, xmmword ptr [rsp + 0x40]
               	mov	rax, r12
               	jmp	 <L257>
<L255>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp + 0x40], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp + 0x40]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0xa030>
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
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetHeight() const>:
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

<Bodies3D::Head@Evaluation.Virtual.Head::~Head()>:
               	mov	esi, 0x90
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::SphericBody@Evaluation.Virtual.SphericBody<Shapes2D::Circle@Evaluation.Virtual.Circle>::GetComputeSizeMultiplier() const>:
<Bodies3D::SphericBody@Evaluation.Virtual.SphericBody<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse>::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <memset+0x257c>
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
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetWidth() const>:
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

<Bodies3D::Cuboid@Evaluation.Virtual.Cuboid::~Cuboid()>:
<Bodies3D::Pyramid@Evaluation.Virtual.Pyramid::~Pyramid()>:
<Bodies3D::Ellipsoid@Evaluation.Virtual.Ellipsoid::~Ellipsoid()>:
               	mov	esi, 0x40
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::Cone@Evaluation.Virtual.Cone::~Cone()>:
<Bodies3D::Ellipse@Evaluation.Virtual.Ellipse::~Ellipse()>:
<Bodies3D::Cylinder@Evaluation.Virtual.Cylinder::~Cylinder()>:
<Bodies3D::Triangle@Evaluation.Virtual.Triangle::~Triangle()>:
<Bodies3D::Rectangle@Evaluation.Virtual.Rectangle::~Rectangle()>:
               	mov	esi, 0x38
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::Cone@Evaluation.Virtual.Cone::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <memset+0x2564>
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
               	vmovss	xmm0, dword ptr  <memset+0x256c>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::Cube@Evaluation.Virtual.Cube::~Cube()>:
<Bodies3D::Circle@Evaluation.Virtual.Circle::~Circle()>:
<Bodies3D::Sphere@Evaluation.Virtual.Sphere::~Sphere()>:
<Bodies3D::Square@Evaluation.Virtual.Square::~Square()>:
<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse::~Ellipse()>:
<Shapes2D::Triangle@Evaluation.Virtual.Triangle::~Triangle()>:
<Shapes2D::Rectangle@Evaluation.Virtual.Rectangle::~Rectangle()>:
               	mov	esi, 0x30
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Bodies3D::PyramidicBody@Evaluation.Virtual.PyramidicBody<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <memset+0x2570>
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
               	vmovss	xmm0, dword ptr  <memset+0x2568>
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
               	vmovss	xmm0, dword ptr  <memset+0x2574>
               	ret
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3
               	int3

<Shapes2D::CircularShape@Evaluation.Virtual.CircularShape::GetHeight() const>:
<Shapes2D::TriangularShape@Evaluation.Virtual.TriangularShape::GetHeight() const>:
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

<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse::GetWidth() const>:
<Shapes2D::Triangle@Evaluation.Virtual.Triangle::GetWidth() const>:
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
               	int3
               	int3
               	int3

<Shapes2D::Circle@Evaluation.Virtual.Circle::~Circle()>:
<Shapes2D::Square@Evaluation.Virtual.Square::~Square()>:
               	mov	esi, 0x28
               	jmp	 <_ZdlPvm@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0xa008>
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

<_ZdlPvm@plt>:
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
