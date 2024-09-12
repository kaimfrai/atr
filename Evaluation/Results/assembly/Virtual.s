
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
               	call	qword ptr  <memset+0xa200>
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
               	mov	rax, qword ptr  <memset+0xa210>
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
               	mov	rax, qword ptr  <memset+0xa218>
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
               	cmp	qword ptr , 0x0 <memset+0xa220>
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

<initializer for module Std>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Circle@Evaluation.Virtual.Circle>::~ExtendedShape()>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Square@Evaluation.Virtual.Square>::~ExtendedShape()>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse>::~ExtendedShape()>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::~ExtendedShape()>:
<Bodies3D::ExtendedShape@Evaluation.Virtual.ExtendedShape<Shapes2D::Rectangle@Evaluation.Virtual.Rectangle>::~ExtendedShape()>:
<Bodies3D::Head@Evaluation.Virtual.Head::~Head()>:
<Bodies3D::IBody@Evaluation.Virtual.IBody::~IBody()>:
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
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
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
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	call	 <initializer for module Meta.Auto.Simd.Int32>
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

<initializer for module Meta.Auto.Simd.Tag>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW3Tag__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW3Tag__in_chrg>
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

<initializer for module Meta.Auto.Simd.Int32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW5Int32__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3

<initializer for module Meta.Auto.Simd.UInt32>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW4SimdW6UInt32__in_chrg>
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
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
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	call	 <initializer for module Meta.Auto.Simd.UInt32>
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

<initializer for module Meta.Random.Splitmix>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6RandomW8Splitmix__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6RandomW8Splitmix__in_chrg>
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
               	call	 <initializer for module Meta.Auto.Simd.Tag>
               	call	 <initializer for module Meta.Auto.Array.Bounded>
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
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW4AutoW3BitW5Field__in_chrg>
               	call	 <initializer for module Meta.Memory.Constraint>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
               	int3
               	int3
               	int3

<initializer for module Meta.Memory.Constraint>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW10Constraint__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW10Constraint__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	call	 <initializer for module Meta.Memory.Size.Compare>
               	call	 <initializer for module Meta.Memory.Size.Scale>
               	call	 <initializer for module Meta.Memory.Alignment>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
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

<initializer for module Meta.Memory.Size.Compare>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW4SizeW7Compare__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW4SizeW7Compare__in_chrg>
               	call	 <initializer for module Meta.Memory.Size>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
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

<initializer for module Meta.Memory.Count>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW5Count__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW5Count__in_chrg>
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

<initializer for module Meta.Memory.Alignment>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6MemoryW9Alignment__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6MemoryW9Alignment__in_chrg>
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

<initializer for module Meta.Random.Xoroshiro>:
               	cmp	byte ptr , 0x0 <_ZGIW4MetaW6RandomW9Xoroshiro__in_chrg>
               	je	 <L0>
               	ret
<L0>:
               	push	rax
               	mov	byte ptr , 0x1 <_ZGIW4MetaW6RandomW9Xoroshiro__in_chrg>
               	call	 <initializer for module Meta.Random.Splitmix>
               	pop	rax
               	jmp	 <Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>
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
               	vmovss	xmm0, dword ptr  <memset+0x2ac8>
               	ret
               	int3
               	int3
               	int3
               	int3
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
               	int3
               	int3
               	int3
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

<Bodies3D::IBody@Evaluation.Virtual.IBody::~IBody()>:
<Bodies3D::BasicBody@Evaluation.Virtual.BasicBody::~BasicBody()>:
<Shapes2D::BasicShape@Evaluation.Virtual.BasicShape::~BasicShape()>:
<Shapes2D::CircularShape@Evaluation.Virtual.CircularShape::~CircularShape()>:
<Shapes2D::TriangularShape@Evaluation.Virtual.TriangularShape::~TriangularShape()>:
<Shapes2D::RectangularShape@Evaluation.Virtual.RectangularShape::~RectangularShape()>:
<Shapes2D::IShape@Evaluation.Virtual.IShape::~IShape()>:
               	ud2
               	int3
               	int3
               	int3
               	int3
               	int3
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

<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Circle@Evaluation.Virtual.Circle>::GetComputeSizeMultiplier() const>:
<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse>::GetComputeSizeMultiplier() const>:
<Bodies3D::Cylinder@Evaluation.Virtual.Cylinder::GetComputeSizeMultiplier() const>:
<Shapes2D::CircularShape@Evaluation.Virtual.CircularShape::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <memset+0x2ad0>
               	ret
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

<Bodies3D::Shape3D@Evaluation.Virtual.Shape3D<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetComputeSizeMultiplier() const>:
<Shapes2D::TriangularShape@Evaluation.Virtual.TriangularShape::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <memset+0x2ad8>
               	ret
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

<Bodies3D::PyramidicBody@Evaluation.Virtual.PyramidicBody<Shapes2D::Triangle@Evaluation.Virtual.Triangle>::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <memset+0x2ad4>
               	ret
               	int3
               	int3
               	int3
               	int3
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

<Bodies3D::SphericBody@Evaluation.Virtual.SphericBody<Shapes2D::Circle@Evaluation.Virtual.Circle>::GetComputeSizeMultiplier() const>:
<Bodies3D::SphericBody@Evaluation.Virtual.SphericBody<Shapes2D::Ellipse@Evaluation.Virtual.Ellipse>::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <memset+0x2ae0>
               	ret
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

<Bodies3D::Cone@Evaluation.Virtual.Cone::GetComputeSizeMultiplier() const>:
               	vmovss	xmm0, dword ptr  <memset+0x2acc>
               	ret
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

<Bodies3D::Head@Evaluation.Virtual.Head::~Head()>:
               	mov	esi, 0x90
               	jmp	 <_ZdlPvm@plt>
               	int3
               	int3
               	int3
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
               	call	 <initializer for module Meta.Random.Splitmix>
               	call	 <initializer for module Meta.Random.Xoroshiro>
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

<main>:
               	push	rbp
               	push	r15
               	push	r14
               	push	r13
               	push	r12
               	push	rbx
               	sub	rsp, 0x528
               	mov	rcx, qword ptr [rsi + 0x8]
               	mov	rax, qword ptr [rsi + 0x10]
               	movsx	r15d, byte ptr [rcx]
               	add	r15d, -0x30
               	movzx	edx, byte ptr [rcx + 0x1]
               	test	dl, dl
               	je	 <L0>
               	add	rcx, 0x2
               	nop	dword ptr [rax]
<L1>:
               	lea	esi, [r15 + 4*r15]
               	movsx	edx, dl
               	lea	r15d, [rdx + 2*rsi]
               	add	r15d, -0x30
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
               	movabs	r14, 0x180ec6d33cfd0aba
               	mov	qword ptr [rsp + 0x60], rdx
               	movsxd	rdi, edx
               	shl	rdi, 0x3
               	mov	rsi, qword ptr  <memset+0xa228>
               	call	 <_ZnamRKSt9nothrow_t@plt>
               	movsxd	rcx, r15d
               	vpbroadcastq	ymm0, rcx
               	vpsrlq	xmm1, xmm0, 0x1e
               	vpaddq	ymm2, ymm0, ymmword ptr  <typeinfo name for Bodies3D::Head@Evaluation.Virtual.Head+0x3e>
               	vpblendd	ymm1, ymm2, ymm1, 0x3   # ymm1 = ymm1[0,1],ymm2[2,3,4,5,6,7]
               	movabs	rdx, -0x61c8864680b583eb
               	add	rdx, rcx
               	shr	rdx, 0x1e
               	vextracti128	xmm2, ymm2, 0x1
               	vpsrlq	xmm2, xmm2, 0x1e
               	vpinsrq	xmm0, xmm0, rdx, 0x1
               	vinserti128	ymm0, ymm0, xmm2, 0x1
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <typeinfo name for Bodies3D::Head@Evaluation.Virtual.Head+0x5e>
               	vpsrlq	ymm1, ymm0, 0x1b
               	vpxor	ymm0, ymm1, ymm0
               	vpmullq	ymm0, ymm0, qword ptr {1to4} <typeinfo name for Bodies3D::Head@Evaluation.Virtual.Head+0x66>
               	mov	rbp, rax
               	vpsrlq	ymm1, ymm0, 0x1f
               	vpxor	ymm0, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x70], ymm0
               	vmovq	r8, xmm0
               	vpextrq	r10, xmm0, 0x1
               	vextracti128	xmm0, ymm0, 0x1
               	vmovq	rbx, xmm0
               	vpextrq	r13, xmm0, 0x1
               	xor	edx, edx
               	xor	esi, esi
               	xor	edi, edi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	jmp	 <L4>
               	nop	dword ptr [rax]
<L6>:
               	mov	rcx, r10
               	shl	rcx, 0x11
               	xor	rbx, r8
               	xor	r13, r10
               	xor	r10, rbx
               	xor	r8, r13
               	xor	rbx, rcx
               	rorx	r13, r13, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L5>
<L4>:
               	bt	r14, rdx
               	jae	 <L6>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r13
               	jmp	 <L6>
<L5>:
               	movabs	rax, -0x2a59ed990f36c6d4
               	xor	ecx, ecx
               	jmp	 <L7>
               	nop	word ptr [rax + rax]
<L9>:
               	mov	rdx, r10
               	shl	rdx, 0x11
               	xor	rbx, r8
               	xor	r13, r10
               	xor	r10, rbx
               	xor	r8, r13
               	xor	rbx, rdx
               	rorx	r13, r13, 0x13
               	inc	rcx
               	cmp	rcx, 0x40
               	je	 <L8>
<L7>:
               	bt	rax, rcx
               	jae	 <L9>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r13
               	jmp	 <L9>
<L8>:
               	mov	qword ptr [rsp + 0x38], r15
               	movabs	rcx, -0x56a7d9e71fc03656
               	xor	edx, edx
               	jmp	 <L10>
               	nop	dword ptr [rax]
<L12>:
               	mov	r15, r10
               	shl	r15, 0x11
               	xor	rbx, r8
               	xor	r13, r10
               	xor	r10, rbx
               	xor	r8, r13
               	xor	rbx, r15
               	rorx	r13, r13, 0x13
               	inc	rdx
               	cmp	rdx, 0x40
               	je	 <L11>
<L10>:
               	bt	rcx, rdx
               	jae	 <L12>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r13
               	jmp	 <L12>
<L11>:
               	movabs	rdx, 0x39abdc4529b1661c
               	xor	r15d, r15d
               	jmp	 <L13>
               	nop	dword ptr [rax + rax]
<L15>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	rbx, r8
               	xor	r13, r10
               	xor	r10, rbx
               	xor	r8, r13
               	xor	rbx, r12
               	rorx	r13, r13, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L14>
<L13>:
               	bt	rdx, r15
               	jae	 <L15>
               	xor	r11, r8
               	xor	r9, r10
               	xor	rdi, rbx
               	xor	rsi, r13
               	jmp	 <L15>
<L14>:
               	mov	qword ptr [rsp + 0x90], r11
               	mov	qword ptr [rsp + 0x98], r9
               	mov	qword ptr [rsp + 0xa0], rdi
               	mov	qword ptr [rsp + 0xa8], rsi
               	xor	r15d, r15d
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	xor	r13d, r13d
               	jmp	 <L16>
               	nop	dword ptr [rax]
<L18>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L17>
<L16>:
               	bt	r14, r15
               	jae	 <L18>
               	xor	r13, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L18>
<L17>:
               	xor	r15d, r15d
               	jmp	 <L19>
               	nop
<L21>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L20>
<L19>:
               	bt	rax, r15
               	jae	 <L21>
               	xor	r13, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L21>
<L20>:
               	xor	r15d, r15d
               	jmp	 <L22>
               	nop
<L24>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L23>
<L22>:
               	bt	rcx, r15
               	jae	 <L24>
               	xor	r13, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L24>
<L23>:
               	xor	r15d, r15d
               	jmp	 <L25>
               	nop
<L27>:
               	mov	r12, r9
               	shl	r12, 0x11
               	xor	rdi, r11
               	xor	rsi, r9
               	xor	r9, rdi
               	xor	r11, rsi
               	xor	rdi, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L26>
<L25>:
               	bt	rdx, r15
               	jae	 <L27>
               	xor	r13, r11
               	xor	rbx, r9
               	xor	r10, rdi
               	xor	r8, rsi
               	jmp	 <L27>
<L26>:
               	mov	qword ptr [rsp + 0x68], rbp
               	mov	qword ptr [rsp + 0xb0], r13
               	mov	qword ptr [rsp + 0xb8], rbx
               	mov	qword ptr [rsp + 0xc0], r10
               	mov	qword ptr [rsp + 0xc8], r8
               	xor	edi, edi
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	ebp, ebp
               	jmp	 <L28>
               	nop	dword ptr [rax]
<L30>:
               	mov	r15, rbx
               	shl	r15, 0x11
               	xor	r10, r13
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r13, r8
               	xor	r10, r15
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L29>
<L28>:
               	bt	r14, rdi
               	jae	 <L30>
               	xor	rbp, r13
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L30>
<L29>:
               	xor	edi, edi
               	jmp	 <L31>
               	nop	dword ptr [rax]
<L33>:
               	mov	r15, rbx
               	shl	r15, 0x11
               	xor	r10, r13
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r13, r8
               	xor	r10, r15
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L32>
<L31>:
               	bt	rax, rdi
               	jae	 <L33>
               	xor	rbp, r13
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L33>
<L32>:
               	xor	edi, edi
               	jmp	 <L34>
               	nop	dword ptr [rax]
<L36>:
               	mov	r15, rbx
               	shl	r15, 0x11
               	xor	r10, r13
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r13, r8
               	xor	r10, r15
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L35>
<L34>:
               	bt	rcx, rdi
               	jae	 <L36>
               	xor	rbp, r13
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L36>
<L35>:
               	xor	edi, edi
               	jmp	 <L37>
               	nop	dword ptr [rax]
<L39>:
               	mov	r15, rbx
               	shl	r15, 0x11
               	xor	r10, r13
               	xor	r8, rbx
               	xor	rbx, r10
               	xor	r13, r8
               	xor	r10, r15
               	rorx	r8, r8, 0x13
               	inc	rdi
               	cmp	rdi, 0x40
               	je	 <L38>
<L37>:
               	bt	rdx, rdi
               	jae	 <L39>
               	xor	rbp, r13
               	xor	r11, rbx
               	xor	r9, r10
               	xor	rsi, r8
               	jmp	 <L39>
<L38>:
               	mov	qword ptr [rsp + 0xd0], rbp
               	mov	qword ptr [rsp + 0xd8], r11
               	mov	qword ptr [rsp + 0xe0], r9
               	mov	qword ptr [rsp + 0xe8], rsi
               	xor	r15d, r15d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L40>
               	nop	dword ptr [rax + rax]
<L42>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, rbp
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbp, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L41>
<L40>:
               	bt	r14, r15
               	jae	 <L42>
               	xor	rbx, rbp
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L42>
<L41>:
               	xor	r15d, r15d
               	jmp	 <L43>
               	nop
<L45>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, rbp
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbp, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L44>
<L43>:
               	bt	rax, r15
               	jae	 <L45>
               	xor	rbx, rbp
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L45>
<L44>:
               	xor	r15d, r15d
               	jmp	 <L46>
               	nop
<L48>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, rbp
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbp, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L47>
<L46>:
               	bt	rcx, r15
               	jae	 <L48>
               	xor	rbx, rbp
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L48>
<L47>:
               	xor	r15d, r15d
               	jmp	 <L49>
               	nop
<L51>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, rbp
               	xor	rsi, r11
               	xor	r11, r9
               	xor	rbp, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L50>
<L49>:
               	bt	rdx, r15
               	jae	 <L51>
               	xor	rbx, rbp
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L51>
<L50>:
               	mov	qword ptr [rsp + 0xf0], rbx
               	mov	qword ptr [rsp + 0xf8], r10
               	mov	qword ptr [rsp + 0x100], r8
               	mov	qword ptr [rsp + 0x108], rdi
               	xor	r15d, r15d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r13d, r13d
               	jmp	 <L52>
               	nop	dword ptr [rax]
<L54>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L53>
<L52>:
               	bt	r14, r15
               	jae	 <L54>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L54>
<L53>:
               	xor	r15d, r15d
               	jmp	 <L55>
               	nop
<L57>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L56>
<L55>:
               	bt	rax, r15
               	jae	 <L57>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L57>
<L56>:
               	xor	r15d, r15d
               	jmp	 <L58>
               	nop
<L60>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L59>
<L58>:
               	bt	rcx, r15
               	jae	 <L60>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L60>
<L59>:
               	xor	r15d, r15d
               	jmp	 <L61>
               	nop
<L63>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L62>
<L61>:
               	bt	rdx, r15
               	jae	 <L63>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L63>
<L62>:
               	mov	qword ptr [rsp + 0x110], r13
               	mov	qword ptr [rsp + 0x118], r11
               	mov	qword ptr [rsp + 0x120], r9
               	mov	qword ptr [rsp + 0x128], rsi
               	xor	r15d, r15d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L64>
               	nop	dword ptr [rax + rax]
<L66>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L65>
<L64>:
               	bt	r14, r15
               	jae	 <L66>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L66>
<L65>:
               	xor	r15d, r15d
               	jmp	 <L67>
               	nop
<L69>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L68>
<L67>:
               	bt	rax, r15
               	jae	 <L69>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L69>
<L68>:
               	xor	r15d, r15d
               	jmp	 <L70>
               	nop
<L72>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L71>
<L70>:
               	bt	rcx, r15
               	jae	 <L72>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L72>
<L71>:
               	xor	r15d, r15d
               	jmp	 <L73>
               	nop
<L75>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L74>
<L73>:
               	bt	rdx, r15
               	jae	 <L75>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L75>
<L74>:
               	mov	qword ptr [rsp + 0x130], rbx
               	mov	qword ptr [rsp + 0x138], r10
               	mov	qword ptr [rsp + 0x140], r8
               	mov	qword ptr [rsp + 0x148], rdi
               	xor	r15d, r15d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r13d, r13d
               	jmp	 <L76>
               	nop	dword ptr [rax]
<L78>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L77>
<L76>:
               	bt	r14, r15
               	jae	 <L78>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L78>
<L77>:
               	xor	r15d, r15d
               	jmp	 <L79>
               	nop
<L81>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L80>
<L79>:
               	bt	rax, r15
               	jae	 <L81>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L81>
<L80>:
               	xor	r15d, r15d
               	jmp	 <L82>
               	nop
<L84>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L83>
<L82>:
               	bt	rcx, r15
               	jae	 <L84>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L84>
<L83>:
               	xor	r15d, r15d
               	jmp	 <L85>
               	nop
<L87>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L86>
<L85>:
               	bt	rdx, r15
               	jae	 <L87>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L87>
<L86>:
               	mov	qword ptr [rsp + 0x150], r13
               	mov	qword ptr [rsp + 0x158], r11
               	mov	qword ptr [rsp + 0x160], r9
               	mov	qword ptr [rsp + 0x168], rsi
               	xor	r15d, r15d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L88>
               	nop	dword ptr [rax + rax]
<L90>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L89>
<L88>:
               	bt	r14, r15
               	jae	 <L90>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L90>
<L89>:
               	xor	r15d, r15d
               	jmp	 <L91>
               	nop
<L93>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L92>
<L91>:
               	bt	rax, r15
               	jae	 <L93>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L93>
<L92>:
               	xor	r15d, r15d
               	jmp	 <L94>
               	nop
<L96>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L95>
<L94>:
               	bt	rcx, r15
               	jae	 <L96>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L96>
<L95>:
               	xor	r15d, r15d
               	jmp	 <L97>
               	nop
<L99>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L98>
<L97>:
               	bt	rdx, r15
               	jae	 <L99>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L99>
<L98>:
               	mov	qword ptr [rsp + 0x170], rbx
               	mov	qword ptr [rsp + 0x178], r10
               	mov	qword ptr [rsp + 0x180], r8
               	mov	qword ptr [rsp + 0x188], rdi
               	xor	r15d, r15d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r13d, r13d
               	jmp	 <L100>
               	nop	dword ptr [rax]
<L102>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L101>
<L100>:
               	bt	r14, r15
               	jae	 <L102>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L102>
<L101>:
               	xor	r15d, r15d
               	jmp	 <L103>
               	nop
<L105>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L104>
<L103>:
               	bt	rax, r15
               	jae	 <L105>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L105>
<L104>:
               	xor	r15d, r15d
               	jmp	 <L106>
               	nop
<L108>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L107>
<L106>:
               	bt	rcx, r15
               	jae	 <L108>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L108>
<L107>:
               	xor	r15d, r15d
               	jmp	 <L109>
               	nop
<L111>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L110>
<L109>:
               	bt	rdx, r15
               	jae	 <L111>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L111>
<L110>:
               	mov	qword ptr [rsp + 0x190], r13
               	mov	qword ptr [rsp + 0x198], r11
               	mov	qword ptr [rsp + 0x1a0], r9
               	mov	qword ptr [rsp + 0x1a8], rsi
               	xor	r15d, r15d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L112>
               	nop	dword ptr [rax + rax]
<L114>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L113>
<L112>:
               	bt	r14, r15
               	jae	 <L114>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L114>
<L113>:
               	xor	r15d, r15d
               	jmp	 <L115>
               	nop
<L117>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L116>
<L115>:
               	bt	rax, r15
               	jae	 <L117>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L117>
<L116>:
               	xor	r15d, r15d
               	jmp	 <L118>
               	nop
<L120>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L119>
<L118>:
               	bt	rcx, r15
               	jae	 <L120>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L120>
<L119>:
               	xor	r15d, r15d
               	jmp	 <L121>
               	nop
<L123>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L122>
<L121>:
               	bt	rdx, r15
               	jae	 <L123>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L123>
<L122>:
               	mov	qword ptr [rsp + 0x1b0], rbx
               	mov	qword ptr [rsp + 0x1b8], r10
               	mov	qword ptr [rsp + 0x1c0], r8
               	mov	qword ptr [rsp + 0x1c8], rdi
               	xor	r15d, r15d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r13d, r13d
               	jmp	 <L124>
               	nop	dword ptr [rax]
<L126>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L125>
<L124>:
               	bt	r14, r15
               	jae	 <L126>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L126>
<L125>:
               	xor	r15d, r15d
               	jmp	 <L127>
               	nop
<L129>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L128>
<L127>:
               	bt	rax, r15
               	jae	 <L129>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L129>
<L128>:
               	xor	r15d, r15d
               	jmp	 <L130>
               	nop
<L132>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L131>
<L130>:
               	bt	rcx, r15
               	jae	 <L132>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L132>
<L131>:
               	xor	r15d, r15d
               	jmp	 <L133>
               	nop
<L135>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L134>
<L133>:
               	bt	rdx, r15
               	jae	 <L135>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L135>
<L134>:
               	mov	qword ptr [rsp + 0x1d0], r13
               	mov	qword ptr [rsp + 0x1d8], r11
               	mov	qword ptr [rsp + 0x1e0], r9
               	mov	qword ptr [rsp + 0x1e8], rsi
               	xor	r15d, r15d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L136>
               	nop	dword ptr [rax + rax]
<L138>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L137>
<L136>:
               	bt	r14, r15
               	jae	 <L138>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L138>
<L137>:
               	xor	r15d, r15d
               	jmp	 <L139>
               	nop
<L141>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L140>
<L139>:
               	bt	rax, r15
               	jae	 <L141>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L141>
<L140>:
               	xor	r15d, r15d
               	jmp	 <L142>
               	nop
<L144>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L143>
<L142>:
               	bt	rcx, r15
               	jae	 <L144>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L144>
<L143>:
               	xor	r15d, r15d
               	jmp	 <L145>
               	nop
<L147>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L146>
<L145>:
               	bt	rdx, r15
               	jae	 <L147>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L147>
<L146>:
               	mov	qword ptr [rsp + 0x1f0], rbx
               	mov	qword ptr [rsp + 0x1f8], r10
               	mov	qword ptr [rsp + 0x200], r8
               	mov	qword ptr [rsp + 0x208], rdi
               	xor	r15d, r15d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r13d, r13d
               	jmp	 <L148>
               	nop	dword ptr [rax]
<L150>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L149>
<L148>:
               	bt	r14, r15
               	jae	 <L150>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L150>
<L149>:
               	xor	r15d, r15d
               	jmp	 <L151>
               	nop
<L153>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L152>
<L151>:
               	bt	rax, r15
               	jae	 <L153>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L153>
<L152>:
               	xor	r15d, r15d
               	jmp	 <L154>
               	nop
<L156>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L155>
<L154>:
               	bt	rcx, r15
               	jae	 <L156>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L156>
<L155>:
               	xor	r15d, r15d
               	jmp	 <L157>
               	nop
<L159>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L158>
<L157>:
               	bt	rdx, r15
               	jae	 <L159>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L159>
<L158>:
               	mov	qword ptr [rsp + 0x210], r13
               	mov	qword ptr [rsp + 0x218], r11
               	mov	qword ptr [rsp + 0x220], r9
               	mov	qword ptr [rsp + 0x228], rsi
               	xor	r15d, r15d
               	xor	edi, edi
               	xor	r8d, r8d
               	xor	r10d, r10d
               	xor	ebx, ebx
               	jmp	 <L160>
               	nop	dword ptr [rax + rax]
<L162>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L161>
<L160>:
               	bt	r14, r15
               	jae	 <L162>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L162>
<L161>:
               	xor	r15d, r15d
               	jmp	 <L163>
               	nop
<L165>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L164>
<L163>:
               	bt	rax, r15
               	jae	 <L165>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L165>
<L164>:
               	xor	r15d, r15d
               	jmp	 <L166>
               	nop
<L168>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L167>
<L166>:
               	bt	rcx, r15
               	jae	 <L168>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L168>
<L167>:
               	xor	r15d, r15d
               	jmp	 <L169>
               	nop
<L171>:
               	mov	r12, r11
               	shl	r12, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r12
               	rorx	rsi, rsi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L170>
<L169>:
               	bt	rdx, r15
               	jae	 <L171>
               	xor	rbx, r13
               	xor	r10, r11
               	xor	r8, r9
               	xor	rdi, rsi
               	jmp	 <L171>
<L170>:
               	mov	qword ptr [rsp + 0x230], rbx
               	mov	qword ptr [rsp + 0x238], r10
               	mov	qword ptr [rsp + 0x240], r8
               	mov	qword ptr [rsp + 0x248], rdi
               	xor	r15d, r15d
               	xor	esi, esi
               	xor	r9d, r9d
               	xor	r11d, r11d
               	xor	r13d, r13d
               	jmp	 <L172>
               	nop	dword ptr [rax]
<L174>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L173>
<L172>:
               	bt	r14, r15
               	jae	 <L174>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L174>
<L173>:
               	xor	r15d, r15d
               	jmp	 <L175>
               	nop
<L177>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L176>
<L175>:
               	bt	rax, r15
               	jae	 <L177>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L177>
<L176>:
               	xor	r15d, r15d
               	jmp	 <L178>
               	nop
<L180>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L179>
<L178>:
               	bt	rcx, r15
               	jae	 <L180>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L180>
<L179>:
               	xor	r15d, r15d
               	jmp	 <L181>
               	nop
<L183>:
               	mov	r12, r10
               	shl	r12, 0x11
               	xor	r8, rbx
               	xor	rdi, r10
               	xor	r10, r8
               	xor	rbx, rdi
               	xor	r8, r12
               	rorx	rdi, rdi, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L182>
<L181>:
               	bt	rdx, r15
               	jae	 <L183>
               	xor	r13, rbx
               	xor	r11, r10
               	xor	r9, r8
               	xor	rsi, rdi
               	jmp	 <L183>
<L182>:
               	mov	qword ptr [rsp + 0x250], r13
               	mov	qword ptr [rsp + 0x258], r11
               	mov	qword ptr [rsp + 0x260], r9
               	mov	qword ptr [rsp + 0x268], rsi
               	xor	r8d, r8d
               	xor	edi, edi
               	xor	r10d, r10d
               	xor	ebx, ebx
               	xor	ebp, ebp
               	jmp	 <L184>
               	nop	word ptr [rax + rax]
<L186>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r15
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L185>
<L184>:
               	bt	r14, r8
               	jae	 <L186>
               	xor	rbp, r13
               	xor	rbx, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L186>
<L185>:
               	xor	r8d, r8d
               	jmp	 <L187>
               	nop
<L189>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r15
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L188>
<L187>:
               	bt	rax, r8
               	jae	 <L189>
               	xor	rbp, r13
               	xor	rbx, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L189>
<L188>:
               	xor	r8d, r8d
               	jmp	 <L190>
               	nop
<L192>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r15
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L191>
<L190>:
               	bt	rcx, r8
               	jae	 <L192>
               	xor	rbp, r13
               	xor	rbx, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L192>
<L191>:
               	xor	r8d, r8d
               	jmp	 <L193>
               	nop
<L195>:
               	mov	r15, r11
               	shl	r15, 0x11
               	xor	r9, r13
               	xor	rsi, r11
               	xor	r11, r9
               	xor	r13, rsi
               	xor	r9, r15
               	rorx	rsi, rsi, 0x13
               	inc	r8
               	cmp	r8, 0x40
               	je	 <L194>
<L193>:
               	bt	rdx, r8
               	jae	 <L195>
               	xor	rbp, r13
               	xor	rbx, r11
               	xor	r10, r9
               	xor	rdi, rsi
               	jmp	 <L195>
<L194>:
               	mov	qword ptr [rsp + 0x270], rbp
               	mov	qword ptr [rsp + 0x278], rbx
               	mov	qword ptr [rsp + 0x280], r10
               	mov	qword ptr [rsp + 0x288], rdi
               	xor	r9d, r9d
               	xor	r8d, r8d
               	xor	r11d, r11d
               	xor	esi, esi
               	xor	r13d, r13d
               	jmp	 <L196>
               	nop	dword ptr [rax]
<L198>:
               	mov	r15, rbx
               	shl	r15, 0x11
               	xor	r10, rbp
               	xor	rdi, rbx
               	xor	rbx, r10
               	xor	rbp, rdi
               	xor	r10, r15
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L197>
<L196>:
               	bt	r14, r9
               	jae	 <L198>
               	xor	r13, rbp
               	xor	rsi, rbx
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L198>
<L197>:
               	xor	r9d, r9d
               	jmp	 <L199>
               	nop
<L201>:
               	mov	r15, rbx
               	shl	r15, 0x11
               	xor	r10, rbp
               	xor	rdi, rbx
               	xor	rbx, r10
               	xor	rbp, rdi
               	xor	r10, r15
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L200>
<L199>:
               	bt	rax, r9
               	jae	 <L201>
               	xor	r13, rbp
               	xor	rsi, rbx
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L201>
<L200>:
               	xor	r9d, r9d
               	jmp	 <L202>
               	nop
<L204>:
               	mov	r15, rbx
               	shl	r15, 0x11
               	xor	r10, rbp
               	xor	rdi, rbx
               	xor	rbx, r10
               	xor	rbp, rdi
               	xor	r10, r15
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L203>
<L202>:
               	bt	rcx, r9
               	jae	 <L204>
               	xor	r13, rbp
               	xor	rsi, rbx
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L204>
<L203>:
               	xor	r9d, r9d
               	jmp	 <L205>
               	nop
<L207>:
               	mov	r15, rbx
               	shl	r15, 0x11
               	xor	r10, rbp
               	xor	rdi, rbx
               	xor	rbx, r10
               	xor	rbp, rdi
               	xor	r10, r15
               	rorx	rdi, rdi, 0x13
               	inc	r9
               	cmp	r9, 0x40
               	je	 <L206>
<L205>:
               	bt	rdx, r9
               	jae	 <L207>
               	xor	r13, rbp
               	xor	rsi, rbx
               	xor	r11, r10
               	xor	r8, rdi
               	jmp	 <L207>
<L206>:
               	mov	qword ptr [rsp + 0x290], r13
               	mov	qword ptr [rsp + 0x298], rsi
               	mov	qword ptr [rsp + 0x2a0], r11
               	mov	qword ptr [rsp + 0x2a8], r8
               	xor	r15d, r15d
               	xor	r9d, r9d
               	xor	r10d, r10d
               	xor	edx, edx
               	mov	rbp, rsi
               	xor	ebx, ebx
               	jmp	 <L208>
               	nop	dword ptr [rax + rax]
<L210>:
               	mov	r12, rbp
               	shl	r12, 0x11
               	xor	r11, r13
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	r13, r8
               	xor	r11, r12
               	rorx	r8, r8, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L209>
<L208>:
               	bt	r14, r15
               	jae	 <L210>
               	xor	rbx, r13
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L210>
<L209>:
               	xor	r15d, r15d
               	jmp	 <L211>
               	nop
<L213>:
               	mov	r12, rbp
               	shl	r12, 0x11
               	xor	r11, r13
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	r13, r8
               	xor	r11, r12
               	rorx	r8, r8, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L212>
<L211>:
               	bt	rax, r15
               	jae	 <L213>
               	xor	rbx, r13
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L213>
<L212>:
               	xor	r15d, r15d
               	jmp	 <L214>
               	nop
<L216>:
               	mov	r12, rbp
               	shl	r12, 0x11
               	xor	r11, r13
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	r13, r8
               	xor	r11, r12
               	rorx	r8, r8, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L215>
<L214>:
               	bt	rcx, r15
               	jae	 <L216>
               	xor	rbx, r13
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L216>
<L215>:
               	xor	r15d, r15d
               	movabs	rdi, 0x39abdc4529b1661c
               	jmp	 <L217>
               	nop	dword ptr [rax + rax]
<L219>:
               	mov	r12, rbp
               	shl	r12, 0x11
               	xor	r11, r13
               	xor	r8, rbp
               	xor	rbp, r11
               	xor	r13, r8
               	xor	r11, r12
               	rorx	r8, r8, 0x13
               	inc	r15
               	cmp	r15, 0x40
               	je	 <L218>
<L217>:
               	bt	rdi, r15
               	jae	 <L219>
               	xor	rbx, r13
               	xor	rdx, rbp
               	xor	r10, r11
               	xor	r9, r8
               	jmp	 <L219>
<L218>:
               	mov	qword ptr [rsp + 0x2b0], rbx
               	mov	qword ptr [rsp + 0x2b8], rdx
               	mov	qword ptr [rsp + 0x2c0], r10
               	mov	qword ptr [rsp + 0x2c8], r9
               	xor	r12d, r12d
               	xor	r11d, r11d
               	xor	r13d, r13d
               	xor	r8d, r8d
               	mov	rdi, rdx
               	xor	r15d, r15d
               	jmp	 <L220>
               	nop	dword ptr [rax]
<L222>:
               	mov	rbp, rdi
               	shl	rbp, 0x11
               	xor	r10, rbx
               	xor	r9, rdi
               	xor	rdi, r10
               	xor	rbx, r9
               	xor	r10, rbp
               	rorx	r9, r9, 0x13
               	inc	r12
               	cmp	r12, 0x40
               	je	 <L221>
<L220>:
               	bt	r14, r12
               	jae	 <L222>
               	xor	r15, rbx
               	xor	r8, rdi
               	xor	r13, r10
               	xor	r11, r9
               	jmp	 <L222>
<L221>:
               	xor	r14d, r14d
               	mov	rbp, qword ptr [rsp + 0x68]
               	jmp	 <L223>
               	nop	word ptr cs:[rax + rax]
<L225>:
               	mov	r12, rdi
               	shl	r12, 0x11
               	xor	r10, rbx
               	xor	r9, rdi
               	xor	rdi, r10
               	xor	rbx, r9
               	xor	r10, r12
               	rorx	r9, r9, 0x13
               	inc	r14
               	cmp	r14, 0x40
               	je	 <L224>
<L223>:
               	bt	rax, r14
               	jae	 <L225>
               	xor	r15, rbx
               	xor	r8, rdi
               	xor	r13, r10
               	xor	r11, r9
               	jmp	 <L225>
<L224>:
               	xor	eax, eax
               	jmp	 <L226>
               	nop	dword ptr [rax]
<L228>:
               	mov	r14, rdi
               	shl	r14, 0x11
               	xor	r10, rbx
               	xor	r9, rdi
               	xor	rdi, r10
               	xor	rbx, r9
               	xor	r10, r14
               	rorx	r9, r9, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L227>
<L226>:
               	bt	rcx, rax
               	jae	 <L228>
               	xor	r15, rbx
               	xor	r8, rdi
               	xor	r13, r10
               	xor	r11, r9
               	jmp	 <L228>
<L227>:
               	xor	eax, eax
               	jmp	 <L229>
               	nop	dword ptr [rax]
<L231>:
               	mov	rcx, rdi
               	shl	rcx, 0x11
               	xor	r10, rbx
               	xor	r9, rdi
               	xor	rdi, r10
               	xor	rbx, r9
               	xor	r10, rcx
               	rorx	r9, r9, 0x13
               	inc	rax
               	cmp	rax, 0x40
               	je	 <L230>
<L229>:
               	movabs	rcx, 0x39abdc4529b1661c
               	bt	rcx, rax
               	jae	 <L231>
               	xor	r15, rbx
               	xor	r8, rdi
               	xor	r13, r10
               	xor	r11, r9
               	jmp	 <L231>
<L230>:
               	mov	qword ptr [rsp + 0x2d0], r15
               	mov	qword ptr [rsp + 0x2d8], r8
               	mov	qword ptr [rsp + 0x2e0], r13
               	mov	qword ptr [rsp + 0x2e8], r11
               	mov	dword ptr [rsp + 0x2f0], 0x0
               	lea	rax, [rsp + 0x70]
               	kxnorw	k1, k0, k0
               	vpmovzxbd	ymm0, qword ptr  <typeinfo name for Bodies3D::Head@Evaluation.Virtual.Head+0x6e>
               	vpxor	xmm1, xmm1, xmm1
               	kxnorw	k2, k0, k0
               	vpxor	xmm2, xmm2, xmm2
               	vpgatherdq	zmm2 {k2}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm2, 0x2
               	vpaddq	zmm0, zmm0, zmm2
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm2, zmm0, 0x3
               	vpaddq	zmm2, zmm2, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x2f8], zmm2
               	vpmovsxwd	ymm0, xmmword ptr  <typeinfo name for Bodies3D::Head@Evaluation.Virtual.Head+0x10e>
               	vpgatherdq	zmm1 {k1}, zmmword ptr [rax + ymm0]
               	vpsllq	zmm0, zmm1, 0x2
               	vpaddq	zmm0, zmm0, zmm1
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm3, zmm1, zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x338], zmm3
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x278]
               	vpinsrq	xmm0, xmm0, rsi, 0x1
               	vpbroadcastq	ymm1, rdx
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, r8
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm4, ymm1, ymm0
               	vmovdqu	ymmword ptr [rsp + 0x378], ymm4
               	mov	r13, qword ptr [rsp + 0x60]
               	test	r13d, r13d
               	je	 <L232>
               	vpbroadcastq	zmm0, rax
               	vpaddq	zmm1, zmm0, zmmword ptr  <typeinfo name for Bodies3D::Head@Evaluation.Virtual.Head+0x7e>
               	vmovdqu64	zmmword ptr [rsp + 0x460], zmm1
               	vpaddq	zmm0, zmm0, zmmword ptr  <typeinfo name for Bodies3D::Head@Evaluation.Virtual.Head+0xbe>
               	vmovdqu64	zmmword ptr [rsp + 0x420], zmm0
               	vextracti32x4	xmm0, zmm3, 0x2
               	vmovq	r15, xmm0
               	vextracti128	xmm0, ymm3, 0x1
               	vpextrq	r12, xmm0, 0x1
               	vmovdqu64	zmmword ptr [rsp + 0x3e0], zmm2
               	vmovq	rax, xmm2
               	vpmovsxbq	ymm0, dword ptr  <memset+0x2ac0>
               	vmovdqa64	zmm1, zmm0
               	vmovdqa64	zmm0, zmm4
               	vpermi2q	zmm1, zmm3, zmm4
               	xor	ebx, ebx
               	mov	ecx, 0x8
               	xor	r14d, r14d
               	vmovdqa64	zmm2, zmm3
               	jmp	 <L233>
               	nop	word ptr [rax + rax]
<L239>:
               	mov	rax, qword ptr [rsp + 0x70]
               	mov	rcx, qword ptr [rsp + 0x78]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x80]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x88]
               	mov	qword ptr [rsp + 0x78], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x70], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x80], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x88], rax
               	mov	rax, qword ptr [rsp + 0x98]
               	mov	rcx, rax
               	mov	rdx, qword ptr [rsp + 0x90]
               	mov	rsi, qword ptr [rsp + 0xa0]
               	xor	rsi, rdx
               	mov	rdi, rsi
               	xor	rdi, rax
               	xor	rax, qword ptr [rsp + 0xa8]
               	shl	rcx, 0x11
               	mov	qword ptr [rsp + 0x98], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0x90], rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xa0], rsi
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0xa8], rax
               	mov	rax, qword ptr [rsp + 0xb8]
               	mov	rcx, rax
               	shl	rcx, 0x11
               	mov	rdx, qword ptr [rsp + 0xb0]
               	mov	rsi, qword ptr [rsp + 0xc0]
               	xor	rsi, rdx
               	mov	rdi, rsi
               	xor	rdi, rax
               	xor	rax, qword ptr [rsp + 0xc8]
               	mov	qword ptr [rsp + 0xb8], rdi
               	xor	rdx, rax
               	mov	qword ptr [rsp + 0xb0], rdx
               	xor	rsi, rcx
               	mov	qword ptr [rsp + 0xc0], rsi
               	rorx	rax, rax, 0x13
               	mov	qword ptr [rsp + 0xc8], rax
               	mov	rax, qword ptr [rsp + 0xd0]
               	mov	rcx, qword ptr [rsp + 0xd8]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0xe0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0xe8]
               	mov	qword ptr [rsp + 0xd8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xd0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0xe0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0xe8], rax
               	mov	rax, qword ptr [rsp + 0xf0]
               	mov	rcx, qword ptr [rsp + 0xf8]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x100]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x108]
               	mov	qword ptr [rsp + 0xf8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0xf0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x100], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x108], rax
               	mov	rax, qword ptr [rsp + 0x110]
               	mov	rcx, qword ptr [rsp + 0x118]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x120]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x128]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0x118], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x110], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x120], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x128], rax
               	mov	rax, qword ptr [rsp + 0x130]
               	mov	rcx, qword ptr [rsp + 0x138]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x140]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x148]
               	mov	qword ptr [rsp + 0x138], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x130], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x140], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x148], rax
               	mov	rax, qword ptr [rsp + 0x150]
               	mov	rcx, qword ptr [rsp + 0x158]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x160]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x168]
               	mov	qword ptr [rsp + 0x158], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x150], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x160], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x168], rax
               	mov	rax, qword ptr [rsp + 0x170]
               	mov	rcx, qword ptr [rsp + 0x178]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x180]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x188]
               	mov	qword ptr [rsp + 0x178], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x170], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x180], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x188], rax
               	mov	rax, qword ptr [rsp + 0x190]
               	mov	rcx, qword ptr [rsp + 0x198]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x1a0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x1a8]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0x198], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x190], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x1a0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x1a8], rax
               	mov	rax, qword ptr [rsp + 0x1b0]
               	mov	rcx, qword ptr [rsp + 0x1b8]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x1c0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x1c8]
               	mov	qword ptr [rsp + 0x1b8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x1b0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x1c0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x1c8], rax
               	mov	rax, qword ptr [rsp + 0x1d0]
               	mov	rcx, qword ptr [rsp + 0x1d8]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x1e0]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x1e8]
               	mov	qword ptr [rsp + 0x1d8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x1d0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x1e0], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x1e8], rax
               	mov	rax, qword ptr [rsp + 0x1f0]
               	mov	rcx, qword ptr [rsp + 0x1f8]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x200]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x208]
               	mov	qword ptr [rsp + 0x1f8], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x1f0], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x200], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x208], rax
               	mov	rax, qword ptr [rsp + 0x210]
               	mov	rcx, qword ptr [rsp + 0x218]
               	mov	rdx, rcx
               	mov	rsi, qword ptr [rsp + 0x220]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x228]
               	shl	rdx, 0x11
               	mov	qword ptr [rsp + 0x218], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x210], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x220], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x228], rax
               	mov	rax, qword ptr [rsp + 0x230]
               	mov	rcx, qword ptr [rsp + 0x238]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x240]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x248]
               	mov	qword ptr [rsp + 0x238], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x230], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x240], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x248], rax
               	mov	rax, qword ptr [rsp + 0x250]
               	mov	rcx, qword ptr [rsp + 0x258]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x260]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x268]
               	mov	qword ptr [rsp + 0x258], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x250], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x260], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x268], rax
               	mov	rax, qword ptr [rsp + 0x270]
               	mov	rcx, qword ptr [rsp + 0x278]
               	mov	rdx, rcx
               	shl	rdx, 0x11
               	mov	rsi, qword ptr [rsp + 0x280]
               	xor	rsi, rax
               	mov	rdi, rsi
               	xor	rdi, rcx
               	xor	rcx, qword ptr [rsp + 0x288]
               	mov	qword ptr [rsp + 0x278], rdi
               	xor	rax, rcx
               	mov	qword ptr [rsp + 0x270], rax
               	xor	rsi, rdx
               	mov	qword ptr [rsp + 0x280], rsi
               	rorx	rax, rcx, 0x13
               	mov	qword ptr [rsp + 0x288], rax
               	mov	rcx, qword ptr [rsp + 0x290]
               	mov	rdx, qword ptr [rsp + 0x298]
               	mov	rsi, rdx
               	mov	rdi, qword ptr [rsp + 0x2a0]
               	xor	rdi, rcx
               	mov	rax, rdi
               	xor	rax, rdx
               	xor	rdx, qword ptr [rsp + 0x2a8]
               	shl	rsi, 0x11
               	mov	qword ptr [rsp + 0x298], rax
               	xor	rcx, rdx
               	mov	qword ptr [rsp + 0x290], rcx
               	xor	rdi, rsi
               	mov	qword ptr [rsp + 0x2a0], rdi
               	rorx	rcx, rdx, 0x13
               	mov	qword ptr [rsp + 0x2a8], rcx
               	mov	rdx, qword ptr [rsp + 0x2b0]
               	mov	rsi, qword ptr [rsp + 0x2b8]
               	mov	rdi, rsi
               	shl	rdi, 0x11
               	mov	r8, qword ptr [rsp + 0x2c0]
               	xor	r8, rdx
               	mov	rcx, r8
               	xor	rcx, rsi
               	xor	rsi, qword ptr [rsp + 0x2c8]
               	mov	qword ptr [rsp + 0x2b8], rcx
               	xor	rdx, rsi
               	mov	qword ptr [rsp + 0x2b0], rdx
               	xor	r8, rdi
               	mov	qword ptr [rsp + 0x2c0], r8
               	rorx	rdx, rsi, 0x13
               	mov	qword ptr [rsp + 0x2c8], rdx
               	mov	rsi, qword ptr [rsp + 0x2d0]
               	mov	rdi, qword ptr [rsp + 0x2d8]
               	mov	r8, rdi
               	shl	r8, 0x11
               	mov	r9, qword ptr [rsp + 0x2e0]
               	xor	r9, rsi
               	mov	rdx, r9
               	xor	rdx, rdi
               	xor	rdi, qword ptr [rsp + 0x2e8]
               	mov	qword ptr [rsp + 0x2d8], rdx
               	xor	rsi, rdi
               	mov	qword ptr [rsp + 0x2d0], rsi
               	xor	r9, r8
               	mov	qword ptr [rsp + 0x2e0], r9
               	rorx	rsi, rdi, 0x13
               	mov	qword ptr [rsp + 0x2e8], rsi
               	kxnorw	k1, k0, k0
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x460]
               	vpgatherqq	zmm0 {k1}, zmmword ptr [1*zmm1]
               	vpsllq	zmm1, zmm0, 0x2
               	vpaddq	zmm0, zmm1, zmm0
               	vprolq	zmm0, zmm0, 0x7
               	vpsllq	zmm1, zmm0, 0x3
               	vpaddq	zmm3, zmm1, zmm0
               	vmovdqu	xmm0, xmmword ptr [rsp + 0x278]
               	vmovdqu64	zmmword ptr [rsp + 0x2f8], zmm3
               	kxnorw	k1, k0, k0
               	vpxor	xmm1, xmm1, xmm1
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x420]
               	vpgatherqq	zmm1 {k1}, zmmword ptr [1*zmm2]
               	vpsllq	zmm2, zmm1, 0x2
               	vpaddq	zmm1, zmm2, zmm1
               	vprolq	zmm1, zmm1, 0x7
               	vpsllq	zmm2, zmm1, 0x3
               	vpaddq	zmm2, zmm2, zmm1
               	vpinsrq	xmm0, xmm0, rax, 0x1
               	vpbroadcastq	ymm1, rcx
               	vpblendd	ymm0, ymm0, ymm1, 0x30  # ymm0 = ymm0[0,1,2,3],ymm1[4,5],ymm0[6,7]
               	vpbroadcastq	ymm1, rdx
               	vpblendd	ymm0, ymm0, ymm1, 0xc0  # ymm0 = ymm0[0,1,2,3,4,5],ymm1[6,7]
               	vpsllq	ymm1, ymm0, 0x2
               	vpaddq	ymm0, ymm1, ymm0
               	vprolq	ymm0, ymm0, 0x7
               	vpsllq	ymm1, ymm0, 0x3
               	vpaddq	ymm1, ymm1, ymm0
               	vmovdqu64	zmmword ptr [rsp + 0x3e0], zmm3
               	vmovq	rax, xmm3
               	vextracti128	xmm0, ymm2, 0x1
               	vpextrq	r12, xmm0, 0x1
               	vextracti32x4	xmm0, zmm2, 0x2
               	vmovq	r15, xmm0
               	mov	ebx, dword ptr [rsp + 0x2f0]
<L240>:
               	vmovdqa64	zmm3, zmm2
               	vpmovsxbq	ymm0, dword ptr  <memset+0x2ac0>
               	vpermt2q	zmm3, zmm0, zmm1
               	vmovdqa64	zmm0, zmm1
               	inc	r14
               	vmovdqu64	zmmword ptr [rsp + 0x338], zmm2
               	vmovdqu	ymmword ptr [rsp + 0x378], ymm0
               	mov	rcx, qword ptr [rsp]
               	add	rcx, 0x8
               	cmp	ebx, r13d
               	vmovdqa64	zmm1, zmm3
               	je	 <L234>
<L233>:
               	vmovdqu64	zmmword ptr [rsp + 0x4a0], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x4e0], zmm2
               	mov	qword ptr [rsp], rcx
               	vmovdqu64	zmm0, zmmword ptr [rsp + 0x300]
               	vmovdqa64	zmm2, zmm1
               	vextracti128	xmm1, ymm2, 0x1
               	vpextrb	ecx, xmm1, 0x8
               	vpextrb	edx, xmm1, 0x0
               	vpmovqd	ymm0, zmm0
               	vpandd	ymm0, ymm0, dword ptr {1to8} <memset+0x2ac4>
               	vcvtdq2ps	ymm0, ymm0
               	vmovups	ymmword ptr [rsp + 0x10], ymm0
               	vcvtsi2ss	xmm0, xmm6, ecx
               	vcvtsi2ss	xmm1, xmm6, edx
               	movzx	ecx, al
               	imul	ecx, ecx, 0x4f
               	shr	ecx, 0xa
               	lea	edx, [rcx + 2*rcx]
               	lea	ecx, [rcx + 4*rdx]
               	sub	al, cl
               	movzx	eax, al
               	lea	rcx,  <typeinfo name for Bodies3D::Head@Evaluation.Virtual.Head+0x11e>
               	movsxd	rax, dword ptr [rcx + 4*rax]
               	add	rax, rcx
               	jmp	rax
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x10]
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Circle@Evaluation.Virtual.Circle+0x10>
               	jmp	 <L235>
               	vmovss	dword ptr [rsp + 0x40], xmm1
               	vmovss	dword ptr [rsp + 0x3a0], xmm0
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovss	xmm0, dword ptr [rsp + 0x3a0]
               	vmovss	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Ellipsoid@Evaluation.Virtual.Ellipsoid+0x10>
               	jmp	 <L236>
               	vmovss	dword ptr [rsp + 0x3a0], xmm0
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovd	xmm0, dword ptr [rsp + 0x3a0]
               	vmovd	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	jmp	 <L235>
               	vmovdqu64	zmmword ptr [rsp + 0x3a0], zmm2
               	vmovups	ymm0, ymmword ptr [rsp + 0x368]
               	vmovups	ymmword ptr [rsp + 0x40], ymm0
               	mov	edi, 0x90
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovq	xmm0, r12
               	vmovq	xmm1, r15
               	vpunpcklqdq	xmm0, xmm0, xmm1 # xmm0 = xmm0[0],xmm1[0]
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x3a0]
               	vpextrb	ecx, xmm1, 0x8
               	vpshufb	xmm0, xmm0, xmmword ptr  <typeinfo name for Bodies3D::Head@Evaluation.Virtual.Head+0xfe>
               	vpextrb	edx, xmm1, 0x0
               	vcvtdq2ps	xmm0, xmm0
               	vcvtsi2ss	xmm1, xmm6, ecx
               	vmovdqu	ymm2, ymmword ptr [rsp + 0x40]
               	vpmovqd	xmm2, ymm2
               	vpbroadcastd	ymm3, dword ptr  <memset+0x2ac4>
               	vpand	xmm2, xmm2, xmm3
               	vcvtsi2ss	xmm3, xmm6, edx
               	vcvtdq2ps	xmm2, xmm2
               	vmovdqu	ymm5, ymmword ptr [rsp + 0x10]
               	vpshufd	xmm4, xmm5, 0xff        # xmm4 = xmm5[3,3,3,3]
               	vmovdqu	ymmword ptr [rax + 0x10], ymm5
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rdx,  <vtable for Bodies3D::Head@Evaluation.Virtual.Head+0x10>
               	mov	qword ptr [rax], rdx
               	vmovlps	qword ptr [rax + 0x40], xmm0
               	vmovss	dword ptr [rax + 0x48], xmm1
               	vmovd	dword ptr [rax + 0x4c], xmm4
               	vmovdqu	xmmword ptr [rax + 0x50], xmm2
               	mov	qword ptr [rax + 0x38], rcx
               	lea	rdx,  <vtable for Bodies3D::Sphere@Evaluation.Virtual.Sphere+0x10>
               	mov	qword ptr [rax + 0x30], rdx
               	vmovlps	qword ptr [rax + 0x70], xmm0
               	vmovss	dword ptr [rax + 0x78], xmm1
               	vmovd	dword ptr [rax + 0x7c], xmm4
               	vmovss	dword ptr [rax + 0x80], xmm3
               	vpshufd	xmm0, xmm2, 0xe9        # xmm0 = xmm2[1,2,2,3]
               	vmovq	qword ptr [rax + 0x84], xmm0
               	vextractps	dword ptr [rax + 0x8c], xmm2, 0x3
               	mov	qword ptr [rax + 0x68], rcx
               	mov	qword ptr [rax + 0x60], rdx
               	jmp	 <L237>
               	vmovss	dword ptr [rsp + 0x40], xmm1
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cylinder@Evaluation.Virtual.Cylinder+0x10>
               	jmp	 <L238>
               	vmovss	dword ptr [rsp + 0x3a0], xmm0
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovd	xmm0, dword ptr [rsp + 0x3a0]
               	vmovd	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	jmp	 <L235>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x10]
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Square@Evaluation.Virtual.Square+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Square@Evaluation.Virtual.Square+0x10>
               	jmp	 <L235>
               	vmovss	dword ptr [rsp + 0x40], xmm1
               	vmovss	dword ptr [rsp + 0x3a0], xmm0
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Triangle@Evaluation.Virtual.Triangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovss	xmm0, dword ptr [rsp + 0x3a0]
               	vmovss	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Pyramid@Evaluation.Virtual.Pyramid+0x10>
               	jmp	 <L236>
               	vmovss	dword ptr [rsp + 0x3a0], xmm0
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovd	xmm0, dword ptr [rsp + 0x3a0]
               	vmovd	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Ellipse@Evaluation.Virtual.Ellipse+0x10>
               	jmp	 <L235>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x10]
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Square@Evaluation.Virtual.Square+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cube@Evaluation.Virtual.Cube+0x10>
               	jmp	 <L235>
               	vmovss	dword ptr [rsp + 0x40], xmm1
               	vmovss	dword ptr [rsp + 0x3a0], xmm0
               	mov	edi, 0x40
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Rectangle@Evaluation.Virtual.Rectangle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	vmovss	xmm0, dword ptr [rsp + 0x3a0]
               	vmovss	dword ptr [rax + 0x30], xmm0
               	lea	rcx,  <vtable for Bodies3D::Cuboid@Evaluation.Virtual.Cuboid+0x10>
<L236>:
               	mov	qword ptr [rax], rcx
               	vmovd	xmm0, dword ptr [rsp + 0x40]
               	vmovd	dword ptr [rax + 0x38], xmm0
               	jmp	 <L237>
               	vmovss	dword ptr [rsp + 0x40], xmm1
               	mov	edi, 0x38
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovups	ymm0, ymmword ptr [rsp + 0x10]
               	vmovups	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Cone@Evaluation.Virtual.Cone+0x10>
<L238>:
               	mov	qword ptr [rax], rcx
               	vmovd	xmm0, dword ptr [rsp + 0x40]
               	vmovd	dword ptr [rax + 0x30], xmm0
               	jmp	 <L237>
               	mov	edi, 0x30
               	vzeroupper
               	call	 <_Znwm@plt>
               	vmovdqu	ymm0, ymmword ptr [rsp + 0x10]
               	vmovdqu	ymmword ptr [rax + 0x10], ymm0
               	lea	rcx,  <vtable for Shapes2D::Circle@Evaluation.Virtual.Circle+0x10>
               	mov	qword ptr [rax + 0x8], rcx
               	lea	rcx,  <vtable for Bodies3D::Sphere@Evaluation.Virtual.Sphere+0x10>
               	nop	word ptr cs:[rax + rax]
<L235>:
               	mov	qword ptr [rax], rcx
<L237>:
               	mov	qword ptr [rbp + 8*r14], rax
               	inc	ebx
               	mov	dword ptr [rsp + 0x2f0], ebx
               	test	bl, 0x7
               	je	 <L239>
               	vmovdqu64	zmm0, zmmword ptr [rsp + 0x3e0]
               	vpsrlq	zmm0, zmm0, 0x8
               	vmovdqu64	zmmword ptr [rsp + 0x2f8], zmm0
               	vmovdqu64	zmm2, zmmword ptr [rsp + 0x4e0]
               	vpsrlq	zmm2, zmm2, 0x8
               	vmovdqu64	zmm1, zmmword ptr [rsp + 0x4a0]
               	vpsrlq	ymm1, ymm1, 0x8
               	vmovdqu64	zmmword ptr [rsp + 0x3e0], zmm0
               	vmovq	rax, xmm0
               	vextracti32x4	xmm0, zmm2, 0x2
               	vmovq	r15, xmm0
               	vextracti128	xmm0, ymm2, 0x1
               	vpextrq	r12, xmm0, 0x1
               	jmp	 <L240>
<L234>:
               	mov	r15, r14
               	lea	rax, [8*r14]
               	test	r15d, r15d
               	je	 <L241>
               	mov	qword ptr [rsp + 0x3e0], rax
               	vpxor	xmm0, xmm0, xmm0
               	vmovdqu64	zmmword ptr [rsp + 0xb0], zmm0
               	vmovdqu64	zmmword ptr [rsp + 0x70], zmm0
               	mov	r12, rbp
               	jmp	 <L242>
               	nop	word ptr cs:[rax + rax]
<L243>:
               	vmovss	xmm0, dword ptr [rsp + 0x74]
               	vmovss	dword ptr [rsp + 0x78], xmm0
               	mov	ebx, 0x1
<L255>:
               	mov	eax, ebx
               	lea	rdx, [4*rax + 0x4]
               	lea	rdi, [rsp + 0x70]
               	xor	esi, esi
               	vzeroupper
               	call	 <memset@plt>
               	mov	r12, r14
<L242>:
               	blsi	r13d, r15d
               	lea	r14, [r12 + 8*r13]
               	je	 <L243>
               	mov	qword ptr [rsp + 0x10], r15
               	mov	r15d, 0x1
               	xor	ecx, ecx
               	mov	ebp, 0x1
               	jmp	 <L244>
               	nop	dword ptr [rax]
<L246>:
               	mov	ebp, ebx
               	movsxd	rax, ebx
               	vmovss	dword ptr [rsp + 4*rax + 0x70], xmm0
               	add	r12, 0x8
               	mov	ecx, 0xfffffffe
               	sub	ecx, r15d
               	lea	edx, [r15 + 0x1]
               	lzcnt	esi, edx
               	popcnt	ecx, ecx
               	sub	ecx, esi
               	mov	r15d, edx
               	cmp	r12, r14
               	je	 <L245>
<L244>:
               	mov	ebx, ecx
               	mov	rdi, qword ptr [r12]
               	mov	rax, qword ptr [rdi]
               	vzeroupper
               	call	qword ptr [rax + 0x18]
               	mov	edx, ebx
               	sub	edx, ebp
               	jl	 <L246>
               	movsxd	rax, ebp
               	cmp	edx, 0x7
               	jb	 <L247>
               	lea	rcx, [rdx + 0x1]
               	cmp	edx, 0x3f
               	jae	 <L248>
               	xor	edx, edx
               	jmp	 <L249>
<L248>:
               	mov	rdx, rcx
               	movabs	rsi, 0x1ffffffc0
               	and	rdx, rsi
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	lea	rsi, [rsp + 0x130]
               	lea	rsi, [rsi + 4*rax]
               	vpxor	xmm1, xmm1, xmm1
               	xor	edi, edi
               	vpxor	xmm2, xmm2, xmm2
               	vpxor	xmm3, xmm3, xmm3
               	nop	word ptr cs:[rax + rax]
<L250>:
               	vaddps	zmm0, zmm0, zmmword ptr [rsi + 4*rdi - 0xc0]
               	vaddps	zmm1, zmm1, zmmword ptr [rsi + 4*rdi - 0x80]
               	vaddps	zmm2, zmm2, zmmword ptr [rsi + 4*rdi - 0x40]
               	vaddps	zmm3, zmm3, zmmword ptr [rsi + 4*rdi]
               	add	rdi, 0x40
               	cmp	rdx, rdi
               	jne	 <L250>
               	vaddps	zmm0, zmm1, zmm0
               	vaddps	zmm1, zmm3, zmm2
               	vaddps	zmm0, zmm1, zmm0
               	vextractf64x4	ymm1, zmm0, 0x1
               	vaddps	zmm0, zmm0, zmm1
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rdx
               	je	 <L246>
               	test	cl, 0x38
               	je	 <L251>
<L249>:
               	movabs	rsi, 0x1ffffffc0
               	add	rsi, 0x38
               	and	rsi, rcx
               	vpxor	xmm1, xmm1, xmm1
               	vpblendd	xmm0, xmm1, xmm0, 0x1   # xmm0 = xmm0[0],xmm1[1,2,3]
               	lea	rdi, [rsp + 4*rax]
               	add	rdi, 0x70
               	nop	word ptr cs:[rax + rax]
<L252>:
               	vaddps	ymm0, ymm0, ymmword ptr [rdi + 4*rdx]
               	add	rdx, 0x8
               	cmp	rsi, rdx
               	jne	 <L252>
               	vextractf128	xmm1, ymm0, 0x1
               	vaddps	xmm0, xmm0, xmm1
               	vshufpd	xmm1, xmm0, xmm0, 0x1   # xmm1 = xmm0[1,0]
               	vaddps	xmm0, xmm0, xmm1
               	vmovshdup	xmm1, xmm0      # xmm1 = xmm0[1,1,3,3]
               	vaddss	xmm0, xmm0, xmm1
               	cmp	rcx, rsi
               	je	 <L246>
               	add	rax, rsi
               	jmp	 <L247>
<L251>:
               	add	rax, rdx
               	nop	word ptr [rax + rax]
<L247>:
               	mov	ecx, ebx
               	sub	ecx, eax
               	inc	ecx
               	lea	rax, [rsp + 4*rax]
               	add	rax, 0x70
               	xor	edx, edx
<L253>:
               	vaddss	xmm0, xmm0, dword ptr [rax + 4*rdx]
               	inc	rdx
               	cmp	ecx, edx
               	jne	 <L253>
               	jmp	 <L246>
               	nop	word ptr cs:[rax + rax]
<L245>:
               	mov	r15, qword ptr [rsp + 0x10]
               	sub	r15d, r13d
               	mov	rbp, qword ptr [rsp + 0x68]
               	je	 <L254>
               	vmovss	dword ptr [rsp + 4*rax + 0x74], xmm0
               	mov	r12, r14
               	test	ebx, ebx
               	jns	 <L255>
               	jmp	 <L242>
<L254>:
               	mov	r14, qword ptr [rsp + 0x38]
               	mov	r13, qword ptr [rsp + 0x60]
               	mov	r15, qword ptr [rsp]
               	mov	rax, qword ptr [rsp + 0x3e0]
               	test	rax, rax
               	jne	 <L256>
               	jmp	 <L257>
<L232>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r14, qword ptr [rsp + 0x38]
<L257>:
               	test	rbp, rbp
               	je	 <L258>
               	mov	rdi, rbp
               	vmovdqa	xmmword ptr [rsp], xmm0
               	vzeroupper
               	call	 <_ZdaPv@plt>
               	vmovdqa	xmm0, xmmword ptr [rsp]
<L258>:
               	cmp	r14d, 0x2a
               	jne	 <L259>
               	cmp	r13d, 0x186a0
               	jne	 <L259>
               	vucomiss	xmm0, dword ptr  <memset+0x2adc>
               	jne	 <L260>
<L259>:
               	xor	eax, eax
               	add	rsp, 0x528
               	pop	rbx
               	pop	r12
               	pop	r13
               	pop	r14
               	pop	r15
               	pop	rbp
               	vzeroupper
               	ret
<L241>:
               	vpxor	xmm0, xmm0, xmm0
               	mov	r14, qword ptr [rsp + 0x38]
               	mov	r15, qword ptr [rsp]
               	test	rax, rax
               	je	 <L257>
<L256>:
               	mov	rbx, rbp
               	vmovdqa	xmmword ptr [rsp], xmm0
               	jmp	 <L261>
               	nop	word ptr cs:[rax + rax]
<L262>:
               	mov	qword ptr [rbx], 0x0
               	add	rbx, 0x8
               	add	r15, -0x8
               	je	 <L257>
<L261>:
               	mov	rdi, qword ptr [rbx]
               	test	rdi, rdi
               	je	 <L262>
               	mov	rax, qword ptr [rdi]
               	vzeroupper
               	call	qword ptr [rax + 0x28]
               	vmovdqa	xmm0, xmmword ptr [rsp]
               	jmp	 <L262>
<L260>:
               	mov	edi, 0x4
               	vmovaps	xmmword ptr [rsp], xmm0
               	vzeroupper
               	call	 <__cxa_allocate_exception@plt>
               	vmovaps	xmm0, xmmword ptr [rsp]
               	vmovss	dword ptr [rax], xmm0
               	mov	rsi, qword ptr  <memset+0xa230>
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
               	int3
               	int3
               	int3

<__clang_call_terminate>:
               	push	rax
               	call	 <__cxa_begin_catch@plt>
               	call	 <_ZSt9terminatev@plt>

Disassembly of section .init:

<_init>:
               	endbr64
               	sub	rsp, 0x8
               	mov	rax, qword ptr  <memset+0xa208>
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
